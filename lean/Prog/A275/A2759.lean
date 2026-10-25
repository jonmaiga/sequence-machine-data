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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A275900: Following the successive antidiagonals in A065188, let the n-th queen appear in square (x(n),y(n)); sequence gives y(n).

The programs for A275900, there is no canonical definition to state claims against.
-/

/-! ## A275900.P2511493745622977292

`1+A275902(n)`
-/

namespace A275900.P2511493745622977292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A275902 n

end

end A275900.P2511493745622977292

/-! ## A275900.P15077479944089595059

`A065188(A275899(n+1))`
-/

namespace A275900.P15077479944089595059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A275899 (n + 1)).toNat

end

end A275900.P15077479944089595059

/-! ## A275900.P14358424282991879504

`A065188(A275901(n)+1)`
-/

namespace A275900.P14358424282991879504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A275901 n + 1).toNat

end

end A275900.P14358424282991879504

/-! ## A275900.P382276195894005225

`A276324(n+1)-A275901(n)`
-/

namespace A275900.P382276195894005225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - A275901 n

end

end A275900.P382276195894005225

/-! ## A275900.P1335916504122106290

`n-(A023443(n)-A275902(n))`
-/

namespace A275900.P1335916504122106290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A275902 n)

end

end A275900.P1335916504122106290

/-! ## A275900.P6202739093642729539

`A275895(A275899(n+1)-1)+1`
-/

namespace A275900.P6202739093642729539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 (A275899 (n + 1) - 1).toNat + 1

end

end A275900.P6202739093642729539

/-! ## A275900.P10026092473405763850

`A275899(n+1)-A276325(n+1)`
-/

namespace A275900.P10026092473405763850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) - A276325 (n + 1)

end

end A275900.P10026092473405763850

/-! ## A275900.P2914748314763163184

`A275901(n)+1-A276325(n+1)`
-/

namespace A275900.P2914748314763163184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + (1 - A276325 (n + 1))

end

end A275900.P2914748314763163184

/-! ## A275900.P4685745629704687531

`A276324(n+1)+1-A275899(n+1)`
-/

namespace A275900.P4685745629704687531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) + (1 - A275899 (n + 1))

end

end A275900.P4685745629704687531

/-! ## A275900.P17200978369343819145

`A276783(n)+1-A275901(n)`
-/

namespace A275900.P17200978369343819145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276783 n + (1 - A275901 n)

end

end A275900.P17200978369343819145

/-!
# A275901: Following the successive antidiagonals in A275895, let the n-th queen appear in square (x(n),y(n)); sequence gives x(n).

The programs for A275901, there is no canonical definition to state claims against.
-/

/-! ## A275901.P14645824872205059881

`A276325(n+1)+A275902(n)`
-/

namespace A275901.P14645824872205059881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276325 (n + 1) + A275902 n

end

end A275901.P14645824872205059881

/-! ## A275901.P16574313455918924846

`comp[A276784(n+1)]-A275902(n)`
-/

namespace A275901.P16574313455918924846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A275902 n

end

end A275901.P16574313455918924846

/-! ## A275901.P12609743559166439170

`A276324(n+1)-(A275902(n)+1)`
-/

namespace A275901.P12609743559166439170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - (A275902 n + 1)

end

end A275901.P12609743559166439170

/-! ## A275901.P16129957536981349041

`abs(1-A276324(Δ[n²]-n))-A275902(n)`
-/

namespace A275901.P16129957536981349041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A276324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat| - A275902 n

end

end A275901.P16129957536981349041

/-! ## A275901.P577572150248132730

`round(sqrt(2*A275897(n+1)+1))-1-A275902(n)`
-/

namespace A275901.P577572150248132730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A275897 (n + 1) + 1 : ℝ)) - 1 - A275902 n

end

end A275901.P577572150248132730

/-! ## A275901.P11178720557249519486

`A275896(A275902(n))`
-/

namespace A275901.P11178720557249519486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (A275902 n).toNat

end

end A275901.P11178720557249519486

/-! ## A275901.P9070490207108441821

`A065189(A275902(n)+1)-1`
-/

namespace A275901.P9070490207108441821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A275902 n + 1).toNat - 1

end

end A275901.P9070490207108441821

/-! ## A275901.P14925511832776863172

`A023443(A276324(n+1)-A275902(n))`
-/

namespace A275901.P14925511832776863172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276324 (n + 1) - A275902 n).toNat

end

end A275901.P14925511832776863172

/-! ## A275901.P2045271955896419381

`A275899(n+1)-1`
-/

namespace A275901.P2045271955896419381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) - 1

end

end A275901.P2045271955896419381

/-! ## A275901.P18225508903944279760

`A023443(A275899(n+1))`
-/

namespace A275901.P18225508903944279760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275899 (n + 1)).toNat

end

end A275901.P18225508903944279760

/-! ## A275901.P347983933365213288

`A065189(A275900(n+1))-1`
-/

namespace A275901.P347983933365213288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065189 (A275900 (n + 1)).toNat - 1

end

end A275901.P347983933365213288

/-! ## A275901.P9081230356850670655

`A275896(A275900(n+1)-1)`
-/

namespace A275901.P9081230356850670655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275896 (A275900 (n + 1) - 1).toNat

end

end A275901.P9081230356850670655

/-! ## A275901.P8295281536322462424

`A276324(n+1)-A275900(n+1)`
-/

namespace A275901.P8295281536322462424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - A275900 (n + 1)

end

end A275901.P8295281536322462424

/-! ## A275901.P6133461180237497507

`A275900(n+1)+A276325(n+1)-1`
-/

namespace A275901.P6133461180237497507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1) + (A276325 (n + 1) - 1)

end

end A275901.P6133461180237497507

/-!
# A275902: Following the successive antidiagonals in A275895, let the n-th queen appear in square (x(n),y(n)); sequence gives y(n).

The programs for A275902, there is no canonical definition to state claims against.
-/

/-! ## A275902.P3838824365557594013

`A275901(n)-A276325(n+1)`
-/

namespace A275902.P3838824365557594013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n - A276325 (n + 1)

end

end A275902.P3838824365557594013

/-! ## A275902.P15268391653384813513

`comp[A276784(n+1)]-A275901(n)`
-/

namespace A275902.P15268391653384813513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276784 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A275901 n

end

end A275902.P15268391653384813513

/-! ## A275902.P6987172267301170986

`A276324(n+1)-(A275901(n)+1)`
-/

namespace A275902.P6987172267301170986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - (A275901 n + 1)

end

end A275902.P6987172267301170986

/-! ## A275902.P2346064852462817654

`abs(1-A276324(Δ[n²]-n))-A275901(n)`
-/

namespace A275902.P2346064852462817654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A276324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat| - A275901 n

end

end A275902.P2346064852462817654

/-! ## A275902.P4097286379586813183

`round(sqrt(2*A275897(n+1)+1))-1-A275901(n)`
-/

namespace A275902.P4097286379586813183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A275897 (n + 1) + 1 : ℝ)) - 1 - A275901 n

end

end A275902.P4097286379586813183

/-! ## A275902.P12755106642533686800

`A023443(A276324(n+1)-A275901(n))`
-/

namespace A275902.P12755106642533686800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A276324 (n + 1) - A275901 n).toNat

end

end A275902.P12755106642533686800

/-! ## A275902.P17808870130328584563

`A275895(A275901(n))`
-/

namespace A275902.P17808870130328584563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 (A275901 n).toNat

end

end A275902.P17808870130328584563

/-! ## A275902.P3011575364115207505

`A065188(A275901(n)+1)-1`
-/

namespace A275902.P3011575364115207505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A275901 n + 1).toNat - 1

end

end A275902.P3011575364115207505

/-! ## A275902.P10978551168008721617

`A275901(n)+A065185(A275901(n)+1)`
-/

namespace A275902.P10978551168008721617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275901 n + A065185 (A275901 n + 1).toNat

end

end A275902.P10978551168008721617

/-! ## A275902.P10738489167613621029

`A275900(n+1)-1`
-/

namespace A275902.P10738489167613621029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1) - 1

end

end A275902.P10738489167613621029

/-! ## A275902.P5821595810550668956

`A023443(A275900(n+1))`
-/

namespace A275902.P5821595810550668956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275900 (n + 1)).toNat

end

end A275902.P5821595810550668956

/-! ## A275902.P3417103386911745586

`A065188(A275899(n+1))-1`
-/

namespace A275902.P3417103386911745586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A275899 (n + 1)).toNat - 1

end

end A275902.P3417103386911745586

/-! ## A275902.P10787860539991610157

`A275895(A275899(n+1)-1)`
-/

namespace A275902.P10787860539991610157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 (A275899 (n + 1) - 1).toNat

end

end A275902.P10787860539991610157

/-! ## A275902.P13674146147569660375

`A276324(n+1)-A275899(n+1)`
-/

namespace A275902.P13674146147569660375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276324 (n + 1) - A275899 (n + 1)

end

end A275902.P13674146147569660375

/-! ## A275902.P13227630310765717458

`A275899(n+1)-(A276325(n+1)+1)`
-/

namespace A275902.P13227630310765717458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275899 (n + 1) - (A276325 (n + 1) + 1)

end

end A275902.P13227630310765717458

/-!
# A275903: Expansion of (1+4*x^2) / (1-5*x+4*x^2-4*x^3).

The programs for A275903, the canonical program `A275903.P8609262099460885234` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275903 has offset 0).

The definition of A275903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x^2)/(1-5x+4x^2-4x^3))` (program `A275903.P8609262099460885234`, by `A275903.P8609262099460885234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275903.P8609262099460885234

`ogf((1+4x^2)/(1-5x+4x^2-4x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275903

/-- `ogf((1+4x^2)/(1-5x+4x^2-4x^3))` -/
def P8609262099460885234.Spec : Prop :=
  ∀ n, P8609262099460885234.a n = A275903 n

theorem P8609262099460885234.correct : P8609262099460885234.Spec := by
  intro n
  simp only [A275903]

end A275903

/-! ## A275903.P6458632827351950023

`5*a(n-1)-4*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A275903.P6458632827351950023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  5 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3)

end

end A275903.P6458632827351950023

namespace A275903

/-- `5*a(n-1)-4*a(n-2)+4*a(n-3)` -/
def P6458632827351950023.Spec : Prop :=
  ∀ n, P6458632827351950023.a n = A275903 n

end A275903

/-!
# A275904: Order of homogeneous linear recurrence satisfied by the Pisot sequence T(n, n^2-n+1).

The programs for A275904, there is no canonical definition to state claims against.
-/

/-! ## A275904.P5661747001630256471

`A344181(∑[n!])`
-/

namespace A275904.P5661747001630256471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344181 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275904.P5661747001630256471

/-!
# A275905: Expansion of (1-x-2*x^2) / (1-6*x+3*x^2-2*x^3).

The programs for A275905, the canonical program `A275905.P13140588960359052763` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275905 has offset 0).

The definition of A275905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-6x+3x^2-2x^3))` (program `A275905.P13140588960359052763`, by `A275905.P13140588960359052763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275905.P13140588960359052763

`ogf((1-x-2x^2)/(1-6x+3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275905

/-- `ogf((1-x-2x^2)/(1-6x+3x^2-2x^3))` -/
def P13140588960359052763.Spec : Prop :=
  ∀ n, P13140588960359052763.a n = A275905 n

theorem P13140588960359052763.correct : P13140588960359052763.Spec := by
  intro n
  simp only [A275905]

end A275905

/-! ## A275905.P17027358346109639525

`6*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A275905.P17027358346109639525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  6 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A275905.P17027358346109639525

namespace A275905

/-- `6*a(n-1)-3*a(n-2)+2*a(n-3)` -/
def P17027358346109639525.Spec : Prop :=
  ∀ n, P17027358346109639525.a n = A275905 n

end A275905

/-!
# A275906: Expansion of (1+x+x^2) / (1-4*x-4*x^2-x^3).

The programs for A275906, the canonical program `A275906.P10886345937676994616` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275906 has offset 0).

The definition of A275906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-4x-4x^2-x^3))` (program `A275906.P10886345937676994616`, by `A275906.P10886345937676994616.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275906.P10886345937676994616

`ogf((1+x+x^2)/(1-4x-4x^2-x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275906

/-- `ogf((1+x+x^2)/(1-4x-4x^2-x^3))` -/
def P10886345937676994616.Spec : Prop :=
  ∀ n, P10886345937676994616.a n = A275906 n

theorem P10886345937676994616.correct : P10886345937676994616.Spec := by
  intro n
  simp only [A275906]

end A275906

/-! ## A275906.P13774757180207506296

`4*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=25`
-/

namespace A275906.P13774757180207506296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) + a (n - 3)

end

end A275906.P13774757180207506296

namespace A275906

/-- `4*a(n-1)+4*a(n-2)+a(n-3)` -/
def P13774757180207506296.Spec : Prop :=
  ∀ n, (P13774757180207506296.a n : ℤ) = A275906 n

end A275906

/-! ## A275906.P4189262648958743441

`A285184(2*n)`
-/

namespace A275906.P4189262648958743441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (2 * n)

end

end A275906.P4189262648958743441

namespace A275906

/-- `A285184(2*n)` -/
def P4189262648958743441.Spec : Prop :=
  ∀ n, P4189262648958743441.a n = A275906 n

end A275906

/-! ## A275906.P17622735521540666430

`record[A285184(A014681(n))]`
-/

namespace A275906.P17622735521540666430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275906.P17622735521540666430

namespace A275906

/-- `record[A285184(A014681(n))]` -/
def P17622735521540666430.Spec : Prop :=
  ∀ n, P17622735521540666430.a n = A275906 n

end A275906

/-! ## A275906.P2523015802723641198

`record[A285184(A000265(n+1)-1)]`
-/

namespace A275906.P2523015802723641198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275906.P2523015802723641198

namespace A275906

/-- `record[A285184(A000265(n+1)-1)]` -/
def P2523015802723641198.Spec : Prop :=
  ∀ n, P2523015802723641198.a n = A275906 n

end A275906

/-! ## A275906.P4226712990881267262

`record[gcd(A135523(n+1), A285184(n))]`
-/

namespace A275906.P4226712990881267262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135523 (n + 1)) (A285184 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275906.P4226712990881267262

namespace A275906

/-- `record[gcd(A135523(n+1), A285184(n))]` -/
def P4226712990881267262.Spec : Prop :=
  ∀ n, (P4226712990881267262.a n : ℤ) = A275906 n

end A275906

/-! ## A275906.P5153702526106779249

`A335242(2*n+1)+A052980(2*n)`
-/

namespace A275906.P5153702526106779249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (2 * n + 1) + A052980 (2 * n)

end

end A275906.P5153702526106779249

namespace A275906

/-- `A335242(2*n+1)+A052980(2*n)` -/
def P5153702526106779249.Spec : Prop :=
  ∀ n, P5153702526106779249.a n = A275906 n

end A275906

/-! ## A275906.P1878970313112679044

`A335242(2*n+1)+A110513(2*n)`
-/

namespace A275906.P1878970313112679044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (2 * n + 1) + A110513 (2 * n)

end

end A275906.P1878970313112679044

namespace A275906

/-- `A335242(2*n+1)+A110513(2*n)` -/
def P1878970313112679044.Spec : Prop :=
  ∀ n, P1878970313112679044.a n = A275906 n

end A275906

/-! ## A275906.P5420430305537355542

`A183304(2*n+1)-A335274(2*n)`
-/

namespace A275906.P5420430305537355542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183304 (2 * n + 1) - A335274 (2 * n)

end

end A275906.P5420430305537355542

namespace A275906

/-- `A183304(2*n+1)-A335274(2*n)` -/
def P5420430305537355542.Spec : Prop :=
  ∀ n, P5420430305537355542.a n = A275906 n

end A275906

/-! ## A275906.P7530714167325676664

`A335274(2*n+1)-A214260(2*n)`
-/

namespace A275906.P7530714167325676664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (2 * n + 1) - A214260 (2 * n)

end

end A275906.P7530714167325676664

namespace A275906

/-- `A335274(2*n+1)-A214260(2*n)` -/
def P7530714167325676664.Spec : Prop :=
  ∀ n, P7530714167325676664.a n = A275906 n

end A275906

/-! ## A275906.P9746467371345693771

`record[A285184(A117909(A330396(n)))]`
-/

namespace A275906.P9746467371345693771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (A117909 (A330396 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275906.P9746467371345693771

namespace A275906

/-- `record[A285184(A117909(A330396(n)))]` -/
def P9746467371345693771.Spec : Prop :=
  ∀ n, P9746467371345693771.a n = A275906 n

end A275906

/-! ## A275906.P9218688670027906753

`record[A285184(A008611(A000265(n+1)))]`
-/

namespace A275906.P9218688670027906753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275906.P9218688670027906753

namespace A275906

/-- `record[A285184(A008611(A000265(n+1)))]` -/
def P9218688670027906753.Spec : Prop :=
  ∀ n, P9218688670027906753.a n = A275906 n

end A275906

/-! ## A275906.P17304412536013192816

`A110513(2*n+1)+A335274(2*n+1)+A110513(2*n)`
-/

namespace A275906.P17304412536013192816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 (2 * n + 1) + (A335274 (2 * n + 1) + A110513 (2 * n))

end

end A275906.P17304412536013192816

namespace A275906

/-- `A110513(2*n+1)+A335274(2*n+1)+A110513(2*n)` -/
def P17304412536013192816.Spec : Prop :=
  ∀ n, P17304412536013192816.a n = A275906 n

end A275906

/-! ## A275906.P3323589698890588551

`A214260(2*n+1)+A008998(2*n)-A052980(2*n+1)`
-/

namespace A275906.P3323589698890588551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 (2 * n + 1) + (A008998 (2 * n) - A052980 (2 * n + 1))

end

end A275906.P3323589698890588551

namespace A275906

/-- `A214260(2*n+1)+A008998(2*n)-A052980(2*n+1)` -/
def P3323589698890588551.Spec : Prop :=
  ∀ n, P3323589698890588551.a n = A275906 n

end A275906

/-! ## A275906.P18015549817168970967

`A335274(2*n+1)+A052980(2*n)-A052980(2*n+1)`
-/

namespace A275906.P18015549817168970967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (2 * n + 1) + (A052980 (2 * n) - A052980 (2 * n + 1))

end

end A275906.P18015549817168970967

namespace A275906

/-- `A335274(2*n+1)+A052980(2*n)-A052980(2*n+1)` -/
def P18015549817168970967.Spec : Prop :=
  ∀ n, P18015549817168970967.a n = A275906 n

end A275906

/-! ## A275906.P3978953301046158302

`A335274(2*n+1)+A008998(2*n)-A193641(2*n+1)`
-/

namespace A275906.P3978953301046158302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (2 * n + 1) + (A008998 (2 * n) - A193641 (2 * n + 1))

end

end A275906.P3978953301046158302

namespace A275906

/-- `A335274(2*n+1)+A008998(2*n)-A193641(2*n+1)` -/
def P3978953301046158302.Spec : Prop :=
  ∀ n, P3978953301046158302.a n = A275906 n

end A275906

/-! ## A275906.P167492015681855267

`A190512(2*n+1)+A190512(2*n)-A332647(2*n+1)`
-/

namespace A275906.P167492015681855267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (2 * n + 1) + (A190512 (2 * n) - A332647 (2 * n + 1))

end

end A275906.P167492015681855267

namespace A275906

/-- `A190512(2*n+1)+A190512(2*n)-A332647(2*n+1)` -/
def P167492015681855267.Spec : Prop :=
  ∀ n, P167492015681855267.a n = A275906 n

end A275906

/-! ## A275906.P2036213790654716132

`A008998(2*n+1)+A193641(2*n+1)-A332647(2*n+1)`
-/

namespace A275906.P2036213790654716132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (2 * n + 1) + (A193641 (2 * n + 1) - A332647 (2 * n + 1))

end

end A275906.P2036213790654716132

namespace A275906

/-- `A008998(2*n+1)+A193641(2*n+1)-A332647(2*n+1)` -/
def P2036213790654716132.Spec : Prop :=
  ∀ n, P2036213790654716132.a n = A275906 n

end A275906

/-! ## A275906.P5370995574471545005

`A008998(2*n+1)+A335242(2*n+1)-A193641(2*n+1)`
-/

namespace A275906.P5370995574471545005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (2 * n + 1) + (A335242 (2 * n + 1) - A193641 (2 * n + 1))

end

end A275906.P5370995574471545005

namespace A275906

/-- `A008998(2*n+1)+A335242(2*n+1)-A193641(2*n+1)` -/
def P5370995574471545005.Spec : Prop :=
  ∀ n, P5370995574471545005.a n = A275906 n

end A275906

/-! ## A275906.P7044537387765277452

`A052980(2*n+1)+A193641(2*n+1)-A332491(2*n+1)`
-/

namespace A275906.P7044537387765277452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (2 * n + 1) + (A193641 (2 * n + 1) - A332491 (2 * n + 1))

end

end A275906.P7044537387765277452

namespace A275906

/-- `A052980(2*n+1)+A193641(2*n+1)-A332491(2*n+1)` -/
def P7044537387765277452.Spec : Prop :=
  ∀ n, P7044537387765277452.a n = A275906 n

end A275906

/-!
# A275907: Expansion of (1+x-x^3) / (1-4*x-x^4-x^5).

The programs for A275907, the canonical program `A275907.P18310366663331206634` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275907 has offset 0).

The definition of A275907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^3)/(1-4x-x^4-x^5))` (program `A275907.P18310366663331206634`, by `A275907.P18310366663331206634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275907.P18310366663331206634

`ogf((1+x-x^3)/(1-4x-x^4-x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275907

/-- `ogf((1+x-x^3)/(1-4x-x^4-x^5))` -/
def P18310366663331206634.Spec : Prop :=
  ∀ n, P18310366663331206634.a n = A275907 n

theorem P18310366663331206634.correct : P18310366663331206634.Spec := by
  intro n
  simp only [A275907]

end A275907

/-! ## A275907.P8753829510258384213

`4*a(n-1)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=79, a(4)=317`
-/

namespace A275907.P8753829510258384213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 20, 79, 317] fun n a =>
  4 * a (n - 1) + a (n - 4) + a (n - 5)

end

end A275907.P8753829510258384213

namespace A275907

/-- `4*a(n-1)+a(n-4)+a(n-5)` -/
def P8753829510258384213.Spec : Prop :=
  ∀ n, (P8753829510258384213.a n : ℤ) = A275907 n

end A275907

/-! ## A275907.P5517771362266525593

`A117657(A002083(2*(n+2))-A001519(n))`
-/

namespace A275907.P5517771362266525593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117657 (A002083 (2 * (n + 2)) - A001519 n).toNat

end

end A275907.P5517771362266525593

namespace A275907

/-- `A117657(A002083(2*(n+2))-A001519(n))` -/
def P5517771362266525593.Spec : Prop :=
  ∀ n, P5517771362266525593.a n = A275907 n

end A275907

/-!
# A275908: Expansion of (1+2*x+4*x^2+4*x^3+6*x^4+4*x^5+x^6) / (1-3*x-x^2-6*x^3-7*x^4-7*x^5-5*x^6-x^7).

The programs for A275908, the canonical program `A275908.P15595987068960126500` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275908 has offset 0).

The definition of A275908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+4x^2+4x^3+6x^4+4x^5+x^6)/(1-3x-x^2-6x^3-7x^4-7x^5-5x^6-x^7))` (program `A275908.P15595987068960126500`, by `A275908.P15595987068960126500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275908.P15595987068960126500

`ogf((1+2x+4x^2+4x^3+6x^4+4x^5+x^6)/(1-3x-x^2-6x^3-7x^4-7x^5-5x^6-x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275908

/-- `ogf((1+2x+4x^2+4x^3+6x^4+4x^5+x^6)/(1-3x-x^2-6x^3-7x^4-7x^5-5x^6-x^7))` -/
def P15595987068960126500.Spec : Prop :=
  ∀ n, P15595987068960126500.a n = A275908 n

theorem P15595987068960126500.correct : P15595987068960126500.Spec := by
  intro n
  simp only [A275908]

end A275908

/-! ## A275908.P7718731062070495161

`∑[record[A103221(A215008(n))]]`
-/

namespace A275908.P7718731062070495161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A215008 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275908.P7718731062070495161

namespace A275908

/-- `∑[record[A103221(A215008(n))]]` -/
def P7718731062070495161.Spec : Prop :=
  ∀ n, P7718731062070495161.a n = A275908 n

end A275908

/-!
# A275909: Expansion of (1+4*x+8*x^2+8*x^3+7*x^4+4*x^5+2*x^6) / (1-x-7*x^2-12*x^3-6*x^4-7*x^5-4*x^6-2*x^7).

The programs for A275909, the canonical program `A275909.P10810110144280063339` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275909 has offset 0).

The definition of A275909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+8x^2+8x^3+7x^4+4x^5+2x^6)/(1-x-7x^2-12x^3-6x^4-7x^5-4x^6-2x^7))` (program `A275909.P10810110144280063339`, by `A275909.P10810110144280063339.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275909.P10810110144280063339

`ogf((1+4x+8x^2+8x^3+7x^4+4x^5+2x^6)/(1-x-7x^2-12x^3-6x^4-7x^5-4x^6-2x^7))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275909

/-- `ogf((1+4x+8x^2+8x^3+7x^4+4x^5+2x^6)/(1-x-7x^2-12x^3-6x^4-7x^5-4x^6-2x^7))` -/
def P10810110144280063339.Spec : Prop :=
  ∀ n, P10810110144280063339.a n = A275909 n

theorem P10810110144280063339.correct : P10810110144280063339.Spec := by
  intro n
  simp only [A275909]

end A275909

/-! ## A275909.P14989033624040736096

`A006861(2*(n+1))-A003987(A064846(n+1))`
-/

namespace A275909.P14989033624040736096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006861 (2 * (n + 1)) - A003987 (A064846 (n + 1)).toNat

end

end A275909.P14989033624040736096

namespace A275909

/-- `A006861(2*(n+1))-A003987(A064846(n+1))` -/
def P14989033624040736096.Spec : Prop :=
  ∀ n, P14989033624040736096.a n = A275909 n

end A275909

/-!
# A275910: Numbers not congruent to 0, 1 or 8 mod 9.

The programs for A275910, the canonical program `A275910.P4936554695765272271` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275910 has offset 1).

The definition of A275910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275910.P4936554695765272271

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=6, a(5)=7, a(6)=11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275910

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P4936554695765272271.Spec : Prop :=
  ∀ n, P4936554695765272271.a n = A275910 (n + 1)

theorem P4936554695765272271.correct : P4936554695765272271.Spec := by
  intro n
  simp only [A275910, Nat.add_sub_cancel]

end A275910

/-! ## A275910.P15573023229799138927

`comp[6*round(n/3)+n]`
-/

namespace A275910.P15573023229799138927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275910.P15573023229799138927

namespace A275910

/-- `comp[6*round(n/3)+n]` -/
def P15573023229799138927.Spec : Prop :=
  ∀ n, (P15573023229799138927.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P14203600958906744465

`lt[0, n*(dr(n+2)-3)]`
-/

namespace A275910.P14203600958906744465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((SequenceMachineLib.digitalRoot (n + 2 : ℤ) : ℤ) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275910.P14203600958906744465

namespace A275910

/-- `lt[0, n*(dr(n+2)-3)]` -/
def P14203600958906744465.Spec : Prop :=
  ∀ n, (P14203600958906744465.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P13795383700841043130

`lt[n+3, dr(n+2)+n]`
-/

namespace A275910.P13795383700841043130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275910.P13795383700841043130

namespace A275910

/-- `lt[n+3, dr(n+2)+n]` -/
def P13795383700841043130.Spec : Prop :=
  ∀ n, (P13795383700841043130.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P15551376786406780243

`lt[n+2, (n+1)%9+n]`
-/

namespace A275910.P15551376786406780243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 9 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275910.P15551376786406780243

namespace A275910

/-- `lt[n+2, (n+1)%9+n]` -/
def P15551376786406780243.Spec : Prop :=
  ∀ n, (P15551376786406780243.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P3983770427675366070

`lt[(dr(1-n)-5)*(n-2), n]`
-/

namespace A275910.P3983770427675366070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (1 - (n : ℤ)) : ℤ) - 5) * ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275910.P3983770427675366070

namespace A275910

/-- `lt[(dr(1-n)-5)*(n-2), n]` -/
def P3983770427675366070.Spec : Prop :=
  ∀ n, (P3983770427675366070.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P3104122762284172054

`floor(∑[A040253(n)/4+1]/2)`
-/

namespace A275910.P3104122762284172054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040253 n : ℚ) / 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌋

end

end A275910.P3104122762284172054

namespace A275910

/-- `floor(∑[A040253(n)/4+1]/2)` -/
def P3104122762284172054.Spec : Prop :=
  ∀ n, P3104122762284172054.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P182759822263585748

`A097992(n)+A047422(n+1)`
-/

namespace A275910.P182759822263585748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 n + A047422 (n + 1)

end

end A275910.P182759822263585748

namespace A275910

/-- `A097992(n)+A047422(n+1)` -/
def P182759822263585748.Spec : Prop :=
  ∀ n, P182759822263585748.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P8517010694518532638

`A152467(n)+A047593(n+1)`
-/

namespace A275910.P8517010694518532638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 n + A047593 (n + 1)

end

end A275910.P8517010694518532638

namespace A275910

/-- `A152467(n)+A047593(n+1)` -/
def P8517010694518532638.Spec : Prop :=
  ∀ n, P8517010694518532638.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P17940375432924374212

`∪[A028835(n+1), A350668(n)]`
-/

namespace A275910.P17940375432924374212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A275910.P17940375432924374212

namespace A275910

/-- `∪[A028835(n+1), A350668(n)]` -/
def P17940375432924374212.Spec : Prop :=
  ∀ n, (P17940375432924374212.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P9651384719762013694

`∪[A016051(n+1), A056527(n+1)]`
-/

namespace A275910.P9651384719762013694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A275910.P9651384719762013694

namespace A275910

/-- `∪[A016051(n+1), A056527(n+1)]` -/
def P9651384719762013694.Spec : Prop :=
  ∀ n, (P9651384719762013694.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P3720345407300967682

`A168183(A047593(n+1))`
-/

namespace A275910.P3720345407300967682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (A047593 (n + 1)).toNat

end

end A275910.P3720345407300967682

namespace A275910

/-- `A168183(A047593(n+1))` -/
def P3720345407300967682.Spec : Prop :=
  ∀ n, P3720345407300967682.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P5053392484238622573

`A248375(A047602(n+1)+2)`
-/

namespace A275910.P5053392484238622573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A047602 (n + 1) + 2).toNat

end

end A275910.P5053392484238622573

namespace A275910

/-- `A248375(A047602(n+1)+2)` -/
def P5053392484238622573.Spec : Prop :=
  ∀ n, P5053392484238622573.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P9732791998254190776

`record[A004492(n)-1]`
-/

namespace A275910.P9732791998254190776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004492 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275910.P9732791998254190776

namespace A275910

/-- `record[A004492(n)-1]` -/
def P9732791998254190776.Spec : Prop :=
  ∀ n, P9732791998254190776.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P14603019641250861713

`lt[A004495(n+1), n]`
-/

namespace A275910.P14603019641250861713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A275910.P14603019641250861713

namespace A275910

/-- `lt[A004495(n+1), n]` -/
def P14603019641250861713.Spec : Prop :=
  ∀ n, (P14603019641250861713.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P5529308017927354003

`lt[A004495(n), n]-1`
-/

namespace A275910.P5529308017927354003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004495 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A275910.P5529308017927354003

namespace A275910

/-- `lt[A004495(n), n]-1` -/
def P5529308017927354003.Spec : Prop :=
  ∀ n, P5529308017927354003.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P13289104357612898398

`A028242(A350668(n))`
-/

namespace A275910.P13289104357612898398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A350668 n).toNat

end

end A275910.P13289104357612898398

namespace A275910

/-- `A028242(A350668(n))` -/
def P13289104357612898398.Spec : Prop :=
  ∀ n, P13289104357612898398.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P12483452015310269976

`A030451(A236348(2*n)+n)`
-/

namespace A275910.P12483452015310269976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A236348 (2 * n) + (n : ℤ)).toNat

end

end A275910.P12483452015310269976

namespace A275910

/-- `A030451(A236348(2*n)+n)` -/
def P12483452015310269976.Spec : Prop :=
  ∀ n, P12483452015310269976.a n = A275910 (n + 1)

end A275910

/-! ## A275910.P7521519890390410032

`lt[A006369(2*n), A006369(A006369(2*n))]`
-/

namespace A275910.P7521519890390410032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 (A006369 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275910.P7521519890390410032

namespace A275910

/-- `lt[A006369(2*n), A006369(A006369(2*n))]` -/
def P7521519890390410032.Spec : Prop :=
  ∀ n, (P7521519890390410032.a n : ℤ) = A275910 (n + 1)

end A275910

/-! ## A275910.P942228406764795972

`lt[A265667(2*n+1), A265667(A265667(2*n+1))]`
-/

namespace A275910.P942228406764795972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (A265667 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275910.P942228406764795972

namespace A275910

/-- `lt[A265667(2*n+1), A265667(A265667(2*n+1))]` -/
def P942228406764795972.Spec : Prop :=
  ∀ n, (P942228406764795972.a n : ℤ) = A275910 (n + 1)

end A275910

/-!
# A275911: Intersection of A025487 and A026477.

The programs for A275911, there is no canonical definition to state claims against.
-/

/-! ## A275911.P16826305750573546212

`record[A278266(n+1)]`
-/

namespace A275911.P16826305750573546212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275911.P16826305750573546212

/-! ## A275911.P12111854775717135632

`∩[A025487(n+1), A026477(n+1)]`
-/

namespace A275911.P12111854775717135632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275911.P12111854775717135632

/-! ## A275911.P6331577408162149961

`∩[A026477(n+1), A333964(n+1)]`
-/

namespace A275911.P6331577408162149961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275911.P6331577408162149961

/-! ## A275911.P16958409036800150341

`∩[A026477(n+1), A178799(n)+a(n-1)]` with `a(0)=1`
-/

namespace A275911.P16958409036800150341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A178799 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275911.P16958409036800150341

/-! ## A275911.P14988127028807476958

`record[A046523(A026477(n+1))]`
-/

namespace A275911.P14988127028807476958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A026477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275911.P14988127028807476958

/-!
# A275912: G.f. is square root of g.f. for A239112.

The programs for A275912, there is no canonical definition to state claims against.
-/

/-! ## A275912.P4295073931857426814

`A337870(n)-A000120(A092721(n))`
-/

namespace A275912.P4295073931857426814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337870 n - A000120 (A092721 n).toNat

end

end A275912.P4295073931857426814

/-! ## A275912.P5319989752967176595

`A337870(A092721(n)+n)`
-/

namespace A275912.P5319989752967176595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337870 (A092721 n + (n : ℤ)).toNat

end

end A275912.P5319989752967176595

/-!
# A275913: A close cousin of A222313 (see Cobeli et al. 2015 for precise definition).

The programs for A275913, there is no canonical definition to state claims against.
-/

/-! ## A275913.P664969697151353057

`∑[A060272(∑[A204064(n)])]`
-/

namespace A275913.P664969697151353057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275913.P664969697151353057

/-! ## A275913.P3653156016089639011

`record[A002487(p?[A063949(n+1)])]`
-/

namespace A275913.P3653156016089639011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275913.P3653156016089639011

/-! ## A275913.P11953641196071583972

`record[A318509(p?[A063949(n+1)])]`
-/

namespace A275913.P11953641196071583972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275913.P11953641196071583972

/-! ## A275913.P14095664441389373474

`record[and(A104192(n+1), A246497(n+1))]`
-/

namespace A275913.P14095664441389373474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104192 (n + 1)) (A246497 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275913.P14095664441389373474

/-!
# A275914: A close cousin of A222311 (see Cobeli et al. 2015 for precise definition).

The programs for A275914, there is no canonical definition to state claims against.
-/

/-! ## A275914.P13585055409849470549

`A160756(∑[C(n, 3)])+n`
-/

namespace A275914.P13585055409849470549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160756 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A275914.P13585055409849470549

/-! ## A275914.P10306754308854756096

`A344911(2^n)+char[xor(n, Δ[n²])]`
-/

namespace A275914.P10306754308854756096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344911 (2 ^ n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A275914.P10306754308854756096

/-! ## A275914.P2291433650028561787

`A259445((n+1)!)/round(sqrt(2*n))!`
-/

namespace A275914.P2291433650028561787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259445 (Nat.factorial (n + 1)) : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℚ)

end

end A275914.P2291433650028561787

/-!
# A275915: First differences of A273059.

The programs for A275915, there is no canonical definition to state claims against.
-/

/-! ## A275915.P10814981903833835181

`Δ[A273059(n)]`
-/

namespace A275915.P10814981903833835181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275915.P10814981903833835181

/-! ## A275915.P16117773547600348050

`A273059(n+1)-A273059(n)`
-/

namespace A275915.P16117773547600348050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (n + 1) - A273059 n

end

end A275915.P16117773547600348050

/-! ## A275915.P14088168203697911476

`record[A273059(A027656(n))]-A273059(n)`
-/

namespace A275915.P14088168203697911476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A027656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273059 n

end

end A275915.P14088168203697911476

/-! ## A275915.P9687604875587876102

`record[A273059(A008611(n))]-A273059(n)`
-/

namespace A275915.P9687604875587876102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273059 n

end

end A275915.P9687604875587876102

/-! ## A275915.P15446573104258242239

`record[A273059(A286552(n))]-A273059(n)`
-/

namespace A275915.P15446573104258242239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A286552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273059 n

end

end A275915.P15446573104258242239

/-! ## A275915.P14866417665260439626

`record[A273059(A110659(n))]-A273059(n)`
-/

namespace A275915.P14866417665260439626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A110659 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273059 n

end

end A275915.P14866417665260439626

/-! ## A275915.P9477573588864093233

`record[A273059(A274640(n))]-A273059(n)`
-/

namespace A275915.P9477573588864093233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A274640 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273059 n

end

end A275915.P9477573588864093233

/-!
# A275916: a(n) = A273059(4n).

The programs for A275916, there is no canonical definition to state claims against.
-/

/-! ## A275916.P6919366036912896061

`A273059(4*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275916.P6919366036912896061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (4 * n)

end

end A275916.P6919366036912896061

/-! ## A275916.P16883320365192595735

`record[A273059(lcm(2, n+1)-2)]`
-/

namespace A275916.P16883320365192595735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (Nat.lcm 2 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275916.P16883320365192595735

/-! ## A275916.P6367314777876405450

`A273059(A008574(n))%A016756(n)`
-/

namespace A275916.P6367314777876405450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273059 (A008574 n).toNat) (A016756 n)

end

end A275916.P6367314777876405450

/-! ## A275916.P9293559114334310105

`A273059(A008586(n))+A000038(n+1)`
-/

namespace A275916.P9293559114334310105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A008586 n).toNat + A000038 (n + 1)

end

end A275916.P9293559114334310105

/-! ## A275916.P11510406038095859863

`A273059(A008586(n))/(1-A000038(n))`
-/

namespace A275916.P11510406038095859863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273059 (A008586 n).toNat : ℚ) / (1 - A000038 n : ℚ)

end

end A275916.P11510406038095859863

/-! ## A275916.P7447222864407354003

`lcm(A033999(n), A273059(A016813(n)-1))`
-/

namespace A275916.P7447222864407354003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A273059 (A016813 n - 1).toNat)

end

end A275916.P7447222864407354003

/-! ## A275916.P16298736608733171472

`A275917(n)-A275915(4*n)`
-/

namespace A275916.P16298736608733171472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275917 n - A275915 (4 * n)

end

end A275916.P16298736608733171472

/-! ## A275916.P5788287702149142217

`record[A273059(A066104(n))]`
-/

namespace A275916.P5788287702149142217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A066104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275916.P5788287702149142217

/-! ## A275916.P767504887276510625

`record[A273059(and(n, A014681(n)))]`
-/

namespace A275916.P767504887276510625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (Int.land (n : ℤ) (A014681 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275916.P767504887276510625

/-!
# A275917: a(n) = A273059(4n+1).

The programs for A275917, the canonical program `A275917.P15138052319720947312` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275917 has offset 0).

The definition of A275917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275917.P3428639946983889587

`A273059(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275917.P3428639946983889587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (4 * n + 1)

end

end A275917.P3428639946983889587

namespace A275917

/-- `A273059(4*n+1)` -/
def P3428639946983889587.Spec : Prop :=
  ∀ n, P3428639946983889587.a n = A275917 n

end A275917

/-! ## A275917.P9991211197765652980

`record[A273059(lcm(2, n+1)-1)]`
-/

namespace A275917.P9991211197765652980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (Nat.lcm 2 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275917.P9991211197765652980

namespace A275917

/-- `record[A273059(lcm(2, n+1)-1)]` -/
def P9991211197765652980.Spec : Prop :=
  ∀ n, P9991211197765652980.a n = A275917 n

end A275917

/-! ## A275917.P15138052319720947312

`2*A275918(n)-A275919(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A275917

/-- `2*A275918(n)-A275919(n)` -/
def P15138052319720947312.Spec : Prop :=
  ∀ n, P15138052319720947312.a n = A275917 n

theorem P15138052319720947312.correct : P15138052319720947312.Spec := by
  intro n
  simp only [A275917]

end A275917

/-! ## A275917.P13849500355350521867

`lcm(A033999(n), A273059(A016813(n)))`
-/

namespace A275917.P13849500355350521867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A273059 (A016813 n).toNat)

end

end A275917.P13849500355350521867

namespace A275917

/-- `lcm(A033999(n), A273059(A016813(n)))` -/
def P13849500355350521867.Spec : Prop :=
  ∀ n, (P13849500355350521867.a n : ℤ) = A275917 n

end A275917

/-! ## A275917.P4847231966758127838

`A275918(n)-(A140101(n+1)+A140101(n+1))`
-/

namespace A275917.P4847231966758127838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275918 n - (A140101 (n + 1) + A140101 (n + 1))

end

end A275917.P4847231966758127838

namespace A275917

/-- `A275918(n)-(A140101(n+1)+A140101(n+1))` -/
def P4847231966758127838.Spec : Prop :=
  ∀ n, P4847231966758127838.a n = A275917 n

theorem P4847231966758127838.correct : P4847231966758127838.Spec := by
  intro n
  simp only [A275917, Nat.add_sub_cancel, A275917.P4847231966758127838.a, A275917.P15138052319720947312.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A275918, A275918.P6241858997175305561.a, A275919, A275919.P913546030390113803.a, A140100, A140100.P9463033727352148210.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A140103, A140103.P10507657659334909874.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275917

/-! ## A275917.P3303797206439632926

`A273059(A016813(n))%A113150(n+1)`
-/

namespace A275917.P3303797206439632926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273059 (A016813 n).toNat) (A113150 (n + 1))

end

end A275917.P3303797206439632926

namespace A275917

/-- `A273059(A016813(n))%A113150(n+1)` -/
def P3303797206439632926.Spec : Prop :=
  ∀ n, P3303797206439632926.a n = A275917 n

end A275917

/-!
# A275918: a(n) = A273059(4n+2).

The programs for A275918, the canonical program `A275918.P6241858997175305561` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275918 has offset 0).

The definition of A275918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275918.P10673371200247422337

`A273059(4*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275918.P10673371200247422337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (4 * n + 2)

end

end A275918.P10673371200247422337

namespace A275918

/-- `A273059(4*n+2)` -/
def P10673371200247422337.Spec : Prop :=
  ∀ n, P10673371200247422337.a n = A275918 n

end A275918

/-! ## A275918.P949632048600878132

`record[A273059(lcm(2, n+1))]`
-/

namespace A275918.P949632048600878132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (Nat.lcm 2 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275918.P949632048600878132

namespace A275918

/-- `record[A273059(lcm(2, n+1))]` -/
def P949632048600878132.Spec : Prop :=
  ∀ n, P949632048600878132.a n = A275918 n

end A275918

/-! ## A275918.P17623866067889343336

`(A275919(n)+A275917(n))/2`
-/

namespace A275918.P17623866067889343336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275919 n + A275917 n : ℚ) / 2

end

end A275918.P17623866067889343336

namespace A275918

/-- `(A275919(n)+A275917(n))/2` -/
def P17623866067889343336.Spec : Prop :=
  ∀ n, P17623866067889343336.a n = (A275918 n : ℚ)

theorem P17623866067889343336.correct : P17623866067889343336.Spec := by
  intro n
  simp only [A275918, Nat.add_sub_cancel, A275918.P17623866067889343336.a, A275918.P6241858997175305561.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A275917, A275917.P15138052319720947312.a, A275919, A275919.P913546030390113803.a, A140100, A140100.P9463033727352148210.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A140103, A140103.P10507657659334909874.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275918

/-! ## A275918.P3568072162671298930

`lcm(A033999(n), A273059(A016813(n)+1))`
-/

namespace A275918.P3568072162671298930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A273059 (A016813 n + 1).toNat)

end

end A275918.P3568072162671298930

namespace A275918

/-- `lcm(A033999(n), A273059(A016813(n)+1))` -/
def P3568072162671298930.Spec : Prop :=
  ∀ n, (P3568072162671298930.a n : ℤ) = A275918 n

end A275918

/-! ## A275918.P15820138860399560528

`A275916(n+1)+A275917(n)-A275919(n)`
-/

namespace A275918.P15820138860399560528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275916 (n + 1) + (A275917 n - A275919 n)

end

end A275918.P15820138860399560528

namespace A275918

/-- `A275916(n+1)+A275917(n)-A275919(n)` -/
def P15820138860399560528.Spec : Prop :=
  ∀ n, P15820138860399560528.a n = A275918 n

end A275918

/-! ## A275918.P7286907231377392461

`A140101(n+1)+A275917(n)+A140101(n+1)`
-/

namespace A275918.P7286907231377392461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) + (A275917 n + A140101 (n + 1))

end

end A275918.P7286907231377392461

namespace A275918

/-- `A140101(n+1)+A275917(n)+A140101(n+1)` -/
def P7286907231377392461.Spec : Prop :=
  ∀ n, P7286907231377392461.a n = A275918 n

theorem P7286907231377392461.correct : P7286907231377392461.Spec := by
  intro n
  simp only [A275918, Nat.add_sub_cancel, A275918.P7286907231377392461.a, A275918.P6241858997175305561.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A275917, A275917.P15138052319720947312.a, A275919, A275919.P913546030390113803.a, A140100, A140100.P9463033727352148210.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A140103, A140103.P10507657659334909874.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275918

/-! ## A275918.P6241858997175305561

`A275919(n)-(A140101(n+1)+A140101(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A275918

/-- `A275919(n)-(A140101(n+1)+A140101(n+1))` -/
def P6241858997175305561.Spec : Prop :=
  ∀ n, P6241858997175305561.a n = A275918 n

theorem P6241858997175305561.correct : P6241858997175305561.Spec := by
  intro n
  simp only [A275918]

end A275918

/-! ## A275918.P200832879177799698

`record[A273059(A066104(n)+2)]`
-/

namespace A275918.P200832879177799698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (A066104 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275918.P200832879177799698

namespace A275918

/-- `record[A273059(A066104(n)+2)]` -/
def P200832879177799698.Spec : Prop :=
  ∀ n, P200832879177799698.a n = A275918 n

end A275918

/-!
# A275919: a(n) = A273059(4n+3).

The programs for A275919, the canonical program `A275919.P913546030390113803` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275919 has offset 0).

The definition of A275919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7572 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275919.P8143249514582351297

`A273059(4*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275919.P8143249514582351297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273059 (4 * n + 3)

end

end A275919.P8143249514582351297

namespace A275919

/-- `A273059(4*n+3)` -/
def P8143249514582351297.Spec : Prop :=
  ∀ n, P8143249514582351297.a n = A275919 n

end A275919

/-! ## A275919.P12526545896319903535

`2*A275918(n)-A275917(n)`
-/

namespace A275919.P12526545896319903535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275918 n - A275917 n

end

end A275919.P12526545896319903535

namespace A275919

/-- `2*A275918(n)-A275917(n)` -/
def P12526545896319903535.Spec : Prop :=
  ∀ n, P12526545896319903535.a n = A275919 n

theorem P12526545896319903535.correct : P12526545896319903535.Spec := by
  intro n
  simp only [A275919, Nat.add_sub_cancel, A275919.P12526545896319903535.a, A275919.P913546030390113803.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A140103, A140103.P10507657659334909874.a, A275917, A275917.P15138052319720947312.a, A275918, A275918.P6241858997175305561.a, A140100, A140100.P9463033727352148210.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275919

/-! ## A275919.P4511385873901225437

`A275916(n+1)-2*A140101(n+1)`
-/

namespace A275919.P4511385873901225437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275916 (n + 1) - 2 * A140101 (n + 1)

end

end A275919.P4511385873901225437

namespace A275919

/-- `A275916(n+1)-2*A140101(n+1)` -/
def P4511385873901225437.Spec : Prop :=
  ∀ n, P4511385873901225437.a n = A275919 n

end A275919

/-! ## A275919.P1369236982538972849

`A140101(n+1)+A275918(n)+A140101(n+1)`
-/

namespace A275919.P1369236982538972849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (n + 1) + (A275918 n + A140101 (n + 1))

end

end A275919.P1369236982538972849

namespace A275919

/-- `A140101(n+1)+A275918(n)+A140101(n+1)` -/
def P1369236982538972849.Spec : Prop :=
  ∀ n, P1369236982538972849.a n = A275919 n

theorem P1369236982538972849.correct : P1369236982538972849.Spec := by
  intro n
  simp only [A275919, Nat.add_sub_cancel, A275919.P1369236982538972849.a, A275919.P913546030390113803.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A140102, A140102.P7920234187316710791.f1, A140102.P7920234187316710791.a, A140103, A140103.P10507657659334909874.a, A275918, A275918.P6241858997175305561.a, A140100, A140100.P9463033727352148210.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275919

/-! ## A275919.P913546030390113803

`A140102(n+1)+(A140103(n+1)+A140102(n+1))²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A275919

/-- `A140102(n+1)+(A140103(n+1)+A140102(n+1))²` -/
def P913546030390113803.Spec : Prop :=
  ∀ n, P913546030390113803.a n = A275919 n

theorem P913546030390113803.correct : P913546030390113803.Spec := by
  intro n
  simp only [A275919]

end A275919

/-!
# A275920: Primes that don't divide the number of 3-line Latin rectangles.

The programs for A275920, there is no canonical definition to state claims against.
-/

/-! ## A275920.P7532476399507290892

`p?[lt[A225404(n+2), A309601(n)]]`
-/

namespace A275920.P7532476399507290892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275920.P7532476399507290892

/-! ## A275920.P3998747895430643244

`p?[eq[A354806(n+1), A354841(n+1)]]`
-/

namespace A275920.P3998747895430643244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354806 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354841 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275920.P3998747895430643244

/-!
# A275921: Number of 5 X n Latin rectangles.

The programs for A275921, there is no canonical definition to state claims against.
-/

/-! ## A275921.P16882991123378666280

`A001009(A056000(n)+15)`
-/

namespace A275921.P16882991123378666280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (A056000 n + 15).toNat

end

end A275921.P16882991123378666280

/-! ## A275921.P15516821440712024819

`A001009(eq[7, A066657(n)])`
-/

namespace A275921.P15516821440712024819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275921.P15516821440712024819

/-! ## A275921.P10057497897076998683

`A001009(eq[6, A131818(n+1)])`
-/

namespace A275921.P10057497897076998683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275921.P10057497897076998683

/-!
# A275922: 

The programs for A275922, there is no canonical definition to state claims against.
-/

/-! ## A275922.P3790887334165913928

`A001009(eq[7, A131818(n+1)])`
-/

namespace A275922.P3790887334165913928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275922.P3790887334165913928

/-!
# A275923: Number of connected arrangements of n circles in the affine plane, in the sense that the union of the solid circles is a connected set.

The programs for A275923, there is no canonical definition to state claims against.
-/

/-! ## A275923.P7737624397873864636

`A288560(n)-A015910(A036720(n))`
-/

namespace A275923.P7737624397873864636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288560 n - A015910 (A036720 n).toNat

end

end A275923.P7737624397873864636

/-!
# A275924: Number of connected arrangements of n circles in the affine plane, in the sense that the union of the boundaries of the circles is a connected set.

The programs for A275924, there is no canonical definition to state claims against.
-/

/-! ## A275924.P1993503233329108623

`∏{e}[(1-n)²!, #*sqrt(2)]`
-/

namespace A275924.P1993503233329108623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) * Real.sqrt (2 : ℝ)

end

end A275924.P1993503233329108623

/-!
# A275925: Trajectory of 3 under repeated application of the morphism sigma: 3 -> 3656, 5 -> 365656, 6 -> 3656656.

The programs for A275925, the canonical program `A275925.P1014596103965212206` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275925 has offset 1).

The definition of A275925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275925.P5059141028487390771

`dr(xor(13, A277745(n+1)))`
-/

namespace A275925.P5059141028487390771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor 13 (A277745 (n + 1)))

end

end A275925.P5059141028487390771

namespace A275925

/-- `dr(xor(13, A277745(n+1)))` -/
def P5059141028487390771.Spec : Prop :=
  ∀ n, (P5059141028487390771.a n : ℤ) = A275925 (n + 1)

end A275925

/-! ## A275925.P1014596103965212206

`7-gcd(4, A003796(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A275925

/-- `7-gcd(4, A003796(n+1))` -/
def P1014596103965212206.Spec : Prop :=
  ∀ n, P1014596103965212206.a n = A275925 (n + 1)

theorem P1014596103965212206.correct : P1014596103965212206.Spec := by
  intro n
  simp only [A275925, Nat.add_sub_cancel]

end A275925

/-! ## A275925.P14109330495876801634

`and(3, 3*A276790(n))+3`
-/

namespace A275925.P14109330495876801634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (3 * A276790 n) + 3

end

end A275925.P14109330495876801634

namespace A275925

/-- `and(3, 3*A276790(n))+3` -/
def P14109330495876801634.Spec : Prop :=
  ∀ n, P14109330495876801634.a n = A275925 (n + 1)

end A275925

/-! ## A275925.P9396815148669990894

`Δ[A140101(A140101(n)+1-n)]`
-/

namespace A275925.P9396815148669990894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (A140101 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275925.P9396815148669990894

namespace A275925

/-- `Δ[A140101(A140101(n)+1-n)]` -/
def P9396815148669990894.Spec : Prop :=
  ∀ n, P9396815148669990894.a n = A275925 (n + 1)

end A275925

/-! ## A275925.P2693028612244971149

`Δ[A140101(1-(n-A140101(n)))]`
-/

namespace A275925.P2693028612244971149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (1 - ((n : ℤ) - A140101 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275925.P2693028612244971149

namespace A275925

/-- `Δ[A140101(1-(n-A140101(n)))]` -/
def P2693028612244971149.Spec : Prop :=
  ∀ n, P2693028612244971149.a n = A275925 (n + 1)

end A275925

/-! ## A275925.P5142420604668567322

`Δ[A140101(A278039(n)+A276791(n))]`
-/

namespace A275925.P5142420604668567322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 (A278039 n + A276791 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275925.P5142420604668567322

namespace A275925

/-- `Δ[A140101(A278039(n)+A276791(n))]` -/
def P5142420604668567322.Spec : Prop :=
  ∀ n, P5142420604668567322.a n = A275925 (n + 1)

end A275925

/-! ## A275925.P16633950331652481242

`A140100(A003145(n+1))-A305373(n)`
-/

namespace A275925.P16633950331652481242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140100 (A003145 (n + 1)).toNat - A305373 n

end

end A275925.P16633950331652481242

namespace A275925

/-- `A140100(A003145(n+1))-A305373(n)` -/
def P16633950331652481242.Spec : Prop :=
  ∀ n, P16633950331652481242.a n = A275925 (n + 1)

end A275925

/-! ## A275925.P16949245895341654537

`A003144(n+1)+A003145(n+1)-A305373(n)`
-/

namespace A275925.P16949245895341654537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (n + 1) + (A003145 (n + 1) - A305373 n)

end

end A275925.P16949245895341654537

namespace A275925

/-- `A003144(n+1)+A003145(n+1)-A305373(n)` -/
def P16949245895341654537.Spec : Prop :=
  ∀ n, P16949245895341654537.a n = A275925 (n + 1)

end A275925

/-! ## A275925.P15069914268357760490

`Δ[A305373(n)]`
-/

namespace A275925.P15069914268357760490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275925.P15069914268357760490

namespace A275925

/-- `Δ[A305373(n)]` -/
def P15069914268357760490.Spec : Prop :=
  ∀ n, P15069914268357760490.a n = A275925 (n + 1)

end A275925

/-! ## A275925.P5790871420410596484

`A305373(n+1)-A305373(n)`
-/

namespace A275925.P5790871420410596484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305373 (n + 1) - A305373 n

end

end A275925.P5790871420410596484

namespace A275925

/-- `A305373(n+1)-A305373(n)` -/
def P5790871420410596484.Spec : Prop :=
  ∀ n, P5790871420410596484.a n = A275925 (n + 1)

end A275925

/-!
# A275926: a(n) = A140099(n) - A140101(n).

The programs for A275926, the canonical program `A275926.P14421314080445003667` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275926 has offset 1).

The definition of A275926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140099, A140101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275926.P14421314080445003667

`A140099(n+1)-A140101(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A275926

/-- `A140099(n+1)-A140101(n+1)` -/
def P14421314080445003667.Spec : Prop :=
  ∀ n, P14421314080445003667.a n = A275926 (n + 1)

theorem P14421314080445003667.correct : P14421314080445003667.Spec := by
  intro n
  simp only [A275926, Nat.add_sub_cancel]

end A275926

/-! ## A275926.P1416560199353911417

`char[A276407(n+1)-1]`
-/

namespace A275926.P1416560199353911417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276407 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275926.P1416560199353911417

namespace A275926

/-- `char[A276407(n+1)-1]` -/
def P1416560199353911417.Spec : Prop :=
  ∀ n, (P1416560199353911417.a n : ℤ) = A275926 (n + 1)

end A275926

/-! ## A275926.P12660421361177359510

`A276404(A158919(n+1))`
-/

namespace A275926.P12660421361177359510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A158919 (n + 1)).toNat

end

end A275926.P12660421361177359510

namespace A275926

/-- `A276404(A158919(n+1))` -/
def P12660421361177359510.Spec : Prop :=
  ∀ n, P12660421361177359510.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P14838996238589599058

`A276404(A278039(n+1))`
-/

namespace A275926.P14838996238589599058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A278039 (n + 1)).toNat

end

end A275926.P14838996238589599058

namespace A275926

/-- `A276404(A278039(n+1))` -/
def P14838996238589599058.Spec : Prop :=
  ∀ n, P14838996238589599058.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P1473313692575730626

`A276404(A286999(n+1))`
-/

namespace A275926.P1473313692575730626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A286999 (n + 1)).toNat

end

end A275926.P1473313692575730626

namespace A275926

/-- `A276404(A286999(n+1))` -/
def P1473313692575730626.Spec : Prop :=
  ∀ n, P1473313692575730626.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P15689426874606375879

`A276404(A287113(n+1))`
-/

namespace A275926.P15689426874606375879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A287113 (n + 1)).toNat

end

end A275926.P15689426874606375879

namespace A275926

/-- `A276404(A287113(n+1))` -/
def P15689426874606375879.Spec : Prop :=
  ∀ n, P15689426874606375879.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P7481290703700397784

`A276404(A287175(n+1))`
-/

namespace A275926.P7481290703700397784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A287175 (n + 1)).toNat

end

end A275926.P7481290703700397784

namespace A275926

/-- `A276404(A287175(n+1))` -/
def P7481290703700397784.Spec : Prop :=
  ∀ n, P7481290703700397784.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P9231318006306792038

`A276404(A003144(n+1)+1)`
-/

namespace A275926.P9231318006306792038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A003144 (n + 1) + 1).toNat

end

end A275926.P9231318006306792038

namespace A275926

/-- `A276404(A003144(n+1)+1)` -/
def P9231318006306792038.Spec : Prop :=
  ∀ n, P9231318006306792038.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P6607488533914751980

`A276404(A140101(n+1)-n)`
-/

namespace A275926.P6607488533914751980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A140101 (n + 1) - (n : ℤ)).toNat

end

end A275926.P6607488533914751980

namespace A275926

/-- `A276404(A140101(n+1)-n)` -/
def P6607488533914751980.Spec : Prop :=
  ∀ n, P6607488533914751980.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P4440625975765387258

`A158919(n+1)-A003144(n+1)`
-/

namespace A275926.P4440625975765387258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158919 (n + 1) - A003144 (n + 1)

end

end A275926.P4440625975765387258

namespace A275926

/-- `A158919(n+1)-A003144(n+1)` -/
def P4440625975765387258.Spec : Prop :=
  ∀ n, P4440625975765387258.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P10177982339902101772

`A276404(A140099(n+1)-(n+1))`
-/

namespace A275926.P10177982339902101772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A140099 (n + 1) - (n + 1 : ℤ)).toNat

end

end A275926.P10177982339902101772

namespace A275926

/-- `A276404(A140099(n+1)-(n+1))` -/
def P10177982339902101772.Spec : Prop :=
  ∀ n, P10177982339902101772.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P11781752026486677521

`A277727(A140099(n+1)-(A003144(n+1)+n))`
-/

namespace A275926.P11781752026486677521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277727 (A140099 (n + 1) - (A003144 (n + 1) + (n : ℤ))).toNat

end

end A275926.P11781752026486677521

namespace A275926

/-- `A277727(A140099(n+1)-(A003144(n+1)+n))` -/
def P11781752026486677521.Spec : Prop :=
  ∀ n, P11781752026486677521.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P9724380827158299211

`A003145(n+1)+A140099(n+1)-A003146(n+1)`
-/

namespace A275926.P9724380827158299211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + (A140099 (n + 1) - A003146 (n + 1))

end

end A275926.P9724380827158299211

namespace A275926

/-- `A003145(n+1)+A140099(n+1)-A003146(n+1)` -/
def P9724380827158299211.Spec : Prop :=
  ∀ n, P9724380827158299211.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P9869524607268105918

`A140099(n+1)+A140100(n+1)-A140103(n+1)`
-/

namespace A275926.P9869524607268105918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140099 (n + 1) + (A140100 (n + 1) - A140103 (n + 1))

end

end A275926.P9869524607268105918

namespace A275926

/-- `A140099(n+1)+A140100(n+1)-A140103(n+1)` -/
def P9869524607268105918.Spec : Prop :=
  ∀ n, P9869524607268105918.a n = A275926 (n + 1)

theorem P9869524607268105918.correct : P9869524607268105918.Spec := by
  intro n
  simp only [A275926, Nat.add_sub_cancel, A275926.P9869524607268105918.a, A275926.P14421314080445003667.a, A140099, A140099.P7008787564706258569.a, A140100, A140100.P9463033727352148210.a, A140101, A140101.P15800623837645593610.f1, A140101.P15800623837645593610.a, A140103, A140103.P10507657659334909874.a, A158919, A158919.P1966360015333059393.a, A276793, A276793.P6692856727762475709.a, A080843, A080843.P14729485223719297457.a, A092782, A092782.P12994304615251165252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A275926

/-! ## A275926.P11926574257595309381

`A140099(n+1)-(A140102(n+1)+A140100(n+1))`
-/

namespace A275926.P11926574257595309381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140099 (n + 1) - (A140102 (n + 1) + A140100 (n + 1))

end

end A275926.P11926574257595309381

namespace A275926

/-- `A140099(n+1)-(A140102(n+1)+A140100(n+1))` -/
def P11926574257595309381.Spec : Prop :=
  ∀ n, P11926574257595309381.a n = A275926 (n + 1)

end A275926

/-! ## A275926.P889172792465253013

`A080843(A003146(n+1)-A140099(n+1))`
-/

namespace A275926.P889172792465253013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A003146 (n + 1) - A140099 (n + 1)).toNat

end

end A275926.P889172792465253013

namespace A275926

/-- `A080843(A003146(n+1)-A140099(n+1))` -/
def P889172792465253013.Spec : Prop :=
  ∀ n, P889172792465253013.a n = A275926 (n + 1)

end A275926

/-!
# A275929: a(n) = 2*(n-1)! + n + 1.

The programs for A275929, the canonical program `A275929.P1178176991040460651` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275929 has offset 1).

The definition of A275929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n!+n+1+1` (program `A275929.P1178176991040460651`, by `A275929.P1178176991040460651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275929.P1178176991040460651

`2*n!+n+1+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275929

/-- `2*n!+n+1+1` -/
def P1178176991040460651.Spec : Prop :=
  ∀ n, (P1178176991040460651.a n : ℤ) = A275929 (n + 1)

theorem P1178176991040460651.correct : P1178176991040460651.Spec := by
  intro n
  simp only [A275929, Nat.add_sub_cancel]

end A275929

/-! ## A275929.P6295000475185254339

`2*(n!+1)+n`
-/

namespace A275929.P6295000475185254339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.factorial n + 1) + n

end

end A275929.P6295000475185254339

namespace A275929

/-- `2*(n!+1)+n` -/
def P6295000475185254339.Spec : Prop :=
  ∀ n, (P6295000475185254339.a n : ℤ) = A275929 (n + 1)

theorem P6295000475185254339.correct : P6295000475185254339.Spec := by
  intro n
  simp only [A275929, Nat.add_sub_cancel, A275929.P6295000475185254339.a, A275929.P1178176991040460651.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275929

/-! ## A275929.P5611738897082343969

`n-2*xor(-1, n!)`
-/

namespace A275929.P5611738897082343969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * Int.xor (-1) (Nat.factorial n : ℤ)

end

end A275929.P5611738897082343969

namespace A275929

/-- `n-2*xor(-1, n!)` -/
def P5611738897082343969.Spec : Prop :=
  ∀ n, P5611738897082343969.a n = A275929 (n + 1)

end A275929

/-! ## A275929.P8349753683508612127

`n+2+n!+n!`
-/

namespace A275929.P8349753683508612127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + (Nat.factorial n + Nat.factorial n)

end

end A275929.P8349753683508612127

namespace A275929

/-- `n+2+n!+n!` -/
def P8349753683508612127.Spec : Prop :=
  ∀ n, (P8349753683508612127.a n : ℤ) = A275929 (n + 1)

theorem P8349753683508612127.correct : P8349753683508612127.Spec := by
  intro n
  simp only [A275929, Nat.add_sub_cancel, A275929.P8349753683508612127.a, A275929.P1178176991040460651.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A275929

/-! ## A275929.P6424686183572508843

`n*(a(n-1)-n)+2` with `a(0)=4`
-/

namespace A275929.P6424686183572508843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) * (a (n - 1) - (n : ℤ)) + 2

end

end A275929.P6424686183572508843

namespace A275929

/-- `n*(a(n-1)-n)+2` -/
def P6424686183572508843.Spec : Prop :=
  ∀ n, P6424686183572508843.a n = A275929 (n + 1)

end A275929

/-! ## A275929.P4931611942863349922

`2-n*(n-a(n-1))` with `a(0)=4`
-/

namespace A275929.P4931611942863349922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 - (n : ℤ) * ((n : ℤ) - a (n - 1))

end

end A275929.P4931611942863349922

namespace A275929

/-- `2-n*(n-a(n-1))` -/
def P4931611942863349922.Spec : Prop :=
  ∀ n, P4931611942863349922.a n = A275929 (n + 1)

end A275929

/-! ## A275929.P17822171604297204816

`∏[abs(1-n)+1]+2+n`
-/

namespace A275929.P17822171604297204816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2 + (n : ℤ)

end

end A275929.P17822171604297204816

namespace A275929

/-- `∏[abs(1-n)+1]+2+n` -/
def P17822171604297204816.Spec : Prop :=
  ∀ n, P17822171604297204816.a n = A275929 (n + 1)

end A275929

/-!
# A275930: a(n) = F(n+5)*F(n+2)^5, where F = Fibonacci (A000045).

The programs for A275930, there is no canonical definition to state claims against.
-/

/-! ## A275930.P10357821860151297219

`A000045(n+5)*A056572(n+2)`
-/

namespace A275930.P10357821860151297219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 5) * A056572 (n + 2)

end

end A275930.P10357821860151297219

/-! ## A275930.P3327657414869568364

`A000045(n+2)²²*Δ[A000045(n+3)²]`
-/

namespace A275930.P3327657414869568364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) ^ 2) ^ 2 * (f1 (n + 1) - f1 n)

end

end A275930.P3327657414869568364

/-! ## A275930.P7419844552077285899

`Δ[A006498(2*(n+2))]*A189145(2*(n+1))`
-/

namespace A275930.P7419844552077285899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A189145 (2 * (n + 1))

end

end A275930.P7419844552077285899

/-!
# A275931: a(n) = F(2*n+3)*F(2*n+1)^3, where F = Fibonacci (A000045).

The programs for A275931, there is no canonical definition to state claims against.
-/

/-! ## A275931.P15377825683258647459

`A064170(n+3)*A081068(n)`
-/

namespace A275931.P15377825683258647459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064170 (n + 3) * A081068 n

end

end A275931.P15377825683258647459

/-! ## A275931.P5346687881456020884

`A122367(n)^3*A048575(n)`
-/

namespace A275931.P5346687881456020884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n ^ 3 * A048575 n

end

end A275931.P5346687881456020884

/-! ## A275931.P1404890734712867079

`∑[A033891(n)]+A003482(n)²`
-/

namespace A275931.P1404890734712867079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A003482 n ^ 2

end

end A275931.P1404890734712867079

/-! ## A275931.P13529147808232824342

`A081018(n+1)+A003482(n)²`
-/

namespace A275931.P13529147808232824342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 (n + 1) + A003482 n ^ 2

end

end A275931.P13529147808232824342

/-! ## A275931.P9281898473217844769

`(A081016(n)+1)²-A081004(n)`
-/

namespace A275931.P9281898473217844769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081016 n + 1) ^ 2 - A081004 n

end

end A275931.P9281898473217844769

/-! ## A275931.P17974783810607455096

`A007598(2*n+1)+A081016(n)²`
-/

namespace A275931.P17974783810607455096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n + 1) + A081016 n ^ 2

end

end A275931.P17974783810607455096

/-! ## A275931.P6018662512894832831

`A099496(n)²*A059929(2*n+1)`
-/

namespace A275931.P6018662512894832831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n ^ 2 * A059929 (2 * n + 1)

end

end A275931.P6018662512894832831

/-! ## A275931.P11371869383020375925

`A059929(2*n+1)*A208176(2*n)`
-/

namespace A275931.P11371869383020375925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (2 * n + 1) * A208176 (2 * n)

end

end A275931.P11371869383020375925

/-! ## A275931.P5529243311091391865

`A001519(n+1)²*A059929(2*n+1)`
-/

namespace A275931.P5529243311091391865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) ^ 2 * A059929 (2 * n + 1)

end

end A275931.P5529243311091391865

/-! ## A275931.P12491679289241070149

`A007598(2*n+1)+A166536(2*n)²`
-/

namespace A275931.P12491679289241070149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n + 1) + A166536 (2 * n) ^ 2

end

end A275931.P12491679289241070149

/-!
# A275932: a(n) = F(2*n+6)*F(2*n+2)^3, where F = Fibonacci (A000045).

The programs for A275932, there is no canonical definition to state claims against.
-/

/-! ## A275932.P10233015932014858068

`Δ[A163198(n)]*A001906(n+3)`
-/

namespace A275932.P10233015932014858068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001906 (n + 3)

end

end A275932.P10233015932014858068

/-! ## A275932.P15563664772805637649

`A001906(n+3)*A215039(n+1)`
-/

namespace A275932.P15563664772805637649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 3) * A215039 (n + 1)

end

end A275932.P15563664772805637649

/-! ## A275932.P9098576663554653041

`∑[A033890(n+1)]*∑[A033890(n)]`
-/

namespace A275932.P9098576663554653041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A275932.P9098576663554653041

/-! ## A275932.P6704076325305970760

`A058038(n+1)²-A049684(n+1)`
-/

namespace A275932.P6704076325305970760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058038 (n + 1) ^ 2 - A049684 (n + 1)

end

end A275932.P6704076325305970760

/-! ## A275932.P13268298000720805091

`Δ[A027941(n+2)]*A215039(n+1)`
-/

namespace A275932.P13268298000720805091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A215039 (n + 1)

end

end A275932.P13268298000720805091

/-! ## A275932.P18049935222192719527

`A001906(n+3)*A056570(2*(n+1))`
-/

namespace A275932.P18049935222192719527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 3) * A056570 (2 * (n + 1))

end

end A275932.P18049935222192719527

/-! ## A275932.P8708072314442932274

`A064831(2*n+1)*A080097(2*(n+1))`
-/

namespace A275932.P8708072314442932274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (2 * n + 1) * A080097 (2 * (n + 1))

end

end A275932.P8708072314442932274

/-! ## A275932.P18186493276242007051

`A064831(2*n+1)*A080144(2*n+1)`
-/

namespace A275932.P18186493276242007051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (2 * n + 1) * A080144 (2 * n + 1)

end

end A275932.P18186493276242007051

/-! ## A275932.P7032992353494223554

`(A080097(2*n)+1)*A080144(2*n+1)`
-/

namespace A275932.P7032992353494223554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080097 (2 * n) + 1) * A080144 (2 * n + 1)

end

end A275932.P7032992353494223554

/-! ## A275932.P3326591632324475069

`A064831(2*n+1)*A180664(2*(n+1))`
-/

namespace A275932.P3326591632324475069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (2 * n + 1) * A180664 (2 * (n + 1))

end

end A275932.P3326591632324475069

/-!
# A275935: Shifts 5 places left under binomial transform.

The programs for A275935, there is no canonical definition to state claims against.
-/

/-! ## A275935.P9319652662964713387

`C(A082853(n+4), A163868(A023927(2*n)))`
-/

namespace A275935.P9319652662964713387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A082853 (n + 4)).toNat (A163868 (A023927 (2 * n)).toNat).toNat

end

end A275935.P9319652662964713387

/-! ## A275935.P8747957143460392013

`C(A000030(A325903(n+1)), 4)`
-/

namespace A275935.P8747957143460392013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000030 (A325903 (n + 1)).toNat).toNat 4

end

end A275935.P8747957143460392013

/-! ## A275935.P4362083612077671610

`A000332(A114734(n+1)%A093185(n+1))`
-/

namespace A275935.P4362083612077671610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (Int.tmod (A114734 (n + 1)) (A093185 (n + 1))).toNat

end

end A275935.P4362083612077671610

/-! ## A275935.P15793656169896790369

`C(A053645(n+3), A055642(A115745(n+1)))`
-/

namespace A275935.P15793656169896790369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053645 (n + 3)).toNat (A055642 (A115745 (n + 1)).toNat).toNat

end

end A275935.P15793656169896790369

/-! ## A275935.P4748606209007544778

`C(A053645(n+3), A055642(A257781(n+1)))`
-/

namespace A275935.P4748606209007544778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053645 (n + 3)).toNat (A055642 (A257781 (n + 1)).toNat).toNat

end

end A275935.P4748606209007544778

/-!
# A275938: Numbers m such that d(m) is prime while sigma(m) is not prime (where d(m) = A000005(m) and sigma(m) = A000203(m)).

The programs for A275938, there is no canonical definition to state claims against.
-/

/-! ## A275938.P12959998595173702859

`∪[A065091(n+1), A286095(n+1)]`
-/

namespace A275938.P12959998595173702859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A275938.P12959998595173702859

/-! ## A275938.P16111431774165855200

`∪[A286095(n+1), A000040(n+2)]`
-/

namespace A275938.P16111431774165855200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A275938.P16111431774165855200

/-! ## A275938.P7591936797254010107

`filter[A163162(n+2), A355937(#)]`
-/

namespace A275938.P7591936797254010107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A275938.P7591936797254010107

/-! ## A275938.P15684234353273596762

`∩[A009087(n+1), A163162(n+1)]`
-/

namespace A275938.P15684234353273596762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275938.P15684234353273596762

/-! ## A275938.P2215760086280449184

`∩[A111801(n+1), A318589(n+1)]`
-/

namespace A275938.P2215760086280449184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275938.P2215760086280449184

/-!
# A275940: a(n) = A000005(A023194(n)).

The programs for A275940, there is no canonical definition to state claims against.
-/

/-! ## A275940.P12337179202525392973

`A000005(A023194(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275940.P12337179202525392973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A023194 (n + 1)).toNat

end

end A275940.P12337179202525392973

/-! ## A275940.P1088260925515593259

`∑{e}[A325436(n+2), #+1]`
-/

namespace A275940.P1088260925515593259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325436 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A275940.P1088260925515593259

/-! ## A275940.P14569067669459330457

`∑{e}[A270413(n+1)-1, #+1]`
-/

namespace A275940.P14569067669459330457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270413 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A275940.P14569067669459330457

/-! ## A275940.P2864760942222583223

`∏{e}[A023194(or(n, char[1])+1), #+1]`
-/

namespace A275940.P2864760942222583223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (Nat.lor n (if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A275940.P2864760942222583223

/-! ## A275940.P16883983579533429252

`A020725(∑{e}[A023194(n+1), #])`
-/

namespace A275940.P16883983579533429252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A275940.P16883983579533429252

/-!
# A275943: Number of prefix-closed polyominoes of area n.

The programs for A275943, there is no canonical definition to state claims against.
-/

/-! ## A275943.P11935773113549390513

`A276798(A212348(n+3))`
-/

namespace A275943.P11935773113549390513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A212348 (n + 3)).toNat

end

end A275943.P11935773113549390513

/-! ## A275943.P13824748470017001347

`A124763(A000704(n))+A052975(n)`
-/

namespace A275943.P13824748470017001347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A000704 n).toNat + A052975 n

end

end A275943.P13824748470017001347

/-! ## A275943.P14812622315549615161

`A332671(A120588(n))+A052975(n)`
-/

namespace A275943.P14812622315549615161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A120588 n).toNat + A052975 n

end

end A275943.P14812622315549615161

/-!
# A275944: Gaussian binomial coefficient [n,3] for q = 10.

The programs for A275944, there is no canonical definition to state claims against.
-/

/-! ## A275944.P8097144239842091653

`A022174(A167614(n+2))`
-/

namespace A275944.P8097144239842091653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022174 (A167614 (n + 2)).toNat

end

end A275944.P8097144239842091653

/-! ## A275944.P6892171820839263161

`A022174(eq[3, A002262(n)])`
-/

namespace A275944.P6892171820839263161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275944.P6892171820839263161

/-! ## A275944.P16204800360617395005

`A022174(∑[n+3]+n+3)`
-/

namespace A275944.P16204800360617395005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022174 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A275944.P16204800360617395005

/-!
# A275945: Numbers n such that the average of different permutations of digits of n is an integer.

The programs for A275945, there is no canonical definition to state claims against.
-/

/-! ## A275945.P1263658333688000743

`record[gcd(n+1, A045876(n+1)%A047726(n+1))]`
-/

namespace A275945.P1263658333688000743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (A045876 (n + 1)) (A047726 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275945.P1263658333688000743

/-! ## A275945.P6678598388196082704

`eq[A000188(A073053(n)), A178334(n)]`
-/

namespace A275945.P6678598388196082704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A073053 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275945.P6678598388196082704

/-! ## A275945.P8082736610306719572

`eq[A072345(A307629(n)), A178334(n)]`
-/

namespace A275945.P8082736610306719572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 (A307629 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275945.P8082736610306719572

/-! ## A275945.P11244595083929300214

`record[A061383(n+1)%A171797(gcd(n, n+1))]`
-/

namespace A275945.P11244595083929300214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061383 (n + 1)) (A171797 (Nat.gcd n (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275945.P11244595083929300214

/-! ## A275945.P12783684685011798495

`A118759(A061383(n+1))`
-/

namespace A275945.P12783684685011798495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A061383 (n + 1)).toNat

end

end A275945.P12783684685011798495

/-! ## A275945.P502588405842544715

`comp[A059995(A030147(n+1))]`
-/

namespace A275945.P502588405842544715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A030147 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A275945.P502588405842544715

/-! ## A275945.P17261669207150741967

`comp[eq[A059717(n), A307629(n)]]`
-/

namespace A275945.P17261669207150741967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A275945.P17261669207150741967

/-!
# A275946: Number of nonzero digits that are the sole occupants of their slope in factorial base representation: a(n) = A056169(A275734(n)). (See comments for more exact definition.)

The programs for A275946, there is no canonical definition to state claims against.
-/

/-! ## A275946.P10125276418138602113

`A275948(A225901(n))`
-/

namespace A275946.P10125276418138602113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (A225901 n).toNat

end

end A275946.P10125276418138602113

/-! ## A275946.P6747962798530484741

`A056169(A275734(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275946.P6747962798530484741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A275734 n).toNat

end

end A275946.P6747962798530484741

/-! ## A275946.P650451501740767506

`A060130(n)-A275962(n)`
-/

namespace A275946.P650451501740767506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275962 n

end

end A275946.P650451501740767506

/-! ## A275946.P10255439364345111717

`A060502(n)-A275947(n)`
-/

namespace A275946.P10255439364345111717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A275947 n

end

end A275946.P10255439364345111717

/-! ## A275946.P15045270752118115069

`A275948(n)+A275964(n)-A275962(n)`
-/

namespace A275946.P15045270752118115069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 n + (A275964 n - A275962 n)

end

end A275946.P15045270752118115069

/-! ## A275946.P13159656922434927653

`A001221(A275734(n))-A275947(n)`
-/

namespace A275946.P13159656922434927653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275734 n).toNat - A275947 n

end

end A275946.P13159656922434927653

/-! ## A275946.P2183911920793210980

`A275948(A275957(A060125(n)))`
-/

namespace A275946.P2183911920793210980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (A275957 (A060125 n).toNat).toNat

end

end A275946.P2183911920793210980

/-! ## A275946.P17671432303424827326

`A275948(A060125(A275958(n)))`
-/

namespace A275946.P17671432303424827326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275948 (A060125 (A275958 n).toNat).toNat

end

end A275946.P17671432303424827326

/-! ## A275946.P12126870978727935407

`A060130(n)-A275964(A225901(n))`
-/

namespace A275946.P12126870978727935407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275964 (A225901 n).toNat

end

end A275946.P12126870978727935407

/-! ## A275946.P5563433612277602199

`A060502(n)-A275949(A225901(n))`
-/

namespace A275946.P5563433612277602199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A275949 (A225901 n).toNat

end

end A275946.P5563433612277602199

/-! ## A275946.P12480731425917975728

`A275806(A225901(n))-A275947(n)`
-/

namespace A275946.P12480731425917975728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A225901 n).toNat - A275947 n

end

end A275946.P12480731425917975728

/-! ## A275946.P13920639339299706329

`A056169(A278234(n))`
-/

namespace A275946.P13920639339299706329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A278234 n).toNat

end

end A275946.P13920639339299706329

/-! ## A275946.P11035177239035441591

`A060130(n)-A275812(A278234(n))`
-/

namespace A275946.P11035177239035441591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275812 (A278234 n).toNat

end

end A275946.P11035177239035441591

/-! ## A275946.P2872749889065534249

`A060502(n)-A056170(A275734(n))`
-/

namespace A275946.P2872749889065534249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A056170 (A275734 n).toNat

end

end A275946.P2872749889065534249

/-! ## A275946.P2058292499181353374

`A060130(n)-A275812(A275734(n))`
-/

namespace A275946.P2058292499181353374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275812 (A275734 n).toNat

end

end A275946.P2058292499181353374

/-!
# A275947: Number of distinct slopes with multiple nonzero digits in factorial base representation of n: a(n) = A056170(A275734(n)). (See comments for more exact definition).

The programs for A275947, there is no canonical definition to state claims against.
-/

/-! ## A275947.P2052237266790496049

`A275949(A225901(n))`
-/

namespace A275947.P2052237266790496049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 (A225901 n).toNat

end

end A275947.P2052237266790496049

/-! ## A275947.P4061834796242950663

`A056170(A275734(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275947.P4061834796242950663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A275734 n).toNat

end

end A275947.P4061834796242950663

/-! ## A275947.P16268751440186635880

`A060502(n)-A275946(n)`
-/

namespace A275947.P16268751440186635880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A275946 n

end

end A275947.P16268751440186635880

/-! ## A275947.P16912164788983456430

`A001222(∏{e}[A275734(n), A006530(#)])`
-/

namespace A275947.P16912164788983456430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A275947.P16912164788983456430

/-! ## A275947.P1298310217454929330

`A001222(∏{e}[A275734(n), A020639(#)])`
-/

namespace A275947.P1298310217454929330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A275947.P1298310217454929330

/-! ## A275947.P2711051622500724551

`A060502(n)+A275962(n)-A060130(n)`
-/

namespace A275947.P2711051622500724551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n + (A275962 n - A060130 n)

end

end A275947.P2711051622500724551

/-! ## A275947.P13207393314542734454

`A001221(A275734(n))-A275946(n)`
-/

namespace A275947.P13207393314542734454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275734 n).toNat - A275946 n

end

end A275947.P13207393314542734454

/-! ## A275947.P3283161294513458989

`A275949(A275957(A060125(n)))`
-/

namespace A275947.P3283161294513458989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 (A275957 (A060125 n).toNat).toNat

end

end A275947.P3283161294513458989

/-! ## A275947.P13917621029254068154

`A275949(A060125(A275958(n)))`
-/

namespace A275947.P13917621029254068154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275949 (A060125 (A275958 n).toNat).toNat

end

end A275947.P13917621029254068154

/-! ## A275947.P13988978890654220342

`A060502(n)-A275948(A225901(n))`
-/

namespace A275947.P13988978890654220342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A275948 (A225901 n).toNat

end

end A275947.P13988978890654220342

/-! ## A275947.P13945972728286120112

`A275806(A225901(n))-A275946(n)`
-/

namespace A275947.P13945972728286120112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A225901 n).toNat - A275946 n

end

end A275947.P13945972728286120112

/-! ## A275947.P15955374600123130730

`A060502(n)-A056169(A278234(n))`
-/

namespace A275947.P15955374600123130730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A056169 (A278234 n).toNat

end

end A275947.P15955374600123130730

/-! ## A275947.P7916291043785332545

`A060502(n)-A056169(A275734(n))`
-/

namespace A275947.P7916291043785332545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A056169 (A275734 n).toNat

end

end A275947.P7916291043785332545

/-! ## A275947.P6113977228166237914

`A295659(A275734(n)²)`
-/

namespace A275947.P6113977228166237914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A275734 n ^ 2).toNat

end

end A275947.P6113977228166237914

/-!
# A275948: Number of nonzero digits that occur only once in factorial base representation of n: a(n) = A056169(A275735(n)).

The programs for A275948, there is no canonical definition to state claims against.
-/

/-! ## A275948.P1992903595491671331

`A275946(A225901(n))`
-/

namespace A275948.P1992903595491671331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 (A225901 n).toNat

end

end A275948.P1992903595491671331

/-! ## A275948.P4772514057834436111

`A056169(A275735(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275948.P4772514057834436111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A275735 n).toNat

end

end A275948.P4772514057834436111

/-! ## A275948.P13413028693018019824

`A060130(n)-A275964(n)`
-/

namespace A275948.P13413028693018019824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275964 n

end

end A275948.P13413028693018019824

/-! ## A275948.P1238484619613686379

`A275806(n)-A275949(n)`
-/

namespace A275948.P1238484619613686379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n - A275949 n

end

end A275948.P1238484619613686379

/-! ## A275948.P12954276266381659811

`A257511(A348138(n))`
-/

namespace A275948.P12954276266381659811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A348138 n).toNat

end

end A275948.P12954276266381659811

/-! ## A275948.P14638619988222792539

`A060130(n)-A275962(A225901(n))`
-/

namespace A275948.P14638619988222792539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275962 (A225901 n).toNat

end

end A275948.P14638619988222792539

/-! ## A275948.P4434998095071553071

`A060502(A225901(n))-A275949(n)`
-/

namespace A275948.P4434998095071553071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A225901 n).toNat - A275949 n

end

end A275948.P4434998095071553071

/-! ## A275948.P10766887411757948998

`A275806(n)-A275947(A225901(n))`
-/

namespace A275948.P10766887411757948998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n - A275947 (A225901 n).toNat

end

end A275948.P10766887411757948998

/-! ## A275948.P18084624900751077279

`A056169(A278235(n))`
-/

namespace A275948.P18084624900751077279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A278235 n).toNat

end

end A275948.P18084624900751077279

/-! ## A275948.P6898176215013241016

`A275806(n)-A056170(A278235(n))`
-/

namespace A275948.P6898176215013241016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n - A056170 (A278235 n).toNat

end

end A275948.P6898176215013241016

/-! ## A275948.P6320951214115667622

`A275806(n)-A056170(A275735(n))`
-/

namespace A275948.P6320951214115667622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n - A056170 (A275735 n).toNat

end

end A275948.P6320951214115667622

/-! ## A275948.P10456839753619684222

`A056170(A278235(n)²)-A056170(A278235(n))`
-/

namespace A275948.P10456839753619684222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A278235 n ^ 2).toNat - A056170 (A278235 n).toNat

end

end A275948.P10456839753619684222

/-!
# A275949: Number of distinct nonzero digits that occur multiple times in factorial base representation of n: a(n) = A056170(A275735(n)).

The programs for A275949, there is no canonical definition to state claims against.
-/

/-! ## A275949.P13379061478463628748

`A275947(A225901(n))`
-/

namespace A275949.P13379061478463628748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A225901 n).toNat

end

end A275949.P13379061478463628748

/-! ## A275949.P14527003969059393962

`A056170(A275735(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275949.P14527003969059393962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A275735 n).toNat

end

end A275949.P14527003969059393962

/-! ## A275949.P7843826698884148017

`A275806(n)-A275948(n)`
-/

namespace A275949.P7843826698884148017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n - A275948 n

end

end A275949.P7843826698884148017

/-! ## A275949.P4538231243300362851

`A275947(A275957(A060125(n)))`
-/

namespace A275949.P4538231243300362851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A275957 (A060125 n).toNat).toNat

end

end A275949.P4538231243300362851

/-! ## A275949.P8804877851321041330

`A275947(A060125(A275958(n)))`
-/

namespace A275949.P8804877851321041330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A060125 (A275958 n).toNat).toNat

end

end A275949.P8804877851321041330

/-! ## A275949.P14983650365189081028

`A060502(A225901(n))-A275948(n)`
-/

namespace A275949.P14983650365189081028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A225901 n).toNat - A275948 n

end

end A275949.P14983650365189081028

/-! ## A275949.P16888166723200432733

`A275806(n)-A275946(A225901(n))`
-/

namespace A275949.P16888166723200432733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n - A275946 (A225901 n).toNat

end

end A275949.P16888166723200432733

/-! ## A275949.P9292019319913626953

`A056170(A278235(n))`
-/

namespace A275949.P9292019319913626953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A278235 n).toNat

end

end A275949.P9292019319913626953

/-! ## A275949.P2393303373514629716

`A275806(n)-A056169(A275735(n))`
-/

namespace A275949.P2393303373514629716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n - A056169 (A275735 n).toNat

end

end A275949.P2393303373514629716

/-! ## A275949.P18333143027343706638

`A351943(A351944(A276076(n)))`
-/

namespace A275949.P18333143027343706638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351943 (A351944 (A276076 n).toNat).toNat

end

end A275949.P18333143027343706638

/-!
# A275950: Square array A(1,k) = A265905(k), A(n>1,k) = A(n-1, k+1) - A(n-1, k); successive differences of A265905 read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A275950, there is no canonical definition to state claims against.
-/

/-! ## A275950.P11996697984671950515

`A275951(A038722(n+1))`
-/

namespace A275950.P11996697984671950515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (A038722 (n + 1)).toNat

end

end A275950.P11996697984671950515

/-! ## A275950.P16667930221766177194

`A275951(A061579(n)+1)`
-/

namespace A275950.P16667930221766177194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (A061579 n + 1).toNat

end

end A275950.P16667930221766177194

/-! ## A275950.P6638747875295116372

`A275951(A114327(n)+1+n)`
-/

namespace A275950.P6638747875295116372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (A114327 n + 1 + (n : ℤ)).toNat

end

end A275950.P6638747875295116372

/-! ## A275950.P17540964656710414972

`A275951(A093995(n+1)-n)`
-/

namespace A275950.P17540964656710414972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A275950.P17540964656710414972

/-! ## A275950.P16781733429665542674

`A275951(A274094(n+1)²-n)`
-/

namespace A275950.P16781733429665542674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (A274094 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A275950.P16781733429665542674

/-! ## A275950.P2920926301276865356

`A275951(A057944(n)+A004736(n+1))`
-/

namespace A275950.P2920926301276865356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (A057944 n + A004736 (n + 1)).toNat

end

end A275950.P2920926301276865356

/-! ## A275950.P232509261133712257

`A275951(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A275950.P232509261133712257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A275950.P232509261133712257

/-!
# A275951: Transpose of array A275950.

The programs for A275951, there is no canonical definition to state claims against.
-/

/-! ## A275951.P2145790186324801983

`A275950(A038722(n+1))`
-/

namespace A275951.P2145790186324801983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (A038722 (n + 1)).toNat

end

end A275951.P2145790186324801983

/-! ## A275951.P14973112495724018829

`A275950(A061579(n)+1)`
-/

namespace A275951.P14973112495724018829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (A061579 n + 1).toNat

end

end A275951.P14973112495724018829

/-! ## A275951.P2096029349320759927

`A275950(A114327(n)+1+n)`
-/

namespace A275951.P2096029349320759927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (A114327 n + 1 + (n : ℤ)).toNat

end

end A275951.P2096029349320759927

/-! ## A275951.P625237179267873954

`A275950(A002024(n+1)²-n)`
-/

namespace A275951.P625237179267873954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A275951.P625237179267873954

/-! ## A275951.P2848835154992267375

`A275950(A002024(n+1)^2-n)`
-/

namespace A275951.P2848835154992267375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A275951.P2848835154992267375

/-! ## A275951.P1032390099833852370

`A275950(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A275951.P1032390099833852370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A275951.P1032390099833852370

/-!
# A275952: a(n) = A225901(A256450(A225901(n))).

The programs for A275952, there is no canonical definition to state claims against.
-/

/-! ## A275952.P12815213286082787669

`A225901(A256450(A225901(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275952.P12815213286082787669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A256450 (A225901 n).toNat).toNat

end

end A275952.P12815213286082787669

/-! ## A275952.P13717204376550942802

`A275837(A273670(A275838(n)))`
-/

namespace A275952.P13717204376550942802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273670 (A275838 n).toNat).toNat

end

end A275952.P13717204376550942802

/-! ## A275952.P7738623952759702056

`A275837(A273670(A273668(A275837(A273668(n)))))`
-/

namespace A275952.P7738623952759702056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273670 (A273668 (A275837 (A273668 n).toNat).toNat).toNat).toNat

end

end A275952.P7738623952759702056

/-! ## A275952.P13082250881901680039

`A273670(A276012(A225901(2*n-n)))`
-/

namespace A275952.P13082250881901680039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (A276012 (A225901 (2 * n - n)).toNat).toNat

end

end A275952.P13082250881901680039

/-! ## A275952.P17669145694772917737

`A275836(A273667(A256450(A275836(A273667(n)))))`
-/

namespace A275952.P17669145694772917737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A273667 (A256450 (A275836 (A273667 n).toNat).toNat).toNat).toNat

end

end A275952.P17669145694772917737

/-! ## A275952.P9720533286977871104

`A273670(A276012(A276012(A273662(A275954(n)))))`
-/

namespace A275952.P9720533286977871104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (A276012 (A276012 (A273662 (A275954 n).toNat).toNat).toNat).toNat

end

end A275952.P9720533286977871104

/-! ## A275952.P3581890502599856789

`A273670(A276012(A275837(A275842(A276012(n)))))`
-/

namespace A275952.P3581890502599856789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (A276012 (A275837 (A275842 (A276012 n).toNat).toNat).toNat).toNat

end

end A275952.P3581890502599856789

/-! ## A275952.P9663575216360134965

`A273670(A275841(A275838(2*n-n)))`
-/

namespace A275952.P9663575216360134965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 (A275841 (A275838 (2 * n - n)).toNat).toNat

end

end A275952.P9663575216360134965

/-!
# A275953: First differences of A265906; second differences of A265905.

The programs for A275953, the canonical program `A275953.P16174222313952605767` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275953 has offset 1).

The definition of A275953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265906, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275953.P16174222313952605767

`A265906(n+2)-A265906(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A275953

/-- `A265906(n+2)-A265906(n+1)` -/
def P16174222313952605767.Spec : Prop :=
  ∀ n, P16174222313952605767.a n = A275953 (n + 1)

theorem P16174222313952605767.correct : P16174222313952605767.Spec := by
  intro n
  simp only [A275953, Nat.add_sub_cancel]

end A275953

/-! ## A275953.P11425434295295247407

`Δ[A265906(n+1)]`
-/

namespace A275953.P11425434295295247407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275953.P11425434295295247407

namespace A275953

/-- `Δ[A265906(n+1)]` -/
def P11425434295295247407.Spec : Prop :=
  ∀ n, P11425434295295247407.a n = A275953 (n + 1)

theorem P11425434295295247407.correct : P11425434295295247407.Spec := by
  intro n
  simp only [A275953, Nat.add_sub_cancel, A275953.P11425434295295247407.f1, A275953.P11425434295295247407.a, A275953.P16174222313952605767.a, SequenceMachineLib.memo_apply]

end A275953

/-! ## A275953.P5280534189222273333

`Δ[Δ[A265905(n+1)]]`
-/

namespace A275953.P5280534189222273333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275953.P5280534189222273333

namespace A275953

/-- `Δ[Δ[A265905(n+1)]]` -/
def P5280534189222273333.Spec : Prop :=
  ∀ n, P5280534189222273333.a n = A275953 (n + 1)

end A275953

/-! ## A275953.P8553585193867861807

`Δ[A275951(∑[n+2])]`
-/

namespace A275953.P8553585193867861807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275953.P8553585193867861807

namespace A275953

/-- `Δ[A275951(∑[n+2])]` -/
def P8553585193867861807.Spec : Prop :=
  ∀ n, P8553585193867861807.a n = A275953 (n + 1)

end A275953

/-! ## A275953.P11606932915908802921

`A275951(∑[n+3]+1)`
-/

namespace A275953.P11606932915908802921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275953.P11606932915908802921

namespace A275953

/-- `A275951(∑[n+3]+1)` -/
def P11606932915908802921.Spec : Prop :=
  ∀ n, P11606932915908802921.a n = A275953 (n + 1)

end A275953

/-!
# A275954: a(n) = A225901(A273670(A225901(n))).

The programs for A275954, there is no canonical definition to state claims against.
-/

/-! ## A275954.P15902114362716528330

`A225901(A273670(A225901(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275954.P15902114362716528330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A273670 (A225901 n).toNat).toNat

end

end A275954.P15902114362716528330

/-! ## A275954.P12905329309521948198

`A275836(A256450(A275835(n)))`
-/

namespace A275954.P12905329309521948198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A256450 (A275835 n).toNat).toNat

end

end A275954.P12905329309521948198

/-! ## A275954.P11635885207907385866

`A225901(A275848(A225901(A275952(n))))`
-/

namespace A275954.P11635885207907385866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275848 (A225901 (A275952 n).toNat).toNat).toNat

end

end A275954.P11635885207907385866

/-! ## A275954.P13323883476543180437

`A256450(A276011(A225901(A273662(A256450(n)))))`
-/

namespace A275954.P13323883476543180437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (A276011 (A225901 (A273662 (A256450 n).toNat).toNat).toNat).toNat

end

end A275954.P13323883476543180437

/-! ## A275954.P17670536297191669684

`A256450(A276011(A225901(A276012(A276011(n)))))`
-/

namespace A275954.P17670536297191669684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (A276011 (A225901 (A276012 (A276011 n).toNat).toNat).toNat).toNat

end

end A275954.P17670536297191669684

/-! ## A275954.P13747401975506330616

`A275836(A256450(A273667(A275836(A273667(n)))))`
-/

namespace A275954.P13747401975506330616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275836 (A256450 (A273667 (A275836 (A273667 n).toNat).toNat).toNat).toNat

end

end A275954.P13747401975506330616

/-! ## A275954.P2038957460048368995

`A275837(A273668(A273670(A275837(A273668(n)))))`
-/

namespace A275954.P2038957460048368995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 (A273670 (A275837 (A273668 n).toNat).toNat).toNat).toNat

end

end A275954.P2038957460048368995

/-! ## A275954.P8915556405104703129

`A256450(A276011(A225901(A275842(A275841(n)))))`
-/

namespace A275954.P8915556405104703129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 (A276011 (A225901 (A275842 (A275841 n).toNat).toNat).toNat).toNat

end

end A275954.P8915556405104703129

/-!
# A275955: Leftmost column of array A275950.

The programs for A275955, there is no canonical definition to state claims against.
-/

/-! ## A275955.P9695500159053406318

`A275950(∑[n+1])`
-/

namespace A275955.P9695500159053406318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275955.P9695500159053406318

/-! ## A275955.P5682174876470116635

`A275951(∑[n]+1)`
-/

namespace A275955.P5682174876470116635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275951 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275955.P5682174876470116635

/-! ## A275955.P1189668736427781351

`record[A103452(n)*A275950(n+1)]`
-/

namespace A275955.P1189668736427781351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A275950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275955.P1189668736427781351

/-! ## A275955.P17864229213694646366

`record[A275951(n+1)/A143461(n)]`
-/

namespace A275955.P17864229213694646366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275951 (n + 1) : ℚ) / (A143461 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275955.P17864229213694646366

/-! ## A275955.P8064994379323105660

`record[gcd(A002262(n), A275951(n+1))]`
-/

namespace A275955.P8064994379323105660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A275951 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275955.P8064994379323105660

/-!
# A275956: Numbers n for which A060502(n) = A275806(n); numbers whose factorial base representation has an equal number of distinct nonzero digits and occupied slopes.

The programs for A275956, there is no canonical definition to state claims against.
-/

/-! ## A275956.P15565419977031947860

`eq[A060502(n), A275806(n)]`
-/

namespace A275956.P15565419977031947860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275956.P15565419977031947860

/-! ## A275956.P9977236918483787682

`eq[A275849(n), A275850(n)]`
-/

namespace A275956.P9977236918483787682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275956.P9977236918483787682

/-! ## A275956.P5179221976221741709

`eq[A275850(n)+1, A060501(n)]`
-/

namespace A275956.P5179221976221741709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275956.P5179221976221741709

/-! ## A275956.P12339716124130201587

`eq[A060502(n), A060502(A225901(n))]`
-/

namespace A275956.P12339716124130201587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A225901 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275956.P12339716124130201587

/-! ## A275956.P15491837716314147752

`eq[A275806(A225901(n)), A275806(n)]`
-/

namespace A275956.P15491837716314147752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A225901 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275956.P15491837716314147752

/-! ## A275956.P6343145345739705303

`eq[A275849(A225901(n)), A275849(n)]`
-/

namespace A275956.P6343145345739705303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A225901 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275956.P6343145345739705303

/-!
# A275957: Permutation of nonnegative integers: a(n) = A225901(A060125(n)).

The programs for A275957, there is no canonical definition to state claims against.
-/

/-! ## A275957.P7429625383627644555

`A225901(A060125(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275957.P7429625383627644555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A060125 n).toNat

end

end A275957.P7429625383627644555

/-! ## A275957.P15299475857481323254

`A225901(A060127(A060119(n)))`
-/

namespace A275957.P15299475857481323254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A060127 (A060119 n).toNat).toNat

end

end A275957.P15299475857481323254

/-! ## A275957.P9973924161575796687

`A225901(A060126(A060120(n)))`
-/

namespace A275957.P9973924161575796687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A060126 (A060120 n).toNat).toNat

end

end A275957.P9973924161575796687

/-! ## A275957.P16046365339727685873

`A225901(A275958(A225901(n)))`
-/

namespace A275957.P16046365339727685873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275958 (A225901 n).toNat).toNat

end

end A275957.P16046365339727685873

/-! ## A275957.P11138725470410670966

`A276008(A153880(n))-A060125(n)`
-/

namespace A275957.P11138725470410670966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A153880 n).toNat - A060125 n

end

end A275957.P11138725470410670966

/-! ## A275957.P2941545879979597644

`A276008(A255411(n))-A060125(n)`
-/

namespace A275957.P2941545879979597644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A255411 n).toNat - A060125 n

end

end A275957.P2941545879979597644

/-! ## A275957.P16961299392736693886

`A060125(A275958(n))+n-A060125(n)`
-/

namespace A275957.P16961299392736693886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A275958 n).toNat + ((n : ℤ) - A060125 n)

end

end A275957.P16961299392736693886

/-! ## A275957.P8352875900957815614

`A255411(n)-(A153880(n)+A060125(n))`
-/

namespace A275957.P8352875900957815614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n - (A153880 n + A060125 n)

end

end A275957.P8352875900957815614

/-! ## A275957.P8130999335209673430

`A060125(A275958(A275958(A060125(A275958(n)))))`
-/

namespace A275957.P8130999335209673430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A275958 (A275958 (A060125 (A275958 n).toNat).toNat).toNat).toNat

end

end A275957.P8130999335209673430

/-! ## A275957.P6304148901962898296

`A275837(A273668(n))+n-A060125(n)`
-/

namespace A275957.P6304148901962898296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275837 (A273668 n).toNat + ((n : ℤ) - A060125 n)

end

end A275957.P6304148901962898296

/-!
# A275958: Permutation of nonnegative integers: a(n) = A060125(A225901(n)).

The programs for A275958, there is no canonical definition to state claims against.
-/

/-! ## A275958.P12921813214970244438

`A060125(A225901(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275958.P12921813214970244438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A225901 n).toNat

end

end A275958.P12921813214970244438

/-! ## A275958.P5207234755049091157

`A060125(A275957(A060125(n)))`
-/

namespace A275958.P5207234755049091157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A275957 (A060125 n).toNat).toNat

end

end A275958.P5207234755049091157

/-! ## A275958.P15237528575697829707

`A060125(A255411(n)-(A153880(n)+n))`
-/

namespace A275958.P15237528575697829707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A275958.P15237528575697829707

/-! ## A275958.P18356874129626616238

`A060125(A255411(n)-n-A153880(n))`
-/

namespace A275958.P18356874129626616238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A275958.P18356874129626616238

/-! ## A275958.P11750727987743337031

`A276008(A153880(n))-A275957(A225901(n))`
-/

namespace A275958.P11750727987743337031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A153880 n).toNat - A275957 (A225901 n).toNat

end

end A275958.P11750727987743337031

/-! ## A275958.P4253095355758037895

`A276008(A255411(n))-A275957(A225901(n))`
-/

namespace A275958.P4253095355758037895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A255411 n).toNat - A275957 (A225901 n).toNat

end

end A275958.P4253095355758037895

/-! ## A275958.P10136618517132725380

`A225901(A275957(A275957(A225901(A275957(n)))))`
-/

namespace A275958.P10136618517132725380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275957 (A275957 (A225901 (A275957 n).toNat).toNat).toNat).toNat

end

end A275958.P10136618517132725380

/-!
# A275959: Sum of distinct terms of A002674: a(0) = 0, a(2n) = A255411(A153880(a(n))), a(2n+1) = 1+A255411(A153880(a(n))).

The programs for A275959, there is no canonical definition to state claims against.
-/

/-! ## A275959.P9227047719947349632

`A276089(A276091(n))`
-/

namespace A275959.P9227047719947349632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (A276091 n).toNat

end

end A275959.P9227047719947349632

/-! ## A275959.P15352577845950317272

`A059590(2*(2*∑[and(n, -n)²]+n)/3)/2`
-/

namespace A275959.P15352577845950317272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059590 (SequenceMachineLib.roundAway (2 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3))).toNat : ℚ) / 2

end

end A275959.P15352577845950317272

/-! ## A275959.P3342592018633207137

`A059590(A062880(n))/2`
-/

namespace A275959.P3342592018633207137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059590 (A062880 n).toNat : ℚ) / 2

end

end A275959.P3342592018633207137

/-! ## A275959.P4666520514866195002

`A276089(record[A225901(n)])`
-/

namespace A275959.P4666520514866195002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275959.P4666520514866195002

/-! ## A275959.P5382204863349173243

`A276089(record[A275957(n)])`
-/

namespace A275959.P5382204863349173243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275959.P5382204863349173243

/-! ## A275959.P2013647548838751397

`A276089(eq[0, A276339(n)])`
-/

namespace A275959.P2013647548838751397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275959.P2013647548838751397

/-! ## A275959.P12788614123567056176

`A276089(eq[n, n*A276010(n)])`
-/

namespace A275959.P12788614123567056176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275959.P12788614123567056176

/-! ## A275959.P5572335214837082540

`A276089(A225901(A059590(n)))`
-/

namespace A275959.P5572335214837082540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (A225901 (A059590 n).toNat).toNat

end

end A275959.P5572335214837082540

/-! ## A275959.P8835455474248050270

`A276089(eq[A060130(n), A275728(n)])`
-/

namespace A275959.P8835455474248050270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275959.P8835455474248050270

/-! ## A275959.P10851011329386079013

`A276089(eq[A060128(n), A276010(n)])`
-/

namespace A275959.P10851011329386079013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275959.P10851011329386079013

/-!
# A275960: Square array A(1,k) = A265907(k), A(n>1,k) = A(n-1, k+1) - A(n-1, k); successive differences of A265907 read by descending antidiagonals as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A275960, there is no canonical definition to state claims against.
-/

/-! ## A275960.P13702011802454428336

`A275961(A038722(n+1))`
-/

namespace A275960.P13702011802454428336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (A038722 (n + 1)).toNat

end

end A275960.P13702011802454428336

/-! ## A275960.P10502383333069523879

`A275961(A061579(n)+1)`
-/

namespace A275960.P10502383333069523879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (A061579 n + 1).toNat

end

end A275960.P10502383333069523879

/-! ## A275960.P17517149185758321520

`A275961(A093995(n+1)-n)`
-/

namespace A275960.P17517149185758321520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A275960.P17517149185758321520

/-! ## A275960.P16800123761371279809

`A275961(A002024(n+1)²-n)`
-/

namespace A275960.P16800123761371279809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A275960.P16800123761371279809

/-! ## A275960.P412703005577916247

`A275961(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A275960.P412703005577916247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A275960.P412703005577916247

/-!
# A275961: Transpose of array A275960.

The programs for A275961, there is no canonical definition to state claims against.
-/

/-! ## A275961.P6667003300969651895

`A275960(A038722(n+1))`
-/

namespace A275961.P6667003300969651895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275960 (A038722 (n + 1)).toNat

end

end A275961.P6667003300969651895

/-! ## A275961.P4200890602305909412

`A275960(A061579(n)+1)`
-/

namespace A275961.P4200890602305909412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275960 (A061579 n + 1).toNat

end

end A275961.P4200890602305909412

/-! ## A275961.P3602441767453120462

`A275960(A093995(n+1)-n)`
-/

namespace A275961.P3602441767453120462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275960 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A275961.P3602441767453120462

/-! ## A275961.P3875900301553932376

`A275960(A002024(n+1)²-n)`
-/

namespace A275961.P3875900301553932376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275960 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A275961.P3875900301553932376

/-! ## A275961.P8049688800581253471

`A275960(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A275961.P8049688800581253471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275960 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A275961.P8049688800581253471

/-!
# A275962: Total number of nonzero digits that occur on the multiply occupied slopes of the factorial base representation of n: a(n) = A275812(A275734(n)). (See comments for more exact definition).

The programs for A275962, there is no canonical definition to state claims against.
-/

/-! ## A275962.P3796369404639045991

`A060130(n)-A275946(n)`
-/

namespace A275962.P3796369404639045991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275946 n

end

end A275962.P3796369404639045991

/-! ## A275962.P18030145755670047390

`A275964(A225901(n))`
-/

namespace A275962.P18030145755670047390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A225901 n).toNat

end

end A275962.P18030145755670047390

/-! ## A275962.P13921118705233490041

`A275812(A275734(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275962.P13921118705233490041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A275734 n).toNat

end

end A275962.P13921118705233490041

/-! ## A275962.P15529574574739242342

`A001222(A278234(n))-A275946(n)`
-/

namespace A275962.P15529574574739242342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278234 n).toNat - A275946 n

end

end A275962.P15529574574739242342

/-! ## A275962.P13231395341629993588

`A001222(A275734(n))-A275946(n)`
-/

namespace A275962.P13231395341629993588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275734 n).toNat - A275946 n

end

end A275962.P13231395341629993588

/-! ## A275962.P12572766314979391295

`A060130(n)-A275948(A225901(n))`
-/

namespace A275962.P12572766314979391295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275948 (A225901 n).toNat

end

end A275962.P12572766314979391295

/-! ## A275962.P15037309378446610426

`A257511(A225901(n)+n)-A275946(n)`
-/

namespace A275962.P15037309378446610426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A225901 n + (n : ℤ)).toNat - A275946 n

end

end A275962.P15037309378446610426

/-! ## A275962.P7549563107974626742

`A275946(A225901(n)+n)-A275946(n)`
-/

namespace A275962.P7549563107974626742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275946 (A225901 n + (n : ℤ)).toNat - A275946 n

end

end A275962.P7549563107974626742

/-! ## A275962.P7985044079636808115

`A275812(A278234(n))`
-/

namespace A275962.P7985044079636808115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A278234 n).toNat

end

end A275962.P7985044079636808115

/-! ## A275962.P13686949582708745475

`A060130(n)-A056169(A278234(n))`
-/

namespace A275962.P13686949582708745475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A056169 (A278234 n).toNat

end

end A275962.P13686949582708745475

/-! ## A275962.P8219202570317808598

`A060130(n)-A056169(A275734(n))`
-/

namespace A275962.P8219202570317808598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A056169 (A275734 n).toNat

end

end A275962.P8219202570317808598

/-!
# A275963: First differences of A265908; second differences of A265907.

The programs for A275963, there is no canonical definition to state claims against.
-/

/-! ## A275963.P5080108066201275868

`A265908(n+2)-A265908(n+1)`
-/

namespace A275963.P5080108066201275868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265908 (n + 2) - A265908 (n + 1)

end

end A275963.P5080108066201275868

/-! ## A275963.P13660379244057439196

`Δ[A265908(n+1)]`
-/

namespace A275963.P13660379244057439196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275963.P13660379244057439196

/-! ## A275963.P177813850609057157

`Δ[Δ[A265907(n+1)]]`
-/

namespace A275963.P177813850609057157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275963.P177813850609057157

/-! ## A275963.P9669603018579355148

`Δ[A275961(∑[n+2])]`
-/

namespace A275963.P9669603018579355148
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275963.P9669603018579355148

/-! ## A275963.P568843780220235488

`A275961(∑[n+3]+1)`
-/

namespace A275963.P568843780220235488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275963.P568843780220235488

/-!
# A275964: Total number of nonzero digits with multiple occurrences in factorial base representation of n (counted with multiplicity): a(n) = A275812(A275735(n)).

The programs for A275964, there is no canonical definition to state claims against.
-/

/-! ## A275964.P1969388675666734517

`A060130(n)-A275948(n)`
-/

namespace A275964.P1969388675666734517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275948 n

end

end A275964.P1969388675666734517

/-! ## A275964.P13983519309942655623

`A275962(A225901(n))`
-/

namespace A275964.P13983519309942655623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A225901 n).toNat

end

end A275964.P13983519309942655623

/-! ## A275964.P6194409533017473604

`A275812(A275735(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275964.P6194409533017473604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A275735 n).toNat

end

end A275964.P6194409533017473604

/-! ## A275964.P260182756241312776

`A060130(n)+A275949(n)-A275806(n)`
-/

namespace A275964.P260182756241312776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n + (A275949 n - A275806 n)

end

end A275964.P260182756241312776

/-! ## A275964.P15937498688769917137

`A060130(n)-A275946(A225901(n))`
-/

namespace A275964.P15937498688769917137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A275946 (A225901 n).toNat

end

end A275964.P15937498688769917137

/-! ## A275964.P1420302739320208908

`A060502(A225901(n)+n)-A275948(n)`
-/

namespace A275964.P1420302739320208908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A225901 n + (n : ℤ)).toNat - A275948 n

end

end A275964.P1420302739320208908

/-! ## A275964.P10154328205803529702

`A275812(A278235(n))`
-/

namespace A275964.P10154328205803529702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (A278235 n).toNat

end

end A275964.P10154328205803529702

/-! ## A275964.P6098633538927010099

`A060130(n)-A056169(A278235(n))`
-/

namespace A275964.P6098633538927010099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A056169 (A278235 n).toNat

end

end A275964.P6098633538927010099

/-!
# A275965: Leftmost column of array A275960.

The programs for A275965, there is no canonical definition to state claims against.
-/

/-! ## A275965.P5980237207875681385

`A275961(∑[n]+1)`
-/

namespace A275965.P5980237207875681385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275965.P5980237207875681385

/-! ## A275965.P2728819427061088850

`record[A275961(n+1)/A059268(n)]`
-/

namespace A275965.P2728819427061088850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275961 (n + 1) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275965.P2728819427061088850

/-! ## A275965.P4476109101273660753

`record[A275961(n+1)/A141539(n)]`
-/

namespace A275965.P4476109101273660753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275961 (n + 1) : ℚ) / (A141539 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275965.P4476109101273660753

/-! ## A275965.P14657212954057831068

`record[gcd(A002262(n), A275961(n+1))]`
-/

namespace A275965.P14657212954057831068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A275961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275965.P14657212954057831068

/-! ## A275965.P12117267737148052961

`record[A275961(n+1)/A002260(n+1)]`
-/

namespace A275965.P12117267737148052961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275961 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275965.P12117267737148052961

/-!
# A275966: a(n) is the real part of -I*Sum_{d|n}(mobius(d)*I^(n/d)), I=sqrt(-1), mobius(n) is A008683.

The programs for A275966, the canonical program `A275966.P4192951619174800952` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275966 has offset 1).

The definition of A275966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275966.P15724325871022687926

`A008836(n+1)*A284059(n+1)`
-/

namespace A275966.P15724325871022687926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A284059 (n + 1)

end

end A275966.P15724325871022687926

namespace A275966

/-- `A008836(n+1)*A284059(n+1)` -/
def P15724325871022687926.Spec : Prop :=
  ∀ n, P15724325871022687926.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P364230583071526287

`A112299(n+1)*A284059(n+1)`
-/

namespace A275966.P364230583071526287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A284059 (n + 1)

end

end A275966.P364230583071526287

namespace A275966

/-- `A112299(n+1)*A284059(n+1)` -/
def P364230583071526287.Spec : Prop :=
  ∀ n, P364230583071526287.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P17252487433257366855

`A112299(n+1)*A374366(n+1)`
-/

namespace A275966.P17252487433257366855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A374366 (n + 1)

end

end A275966.P17252487433257366855

namespace A275966

/-- `A112299(n+1)*A374366(n+1)` -/
def P17252487433257366855.Spec : Prop :=
  ∀ n, P17252487433257366855.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P8630987218193175876

`A209615(n+1)*A284059(n+1)`
-/

namespace A275966.P8630987218193175876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1) * A284059 (n + 1)

end

end A275966.P8630987218193175876

namespace A275966

/-- `A209615(n+1)*A284059(n+1)` -/
def P8630987218193175876.Spec : Prop :=
  ∀ n, P8630987218193175876.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P2763043108125889691

`A284059(n+1)*A358839(n+1)`
-/

namespace A275966.P2763043108125889691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (n + 1) * A358839 (n + 1)

end

end A275966.P2763043108125889691

namespace A275966

/-- `A284059(n+1)*A358839(n+1)` -/
def P2763043108125889691.Spec : Prop :=
  ∀ n, P2763043108125889691.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P2124691573468896364

`A358839(n+1)*A374366(n+1)`
-/

namespace A275966.P2124691573468896364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (n + 1) * A374366 (n + 1)

end

end A275966.P2124691573468896364

namespace A275966

/-- `A358839(n+1)*A374366(n+1)` -/
def P2124691573468896364.Spec : Prop :=
  ∀ n, P2124691573468896364.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P4192951619174800952

`∑{d}[n+1, A002654(#)*A007427((n+1)/#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275966

/-- `∑{d}[n+1, A002654(#)*A007427((n+1)/#)]` -/
def P4192951619174800952.Spec : Prop :=
  ∀ n, P4192951619174800952.a n = A275966 (n + 1)

theorem P4192951619174800952.correct : P4192951619174800952.Spec := by
  intro n
  simp only [A275966, Nat.add_sub_cancel]

end A275966

/-! ## A275966.P4107858373182915060

`∑{d}[n+1, A046692(#)*A050469((n+1)/#)]`
-/

namespace A275966.P4107858373182915060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A050469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P4107858373182915060

namespace A275966

/-- `∑{d}[n+1, A046692(#)*A050469((n+1)/#)]` -/
def P4107858373182915060.Spec : Prop :=
  ∀ n, P4107858373182915060.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P9133681480490488372

`∑{d}[n+1, A050468(#)*A053826((n+1)/#)]`
-/

namespace A275966.P9133681480490488372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050468 d * A053826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P9133681480490488372

namespace A275966

/-- `∑{d}[n+1, A050468(#)*A053826((n+1)/#)]` -/
def P9133681480490488372.Spec : Prop :=
  ∀ n, P9133681480490488372.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P18312463275032198054

`∑{d}[n+1, A050470(#)*A053822((n+1)/#)]`
-/

namespace A275966.P18312463275032198054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050470 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P18312463275032198054

namespace A275966

/-- `∑{d}[n+1, A050470(#)*A053822((n+1)/#)]` -/
def P18312463275032198054.Spec : Prop :=
  ∀ n, P18312463275032198054.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P10329120539088960051

`∑{d}[n+1, A050471(#)*A053825((n+1)/#)]`
-/

namespace A275966.P10329120539088960051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050471 d * A053825 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P10329120539088960051

namespace A275966

/-- `∑{d}[n+1, A050471(#)*A053825((n+1)/#)]` -/
def P10329120539088960051.Spec : Prop :=
  ∀ n, P10329120539088960051.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P2868021837365075171

`∑{d}[n+1, A034947(#)*A092673((n+1)/#)]`
-/

namespace A275966.P2868021837365075171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P2868021837365075171

namespace A275966

/-- `∑{d}[n+1, A034947(#)*A092673((n+1)/#)]` -/
def P2868021837365075171.Spec : Prop :=
  ∀ n, P2868021837365075171.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P11948637588100706247

`∑{d}[n+1, A000089(#)*A158522((n+1)/#)]`
-/

namespace A275966.P11948637588100706247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P11948637588100706247

namespace A275966

/-- `∑{d}[n+1, A000089(#)*A158522((n+1)/#)]` -/
def P11948637588100706247.Spec : Prop :=
  ∀ n, P11948637588100706247.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P18014523561198350261

`∑{d}[n+1, A087003(#)*A112299((n+1)/#)]`
-/

namespace A275966.P18014523561198350261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A112299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P18014523561198350261

namespace A275966

/-- `∑{d}[n+1, A087003(#)*A112299((n+1)/#)]` -/
def P18014523561198350261.Spec : Prop :=
  ∀ n, P18014523561198350261.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P2921181603780024698

`∑{d}[n+1, A007428(#)*A262209((n+1)/#)]`
-/

namespace A275966.P2921181603780024698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A262209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P2921181603780024698

namespace A275966

/-- `∑{d}[n+1, A007428(#)*A262209((n+1)/#)]` -/
def P2921181603780024698.Spec : Prop :=
  ∀ n, P2921181603780024698.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P8124400874639696420

`∑{d}[n+1, A008442(#)*A327276((n+1)/#)]`
-/

namespace A275966.P8124400874639696420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008442 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P8124400874639696420

namespace A275966

/-- `∑{d}[n+1, A008442(#)*A327276((n+1)/#)]` -/
def P8124400874639696420.Spec : Prop :=
  ∀ n, P8124400874639696420.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P8533104333549158218

`∑{d}[n+1, A055615(#)*A327123((n+1)/#)]`
-/

namespace A275966.P8533104333549158218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A327123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P8533104333549158218

namespace A275966

/-- `∑{d}[n+1, A055615(#)*A327123((n+1)/#)]` -/
def P8533104333549158218.Spec : Prop :=
  ∀ n, P8533104333549158218.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P13323515097225797390

`∑{d}[n+1, A055975(#)*A361019((n+1)/#)]`
-/

namespace A275966.P13323515097225797390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055975 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P13323515097225797390

namespace A275966

/-- `∑{d}[n+1, A055975(#)*A361019((n+1)/#)]` -/
def P13323515097225797390.Spec : Prop :=
  ∀ n, P13323515097225797390.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P268538854364496898

`∑{d}[n+1, A113652(#)*A327274((n+1)/#)]`
-/

namespace A275966.P268538854364496898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113652 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P268538854364496898

namespace A275966

/-- `∑{d}[n+1, A113652(#)*A327274((n+1)/#)]` -/
def P268538854364496898.Spec : Prop :=
  ∀ n, P268538854364496898.a n = A275966 (n + 1)

end A275966

/-! ## A275966.P3252258833319235514

`∑{d}[n+1, A178448(#)*A321829((n+1)/#)]`
-/

namespace A275966.P3252258833319235514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A178448 d * A321829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A275966.P3252258833319235514

namespace A275966

/-- `∑{d}[n+1, A178448(#)*A321829((n+1)/#)]` -/
def P3252258833319235514.Spec : Prop :=
  ∀ n, P3252258833319235514.a n = A275966 (n + 1)

end A275966

/-!
# A275968: Smaller of two consecutive primes p and q such that c(p) = c(q), where c(n) = A008908(n) is the length of x, f(x), f(f(x)), ... , 1 in the Collatz conjecture.

The programs for A275968, there is no canonical definition to state claims against.
-/

/-! ## A275968.P14255677735290970043

`A065091(eq[A070975(n+1), A070975(n+2)])`
-/

namespace A275968.P14255677735290970043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070975 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275968.P14255677735290970043

/-! ## A275968.P4630566812951983379

`A000040(eq[A070975(n+1), A070975(n+2)]+1)`
-/

namespace A275968.P4630566812951983379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070975 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A275968.P4630566812951983379

/-!
# A275970: a(n) = 3*2^n + n - 1.

The programs for A275970, the canonical program `A275970.P12107323919332335685` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275970 has offset 0).

The definition of A275970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+n-1` (program `A275970.P12107323919332335685`, by `A275970.P12107323919332335685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275970.P12107323919332335685

`3*2^n+n-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275970

/-- `3*2^n+n-1` -/
def P12107323919332335685.Spec : Prop :=
  ∀ n, P12107323919332335685.a n = A275970 n

theorem P12107323919332335685.correct : P12107323919332335685.Spec := by
  intro n
  simp only [A275970]

end A275970

/-! ## A275970.P12638681579876300990

`(A068156(n+1)+A005408(n))/2`
-/

namespace A275970.P12638681579876300990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068156 (n + 1) + A005408 n : ℚ) / 2

end

end A275970.P12638681579876300990

namespace A275970

/-- `(A068156(n+1)+A005408(n))/2` -/
def P12638681579876300990.Spec : Prop :=
  ∀ n, P12638681579876300990.a n = (A275970 n : ℚ)

end A275970

/-! ## A275970.P1872945002733098418

`∑[∑[ogf((-2+2x+x^2)/(-1+2x))]]`
-/

namespace A275970.P1872945002733098418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1] [1, -2] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275970.P1872945002733098418

namespace A275970

/-- `∑[∑[ogf((-2+2x+x^2)/(-1+2x))]]` -/
def P1872945002733098418.Spec : Prop :=
  ∀ n, P1872945002733098418.a n = A275970 n

end A275970

/-! ## A275970.P8448205982961939638

`ogf((-2+2x+x^2)/(-1+4x-5x^2+2x^3))`
-/

namespace A275970.P8448205982961939638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1] [1, -4, 5, -2] n

end

end A275970.P8448205982961939638

namespace A275970

/-- `ogf((-2+2x+x^2)/(-1+4x-5x^2+2x^3))` -/
def P8448205982961939638.Spec : Prop :=
  ∀ n, P8448205982961939638.a n = A275970 n

end A275970

/-! ## A275970.P13660862620634214493

`abs(lcm(3, 2^n)+n-1)`
-/

namespace A275970.P13660862620634214493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm 3 (2 ^ n) : ℤ) + ((n : ℤ) - 1)|

end

end A275970.P13660862620634214493

namespace A275970

/-- `abs(lcm(3, 2^n)+n-1)` -/
def P13660862620634214493.Spec : Prop :=
  ∀ n, P13660862620634214493.a n = A275970 n

end A275970

/-! ## A275970.P18133443257892094385

`xor(3*2^n, abs(1-n))`
-/

namespace A275970.P18133443257892094385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 * 2 ^ n : ℤ) |1 - (n : ℤ)|

end

end A275970.P18133443257892094385

namespace A275970

/-- `xor(3*2^n, abs(1-n))` -/
def P18133443257892094385.Spec : Prop :=
  ∀ n, P18133443257892094385.a n = A275970 n

end A275970

/-! ## A275970.P5658860708940252866

`∑[2*a(n-1)-1]` with `a(0)=2, a(1)=4`
-/

namespace A275970.P5658860708940252866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  2 * f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275970.P5658860708940252866

namespace A275970

/-- `∑[2*a(n-1)-1]` -/
def P5658860708940252866.Spec : Prop :=
  ∀ n, P5658860708940252866.a n = A275970 n

end A275970

/-! ## A275970.P4814233924735979885

`abs(2*a(n-1)-(n-3))` with `a(0)=2`
-/

namespace A275970.P4814233924735979885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |2 * a (n - 1) - ((n : ℤ) - 3)|

end

end A275970.P4814233924735979885

namespace A275970

/-- `abs(2*a(n-1)-(n-3))` -/
def P4814233924735979885.Spec : Prop :=
  ∀ n, P4814233924735979885.a n = A275970 n

end A275970

/-! ## A275970.P7797769612852141249

`floor(2*a(n-1)+3-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A275970.P7797769612852141249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + (3 - (n : ℤ))

end

end A275970.P7797769612852141249

namespace A275970

/-- `floor(2*a(n-1)+3-n)` -/
def P7797769612852141249.Spec : Prop :=
  ∀ n, P7797769612852141249.a n = A275970 n

theorem P7797769612852141249.correct : P7797769612852141249.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P7797769612852141249.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P7797769612852141249.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-! ## A275970.P7705849135942745908

`ceil(2*a(n-1)-(n-3))` with `a(0)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A275970.P7705849135942745908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 3)

end

end A275970.P7705849135942745908

namespace A275970

/-- `ceil(2*a(n-1)-(n-3))` -/
def P7705849135942745908.Spec : Prop :=
  ∀ n, P7705849135942745908.a n = A275970 n

theorem P7705849135942745908.correct : P7705849135942745908.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P7705849135942745908.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P7705849135942745908.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-! ## A275970.P15099346403079763313

`round(2*a(n-1)-(n-3))` with `a(0)=2`

`round` is left out, it is the identity on integers.
-/

namespace A275970.P15099346403079763313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - ((n : ℤ) - 3)

end

end A275970.P15099346403079763313

namespace A275970

/-- `round(2*a(n-1)-(n-3))` -/
def P15099346403079763313.Spec : Prop :=
  ∀ n, P15099346403079763313.a n = A275970 n

theorem P15099346403079763313.correct : P15099346403079763313.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P15099346403079763313.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P15099346403079763313.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-! ## A275970.P16192206376421455617

`2*(a(n-1)+(3-n)/2)` with `a(0)=2`
-/

namespace A275970.P16192206376421455617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * (a (n - 1) + (3 - (n : ℤ) : ℚ) / 2)

end

end A275970.P16192206376421455617

namespace A275970

/-- `2*(a(n-1)+(3-n)/2)` -/
def P16192206376421455617.Spec : Prop :=
  ∀ n, P16192206376421455617.a n = (A275970 n : ℚ)

theorem P16192206376421455617.correct : P16192206376421455617.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P16192206376421455617.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P16192206376421455617.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-! ## A275970.P6090249541179579240

`floor(2*(a(n-1)-(n-3)/2))` with `a(0)=2`
-/

namespace A275970.P6090249541179579240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊2 * ((a (n - 1) : ℚ) - ((n : ℤ) - 3 : ℚ) / 2)⌋

end

end A275970.P6090249541179579240

namespace A275970

/-- `floor(2*(a(n-1)-(n-3)/2))` -/
def P6090249541179579240.Spec : Prop :=
  ∀ n, P6090249541179579240.a n = A275970 n

end A275970

/-! ## A275970.P9751961989623667396

`∑[a(n-1)+a(n-1)-1]` with `a(0)=2, a(1)=4`
-/

namespace A275970.P9751961989623667396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275970.P9751961989623667396

namespace A275970

/-- `∑[a(n-1)+a(n-1)-1]` -/
def P9751961989623667396.Spec : Prop :=
  ∀ n, P9751961989623667396.a n = A275970 n

end A275970

/-! ## A275970.P702964889673710227

`∑[a(n-1)-(1-a(n-1))]` with `a(0)=2, a(1)=4`
-/

namespace A275970.P702964889673710227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275970.P702964889673710227

namespace A275970

/-- `∑[a(n-1)-(1-a(n-1))]` -/
def P702964889673710227.Spec : Prop :=
  ∀ n, P702964889673710227.a n = A275970 n

end A275970

/-! ## A275970.P5578533221715284809

`floor(n-(2*(n-a(n-1))-3))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A275970.P5578533221715284809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) - (2 * ((n : ℤ) - a (n - 1)) - 3)

end

end A275970.P5578533221715284809

namespace A275970

/-- `floor(n-(2*(n-a(n-1))-3))` -/
def P5578533221715284809.Spec : Prop :=
  ∀ n, P5578533221715284809.a n = A275970 n

theorem P5578533221715284809.correct : P5578533221715284809.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P5578533221715284809.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P5578533221715284809.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-! ## A275970.P3543821144811859763

`2*(1-((n-1)/2-a(n-1)))` with `a(0)=2`
-/

namespace A275970.P3543821144811859763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * (1 - (((n : ℤ) - 1 : ℚ) / 2 - a (n - 1)))

end

end A275970.P3543821144811859763

namespace A275970

/-- `2*(1-((n-1)/2-a(n-1)))` -/
def P3543821144811859763.Spec : Prop :=
  ∀ n, P3543821144811859763.a n = (A275970 n : ℚ)

theorem P3543821144811859763.correct : P3543821144811859763.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P3543821144811859763.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P3543821144811859763.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-! ## A275970.P437283752865865663

`or(2*a(n-1)-(n-3), n-1)` with `a(0)=2`
-/

namespace A275970.P437283752865865663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (2 * a (n - 1) - ((n : ℤ) - 3)) ((n : ℤ) - 1)

end

end A275970.P437283752865865663

namespace A275970

/-- `or(2*a(n-1)-(n-3), n-1)` -/
def P437283752865865663.Spec : Prop :=
  ∀ n, P437283752865865663.a n = A275970 n

end A275970

/-! ## A275970.P2239486526978793118

`floor(a(n-1)+a(n-1)+3-n)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A275970.P2239486526978793118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (3 - (n : ℤ)))

end

end A275970.P2239486526978793118

namespace A275970

/-- `floor(a(n-1)+a(n-1)+3-n)` -/
def P2239486526978793118.Spec : Prop :=
  ∀ n, P2239486526978793118.a n = A275970 n

theorem P2239486526978793118.correct : P2239486526978793118.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P2239486526978793118.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P2239486526978793118.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-! ## A275970.P6367504620724135414

`floor(a(n-1)-(n-3-a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A275970.P6367504620724135414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - ((n : ℤ) - 3 - a (n - 1))

end

end A275970.P6367504620724135414

namespace A275970

/-- `floor(a(n-1)-(n-3-a(n-1)))` -/
def P6367504620724135414.Spec : Prop :=
  ∀ n, P6367504620724135414.a n = A275970 n

theorem P6367504620724135414.correct : P6367504620724135414.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A275970, Nat.add_sub_cancel, A275970.P6367504620724135414.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A275970, Nat.add_sub_cancel, A275970.P6367504620724135414.a, A275970.P12107323919332335685.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A275970

/-!
# A275971: Numbers n such that the decimal digits of n^2 are all prime.

The programs for A275971, there is no canonical definition to state claims against.
-/

/-! ## A275971.P17269918325500618663

`sqrt(A191486(n+1))`
-/

namespace A275971.P17269918325500618663
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A191486 (n + 1) : ℝ)

end

end A275971.P17269918325500618663

/-! ## A275971.P4625194877680843133

`root(A191486(n+1), 2%A017029(n))`
-/

namespace A275971.P4625194877680843133
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A191486 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017029 n) : ℝ))

end

end A275971.P4625194877680843133

/-! ## A275971.P11443079969825756624

`root(A191486(n+1), A017293(n)%5)`
-/

namespace A275971.P11443079969825756624
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A191486 (n + 1) : ℝ) ^ (1 / (Int.tmod (A017293 n) 5 : ℝ))

end

end A275971.P11443079969825756624

/-! ## A275971.P12946264849555802634

`or(root(A191486(n+1), 2), A057427(n))`
-/

namespace A275971.P12946264849555802634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A191486 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A057427 n)

end

end A275971.P12946264849555802634

/-! ## A275971.P9093681785825446969

`root(A191486(n+1), A001316(A001316(n)))`
-/

namespace A275971.P9093681785825446969
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A191486 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A275971.P9093681785825446969

/-! ## A275971.P11932550496080932112

`A191486(n+1)^(A017293(n)/A139245(n+1))`
-/

namespace A275971.P11932550496080932112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A191486 (n + 1) : ℝ) ^ ((A017293 n : ℚ) / (A139245 (n + 1) : ℚ) : ℝ)

end

end A275971.P11932550496080932112

/-! ## A275971.P11925285717217012067

`A191486(n+1)^(A139245(n+1)/A139279(n+1))`
-/

namespace A275971.P11925285717217012067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A191486 (n + 1) : ℝ) ^ ((A139245 (n + 1) : ℚ) / (A139279 (n + 1) : ℚ) : ℝ)

end

end A275971.P11925285717217012067

/-! ## A275971.P4467141235481566939

`A191486(n+1)^(A004736(∑[n+1])/2)`
-/

namespace A275971.P4467141235481566939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A191486 (n + 1) : ℝ) ^ ((A004736 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 : ℝ)

end

end A275971.P4467141235481566939

/-!
# A275972: Number of strict knapsack partitions of n.

The programs for A275972, there is no canonical definition to state claims against.
-/

/-! ## A275972.P17887259656450944647

`A000009(n)-A316402(round(sqrt(n²+1)))`
-/

namespace A275972.P17887259656450944647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A316402 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A275972.P17887259656450944647

/-! ## A275972.P9710825019227104145

`abs(A081360(n))-A316402(A028310(n))`
-/

namespace A275972.P9710825019227104145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A316402 (A028310 n).toNat

end

end A275972.P9710825019227104145

/-! ## A275972.P13810277342594873996

`A054242(∑[n])-A316402(A028310(n))`
-/

namespace A275972.P13810277342594873996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f1 j) - A316402 (A028310 n).toNat

end

end A275972.P13810277342594873996

/-! ## A275972.P5753580867102517906

`abs(A081360(n))-A316402(A233583(n+1))`
-/

namespace A275972.P5753580867102517906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A316402 (A233583 (n + 1)).toNat

end

end A275972.P5753580867102517906

/-! ## A275972.P12040139131518849747

`A364349(n)-A010054(A163695(n+1))`
-/

namespace A275972.P12040139131518849747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364349 n - A010054 (A163695 (n + 1)).toNat

end

end A275972.P12040139131518849747

/-!
# A275973: A binary sequence due to Harold Jeffreys.

The programs for A275973, the canonical program `A275973.P5287038205208055230` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275973 has offset 1).

The definition of A275973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275973.P13884812385555646838

`and(1, ceil(log2(acot(n))))`
-/

namespace A275973.P13884812385555646838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

end

end A275973.P13884812385555646838

namespace A275973

/-- `and(1, ceil(log2(acot(n))))` -/
def P13884812385555646838.Spec : Prop :=
  ∀ n, P13884812385555646838.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P5287038205208055230

`a(floor(n/4))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275973

/-- `a(floor(n/4))` -/
def P5287038205208055230.Spec : Prop :=
  ∀ n, (P5287038205208055230.a n : ℤ) = A275973 (n + 1)

theorem P5287038205208055230.correct : P5287038205208055230.Spec := by
  intro n
  simp only [A275973, Nat.add_sub_cancel]

end A275973

/-! ## A275973.P11713184257269494819

`log2(gcd(2, ceil(log2(n+1))))`
-/

namespace A275973.P11713184257269494819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℝ)

end

end A275973.P11713184257269494819

namespace A275973

/-- `log2(gcd(2, ceil(log2(n+1))))` -/
def P11713184257269494819.Spec : Prop :=
  ∀ n, P11713184257269494819.a n = (A275973 (n + 1) : ℝ)

end A275973

/-! ## A275973.P14701340885725936535

`∑[∏{p}[n, #+1]]%2`
-/

namespace A275973.P14701340885725936535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A275973.P14701340885725936535

namespace A275973

/-- `∑[∏{p}[n, #+1]]%2` -/
def P14701340885725936535.Spec : Prop :=
  ∀ n, (P14701340885725936535.a n : ℤ) = A275973 (n + 1)

end A275973

/-! ## A275973.P4845280330120488916

`and(1, ∑[∏{p}[n, #+1]])`
-/

namespace A275973.P4845280330120488916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275973.P4845280330120488916

namespace A275973

/-- `and(1, ∑[∏{p}[n, #+1]])` -/
def P4845280330120488916.Spec : Prop :=
  ∀ n, (P4845280330120488916.a n : ℤ) = A275973 (n + 1)

end A275973

/-! ## A275973.P9350599951698972632

`ceil(record[log2(or(2, n))])%2`
-/

namespace A275973.P9350599951698972632
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ 2

end

end A275973.P9350599951698972632

namespace A275973

/-- `ceil(record[log2(or(2, n))])%2` -/
def P9350599951698972632.Spec : Prop :=
  ∀ n, P9350599951698972632.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P4858209881408659203

`(ceil(log2(n+1))+1)%2`
-/

namespace A275973.P4858209881408659203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 1) 2

end

end A275973.P4858209881408659203

namespace A275973

/-- `(ceil(log2(n+1))+1)%2` -/
def P4858209881408659203.Spec : Prop :=
  ∀ n, P4858209881408659203.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P14576591216315895833

`and(1, ceil(log2(n+1))+1)`
-/

namespace A275973.P14576591216315895833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 1)

end

end A275973.P14576591216315895833

namespace A275973

/-- `and(1, ceil(log2(n+1))+1)` -/
def P14576591216315895833.Spec : Prop :=
  ∀ n, P14576591216315895833.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P410281525224664143

`1-a(ceil((n-1)/2))` with `a(0)=1`
-/

namespace A275973.P410281525224664143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A275973.P410281525224664143

namespace A275973

/-- `1-a(ceil((n-1)/2))` -/
def P410281525224664143.Spec : Prop :=
  ∀ n, P410281525224664143.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P13433137996442695143

`(char[2^n]-a(n-1))²` with `a(0)=1`
-/

namespace A275973.P13433137996442695143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1)) ^ 2

end

end A275973.P13433137996442695143

namespace A275973

/-- `(char[2^n]-a(n-1))²` -/
def P13433137996442695143.Spec : Prop :=
  ∀ n, P13433137996442695143.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P16971738694211620512

`a(and(a(n-1)+n, n-1))²` with `a(0)=1, a(1)=0`
-/

namespace A275973.P16971738694211620512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (Int.land (a (n - 1) + n : ℤ) ((n : ℤ) - 1)).toNat ^ 2

end

end A275973.P16971738694211620512

namespace A275973

/-- `a(and(a(n-1)+n, n-1))²` -/
def P16971738694211620512.Spec : Prop :=
  ∀ n, (P16971738694211620512.a n : ℤ) = A275973 (n + 1)

end A275973

/-! ## A275973.P15064798944638432214

`(a(n-1)-char[2*a(n-1)])²` with `a(0)=1`
-/

namespace A275973.P15064798944638432214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A275973.P15064798944638432214

namespace A275973

/-- `(a(n-1)-char[2*a(n-1)])²` -/
def P15064798944638432214.Spec : Prop :=
  ∀ n, P15064798944638432214.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P6537016646952271074

`A030300(Δ[n²])`
-/

namespace A275973.P6537016646952271074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A275973.P6537016646952271074

namespace A275973

/-- `A030300(Δ[n²])` -/
def P6537016646952271074.Spec : Prop :=
  ∀ n, P6537016646952271074.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P12172425067552634966

`char[A053754(n+1)]`
-/

namespace A275973.P12172425067552634966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275973.P12172425067552634966

namespace A275973

/-- `char[A053754(n+1)]` -/
def P12172425067552634966.Spec : Prop :=
  ∀ n, (P12172425067552634966.a n : ℤ) = A275973 (n + 1)

end A275973

/-! ## A275973.P2284974759560980081

`char[A307613(2*n)]`
-/

namespace A275973.P2284974759560980081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307613 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A275973.P2284974759560980081

namespace A275973

/-- `char[A307613(2*n)]` -/
def P2284974759560980081.Spec : Prop :=
  ∀ n, (P2284974759560980081.a n : ℤ) = A275973 (n + 1)

end A275973

/-! ## A275973.P11107746024316124718

`floor(acot(A317050(n)))²`
-/

namespace A275973.P11107746024316124718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A317050 n : ℝ)⌋ ^ 2

end

end A275973.P11107746024316124718

namespace A275973

/-- `floor(acot(A317050(n)))²` -/
def P11107746024316124718.Spec : Prop :=
  ∀ n, P11107746024316124718.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P3691750183694037653

`A030301(4*n+2)`
-/

namespace A275973.P3691750183694037653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (4 * n + 2)

end

end A275973.P3691750183694037653

namespace A275973

/-- `A030301(4*n+2)` -/
def P3691750183694037653.Spec : Prop :=
  ∀ n, P3691750183694037653.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P16262608604569193197

`gcd(2, A048794(n))-1`
-/

namespace A275973.P16262608604569193197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A048794 n) : ℤ) - 1

end

end A275973.P16262608604569193197

namespace A275973

/-- `gcd(2, A048794(n))-1` -/
def P16262608604569193197.Spec : Prop :=
  ∀ n, P16262608604569193197.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P199162148600362072

`A059841(ceil(log2(n+1)))`
-/

namespace A275973.P199162148600362072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A275973.P199162148600362072

namespace A275973

/-- `A059841(ceil(log2(n+1)))` -/
def P199162148600362072.Spec : Prop :=
  ∀ n, P199162148600362072.a n = A275973 (n + 1)

end A275973

/-! ## A275973.P3715798959718205869

`1-A030301(Δ[n²])`
-/

namespace A275973.P3715798959718205869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030301 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A275973.P3715798959718205869

namespace A275973

/-- `1-A030301(Δ[n²])` -/
def P3715798959718205869.Spec : Prop :=
  ∀ n, P3715798959718205869.a n = A275973 (n + 1)

end A275973

/-!
# A275974: Partial sums of the Jeffreys binary sequence A275973.

The programs for A275974, the canonical program `A275974.P13453548968113701844` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275974 has offset 1).

The definition of A275974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275974.P13915518724579387980

`∑[and(1, ceil(log2(acot(n))))]`
-/

namespace A275974.P13915518724579387980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P13915518724579387980

namespace A275974

/-- `∑[and(1, ceil(log2(acot(n))))]` -/
def P13915518724579387980.Spec : Prop :=
  ∀ n, P13915518724579387980.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P13453548968113701844

`∑[1-a(floor(n/2))]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275974

/-- `∑[1-a(floor(n/2))]` -/
def P13453548968113701844.Spec : Prop :=
  ∀ n, P13453548968113701844.a n = A275974 (n + 1)

theorem P13453548968113701844.correct : P13453548968113701844.Spec := by
  intro n
  simp only [A275974, Nat.add_sub_cancel]

end A275974

/-! ## A275974.P11752398853005496614

`∑[abs(a(floor(n/4)))]` with `a(0)=1, a(1)=0`
-/

namespace A275974.P11752398853005496614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P11752398853005496614

namespace A275974

/-- `∑[abs(a(floor(n/4)))]` -/
def P11752398853005496614.Spec : Prop :=
  ∀ n, (P11752398853005496614.a n : ℤ) = A275974 (n + 1)

end A275974

/-! ## A275974.P8946643783516054874

`∑[a(floor(n/4))²]` with `a(0)=1, a(1)=0`
-/

namespace A275974.P8946643783516054874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P8946643783516054874

namespace A275974

/-- `∑[a(floor(n/4))²]` -/
def P8946643783516054874.Spec : Prop :=
  ∀ n, (P8946643783516054874.a n : ℤ) = A275974 (n + 1)

end A275974

/-! ## A275974.P2601525339339035761

`∑[sqrt(a(floor(n/4)))]` with `a(0)=1, a(1)=0`
-/

namespace A275974.P2601525339339035761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Real.sqrt (f1 ⌊(n : ℚ) / 4⌋.toNat)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P2601525339339035761

namespace A275974

/-- `∑[sqrt(a(floor(n/4)))]` -/
def P2601525339339035761.Spec : Prop :=
  ∀ n, P2601525339339035761.a n = (A275974 (n + 1) : ℝ)

end A275974

/-! ## A275974.P13557665061218153781

`∑[floor(a(floor(n/4)))]` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A275974.P13557665061218153781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P13557665061218153781

namespace A275974

/-- `∑[floor(a(floor(n/4)))]` -/
def P13557665061218153781.Spec : Prop :=
  ∀ n, (P13557665061218153781.a n : ℤ) = A275974 (n + 1)

end A275974

/-! ## A275974.P12111405368889943848

`∑[A275973(n+1)]`
-/

namespace A275974.P12111405368889943848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P12111405368889943848

namespace A275974

/-- `∑[A275973(n+1)]` -/
def P12111405368889943848.Spec : Prop :=
  ∀ n, P12111405368889943848.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P14155826746078988334

`∑[A070941(n)%2]`
-/

namespace A275974.P14155826746078988334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070941 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P14155826746078988334

namespace A275974

/-- `∑[A070941(n)%2]` -/
def P14155826746078988334.Spec : Prop :=
  ∀ n, P14155826746078988334.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P15218511046436311722

`∑[char[A053754(n+1)]]`
-/

namespace A275974.P15218511046436311722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P15218511046436311722

namespace A275974

/-- `∑[char[A053754(n+1)]]` -/
def P15218511046436311722.Spec : Prop :=
  ∀ n, (P15218511046436311722.a n : ℤ) = A275974 (n + 1)

end A275974

/-! ## A275974.P10074704015997602393

`∑[char[A307613(2*n)]]`
-/

namespace A275974.P10074704015997602393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307613 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P10074704015997602393

namespace A275974

/-- `∑[char[A307613(2*n)]]` -/
def P10074704015997602393.Spec : Prop :=
  ∀ n, (P10074704015997602393.a n : ℤ) = A275974 (n + 1)

end A275974

/-! ## A275974.P13397746457812080083

`∑[A030300(2*n+1)]`
-/

namespace A275974.P13397746457812080083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P13397746457812080083

namespace A275974

/-- `∑[A030300(2*n+1)]` -/
def P13397746457812080083.Spec : Prop :=
  ∀ n, P13397746457812080083.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P15665727632098967742

`∑[and(1, A048794(n)+1)]`
-/

namespace A275974.P15665727632098967742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048794 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P15665727632098967742

namespace A275974

/-- `∑[and(1, A048794(n)+1)]` -/
def P15665727632098967742.Spec : Prop :=
  ∀ n, P15665727632098967742.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P8267428346273704767

`∑[and(1, A124754(n)+1)]`
-/

namespace A275974.P8267428346273704767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124754 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P8267428346273704767

namespace A275974

/-- `∑[and(1, A124754(n)+1)]` -/
def P8267428346273704767.Spec : Prop :=
  ∀ n, P8267428346273704767.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P4529616521952207143

`∑[∑[A000120(n)!]%2]`
-/

namespace A275974.P4529616521952207143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P4529616521952207143

namespace A275974

/-- `∑[∑[A000120(n)!]%2]` -/
def P4529616521952207143.Spec : Prop :=
  ∀ n, (P4529616521952207143.a n : ℤ) = A275974 (n + 1)

end A275974

/-! ## A275974.P16216919850782485491

`A030301(n)+a(n-1)` with `a(0)=1`
-/

namespace A275974.P16216919850782485491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030301 n + a (n - 1)

end

end A275974.P16216919850782485491

namespace A275974

/-- `A030301(n)+a(n-1)` -/
def P16216919850782485491.Spec : Prop :=
  ∀ n, P16216919850782485491.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P12584940632639446733

`∑[1-A030301(2*n+1)]`
-/

namespace A275974.P12584940632639446733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030301 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P12584940632639446733

namespace A275974

/-- `∑[1-A030301(2*n+1)]` -/
def P12584940632639446733.Spec : Prop :=
  ∀ n, P12584940632639446733.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P15134000752712343919

`∑[A284556(A053644(n))]+1`
-/

namespace A275974.P15134000752712343919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A053644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A275974.P15134000752712343919

namespace A275974

/-- `∑[A284556(A053644(n))]+1` -/
def P15134000752712343919.Spec : Prop :=
  ∀ n, P15134000752712343919.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P6563709475743411877

`∑[A123108(a(A123108(n)))]` with `a(0)=1`
-/

namespace A275974.P6563709475743411877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A123108 (f1 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275974.P6563709475743411877

namespace A275974

/-- `∑[A123108(a(A123108(n)))]` -/
def P6563709475743411877.Spec : Prop :=
  ∀ n, P6563709475743411877.a n = A275974 (n + 1)

end A275974

/-! ## A275974.P7715094619841801492

`A079954(n+1)+A030300(n+1)`
-/

namespace A275974.P7715094619841801492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079954 (n + 1) + A030300 (n + 1)

end

end A275974.P7715094619841801492

namespace A275974

/-- `A079954(n+1)+A030300(n+1)` -/
def P7715094619841801492.Spec : Prop :=
  ∀ n, P7715094619841801492.a n = A275974 (n + 1)

end A275974

/-!
# A275985: Least k such that n divides phi(k!) (k > 0).

The programs for A275985, there is no canonical definition to state claims against.
-/

/-! ## A275985.P13561948756579956181

`A010815(A274005(n))+2*A006530(n+1)`
-/

namespace A275985.P13561948756579956181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A274005 n).toNat + 2 * A006530 (n + 1)

end

end A275985.P13561948756579956181

/-!
# A275986: Positive integers of the form x*10^k + y which also equal x^2 + y^2 (x, y and k being positive integers).

The programs for A275986, there is no canonical definition to state claims against.
-/

/-! ## A275986.P6511979893430481661

`filter[A085251(n+1), A226464(#)]`
-/

namespace A275986.P6511979893430481661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A226464 (f1 j).toNat = 1) n)

end

end A275986.P6511979893430481661

/-!
# A275987: Least k such that sigma(k) = sigma(n).

The programs for A275987, there is no canonical definition to state claims against.
-/

/-! ## A275987.P9742234980653705923

`A051444(∑{d}[n+1, #])`
-/

namespace A275987.P9742234980653705923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A275987.P9742234980653705923

/-! ## A275987.P10570098675732949013

`A051444(A000203(n+1))`
-/

namespace A275987.P10570098675732949013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A000203 (n + 1)).toNat

end

end A275987.P10570098675732949013

/-! ## A275987.P4079470444480433993

`A051444(abs(Δ[A330725(n)]))`
-/

namespace A275987.P4079470444480433993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 |f1 (n + 1) - f1 n|.toNat

end

end A275987.P4079470444480433993

/-! ## A275987.P7576541897377393254

`A051444(A245092(Δ[n²]))`
-/

namespace A275987.P7576541897377393254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A275987.P7576541897377393254

/-! ## A275987.P16900883853362496157

`A051444(A262610(Δ[n²]))`
-/

namespace A275987.P16900883853362496157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A275987.P16900883853362496157

/-! ## A275987.P14292629955292656808

`A051444(sqrt(A072861(n+1)))`
-/

namespace A275987.P14292629955292656808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A275987.P14292629955292656808

/-! ## A275987.P9343183761479299276

`A051444(∑[A340793(n+1)])`
-/

namespace A275987.P9343183761479299276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275987.P9343183761479299276

/-! ## A275987.P18242611921084947554

`A051444(A039653(n+1)+1)`
-/

namespace A275987.P18242611921084947554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A039653 (n + 1) + 1).toNat

end

end A275987.P18242611921084947554

/-! ## A275987.P10105660639481808804

`A051444(A088580(n+1)-1)`
-/

namespace A275987.P10105660639481808804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A088580 (n + 1) - 1).toNat

end

end A275987.P10105660639481808804

/-! ## A275987.P4601151014094405602

`A051444(A146076(2*(n+1))/2)`
-/

namespace A275987.P4601151014094405602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A275987.P4601151014094405602

/-! ## A275987.P4653482885219497244

`A051444(A001065(n+1)+1+n)`
-/

namespace A275987.P4653482885219497244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A275987.P4653482885219497244

/-! ## A275987.P14260214200133488024

`A051444(A155085(n+1)-(n+1))`
-/

namespace A275987.P14260214200133488024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A275987.P14260214200133488024

/-! ## A275987.P415470993469924324

`A051444(A064987(n+1)/(n+1))`
-/

namespace A275987.P415470993469924324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A275987.P415470993469924324

/-! ## A275987.P17657254945064246753

`A051444(A048146(n+1)+A034448(n+1))`
-/

namespace A275987.P17657254945064246753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A275987.P17657254945064246753

/-! ## A275987.P8687711458516970602

`A051444(A146076(n+1)+A000593(n+1))`
-/

namespace A275987.P8687711458516970602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A146076 (n + 1) + A000593 (n + 1)).toNat

end

end A275987.P8687711458516970602

/-! ## A275987.P850484167429656702

`A051444(A088001(n+1)+A088000(n+1))`
-/

namespace A275987.P850484167429656702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A088001 (n + 1) + A088000 (n + 1)).toNat

end

end A275987.P850484167429656702

/-! ## A275987.P7614696066099514565

`A051444(A326126(n+1)+A007913(n+1))`
-/

namespace A275987.P7614696066099514565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A326126 (n + 1) + A007913 (n + 1)).toNat

end

end A275987.P7614696066099514565

/-! ## A275987.P3001287653775658190

`A051444(A324122(n+1)+A324121(n+1))`
-/

namespace A275987.P3001287653775658190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A324122 (n + 1) + A324121 (n + 1)).toNat

end

end A275987.P3001287653775658190

/-! ## A275987.P6631001155482540409

`A233929(A088580(n+1))`
-/

namespace A275987.P6631001155482540409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A088580 (n + 1)).toNat

end

end A275987.P6631001155482540409

/-! ## A275987.P10484703791577461605

`A233929(A000203(n+1)+1)`
-/

namespace A275987.P10484703791577461605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A000203 (n + 1) + 1).toNat

end

end A275987.P10484703791577461605

/-!
# A275988: a(n) = prime(3n) - prime(n).

The programs for A275988, the canonical program `A275988.P2515707421048682127` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275988 has offset 1).

The definition of A275988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031336, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275988.P2515707421048682127

`A031336(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275988

/-- `A031336(n+1)-A000040(n+1)` -/
def P2515707421048682127.Spec : Prop :=
  ∀ n, P2515707421048682127.a n = A275988 (n + 1)

theorem P2515707421048682127.correct : P2515707421048682127.Spec := by
  intro n
  simp only [A275988, Nat.add_sub_cancel]

end A275988

/-! ## A275988.P1157771596861959133

`A255174(n+1)+A072473(n+1)`
-/

namespace A275988.P1157771596861959133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255174 (n + 1) + A072473 (n + 1)

end

end A275988.P1157771596861959133

namespace A275988

/-- `A255174(n+1)+A072473(n+1)` -/
def P1157771596861959133.Spec : Prop :=
  ∀ n, P1157771596861959133.a n = A275988 (n + 1)

theorem P1157771596861959133.correct : P1157771596861959133.Spec := by
  intro n
  simp only [A275988, Nat.add_sub_cancel, A275988.P1157771596861959133.a, A275988.P2515707421048682127.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031336, A031336.P9356925525958720186.a, A072473, A072473.P3407629193092000128.a, A255174, A255174.P2578554358977319620.a, A001748, A001748.P16019639290970068825.a, A031215, A031215.P5770198321376253516.a, A066066, A066066.P11585399840041140735.a, A100484, A100484.P9678625670825099636.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275988

/-! ## A275988.P1964764447464138878

`A031336(n+1)-A100484(n+1)/2`
-/

namespace A275988.P1964764447464138878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031336 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A275988.P1964764447464138878

namespace A275988

/-- `A031336(n+1)-A100484(n+1)/2` -/
def P1964764447464138878.Spec : Prop :=
  ∀ n, P1964764447464138878.a n = (A275988 (n + 1) : ℚ)

theorem P1964764447464138878.correct : P1964764447464138878.Spec := by
  intro n
  simp only [A275988, Nat.add_sub_cancel, A275988.P1964764447464138878.a, A275988.P2515707421048682127.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031336, A031336.P9356925525958720186.a, A100484, A100484.P9678625670825099636.a, A001748, A001748.P16019639290970068825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275988

/-! ## A275988.P18019686397726516273

`A031336(n+1)+A072473(n+1)-A031215(n+1)`
-/

namespace A275988.P18019686397726516273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) + (A072473 (n + 1) - A031215 (n + 1))

end

end A275988.P18019686397726516273

namespace A275988

/-- `A031336(n+1)+A072473(n+1)-A031215(n+1)` -/
def P18019686397726516273.Spec : Prop :=
  ∀ n, P18019686397726516273.a n = A275988 (n + 1)

theorem P18019686397726516273.correct : P18019686397726516273.Spec := by
  intro n
  simp only [A275988, Nat.add_sub_cancel, A275988.P18019686397726516273.a, A275988.P2515707421048682127.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P5770198321376253516.a, A031336, A031336.P9356925525958720186.a, A072473, A072473.P3407629193092000128.a, A001748, A001748.P16019639290970068825.a, A066066, A066066.P11585399840041140735.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275988

/-! ## A275988.P8055705555699469161

`A031336(n+1)+A066066(n+1)-A072473(n+1)`
-/

namespace A275988.P8055705555699469161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) + (A066066 (n + 1) - A072473 (n + 1))

end

end A275988.P8055705555699469161

namespace A275988

/-- `A031336(n+1)+A066066(n+1)-A072473(n+1)` -/
def P8055705555699469161.Spec : Prop :=
  ∀ n, P8055705555699469161.a n = A275988 (n + 1)

theorem P8055705555699469161.correct : P8055705555699469161.Spec := by
  intro n
  simp only [A275988, Nat.add_sub_cancel, A275988.P8055705555699469161.a, A275988.P2515707421048682127.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031336, A031336.P9356925525958720186.a, A066066, A066066.P11585399840041140735.a, A072473, A072473.P3407629193092000128.a, A001748, A001748.P16019639290970068825.a, A031215, A031215.P5770198321376253516.a, A100484, A100484.P9678625670825099636.a, A105720, A105720.P4544392983901701878.a, A161463, A161463.P3939391229577481426.a, A036439, A036439.P376659802180600074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275988

/-! ## A275988.P9099591560007380323

`A031336(n+1)-Δ[A036439(n+1)]`
-/

namespace A275988.P9099591560007380323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - (f1 (n + 1) - f1 n)

end

end A275988.P9099591560007380323

namespace A275988

/-- `A031336(n+1)-Δ[A036439(n+1)]` -/
def P9099591560007380323.Spec : Prop :=
  ∀ n, P9099591560007380323.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P10031054187326848027

`A031336(n+1)-A067747(2*n+1)`
-/

namespace A275988.P10031054187326848027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031336 (n + 1) - A067747 (2 * n + 1)

end

end A275988.P10031054187326848027

namespace A275988

/-- `A031336(n+1)-A067747(2*n+1)` -/
def P10031054187326848027.Spec : Prop :=
  ∀ n, P10031054187326848027.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P4107864396653275913

`A215848(A016777(n))-A000040(n+1)`
-/

namespace A275988.P4107864396653275913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A016777 n).toNat - A000040 (n + 1)

end

end A275988.P4107864396653275913

namespace A275988

/-- `A215848(A016777(n))-A000040(n+1)` -/
def P4107864396653275913.Spec : Prop :=
  ∀ n, P4107864396653275913.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P2489662101551753070

`A000040(3*(n+1))-Δ[A007504(n)]`
-/

namespace A275988.P2489662101551753070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A275988.P2489662101551753070

namespace A275988

/-- `A000040(3*(n+1))-Δ[A007504(n)]` -/
def P2489662101551753070.Spec : Prop :=
  ∀ n, P2489662101551753070.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P13955359566220962480

`A065091(3*n+2)-Δ[A007504(n)]`
-/

namespace A275988.P13955359566220962480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 2) - (f1 (n + 1) - f1 n)

end

end A275988.P13955359566220962480

namespace A275988

/-- `A065091(3*n+2)-Δ[A007504(n)]` -/
def P13955359566220962480.Spec : Prop :=
  ∀ n, P13955359566220962480.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P10341730878342561824

`A000040(3*(n+1))-A000040(n+1)`
-/

namespace A275988.P10341730878342561824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * (n + 1)) - A000040 (n + 1)

end

end A275988.P10341730878342561824

namespace A275988

/-- `A000040(3*(n+1))-A000040(n+1)` -/
def P10341730878342561824.Spec : Prop :=
  ∀ n, P10341730878342561824.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P6642579460104211592

`A006093(3*(n+1))-A006093(n+1)`
-/

namespace A275988.P6642579460104211592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (3 * (n + 1)) - A006093 (n + 1)

end

end A275988.P6642579460104211592

namespace A275988

/-- `A006093(3*(n+1))-A006093(n+1)` -/
def P6642579460104211592.Spec : Prop :=
  ∀ n, P6642579460104211592.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P16217139147409045252

`A008864(3*(n+1))-A008864(n+1)`
-/

namespace A275988.P16217139147409045252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (3 * (n + 1)) - A008864 (n + 1)

end

end A275988.P16217139147409045252

namespace A275988

/-- `A008864(3*(n+1))-A008864(n+1)` -/
def P16217139147409045252.Spec : Prop :=
  ∀ n, P16217139147409045252.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P2489687966170012899

`A040976(3*(n+1))-A040976(n+1)`
-/

namespace A275988.P2489687966170012899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (3 * (n + 1)) - A040976 (n + 1)

end

end A275988.P2489687966170012899

namespace A275988

/-- `A040976(3*(n+1))-A040976(n+1)` -/
def P2489687966170012899.Spec : Prop :=
  ∀ n, P2489687966170012899.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P6947165376184699735

`A065091(3*n+2)-record[A006530(n+2)]`
-/

namespace A275988.P6947165376184699735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275988.P6947165376184699735

namespace A275988

/-- `A065091(3*n+2)-record[A006530(n+2)]` -/
def P6947165376184699735.Spec : Prop :=
  ∀ n, P6947165376184699735.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P8755165670872350357

`A065091(3*n+2)-record[A020639(n+2)]`
-/

namespace A275988.P8755165670872350357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275988.P8755165670872350357

namespace A275988

/-- `A065091(3*n+2)-record[A020639(n+2)]` -/
def P8755165670872350357.Spec : Prop :=
  ∀ n, P8755165670872350357.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P12445787069682243115

`abs(A000040(Δ[n²]+n+2)-A000040(n+1))`
-/

namespace A275988.P12445787069682243115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 2 : ℤ)).toNat - A000040 (n + 1)|

end

end A275988.P12445787069682243115

namespace A275988

/-- `abs(A000040(Δ[n²]+n+2)-A000040(n+1))` -/
def P12445787069682243115.Spec : Prop :=
  ∀ n, P12445787069682243115.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P2059656510003281158

`A000040(Δ[(n+1)²]+n)-p?[A207790(n+1)]`
-/

namespace A275988.P2059656510003281158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A275988.P2059656510003281158

namespace A275988

/-- `A000040(Δ[(n+1)²]+n)-p?[A207790(n+1)]` -/
def P2059656510003281158.Spec : Prop :=
  ∀ n, P2059656510003281158.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P14357607206591820681

`A008578(A016777(n+1))-A008578(n+2)`
-/

namespace A275988.P14357607206591820681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A016777 (n + 1)).toNat - A008578 (n + 2)

end

end A275988.P14357607206591820681

namespace A275988

/-- `A008578(A016777(n+1))-A008578(n+2)` -/
def P14357607206591820681.Spec : Prop :=
  ∀ n, P14357607206591820681.a n = A275988 (n + 1)

end A275988

/-! ## A275988.P15313049282556103360

`record[A000040(A113655(n+1))]-A000040(n+1)`
-/

namespace A275988.P15313049282556103360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A113655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000040 (n + 1)

end

end A275988.P15313049282556103360

namespace A275988

/-- `record[A000040(A113655(n+1))]-A000040(n+1)` -/
def P15313049282556103360.Spec : Prop :=
  ∀ n, P15313049282556103360.a n = A275988 (n + 1)

end A275988

/-!
# A275989: a(n) = prime(prime(n)+1) - prime(n).

The programs for A275989, the canonical program `A275989.P8490521499288907832` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275989 has offset 1).

The definition of A275989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072677, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275989.P8490521499288907832

`A072677(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A275989

/-- `A072677(n+1)-A000040(n+1)` -/
def P8490521499288907832.Spec : Prop :=
  ∀ n, P8490521499288907832.a n = A275989 (n + 1)

theorem P8490521499288907832.correct : P8490521499288907832.Spec := by
  intro n
  simp only [A275989, Nat.add_sub_cancel]

end A275989

/-! ## A275989.P881113732274187285

`A000040(A008864(n+1))-A000040(n+1)`
-/

namespace A275989.P881113732274187285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008864 (n + 1)).toNat - A000040 (n + 1)

end

end A275989.P881113732274187285

namespace A275989

/-- `A000040(A008864(n+1))-A000040(n+1)` -/
def P881113732274187285.Spec : Prop :=
  ∀ n, P881113732274187285.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P14373182638613441663

`A168152(n+1)+A073124(n+1)`
-/

namespace A275989.P14373182638613441663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1) + A073124 (n + 1)

end

end A275989.P14373182638613441663

namespace A275989

/-- `A168152(n+1)+A073124(n+1)` -/
def P14373182638613441663.Spec : Prop :=
  ∀ n, P14373182638613441663.a n = A275989 (n + 1)

theorem P14373182638613441663.correct : P14373182638613441663.Spec := by
  intro n
  simp only [A275989, Nat.add_sub_cancel, A275989.P14373182638613441663.a, A275989.P8490521499288907832.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072677, A072677.P5065037936157036762.a, A073124, A073124.P4841457181950181251.a, A168152, A168152.P14558718132513138966.a, A001223, A001223.P5083310856331133973.a, A006450, A006450.P16445646407241112379.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275989

/-! ## A275989.P9177020004812085263

`A073123(n+1)-A006093(n+1)`
-/

namespace A275989.P9177020004812085263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073123 (n + 1) - A006093 (n + 1)

end

end A275989.P9177020004812085263

namespace A275989

/-- `A073123(n+1)-A006093(n+1)` -/
def P9177020004812085263.Spec : Prop :=
  ∀ n, P9177020004812085263.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P2830474844724726901

`A072677(n+1)+2-A052147(n+1)`
-/

namespace A275989.P2830474844724726901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) + (2 - A052147 (n + 1))

end

end A275989.P2830474844724726901

namespace A275989

/-- `A072677(n+1)+2-A052147(n+1)` -/
def P2830474844724726901.Spec : Prop :=
  ∀ n, P2830474844724726901.a n = A275989 (n + 1)

theorem P2830474844724726901.correct : P2830474844724726901.Spec := by
  intro n
  simp only [A275989, Nat.add_sub_cancel, A275989.P2830474844724726901.a, A275989.P8490521499288907832.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P6151996953021184291.f1, A052147.P6151996953021184291.a, A072677, A072677.P5065037936157036762.a, A001223, A001223.P5083310856331133973.a, A006450, A006450.P16445646407241112379.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275989

/-! ## A275989.P13901314803466984869

`A072677(n+1)-A008578(n+2)`
-/

namespace A275989.P13901314803466984869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - A008578 (n + 2)

end

end A275989.P13901314803466984869

namespace A275989

/-- `A072677(n+1)-A008578(n+2)` -/
def P13901314803466984869.Spec : Prop :=
  ∀ n, P13901314803466984869.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P3281251881417684210

`A072677(n+1)-A109763(2*n+1)`
-/

namespace A275989.P3281251881417684210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072677 (n + 1) - A109763 (2 * n + 1)

end

end A275989.P3281251881417684210

namespace A275989

/-- `A072677(n+1)-A109763(2*n+1)` -/
def P3281251881417684210.Spec : Prop :=
  ∀ n, P3281251881417684210.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P6050900089896979492

`A055670(A299763(n+2))-A299763(n+2)`
-/

namespace A275989.P6050900089896979492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A299763 (n + 2)).toNat - A299763 (n + 2)

end

end A275989.P6050900089896979492

namespace A275989

/-- `A055670(A299763(n+2))-A299763(n+2)` -/
def P6050900089896979492.Spec : Prop :=
  ∀ n, P6050900089896979492.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P8787939480871730327

`A014692(p?[abs(xor(n, -2))]+1)`
-/

namespace A275989.P8787939480871730327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A275989.P8787939480871730327

namespace A275989

/-- `A014692(p?[abs(xor(n, -2))]+1)` -/
def P8787939480871730327.Spec : Prop :=
  ∀ n, P8787939480871730327.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P10967979117447736490

`A014692(p?[xor(1, n)+1]+1)`
-/

namespace A275989.P10967979117447736490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A275989.P10967979117447736490

namespace A275989

/-- `A014692(p?[xor(1, n)+1]+1)` -/
def P10967979117447736490.Spec : Prop :=
  ∀ n, P10967979117447736490.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P2669959556795101974

`A014692(p?[n%3+n]+1)`
-/

namespace A275989.P2669959556795101974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A275989.P2669959556795101974

namespace A275989

/-- `A014692(p?[n%3+n]+1)` -/
def P2669959556795101974.Spec : Prop :=
  ∀ n, P2669959556795101974.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P1528287348946172741

`A014692(p?[round(sqrt(n)+n)]+1)`
-/

namespace A275989.P1528287348946172741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A275989.P1528287348946172741

namespace A275989

/-- `A014692(p?[round(sqrt(n)+n)]+1)` -/
def P1528287348946172741.Spec : Prop :=
  ∀ n, P1528287348946172741.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P3503533399912881233

`A014692(∑{d}[p?[n-(-1)^n], #])`
-/

namespace A275989.P3503533399912881233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A275989.P3503533399912881233

namespace A275989

/-- `A014692(∑{d}[p?[n-(-1)^n], #])` -/
def P3503533399912881233.Spec : Prop :=
  ∀ n, P3503533399912881233.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P1602009953009921796

`A014689(p?[xor(1, n)+1]+1)+1`
-/

namespace A275989.P1602009953009921796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 1

end

end A275989.P1602009953009921796

namespace A275989

/-- `A014689(p?[xor(1, n)+1]+1)+1` -/
def P1602009953009921796.Spec : Prop :=
  ∀ n, P1602009953009921796.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P3226573141975798706

`A065890(p?[xor(1, n)+1]+1)+2`
-/

namespace A275989.P3226573141975798706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) + 2

end

end A275989.P3226573141975798706

namespace A275989

/-- `A065890(p?[xor(1, n)+1]+1)+2` -/
def P3226573141975798706.Spec : Prop :=
  ∀ n, P3226573141975798706.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P17491301725487475598

`A014692(∑{p}[p?[n-(-1)^n], #]+1)`
-/

namespace A275989.P17491301725487475598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p + 1)

end

end A275989.P17491301725487475598

namespace A275989

/-- `A014692(∑{p}[p?[n-(-1)^n], #]+1)` -/
def P17491301725487475598.Spec : Prop :=
  ∀ n, P17491301725487475598.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P13998296939194486697

`A014692(root(p?[round(8*n/7)]², 4)²+1)`
-/

namespace A275989.P13998296939194486697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℝ) ^ (1 / (4 : ℝ))) ^ 2 + 1)).toNat

end

end A275989.P13998296939194486697

namespace A275989

/-- `A014692(root(p?[round(8*n/7)]², 4)²+1)` -/
def P13998296939194486697.Spec : Prop :=
  ∀ n, P13998296939194486697.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P7400728043928771264

`A065091(p?[n-(-1)^n])-p?[n-(-1)^n]`
-/

namespace A275989.P7400728043928771264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A275989.P7400728043928771264

namespace A275989

/-- `A065091(p?[n-(-1)^n])-p?[n-(-1)^n]` -/
def P7400728043928771264.Spec : Prop :=
  ∀ n, P7400728043928771264.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P12972487057173776823

`A014692(A008864(n+1))`
-/

namespace A275989.P12972487057173776823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (A008864 (n + 1)).toNat

end

end A275989.P12972487057173776823

namespace A275989

/-- `A014692(A008864(n+1))` -/
def P12972487057173776823.Spec : Prop :=
  ∀ n, P12972487057173776823.a n = A275989 (n + 1)

end A275989

/-! ## A275989.P14602470074455516659

`A014692(A028815(n+1))`
-/

namespace A275989.P14602470074455516659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (A028815 (n + 1)).toNat

end

end A275989.P14602470074455516659

namespace A275989

/-- `A014692(A028815(n+1))` -/
def P14602470074455516659.Spec : Prop :=
  ∀ n, P14602470074455516659.a n = A275989 (n + 1)

end A275989

/-!
# A275990: a(n) = prime(prime(n)-1) - prime(n).

The programs for A275990, the canonical program `A275990.P7805585595172944327` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275990 has offset 1).

The definition of A275990 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275990.P7805585595172944327

`A055003(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A275990

/-- `A055003(n+1)-A000040(n+1)` -/
def P7805585595172944327.Spec : Prop :=
  ∀ n, P7805585595172944327.a n = A275990 (n + 1)

theorem P7805585595172944327.correct : P7805585595172944327.Spec := by
  intro n
  simp only [A275990, Nat.add_sub_cancel]

end A275990

/-! ## A275990.P8028834788188071667

`A000040(A006093(n+1))-A000040(n+1)`
-/

namespace A275990.P8028834788188071667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006093 (n + 1)).toNat - A000040 (n + 1)

end

end A275990.P8028834788188071667

namespace A275990

/-- `A000040(A006093(n+1))-A000040(n+1)` -/
def P8028834788188071667.Spec : Prop :=
  ∀ n, P8028834788188071667.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P9511113893591293350

`A140853(n+1)-A006093(n+1)`
-/

namespace A275990.P9511113893591293350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (n + 1) - A006093 (n + 1)

end

end A275990.P9511113893591293350

namespace A275990

/-- `A140853(n+1)-A006093(n+1)` -/
def P9511113893591293350.Spec : Prop :=
  ∀ n, P9511113893591293350.a n = A275990 (n + 1)

theorem P9511113893591293350.correct : P9511113893591293350.Spec := by
  intro n
  simp only [A275990, Nat.add_sub_cancel, A275990.P9511113893591293350.a, A275990.P7805585595172944327.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A055003, A055003.P16368500312500081187.a, A140853, A140853.P323441421693498327.a, A175248, A175248.P3451421000021238238.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275990

/-! ## A275990.P1993092934925122306

`A055003(n+1)-(A006093(n+1)+1)`
-/

namespace A275990.P1993092934925122306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1) - (A006093 (n + 1) + 1)

end

end A275990.P1993092934925122306

namespace A275990

/-- `A055003(n+1)-(A006093(n+1)+1)` -/
def P1993092934925122306.Spec : Prop :=
  ∀ n, P1993092934925122306.a n = A275990 (n + 1)

theorem P1993092934925122306.correct : P1993092934925122306.Spec := by
  intro n
  simp only [A275990, Nat.add_sub_cancel, A275990.P1993092934925122306.a, A275990.P7805585595172944327.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A055003, A055003.P16368500312500081187.a, A175248, A175248.P3451421000021238238.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275990

/-! ## A275990.P4732824431461252221

`A140853(n+1)+1-A000040(n+1)`
-/

namespace A275990.P4732824431461252221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (n + 1) + (1 - A000040 (n + 1))

end

end A275990.P4732824431461252221

namespace A275990

/-- `A140853(n+1)+1-A000040(n+1)` -/
def P4732824431461252221.Spec : Prop :=
  ∀ n, P4732824431461252221.a n = A275990 (n + 1)

theorem P4732824431461252221.correct : P4732824431461252221.Spec := by
  intro n
  simp only [A275990, Nat.add_sub_cancel, A275990.P4732824431461252221.a, A275990.P7805585595172944327.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A055003, A055003.P16368500312500081187.a, A140853, A140853.P323441421693498327.a, A175248, A175248.P3451421000021238238.a, A008578, A008578.P3639467937083264764.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275990

/-! ## A275990.P1383001036177367420

`A055003(n+1)-A008578(n+2)`
-/

namespace A275990.P1383001036177367420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (n + 1) - A008578 (n + 2)

end

end A275990.P1383001036177367420

namespace A275990

/-- `A055003(n+1)-A008578(n+2)` -/
def P1383001036177367420.Spec : Prop :=
  ∀ n, P1383001036177367420.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P7485486468328397059

`A175248(n+2)-A000040(n+1)`
-/

namespace A275990.P7485486468328397059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 2) - A000040 (n + 1)

end

end A275990.P7485486468328397059

namespace A275990

/-- `A175248(n+2)-A000040(n+1)` -/
def P7485486468328397059.Spec : Prop :=
  ∀ n, P7485486468328397059.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P1281498733267900363

`A175248(n+2)-A008578(n+2)`
-/

namespace A275990.P1281498733267900363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (n + 2) - A008578 (n + 2)

end

end A275990.P1281498733267900363

namespace A275990

/-- `A175248(n+2)-A008578(n+2)` -/
def P1281498733267900363.Spec : Prop :=
  ∀ n, P1281498733267900363.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P2281042785682941776

`A140853(n+1)-record[A000010(n+1)]`
-/

namespace A275990.P2281042785682941776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275990.P2281042785682941776

namespace A275990

/-- `A140853(n+1)-record[A000010(n+1)]` -/
def P2281042785682941776.Spec : Prop :=
  ∀ n, P2281042785682941776.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P14209970827981878558

`A055670(A006093(n+1))-A055670(n+1)`
-/

namespace A275990.P14209970827981878558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (A006093 (n + 1)).toNat - A055670 (n + 1)

end

end A275990.P14209970827981878558

namespace A275990

/-- `A055670(A006093(n+1))-A055670(n+1)` -/
def P14209970827981878558.Spec : Prop :=
  ∀ n, P14209970827981878558.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P13573937804487966731

`A156037(A006093(n+1))-A156037(n+1)`
-/

namespace A275990.P13573937804487966731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A006093 (n + 1)).toNat - A156037 (n + 1)

end

end A275990.P13573937804487966731

namespace A275990

/-- `A156037(A006093(n+1))-A156037(n+1)` -/
def P13573937804487966731.Spec : Prop :=
  ∀ n, P13573937804487966731.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P892031382214283953

`A065890(A006093(n+1))`
-/

namespace A275990.P892031382214283953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A006093 (n + 1)).toNat

end

end A275990.P892031382214283953

namespace A275990

/-- `A065890(A006093(n+1))` -/
def P892031382214283953.Spec : Prop :=
  ∀ n, P892031382214283953.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P3332829889438635436

`A162177(A000040(n+1))`
-/

namespace A275990.P3332829889438635436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (A000040 (n + 1)).toNat

end

end A275990.P3332829889438635436

namespace A275990

/-- `A162177(A000040(n+1))` -/
def P3332829889438635436.Spec : Prop :=
  ∀ n, P3332829889438635436.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P8698875882552101590

`A162177(A006005(n+1))`
-/

namespace A275990.P8698875882552101590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (A006005 (n + 1)).toNat

end

end A275990.P8698875882552101590

namespace A275990

/-- `A162177(A006005(n+1))` -/
def P8698875882552101590.Spec : Prop :=
  ∀ n, P8698875882552101590.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P5135499190187571967

`A065890(A156037(n+1))`
-/

namespace A275990.P5135499190187571967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A156037 (n + 1)).toNat

end

end A275990.P5135499190187571967

namespace A275990

/-- `A065890(A156037(n+1))` -/
def P5135499190187571967.Spec : Prop :=
  ∀ n, P5135499190187571967.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P18229446043012705369

`A162177(A008578(n+2))`
-/

namespace A275990.P18229446043012705369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (A008578 (n + 2)).toNat

end

end A275990.P18229446043012705369

namespace A275990

/-- `A162177(A008578(n+2))` -/
def P18229446043012705369.Spec : Prop :=
  ∀ n, P18229446043012705369.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P16115293546338842572

`A162177(A075643(n+2))`
-/

namespace A275990.P16115293546338842572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (A075643 (n + 2)).toNat

end

end A275990.P16115293546338842572

namespace A275990

/-- `A162177(A075643(n+2))` -/
def P16115293546338842572.Spec : Prop :=
  ∀ n, P16115293546338842572.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P14288165480013629514

`A162177(A171525(n+2))`
-/

namespace A275990.P14288165480013629514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (A171525 (n + 2)).toNat

end

end A275990.P14288165480013629514

namespace A275990

/-- `A162177(A171525(n+2))` -/
def P14288165480013629514.Spec : Prop :=
  ∀ n, P14288165480013629514.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P8407856440433474517

`A162177(A182986(n+2))`
-/

namespace A275990.P8407856440433474517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (A182986 (n + 2)).toNat

end

end A275990.P8407856440433474517

namespace A275990

/-- `A162177(A182986(n+2))` -/
def P8407856440433474517.Spec : Prop :=
  ∀ n, P8407856440433474517.a n = A275990 (n + 1)

end A275990

/-! ## A275990.P10313096917787720812

`A065890(record[A000010(n+1)])`
-/

namespace A275990.P10313096917787720812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275990.P10313096917787720812

namespace A275990

/-- `A065890(record[A000010(n+1)])` -/
def P10313096917787720812.Spec : Prop :=
  ∀ n, P10313096917787720812.a n = A275990 (n + 1)

end A275990

/-!
# A275991: a(n) = prime(composite(n)) - prime(n).

The programs for A275991, the canonical program `A275991.P8659216433312454549` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275991 has offset 1).

The definition of A275991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088982, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275991.P8659216433312454549

`A088982(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A275991

/-- `A088982(n+1)-A000040(n+1)` -/
def P8659216433312454549.Spec : Prop :=
  ∀ n, P8659216433312454549.a n = A275991 (n + 1)

theorem P8659216433312454549.correct : P8659216433312454549.Spec := by
  intro n
  simp only [A275991, Nat.add_sub_cancel]

end A275991

/-! ## A275991.P2384493440369064135

`A000040(A002808(n+1))-A000040(n+1)`
-/

namespace A275991.P2384493440369064135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002808 (n + 1)).toNat - A000040 (n + 1)

end

end A275991.P2384493440369064135

namespace A275991

/-- `A000040(A002808(n+1))-A000040(n+1)` -/
def P2384493440369064135.Spec : Prop :=
  ∀ n, P2384493440369064135.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P10997165918019657123

`A088982(n+1)-Δ[A007504(n)]`
-/

namespace A275991.P10997165918019657123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - (f1 (n + 1) - f1 n)

end

end A275991.P10997165918019657123

namespace A275991

/-- `A088982(n+1)-Δ[A007504(n)]` -/
def P10997165918019657123.Spec : Prop :=
  ∀ n, P10997165918019657123.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P2043520989554519252

`A088982(n+1)-(A006093(n+1)+1)`
-/

namespace A275991.P2043520989554519252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - (A006093 (n + 1) + 1)

end

end A275991.P2043520989554519252

namespace A275991

/-- `A088982(n+1)-(A006093(n+1)+1)` -/
def P2043520989554519252.Spec : Prop :=
  ∀ n, P2043520989554519252.a n = A275991 (n + 1)

theorem P2043520989554519252.correct : P2043520989554519252.Spec := by
  intro n
  simp only [A275991, Nat.add_sub_cancel, A275991.P2043520989554519252.a, A275991.P8659216433312454549.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A088982, A088982.P4156197862445489170.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275991

/-! ## A275991.P12785298587510022770

`A088982(n+1)+1-A008864(n+1)`
-/

namespace A275991.P12785298587510022770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) + (1 - A008864 (n + 1))

end

end A275991.P12785298587510022770

namespace A275991

/-- `A088982(n+1)+1-A008864(n+1)` -/
def P12785298587510022770.Spec : Prop :=
  ∀ n, P12785298587510022770.a n = A275991 (n + 1)

theorem P12785298587510022770.correct : P12785298587510022770.Spec := by
  intro n
  simp only [A275991, Nat.add_sub_cancel, A275991.P12785298587510022770.a, A275991.P8659216433312454549.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A088982, A088982.P4156197862445489170.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275991

/-! ## A275991.P14675439058490257718

`A007821(n+2)-p?[ceil(2/acot(n))]`
-/

namespace A275991.P14675439058490257718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275991.P14675439058490257718

namespace A275991

/-- `A007821(n+2)-p?[ceil(2/acot(n))]` -/
def P14675439058490257718.Spec : Prop :=
  ∀ n, P14675439058490257718.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P12702025432230730149

`A007821(n+2)-Δ[A007504(n)]`
-/

namespace A275991.P12702025432230730149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - (f1 (n + 1) - f1 n)

end

end A275991.P12702025432230730149

namespace A275991

/-- `A007821(n+2)-Δ[A007504(n)]` -/
def P12702025432230730149.Spec : Prop :=
  ∀ n, P12702025432230730149.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P1590494929735707029

`A007821(n+2)-A000040(n+1)`
-/

namespace A275991.P1590494929735707029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - A000040 (n + 1)

end

end A275991.P1590494929735707029

namespace A275991

/-- `A007821(n+2)-A000040(n+1)` -/
def P1590494929735707029.Spec : Prop :=
  ∀ n, P1590494929735707029.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P11747691909417926352

`A088982(n+1)-A008578(n+2)`
-/

namespace A275991.P11747691909417926352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088982 (n + 1) - A008578 (n + 2)

end

end A275991.P11747691909417926352

namespace A275991

/-- `A088982(n+1)-A008578(n+2)` -/
def P11747691909417926352.Spec : Prop :=
  ∀ n, P11747691909417926352.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P1899537564914663695

`A309649(n+2)-A000040(n+1)`
-/

namespace A275991.P1899537564914663695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309649 (n + 2) - A000040 (n + 1)

end

end A275991.P1899537564914663695

namespace A275991

/-- `A309649(n+2)-A000040(n+1)` -/
def P1899537564914663695.Spec : Prop :=
  ∀ n, P1899537564914663695.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P15918257855084059091

`A007821(n+2)-A008578(n+2)`
-/

namespace A275991.P15918257855084059091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - A008578 (n + 2)

end

end A275991.P15918257855084059091

namespace A275991

/-- `A007821(n+2)-A008578(n+2)` -/
def P15918257855084059091.Spec : Prop :=
  ∀ n, P15918257855084059091.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P5721497319641414567

`A007821(n+2)-A182986(n+2)`
-/

namespace A275991.P5721497319641414567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 2) - A182986 (n + 2)

end

end A275991.P5721497319641414567

namespace A275991

/-- `A007821(n+2)-A182986(n+2)` -/
def P5721497319641414567.Spec : Prop :=
  ∀ n, P5721497319641414567.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P4647330822860544008

`A309649(n+2)-A008578(n+2)`
-/

namespace A275991.P4647330822860544008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309649 (n + 2) - A008578 (n + 2)

end

end A275991.P4647330822860544008

namespace A275991

/-- `A309649(n+2)-A008578(n+2)` -/
def P4647330822860544008.Spec : Prop :=
  ∀ n, P4647330822860544008.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P9840307658496571110

`A073168(n+1)+A022449(n+2)-A000040(n+1)`
-/

namespace A275991.P9840307658496571110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073168 (n + 1) + (A022449 (n + 2) - A000040 (n + 1))

end

end A275991.P9840307658496571110

namespace A275991

/-- `A073168(n+1)+A022449(n+2)-A000040(n+1)` -/
def P9840307658496571110.Spec : Prop :=
  ∀ n, P9840307658496571110.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P4834284652437677083

`A000720(n+1)+A007821(n+2)-A100486(n+1)`
-/

namespace A275991.P4834284652437677083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A007821 (n + 2) - A100486 (n + 1))

end

end A275991.P4834284652437677083

namespace A275991

/-- `A000720(n+1)+A007821(n+2)-A100486(n+1)` -/
def P4834284652437677083.Spec : Prop :=
  ∀ n, P4834284652437677083.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P6499419526251245993

`A018252(n+2)+A168285(n+2)-A000040(n+1)`
-/

namespace A275991.P6499419526251245993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (A168285 (n + 2) - A000040 (n + 1))

end

end A275991.P6499419526251245993

namespace A275991

/-- `A018252(n+2)+A168285(n+2)-A000040(n+1)` -/
def P6499419526251245993.Spec : Prop :=
  ∀ n, P6499419526251245993.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P15344972194207124167

`A144570(n+2)+A168271(n+2)-A000040(n+1)`
-/

namespace A275991.P15344972194207124167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 2) + (A168271 (n + 2) - A000040 (n + 1))

end

end A275991.P15344972194207124167

namespace A275991

/-- `A144570(n+2)+A168271(n+2)-A000040(n+1)` -/
def P15344972194207124167.Spec : Prop :=
  ∀ n, P15344972194207124167.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P9063123662242894424

`A000040(comp[p?[2*n+1]-3]+3)-p?[n%3+n]`
-/

namespace A275991.P9063123662242894424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3) - (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A275991.P9063123662242894424

namespace A275991

/-- `A000040(comp[p?[2*n+1]-3]+3)-p?[n%3+n]` -/
def P9063123662242894424.Spec : Prop :=
  ∀ n, P9063123662242894424.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P10494772799533607264

`A000040(Δ[A053767(n)])-A000040(n+1)`
-/

namespace A275991.P10494772799533607264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat - A000040 (n + 1)

end

end A275991.P10494772799533607264

namespace A275991

/-- `A000040(Δ[A053767(n)])-A000040(n+1)` -/
def P10494772799533607264.Spec : Prop :=
  ∀ n, P10494772799533607264.a n = A275991 (n + 1)

end A275991

/-! ## A275991.P10581752219537751641

`A006093(Δ[A053767(n)])-A006093(n+1)`
-/

namespace A275991.P10581752219537751641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (f1 (n + 1) - f1 n).toNat - A006093 (n + 1)

end

end A275991.P10581752219537751641

namespace A275991

/-- `A006093(Δ[A053767(n)])-A006093(n+1)` -/
def P10581752219537751641.Spec : Prop :=
  ∀ n, P10581752219537751641.a n = A275991 (n + 1)

end A275991

/-!
# A275992: Number of times n occurs in A022290.

The programs for A275992, there is no canonical definition to state claims against.
-/

/-! ## A275992.P5377309517410328489

`A000119(A022290(n))`
-/

namespace A275992.P5377309517410328489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A022290 n).toNat

end

end A275992.P5377309517410328489

/-! ## A275992.P7327595942843976472

`A239002(A022290(2*n))`
-/

namespace A275992.P7327595942843976472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A022290 (2 * n)).toNat

end

end A275992.P7327595942843976472

/-! ## A275992.P12711351467404555392

`A239003(A022290(2*n)+A022290(n))`
-/

namespace A275992.P12711351467404555392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A022290 (2 * n) + A022290 n).toNat

end

end A275992.P12711351467404555392

/-! ## A275992.P7446631568056941307

`A239003(A022290(4*n))`
-/

namespace A275992.P7446631568056941307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A022290 (4 * n)).toNat

end

end A275992.P7446631568056941307

/-! ## A275992.P14396055643857338215

`A000119(∑{digits}[A063013(2*n), A000045(#)])`
-/

namespace A275992.P14396055643857338215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum.toNat

end

end A275992.P14396055643857338215

/-!
# A275994: Numerators of coefficients in the asymptotic expansion of the logarithm of the central binomial coefficient.

The programs for A275994, there is no canonical definition to state claims against.
-/

/-! ## A275994.P16561512771696176513

`A198631(Δ[n²])`
-/

namespace A275994.P16561512771696176513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A275994.P16561512771696176513

/-! ## A275994.P15779037390906571778

`A237717(Δ[n²])`
-/

namespace A275994.P15779037390906571778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A275994.P15779037390906571778

/-! ## A275994.P6742369247261828227

`or(1, A198631(2*n+1))`
-/

namespace A275994.P6742369247261828227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A198631 (2 * n + 1))

end

end A275994.P6742369247261828227

/-! ## A275994.P4352625048856427426

`(-1)^n*A002425(n+1)`
-/

namespace A275994.P4352625048856427426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002425 (n + 1)

end

end A275994.P4352625048856427426

/-! ## A275994.P15037864134215381614

`A089170(n)*A089171(n)`
-/

namespace A275994.P15037864134215381614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n * A089171 n

end

end A275994.P15037864134215381614

/-!
# A275995: Denominators of coefficients in the asymptotic expansion of the logarithm of the central binomial coefficient.

The programs for A275995, there is no canonical definition to state claims against.
-/

/-! ## A275995.P6438302417798826617

`8*A000079(n)²*A219931(n+1)`
-/

namespace A275995.P6438302417798826617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000079 n ^ 2 * A219931 (n + 1)

end

end A275995.P6438302417798826617

/-! ## A275995.P1522507453603758738

`A000079(2*(n+1)+1)*A219931(n+1)`
-/

namespace A275995.P1522507453603758738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1) + 1) * A219931 (n + 1)

end

end A275995.P1522507453603758738

/-! ## A275995.P4824518769833576895

`lcm(A002262(A080856(2*n+1)), A255932(n+1))`
-/

namespace A275995.P4824518769833576895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002262 (A080856 (2 * n + 1)).toNat) (A255932 (n + 1))

end

end A275995.P4824518769833576895

/-!
# A275997: Numbers k whose deficiency is 64: 2k - sigma(k) = 64.

The programs for A275997, there is no canonical definition to state claims against.
-/

/-! ## A275997.P15786155343265396122

`eq[64, A033879(A028310(n))]`
-/

namespace A275997.P15786155343265396122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275997.P15786155343265396122

