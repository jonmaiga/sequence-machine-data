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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A167401: a(n) is the smallest number k such that n*k has twice as many divisors as k.

The programs for A167401, there is no canonical definition to state claims against.
-/

/-! ## A167401.P12340079297416280588

`gcd((n+2)², A000027(A003418(n)))`
-/

namespace A167401.P12340079297416280588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2) ^ 2 : ℤ) (A000027 (A003418 n).toNat)

end

end A167401.P12340079297416280588

/-! ## A167401.P725436338456607417

`gcd(record[A106410(n+1)], A003418(n))`
-/

namespace A167401.P725436338456607417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A003418 n)

end

end A167401.P725436338456607417

/-! ## A167401.P11002784103095972361

`gcd(A000027(A002944(n+1)), A000290(n+2))`
-/

namespace A167401.P11002784103095972361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A002944 (n + 1)).toNat) (A000290 (n + 2))

end

end A167401.P11002784103095972361

/-! ## A167401.P14364018674422977396

`gcd(A000027(A069220(n+1)), A007955(n+2))`
-/

namespace A167401.P14364018674422977396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (A069220 (n + 1)).toNat) (A007955 (n + 2))

end

end A167401.P14364018674422977396

/-! ## A167401.P7806531727667677229

`A372835((A187829(n+1)+1)²)`
-/

namespace A167401.P7806531727667677229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372835 ((A187829 (n + 1) + 1) ^ 2).toNat

end

end A167401.P7806531727667677229

/-!
# A167402: Number of n-step walks on square lattice, self-avoiding until the last step.

The programs for A167402, there is no canonical definition to state claims against.
-/

/-! ## A167402.P2020464303637067373

`A098617(n)-A000005(A346646(n))`
-/

namespace A167402.P2020464303637067373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098617 n - A000005 (A346646 n).toNat

end

end A167402.P2020464303637067373

/-! ## A167402.P14419315122471786405

`A171949(A001997(n))`
-/

namespace A167402.P14419315122471786405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171949 (A001997 n).toNat

end

end A167402.P14419315122471786405

/-!
# A167403: Number of decimal numbers having n or fewer digits and having the sum of their digits equal to n.

The programs for A167403, there is no canonical definition to state claims against.
-/

/-! ## A167403.P16569898191755966288

`A130835(n+1)/Δ[A014824(n)]`
-/

namespace A167403.P16569898191755966288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130835 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A167403.P16569898191755966288

/-! ## A167403.P6429810026596172985

`A130835(n+1)/A000042(n+1)`
-/

namespace A167403.P6429810026596172985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130835 (n + 1) : ℚ) / (A000042 (n + 1) : ℚ)

end

end A167403.P6429810026596172985

/-! ## A167403.P1250175977119232812

`A130835(n+1)/A002275(n+1)`
-/

namespace A167403.P1250175977119232812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130835 (n + 1) : ℚ) / (A002275 (n + 1) : ℚ)

end

end A167403.P1250175977119232812

/-! ## A167403.P2030199763218477218

`A130835(n+1)/A131664(A000124(n))`
-/

namespace A167403.P2030199763218477218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130835 (n + 1) : ℚ) / (A131664 (A000124 n).toNat : ℚ)

end

end A167403.P2030199763218477218

/-! ## A167403.P11094484771841441721

`A130835(n+1)/A131664(A084265(n))`
-/

namespace A167403.P11094484771841441721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130835 (n + 1) : ℚ) / (A131664 (A084265 n).toNat : ℚ)

end

end A167403.P11094484771841441721

/-! ## A167403.P1091963042080674438

`A130835(n+1)/A131664(A133263(n))`
-/

namespace A167403.P1091963042080674438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130835 (n + 1) : ℚ) / (A131664 (A133263 n).toNat : ℚ)

end

end A167403.P1091963042080674438

/-! ## A167403.P17576564463413430702

`A130835(n+1)/A131664(A236453(n))`
-/

namespace A167403.P17576564463413430702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130835 (n + 1) : ℚ) / (A131664 (A236453 n).toNat : ℚ)

end

end A167403.P17576564463413430702

/-!
# A167404: Complete lower trim array of the Wythoff fractal sequence, A003603, read by descending antidiagonals.

The programs for A167404, there is no canonical definition to state claims against.
-/

/-! ## A167404.P7258107931625966977

`A082064(A266898(n)^A265743(n))`
-/

namespace A167404.P7258107931625966977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082064 (SequenceMachineLib.roundAway ((A266898 n : ℚ) ^ (A265743 n : ℤ))).toNat

end

end A167404.P7258107931625966977

/-! ## A167404.P5149926464373441205

`A001222(or(A040292(n), A217730(n)))`
-/

namespace A167404.P5149926464373441205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A040292 n) (A217730 n)).toNat

end

end A167404.P5149926464373441205

/-! ## A167404.P16218738713063662038

`A115583(floor(sqrt(A212561(2*(n+1)))))`
-/

namespace A167404.P16218738713063662038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (Int.sqrt (A212561 (2 * (n + 1)))).toNat

end

end A167404.P16218738713063662038

/-! ## A167404.P13946901197735487636

`A076259(A326179(n)+A074829(n+1))`
-/

namespace A167404.P13946901197735487636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A326179 n + A074829 (n + 1)).toNat

end

end A167404.P13946901197735487636

/-!
# A167406: Sequence a(n) gives the number of ways to seat 2n people around a circular table so that person i does not sit across from person n+i for any 1 <= i <= n.

The programs for A167406, there is no canonical definition to state claims against.
-/

/-! ## A167406.P9637357807041432660

`A189849(n+1)/(2*(n+1))`
-/

namespace A167406.P9637357807041432660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189849 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A167406.P9637357807041432660

/-! ## A167406.P15458965760454863554

`A000165(n)*A053871(n+1)`
-/

namespace A167406.P15458965760454863554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A053871 (n + 1)

end

end A167406.P15458965760454863554

/-! ## A167406.P4483591418106511112

`2*A000165(n)*A179540(n)`
-/

namespace A167406.P4483591418106511112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000165 n * A179540 n)

end

end A167406.P4483591418106511112

/-! ## A167406.P2216534841415805703

`A006882(2*n)*A053871(n+1)`
-/

namespace A167406.P2216534841415805703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n) * A053871 (n + 1)

end

end A167406.P2216534841415805703

/-! ## A167406.P16033298083111254656

`A037223(2*n)*A053871(n+1)`
-/

namespace A167406.P16033298083111254656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (2 * n) * A053871 (n + 1)

end

end A167406.P16033298083111254656

/-!
# A167407: T(m,n) is -m if n=0, 1 elsewhere.

The programs for A167407, the canonical program `A167407.P342284988497035596` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167407 has offset 0).

The definition of A167407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167407.P9535768547500328577

`1-round(sqrt(2*(n+1)))*char[∑[n]]`
-/

namespace A167407.P9535768547500328577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167407.P9535768547500328577

namespace A167407

/-- `1-round(sqrt(2*(n+1)))*char[∑[n]]` -/
def P9535768547500328577.Spec : Prop :=
  ∀ n, P9535768547500328577.a n = A167407 n

end A167407

/-! ## A167407.P342284988497035596

`floor((2-A198954(n))/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167407

/-- `floor((2-A198954(n))/2)` -/
def P342284988497035596.Spec : Prop :=
  ∀ n, P342284988497035596.a n = A167407 n

theorem P342284988497035596.correct : P342284988497035596.Spec := by
  intro n
  simp only [A167407]

end A167407

/-! ## A167407.P11618423823400288059

`floor((2-abs(A010816(n)))/2)`
-/

namespace A167407.P11618423823400288059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - |A010816 n| : ℚ) / 2⌋

end

end A167407.P11618423823400288059

namespace A167407

/-- `floor((2-abs(A010816(n)))/2)` -/
def P11618423823400288059.Spec : Prop :=
  ∀ n, P11618423823400288059.a n = A167407 n

end A167407

/-! ## A167407.P6508823895188551191

`round((1-Δ[A274093(n)²])/2)`
-/

namespace A167407.P6508823895188551191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - (f1 (n + 1) - f1 n) : ℚ) / 2)

end

end A167407.P6508823895188551191

namespace A167407

/-- `round((1-Δ[A274093(n)²])/2)` -/
def P6508823895188551191.Spec : Prop :=
  ∀ n, P6508823895188551191.a n = A167407 n

end A167407

/-! ## A167407.P5706384679516003244

`Δ[n-A000124(round(sqrt(2*n)))]`
-/

namespace A167407.P5706384679516003244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000124 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P5706384679516003244

namespace A167407

/-- `Δ[n-A000124(round(sqrt(2*n)))]` -/
def P5706384679516003244.Spec : Prop :=
  ∀ n, P5706384679516003244.a n = A167407 n

end A167407

/-! ## A167407.P7365547186067938048

`Δ[-A025581(floor(n²/(n+1)))]`
-/

namespace A167407.P7365547186067938048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A025581 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P7365547186067938048

namespace A167407

/-- `Δ[-A025581(floor(n²/(n+1)))]` -/
def P7365547186067938048.Spec : Prop :=
  ∀ n, P7365547186067938048.a n = A167407 n

end A167407

/-! ## A167407.P18164514502656360243

`Δ[-A004736(A028310(n))]`
-/

namespace A167407.P18164514502656360243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004736 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P18164514502656360243

namespace A167407

/-- `Δ[-A004736(A028310(n))]` -/
def P18164514502656360243.Spec : Prop :=
  ∀ n, P18164514502656360243.a n = A167407 n

end A167407

/-! ## A167407.P7429006340269048212

`Δ[-A057554(A004277(n))]`
-/

namespace A167407.P7429006340269048212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057554 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P7429006340269048212

namespace A167407

/-- `Δ[-A057554(A004277(n))]` -/
def P7429006340269048212.Spec : Prop :=
  ∀ n, P7429006340269048212.a n = A167407 n

end A167407

/-! ## A167407.P11119551433749849711

`(-A003056(n))^A073423(n)`
-/

namespace A167407.P11119551433749849711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A003056 n : ℚ) ^ (A073423 n : ℤ)

end

end A167407.P11119551433749849711

namespace A167407

/-- `(-A003056(n))^A073423(n)` -/
def P11119551433749849711.Spec : Prop :=
  ∀ n, P11119551433749849711.a n = (A167407 n : ℚ)

end A167407

/-! ## A167407.P12643350053902301562

`(-A025581(n))^A073423(n)`
-/

namespace A167407.P12643350053902301562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A025581 n : ℚ) ^ (A073423 n : ℤ)

end

end A167407.P12643350053902301562

namespace A167407

/-- `(-A025581(n))^A073423(n)` -/
def P12643350053902301562.Spec : Prop :=
  ∀ n, P12643350053902301562.a n = (A167407 n : ℚ)

end A167407

/-! ## A167407.P10376973514476757240

`-((Δ[A123578(n)²]-1)/(char[∑[n]]+1))`
-/

namespace A167407.P10376973514476757240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((f1 (n + 1) - f1 n - 1 : ℚ) / (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℚ))

end

end A167407.P10376973514476757240

namespace A167407

/-- `-((Δ[A123578(n)²]-1)/(char[∑[n]]+1))` -/
def P10376973514476757240.Spec : Prop :=
  ∀ n, P10376973514476757240.a n = (A167407 n : ℚ)

end A167407

/-! ## A167407.P14739266306074563025

`Δ[A010054(n)-A193592(n)]`
-/

namespace A167407.P14739266306074563025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n - A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P14739266306074563025

namespace A167407

/-- `Δ[A010054(n)-A193592(n)]` -/
def P14739266306074563025.Spec : Prop :=
  ∀ n, P14739266306074563025.a n = A167407 n

end A167407

/-! ## A167407.P8429127902441963113

`Δ[-A004736(A000007(n)+n)]`
-/

namespace A167407.P8429127902441963113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004736 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P8429127902441963113

namespace A167407

/-- `Δ[-A004736(A000007(n)+n)]` -/
def P8429127902441963113.Spec : Prop :=
  ∀ n, P8429127902441963113.a n = A167407 n

end A167407

/-! ## A167407.P6197148828129143128

`Δ[-A002262(A038722(n+1))]`
-/

namespace A167407.P6197148828129143128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002262 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P6197148828129143128

namespace A167407

/-- `Δ[-A002262(A038722(n+1))]` -/
def P6197148828129143128.Spec : Prop :=
  ∀ n, P6197148828129143128.a n = A167407 n

end A167407

/-! ## A167407.P13024717382176194382

`Δ[-A004736(A080036(n))]`
-/

namespace A167407.P13024717382176194382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A004736 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P13024717382176194382

namespace A167407

/-- `Δ[-A004736(A080036(n))]` -/
def P13024717382176194382.Spec : Prop :=
  ∀ n, P13024717382176194382.a n = A167407 n

end A167407

/-! ## A167407.P16851219789555520779

`Δ[A337835(Δ[n²])]`
-/

namespace A167407.P16851219789555520779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P16851219789555520779

namespace A167407

/-- `Δ[A337835(Δ[n²])]` -/
def P16851219789555520779.Spec : Prop :=
  ∀ n, P16851219789555520779.a n = A167407 n

end A167407

/-! ## A167407.P6314792828209760832

`Δ[Δ[A337835(2*n+1)]*A337835(2*n+1)]`
-/

namespace A167407.P6314792828209760832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337835 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A337835 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167407.P6314792828209760832

namespace A167407

/-- `Δ[Δ[A337835(2*n+1)]*A337835(2*n+1)]` -/
def P6314792828209760832.Spec : Prop :=
  ∀ n, P6314792828209760832.a n = A167407 n

end A167407

/-! ## A167407.P14969889701721453407

`-A089263(A099627(n))`
-/

namespace A167407.P14969889701721453407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A089263 (A099627 n).toNat

end

end A167407.P14969889701721453407

namespace A167407

/-- `-A089263(A099627(n))` -/
def P14969889701721453407.Spec : Prop :=
  ∀ n, P14969889701721453407.a n = A167407 n

end A167407

/-!
# A167408: Orderly numbers: a number n is orderly if there exists some number k > tau(n) such that the set of the divisors of n is congruent to the set {1,2,...,tau(n)} mod k.

The programs for A167408, there is no canonical definition to state claims against.
-/

/-! ## A167408.P17666838244810186876

`eq[char[A167410(n+1)], A000007(n)]`
-/

namespace A167408.P17666838244810186876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167408.P17666838244810186876

/-! ## A167408.P15888185570120734324

`eq[char[A167410(n+1)], A000038(n)]`
-/

namespace A167408.P15888185570120734324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167408.P15888185570120734324

/-! ## A167408.P2348885426849871927

`eq[char[A167410(n+1)], A020761(n)]`
-/

namespace A167408.P2348885426849871927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167408.P2348885426849871927

/-! ## A167408.P16828671098247937668

`eq[1, A057427(n)+char[A167410(n+1)]]`
-/

namespace A167408.P16828671098247937668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167410 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167408.P16828671098247937668

/-! ## A167408.P9320547994864362135

`eq[char[A167410(n+1)], A151933(n)]`
-/

namespace A167408.P9320547994864362135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167410 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167408.P9320547994864362135

/-!
# A167410: Disorderly Numbers: numbers not in A167408 (orderly numbers).

The programs for A167410, there is no canonical definition to state claims against.
-/

/-! ## A167410.P7056387437466855160

`comp[A167408(n+1)-1]+1`
-/

namespace A167410.P7056387437466855160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167408 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A167410.P7056387437466855160

/-! ## A167410.P11424284275750849614

`comp[A167408(n-a(2%n))]` with `a(0)=0`
-/

namespace A167410.P11424284275750849614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A167408 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167410.P11424284275750849614

/-! ## A167410.P16300156649034903973

`eq[char[A167408(n+1)], A000007(n)]`
-/

namespace A167410.P16300156649034903973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167408 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167410.P16300156649034903973

/-! ## A167410.P2114051862921911975

`eq[char[A167408(n+1)], A000038(n)]`
-/

namespace A167410.P2114051862921911975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167408 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167410.P2114051862921911975

/-! ## A167410.P15826492386562519593

`eq[char[A167408(n+1)], A130706(n)]`
-/

namespace A167410.P15826492386562519593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167408 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167410.P15826492386562519593

/-! ## A167410.P11631755332155767918

`eq[char[A167408(n+1)], A154955(n+1)]`
-/

namespace A167410.P11631755332155767918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167408 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A167410.P11631755332155767918

/-!
# A167412: Primes p such that sum of (digits^2) + 1 is prime.

The programs for A167412, the canonical program `A167412.P9290723101573142584` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167412 has offset 1).

The definition of A167412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167412.P2903739851703087626

`p?[eq[0, A094830(A003132(n)+1)]]`
-/

namespace A167412.P2903739851703087626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094830 (A003132 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167412.P2903739851703087626

namespace A167412

/-- `p?[eq[0, A094830(A003132(n)+1)]]` -/
def P2903739851703087626.Spec : Prop :=
  ∀ n, (P2903739851703087626.a n : ℤ) = A167412 (n + 1)

end A167412

/-! ## A167412.P9290723101573142584

`p?[(n+1)*(A000005(A003132(n+1)+1)-1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167412

/-- `p?[(n+1)*(A000005(A003132(n+1)+1)-1)]` -/
def P9290723101573142584.Spec : Prop :=
  ∀ n, P9290723101573142584.a n = A167412 (n + 1)

theorem P9290723101573142584.correct : P9290723101573142584.Spec := by
  intro n
  simp only [A167412, Nat.add_sub_cancel]

end A167412

/-! ## A167412.P15588297249378338911

`eq[A002033(A003132(n)), A003415(n)]`
-/

namespace A167412.P15588297249378338911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167412.P15588297249378338911

namespace A167412

/-- `eq[A002033(A003132(n)), A003415(n)]` -/
def P15588297249378338911.Spec : Prop :=
  ∀ n, (P15588297249378338911.a n : ℤ) = A167412 (n + 1)

end A167412

/-! ## A167412.P6901130169024307899

`eq[A013632(A003132(n)), A210442(n)]`
-/

namespace A167412.P6901130169024307899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167412.P6901130169024307899

namespace A167412

/-- `eq[A013632(A003132(n)), A210442(n)]` -/
def P6901130169024307899.Spec : Prop :=
  ∀ n, (P6901130169024307899.a n : ℤ) = A167412 (n + 1)

end A167412

/-! ## A167412.P16217772268223411068

`p?[A002033(A003132(n))*A123108(2*n)]`
-/

namespace A167412.P16217772268223411068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A003132 n).toNat * A123108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167412.P16217772268223411068

namespace A167412

/-- `p?[A002033(A003132(n))*A123108(2*n)]` -/
def P16217772268223411068.Spec : Prop :=
  ∀ n, P16217772268223411068.a n = A167412 (n + 1)

end A167412

/-!
# A167413: Irregular array with the first differences of row A167384(n,.) in row n.

The programs for A167413, there is no canonical definition to state claims against.
-/

/-! ## A167413.P12874633334878206417

`Δ[A167384(n)]`
-/

namespace A167413.P12874633334878206417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167413.P12874633334878206417

/-! ## A167413.P1623262025281336667

`A167384(n+1)-A167384(n)`
-/

namespace A167413.P1623262025281336667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167384 (n + 1) - A167384 n

end

end A167413.P1623262025281336667

/-! ## A167413.P15814023854111262148

`A000523(ratio[A000079(A167384(n))])`
-/

namespace A167413.P15814023854111262148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A167384 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A167413.P15814023854111262148

/-! ## A167413.P15167984539359626034

`A001222(ratio[A000079(A167384(n))])`
-/

namespace A167413.P15167984539359626034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A167384 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A167413.P15167984539359626034

/-! ## A167413.P11034545630525742251

`A001222(ratio[A131577(A167384(n))])`
-/

namespace A167413.P11034545630525742251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A167384 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A167413.P11034545630525742251

/-! ## A167413.P8483970949349974191

`A275945(A167384(n+1)%(A167384(n)+1)+1)`
-/

namespace A167413.P8483970949349974191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275945 (Int.tmod (A167384 (n + 1)) (A167384 n + 1) + 1).toNat

end

end A167413.P8483970949349974191

/-!
# A167414: Primes p such that sum of their squared decimal digits, minus one, is prime.

The programs for A167414, there is no canonical definition to state claims against.
-/

/-! ## A167414.P400449615307503454

`p?[A302023(A006512(n+1)-A139140(n))]`
-/

namespace A167414.P400449615307503454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A006512 (n + 1) - A139140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167414.P400449615307503454

/-!
# A167415: Positive integers k such that there is no solution of the equation x^2 + y^2 + 3*x*y = 0 in Z/nZ except for the trivial one (0,0).

The programs for A167415, there is no canonical definition to state claims against.
-/

/-! ## A167415.P5521965816490844729

`record[∏{p}[n+2, A284152(#)]]`
-/

namespace A167415.P5521965816490844729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A284152 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167415.P5521965816490844729

/-! ## A167415.P12495819193270311153

`eq[1, A197928(n+2)]+2`
-/

namespace A167415.P12495819193270311153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197928 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A167415.P12495819193270311153

/-! ## A167415.P1907488238047486742

`record[(A028310(n)+1)/A197928(n+1)]`
-/

namespace A167415.P1907488238047486742
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n + 1 : ℚ) / (A197928 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167415.P1907488238047486742

/-! ## A167415.P4234028030981364749

`record[(A000007(n)+1+n)/A197928(n+1)]`
-/

namespace A167415.P4234028030981364749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1 + (n : ℤ) : ℚ) / (A197928 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167415.P4234028030981364749

/-! ## A167415.P4307018267245256045

`eq[A157928(n), A197928(A028310(n))]`
-/

namespace A167415.P4307018267245256045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197928 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167415.P4307018267245256045

/-! ## A167415.P12980316859352119129

`eq[A151800(n)%2, A197928(A028310(n))]`
-/

namespace A167415.P12980316859352119129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197928 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167415.P12980316859352119129

/-! ## A167415.P2247125971510783959

`lt[A197928(n+1), A001222(A307746(n+1)²)]+1`
-/

namespace A167415.P2247125971510783959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A307746 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A167415.P2247125971510783959

/-! ## A167415.P13736953747794504786

`lt[A197928(n+2), A000005(A197928(n+2)+1)]+2`
-/

namespace A167415.P13736953747794504786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197928 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A197928 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A167415.P13736953747794504786

/-!
# A167418: G.f.: 1/(1 - 4*x + 5*x^2 - 100*x^3).

The programs for A167418, the canonical program `A167418.P14897352866414224652` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167418 has offset 0).

The definition of A167418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167418.P14897352866414224652

`4*a(n-1)-5*a(n-2)+100*a(n-3)` with `a(0)=1, a(1)=4, a(2)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167418

/-- `4*a(n-1)-5*a(n-2)+100*a(n-3)` -/
def P14897352866414224652.Spec : Prop :=
  ∀ n, P14897352866414224652.a n = A167418 n

theorem P14897352866414224652.correct : P14897352866414224652.Spec := by
  intro n
  simp only [A167418]

end A167418

/-!
# A167419: Exchange adjacent nonprimes and primes.

The programs for A167419, there is no canonical definition to state claims against.
-/

/-! ## A167419.P16830315735219499569

`Δ[A000035(A030702(n))+∑[n]]`
-/

namespace A167419.P16830315735219499569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030702 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167419.P16830315735219499569

/-! ## A167419.P14045950913415062352

`A073846(C(2, C(3, n²))+n)%A128335(n+1)`
-/

namespace A167419.P14045950913415062352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073846 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n)) (A128335 (n + 1))

end

end A167419.P14045950913415062352

/-! ## A167419.P11882366662078077240

`A240328(A002525(n))+A073846(n+1)`
-/

namespace A167419.P11882366662078077240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A002525 n).toNat + A073846 (n + 1)

end

end A167419.P11882366662078077240

/-! ## A167419.P2406427232494126398

`A073846(n+1)-A010815(A109784(n))`
-/

namespace A167419.P2406427232494126398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1) - A010815 (A109784 n).toNat

end

end A167419.P2406427232494126398

/-!
# A167420: a(n) = 2^n mod 14.

The programs for A167420, the canonical program `A167420.P10521098338917881893` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167420 has offset 0).

The definition of A167420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%14` (program `A167420.P10521098338917881893`, by `A167420.P10521098338917881893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167420.P10521098338917881893

`(2^n)%14`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167420

/-- `(2^n)%14` -/
def P10521098338917881893.Spec : Prop :=
  ∀ n, (P10521098338917881893.a n : ℤ) = A167420 n

theorem P10521098338917881893.correct : P10521098338917881893.Spec := by
  intro n
  simp only [A167420]

end A167420

/-!
# A167421: 2^n mod 22.

The programs for A167421, the canonical program `A167421.P1903898703827011743` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167421 has offset 0).

The definition of A167421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%22` (program `A167421.P1903898703827011743`, by `A167421.P1903898703827011743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167421.P5139067388176067332

`a(n-1)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=10, a(6)=20`
-/

namespace A167421.P5139067388176067332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 10, 20] fun n a =>
  a (n - 1) - a (n - 5) + a (n - 6)

end

end A167421.P5139067388176067332

namespace A167421

/-- `a(n-1)-a(n-5)+a(n-6)` -/
def P5139067388176067332.Spec : Prop :=
  ∀ n, P5139067388176067332.a n = A167421 n

end A167421

/-! ## A167421.P1903898703827011743

`(2^n)%22`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167421

/-- `(2^n)%22` -/
def P1903898703827011743.Spec : Prop :=
  ∀ n, (P1903898703827011743.a n : ℤ) = A167421 n

theorem P1903898703827011743.correct : P1903898703827011743.Spec := by
  intro n
  simp only [A167421]

end A167421

/-!
# A167422: Expansion of (1+x)*c(x), c(x) the g.f. of A000108.

The programs for A167422, the canonical program `A167422.P17624924762505515996` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167422 has offset 0).

The definition of A167422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167422.P1133741345781591151

`A071716(n)+char[1]`
-/

namespace A167422.P1133741345781591151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167422.P1133741345781591151

namespace A167422

/-- `A071716(n)+char[1]` -/
def P1133741345781591151.Spec : Prop :=
  ∀ n, P1133741345781591151.a n = A167422 n

end A167422

/-! ## A167422.P9597655702125177922

`A104722(floor(n-atan(n))+n)`
-/

namespace A167422.P9597655702125177922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A167422.P9597655702125177922

namespace A167422

/-- `A104722(floor(n-atan(n))+n)` -/
def P9597655702125177922.Spec : Prop :=
  ∀ n, P9597655702125177922.a n = A167422 n

end A167422

/-! ## A167422.P4061289187017581184

`∑[A280891(round(acot(n)+n)-1)]`
-/

namespace A167422.P4061289187017581184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280891 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167422.P4061289187017581184

namespace A167422

/-- `∑[A280891(round(acot(n)+n)-1)]` -/
def P4061289187017581184.Spec : Prop :=
  ∀ n, P4061289187017581184.a n = A167422 n

end A167422

/-! ## A167422.P6453786625235149565

`A280891(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A167422.P6453786625235149565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A280891 (n - 1) + a (n - 1)

end

end A167422.P6453786625235149565

namespace A167422

/-- `A280891(n-1)+a(n-1)` -/
def P6453786625235149565.Spec : Prop :=
  ∀ n, P6453786625235149565.a n = A167422 n

end A167422

/-! ## A167422.P17624924762505515996

`A104722(A004275(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A167422

/-- `A104722(A004275(n))` -/
def P17624924762505515996.Spec : Prop :=
  ∀ n, P17624924762505515996.a n = A167422 n

theorem P17624924762505515996.correct : P17624924762505515996.Spec := by
  intro n
  simp only [A167422]

end A167422

/-! ## A167422.P11072643153982610417

`A104722(record[A029578(n)])`
-/

namespace A167422.P11072643153982610417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167422.P11072643153982610417

namespace A167422

/-- `A104722(record[A029578(n)])` -/
def P11072643153982610417.Spec : Prop :=
  ∀ n, P11072643153982610417.a n = A167422 n

end A167422

/-! ## A167422.P10296274399738614722

`A104722(eq[1, A093178(n)])`
-/

namespace A167422.P10296274399738614722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167422.P10296274399738614722

namespace A167422

/-- `A104722(eq[1, A093178(n)])` -/
def P10296274399738614722.Spec : Prop :=
  ∀ n, P10296274399738614722.a n = A167422 n

end A167422

/-! ## A167422.P7832868825636259759

`A104722(eq[1, A094024(n)])`
-/

namespace A167422.P7832868825636259759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167422.P7832868825636259759

namespace A167422

/-- `A104722(eq[1, A094024(n)])` -/
def P7832868825636259759.Spec : Prop :=
  ∀ n, P7832868825636259759.a n = A167422 n

end A167422

/-! ## A167422.P10083841760004392946

`A071716(n)*A373565(n)`
-/

namespace A167422.P10083841760004392946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071716 n * A373565 n

end

end A167422.P10083841760004392946

namespace A167422

/-- `A071716(n)*A373565(n)` -/
def P10083841760004392946.Spec : Prop :=
  ∀ n, P10083841760004392946.a n = A167422 n

end A167422

/-! ## A167422.P2575984928418709876

`lcm(A062557(n), A071716(n))`
-/

namespace A167422.P2575984928418709876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062557 n) (A071716 n)

end

end A167422.P2575984928418709876

namespace A167422

/-- `lcm(A062557(n), A071716(n))` -/
def P2575984928418709876.Spec : Prop :=
  ∀ n, (P2575984928418709876.a n : ℤ) = A167422 n

end A167422

/-! ## A167422.P9398518122081228801

`A068875(n)-Δ[A120588(n)]`
-/

namespace A167422.P9398518122081228801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - (f1 (n + 1) - f1 n)

end

end A167422.P9398518122081228801

namespace A167422

/-- `A068875(n)-Δ[A120588(n)]` -/
def P9398518122081228801.Spec : Prop :=
  ∀ n, P9398518122081228801.a n = A167422 n

end A167422

/-! ## A167422.P17100730918136106835

`A104722(record[n/A093178(n)])`
-/

namespace A167422.P17100730918136106835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A093178 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A167422.P17100730918136106835

namespace A167422

/-- `A104722(record[n/A093178(n)])` -/
def P17100730918136106835.Spec : Prop :=
  ∀ n, P17100730918136106835.a n = A167422 n

end A167422

/-! ## A167422.P17731568105813033116

`A120588(n)+A141351(n)-1`
-/

namespace A167422.P17731568105813033116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + (A141351 n - 1)

end

end A167422.P17731568105813033116

namespace A167422

/-- `A120588(n)+A141351(n)-1` -/
def P17731568105813033116.Spec : Prop :=
  ∀ n, P17731568105813033116.a n = A167422 n

end A167422

/-! ## A167422.P11625057689693982390

`(A063524(n)+1)*A071716(n)`
-/

namespace A167422.P11625057689693982390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063524 n + 1) * A071716 n

end

end A167422.P11625057689693982390

namespace A167422

/-- `(A063524(n)+1)*A071716(n)` -/
def P11625057689693982390.Spec : Prop :=
  ∀ n, P11625057689693982390.a n = A167422 n

end A167422

/-! ## A167422.P17237807711944862246

`A120588(n)+record[Δ[A097331(n)]]`
-/

namespace A167422.P17237807711944862246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167422.P17237807711944862246

namespace A167422

/-- `A120588(n)+record[Δ[A097331(n)]]` -/
def P17237807711944862246.Spec : Prop :=
  ∀ n, P17237807711944862246.a n = A167422 n

end A167422

/-! ## A167422.P2948542112444687754

`record[A126120(n+1)+A097331(n)]`
-/

namespace A167422.P2948542112444687754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1) + A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167422.P2948542112444687754

namespace A167422

/-- `record[A126120(n+1)+A097331(n)]` -/
def P2948542112444687754.Spec : Prop :=
  ∀ n, P2948542112444687754.a n = A167422 n

end A167422

/-! ## A167422.P15834405754738695655

`A120588(n)+record[A126120(n+1)]`
-/

namespace A167422.P15834405754738695655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167422.P15834405754738695655

namespace A167422

/-- `A120588(n)+record[A126120(n+1)]` -/
def P15834405754738695655.Spec : Prop :=
  ∀ n, P15834405754738695655.a n = A167422 n

end A167422

/-! ## A167422.P11978365252859483455

`A068875(n)-Δ[A000108(abs(1-n))]`
-/

namespace A167422.P11978365252859483455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n - (f1 (n + 1) - f1 n)

end

end A167422.P11978365252859483455

namespace A167422

/-- `A068875(n)-Δ[A000108(abs(1-n))]` -/
def P11978365252859483455.Spec : Prop :=
  ∀ n, P11978365252859483455.a n = A167422 n

end A167422

/-! ## A167422.P9754688237438855636

`A115142(n+1)-2*A115141(n+1)`
-/

namespace A167422.P9754688237438855636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115142 (n + 1) - 2 * A115141 (n + 1)

end

end A167422.P9754688237438855636

namespace A167422

/-- `A115142(n+1)-2*A115141(n+1)` -/
def P9754688237438855636.Spec : Prop :=
  ∀ n, P9754688237438855636.a n = A167422 n

end A167422

/-!
# A167423: Hankel transform of a simple Catalan convolution.

The programs for A167423, the canonical program `A167423.P13722598378046470781` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167423 has offset 0).

The definition of A167423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167423.P13722598378046470781

`A000045(2*n)*(1-3*n)/2+A000032(2*n)*(1-n)/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167423

/-- `A000045(2*n)*(1-3*n)/2+A000032(2*n)*(1-n)/2` -/
def P13722598378046470781.Spec : Prop :=
  ∀ n, P13722598378046470781.a n = (A167423 n : ℚ)

end A167423

/-! ## A167423.P9555574547313446746

`((1-3*n)*A000045(2*n)+(1-n)*A000032(2*n))/2`
-/

namespace A167423.P9555574547313446746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (3 * n : ℤ)) * A000045 (2 * n) + (1 - (n : ℤ)) * A000032 (2 * n) : ℚ) / 2

end

end A167423.P9555574547313446746

namespace A167423

/-- `((1-3*n)*A000045(2*n)+(1-n)*A000032(2*n))/2` -/
def P9555574547313446746.Spec : Prop :=
  ∀ n, P9555574547313446746.a n = (A167423 n : ℚ)

end A167423

/-! ## A167423.P3227491816640280159

`1-∑[n*A122367(n)]`
-/

namespace A167423.P3227491816640280159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A122367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167423.P3227491816640280159

namespace A167423

/-- `1-∑[n*A122367(n)]` -/
def P3227491816640280159.Spec : Prop :=
  ∀ n, P3227491816640280159.a n = A167423 n

end A167423

/-! ## A167423.P2091184591998858653

`1-∑[n*A000045(Δ[n²])]`
-/

namespace A167423.P2091184591998858653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167423.P2091184591998858653

namespace A167423

/-- `1-∑[n*A000045(Δ[n²])]` -/
def P2091184591998858653.Spec : Prop :=
  ∀ n, P2091184591998858653.a n = A167423 n

end A167423

/-! ## A167423.P17968477349279108114

`1-∑[n*Δ[A000045(2*n)]]`
-/

namespace A167423.P17968477349279108114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167423.P17968477349279108114

namespace A167423

/-- `1-∑[n*Δ[A000045(2*n)]]` -/
def P17968477349279108114.Spec : Prop :=
  ∀ n, P17968477349279108114.a n = A167423 n

end A167423

/-! ## A167423.P1819613484912648027

`∑[1-n*A000045(2*n+1)]-n`
-/

namespace A167423.P1819613484912648027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A167423.P1819613484912648027

namespace A167423

/-- `∑[1-n*A000045(2*n+1)]-n` -/
def P1819613484912648027.Spec : Prop :=
  ∀ n, P1819613484912648027.a n = A167423 n

end A167423

/-! ## A167423.P9370877984827698682

`a(n-1)-n*A000045(n+1+n)` with `a(0)=1`
-/

namespace A167423.P9370877984827698682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (n : ℤ) * A000045 (n + 1 + n)

end

end A167423.P9370877984827698682

namespace A167423

/-- `a(n-1)-n*A000045(n+1+n)` -/
def P9370877984827698682.Spec : Prop :=
  ∀ n, P9370877984827698682.a n = A167423 n

end A167423

/-! ## A167423.P13710804402298200431

`A059505(n+1)-A001871(n)`
-/

namespace A167423.P13710804402298200431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059505 (n + 1) - A001871 n

end

end A167423.P13710804402298200431

namespace A167423

/-- `A059505(n+1)-A001871(n)` -/
def P13710804402298200431.Spec : Prop :=
  ∀ n, P13710804402298200431.a n = A167423 n

end A167423

/-! ## A167423.P3712891866984355198

`A001519(n+1)-n*A001906(n+1)`
-/

namespace A167423.P3712891866984355198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - (n : ℤ) * A001906 (n + 1)

end

end A167423.P3712891866984355198

namespace A167423

/-- `A001519(n+1)-n*A001906(n+1)` -/
def P3712891866984355198.Spec : Prop :=
  ∀ n, P3712891866984355198.a n = A167423 n

end A167423

/-! ## A167423.P5923219966665614259

`A001519(n+1)-n*A088305(n+1)`
-/

namespace A167423.P5923219966665614259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - (n : ℤ) * A088305 (n + 1)

end

end A167423.P5923219966665614259

namespace A167423

/-- `A001519(n+1)-n*A088305(n+1)` -/
def P5923219966665614259.Spec : Prop :=
  ∀ n, P5923219966665614259.a n = A167423 n

end A167423

/-! ## A167423.P15807319184930055578

`A094967(2*n)-n*A001906(n+1)`
-/

namespace A167423.P15807319184930055578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (2 * n) - (n : ℤ) * A001906 (n + 1)

end

end A167423.P15807319184930055578

namespace A167423

/-- `A094967(2*n)-n*A001906(n+1)` -/
def P15807319184930055578.Spec : Prop :=
  ∀ n, P15807319184930055578.a n = A167423 n

end A167423

/-! ## A167423.P8572320863720904081

`A000045(2*n+1)-n*A001906(n+1)`
-/

namespace A167423.P8572320863720904081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (n : ℤ) * A001906 (n + 1)

end

end A167423.P8572320863720904081

namespace A167423

/-- `A000045(2*n+1)-n*A001906(n+1)` -/
def P8572320863720904081.Spec : Prop :=
  ∀ n, P8572320863720904081.a n = A167423 n

end A167423

/-! ## A167423.P15438820393301675456

`A005247(2*n+1)-n*A001906(n+1)`
-/

namespace A167423.P15438820393301675456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (2 * n + 1) - (n : ℤ) * A001906 (n + 1)

end

end A167423.P15438820393301675456

namespace A167423

/-- `A005247(2*n+1)-n*A001906(n+1)` -/
def P15438820393301675456.Spec : Prop :=
  ∀ n, P15438820393301675456.a n = A167423 n

end A167423

/-! ## A167423.P12128453106877544088

`A000045(2*n+1)-n*A088305(n+1)`
-/

namespace A167423.P12128453106877544088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (n : ℤ) * A088305 (n + 1)

end

end A167423.P12128453106877544088

namespace A167423

/-- `A000045(2*n+1)-n*A088305(n+1)` -/
def P12128453106877544088.Spec : Prop :=
  ∀ n, P12128453106877544088.a n = A167423 n

end A167423

/-! ## A167423.P9730920533189486593

`A001519(n+1)-n*A094966(2*(n+1))`
-/

namespace A167423.P9730920533189486593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - (n : ℤ) * A094966 (2 * (n + 1))

end

end A167423.P9730920533189486593

namespace A167423

/-- `A001519(n+1)-n*A094966(2*(n+1))` -/
def P9730920533189486593.Spec : Prop :=
  ∀ n, P9730920533189486593.a n = A167423 n

end A167423

/-! ## A167423.P13359802988620957614

`A324969(2*(n+1))-n*A001906(n+1)`
-/

namespace A167423.P13359802988620957614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 * (n + 1)) - (n : ℤ) * A001906 (n + 1)

end

end A167423.P13359802988620957614

namespace A167423

/-- `A324969(2*(n+1))-n*A001906(n+1)` -/
def P13359802988620957614.Spec : Prop :=
  ∀ n, P13359802988620957614.a n = A167423 n

end A167423

/-! ## A167423.P13987830056360312686

`A000045(2*n+1)-n*A052952(2*n)`
-/

namespace A167423.P13987830056360312686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (n : ℤ) * A052952 (2 * n)

end

end A167423.P13987830056360312686

namespace A167423

/-- `A000045(2*n+1)-n*A052952(2*n)` -/
def P13987830056360312686.Spec : Prop :=
  ∀ n, P13987830056360312686.a n = A167423 n

end A167423

/-! ## A167423.P12189616843923381397

`A000045(2*n+1)-n*A109794(2*n)`
-/

namespace A167423.P12189616843923381397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (n : ℤ) * A109794 (2 * n)

end

end A167423.P12189616843923381397

namespace A167423

/-- `A000045(2*n+1)-n*A109794(2*n)` -/
def P12189616843923381397.Spec : Prop :=
  ∀ n, P12189616843923381397.a n = A167423 n

end A167423

/-! ## A167423.P5596072689802480612

`A000045(2*n+1)-n*A147600(2*n)`
-/

namespace A167423.P5596072689802480612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - (n : ℤ) * A147600 (2 * n)

end

end A167423.P5596072689802480612

namespace A167423

/-- `A000045(2*n+1)-n*A147600(2*n)` -/
def P5596072689802480612.Spec : Prop :=
  ∀ n, P5596072689802480612.a n = A167423 n

end A167423

/-! ## A167423.P12394343387666570022

`A094967(2*n)-n*A094966(2*(n+1))`
-/

namespace A167423.P12394343387666570022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (2 * n) - (n : ℤ) * A094966 (2 * (n + 1))

end

end A167423.P12394343387666570022

namespace A167423

/-- `A094967(2*n)-n*A094966(2*(n+1))` -/
def P12394343387666570022.Spec : Prop :=
  ∀ n, P12394343387666570022.a n = A167423 n

end A167423

/-!
# A167424: Define a sequence of fractions by f(1) = 1/2, f(n+1) = (f(n)^2 + 1)/2; sequence gives numerators.

The programs for A167424, the canonical program `A167424.P16736349778928903200` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167424 has offset 0).

The definition of A167424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167424.P16736349778928903200

`a(n-1)²+4*(a(n-1)-a(n-2)²)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167424

/-- `a(n-1)²+4*(a(n-1)-a(n-2)²)²` -/
def P16736349778928903200.Spec : Prop :=
  ∀ n, P16736349778928903200.a n = A167424 n

theorem P16736349778928903200.correct : P16736349778928903200.Spec := by
  intro n
  simp only [A167424]

end A167424

/-! ## A167424.P14107018224946552547

`A011782(A000079(n))-A076628(n+1)`
-/

namespace A167424.P14107018224946552547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000079 n).toNat - A076628 (n + 1)

end

end A167424.P14107018224946552547

namespace A167424

/-- `A011782(A000079(n))-A076628(n+1)` -/
def P14107018224946552547.Spec : Prop :=
  ∀ n, P14107018224946552547.a n = A167424 n

end A167424

/-! ## A167424.P13589117970719439807

`A000079(A000079(n)-1)-A076628(n+1)`
-/

namespace A167424.P13589117970719439807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000079 n - 1).toNat - A076628 (n + 1)

end

end A167424.P13589117970719439807

namespace A167424

/-- `A000079(A000079(n)-1)-A076628(n+1)` -/
def P13589117970719439807.Spec : Prop :=
  ∀ n, P13589117970719439807.a n = A167424 n

end A167424

/-!
# A167425: a(n) = 2^n mod 26.

The programs for A167425, the canonical program `A167425.P17365954962161325698` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167425 has offset 0).

The definition of A167425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%26` (program `A167425.P17365954962161325698`, by `A167425.P17365954962161325698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167425.P969990393180551122

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=6, a(6)=12, a(7)=24`
-/

namespace A167425.P969990393180551122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 6, 12, 24] fun n a =>
  a (n - 1) - a (n - 6) + a (n - 7)

end

end A167425.P969990393180551122

namespace A167425

/-- `a(n-1)-a(n-6)+a(n-7)` -/
def P969990393180551122.Spec : Prop :=
  ∀ n, P969990393180551122.a n = A167425 n

end A167425

/-! ## A167425.P17365954962161325698

`(2^n)%26`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167425

/-- `(2^n)%26` -/
def P17365954962161325698.Spec : Prop :=
  ∀ n, (P17365954962161325698.a n : ℤ) = A167425 n

theorem P17365954962161325698.correct : P17365954962161325698.Spec := by
  intro n
  simp only [A167425]

end A167425

/-!
# A167426: a(n) = 2^n mod 28.

The programs for A167426, the canonical program `A167426.P257693743916129670` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167426 has offset 0).

The definition of A167426 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%28` (program `A167426.P257693743916129670`, by `A167426.P257693743916129670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167426.P9651203101253040458

`a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`
-/

namespace A167426.P9651203101253040458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16] fun n a =>
  a (n - 3)

end

end A167426.P9651203101253040458

namespace A167426

/-- `a(n-3)` -/
def P9651203101253040458.Spec : Prop :=
  ∀ n, (P9651203101253040458.a n : ℤ) = A167426 n

end A167426

/-! ## A167426.P257693743916129670

`(2^n)%28`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167426

/-- `(2^n)%28` -/
def P257693743916129670.Spec : Prop :=
  ∀ n, (P257693743916129670.a n : ℤ) = A167426 n

theorem P257693743916129670.correct : P257693743916129670.Spec := by
  intro n
  simp only [A167426]

end A167426

/-!
# A167427: Largest non-isolated nonprime < n-th non-isolated (or twin) prime.

The programs for A167427, there is no canonical definition to state claims against.
-/

/-! ## A167427.P5821891235356781057

`gcd(A094497(n), A144834(A080513(n)))`
-/

namespace A167427.P5821891235356781057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094497 n) (A144834 (A080513 n).toNat)

end

end A167427.P5821891235356781057

/-! ## A167427.P11778593945894975546

`A006875(A117155(A065033(n)))`
-/

namespace A167427.P11778593945894975546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006875 (A117155 (A065033 n).toNat).toNat

end

end A167427.P11778593945894975546

/-! ## A167427.P16307325578526905338

`A117155(A065033(n))-A219142(∑[n+1])`
-/

namespace A167427.P16307325578526905338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117155 (A065033 n).toNat - A219142 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167427.P16307325578526905338

/-! ## A167427.P6173490542325748291

`A117155(A065033(n))-A064989(A011782(n))`
-/

namespace A167427.P6173490542325748291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117155 (A065033 n).toNat - A064989 (A011782 n).toNat

end

end A167427.P6173490542325748291

/-! ## A167427.P3020070307719254955

`A117155(A065033(n))+A008683(A201793(n+1))`
-/

namespace A167427.P3020070307719254955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117155 (A065033 n).toNat + A008683 (A201793 (n + 1)).toNat

end

end A167427.P3020070307719254955

/-!
# A167430: Fractal sequence of the interspersion A163255.

The programs for A167430, there is no canonical definition to state claims against.
-/

/-! ## A167430.P10813132594089386593

`Δ[a(round(n-sqrt(n)))+n]` with `a(0)=0`
-/

namespace A167430.P10813132594089386593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A167430.P10813132594089386593

/-! ## A167430.P7071702279079160097

`-Δ[a(round(n-sqrt(n)))-n]` with `a(0)=0`
-/

namespace A167430.P7071702279079160097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A167430.P7071702279079160097

/-! ## A167430.P10844257209870112441

`n%∑[char[n²]]+n%floor(sqrt(n+1))+1`
-/

namespace A167430.P10844257209870112441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∑ j ∈ Finset.range (n + 1), f1 j) + (n % Nat.sqrt (n + 1) + 1)

end

end A167430.P10844257209870112441

/-! ## A167430.P11525131772660554299

`∑[char[(n+1)²]+char[n²]]-(C(ceil(2*sqrt(n+1)), 2)-n-(n-floor(sqrt(n)))-1)`
-/

namespace A167430.P11525131772660554299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - ((n : ℤ) - (Nat.sqrt n : ℤ)) - 1)

end

end A167430.P11525131772660554299

/-! ## A167430.P4922898850302981379

`A384688(n)+1`
-/

namespace A167430.P4922898850302981379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 n + 1

end

end A167430.P4922898850302981379

/-! ## A167430.P5163097060955841980

`A025643(n+1)+1`
-/

namespace A167430.P5163097060955841980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025643 (n + 1) + 1

end

end A167430.P5163097060955841980

/-! ## A167430.P6824939272499786370

`A163256(comp[n²])-1`
-/

namespace A167430.P6824939272499786370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163256 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A167430.P6824939272499786370

/-! ## A167430.P15920565424397068337

`A171746(comp[floor((n/2)²)])`
-/

namespace A167430.P15920565424397068337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171746 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A167430.P15920565424397068337

/-! ## A167430.P4668840838613836475

`val(A173195(n+1), 2)+1`
-/

namespace A167430.P4668840838613836475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173195 (n + 1)).toNat 2 + 1

end

end A167430.P4668840838613836475

/-! ## A167430.P3418687242181402017

`A002260(∑[char[n²]+2])-1`
-/

namespace A167430.P3418687242181402017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A167430.P3418687242181402017

/-!
# A167431: Riordan array (1-4x+4x^2, x(1-2x)).

The programs for A167431, the canonical program `A167431.P16806553982705127233` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167431 has offset 0).

The definition of A167431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167431.P16806553982705127233

`T(n-1,k-1)-2*T(n-2,k-1)` with `a(0)=1, a(1)=-4, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167431

/-- `T(n-1,k-1)-2*T(n-2,k-1)` -/
def P16806553982705127233.Spec : Prop :=
  ∀ n, P16806553982705127233.a n = A167431 n

theorem P16806553982705127233.correct : P16806553982705127233.Spec := by
  intro n
  simp only [A167431]

end A167431

/-! ## A167431.P17184880898173799906

`A110509(lt[1, A002262(n)])`
-/

namespace A167431.P17184880898173799906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167431.P17184880898173799906

namespace A167431

/-- `A110509(lt[1, A002262(n)])` -/
def P17184880898173799906.Spec : Prop :=
  ∀ n, P17184880898173799906.a n = A167431 n

end A167431

/-! ## A167431.P5095304124090631749

`A110509(eq[0, A103451(n)]+1)`
-/

namespace A167431.P5095304124090631749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A167431.P5095304124090631749

namespace A167431

/-- `A110509(eq[0, A103451(n)]+1)` -/
def P5095304124090631749.Spec : Prop :=
  ∀ n, P5095304124090631749.a n = A167431 n

end A167431

/-! ## A167431.P12668389560101246416

`A110509(eq[0, A097806(n)]+2)`
-/

namespace A167431.P12668389560101246416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A167431.P12668389560101246416

namespace A167431

/-- `A110509(eq[0, A097806(n)]+2)` -/
def P12668389560101246416.Spec : Prop :=
  ∀ n, P12668389560101246416.a n = A167431 n

end A167431

/-! ## A167431.P4781405723634767344

`A110509(eq[2, A154325(n)]+1)`
-/

namespace A167431.P4781405723634767344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A167431.P4781405723634767344

namespace A167431

/-- `A110509(eq[2, A154325(n)]+1)` -/
def P4781405723634767344.Spec : Prop :=
  ∀ n, P4781405723634767344.a n = A167431 n

end A167431

/-! ## A167431.P17651764612554140589

`A110509(lt[2, A002260(n+1)])`
-/

namespace A167431.P17651764612554140589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167431.P17651764612554140589

namespace A167431

/-- `A110509(lt[2, A002260(n+1)])` -/
def P17651764612554140589.Spec : Prop :=
  ∀ n, P17651764612554140589.a n = A167431 n

end A167431

/-! ## A167431.P11030675513116148863

`A110509(A131507(n)+4+n)`
-/

namespace A167431.P11030675513116148863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (A131507 n + 4 + (n : ℤ)).toNat

end

end A167431.P11030675513116148863

namespace A167431

/-- `A110509(A131507(n)+4+n)` -/
def P11030675513116148863.Spec : Prop :=
  ∀ n, P11030675513116148863.a n = A167431 n

end A167431

/-! ## A167431.P11250510181512521009

`A110509(lt[2, A004736(n+1)]+2)`
-/

namespace A167431.P11250510181512521009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A167431.P11250510181512521009

namespace A167431

/-- `A110509(lt[2, A004736(n+1)]+2)` -/
def P11250510181512521009.Spec : Prop :=
  ∀ n, P11250510181512521009.a n = A167431 n

end A167431

/-! ## A167431.P3464679302756332061

`A110509(lt[A004736(n+1), A003056(n)])`
-/

namespace A167431.P3464679302756332061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A167431.P3464679302756332061

namespace A167431

/-- `A110509(lt[A004736(n+1), A003056(n)])` -/
def P3464679302756332061.Spec : Prop :=
  ∀ n, P3464679302756332061.a n = A167431 n

end A167431

/-! ## A167431.P17682838526856314840

`A110509(A080036(n+1)+A003057(n+2))`
-/

namespace A167431.P17682838526856314840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 (A080036 (n + 1) + A003057 (n + 2)).toNat

end

end A167431.P17682838526856314840

namespace A167431

/-- `A110509(A080036(n+1)+A003057(n+2))` -/
def P17682838526856314840.Spec : Prop :=
  ∀ n, P17682838526856314840.a n = A167431 n

end A167431

/-!
# A167432: Riordan array (c(2x)^2,xc(2x)), c(x) the g.f. of A000108.

The programs for A167432, the canonical program `A167432.P1971588945599416429` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167432 has offset 0).

The definition of A167432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167432.P11978021504901224027

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A054445(n)`
-/

namespace A167432.P11978021504901224027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A054445 n : ℚ)

end

end A167432.P11978021504901224027

namespace A167432

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A054445(n)` -/
def P11978021504901224027.Spec : Prop :=
  ∀ n, P11978021504901224027.a n = (A167432 n : ℚ)

end A167432

/-! ## A167432.P1971588945599416429

`A110510(lt[1, A002262(n)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A167432

/-- `A110510(lt[1, A002262(n)])` -/
def P1971588945599416429.Spec : Prop :=
  ∀ n, P1971588945599416429.a n = A167432 n

theorem P1971588945599416429.correct : P1971588945599416429.Spec := by
  intro n
  simp only [A167432]

end A167432

/-! ## A167432.P2998442296715018080

`A110510(lt[1, A086810(n)])`
-/

namespace A167432.P2998442296715018080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167432.P2998442296715018080

namespace A167432

/-- `A110510(lt[1, A086810(n)])` -/
def P2998442296715018080.Spec : Prop :=
  ∀ n, P2998442296715018080.a n = A167432 n

end A167432

/-! ## A167432.P834022539790414967

`A110510(lt[1, A140531(n)])`
-/

namespace A167432.P834022539790414967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167432.P834022539790414967

namespace A167432

/-- `A110510(lt[1, A140531(n)])` -/
def P834022539790414967.Spec : Prop :=
  ∀ n, P834022539790414967.a n = A167432 n

end A167432

/-! ## A167432.P13795309160734424300

`A054445(n)*A130321(n)`
-/

namespace A167432.P13795309160734424300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054445 n * A130321 n

end

end A167432.P13795309160734424300

namespace A167432

/-- `A054445(n)*A130321(n)` -/
def P13795309160734424300.Spec : Prop :=
  ∀ n, P13795309160734424300.a n = A167432 n

end A167432

/-! ## A167432.P2589006945038539376

`A110510(lt[1, A085845(n)])`
-/

namespace A167432.P2589006945038539376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167432.P2589006945038539376

namespace A167432

/-- `A110510(lt[1, A085845(n)])` -/
def P2589006945038539376.Spec : Prop :=
  ∀ n, P2589006945038539376.a n = A167432 n

end A167432

/-!
# A167433: Row sums of the Riordan array (1-4*x+4*x^2, x*(1-2*x)) (A167431).

The programs for A167433, the canonical program `A167433.P13464093342049053221` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167433 has offset 0).

The definition of A167433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167433.P13464093342049053221

`a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=-3, a(2)=-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167433

/-- `a(n-1)-2*a(n-2)` -/
def P13464093342049053221.Spec : Prop :=
  ∀ n, P13464093342049053221.a n = A167433 n

theorem P13464093342049053221.correct : P13464093342049053221.Spec := by
  intro n
  simp only [A167433]

end A167433

/-! ## A167433.P14027028518148944972

`ogf((1-4x+4x^2)/(1-x+2x^2))`
-/

namespace A167433.P14027028518148944972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -1, 2] n

end

end A167433.P14027028518148944972

namespace A167433

/-- `ogf((1-4x+4x^2)/(1-x+2x^2))` -/
def P14027028518148944972.Spec : Prop :=
  ∀ n, P14027028518148944972.a n = A167433 n

end A167433

/-! ## A167433.P14801112692303982135

`a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=-3, a(2)=-1`
-/

namespace A167433.P14801112692303982135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, -1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2)

end

end A167433.P14801112692303982135

namespace A167433

/-- `a(n-1)-a(n-2)-a(n-2)` -/
def P14801112692303982135.Spec : Prop :=
  ∀ n, P14801112692303982135.a n = A167433 n

theorem P14801112692303982135.correct : P14801112692303982135.Spec := by
  intro n
  simp only [A167433, Nat.add_sub_cancel, A167433.P14801112692303982135.a, A167433.P13464093342049053221.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A167433

/-! ## A167433.P17020939102749086159

`A107920(A171463(n+1))`
-/

namespace A167433.P17020939102749086159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (A171463 (n + 1)).toNat

end

end A167433.P17020939102749086159

namespace A167433

/-- `A107920(A171463(n+1))` -/
def P17020939102749086159.Spec : Prop :=
  ∀ n, P17020939102749086159.a n = A167433 n

end A167433

/-! ## A167433.P9770743638782315599

`or(2, A078020(n+1))-∑[A078020(n)]`
-/

namespace A167433.P9770743638782315599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A078020 (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167433.P9770743638782315599

namespace A167433

/-- `or(2, A078020(n+1))-∑[A078020(n)]` -/
def P9770743638782315599.Spec : Prop :=
  ∀ n, P9770743638782315599.a n = A167433 n

end A167433

/-! ## A167433.P14335389348750157784

`or(2, A078020(n+1))-A107920(n+1)`
-/

namespace A167433.P14335389348750157784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A078020 (n + 1)) - A107920 (n + 1)

end

end A167433.P14335389348750157784

namespace A167433

/-- `or(2, A078020(n+1))-A107920(n+1)` -/
def P14335389348750157784.Spec : Prop :=
  ∀ n, P14335389348750157784.a n = A167433 n

end A167433

/-! ## A167433.P128410165713575892

`A107920(A027379(n+1)-A027379(n))`
-/

namespace A167433.P128410165713575892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (A027379 (n + 1) - A027379 n).toNat

end

end A167433.P128410165713575892

namespace A167433

/-- `A107920(A027379(n+1)-A027379(n))` -/
def P128410165713575892.Spec : Prop :=
  ∀ n, P128410165713575892.a n = A167433 n

end A167433

/-! ## A167433.P6591809120220409176

`A107920(gcd(2, A078008(n))+n+1)`
-/

namespace A167433.P6591809120220409176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (Int.gcd 2 (A078008 n) + (n + 1))

end

end A167433.P6591809120220409176

namespace A167433

/-- `A107920(gcd(2, A078008(n))+n+1)` -/
def P6591809120220409176.Spec : Prop :=
  ∀ n, P6591809120220409176.a n = A167433 n

end A167433

/-! ## A167433.P8899705896428335631

`A107920(n+3-A109466(A000217(n)))`
-/

namespace A167433.P8899705896428335631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 ((n + 3 : ℤ) - A109466 (A000217 n).toNat).toNat

end

end A167433.P8899705896428335631

namespace A167433

/-- `A107920(n+3-A109466(A000217(n)))` -/
def P8899705896428335631.Spec : Prop :=
  ∀ n, P8899705896428335631.a n = A167433 n

end A167433

/-!
# A167434: Diagonal sums of the Riordan array (1-4*x+4*x^2, x*(1-2*x)) (A167431).

The programs for A167434, the canonical program `A167434.P15551848417895861373` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167434 has offset 0).

The definition of A167434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167434.P15551848417895861373

`(-1)^n*A052947(n+4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167434

/-- `(-1)^n*A052947(n+4)` -/
def P15551848417895861373.Spec : Prop :=
  ∀ n, P15551848417895861373.a n = A167434 n

theorem P15551848417895861373.correct : P15551848417895861373.Spec := by
  intro n
  simp only [A167434]

end A167434

/-! ## A167434.P11574201217128957424

`ogf((1-4x+4x^2)/(1-x^2+2x^3))`
-/

namespace A167434.P11574201217128957424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, 0, -1, 2] n

end

end A167434.P11574201217128957424

namespace A167434

/-- `ogf((1-4x+4x^2)/(1-x^2+2x^3))` -/
def P11574201217128957424.Spec : Prop :=
  ∀ n, P11574201217128957424.a n = A167434 n

end A167434

/-! ## A167434.P6830331769132813733

`a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=-4, a(2)=5`
-/

namespace A167434.P6830331769132813733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 5] fun n a =>
  a (n - 2) - 2 * a (n - 3)

end

end A167434.P6830331769132813733

namespace A167434

/-- `a(n-2)-2*a(n-3)` -/
def P6830331769132813733.Spec : Prop :=
  ∀ n, P6830331769132813733.a n = A167434 n

end A167434

/-! ## A167434.P1538047071226836308

`a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=-4, a(2)=5`
-/

namespace A167434.P1538047071226836308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 5] fun n a =>
  a (n - 2) - a (n - 3) - a (n - 3)

end

end A167434.P1538047071226836308

namespace A167434

/-- `a(n-2)-a(n-3)-a(n-3)` -/
def P1538047071226836308.Spec : Prop :=
  ∀ n, P1538047071226836308.a n = A167434 n

end A167434

/-! ## A167434.P4973477265190609083

`Δ[A078028(n+1)]-∑[A078028(n)]`
-/

namespace A167434.P4973477265190609083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A167434.P4973477265190609083

namespace A167434

/-- `Δ[A078028(n+1)]-∑[A078028(n)]` -/
def P4973477265190609083.Spec : Prop :=
  ∀ n, P4973477265190609083.a n = A167434 n

end A167434

/-! ## A167434.P12673480357374516325

`∑[A078028(n+4)]-2`
-/

namespace A167434.P12673480357374516325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A167434.P12673480357374516325

namespace A167434

/-- `∑[A078028(n+4)]-2` -/
def P12673480357374516325.Spec : Prop :=
  ∀ n, P12673480357374516325.a n = A167434 n

end A167434

/-! ## A167434.P4393233888731562840

`Δ[Δ[A077884(n)]-A077884(n)]`
-/

namespace A167434.P4393233888731562840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077884 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A077884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167434.P4393233888731562840

namespace A167434

/-- `Δ[Δ[A077884(n)]-A077884(n)]` -/
def P4393233888731562840.Spec : Prop :=
  ∀ n, P4393233888731562840.a n = A167434 n

end A167434

/-! ## A167434.P14590487431008347427

`-(A078028(n+5)%A052947(n+5))`
-/

namespace A167434.P14590487431008347427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A078028 (n + 5)) (A052947 (n + 5))

end

end A167434.P14590487431008347427

namespace A167434

/-- `-(A078028(n+5)%A052947(n+5))` -/
def P14590487431008347427.Spec : Prop :=
  ∀ n, P14590487431008347427.a n = A167434 n

end A167434

/-! ## A167434.P9605488085498665795

`-A078028(n+5)%A159287(n+7)`
-/

namespace A167434.P9605488085498665795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A078028 (n + 5)) (A159287 (n + 7))

end

end A167434.P9605488085498665795

namespace A167434

/-- `-A078028(n+5)%A159287(n+7)` -/
def P9605488085498665795.Spec : Prop :=
  ∀ n, P9605488085498665795.a n = A167434 n

end A167434

/-! ## A167434.P3388673042165473352

`Δ[A077884(n+3)]`
-/

namespace A167434.P3388673042165473352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077884 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167434.P3388673042165473352

namespace A167434

/-- `Δ[A077884(n+3)]` -/
def P3388673042165473352.Spec : Prop :=
  ∀ n, P3388673042165473352.a n = A167434 n

end A167434

/-! ## A167434.P14066265174304682328

`Δ[A078028(n+5)]%A052947(n+8)`
-/

namespace A167434.P14066265174304682328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078028 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A052947 (n + 8))

end

end A167434.P14066265174304682328

namespace A167434

/-- `Δ[A078028(n+5)]%A052947(n+8)` -/
def P14066265174304682328.Spec : Prop :=
  ∀ n, P14066265174304682328.a n = A167434 n

end A167434

/-!
# A167435: Hankel transform of A084076.

The programs for A167435, the canonical program `A167435.P17728928110512448121` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167435 has offset 0).

The definition of A167435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167435.P17728928110512448121

`2^n²*A247560(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167435

/-- `2^n²*A247560(n)` -/
def P17728928110512448121.Spec : Prop :=
  ∀ n, P17728928110512448121.a n = A167435 n

theorem P17728928110512448121.correct : P17728928110512448121.Spec := by
  intro n
  simp only [A167435]

end A167435

/-! ## A167435.P7494243854873879436

`A120581(n)/2^n`
-/

namespace A167435.P7494243854873879436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120581 n : ℚ) / (2 ^ n : ℚ)

end

end A167435.P7494243854873879436

namespace A167435

/-- `A120581(n)/2^n` -/
def P7494243854873879436.Spec : Prop :=
  ∀ n, P7494243854873879436.a n = (A167435 n : ℚ)

end A167435

/-! ## A167435.P713131069620357967

`floor(A120581(n)/A000079(n))`
-/

namespace A167435.P713131069620357967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120581 n : ℚ) / (A000079 n : ℚ)⌋

end

end A167435.P713131069620357967

namespace A167435

/-- `floor(A120581(n)/A000079(n))` -/
def P713131069620357967.Spec : Prop :=
  ∀ n, P713131069620357967.a n = A167435 n

end A167435

/-! ## A167435.P7203054667877870099

`A000079(n²)*A247487(2*n+1)`
-/

namespace A167435.P7203054667877870099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n ^ 2) * A247487 (2 * n + 1)

end

end A167435.P7203054667877870099

namespace A167435

/-- `A000079(n²)*A247487(2*n+1)` -/
def P7203054667877870099.Spec : Prop :=
  ∀ n, P7203054667877870099.a n = A167435 n

end A167435

/-!
# A167436: 3rd Fibonacci polynomial evaluated at n^n.

The programs for A167436, the canonical program `A167436.P11599270149625663008` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167436 has offset 1).

The definition of A167436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167436.P11599270149625663008

`(n+1)²^(n+1)+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167436

/-- `(n+1)²^(n+1)+1` -/
def P11599270149625663008.Spec : Prop :=
  ∀ n, (P11599270149625663008.a n : ℤ) = A167436 (n + 1)

theorem P11599270149625663008.correct : P11599270149625663008.Spec := by
  intro n
  simp only [A167436, Nat.add_sub_cancel]

end A167436

/-! ## A167436.P3735668130130824982

`xor(4, ∑[2*n+1]^(n+1)+5)`
-/

namespace A167436.P3735668130130824982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) + 5)

end

end A167436.P3735668130130824982

namespace A167436

/-- `xor(4, ∑[2*n+1]^(n+1)+5)` -/
def P3735668130130824982.Spec : Prop :=
  ∀ n, (P3735668130130824982.a n : ℤ) = A167436 (n + 1)

end A167436

/-! ## A167436.P15323513701051479904

`A103462(A062725(n+1))`
-/

namespace A167436.P15323513701051479904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103462 (A062725 (n + 1)).toNat

end

end A167436.P15323513701051479904

namespace A167436

/-- `A103462(A062725(n+1))` -/
def P15323513701051479904.Spec : Prop :=
  ∀ n, P15323513701051479904.a n = A167436 (n + 1)

end A167436

/-! ## A167436.P6816949170181939726

`(A382359(n+1)+A036289(n+1))/A036289(n+1)`
-/

namespace A167436.P6816949170181939726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382359 (n + 1) + A036289 (n + 1) : ℚ) / (A036289 (n + 1) : ℚ)

end

end A167436.P6816949170181939726

namespace A167436

/-- `(A382359(n+1)+A036289(n+1))/A036289(n+1)` -/
def P6816949170181939726.Spec : Prop :=
  ∀ n, P6816949170181939726.a n = (A167436 (n + 1) : ℚ)

end A167436

/-! ## A167436.P7503277817790271558

`(A083282(n+1)+A000312(n+1))/A000312(n+1)`
-/

namespace A167436.P7503277817790271558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083282 (n + 1) + A000312 (n + 1) : ℚ) / (A000312 (n + 1) : ℚ)

end

end A167436.P7503277817790271558

namespace A167436

/-- `(A083282(n+1)+A000312(n+1))/A000312(n+1)` -/
def P7503277817790271558.Spec : Prop :=
  ∀ n, P7503277817790271558.a n = (A167436 (n + 1) : ℚ)

end A167436

/-!
# A167439: Length of the longest partition of n into distinct parts, with each part divisible by the next one.

The programs for A167439, there is no canonical definition to state claims against.
-/

/-! ## A167439.P17515204626175238031

`A167866(2*n)-char[24]`
-/

namespace A167439.P17515204626175238031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (2 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167439.P17515204626175238031

/-! ## A167439.P15330201583566046582

`A167866(n*A105220(n))`
-/

namespace A167439.P15330201583566046582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 ((n : ℤ) * A105220 n).toNat

end

end A167439.P15330201583566046582

/-! ## A167439.P1429499468291602438

`xor(char[A167824(n)], A167866(2*n))`
-/

namespace A167439.P1429499468291602438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167824 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A167866 (2 * n))

end

end A167439.P1429499468291602438

/-! ## A167439.P14434426966899638376

`A316997(or(n, A002264(n))²)`
-/

namespace A167439.P14434426966899638376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316997 (Int.lor (n : ℤ) (A002264 n) ^ 2).toNat

end

end A167439.P14434426966899638376

/-! ## A167439.P14636880176829419116

`A167866(2*n)%A352345(n+1)`
-/

namespace A167439.P14636880176829419116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167866 (2 * n)) (A352345 (n + 1))

end

end A167439.P14636880176829419116

/-!
# A167440: 5th GegenbauerC polynomial evaluated at powers of 2 (multiplied by 5).

The programs for A167440, there is no canonical definition to state claims against.
-/

/-! ## A167440.P6911529626401154009

`2^(n+1)*(5-5*4^(n+1)+16^(n+1))`
-/

namespace A167440.P6911529626401154009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (5 - (5 * 4 ^ (n + 1) : ℤ) + (16 ^ (n + 1) : ℤ))

end

end A167440.P6911529626401154009

/-! ## A167440.P3595972141473800437

`A020542(n)-A020540(n)`
-/

namespace A167440.P3595972141473800437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020542 n - A020540 n

end

end A167440.P3595972141473800437

/-! ## A167440.P993055404779003988

`A020539(n)+A020539(n%A020539(n))`
-/

namespace A167440.P993055404779003988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020539 n + A020539 (Int.tmod (n : ℤ) (A020539 n)).toNat

end

end A167440.P993055404779003988

/-! ## A167440.P7962398278906457417

`A230586(2^(n+1))`
-/

namespace A167440.P7962398278906457417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230586 (2 ^ (n + 1))

end

end A167440.P7962398278906457417

/-!
# A167441: Prime numbers ending in the prime number 71.

The programs for A167441, the canonical program `A167441.P13567645921692135530` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167441 has offset 1).

The definition of A167441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167441.P1936862491043781017

`∩[A141884(n+1), A141943(n+1)]`
-/

namespace A167441.P1936862491043781017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P1936862491043781017

namespace A167441

/-- `∩[A141884(n+1), A141943(n+1)]` -/
def P1936862491043781017.Spec : Prop :=
  ∀ n, (P1936862491043781017.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P13567645921692135530

`p?[10*10*n-29]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167441

/-- `p?[10*10*n-29]` -/
def P13567645921692135530.Spec : Prop :=
  ∀ n, P13567645921692135530.a n = A167441 (n + 1)

theorem P13567645921692135530.correct : P13567645921692135530.Spec := by
  intro n
  simp only [A167441, Nat.add_sub_cancel]

end A167441

/-! ## A167441.P2137422709752934187

`∩[A122869(n+1), A141943(n+1)]`
-/

namespace A167441.P2137422709752934187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P2137422709752934187

namespace A167441

/-- `∩[A122869(n+1), A141943(n+1)]` -/
def P2137422709752934187.Spec : Prop :=
  ∀ n, (P2137422709752934187.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P7880278958841530369

`∩[A030430(n+1), A045807(n+1)]`
-/

namespace A167441.P7880278958841530369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P7880278958841530369

namespace A167441

/-- `∩[A030430(n+1), A045807(n+1)]` -/
def P7880278958841530369.Spec : Prop :=
  ∀ n, (P7880278958841530369.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P13964991190416269969

`∩[A045453(n+1), A045807(n+1)]`
-/

namespace A167441.P13964991190416269969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P13964991190416269969

namespace A167441

/-- `∩[A045453(n+1), A045807(n+1)]` -/
def P13964991190416269969.Spec : Prop :=
  ∀ n, (P13964991190416269969.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P3925959233161742066

`∩[A045807(n+1), A141884(n+1)]`
-/

namespace A167441.P3925959233161742066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P3925959233161742066

namespace A167441

/-- `∩[A045807(n+1), A141884(n+1)]` -/
def P3925959233161742066.Spec : Prop :=
  ∀ n, (P3925959233161742066.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P10694571876878033072

`∩[A045807(n+1), A141943(n+1)]`
-/

namespace A167441.P10694571876878033072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P10694571876878033072

namespace A167441

/-- `∩[A045807(n+1), A141943(n+1)]` -/
def P10694571876878033072.Spec : Prop :=
  ∀ n, (P10694571876878033072.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P11965969920184246772

`∩[A045807(n+1), A327752(n+1)]`
-/

namespace A167441.P11965969920184246772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P11965969920184246772

namespace A167441

/-- `∩[A045807(n+1), A327752(n+1)]` -/
def P11965969920184246772.Spec : Prop :=
  ∀ n, (P11965969920184246772.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P18126250341694764837

`∩[A030430(n+1), A045801(n+1)-2]`
-/

namespace A167441.P18126250341694764837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P18126250341694764837

namespace A167441

/-- `∩[A030430(n+1), A045801(n+1)-2]` -/
def P18126250341694764837.Spec : Prop :=
  ∀ n, (P18126250341694764837.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P3483875861836467847

`∩[A045453(n+1), A045801(n+1)-2]`
-/

namespace A167441.P3483875861836467847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P3483875861836467847

namespace A167441

/-- `∩[A045453(n+1), A045801(n+1)-2]` -/
def P3483875861836467847.Spec : Prop :=
  ∀ n, (P3483875861836467847.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P10976751932887400674

`∩[A045801(n+1)-2, A141884(n+1)]`
-/

namespace A167441.P10976751932887400674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P10976751932887400674

namespace A167441

/-- `∩[A045801(n+1)-2, A141884(n+1)]` -/
def P10976751932887400674.Spec : Prop :=
  ∀ n, (P10976751932887400674.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P2335018120181639688

`∩[A045801(n+1)-2, A327752(n+1)]`
-/

namespace A167441.P2335018120181639688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P2335018120181639688

namespace A167441

/-- `∩[A045801(n+1)-2, A327752(n+1)]` -/
def P2335018120181639688.Spec : Prop :=
  ∀ n, (P2335018120181639688.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P13568729109594467092

`∩[A002145(n+1), A141943(n+1)]`
-/

namespace A167441.P13568729109594467092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P13568729109594467092

namespace A167441

/-- `∩[A002145(n+1), A141943(n+1)]` -/
def P13568729109594467092.Spec : Prop :=
  ∀ n, (P13568729109594467092.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P11617936075207200745

`∩[A045326(n+1), A141943(n+1)]`
-/

namespace A167441.P11617936075207200745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P11617936075207200745

namespace A167441

/-- `∩[A045326(n+1), A141943(n+1)]` -/
def P11617936075207200745.Spec : Prop :=
  ∀ n, (P11617936075207200745.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P5301045860089139061

`∩[A003626(n+1), A141943(n+1)]`
-/

namespace A167441.P5301045860089139061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P5301045860089139061

namespace A167441

/-- `∩[A003626(n+1), A141943(n+1)]` -/
def P5301045860089139061.Spec : Prop :=
  ∀ n, (P5301045860089139061.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P16264431150399095880

`∩[A141943(n+1), A296923(n+1)]`
-/

namespace A167441.P16264431150399095880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P16264431150399095880

namespace A167441

/-- `∩[A141943(n+1), A296923(n+1)]` -/
def P16264431150399095880.Spec : Prop :=
  ∀ n, (P16264431150399095880.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P4385820719954005167

`∩[A085760(n+1), A141943(n+1)]`
-/

namespace A167441.P4385820719954005167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P4385820719954005167

namespace A167441

/-- `∩[A085760(n+1), A141943(n+1)]` -/
def P4385820719954005167.Spec : Prop :=
  ∀ n, (P4385820719954005167.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P15379333242823800280

`∩[A141943(n+1), A197504(n+1)]`
-/

namespace A167441.P15379333242823800280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P15379333242823800280

namespace A167441

/-- `∩[A141943(n+1), A197504(n+1)]` -/
def P15379333242823800280.Spec : Prop :=
  ∀ n, (P15379333242823800280.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P10393872846272512109

`∩[A141943(n+1), A332555(n+1)]`
-/

namespace A167441.P10393872846272512109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167441.P10393872846272512109

namespace A167441

/-- `∩[A141943(n+1), A332555(n+1)]` -/
def P10393872846272512109.Spec : Prop :=
  ∀ n, (P10393872846272512109.a n : ℤ) = A167441 (n + 1)

end A167441

/-! ## A167441.P14911911288768018806

`filter[A141943(n+1), A359152(#)]`
-/

namespace A167441.P14911911288768018806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A167441.P14911911288768018806

namespace A167441

/-- `filter[A141943(n+1), A359152(#)]` -/
def P14911911288768018806.Spec : Prop :=
  ∀ n, P14911911288768018806.a n = A167441 (n + 1)

end A167441

/-!
# A167442: Prime numbers ending in the prime number 11.

The programs for A167442, the canonical program `A167442.P11740755665933557910` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167442 has offset 1).

The definition of A167442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167442.P9298896661507688252

`∩[A030430(n+1), A383978(n+1)]`
-/

namespace A167442.P9298896661507688252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P9298896661507688252

namespace A167442

/-- `∩[A030430(n+1), A383978(n+1)]` -/
def P9298896661507688252.Spec : Prop :=
  ∀ n, (P9298896661507688252.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P8717661395031226951

`∩[A141935(n+1), A383978(n+1)]`
-/

namespace A167442.P8717661395031226951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P8717661395031226951

namespace A167442

/-- `∩[A141935(n+1), A383978(n+1)]` -/
def P8717661395031226951.Spec : Prop :=
  ∀ n, (P8717661395031226951.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P18076421923389974996

`∩[A141884(n+1), A141935(n+1)]`
-/

namespace A167442.P18076421923389974996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P18076421923389974996

namespace A167442

/-- `∩[A141884(n+1), A141935(n+1)]` -/
def P18076421923389974996.Spec : Prop :=
  ∀ n, (P18076421923389974996.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P17071627844135115101

`∩[A141884(n+1), A383978(n+1)]`
-/

namespace A167442.P17071627844135115101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P17071627844135115101

namespace A167442

/-- `∩[A141884(n+1), A383978(n+1)]` -/
def P17071627844135115101.Spec : Prop :=
  ∀ n, (P17071627844135115101.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P11740755665933557910

`p?[10*10*n+11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167442

/-- `p?[10*10*n+11]` -/
def P11740755665933557910.Spec : Prop :=
  ∀ n, (P11740755665933557910.a n : ℤ) = A167442 (n + 1)

theorem P11740755665933557910.correct : P11740755665933557910.Spec := by
  intro n
  simp only [A167442, Nat.add_sub_cancel]

end A167442

/-! ## A167442.P6349183790687045555

`∩[A045453(n+1), A383978(n+1)]`
-/

namespace A167442.P6349183790687045555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P6349183790687045555

namespace A167442

/-- `∩[A045453(n+1), A383978(n+1)]` -/
def P6349183790687045555.Spec : Prop :=
  ∀ n, (P6349183790687045555.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P9321321116695413588

`∩[A122869(n+1), A141935(n+1)]`
-/

namespace A167442.P9321321116695413588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P9321321116695413588

namespace A167442

/-- `∩[A122869(n+1), A141935(n+1)]` -/
def P9321321116695413588.Spec : Prop :=
  ∀ n, (P9321321116695413588.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P734349292283082605

`∩[A090756(n+1), A383978(n+1)]`
-/

namespace A167442.P734349292283082605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P734349292283082605

namespace A167442

/-- `∩[A090756(n+1), A383978(n+1)]` -/
def P734349292283082605.Spec : Prop :=
  ∀ n, (P734349292283082605.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P11356324595390226776

`∩[A327752(n+1), A383978(n+1)]`
-/

namespace A167442.P11356324595390226776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P11356324595390226776

namespace A167442

/-- `∩[A327752(n+1), A383978(n+1)]` -/
def P11356324595390226776.Spec : Prop :=
  ∀ n, (P11356324595390226776.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P11048108492139956638

`∩[A004615(n+1), A383978(n+1)]`
-/

namespace A167442.P11048108492139956638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P11048108492139956638

namespace A167442

/-- `∩[A004615(n+1), A383978(n+1)]` -/
def P11048108492139956638.Spec : Prop :=
  ∀ n, (P11048108492139956638.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P6773128218757056333

`∩[A030430(n+1), A045801(n+1)]`
-/

namespace A167442.P6773128218757056333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P6773128218757056333

namespace A167442

/-- `∩[A030430(n+1), A045801(n+1)]` -/
def P6773128218757056333.Spec : Prop :=
  ∀ n, (P6773128218757056333.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P14259277359449528009

`∩[A045453(n+1), A045801(n+1)]`
-/

namespace A167442.P14259277359449528009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P14259277359449528009

namespace A167442

/-- `∩[A045453(n+1), A045801(n+1)]` -/
def P14259277359449528009.Spec : Prop :=
  ∀ n, (P14259277359449528009.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P13525862754702247975

`∩[A045801(n+1), A141884(n+1)]`
-/

namespace A167442.P13525862754702247975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P13525862754702247975

namespace A167442

/-- `∩[A045801(n+1), A141884(n+1)]` -/
def P13525862754702247975.Spec : Prop :=
  ∀ n, (P13525862754702247975.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P6409794092261051305

`∩[A045801(n+1), A141935(n+1)]`
-/

namespace A167442.P6409794092261051305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P6409794092261051305

namespace A167442

/-- `∩[A045801(n+1), A141935(n+1)]` -/
def P6409794092261051305.Spec : Prop :=
  ∀ n, (P6409794092261051305.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P9724617546230682735

`∩[A045801(n+1), A327752(n+1)]`
-/

namespace A167442.P9724617546230682735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P9724617546230682735

namespace A167442

/-- `∩[A045801(n+1), A327752(n+1)]` -/
def P9724617546230682735.Spec : Prop :=
  ∀ n, (P9724617546230682735.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P2062434162282525046

`∩[A030430(n+1), A045804(n+1)+2]`
-/

namespace A167442.P2062434162282525046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P2062434162282525046

namespace A167442

/-- `∩[A030430(n+1), A045804(n+1)+2]` -/
def P2062434162282525046.Spec : Prop :=
  ∀ n, (P2062434162282525046.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P16315606757581698056

`∩[A045453(n+1), A045804(n+1)+2]`
-/

namespace A167442.P16315606757581698056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P16315606757581698056

namespace A167442

/-- `∩[A045453(n+1), A045804(n+1)+2]` -/
def P16315606757581698056.Spec : Prop :=
  ∀ n, (P16315606757581698056.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P5362603355683586403

`record[p?[A336523(n+1)]]`
-/

namespace A167442.P5362603355683586403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336523 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167442.P5362603355683586403

namespace A167442

/-- `record[p?[A336523(n+1)]]` -/
def P5362603355683586403.Spec : Prop :=
  ∀ n, P5362603355683586403.a n = A167442 (n + 1)

end A167442

/-! ## A167442.P102304517750182345

`∩[A002145(n+1), A141935(n+1)]`
-/

namespace A167442.P102304517750182345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P102304517750182345

namespace A167442

/-- `∩[A002145(n+1), A141935(n+1)]` -/
def P102304517750182345.Spec : Prop :=
  ∀ n, (P102304517750182345.a n : ℤ) = A167442 (n + 1)

end A167442

/-! ## A167442.P6828222556256938770

`∩[A003626(n+1), A141935(n+1)]`
-/

namespace A167442.P6828222556256938770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167442.P6828222556256938770

namespace A167442

/-- `∩[A003626(n+1), A141935(n+1)]` -/
def P6828222556256938770.Spec : Prop :=
  ∀ n, (P6828222556256938770.a n : ℤ) = A167442 (n + 1)

end A167442

/-!
# A167443: Prime numbers ending in the prime number 41.

The programs for A167443, the canonical program `A167443.P3009455221864699155` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167443 has offset 1).

The definition of A167443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167443.P3009455221864699155

`∩[A141881(n+1), A141939(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167443

/-- `∩[A141881(n+1), A141939(n+1)]` -/
def P3009455221864699155.Spec : Prop :=
  ∀ n, (P3009455221864699155.a n : ℤ) = A167443 (n + 1)

theorem P3009455221864699155.correct : P3009455221864699155.Spec := by
  intro n
  simp only [A167443, Nat.add_sub_cancel]

end A167443

/-! ## A167443.P4338729772654257143

`p?[10*10*n+41]`
-/

namespace A167443.P4338729772654257143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167443.P4338729772654257143

namespace A167443

/-- `p?[10*10*n+41]` -/
def P4338729772654257143.Spec : Prop :=
  ∀ n, (P4338729772654257143.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P5059667453659290759

`record[p?[A242181(A000265(n+1))+2]]`
-/

namespace A167443.P5059667453659290759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (A000265 (n + 1)).toNat + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167443.P5059667453659290759

namespace A167443

/-- `record[p?[A242181(A000265(n+1))+2]]` -/
def P5059667453659290759.Spec : Prop :=
  ∀ n, P5059667453659290759.a n = A167443 (n + 1)

end A167443

/-! ## A167443.P3812523388202424107

`∩[A033205(n+1), A141939(n+1)]`
-/

namespace A167443.P3812523388202424107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P3812523388202424107

namespace A167443

/-- `∩[A033205(n+1), A141939(n+1)]` -/
def P3812523388202424107.Spec : Prop :=
  ∀ n, (P3812523388202424107.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P16063143620409836967

`∩[A141939(n+1), A216815(n+1)]`
-/

namespace A167443.P16063143620409836967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P16063143620409836967

namespace A167443

/-- `∩[A141939(n+1), A216815(n+1)]` -/
def P16063143620409836967.Spec : Prop :=
  ∀ n, (P16063143620409836967.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P904619796746946786

`∩[A033205(n+1), A242181(n+1)+2]`
-/

namespace A167443.P904619796746946786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P904619796746946786

namespace A167443

/-- `∩[A033205(n+1), A242181(n+1)+2]` -/
def P904619796746946786.Spec : Prop :=
  ∀ n, (P904619796746946786.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P3014110595346186936

`∩[A216815(n+1), A242181(n+1)+2]`
-/

namespace A167443.P3014110595346186936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242181 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P3014110595346186936

namespace A167443

/-- `∩[A216815(n+1), A242181(n+1)+2]` -/
def P3014110595346186936.Spec : Prop :=
  ∀ n, (P3014110595346186936.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P15177672265580780647

`∩[A091729(n+1), A141939(n+1)]`
-/

namespace A167443.P15177672265580780647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P15177672265580780647

namespace A167443

/-- `∩[A091729(n+1), A141939(n+1)]` -/
def P15177672265580780647.Spec : Prop :=
  ∀ n, (P15177672265580780647.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P8900727466928780809

`∩[A141939(n+1), A191218(n+1)]`
-/

namespace A167443.P8900727466928780809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P8900727466928780809

namespace A167443

/-- `∩[A141939(n+1), A191218(n+1)]` -/
def P8900727466928780809.Spec : Prop :=
  ∀ n, (P8900727466928780809.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P12023066914978116815

`∩[A030430(n+1), A045804(n+1)]`
-/

namespace A167443.P12023066914978116815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P12023066914978116815

namespace A167443

/-- `∩[A030430(n+1), A045804(n+1)]` -/
def P12023066914978116815.Spec : Prop :=
  ∀ n, (P12023066914978116815.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P8295706052116601735

`∩[A045453(n+1), A045804(n+1)]`
-/

namespace A167443.P8295706052116601735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P8295706052116601735

namespace A167443

/-- `∩[A045453(n+1), A045804(n+1)]` -/
def P8295706052116601735.Spec : Prop :=
  ∀ n, (P8295706052116601735.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P12858722039817514502

`∩[A045804(n+1), A141881(n+1)]`
-/

namespace A167443.P12858722039817514502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P12858722039817514502

namespace A167443

/-- `∩[A045804(n+1), A141881(n+1)]` -/
def P12858722039817514502.Spec : Prop :=
  ∀ n, (P12858722039817514502.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P12727427275139738360

`∩[A045804(n+1), A141939(n+1)]`
-/

namespace A167443.P12727427275139738360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P12727427275139738360

namespace A167443

/-- `∩[A045804(n+1), A141939(n+1)]` -/
def P12727427275139738360.Spec : Prop :=
  ∀ n, (P12727427275139738360.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P11688424053427987197

`∩[A045804(n+1), A179446(n+1)]`
-/

namespace A167443.P11688424053427987197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P11688424053427987197

namespace A167443

/-- `∩[A045804(n+1), A179446(n+1)]` -/
def P11688424053427987197.Spec : Prop :=
  ∀ n, (P11688424053427987197.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P18382019035425017640

`∩[A141881(n+1), A159754(n+1)]`
-/

namespace A167443.P18382019035425017640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P18382019035425017640

namespace A167443

/-- `∩[A141881(n+1), A159754(n+1)]` -/
def P18382019035425017640.Spec : Prop :=
  ∀ n, (P18382019035425017640.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P7342762448486786919

`∩[A030430(n+1), A045801(n+1)+2]`
-/

namespace A167443.P7342762448486786919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P7342762448486786919

namespace A167443

/-- `∩[A030430(n+1), A045801(n+1)+2]` -/
def P7342762448486786919.Spec : Prop :=
  ∀ n, (P7342762448486786919.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P16173921427542943710

`∩[A045453(n+1), A045801(n+1)+2]`
-/

namespace A167443.P16173921427542943710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P16173921427542943710

namespace A167443

/-- `∩[A045453(n+1), A045801(n+1)+2]` -/
def P16173921427542943710.Spec : Prop :=
  ∀ n, (P16173921427542943710.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P15720544575043470029

`∩[A141939(n+1), A139513(n+1)]`
-/

namespace A167443.P15720544575043470029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P15720544575043470029

namespace A167443

/-- `∩[A141939(n+1), A139513(n+1)]` -/
def P15720544575043470029.Spec : Prop :=
  ∀ n, (P15720544575043470029.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P13883813913413098588

`∩[A002144(n+1), A141939(n+1)]`
-/

namespace A167443.P13883813913413098588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P13883813913413098588

namespace A167443

/-- `∩[A002144(n+1), A141939(n+1)]` -/
def P13883813913413098588.Spec : Prop :=
  ∀ n, (P13883813913413098588.a n : ℤ) = A167443 (n + 1)

end A167443

/-! ## A167443.P7771960186002000032

`∩[A002313(n+1), A141939(n+1)]`
-/

namespace A167443.P7771960186002000032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167443.P7771960186002000032

namespace A167443

/-- `∩[A002313(n+1), A141939(n+1)]` -/
def P7771960186002000032.Spec : Prop :=
  ∀ n, (P7771960186002000032.a n : ℤ) = A167443 (n + 1)

end A167443

/-!
# A167444: Fibonacci(n)!!.

The programs for A167444, there is no canonical definition to state claims against.
-/

/-! ## A167444.P506176416950082274

`A006882(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A167444.P506176416950082274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (f1 (n + 1) - f1 n).toNat

end

end A167444.P506176416950082274

/-! ## A167444.P8965373661985483110

`A006882(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A167444.P8965373661985483110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167444.P8965373661985483110

/-! ## A167444.P11521116829433574480

`A006882(A096275(n))`
-/

namespace A167444.P11521116829433574480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A096275 n).toNat

end

end A167444.P11521116829433574480

/-! ## A167444.P11588279420246696085

`A006882(A109609(n))`
-/

namespace A167444.P11588279420246696085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A109609 n).toNat

end

end A167444.P11588279420246696085

/-!
# A167445: Prime numbers ending in the prime number 61.

The programs for A167445, the canonical program `A167445.P2871925615073171222` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167445 has offset 1).

The definition of A167445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167445.P18307721892361870331

`∩[A141881(n+1), A141935(n+1)]`
-/

namespace A167445.P18307721892361870331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P18307721892361870331

namespace A167445

/-- `∩[A141881(n+1), A141935(n+1)]` -/
def P18307721892361870331.Spec : Prop :=
  ∀ n, (P18307721892361870331.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P2871925615073171222

`p?[10*10*n-39]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167445

/-- `p?[10*10*n-39]` -/
def P2871925615073171222.Spec : Prop :=
  ∀ n, P2871925615073171222.a n = A167445 (n + 1)

theorem P2871925615073171222.correct : P2871925615073171222.Spec := by
  intro n
  simp only [A167445, Nat.add_sub_cancel]

end A167445

/-! ## A167445.P10516471034112076161

`or(p?[A053743(n)+16], A157928(n))`
-/

namespace A167445.P10516471034112076161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157928 n)

end

end A167445.P10516471034112076161

namespace A167445

/-- `or(p?[A053743(n)+16], A157928(n))` -/
def P10516471034112076161.Spec : Prop :=
  ∀ n, P10516471034112076161.a n = A167445 (n + 1)

end A167445

/-! ## A167445.P9815492476491754748

`lcm(p?[A053743(n)+16], A165581(n+1))`
-/

namespace A167445.P9815492476491754748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A165581 (n + 1))

end

end A167445.P9815492476491754748

namespace A167445

/-- `lcm(p?[A053743(n)+16], A165581(n+1))` -/
def P9815492476491754748.Spec : Prop :=
  ∀ n, (P9815492476491754748.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P14392204356572771631

`or(p?[A053743(n)+16], A189628(n+1))`
-/

namespace A167445.P14392204356572771631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A189628 (n + 1))

end

end A167445.P14392204356572771631

namespace A167445

/-- `or(p?[A053743(n)+16], A189628(n+1))` -/
def P14392204356572771631.Spec : Prop :=
  ∀ n, P14392204356572771631.a n = A167445 (n + 1)

end A167445

/-! ## A167445.P5822247701579265389

`A000027(p?[A053743(n)+16])`
-/

namespace A167445.P5822247701579265389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167445.P5822247701579265389

namespace A167445

/-- `A000027(p?[A053743(n)+16])` -/
def P5822247701579265389.Spec : Prop :=
  ∀ n, P5822247701579265389.a n = A167445 (n + 1)

end A167445

/-! ## A167445.P12188660108386163751

`∩[A033205(n+1), A141935(n+1)]`
-/

namespace A167445.P12188660108386163751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P12188660108386163751

namespace A167445

/-- `∩[A033205(n+1), A141935(n+1)]` -/
def P12188660108386163751.Spec : Prop :=
  ∀ n, (P12188660108386163751.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P11409901562717452726

`∩[A141935(n+1), A216815(n+1)]`
-/

namespace A167445.P11409901562717452726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P11409901562717452726

namespace A167445

/-- `∩[A141935(n+1), A216815(n+1)]` -/
def P11409901562717452726.Spec : Prop :=
  ∀ n, (P11409901562717452726.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P11563743971692334430

`∩[A091729(n+1), A141935(n+1)]`
-/

namespace A167445.P11563743971692334430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P11563743971692334430

namespace A167445

/-- `∩[A091729(n+1), A141935(n+1)]` -/
def P11563743971692334430.Spec : Prop :=
  ∀ n, (P11563743971692334430.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P1889933167495447941

`∩[A030430(n+1), A045806(n+1)]`
-/

namespace A167445.P1889933167495447941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P1889933167495447941

namespace A167445

/-- `∩[A030430(n+1), A045806(n+1)]` -/
def P1889933167495447941.Spec : Prop :=
  ∀ n, (P1889933167495447941.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P820419963652775736

`∩[A045453(n+1), A045806(n+1)]`
-/

namespace A167445.P820419963652775736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P820419963652775736

namespace A167445

/-- `∩[A045453(n+1), A045806(n+1)]` -/
def P820419963652775736.Spec : Prop :=
  ∀ n, (P820419963652775736.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P16288413425767899667

`∩[A045806(n+1), A141881(n+1)]`
-/

namespace A167445.P16288413425767899667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P16288413425767899667

namespace A167445

/-- `∩[A045806(n+1), A141881(n+1)]` -/
def P16288413425767899667.Spec : Prop :=
  ∀ n, (P16288413425767899667.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P2742571348372040396

`∩[A045806(n+1), A141935(n+1)]`
-/

namespace A167445.P2742571348372040396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P2742571348372040396

namespace A167445

/-- `∩[A045806(n+1), A141935(n+1)]` -/
def P2742571348372040396.Spec : Prop :=
  ∀ n, (P2742571348372040396.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P1396183230094612459

`∩[A045806(n+1), A179446(n+1)]`
-/

namespace A167445.P1396183230094612459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P1396183230094612459

namespace A167445

/-- `∩[A045806(n+1), A179446(n+1)]` -/
def P1396183230094612459.Spec : Prop :=
  ∀ n, (P1396183230094612459.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P17035626716650767502

`∩[A141881(n+1), A159754(n+1)+2]`
-/

namespace A167445.P17035626716650767502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159754 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P17035626716650767502

namespace A167445

/-- `∩[A141881(n+1), A159754(n+1)+2]` -/
def P17035626716650767502.Spec : Prop :=
  ∀ n, (P17035626716650767502.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P9136902597593544112

`∩[A030430(n+1), A045804(n+1)-2]`
-/

namespace A167445.P9136902597593544112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P9136902597593544112

namespace A167445

/-- `∩[A030430(n+1), A045804(n+1)-2]` -/
def P9136902597593544112.Spec : Prop :=
  ∀ n, (P9136902597593544112.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P14374685903224775817

`∩[A045453(n+1), A045804(n+1)-2]`
-/

namespace A167445.P14374685903224775817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P14374685903224775817

namespace A167445

/-- `∩[A045453(n+1), A045804(n+1)-2]` -/
def P14374685903224775817.Spec : Prop :=
  ∀ n, (P14374685903224775817.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P7507315166871117080

`∩[A045804(n+1)-2, A141881(n+1)]`
-/

namespace A167445.P7507315166871117080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P7507315166871117080

namespace A167445

/-- `∩[A045804(n+1)-2, A141881(n+1)]` -/
def P7507315166871117080.Spec : Prop :=
  ∀ n, (P7507315166871117080.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P1606373832618525623

`∩[A045804(n+1)-2, A179446(n+1)]`
-/

namespace A167445.P1606373832618525623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P1606373832618525623

namespace A167445

/-- `∩[A045804(n+1)-2, A179446(n+1)]` -/
def P1606373832618525623.Spec : Prop :=
  ∀ n, (P1606373832618525623.a n : ℤ) = A167445 (n + 1)

end A167445

/-! ## A167445.P1220363269290857509

`∩[A002144(n+1), A141935(n+1)]`
-/

namespace A167445.P1220363269290857509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167445.P1220363269290857509

namespace A167445

/-- `∩[A002144(n+1), A141935(n+1)]` -/
def P1220363269290857509.Spec : Prop :=
  ∀ n, (P1220363269290857509.a n : ℤ) = A167445 (n + 1)

end A167445

/-!
# A167446: a(n) = (Fibonacci(n)!!)!.

The programs for A167446, the canonical program `A167446.P12620071142182261706` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167446 has offset 0).

The definition of A167446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167446.P12620071142182261706

`A000142(A006882(A000045(n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167446

/-- `A000142(A006882(A000045(n)))` -/
def P12620071142182261706.Spec : Prop :=
  ∀ n, P12620071142182261706.a n = A167446 n

theorem P12620071142182261706.correct : P12620071142182261706.Spec := by
  intro n
  simp only [A167446]

end A167446

/-!
# A167447: Number of divisors of n which are not multiples of 3 consecutive primes.

The programs for A167447, the canonical program `A167447.P13871075848203580678` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167447 has offset 1).

The definition of A167447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167447.P13871075848203580678

`∑{d}[A003961(n+1), A356173(A322361(#))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A167447

/-- `∑{d}[A003961(n+1), A356173(A322361(#))]` -/
def P13871075848203580678.Spec : Prop :=
  ∀ n, P13871075848203580678.a n = A167447 (n + 1)

theorem P13871075848203580678.correct : P13871075848203580678.Spec := by
  intro n
  simp only [A167447, Nat.add_sub_cancel]

end A167447

/-! ## A167447.P8342867548063117535

`∑{d}[A003961(n+1), A097325(A242420(#))]`
-/

namespace A167447.P8342867548063117535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A097325 (A242420 d).toNat

end

end A167447.P8342867548063117535

namespace A167447

/-- `∑{d}[A003961(n+1), A097325(A242420(#))]` -/
def P8342867548063117535.Spec : Prop :=
  ∀ n, P8342867548063117535.a n = A167447 (n + 1)

end A167447

/-! ## A167447.P14822732063376321592

`A318874(A064988(n+1))%Δ[A034513(n)]`
-/

namespace A167447.P14822732063376321592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318874 (A064988 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A167447.P14822732063376321592

namespace A167447

/-- `A318874(A064988(n+1))%Δ[A034513(n)]` -/
def P14822732063376321592.Spec : Prop :=
  ∀ n, P14822732063376321592.a n = A167447 (n + 1)

end A167447

/-! ## A167447.P8299962608055634450

`abs(A122188(n+1)*A318874(A064988(n+1)))`
-/

namespace A167447.P8299962608055634450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122188 (n + 1) * A318874 (A064988 (n + 1)).toNat|

end

end A167447.P8299962608055634450

namespace A167447

/-- `abs(A122188(n+1)*A318874(A064988(n+1)))` -/
def P8299962608055634450.Spec : Prop :=
  ∀ n, P8299962608055634450.a n = A167447 (n + 1)

end A167447

/-! ## A167447.P6250104932215409099

`A318874(A064988(n+1))+A133089(A157924(n+1))`
-/

namespace A167447.P6250104932215409099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (A064988 (n + 1)).toNat + A133089 (A157924 (n + 1)).toNat

end

end A167447.P6250104932215409099

namespace A167447

/-- `A318874(A064988(n+1))+A133089(A157924(n+1))` -/
def P6250104932215409099.Spec : Prop :=
  ∀ n, P6250104932215409099.a n = A167447 (n + 1)

end A167447

/-! ## A167447.P1178586386157142588

`A318874(A064988(n+1))+A137579(A137579(n))`
-/

namespace A167447.P1178586386157142588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (A064988 (n + 1)).toNat + A137579 (A137579 n).toNat

end

end A167447.P1178586386157142588

namespace A167447

/-- `A318874(A064988(n+1))+A137579(A137579(n))` -/
def P1178586386157142588.Spec : Prop :=
  ∀ n, P1178586386157142588.a n = A167447 (n + 1)

end A167447

/-! ## A167447.P159184082988425620

`A001222(A030145(n+1))*A318874(A064988(n+1))`
-/

namespace A167447.P159184082988425620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A030145 (n + 1)).toNat * A318874 (A064988 (n + 1)).toNat

end

end A167447.P159184082988425620

namespace A167447

/-- `A001222(A030145(n+1))*A318874(A064988(n+1))` -/
def P159184082988425620.Spec : Prop :=
  ∀ n, P159184082988425620.a n = A167447 (n + 1)

end A167447

/-! ## A167447.P13020583550915055381

`A000005(n+1)-val(A151741(n+1), A151707(n+3))`
-/

namespace A167447.P13020583550915055381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (SequenceMachineLib.valuation (A151741 (n + 1)).toNat (A151707 (n + 3)).toNat : ℤ)

end

end A167447.P13020583550915055381

namespace A167447

/-- `A000005(n+1)-val(A151741(n+1), A151707(n+3))` -/
def P13020583550915055381.Spec : Prop :=
  ∀ n, P13020583550915055381.a n = A167447 (n + 1)

end A167447

/-!
# A167449: a(0)=1; a(1)=1; for a>1, a(n)=a(n-1)+((n-1)^3)*a(n-2).

The programs for A167449, the canonical program `A167449.P12414638690118844217` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167449 has offset 0).

The definition of A167449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-1)^3*a(n-2)` (program `A167449.P12414638690118844217`, by `A167449.P12414638690118844217.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167449.P12414638690118844217

`a(n-1)+(n-1)^3*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167449

/-- `a(n-1)+(n-1)^3*a(n-2)` -/
def P12414638690118844217.Spec : Prop :=
  ∀ n, P12414638690118844217.a n = A167449 n

theorem P12414638690118844217.correct : P12414638690118844217.Spec := by
  intro n
  simp only [A167449]

end A167449

/-! ## A167449.P11558530552358590865

`∏[(n-1)^3/a(n-1)+1]` with `a(0)=1`
-/

namespace A167449.P11558530552358590865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (((n : ℤ) - 1) ^ 3 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A167449.P11558530552358590865

namespace A167449

/-- `∏[(n-1)^3/a(n-1)+1]` -/
def P11558530552358590865.Spec : Prop :=
  ∀ n, P11558530552358590865.a n = (A167449 n : ℚ)

end A167449

/-!
# A167452: Smallest sequence which lists the position of digits "2" in the sequence.

The programs for A167452, there is no canonical definition to state claims against.
-/

/-! ## A167452.P2400836714544190722

`∑[gcd(A143041(n+1), A143044(3*(n+1)))]`
-/

namespace A167452.P2400836714544190722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143041 (n + 1)) (A143044 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167452.P2400836714544190722

/-! ## A167452.P13502715206900013108

`lt[A351954(A033014(2*(n+1))), A008585(n)]`
-/

namespace A167452.P13502715206900013108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351954 (A033014 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167452.P13502715206900013108

/-! ## A167452.P13171889036178773812

`lt[A351954(A033014(2*(n+1))), A016777(n)]`
-/

namespace A167452.P13171889036178773812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351954 (A033014 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167452.P13171889036178773812

/-! ## A167452.P4809002005909102701

`lt[A351954(A033014(2*(n+1))), A151800(3*n)]`
-/

namespace A167452.P4809002005909102701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351954 (A033014 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167452.P4809002005909102701

/-!
# A167454: Smallest sequence which lists the position of digits "4" in the sequence.

The programs for A167454, there is no canonical definition to state claims against.
-/

/-! ## A167454.P6220546958369560769

`A010894(A004273(n))+record[A261164(n+1)]`
-/

namespace A167454.P6220546958369560769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A004273 n).toNat + 21) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167454.P6220546958369560769

/-! ## A167454.P6530625418122634745

`lt[A353847(A008344(2*n+3)), A006287(n)]`
-/

namespace A167454.P6530625418122634745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A008344 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167454.P6530625418122634745

/-! ## A167454.P209551918316685268

`record[A261164(n+1)]*A014963(A190048(n))`
-/

namespace A167454.P209551918316685268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A014963 (A190048 n).toNat

end

end A167454.P209551918316685268

/-! ## A167454.P11760611400354350273

`A014963(A213824(n+1))*record[A261164(n+1)]`
-/

namespace A167454.P11760611400354350273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A213824 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167454.P11760611400354350273

/-!
# A167458: Indices of numbers in A167459 which are not in A066737.

The programs for A167458, there is no canonical definition to state claims against.
-/

/-! ## A167458.P7166244502708448266

`A166506(n+1)-A000720(A166505(n+1))`
-/

namespace A167458.P7166244502708448266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166506 (n + 1) - A000720 (A166505 (n + 1)).toNat

end

end A167458.P7166244502708448266

/-!
# A167459: Composite numbers in A166504, i.e., whose decimal expansion can be split up into prime numbers, with leading zeros allowed.

The programs for A167459, there is no canonical definition to state claims against.
-/

/-! ## A167459.P6106376032617323170

`∪[A066737(n+1), A166505(n+1)]`
-/

namespace A167459.P6106376032617323170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167459.P6106376032617323170

/-! ## A167459.P8691148977764588730

`∪[A051022(A034895(n+1)), A066737(n+1)]`
-/

namespace A167459.P8691148977764588730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A034895 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167459.P8691148977764588730

/-!
# A167460: Primes p such that (p reversed)+6 is also a prime.

The programs for A167460, there is no canonical definition to state claims against.
-/

/-! ## A167460.P10804887851206544637

`p?[eq[3, A249061(A004086(n))]]`
-/

namespace A167460.P10804887851206544637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249061 (A004086 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167460.P10804887851206544637

/-! ## A167460.P9815306909074285371

`p?[n*A243473(A004086(n)+6)]`
-/

namespace A167460.P9815306909074285371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A243473 (A004086 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167460.P9815306909074285371

/-! ## A167460.P6470843361208571289

`p?[n*A318507(A004086(n)+6)]`
-/

namespace A167460.P6470843361208571289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A318507 (A004086 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167460.P6470843361208571289

/-! ## A167460.P14097746100501040391

`∩[A030096(n+1), A122806(n+1)]`
-/

namespace A167460.P14097746100501040391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167460.P14097746100501040391

/-! ## A167460.P13672339023034916221

`∩[A122806(n+1), A155055(n+1)]`
-/

namespace A167460.P13672339023034916221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167460.P13672339023034916221

/-!
# A167461: Anagram multiples of 123456789.

The programs for A167461, there is no canonical definition to state claims against.
-/

/-! ## A167461.P17453765822446589686

`A053654(A161750(n+8))`
-/

namespace A167461.P17453765822446589686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053654 (A161750 (n + 8)).toNat

end

end A167461.P17453765822446589686

/-!
# A167462: Primes p such that 2*p-5 is composite.

The programs for A167462, the canonical program `A167462.P18008838724901642984` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167462 has offset 1).

The definition of A167462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167462.P181292896916727399

`p?[A153040(n+1)]`
-/

namespace A167462.P181292896916727399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167462.P181292896916727399

namespace A167462

/-- `p?[A153040(n+1)]` -/
def P181292896916727399.Spec : Prop :=
  ∀ n, P181292896916727399.a n = A167462 (n + 1)

end A167462

/-! ## A167462.P5336470937339671648

`p?[A053726(n+1)+2]`
-/

namespace A167462.P5336470937339671648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167462.P5336470937339671648

namespace A167462

/-- `p?[A053726(n+1)+2]` -/
def P5336470937339671648.Spec : Prop :=
  ∀ n, P5336470937339671648.a n = A167462 (n + 1)

end A167462

/-! ## A167462.P14518095478504861038

`p?[A104275(n+2)+2]`
-/

namespace A167462.P14518095478504861038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167462.P14518095478504861038

namespace A167462

/-- `p?[A104275(n+2)+2]` -/
def P14518095478504861038.Spec : Prop :=
  ∀ n, P14518095478504861038.a n = A167462 (n + 1)

end A167462

/-! ## A167462.P18008838724901642984

`p?[A153238(n+1)+4]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A167462

/-- `p?[A153238(n+1)+4]` -/
def P18008838724901642984.Spec : Prop :=
  ∀ n, P18008838724901642984.a n = A167462 (n + 1)

theorem P18008838724901642984.correct : P18008838724901642984.Spec := by
  intro n
  simp only [A167462, Nat.add_sub_cancel]

end A167462

/-! ## A167462.P4313336586668251516

`p?[A155723(n+1)+7]`
-/

namespace A167462.P4313336586668251516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167462.P4313336586668251516

namespace A167462

/-- `p?[A155723(n+1)+7]` -/
def P4313336586668251516.Spec : Prop :=
  ∀ n, P4313336586668251516.a n = A167462 (n + 1)

theorem P4313336586668251516.correct : P4313336586668251516.Spec := by
  intro n
  simp only [A167462, Nat.add_sub_cancel, A167462.P4313336586668251516.f1, A167462.P4313336586668251516.a, A167462.P18008838724901642984.f1, A167462.P18008838724901642984.a, A153238, A153238.P13831251492164971693.a, A155723, A155723.P13840957345735942896.a, A153052, A153052.P215135875194931627.f1, A153052.P215135875194931627.f2, A153052.P215135875194931627.a, A153053, A153053.P11375225491096847210.a, A101264, A101264.P9977125953316836564.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A167462

/-! ## A167462.P15309441371502870361

`p?[lt[A006530(2*n+1), n]+3]`
-/

namespace A167462.P15309441371502870361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167462.P15309441371502870361

namespace A167462

/-- `p?[lt[A006530(2*n+1), n]+3]` -/
def P15309441371502870361.Spec : Prop :=
  ∀ n, (P15309441371502870361.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P5334410475385496978

`p?[2*n+5-A322809(2*n+1)]`
-/

namespace A167462.P5334410475385496978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) - A322809 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167462.P5334410475385496978

namespace A167462

/-- `p?[2*n+5-A322809(2*n+1)]` -/
def P5334410475385496978.Spec : Prop :=
  ∀ n, P5334410475385496978.a n = A167462 (n + 1)

end A167462

/-! ## A167462.P56037413992308225

`filter[A153040(n+1), A010051(#)]`
-/

namespace A167462.P56037413992308225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A167462.P56037413992308225

namespace A167462

/-- `filter[A153040(n+1), A010051(#)]` -/
def P56037413992308225.Spec : Prop :=
  ∀ n, P56037413992308225.a n = A167462 (n + 1)

end A167462

/-! ## A167462.P9008092621686871858

`record[A006530(A104275(n+2)+2)]`
-/

namespace A167462.P9008092621686871858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104275 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167462.P9008092621686871858

namespace A167462

/-- `record[A006530(A104275(n+2)+2)]` -/
def P9008092621686871858.Spec : Prop :=
  ∀ n, P9008092621686871858.a n = A167462 (n + 1)

end A167462

/-! ## A167462.P665680736609135775

`record[A006530(A155723(n+1)+7)]`
-/

namespace A167462.P665680736609135775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155723 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167462.P665680736609135775

namespace A167462

/-- `record[A006530(A155723(n+1)+7)]` -/
def P665680736609135775.Spec : Prop :=
  ∀ n, P665680736609135775.a n = A167462 (n + 1)

end A167462

/-! ## A167462.P3435261493567758576

`∩[A000040(n+1), A153040(n+1)]`
-/

namespace A167462.P3435261493567758576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P3435261493567758576

namespace A167462

/-- `∩[A000040(n+1), A153040(n+1)]` -/
def P3435261493567758576.Spec : Prop :=
  ∀ n, (P3435261493567758576.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P10144565380740033635

`∩[A004139(n+1), A153040(n+1)]`
-/

namespace A167462.P10144565380740033635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P10144565380740033635

namespace A167462

/-- `∩[A004139(n+1), A153040(n+1)]` -/
def P10144565380740033635.Spec : Prop :=
  ∀ n, (P10144565380740033635.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P12454817824897342252

`∩[A006005(n+1), A153040(n+1)]`
-/

namespace A167462.P12454817824897342252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P12454817824897342252

namespace A167462

/-- `∩[A006005(n+1), A153040(n+1)]` -/
def P12454817824897342252.Spec : Prop :=
  ∀ n, (P12454817824897342252.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P4924852561612426158

`∩[A008578(n+1), A153040(n+1)]`
-/

namespace A167462.P4924852561612426158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P4924852561612426158

namespace A167462

/-- `∩[A008578(n+1), A153040(n+1)]` -/
def P4924852561612426158.Spec : Prop :=
  ∀ n, (P4924852561612426158.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P17622584298261493607

`∩[A045319(n+1), A153040(n+1)]`
-/

namespace A167462.P17622584298261493607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P17622584298261493607

namespace A167462

/-- `∩[A045319(n+1), A153040(n+1)]` -/
def P17622584298261493607.Spec : Prop :=
  ∀ n, (P17622584298261493607.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P13189299887217372057

`∩[A045344(n+1), A153040(n+1)]`
-/

namespace A167462.P13189299887217372057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P13189299887217372057

namespace A167462

/-- `∩[A045344(n+1), A153040(n+1)]` -/
def P13189299887217372057.Spec : Prop :=
  ∀ n, (P13189299887217372057.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P10835367861369262238

`∩[A046022(n+1), A153040(n+1)]`
-/

namespace A167462.P10835367861369262238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P10835367861369262238

namespace A167462

/-- `∩[A046022(n+1), A153040(n+1)]` -/
def P10835367861369262238.Spec : Prop :=
  ∀ n, (P10835367861369262238.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P15645126158061195560

`∩[A065091(n+1), A153040(n+1)]`
-/

namespace A167462.P15645126158061195560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P15645126158061195560

namespace A167462

/-- `∩[A065091(n+1), A153040(n+1)]` -/
def P15645126158061195560.Spec : Prop :=
  ∀ n, (P15645126158061195560.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P7313925541563667010

`∩[A067126(n+1), A153040(n+1)]`
-/

namespace A167462.P7313925541563667010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P7313925541563667010

namespace A167462

/-- `∩[A067126(n+1), A153040(n+1)]` -/
def P7313925541563667010.Spec : Prop :=
  ∀ n, (P7313925541563667010.a n : ℤ) = A167462 (n + 1)

end A167462

/-! ## A167462.P15965623158984215980

`∩[A108719(n+1), A153040(n+1)]`
-/

namespace A167462.P15965623158984215980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167462.P15965623158984215980

namespace A167462

/-- `∩[A108719(n+1), A153040(n+1)]` -/
def P15965623158984215980.Spec : Prop :=
  ∀ n, (P15965623158984215980.a n : ℤ) = A167462 (n + 1)

end A167462

/-!
# A167463: a(n) = n mod 15.

The programs for A167463, the canonical program `A167463.P7135246727542558922` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167463 has offset 0).

The definition of A167463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n%15` (program `A167463.P7135246727542558922`, by `A167463.P7135246727542558922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167463.P7135246727542558922

`n%15`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167463

/-- `n%15` -/
def P7135246727542558922.Spec : Prop :=
  ∀ n, (P7135246727542558922.a n : ℤ) = A167463 n

theorem P7135246727542558922.correct : P7135246727542558922.Spec := by
  intro n
  simp only [A167463]

end A167463

/-!
# A167464: Primes p such that 20*p+19 is composite.

The programs for A167464, the canonical program `A167464.P9940011156032082583` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167464 has offset 1).

The definition of A167464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167464.P9940011156032082583

`p?[comp[A157977(n+1)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A167464

/-- `p?[comp[A157977(n+1)]]` -/
def P9940011156032082583.Spec : Prop :=
  ∀ n, (P9940011156032082583.a n : ℤ) = A167464 (n + 1)

theorem P9940011156032082583.correct : P9940011156032082583.Spec := by
  intro n
  simp only [A167464, Nat.add_sub_cancel]

end A167464

/-! ## A167464.P14016036269420077160

`p?[A057979(A153380(n+1))]`
-/

namespace A167464.P14016036269420077160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A153380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167464.P14016036269420077160

namespace A167464

/-- `p?[A057979(A153380(n+1))]` -/
def P14016036269420077160.Spec : Prop :=
  ∀ n, P14016036269420077160.a n = A167464 (n + 1)

end A167464

/-! ## A167464.P9918240076762752543

`p?[gcd(n, A156707(A017377(n)))]`
-/

namespace A167464.P9918240076762752543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A156707 (A017377 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A167464.P9918240076762752543

namespace A167464

/-- `p?[gcd(n, A156707(A017377(n)))]` -/
def P9918240076762752543.Spec : Prop :=
  ∀ n, (P9918240076762752543.a n : ℤ) = A167464 (n + 1)

end A167464

/-! ## A167464.P17141056502276957561

`p?[n*A107393(A017377(2*n+1))]`
-/

namespace A167464.P17141056502276957561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107393 (A017377 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167464.P17141056502276957561

namespace A167464

/-- `p?[n*A107393(A017377(2*n+1))]` -/
def P17141056502276957561.Spec : Prop :=
  ∀ n, P17141056502276957561.a n = A167464 (n + 1)

end A167464

/-! ## A167464.P6164095622560995776

`p?[n+1-A014963(4*5*n+19)]`
-/

namespace A167464.P6164095622560995776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014963 (4 * (5 * n) + 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167464.P6164095622560995776

namespace A167464

/-- `p?[n+1-A014963(4*5*n+19)]` -/
def P6164095622560995776.Spec : Prop :=
  ∀ n, P6164095622560995776.a n = A167464 (n + 1)

end A167464

/-! ## A167464.P332914337293421414

`p?[A014963(A017377(2*n+3))+n]`
-/

namespace A167464.P332914337293421414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017377 (2 * n + 3)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167464.P332914337293421414

namespace A167464

/-- `p?[A014963(A017377(2*n+3))+n]` -/
def P332914337293421414.Spec : Prop :=
  ∀ n, P332914337293421414.a n = A167464 (n + 1)

end A167464

/-! ## A167464.P13273152211179504922

`p?[n*A057979(A105052(2*n+1))]`
-/

namespace A167464.P13273152211179504922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057979 (A105052 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167464.P13273152211179504922

namespace A167464

/-- `p?[n*A057979(A105052(2*n+1))]` -/
def P13273152211179504922.Spec : Prop :=
  ∀ n, P13273152211179504922.a n = A167464 (n + 1)

end A167464

/-! ## A167464.P3963792592544436001

`p?[A057979(n)*A057979(A105052(n)²)]`
-/

namespace A167464.P3963792592544436001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n * A057979 (A105052 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167464.P3963792592544436001

namespace A167464

/-- `p?[A057979(n)*A057979(A105052(n)²)]` -/
def P3963792592544436001.Spec : Prop :=
  ∀ n, P3963792592544436001.a n = A167464 (n + 1)

end A167464

/-!
# A167465: a(n) = n^5 mod 16.

The programs for A167465, the canonical program `A167465.P2848841450099820333` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167465 has offset 0).

The definition of A167465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5)%16` (program `A167465.P2848841450099820333`, by `A167465.P2848841450099820333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167465.P2848841450099820333

`(n^5)%16`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167465

/-- `(n^5)%16` -/
def P2848841450099820333.Spec : Prop :=
  ∀ n, (P2848841450099820333.a n : ℤ) = A167465 n

theorem P2848841450099820333.correct : P2848841450099820333.Spec := by
  intro n
  simp only [A167465]

end A167465

/-!
# A167466: Primes p such that (p reversed)+8 is also a prime.

The programs for A167466, there is no canonical definition to state claims against.
-/

/-! ## A167466.P10975605540073971260

`p?[A222247(record[A135986(n+1)])]`
-/

namespace A167466.P10975605540073971260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167466.P10975605540073971260

/-! ## A167466.P12243503941981449179

`A080741(A192476(n+1))`
-/

namespace A167466.P12243503941981449179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080741 (A192476 (n + 1)).toNat

end

end A167466.P12243503941981449179

/-! ## A167466.P8186274524365088585

`filter[A237995(n+1), A114483(#)]`
-/

namespace A167466.P8186274524365088585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A114483 (f1 j).toNat = 1) n)

end

end A167466.P8186274524365088585

/-!
# A167467: a(n) = 25*n^3 - n*(5*n+1)/2 + 1.

The programs for A167467, the canonical program `A167467.P16531499451728873768` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167467 has offset 1).

The definition of A167467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167467.P16531499451728873768

`1+25*(n+1)^3-(n+1)*(5*(n+1)+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167467

/-- `1+25*(n+1)^3-(n+1)*(5*(n+1)+1)/2` -/
def P16531499451728873768.Spec : Prop :=
  ∀ n, P16531499451728873768.a n = (A167467 (n + 1) : ℚ)

end A167467

/-! ## A167467.P7429011273774516485

`25*(n+1)^3-(n+1)*(5*(n+1)+1)/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167467.P7429011273774516485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * (n + 1) ^ 3 : ℚ) - ((n + 1) * (5 * (n + 1) + 1) : ℚ) / 2 + 1

end

end A167467.P7429011273774516485

namespace A167467

/-- `25*(n+1)^3-(n+1)*(5*(n+1)+1)/2+1` -/
def P7429011273774516485.Spec : Prop :=
  ∀ n, P7429011273774516485.a n = (A167467 (n + 1) : ℚ)

end A167467

/-!
# A167469: a(n) = 3*n*(5*n-1)/2.

The programs for A167469, the canonical program `A167469.P11709936416618109750` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167469 has offset 1).

The definition of A167469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)*(5*(n+1)-1)/2` (program `A167469.P8509272502340555412`, by `A167469.P8509272502340555412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167469.P8509272502340555412

`3*(n+1)*(5*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167469.P8509272502340555412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) * ((5 * (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A167469.P8509272502340555412

namespace A167469

/-- `3*(n+1)*(5*(n+1)-1)/2` -/
def P8509272502340555412.Spec : Prop :=
  ∀ n, P8509272502340555412.a n = (A167469 (n + 1) : ℚ)

theorem P8509272502340555412.correct : P8509272502340555412.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A167469, Nat.add_sub_cancel, A167469.P8509272502340555412.a, A167469.P11709936416618109750.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A167469, Nat.add_sub_cancel, A167469.P8509272502340555412.a, A167469.P11709936416618109750.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A167469

/-! ## A167469.P11709936416618109750

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=6, a(1)=27, a(2)=63`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167469

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11709936416618109750.Spec : Prop :=
  ∀ n, P11709936416618109750.a n = A167469 (n + 1)

theorem P11709936416618109750.correct : P11709936416618109750.Spec := by
  intro n
  simp only [A167469, Nat.add_sub_cancel]

end A167469

/-! ## A167469.P6138878990791729533

`∑[ogf((6+9x)/(1-2x+x^2))]`
-/

namespace A167469.P6138878990791729533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167469.P6138878990791729533

namespace A167469

/-- `∑[ogf((6+9x)/(1-2x+x^2))]` -/
def P6138878990791729533.Spec : Prop :=
  ∀ n, P6138878990791729533.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P15544353292608329909

`ogf((6+9x)/(1-3x+3x^2-x^3))`
-/

namespace A167469.P15544353292608329909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 9] [1, -3, 3, -1] n

end

end A167469.P15544353292608329909

namespace A167469

/-- `ogf((6+9x)/(1-3x+3x^2-x^3))` -/
def P15544353292608329909.Spec : Prop :=
  ∀ n, P15544353292608329909.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P11690751232616842214

`floor(∑[a(n-1)+15])` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A167469.P11690751232616842214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167469.P11690751232616842214

namespace A167469

/-- `floor(∑[a(n-1)+15])` -/
def P11690751232616842214.Spec : Prop :=
  ∀ n, (P11690751232616842214.a n : ℤ) = A167469 (n + 1)

end A167469

/-! ## A167469.P10221760613705501768

`∑[a(n-1)+15]+n+1` with `a(0)=5`
-/

namespace A167469.P10221760613705501768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A167469.P10221760613705501768

namespace A167469

/-- `∑[a(n-1)+15]+n+1` -/
def P10221760613705501768.Spec : Prop :=
  ∀ n, (P10221760613705501768.a n : ℤ) = A167469 (n + 1)

end A167469

/-! ## A167469.P17856939747863904356

`∑[A139606(n)]`
-/

namespace A167469.P17856939747863904356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167469.P17856939747863904356

namespace A167469

/-- `∑[A139606(n)]` -/
def P17856939747863904356.Spec : Prop :=
  ∀ n, P17856939747863904356.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P3957398106205251120

`∑[3*A016873(n)]`
-/

namespace A167469.P3957398106205251120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167469.P3957398106205251120

namespace A167469

/-- `∑[3*A016873(n)]` -/
def P3957398106205251120.Spec : Prop :=
  ∀ n, P3957398106205251120.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P12776033375317522856

`∑[A164284(n+1)-2]`
-/

namespace A167469.P12776033375317522856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164284 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167469.P12776033375317522856

namespace A167469

/-- `∑[A164284(n+1)-2]` -/
def P12776033375317522856.Spec : Prop :=
  ∀ n, P12776033375317522856.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P1635467700677947869

`∑[A304158(n+1)/4]`
-/

namespace A167469.P1635467700677947869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304158 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167469.P1635467700677947869

namespace A167469

/-- `∑[A304158(n+1)/4]` -/
def P1635467700677947869.Spec : Prop :=
  ∀ n, P1635467700677947869.a n = (A167469 (n + 1) : ℚ)

end A167469

/-! ## A167469.P11858824529145542498

`A181890(n)+1-∑[n]`
-/

namespace A167469.P11858824529145542498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181890 n + (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A167469.P11858824529145542498

namespace A167469

/-- `A181890(n)+1-∑[n]` -/
def P11858824529145542498.Spec : Prop :=
  ∀ n, P11858824529145542498.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P2598242086540564381

`3*(A192136(n+1)+n)`
-/

namespace A167469.P2598242086540564381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A192136 (n + 1) + (n : ℤ))

end

end A167469.P2598242086540564381

namespace A167469

/-- `3*(A192136(n+1)+n)` -/
def P2598242086540564381.Spec : Prop :=
  ∀ n, P2598242086540564381.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P15271810746231152519

`∑[A154609(n)]+(n+1)²`
-/

namespace A167469.P15271810746231152519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A167469.P15271810746231152519

namespace A167469

/-- `∑[A154609(n)]+(n+1)²` -/
def P15271810746231152519.Spec : Prop :=
  ∀ n, P15271810746231152519.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P16194406247309944750

`∑[A154612(n)]-(n+1)²`
-/

namespace A167469.P16194406247309944750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A167469.P16194406247309944750

namespace A167469

/-- `∑[A154612(n)]-(n+1)²` -/
def P16194406247309944750.Spec : Prop :=
  ∀ n, P16194406247309944750.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P6168493641610823201

`∑[A063130(n+1)-n]-1`
-/

namespace A167469.P6168493641610823201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063130 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167469.P6168493641610823201

namespace A167469

/-- `∑[A063130(n+1)-n]-1` -/
def P6168493641610823201.Spec : Prop :=
  ∀ n, P6168493641610823201.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P2582174800166128494

`A178977(n)+A003215(n)`
-/

namespace A167469.P2582174800166128494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178977 n + A003215 n

end

end A167469.P2582174800166128494

namespace A167469

/-- `A178977(n)+A003215(n)` -/
def P2582174800166128494.Spec : Prop :=
  ∀ n, P2582174800166128494.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P1295507036211516095

`A129863(n)+A067725(n)`
-/

namespace A167469.P1295507036211516095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n + A067725 n

end

end A167469.P1295507036211516095

namespace A167469

/-- `A129863(n)+A067725(n)` -/
def P1295507036211516095.Spec : Prop :=
  ∀ n, P1295507036211516095.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P1355191637719403352

`A186113(n)+A022273(n)`
-/

namespace A167469.P1355191637719403352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n + A022273 n

end

end A167469.P1355191637719403352

namespace A167469

/-- `A186113(n)+A022273(n)` -/
def P1355191637719403352.Spec : Prop :=
  ∀ n, P1355191637719403352.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P10300411115460540025

`A220083(n)+A017221(n)`
-/

namespace A167469.P10300411115460540025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n + A017221 n

end

end A167469.P10300411115460540025

namespace A167469

/-- `A220083(n)+A017221(n)` -/
def P10300411115460540025.Spec : Prop :=
  ∀ n, P10300411115460540025.a n = A167469 (n + 1)

end A167469

/-! ## A167469.P5423518947446386884

`A152741(n)+A104675(n)`
-/

namespace A167469.P5423518947446386884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n + A104675 n

end

end A167469.P5423518947446386884

namespace A167469

/-- `A152741(n)+A104675(n)` -/
def P5423518947446386884.Spec : Prop :=
  ∀ n, P5423518947446386884.a n = A167469 (n + 1)

end A167469

/-!
# A167470: Primes p such that (p reversed)+ 8 is a square.

The programs for A167470, there is no canonical definition to state claims against.
-/

/-! ## A167470.P17602225838708477632

`A224534(A056458(2*(n+2))+char[∏{p}[n, #]-1])`
-/

namespace A167470.P17602225838708477632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224534 (A056458 (2 * (n + 2)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A167470.P17602225838708477632

/-!
# A167471: Janet periodic table of the elements and structured hexagonal diamond numbers. a(n) = A166911(2*n) + A166911(2*n+1).

The programs for A167471, the canonical program `A167471.P9399630394748707823` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167471 has offset 1).

The definition of A167471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A166911(2*n)+A166911(2*n+1)` (program `A167471.P9399630394748707823`, by `A167471.P9399630394748707823.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167471.P13505672314912564651

`16*(n+1)*(2-3*(n+1)+4*(n+1)²)/3`
-/

namespace A167471.P13505672314912564651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * (n + 1) : ℤ) * (2 - (3 * (n + 1) : ℤ) + (4 * (n + 1) ^ 2 : ℤ)) : ℚ) / 3

end

end A167471.P13505672314912564651

namespace A167471

/-- `16*(n+1)*(2-3*(n+1)+4*(n+1)²)/3` -/
def P13505672314912564651.Spec : Prop :=
  ∀ n, P13505672314912564651.a n = (A167471 (n + 1) : ℚ)

end A167471

/-! ## A167471.P5606311543274933768

`16*A100178(n+1)`
-/

namespace A167471.P5606311543274933768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A100178 (n + 1)

end

end A167471.P5606311543274933768

namespace A167471

/-- `16*A100178(n+1)` -/
def P5606311543274933768.Spec : Prop :=
  ∀ n, P5606311543274933768.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P9399630394748707823

`A166911(2*n)+A166911(2*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167471

/-- `A166911(2*n)+A166911(2*n+1)` -/
def P9399630394748707823.Spec : Prop :=
  ∀ n, P9399630394748707823.a n = A167471 (n + 1)

theorem P9399630394748707823.correct : P9399630394748707823.Spec := by
  intro n
  simp only [A167471, Nat.add_sub_cancel]

end A167471

/-! ## A167471.P12102133211423269948

`A016802(n+1)+∑[(8*n)²]`
-/

namespace A167471.P12102133211423269948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A167471.P12102133211423269948

namespace A167471

/-- `A016802(n+1)+∑[(8*n)²]` -/
def P12102133211423269948.Spec : Prop :=
  ∀ n, P12102133211423269948.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P16128853686002623641

`A019560(n+1)+2-A010006(n+1)`
-/

namespace A167471.P16128853686002623641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019560 (n + 1) + (2 - A010006 (n + 1))

end

end A167471.P16128853686002623641

namespace A167471

/-- `A019560(n+1)+2-A010006(n+1)` -/
def P16128853686002623641.Spec : Prop :=
  ∀ n, P16128853686002623641.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P18146387398515799035

`Δ[16*A071238(n)]`
-/

namespace A167471.P18146387398515799035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A071238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167471.P18146387398515799035

namespace A167471

/-- `Δ[16*A071238(n)]` -/
def P18146387398515799035.Spec : Prop :=
  ∀ n, P18146387398515799035.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P266094865657939589

`2*A100504(Δ[n²])`
-/

namespace A167471.P266094865657939589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100504 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A167471.P266094865657939589

namespace A167471

/-- `2*A100504(Δ[n²])` -/
def P266094865657939589.Spec : Prop :=
  ∀ n, P266094865657939589.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P6842961371132123433

`8*A171218(2*n+1)`
-/

namespace A167471.P6842961371132123433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A171218 (2 * n + 1)

end

end A167471.P6842961371132123433

namespace A167471

/-- `8*A171218(2*n+1)` -/
def P6842961371132123433.Spec : Prop :=
  ∀ n, P6842961371132123433.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P12912739098586309242

`8*A208995(2*n+1)`
-/

namespace A167471.P12912739098586309242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A208995 (2 * n + 1)

end

end A167471.P12912739098586309242

namespace A167471

/-- `8*A208995(2*n+1)` -/
def P12912739098586309242.Spec : Prop :=
  ∀ n, P12912739098586309242.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P11882573442503894954

`4*n+5+A057813(2*n+1)`
-/

namespace A167471.P11882573442503894954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) + A057813 (2 * n + 1)

end

end A167471.P11882573442503894954

namespace A167471

/-- `4*n+5+A057813(2*n+1)` -/
def P11882573442503894954.Spec : Prop :=
  ∀ n, P11882573442503894954.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P17073735288752670403

`A102860(2*(n+1))+(4*(n+1))²`
-/

namespace A167471.P17073735288752670403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102860 (2 * (n + 1)) + ((4 * (n + 1)) ^ 2 : ℤ)

end

end A167471.P17073735288752670403

namespace A167471

/-- `A102860(2*(n+1))+(4*(n+1))²` -/
def P17073735288752670403.Spec : Prop :=
  ∀ n, P17073735288752670403.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P3906828729317566223

`A167498(n)+A069894(2*n+1)`
-/

namespace A167471.P3906828729317566223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167498 n + A069894 (2 * n + 1)

end

end A167471.P3906828729317566223

namespace A167471

/-- `A167498(n)+A069894(2*n+1)` -/
def P3906828729317566223.Spec : Prop :=
  ∀ n, P3906828729317566223.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P2027030473428280340

`A100504(2*n+1)+A100504(2*n+1)`
-/

namespace A167471.P2027030473428280340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 (2 * n + 1) + A100504 (2 * n + 1)

end

end A167471.P2027030473428280340

namespace A167471

/-- `A100504(2*n+1)+A100504(2*n+1)` -/
def P2027030473428280340.Spec : Prop :=
  ∀ n, P2027030473428280340.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P8703376487090199377

`A005894(2*n+1)+A005898(2*n+1)+2`
-/

namespace A167471.P8703376487090199377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 (2 * n + 1) + (A005898 (2 * n + 1) + 2)

end

end A167471.P8703376487090199377

namespace A167471

/-- `A005894(2*n+1)+A005898(2*n+1)+2` -/
def P8703376487090199377.Spec : Prop :=
  ∀ n, P8703376487090199377.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P17836845131517168212

`A008412(2*n+1)+2*A005893(2*n+1)`
-/

namespace A167471.P17836845131517168212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 (2 * n + 1) + 2 * A005893 (2 * n + 1)

end

end A167471.P17836845131517168212

namespace A167471

/-- `A008412(2*n+1)+2*A005893(2*n+1)` -/
def P17836845131517168212.Spec : Prop :=
  ∀ n, P17836845131517168212.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P931890835790913166

`A046127(4*(n+1))`
-/

namespace A167471.P931890835790913166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046127 (4 * (n + 1))

end

end A167471.P931890835790913166

namespace A167471

/-- `A046127(4*(n+1))` -/
def P931890835790913166.Spec : Prop :=
  ∀ n, P931890835790913166.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P10627072759108617851

`A263614(A004768(n))`
-/

namespace A167471.P10627072759108617851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (A004768 n).toNat

end

end A167471.P10627072759108617851

namespace A167471

/-- `A263614(A004768(n))` -/
def P10627072759108617851.Spec : Prop :=
  ∀ n, P10627072759108617851.a n = A167471 (n + 1)

end A167471

/-! ## A167471.P909640754549971529

`A263614(A017077(n+1))`
-/

namespace A167471.P909640754549971529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (A017077 (n + 1)).toNat

end

end A167471.P909640754549971529

namespace A167471

/-- `A263614(A017077(n+1))` -/
def P909640754549971529.Spec : Prop :=
  ∀ n, P909640754549971529.a n = A167471 (n + 1)

end A167471

/-!
# A167473: Primes p such that (p reversed)+10 is also a prime.

The programs for A167473, there is no canonical definition to state claims against.
-/

/-! ## A167473.P2313939024261622905

`A004086(p?[A004087(n+1)+10]-10)`
-/

namespace A167473.P2313939024261622905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 10).toNat

end

end A167473.P2313939024261622905

/-! ## A167473.P1873384805399365455

`p?[record[A276090(A016754(n))]]`
-/

namespace A167473.P1873384805399365455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276090 (A016754 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167473.P1873384805399365455

/-! ## A167473.P16072550536445663926

`p?[record[A276090(A129194(n))]]`
-/

namespace A167473.P16072550536445663926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276090 (A129194 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167473.P16072550536445663926

/-! ## A167473.P15039291392941473309

`filter[A089743(n+1), A135461(#)]`
-/

namespace A167473.P15039291392941473309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135461 (f1 j).toNat = 1) n)

end

end A167473.P15039291392941473309

/-! ## A167473.P16132084522743944723

`∩[A038614(n+1), A360799(n)]`
-/

namespace A167473.P16132084522743944723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167473.P16132084522743944723

/-!
# A167475: Primes p such that (p reversed)-10 is a square.

The programs for A167475, there is no canonical definition to state claims against.
-/

/-! ## A167475.P5016549064199693999

`A156902(A066307(n+1))`
-/

namespace A167475.P5016549064199693999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156902 (A066307 (n + 1)).toNat

end

end A167475.P5016549064199693999

/-! ## A167475.P18430708583878931528

`A130090(A165569(n+2)+1)`
-/

namespace A167475.P18430708583878931528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130090 (A165569 (n + 2) + 1).toNat

end

end A167475.P18430708583878931528

/-!
# A167477: Expansion of (1-3x+5x^2-x^3)/(1-3x+x^2)^2.

The programs for A167477, the canonical program `A167477.P8676434822826988566` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167477 has offset 0).

The definition of A167477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+5x^2-x^3)/(1-6x+11x^2-6x^3+x^4))` (program `A167477.P8676434822826988566`, by `A167477.P8676434822826988566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167477.P8676434822826988566

`ogf((1-3x+5x^2-x^3)/(1-6x+11x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167477

/-- `ogf((1-3x+5x^2-x^3)/(1-6x+11x^2-6x^3+x^4))` -/
def P8676434822826988566.Spec : Prop :=
  ∀ n, P8676434822826988566.a n = A167477 n

theorem P8676434822826988566.correct : P8676434822826988566.Spec := by
  intro n
  simp only [A167477]

end A167477

/-! ## A167477.P1839411608512175100

`∑[(n+1)*A088305(n)]`
-/

namespace A167477.P1839411608512175100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167477.P1839411608512175100

namespace A167477

/-- `∑[(n+1)*A088305(n)]` -/
def P1839411608512175100.Spec : Prop :=
  ∀ n, P1839411608512175100.a n = A167477 n

end A167477

/-! ## A167477.P17556850427113112497

`∑[(n+1)*A001906(n)]+1`
-/

namespace A167477.P17556850427113112497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167477.P17556850427113112497

namespace A167477

/-- `∑[(n+1)*A001906(n)]+1` -/
def P17556850427113112497.Spec : Prop :=
  ∀ n, P17556850427113112497.a n = A167477 n

end A167477

/-! ## A167477.P6331156137472198131

`∑[(n+1)*A000045(2*n)]+1`
-/

namespace A167477.P6331156137472198131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167477.P6331156137472198131

namespace A167477

/-- `∑[(n+1)*A000045(2*n)]+1` -/
def P6331156137472198131.Spec : Prop :=
  ∀ n, P6331156137472198131.a n = A167477 n

end A167477

/-! ## A167477.P14593750009127372263

`∑[(n+1)*A324969(2*n+1)]`
-/

namespace A167477.P14593750009127372263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324969 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167477.P14593750009127372263

namespace A167477

/-- `∑[(n+1)*A324969(2*n+1)]` -/
def P14593750009127372263.Spec : Prop :=
  ∀ n, P14593750009127372263.a n = A167477 n

end A167477

/-! ## A167477.P1641565199657798212

`∑[(n+1)*Δ[A001519(n)]+1]-n`
-/

namespace A167477.P1641565199657798212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A167477.P1641565199657798212

namespace A167477

/-- `∑[(n+1)*Δ[A001519(n)]+1]-n` -/
def P1641565199657798212.Spec : Prop :=
  ∀ n, P1641565199657798212.a n = A167477 n

end A167477

/-! ## A167477.P16141277297134805945

`A197649(n)+A122367(n)`
-/

namespace A167477.P16141277297134805945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197649 n + A122367 n

end

end A167477.P16141277297134805945

namespace A167477

/-- `A197649(n)+A122367(n)` -/
def P16141277297134805945.Spec : Prop :=
  ∀ n, P16141277297134805945.a n = A167477 n

end A167477

/-! ## A167477.P17779556582373750984

`A167478(n)-A197649(n)`
-/

namespace A167477.P17779556582373750984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167478 n - A197649 n

end

end A167477.P17779556582373750984

namespace A167477

/-- `A167478(n)-A197649(n)` -/
def P17779556582373750984.Spec : Prop :=
  ∀ n, P17779556582373750984.a n = A167477 n

end A167477

/-! ## A167477.P3910408055350628600

`A197649(n)+A001519(n+1)`
-/

namespace A167477.P3910408055350628600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197649 n + A001519 (n + 1)

end

end A167477.P3910408055350628600

namespace A167477

/-- `A197649(n)+A001519(n+1)` -/
def P3910408055350628600.Spec : Prop :=
  ∀ n, P3910408055350628600.a n = A167477 n

end A167477

/-! ## A167477.P3967765772291901510

`A117202(n+1)-A001906(n)`
-/

namespace A167477.P3967765772291901510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117202 (n + 1) - A001906 n

end

end A167477.P3967765772291901510

namespace A167477

/-- `A117202(n+1)-A001906(n)` -/
def P3967765772291901510.Spec : Prop :=
  ∀ n, P3967765772291901510.a n = A167477 n

end A167477

/-! ## A167477.P14399144580742317905

`A197649(n)+A127968(2*n)`
-/

namespace A167477.P14399144580742317905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197649 n + A127968 (2 * n)

end

end A167477.P14399144580742317905

namespace A167477

/-- `A197649(n)+A127968(2*n)` -/
def P14399144580742317905.Spec : Prop :=
  ∀ n, P14399144580742317905.a n = A167477 n

end A167477

/-! ## A167477.P13795767745003981678

`A128620(2*n)-A001906(n)`
-/

namespace A167477.P13795767745003981678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128620 (2 * n) - A001906 n

end

end A167477.P13795767745003981678

namespace A167477

/-- `A128620(2*n)-A001906(n)` -/
def P13795767745003981678.Spec : Prop :=
  ∀ n, P13795767745003981678.a n = A167477 n

end A167477

/-! ## A167477.P16091675232637664163

`A001519(n)+n*A122367(n)`
-/

namespace A167477.P16091675232637664163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + (n : ℤ) * A122367 n

end

end A167477.P16091675232637664163

namespace A167477

/-- `A001519(n)+n*A122367(n)` -/
def P16091675232637664163.Spec : Prop :=
  ∀ n, P16091675232637664163.a n = A167477 n

end A167477

/-! ## A167477.P18373574753308628876

`∑[(n+1)*A000045(A004277(n))]`
-/

namespace A167477.P18373574753308628876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167477.P18373574753308628876

namespace A167477

/-- `∑[(n+1)*A000045(A004277(n))]` -/
def P18373574753308628876.Spec : Prop :=
  ∀ n, P18373574753308628876.a n = A167477 n

end A167477

/-! ## A167477.P2163992442000670671

`∑[A000032(n)*A099920(n)]+1`
-/

namespace A167477.P2163992442000670671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167477.P2163992442000670671

namespace A167477

/-- `∑[A000032(n)*A099920(n)]+1` -/
def P2163992442000670671.Spec : Prop :=
  ∀ n, P2163992442000670671.a n = A167477 n

end A167477

/-! ## A167477.P3112423211374080119

`A197649(n)+A000045(2*n+1)`
-/

namespace A167477.P3112423211374080119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197649 n + A000045 (2 * n + 1)

end

end A167477.P3112423211374080119

namespace A167477

/-- `A197649(n)+A000045(2*n+1)` -/
def P3112423211374080119.Spec : Prop :=
  ∀ n, P3112423211374080119.a n = A167477 n

end A167477

/-! ## A167477.P5623595059206633853

`A117202(n+1)-A000045(2*n)`
-/

namespace A167477.P5623595059206633853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117202 (n + 1) - A000045 (2 * n)

end

end A167477.P5623595059206633853

namespace A167477

/-- `A117202(n+1)-A000045(2*n)` -/
def P5623595059206633853.Spec : Prop :=
  ∀ n, P5623595059206633853.a n = A167477 n

end A167477

/-! ## A167477.P8692617592874199289

`A128620(2*n)-A000045(2*n)`
-/

namespace A167477.P8692617592874199289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128620 (2 * n) - A000045 (2 * n)

end

end A167477.P8692617592874199289

namespace A167477

/-- `A128620(2*n)-A000045(2*n)` -/
def P8692617592874199289.Spec : Prop :=
  ∀ n, P8692617592874199289.a n = A167477 n

end A167477

/-! ## A167477.P1358293060853543196

`A128620(2*n)-A005013(2*n)`
-/

namespace A167477.P1358293060853543196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128620 (2 * n) - A005013 (2 * n)

end

end A167477.P1358293060853543196

namespace A167477

/-- `A128620(2*n)-A005013(2*n)` -/
def P1358293060853543196.Spec : Prop :=
  ∀ n, P1358293060853543196.a n = A167477 n

end A167477

/-! ## A167477.P4508735092655203822

`(A178521(2*n)+A000032(2*n))/2`
-/

namespace A167477.P4508735092655203822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178521 (2 * n) + A000032 (2 * n) : ℚ) / 2

end

end A167477.P4508735092655203822

namespace A167477

/-- `(A178521(2*n)+A000032(2*n))/2` -/
def P4508735092655203822.Spec : Prop :=
  ∀ n, P4508735092655203822.a n = (A167477 n : ℚ)

end A167477

/-!
# A167478: Expansion of (1-2x+6x^2-x^3)/(1-3x+x^2)^2.

The programs for A167478, the canonical program `A167478.P18319370491857746794` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167478 has offset 0).

The definition of A167478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+6x^2-x^3)/(1-6x+11x^2-6x^3+x^4))` (program `A167478.P18319370491857746794`, by `A167478.P18319370491857746794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167478.P18319370491857746794

`ogf((1-2x+6x^2-x^3)/(1-6x+11x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167478

/-- `ogf((1-2x+6x^2-x^3)/(1-6x+11x^2-6x^3+x^4))` -/
def P18319370491857746794.Spec : Prop :=
  ∀ n, P18319370491857746794.a n = A167478 n

theorem P18319370491857746794.correct : P18319370491857746794.Spec := by
  intro n
  simp only [A167478]

end A167478

/-! ## A167478.P2096870675870259852

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=19, a(3)=75`
-/

namespace A167478.P2096870675870259852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 19, 75] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A167478.P2096870675870259852

namespace A167478

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P2096870675870259852.Spec : Prop :=
  ∀ n, P2096870675870259852.a n = A167478 n

end A167478

/-! ## A167478.P14952422468655178656

`∑[A099920(2*n)]+1`
-/

namespace A167478.P14952422468655178656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167478.P14952422468655178656

namespace A167478

/-- `∑[A099920(2*n)]+1` -/
def P14952422468655178656.Spec : Prop :=
  ∀ n, P14952422468655178656.a n = A167478 n

end A167478

/-! ## A167478.P3519974203800338251

`∑[Δ[n²]*A088305(n)]`
-/

namespace A167478.P3519974203800338251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167478.P3519974203800338251

namespace A167478

/-- `∑[Δ[n²]*A088305(n)]` -/
def P3519974203800338251.Spec : Prop :=
  ∀ n, P3519974203800338251.a n = A167478 n

end A167478

/-! ## A167478.P11613316413604273422

`∑[(2*n+1)*A001906(n)]+1`
-/

namespace A167478.P11613316413604273422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167478.P11613316413604273422

namespace A167478

/-- `∑[(2*n+1)*A001906(n)]+1` -/
def P11613316413604273422.Spec : Prop :=
  ∀ n, P11613316413604273422.a n = A167478 n

end A167478

/-! ## A167478.P10489351200583545992

`∑[A000045(2*n)*Δ[n²]]+1`
-/

namespace A167478.P10489351200583545992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167478.P10489351200583545992

namespace A167478

/-- `∑[A000045(2*n)*Δ[n²]]+1` -/
def P10489351200583545992.Spec : Prop :=
  ∀ n, P10489351200583545992.a n = A167478 n

end A167478

/-! ## A167478.P1722326567517567884

`∑[(2*n+1)*A324969(2*n+1)]`
-/

namespace A167478.P1722326567517567884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A324969 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167478.P1722326567517567884

namespace A167478

/-- `∑[(2*n+1)*A324969(2*n+1)]` -/
def P1722326567517567884.Spec : Prop :=
  ∀ n, P1722326567517567884.a n = A167478 n

end A167478

/-! ## A167478.P12669556980429960446

`∑[(2*n+1)*Δ[A001519(n)]+1]-n`
-/

namespace A167478.P12669556980429960446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A167478.P12669556980429960446

namespace A167478

/-- `∑[(2*n+1)*Δ[A001519(n)]+1]-n` -/
def P12669556980429960446.Spec : Prop :=
  ∀ n, P12669556980429960446.a n = A167478 n

end A167478

/-! ## A167478.P8644540061451567579

`∑[(2*n+1)*A000045(lcm(2, 2*n))]+1`
-/

namespace A167478.P8644540061451567579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (Nat.lcm 2 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A167478.P8644540061451567579

namespace A167478

/-- `∑[(2*n+1)*A000045(lcm(2, 2*n))]+1` -/
def P8644540061451567579.Spec : Prop :=
  ∀ n, P8644540061451567579.a n = A167478 n

end A167478

/-! ## A167478.P13579251655751252085

`a(n-1)+(2*n+1)*A000045(and(2*n+1, 2*n))` with `a(0)=1`
-/

namespace A167478.P13579251655751252085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1 : ℤ) * A000045 (Nat.land (2 * n + 1) (2 * n))

end

end A167478.P13579251655751252085

namespace A167478

/-- `a(n-1)+(2*n+1)*A000045(and(2*n+1, 2*n))` -/
def P13579251655751252085.Spec : Prop :=
  ∀ n, P13579251655751252085.a n = A167478 n

end A167478

/-! ## A167478.P16674583496506183518

`A197649(n)+A167477(n)`
-/

namespace A167478.P16674583496506183518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197649 n + A167477 n

end

end A167478.P16674583496506183518

namespace A167478

/-- `A197649(n)+A167477(n)` -/
def P16674583496506183518.Spec : Prop :=
  ∀ n, P16674583496506183518.a n = A167478 n

end A167478

/-! ## A167478.P16757783101040665470

`A192858(n+1)-A054492(n)`
-/

namespace A167478.P16757783101040665470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192858 (n + 1) - A054492 n

end

end A167478.P16757783101040665470

namespace A167478

/-- `A192858(n+1)-A054492(n)` -/
def P16757783101040665470.Spec : Prop :=
  ∀ n, P16757783101040665470.a n = A167478 n

end A167478

/-! ## A167478.P13258954971344689698

`A178521(2*n)+A001519(n)`
-/

namespace A167478.P13258954971344689698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 (2 * n) + A001519 n

end

end A167478.P13258954971344689698

namespace A167478

/-- `A178521(2*n)+A001519(n)` -/
def P13258954971344689698.Spec : Prop :=
  ∀ n, P13258954971344689698.a n = A167478 n

end A167478

/-! ## A167478.P14619754150836982854

`A122367(n)+2*A197649(n)`
-/

namespace A167478.P14619754150836982854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n + 2 * A197649 n

end

end A167478.P14619754150836982854

namespace A167478

/-- `A122367(n)+2*A197649(n)` -/
def P14619754150836982854.Spec : Prop :=
  ∀ n, P14619754150836982854.a n = A167478 n

end A167478

/-! ## A167478.P16042057207360955324

`2*A167477(n)-A122367(n)`
-/

namespace A167478.P16042057207360955324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167477 n - A122367 n

end

end A167478.P16042057207360955324

namespace A167478

/-- `2*A167477(n)-A122367(n)` -/
def P16042057207360955324.Spec : Prop :=
  ∀ n, P16042057207360955324.a n = A167478 n

end A167478

/-! ## A167478.P7213534750175028798

`A099920(2*n+1)-A002878(n)`
-/

namespace A167478.P7213534750175028798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (2 * n + 1) - A002878 n

end

end A167478.P7213534750175028798

namespace A167478

/-- `A099920(2*n+1)-A002878(n)` -/
def P7213534750175028798.Spec : Prop :=
  ∀ n, P7213534750175028798.a n = A167478 n

end A167478

/-! ## A167478.P13587143470294825800

`A061705(2*n+1)-A054492(n)`
-/

namespace A167478.P13587143470294825800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 (2 * n + 1) - A054492 n

end

end A167478.P13587143470294825800

namespace A167478

/-- `A061705(2*n+1)-A054492(n)` -/
def P13587143470294825800.Spec : Prop :=
  ∀ n, P13587143470294825800.a n = A167478 n

end A167478

/-! ## A167478.P5335458940044722875

`∑[(2*n+1)*A000045(A004277(n))]`
-/

namespace A167478.P5335458940044722875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000045 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167478.P5335458940044722875

namespace A167478

/-- `∑[(2*n+1)*A000045(A004277(n))]` -/
def P5335458940044722875.Spec : Prop :=
  ∀ n, P5335458940044722875.a n = A167478 n

end A167478

/-! ## A167478.P15294888296952599236

`A007502(2*(n+1))-A000285(2*n)`
-/

namespace A167478.P15294888296952599236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (2 * (n + 1)) - A000285 (2 * n)

end

end A167478.P15294888296952599236

namespace A167478

/-- `A007502(2*(n+1))-A000285(2*n)` -/
def P15294888296952599236.Spec : Prop :=
  ∀ n, P15294888296952599236.a n = A167478 n

end A167478

/-! ## A167478.P4286339275849098399

`A000045(2*n+1)+∑[A045925(2*n)]`
-/

namespace A167478.P4286339275849098399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167478.P4286339275849098399

namespace A167478

/-- `A000045(2*n+1)+∑[A045925(2*n)]` -/
def P4286339275849098399.Spec : Prop :=
  ∀ n, P4286339275849098399.a n = A167478 n

end A167478

/-!
# A167479: Convolution of the Catalan numbers A000108(n) and (-2)^n.

The programs for A167479, the canonical program `A167479.P1697017817167652318` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167479 has offset 0).

The definition of A167479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167479.P1697017817167652318

`A000108(n)-2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167479

/-- `A000108(n)-2*a(n-1)` -/
def P1697017817167652318.Spec : Prop :=
  ∀ n, P1697017817167652318.a n = A167479 n

theorem P1697017817167652318.correct : P1697017817167652318.Spec := by
  intro n
  simp only [A167479]

end A167479

/-! ## A167479.P2060848565265200507

`abs(A168491(n))-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P2060848565265200507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A168491 n| - 2 * a (n - 1)

end

end A167479.P2060848565265200507

namespace A167479

/-- `abs(A168491(n))-2*a(n-1)` -/
def P2060848565265200507.Spec : Prop :=
  ∀ n, P2060848565265200507.a n = A167479 n

end A167479

/-! ## A167479.P10407081231244628315

`A120588(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P10407081231244628315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120588 (n + 1) - 2 * a (n - 1)

end

end A167479.P10407081231244628315

namespace A167479

/-- `A120588(n+1)-2*a(n-1)` -/
def P10407081231244628315.Spec : Prop :=
  ∀ n, P10407081231244628315.a n = A167479 n

end A167479

/-! ## A167479.P16575904350225217813

`A120304(n)+2-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P16575904350225217813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120304 n + 2 - 2 * a (n - 1)

end

end A167479.P16575904350225217813

namespace A167479

/-- `A120304(n)+2-2*a(n-1)` -/
def P16575904350225217813.Spec : Prop :=
  ∀ n, P16575904350225217813.a n = A167479 n

theorem P16575904350225217813.correct : P16575904350225217813.Spec := by
  intro n
  simp only [A167479, Nat.add_sub_cancel, A167479.P16575904350225217813.a, A167479.P1697017817167652318.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167479

/-! ## A167479.P16665525590953239104

`A028304(2*n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P16665525590953239104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028304 (2 * n) - 2 * a (n - 1)

end

end A167479.P16665525590953239104

namespace A167479

/-- `A028304(2*n)-2*a(n-1)` -/
def P16665525590953239104.Spec : Prop :=
  ∀ n, P16665525590953239104.a n = A167479 n

end A167479

/-! ## A167479.P17819117444987429879

`A208355(2*n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P17819117444987429879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A208355 (2 * n) - 2 * a (n - 1)

end

end A167479.P17819117444987429879

namespace A167479

/-- `A208355(2*n)-2*a(n-1)` -/
def P17819117444987429879.Spec : Prop :=
  ∀ n, P17819117444987429879.a n = A167479 n

end A167479

/-! ## A167479.P6924526018043846411

`A028303(2*n)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A167479.P6924526018043846411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028303 (2 * n) - a (n - 1) - a (n - 1)

end

end A167479.P6924526018043846411

namespace A167479

/-- `A028303(2*n)-a(n-1)-a(n-1)` -/
def P6924526018043846411.Spec : Prop :=
  ∀ n, P6924526018043846411.a n = A167479 n

end A167479

/-! ## A167479.P8050849386190608187

`A263986(n)+A000045(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P8050849386190608187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A263986 n + A000045 n - 2 * a (n - 1)

end

end A167479.P8050849386190608187

namespace A167479

/-- `A263986(n)+A000045(n)-2*a(n-1)` -/
def P8050849386190608187.Spec : Prop :=
  ∀ n, P8050849386190608187.a n = A167479 n

theorem P8050849386190608187.correct : P8050849386190608187.Spec := by
  intro n
  simp only [A167479, Nat.add_sub_cancel, A167479.P8050849386190608187.a, A167479.P1697017817167652318.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A263986, A263986.P11008450882714767519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A167479

/-! ## A167479.P10725862594112822165

`ratio[A120588(n)]*A120588(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P10725862594112822165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A120588 n : ℚ) - 2 * a (n - 1)

end

end A167479.P10725862594112822165

namespace A167479

/-- `ratio[A120588(n)]*A120588(n)-2*a(n-1)` -/
def P10725862594112822165.Spec : Prop :=
  ∀ n, P10725862594112822165.a n = (A167479 n : ℚ)

end A167479

/-! ## A167479.P8379608079920712122

`A068875(n)/2-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P8379608079920712122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A068875 n : ℚ) / 2 - 2 * a (n - 1)

end

end A167479.P8379608079920712122

namespace A167479

/-- `A068875(n)/2-2*a(n-1)` -/
def P8379608079920712122.Spec : Prop :=
  ∀ n, P8379608079920712122.a n = (A167479 n : ℚ)

end A167479

/-! ## A167479.P3559559583079640163

`ceil(A131428(n)/2)-2*a(n-1)` with `a(0)=1`
-/

namespace A167479.P3559559583079640163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A131428 n : ℚ) / 2⌉ - 2 * a (n - 1)

end

end A167479.P3559559583079640163

namespace A167479

/-- `ceil(A131428(n)/2)-2*a(n-1)` -/
def P3559559583079640163.Spec : Prop :=
  ∀ n, P3559559583079640163.a n = A167479 n

end A167479

/-! ## A167479.P12601496980794134960

`A039599(∑[n])-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A167479.P12601496980794134960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039599 (∑ j ∈ Finset.range (n + 1), f1 j) - (a (n - 1) + a (n - 1))

end

end A167479.P12601496980794134960

namespace A167479

/-- `A039599(∑[n])-(a(n-1)+a(n-1))` -/
def P12601496980794134960.Spec : Prop :=
  ∀ n, P12601496980794134960.a n = A167479 n

end A167479

/-! ## A167479.P1125105485986141134

`A009766(A000096(n))-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A167479.P1125105485986141134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009766 (A000096 n).toNat - a (n - 1) - a (n - 1)

end

end A167479.P1125105485986141134

namespace A167479

/-- `A009766(A000096(n))-a(n-1)-a(n-1)` -/
def P1125105485986141134.Spec : Prop :=
  ∀ n, P1125105485986141134.a n = A167479 n

end A167479

/-! ## A167479.P6219350561512738372

`A000108(A118759(n))-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A167479.P6219350561512738372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000108 (A118759 n).toNat - a (n - 1) - a (n - 1)

end

end A167479.P6219350561512738372

namespace A167479

/-- `A000108(A118759(n))-a(n-1)-a(n-1)` -/
def P6219350561512738372.Spec : Prop :=
  ∀ n, P6219350561512738372.a n = A167479 n

end A167479

/-!
# A167480: a(n)= primepi(n) if n is prime, otherwise a(n)=prime(n).

The programs for A167480, there is no canonical definition to state claims against.
-/

/-! ## A167480.P18187405032268016235

`A064427(A068519(n+1))-n`
-/

namespace A167480.P18187405032268016235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (A068519 (n + 1)).toNat - (n : ℤ)

end

end A167480.P18187405032268016235

/-! ## A167480.P3505432256756302311

`A095116(A175027(n+1))-n`
-/

namespace A167480.P3505432256756302311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (A175027 (n + 1)).toNat - (n : ℤ)

end

end A167480.P3505432256756302311

/-! ## A167480.P16856349793465881647

`A095116(A165634(A064427(n+1)))-n`
-/

namespace A167480.P16856349793465881647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (A165634 (A064427 (n + 1)).toNat).toNat - (n : ℤ)

end

end A167480.P16856349793465881647

/-! ## A167480.P6455267913514762308

`p?[A006370(n)]%A111181(A186102(n+1))`
-/

namespace A167480.P6455267913514762308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A111181 (A186102 (n + 1)).toNat)

end

end A167480.P6455267913514762308

/-! ## A167480.P12073703797386862278

`A095117(A068519(n+1))-A000027(n+1)`
-/

namespace A167480.P12073703797386862278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A068519 (n + 1)).toNat - A000027 (n + 1)

end

end A167480.P12073703797386862278

/-! ## A167480.P1761856728899828623

`A000040(n+1)%A111181(A186102(n+1))`
-/

namespace A167480.P1761856728899828623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A111181 (A186102 (n + 1)).toNat)

end

end A167480.P1761856728899828623

/-! ## A167480.P843132511309367833

`record[A006530(n+2)]%A111181(A186102(n+1))`
-/

namespace A167480.P843132511309367833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A111181 (A186102 (n + 1)).toNat)

end

end A167480.P843132511309367833

/-! ## A167480.P1441168895580058487

`record[A014963(n+2)]%A111181(A186102(n+1))`
-/

namespace A167480.P1441168895580058487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A111181 (A186102 (n + 1)).toNat)

end

end A167480.P1441168895580058487

/-!
# A167481: Convolution of the central binomial coefficients A000984(n) and (-2)^n.

The programs for A167481, the canonical program `A167481.P11598172894172064079` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167481 has offset 0).

The definition of A167481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167481.P11598172894172064079

`A000984(n)-2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167481

/-- `A000984(n)-2*a(n-1)` -/
def P11598172894172064079.Spec : Prop :=
  ∀ n, P11598172894172064079.a n = A167481 n

theorem P11598172894172064079.correct : P11598172894172064079.Spec := by
  intro n
  simp only [A167481]

end A167481

/-! ## A167481.P16699700935196037902

`2*(A088218(n)-a(n-1))` with `a(0)=1`
-/

namespace A167481.P16699700935196037902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A088218 n - a (n - 1))

end

end A167481.P16699700935196037902

namespace A167481

/-- `2*(A088218(n)-a(n-1))` -/
def P16699700935196037902.Spec : Prop :=
  ∀ n, P16699700935196037902.a n = A167481 n

end A167481

/-! ## A167481.P11024510287384548725

`record[A081668(n)]-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P11024510287384548725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * a (n - 1)

end

end A167481.P11024510287384548725

namespace A167481

/-- `record[A081668(n)]-2*a(n-1)` -/
def P11024510287384548725.Spec : Prop :=
  ∀ n, P11024510287384548725.a n = A167481 n

end A167481

/-! ## A167481.P12960376146341426838

`record[A126869(n)]-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P12960376146341426838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * a (n - 1)

end

end A167481.P12960376146341426838

namespace A167481

/-- `record[A126869(n)]-2*a(n-1)` -/
def P12960376146341426838.Spec : Prop :=
  ∀ n, P12960376146341426838.a n = A167481 n

end A167481

/-! ## A167481.P15472007602392725217

`A001405(2*n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P15472007602392725217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001405 (2 * n) - 2 * a (n - 1)

end

end A167481.P15472007602392725217

namespace A167481

/-- `A001405(2*n)-2*a(n-1)` -/
def P15472007602392725217.Spec : Prop :=
  ∀ n, P15472007602392725217.a n = A167481 n

end A167481

/-! ## A167481.P15350800782012265183

`(n+1)*A000108(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P15350800782012265183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A000108 n - 2 * a (n - 1)

end

end A167481.P15350800782012265183

namespace A167481

/-- `(n+1)*A000108(n)-2*a(n-1)` -/
def P15350800782012265183.Spec : Prop :=
  ∀ n, P15350800782012265183.a n = A167481 n

end A167481

/-! ## A167481.P11313612091989316169

`A210736(Δ[n²])-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A167481.P11313612091989316169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1) - a (n - 1)

end

end A167481.P11313612091989316169

namespace A167481

/-- `A210736(Δ[n²])-a(n-1)-a(n-1)` -/
def P11313612091989316169.Spec : Prop :=
  ∀ n, P11313612091989316169.a n = A167481 n

end A167481

/-! ## A167481.P7573911595090698914

`A337499(A004273(n))-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P7573911595090698914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337499 (A004273 n).toNat - 2 * a (n - 1)

end

end A167481.P7573911595090698914

namespace A167481

/-- `A337499(A004273(n))-2*a(n-1)` -/
def P7573911595090698914.Spec : Prop :=
  ∀ n, P7573911595090698914.a n = A167481 n

end A167481

/-! ## A167481.P17959021321488882274

`C(2*n, n)-2*a(n-1)` with `a(0)=1`
-/

namespace A167481.P17959021321488882274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) n : ℤ) - 2 * a (n - 1)

end

end A167481.P17959021321488882274

namespace A167481

/-- `C(2*n, n)-2*a(n-1)` -/
def P17959021321488882274.Spec : Prop :=
  ∀ n, P17959021321488882274.a n = A167481 n

end A167481

/-! ## A167481.P7990670517054583816

`2*(A007318(2*n²)-a(n-1))` with `a(0)=1`
-/

namespace A167481.P7990670517054583816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A007318 (2 * n ^ 2) - a (n - 1))

end

end A167481.P7990670517054583816

namespace A167481

/-- `2*(A007318(2*n²)-a(n-1))` -/
def P7990670517054583816.Spec : Prop :=
  ∀ n, P7990670517054583816.a n = A167481 n

end A167481

/-!
# A167482: a(n)=n-1 if n is prime, otherwise a(n)=n+1.

The programs for A167482, there is no canonical definition to state claims against.
-/

/-! ## A167482.P8183724664351547974

`round(acot(∑{p}[n+1, C(#, n)])+n)`
-/

namespace A167482.P8183724664351547974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℝ) + (n : ℝ))

end

end A167482.P8183724664351547974

/-! ## A167482.P11190020868645653558

`n+2-and(2, 6^∑{e}[n+1, #])`
-/

namespace A167482.P11190020868645653558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land 2 (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A167482.P11190020868645653558

/-! ## A167482.P9249034998174557596

`n-(2*char[record[∏{p}[n, #-1]]]-2)`
-/

namespace A167482.P9249034998174557596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 2)

end

end A167482.P9249034998174557596

/-! ## A167482.P577875680188457623

`2*∏{p}[n+1, C(#%n, #)]+n`
-/

namespace A167482.P577875680188457623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + n

end

end A167482.P577875680188457623

/-! ## A167482.P17881509915363191306

`2*C(n, ∑{p}[n+1, C(#, n)])+n`
-/

namespace A167482.P17881509915363191306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) + n

end

end A167482.P17881509915363191306

/-! ## A167482.P9493920095618057337

`2*∏{p}[n+1, C(n, C(#, n))]+n`
-/

namespace A167482.P9493920095618057337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose n (Nat.choose p n)) + n

end

end A167482.P9493920095618057337

/-! ## A167482.P4580072687606524461

`lcm(2, C(n, ∑{p}[n+1, C(#, n)]))+n`
-/

namespace A167482.P4580072687606524461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n)) + n

end

end A167482.P4580072687606524461

/-! ## A167482.P3563042506662932792

`and(2, -(14^∑{e}[n+1, #]+1))+n`
-/

namespace A167482.P3563042506662932792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(14 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + 1 : ℤ)) + (n : ℤ)

end

end A167482.P3563042506662932792

/-! ## A167482.P17961307870598968494

`n+2-2*char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A167482.P17961307870598968494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A167482.P17961307870598968494

/-! ## A167482.P15328036395819707734

`∑{p}[C(n, ∑{p}[n+1, C(#, n)])+1, #]+n`
-/

namespace A167482.P15328036395819707734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + n

end

end A167482.P15328036395819707734

/-!
# A167483: Primes prime(n) such that n and prime(n) have only prime digits.

The programs for A167483, there is no canonical definition to state claims against.
-/

/-! ## A167483.P7442553367410019154

`∩[A019546(n+1), A155990(n+1)]`
-/

namespace A167483.P7442553367410019154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167483.P7442553367410019154

/-! ## A167483.P7705047473909922590

`∩[A062087(n+1), A155990(n+1)]`
-/

namespace A167483.P7705047473909922590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167483.P7705047473909922590

/-! ## A167483.P14571103232401368750

`∩[A046034(n+1), A155990(n+1)]`
-/

namespace A167483.P14571103232401368750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167483.P14571103232401368750

/-! ## A167483.P10446543988564986993

`A000040(A155088(n+1))`
-/

namespace A167483.P10446543988564986993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A155088 (n + 1)).toNat

end

end A167483.P10446543988564986993

/-! ## A167483.P12338071053485177737

`A008578(A155088(n+1)+1)`
-/

namespace A167483.P12338071053485177737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A155088 (n + 1) + 1).toNat

end

end A167483.P12338071053485177737

/-!
# A167484: For n people on one side of a river, the number of ways they can all travel to the opposite side following the pattern of 2 sent, 1 returns, 2 sent, 1 returns, ..., 2 sent.

The programs for A167484, the canonical program `A167484.P16612631913846062279` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167484 has offset 1).

The definition of A167484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167484.P16612631913846062279

`(n+1)!*n!²/2^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167484

/-- `(n+1)!*n!²/2^n` -/
def P16612631913846062279.Spec : Prop :=
  ∀ n, P16612631913846062279.a n = (A167484 (n + 1) : ℚ)

end A167484

/-! ## A167484.P2384317895508950823

`∏[floor(acot(n))+n*∑[n]]`
-/

namespace A167484.P2384317895508950823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((n * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A167484.P2384317895508950823

namespace A167484

/-- `∏[floor(acot(n))+n*∑[n]]` -/
def P2384317895508950823.Spec : Prop :=
  ∀ n, P2384317895508950823.a n = A167484 (n + 1)

end A167484

/-! ## A167484.P6970300388174228586

`n*a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A167484.P6970300388174228586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A167484.P6970300388174228586

namespace A167484

/-- `n*a(n-1)*∑[n]` -/
def P6970300388174228586.Spec : Prop :=
  ∀ n, (P6970300388174228586.a n : ℤ) = A167484 (n + 1)

end A167484

/-! ## A167484.P11105167077364825608

`∏[round(sqrt((n*∑[n])²+1))]`
-/

namespace A167484.P11105167077364825608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2 + 1 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A167484.P11105167077364825608

namespace A167484

/-- `∏[round(sqrt((n*∑[n])²+1))]` -/
def P11105167077364825608.Spec : Prop :=
  ∀ n, P11105167077364825608.a n = A167484 (n + 1)

end A167484

/-! ## A167484.P42464834240404724

`n!*∏[round(1/acot(∑[n]))]`
-/

namespace A167484.P42464834240404724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A167484.P42464834240404724

namespace A167484

/-- `n!*∏[round(1/acot(∑[n]))]` -/
def P42464834240404724.Spec : Prop :=
  ∀ n, P42464834240404724.a n = A167484 (n + 1)

end A167484

/-!
# A167487: a(n) = n*(n + 3)/2 + 8.

The programs for A167487, the canonical program `A167487.P11731145125659151952` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167487 has offset 0).

The definition of A167487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+3)/2+8` (program `A167487.P15636407836105120602`, by `A167487.P15636407836105120602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167487.P15636407836105120602

`n*(n+3)/2+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167487.P15636407836105120602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 3) : ℚ) / 2 + 8

end

end A167487.P15636407836105120602

namespace A167487

/-- `n*(n+3)/2+8` -/
def P15636407836105120602.Spec : Prop :=
  ∀ n, P15636407836105120602.a n = (A167487 n : ℚ)

theorem P15636407836105120602.correct : P15636407836105120602.Spec := by
  intro n
  induction n with
  | zero => simp [A167487, A167487.P15636407836105120602.a, A167487.P11731145125659151952.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A167487, Nat.add_sub_cancel, A167487.P15636407836105120602.a, A167487.P11731145125659151952.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A167487

/-! ## A167487.P7157856530524140997

`record[C(n, 2)+8-n]`
-/

namespace A167487.P7157856530524140997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 8 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167487.P7157856530524140997

namespace A167487

/-- `record[C(n, 2)+8-n]` -/
def P7157856530524140997.Spec : Prop :=
  ∀ n, P7157856530524140997.a n = A167487 n

end A167487

/-! ## A167487.P14725419361359239789

`∑[ceil(acot(n))^3+n]`
-/

namespace A167487.P14725419361359239789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167487.P14725419361359239789

namespace A167487

/-- `∑[ceil(acot(n))^3+n]` -/
def P14725419361359239789.Spec : Prop :=
  ∀ n, P14725419361359239789.a n = A167487 n

end A167487

/-! ## A167487.P17340769561557680107

`record[a(n-1)+n]` with `a(0)=8, a(1)=0, a(2)=10`
-/

namespace A167487.P17340769561557680107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 0, 10] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167487.P17340769561557680107

namespace A167487

/-- `record[a(n-1)+n]` -/
def P17340769561557680107.Spec : Prop :=
  ∀ n, (P17340769561557680107.a n : ℤ) = A167487 n

end A167487

/-! ## A167487.P1565882879644961579

`abs(C(n+3, 2)+5-n)`
-/

namespace A167487.P1565882879644961579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 3) 2 : ℤ) + (5 - (n : ℤ))|

end

end A167487.P1565882879644961579

namespace A167487

/-- `abs(C(n+3, 2)+5-n)` -/
def P1565882879644961579.Spec : Prop :=
  ∀ n, P1565882879644961579.a n = A167487 n

end A167487

/-! ## A167487.P4620531325298884668

`abs(a(n-1)+1+n)` with `a(0)=8`
-/

namespace A167487.P4620531325298884668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 1 + n

end

end A167487.P4620531325298884668

namespace A167487

/-- `abs(a(n-1)+1+n)` -/
def P4620531325298884668.Spec : Prop :=
  ∀ n, (P4620531325298884668.a n : ℤ) = A167487 n

theorem P4620531325298884668.correct : P4620531325298884668.Spec := by
  intro n
  simp only [A167487, Nat.add_sub_cancel, A167487.P4620531325298884668.a, A167487.P11731145125659151952.a, SequenceMachineLib.memo_apply]

end A167487

/-! ## A167487.P3173015660885651833

`floor(a(n-1)+1+n)` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A167487.P3173015660885651833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 1 + n

end

end A167487.P3173015660885651833

namespace A167487

/-- `floor(a(n-1)+1+n)` -/
def P3173015660885651833.Spec : Prop :=
  ∀ n, (P3173015660885651833.a n : ℤ) = A167487 n

theorem P3173015660885651833.correct : P3173015660885651833.Spec := by
  intro n
  simp only [A167487, Nat.add_sub_cancel, A167487.P3173015660885651833.a, A167487.P11731145125659151952.a, SequenceMachineLib.memo_apply]

end A167487

/-! ## A167487.P11731145125659151952

`ceil(a(n-1)+1+n)` with `a(0)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167487

/-- `ceil(a(n-1)+1+n)` -/
def P11731145125659151952.Spec : Prop :=
  ∀ n, (P11731145125659151952.a n : ℤ) = A167487 n

theorem P11731145125659151952.correct : P11731145125659151952.Spec := by
  intro n
  simp only [A167487]

end A167487

/-! ## A167487.P2572585838634027663

`round(a(n-1)+1+n)` with `a(0)=8`

`round` is left out, it is the identity on integers.
-/

namespace A167487.P2572585838634027663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 1 + n

end

end A167487.P2572585838634027663

namespace A167487

/-- `round(a(n-1)+1+n)` -/
def P2572585838634027663.Spec : Prop :=
  ∀ n, (P2572585838634027663.a n : ℤ) = A167487 n

theorem P2572585838634027663.correct : P2572585838634027663.Spec := by
  intro n
  simp only [A167487, Nat.add_sub_cancel, A167487.P2572585838634027663.a, A167487.P11731145125659151952.a, SequenceMachineLib.memo_apply]

end A167487

/-! ## A167487.P11100502862143752901

`record[n-(2-a(n-1))]` with `a(0)=8`
-/

namespace A167487.P11100502862143752901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  (n : ℤ) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167487.P11100502862143752901

namespace A167487

/-- `record[n-(2-a(n-1))]` -/
def P11100502862143752901.Spec : Prop :=
  ∀ n, P11100502862143752901.a n = A167487 n

end A167487

/-! ## A167487.P7158515593468121223

`floor(∑[n]-cot(3)+n+1)`
-/

namespace A167487.P7158515593468121223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cot (3 : ℝ) + (n + 1 : ℝ)⌋

end

end A167487.P7158515593468121223

namespace A167487

/-- `floor(∑[n]-cot(3)+n+1)` -/
def P7158515593468121223.Spec : Prop :=
  ∀ n, P7158515593468121223.a n = A167487 n

end A167487

/-! ## A167487.P12388678991608639022

`round(∑[n]-cot(3)+n+1)`
-/

namespace A167487.P12388678991608639022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cot (3 : ℝ) + (n + 1 : ℝ))

end

end A167487.P12388678991608639022

namespace A167487

/-- `round(∑[n]-cot(3)+n+1)` -/
def P12388678991608639022.Spec : Prop :=
  ∀ n, P12388678991608639022.a n = A167487 n

end A167487

/-! ## A167487.P17418559417604750816

`abs(7-∑[ogf(-1/(1-2x+x^2))])`
-/

namespace A167487.P17418559417604750816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A167487.P17418559417604750816

namespace A167487

/-- `abs(7-∑[ogf(-1/(1-2x+x^2))])` -/
def P17418559417604750816.Spec : Prop :=
  ∀ n, P17418559417604750816.a n = A167487 n

end A167487

/-! ## A167487.P7407578415371474035

`∑[2*n-a(n-2)]` with `a(0)=8, a(1)=2, a(2)=3`
-/

namespace A167487.P7407578415371474035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 2, 3] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167487.P7407578415371474035

namespace A167487

/-- `∑[2*n-a(n-2)]` -/
def P7407578415371474035.Spec : Prop :=
  ∀ n, P7407578415371474035.a n = A167487 n

end A167487

/-! ## A167487.P9569287196217901879

`∑[n-(a(n-2)-n)]` with `a(0)=8, a(1)=2, a(2)=3`
-/

namespace A167487.P9569287196217901879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 2, 3] fun n f1 =>
  (n : ℤ) - (f1 (n - 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167487.P9569287196217901879

namespace A167487

/-- `∑[n-(a(n-2)-n)]` -/
def P9569287196217901879.Spec : Prop :=
  ∀ n, P9569287196217901879.a n = A167487 n

end A167487

/-! ## A167487.P16680146585796486000

`∑[xor(n+1, C(3, (n+1)²)²)]`
-/

namespace A167487.P16680146585796486000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.choose 3 ((n + 1) ^ 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167487.P16680146585796486000

namespace A167487

/-- `∑[xor(n+1, C(3, (n+1)²)²)]` -/
def P16680146585796486000.Spec : Prop :=
  ∀ n, (P16680146585796486000.a n : ℤ) = A167487 n

end A167487

/-! ## A167487.P12897988283694026202

`floor(C(n+3, 2)+ϕ²-(n-3))`
-/

namespace A167487.P12897988283694026202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 : ℝ) + (Real.goldenRatio ^ 2 - ((n : ℤ) - 3 : ℝ))⌋

end

end A167487.P12897988283694026202

namespace A167487

/-- `floor(C(n+3, 2)+ϕ²-(n-3))` -/
def P12897988283694026202.Spec : Prop :=
  ∀ n, P12897988283694026202.a n = A167487 n

end A167487

/-! ## A167487.P15442486890048636946

`((a(n-1)+n+1)^(1/2))²` with `a(0)=8`
-/

namespace A167487.P15442486890048636946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [8] fun n a =>
  ((a (n - 1) + (n + 1 : ℝ)) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A167487.P15442486890048636946

namespace A167487

/-- `((a(n-1)+n+1)^(1/2))²` -/
def P15442486890048636946.Spec : Prop :=
  ∀ n, P15442486890048636946.a n = (A167487 n : ℝ)

end A167487

/-! ## A167487.P7669561144842297345

`abs(2*n-(n-1-a(n-1)))` with `a(0)=8`
-/

namespace A167487.P7669561144842297345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |(2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 1))|

end

end A167487.P7669561144842297345

namespace A167487

/-- `abs(2*n-(n-1-a(n-1)))` -/
def P7669561144842297345.Spec : Prop :=
  ∀ n, P7669561144842297345.a n = A167487 n

end A167487

/-! ## A167487.P15157698074687371611

`(a(n-1)+n+1)%(n+3)²` with `a(0)=8`
-/

namespace A167487.P15157698074687371611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  (a (n - 1) + (n + 1)) % (n + 3) ^ 2

end

end A167487.P15157698074687371611

namespace A167487

/-- `(a(n-1)+n+1)%(n+3)²` -/
def P15157698074687371611.Spec : Prop :=
  ∀ n, (P15157698074687371611.a n : ℤ) = A167487 n

end A167487

/-!
# A167489: Product of run lengths in binary representation of n.

The programs for A167489, the canonical program `A167489.P14616616446572638969` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167489 has offset 0).

The definition of A167489 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227349, A227350, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167489.P14616616446572638969

`A227349(n)*A227350(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A167489

/-- `A227349(n)*A227350(n)` -/
def P14616616446572638969.Spec : Prop :=
  ∀ n, P14616616446572638969.a n = A167489 n

theorem P14616616446572638969.correct : P14616616446572638969.Spec := by
  intro n
  simp only [A167489]

end A167489

/-! ## A167489.P17745793948487032759

`A284558(n)*A284559(n)`
-/

namespace A167489.P17745793948487032759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284558 n * A284559 n

end

end A167489.P17745793948487032759

namespace A167489

/-- `A284558(n)*A284559(n)` -/
def P17745793948487032759.Spec : Prop :=
  ∀ n, P17745793948487032759.a n = A167489 n

end A167489

/-! ## A167489.P15478724537528606750

`A284582(n)*A284583(n)`
-/

namespace A167489.P15478724537528606750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284582 n * A284583 n

end

end A167489.P15478724537528606750

namespace A167489

/-- `A284582(n)*A284583(n)` -/
def P15478724537528606750.Spec : Prop :=
  ∀ n, P15478724537528606750.a n = A167489 n

end A167489

/-! ## A167489.P8213436100093288600

`A227355(A227352(2*n))`
-/

namespace A167489.P8213436100093288600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 (A227352 (2 * n)).toNat

end

end A167489.P8213436100093288600

namespace A167489

/-- `A227355(A227352(2*n))` -/
def P8213436100093288600.Spec : Prop :=
  ∀ n, P8213436100093288600.a n = A167489 n

end A167489

/-! ## A167489.P12453532489607480187

`A124758(xor(n, ceil(abs((1-n)/2))))`
-/

namespace A167489.P12453532489607480187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (Int.xor (n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉).toNat

end

end A167489.P12453532489607480187

namespace A167489

/-- `A124758(xor(n, ceil(abs((1-n)/2))))` -/
def P12453532489607480187.Spec : Prop :=
  ∀ n, P12453532489607480187.a n = A167489 n

end A167489

/-! ## A167489.P5757232735258987167

`A124758(A003188(n))`
-/

namespace A167489.P5757232735258987167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A003188 n).toNat

end

end A167489.P5757232735258987167

namespace A167489

/-- `A124758(A003188(n))` -/
def P5757232735258987167.Spec : Prop :=
  ∀ n, P5757232735258987167.a n = A167489 n

end A167489

/-! ## A167489.P10712088077082605279

`A003963(A382255(n))`
-/

namespace A167489.P10712088077082605279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A382255 n).toNat

end

end A167489.P10712088077082605279

namespace A167489

/-- `A003963(A382255(n))` -/
def P10712088077082605279.Spec : Prop :=
  ∀ n, P10712088077082605279.a n = A167489 n

end A167489

/-! ## A167489.P896196515050286677

`A106737(A279645(n))`
-/

namespace A167489.P896196515050286677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A279645 n).toNat

end

end A167489.P896196515050286677

namespace A167489

/-- `A106737(A279645(n))` -/
def P896196515050286677.Spec : Prop :=
  ∀ n, P896196515050286677.a n = A167489 n

end A167489

/-! ## A167489.P12615416765671177659

`A124758(A341915(n))`
-/

namespace A167489.P12615416765671177659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A341915 n).toNat

end

end A167489.P12615416765671177659

namespace A167489

/-- `A124758(A341915(n))` -/
def P12615416765671177659.Spec : Prop :=
  ∀ n, P12615416765671177659.a n = A167489 n

end A167489

/-! ## A167489.P3904228468836272346

`A366799(A281499(n))`
-/

namespace A167489.P3904228468836272346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (A281499 n).toNat

end

end A167489.P3904228468836272346

namespace A167489

/-- `A366799(A281499(n))` -/
def P3904228468836272346.Spec : Prop :=
  ∀ n, P3904228468836272346.a n = A167489 n

end A167489

/-! ## A167489.P9626222156505468742

`A227349(A035327(n))*A227349(n)`
-/

namespace A167489.P9626222156505468742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A035327 n).toNat * A227349 n

end

end A167489.P9626222156505468742

namespace A167489

/-- `A227349(A035327(n))*A227349(n)` -/
def P9626222156505468742.Spec : Prop :=
  ∀ n, P9626222156505468742.a n = A167489 n

end A167489

/-! ## A167489.P2281260697391237138

`A227349(A080079(n+1))*A227349(n)`
-/

namespace A167489.P2281260697391237138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A080079 (n + 1)).toNat * A227349 n

end

end A167489.P2281260697391237138

namespace A167489

/-- `A227349(A080079(n+1))*A227349(n)` -/
def P2281260697391237138.Spec : Prop :=
  ∀ n, P2281260697391237138.a n = A167489 n

end A167489

/-! ## A167489.P10666280691284658531

`(A227350(n)+A227193(n))*A227350(n)`
-/

namespace A167489.P10666280691284658531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A227350 n + A227193 n) * A227350 n

end

end A167489.P10666280691284658531

namespace A167489

/-- `(A227350(n)+A227193(n))*A227350(n)` -/
def P10666280691284658531.Spec : Prop :=
  ∀ n, P10666280691284658531.a n = A167489 n

theorem P10666280691284658531.correct : P10666280691284658531.Spec := by
  intro n
  simp only [A167489, Nat.add_sub_cancel, A167489.P10666280691284658531.a, A167489.P14616616446572638969.a, A227193, A227193.P11723890042645240906.a, A227349, A227349.P3803513828955669446.a, A227350, A227350.P16496982503593624174.f1, A227350.P16496982503593624174.a, A005361, A005361.P7238185687981551187.a, A005940, A005940.P5942875842694471387.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167489

/-! ## A167489.P6340192378901489195

`(A227349(n)-A227193(n))*A227349(n)`
-/

namespace A167489.P6340192378901489195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A227349 n - A227193 n) * A227349 n

end

end A167489.P6340192378901489195

namespace A167489

/-- `(A227349(n)-A227193(n))*A227349(n)` -/
def P6340192378901489195.Spec : Prop :=
  ∀ n, P6340192378901489195.a n = A167489 n

theorem P6340192378901489195.correct : P6340192378901489195.Spec := by
  intro n
  simp only [A167489, Nat.add_sub_cancel, A167489.P6340192378901489195.a, A167489.P14616616446572638969.a, A227193, A227193.P11723890042645240906.a, A227349, A227349.P3803513828955669446.a, A227350, A227350.P16496982503593624174.f1, A227350.P16496982503593624174.a, A005361, A005361.P7238185687981551187.a, A005940, A005940.P5942875842694471387.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A167489

/-! ## A167489.P14054779523459846466

`A227349(A036044(n))*A227349(n)`
-/

namespace A167489.P14054779523459846466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A036044 n).toNat * A227349 n

end

end A167489.P14054779523459846466

namespace A167489

/-- `A227349(A036044(n))*A227349(n)` -/
def P14054779523459846466.Spec : Prop :=
  ∀ n, P14054779523459846466.a n = A167489 n

end A167489

/-! ## A167489.P1087057658874888357

`A227349(A010078(n+1))*A227349(n)`
-/

namespace A167489.P1087057658874888357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A010078 (n + 1)).toNat * A227349 n

end

end A167489.P1087057658874888357

namespace A167489

/-- `A227349(A010078(n+1))*A227349(n)` -/
def P1087057658874888357.Spec : Prop :=
  ∀ n, P1087057658874888357.a n = A167489 n

end A167489

/-! ## A167489.P11233008128196603443

`A227350(A010078(n+1))*A227350(n)`
-/

namespace A167489.P11233008128196603443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A010078 (n + 1)).toNat * A227350 n

end

end A167489.P11233008128196603443

namespace A167489

/-- `A227350(A010078(n+1))*A227350(n)` -/
def P11233008128196603443.Spec : Prop :=
  ∀ n, P11233008128196603443.a n = A167489 n

end A167489

/-! ## A167489.P6494366333757467154

`A227355(A048680(A003188(2*n+1)))`
-/

namespace A167489.P6494366333757467154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 (A048680 (A003188 (2 * n + 1)).toNat).toNat

end

end A167489.P6494366333757467154

namespace A167489

/-- `A227355(A048680(A003188(2*n+1)))` -/
def P6494366333757467154.Spec : Prop :=
  ∀ n, P6494366333757467154.a n = A167489 n

end A167489

/-! ## A167489.P14446701026575433031

`A227349(n)*A227349(A335587(n))`
-/

namespace A167489.P14446701026575433031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n * A227349 (A335587 n).toNat

end

end A167489.P14446701026575433031

namespace A167489

/-- `A227349(n)*A227349(A335587(n))` -/
def P14446701026575433031.Spec : Prop :=
  ∀ n, P14446701026575433031.a n = A167489 n

end A167489

/-! ## A167489.P15173713053748011132

`∏{e}[A163755(n), #]`
-/

namespace A167489.P15173713053748011132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163755 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A167489.P15173713053748011132

namespace A167489

/-- `∏{e}[A163755(n), #]` -/
def P15173713053748011132.Spec : Prop :=
  ∀ n, (P15173713053748011132.a n : ℤ) = A167489 n

end A167489

/-!
# A167490: a(n) = smallest number whose binary run length product = n.

The programs for A167490, there is no canonical definition to state claims against.
-/

/-! ## A167490.P3026389277302421498

`A167491(A369137(n+1))`
-/

namespace A167490.P3026389277302421498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167491 (A369137 (n + 1)).toNat

end

end A167490.P3026389277302421498

/-! ## A167490.P9670400729453031206

`A035327(∏{e}[n+1, (#+1)^(n+1)])%A284306(n+1)`
-/

namespace A167490.P9670400729453031206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035327 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) ^ (n + 1))) (A284306 (n + 1))

end

end A167490.P9670400729453031206

/-! ## A167490.P748451201322588028

`xor(A000196(A090856(n)), A003418(n))`
-/

namespace A167490.P748451201322588028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000196 (A090856 n).toNat) (A003418 n)

end

end A167490.P748451201322588028

/-!
# A167491: Members of A167490 sorted in ascending order.

The programs for A167491, there is no canonical definition to state claims against.
-/

/-! ## A167491.P10052497338927164004

`record[A167490(A167489(n))]`
-/

namespace A167491.P10052497338927164004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167490 (A167489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167491.P10052497338927164004

/-! ## A167491.P5685302334446570825

`record[A167490(A227349(n)*A227350(n))]`
-/

namespace A167491.P5685302334446570825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167490 (A227349 n * A227350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167491.P5685302334446570825

/-! ## A167491.P3609531209934792155

`record[A167490(A284558(n)*A284559(n))]`
-/

namespace A167491.P3609531209934792155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167490 (A284558 n * A284559 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167491.P3609531209934792155

/-! ## A167491.P3335071629977675403

`record[A167490(A284582(n)*A284583(n))]`
-/

namespace A167491.P3335071629977675403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167490 (A284582 n * A284583 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167491.P3335071629977675403

/-! ## A167491.P3894475413656058188

`record[A167490(n+1-A227190(n+1))]`
-/

namespace A167491.P3894475413656058188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167490 ((n + 1 : ℤ) - A227190 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167491.P3894475413656058188

/-!
# A167493: a(1) = 2; thereafter a(n) = a(n-1) + gcd(n, a(n-1)) if n is odd, and a(n) = a(n-1) + gcd(n-2, a(n-1)) if n is even.

The programs for A167493, the canonical program `A167493.P2839562192358852464` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167493 has offset 1).

The definition of A167493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167493.P2839562192358852464

`a(n-1)+gcd(xor(1, n), a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167493

/-- `a(n-1)+gcd(xor(1, n), a(n-1))` -/
def P2839562192358852464.Spec : Prop :=
  ∀ n, (P2839562192358852464.a n : ℤ) = A167493 (n + 1)

theorem P2839562192358852464.correct : P2839562192358852464.Spec := by
  intro n
  simp only [A167493, Nat.add_sub_cancel]

end A167493

/-! ## A167493.P5283591197996195971

`a(n-1)+gcd((-1)^n+n, -a(n-1))` with `a(0)=2`
-/

namespace A167493.P5283591197996195971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.gcd ((-1) ^ n + (n : ℤ)) (-(a (n - 1) : ℤ))

end

end A167493.P5283591197996195971

namespace A167493

/-- `a(n-1)+gcd((-1)^n+n, -a(n-1))` -/
def P5283591197996195971.Spec : Prop :=
  ∀ n, (P5283591197996195971.a n : ℤ) = A167493 (n + 1)

end A167493

/-! ## A167493.P7953818143474034438

`a(n-1)+gcd(a(n-1), A004442(n))` with `a(0)=2`
-/

namespace A167493.P7953818143474034438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.gcd (a (n - 1) : ℤ) (A004442 n)

end

end A167493.P7953818143474034438

namespace A167493

/-- `a(n-1)+gcd(a(n-1), A004442(n))` -/
def P7953818143474034438.Spec : Prop :=
  ∀ n, (P7953818143474034438.a n : ℤ) = A167493 (n + 1)

end A167493

/-!
# A167494: List of first differences of A167493 that are different from 1.

The programs for A167494, the canonical program `A167494.P8689486958449903805` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167494 has offset 1).

The definition of A167494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167494.P8689486958449903805

`p?[A167493(n+2)-A167493(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A167494

/-- `p?[A167493(n+2)-A167493(n+1)]` -/
def P8689486958449903805.Spec : Prop :=
  ∀ n, P8689486958449903805.a n = A167494 (n + 1)

theorem P8689486958449903805.correct : P8689486958449903805.Spec := by
  intro n
  simp only [A167494, Nat.add_sub_cancel]

end A167494

/-! ## A167494.P15578396521883396404

`A084126(A172319(n)+A115276(n))`
-/

namespace A167494.P15578396521883396404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (A172319 n + A115276 n).toNat

end

end A167494.P15578396521883396404

namespace A167494

/-- `A084126(A172319(n)+A115276(n))` -/
def P15578396521883396404.Spec : Prop :=
  ∀ n, P15578396521883396404.a n = A167494 (n + 1)

end A167494

/-! ## A167494.P18201188676183226075

`A100808(n+5)+A046523(A001835(n))`
-/

namespace A167494.P18201188676183226075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100808 (n + 5) + A046523 (A001835 n).toNat

end

end A167494.P18201188676183226075

namespace A167494

/-- `A100808(n+5)+A046523(A001835(n))` -/
def P18201188676183226075.Spec : Prop :=
  ∀ n, P18201188676183226075.a n = A167494 (n + 1)

end A167494

/-! ## A167494.P11862490083881606711

`A356840(A256753(2*n+5)*A356840(n+2))`
-/

namespace A167494.P11862490083881606711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356840 (A256753 (2 * n + 5) * A356840 (n + 2)).toNat

end

end A167494.P11862490083881606711

namespace A167494

/-- `A356840(A256753(2*n+5)*A356840(n+2))` -/
def P11862490083881606711.Spec : Prop :=
  ∀ n, P11862490083881606711.a n = A167494 (n + 1)

end A167494

/-!
# A167495: Records in A167494.

The programs for A167495, there is no canonical definition to state claims against.
-/

/-! ## A167495.P2284600841248475402

`record[A167494(n+1)]`
-/

namespace A167495.P2284600841248475402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167495.P2284600841248475402

/-! ## A167495.P6363171713312857867

`record[A167494(A028310(n))]-char[32]`
-/

namespace A167495.P6363171713312857867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167494 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A167495.P6363171713312857867

/-! ## A167495.P4401680357137363885

`record[A167494(A028310(n))]*A016272(n)`
-/

namespace A167495.P4401680357137363885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167494 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A016272 n

end

end A167495.P4401680357137363885

/-! ## A167495.P1354492518257797658

`record[A167494(A028310(n))]%A001576(n)`
-/

namespace A167495.P1354492518257797658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167494 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001576 n)

end

end A167495.P1354492518257797658

/-! ## A167495.P3559907686015268410

`record[A167494(A028310(n))%A006221(n)]`
-/

namespace A167495.P3559907686015268410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167494 (A028310 n).toNat) (A006221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167495.P3559907686015268410

/-!
# A167496: Primes p such that (p reversed)-10 is also a prime.

The programs for A167496, there is no canonical definition to state claims against.
-/

/-! ## A167496.P8219109416340677172

`A004086(p?[A004087(n+1)-10]+10)`
-/

namespace A167496.P8219109416340677172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 10).toNat

end

end A167496.P8219109416340677172

/-! ## A167496.P202747401240733646

`A050376(A100916(n+1)%A100937(3*(n+1)))`
-/

namespace A167496.P202747401240733646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (Int.tmod (A100916 (n + 1)) (A100937 (3 * (n + 1)))).toNat

end

end A167496.P202747401240733646

/-!
# A167498: a(n) = 6+32*n^2+8*n*(7+8*n^2)/3.

The programs for A167498, the canonical program `A167498.P4594328217968134659` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167498 has offset 0).

The definition of A167498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167498.P4594328217968134659

`6+32*n²+8*n*(7+8*n²)/3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167498

/-- `6+32*n²+8*n*(7+8*n²)/3` -/
def P4594328217968134659.Spec : Prop :=
  ∀ n, P4594328217968134659.a n = (A167498 n : ℚ)

end A167498

/-! ## A167498.P10847210478582212509

`∑[2*(A010021(n)+2)]`
-/

namespace A167498.P10847210478582212509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010021 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167498.P10847210478582212509

namespace A167498

/-- `∑[2*(A010021(n)+2)]` -/
def P10847210478582212509.Spec : Prop :=
  ∀ n, P10847210478582212509.a n = A167498 n

end A167498

/-! ## A167498.P7031565784191493861

`2*A166911(2*n)`
-/

namespace A167498.P7031565784191493861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166911 (2 * n)

end

end A167498.P7031565784191493861

namespace A167498

/-- `2*A166911(2*n)` -/
def P7031565784191493861.Spec : Prop :=
  ∀ n, P7031565784191493861.a n = A167498 n

end A167498

/-! ## A167498.P5821487141812349548

`abs(1-∑[A010006(2*n)+6])`
-/

namespace A167498.P5821487141812349548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 (2 * n) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A167498.P5821487141812349548

namespace A167498

/-- `abs(1-∑[A010006(2*n)+6])` -/
def P5821487141812349548.Spec : Prop :=
  ∀ n, P5821487141812349548.a n = A167498 n

end A167498

/-! ## A167498.P10967309351326675245

`2*(A035597(2*n+1)+1)`
-/

namespace A167498.P10967309351326675245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A035597 (2 * n + 1) + 1)

end

end A167498.P10967309351326675245

namespace A167498

/-- `2*(A035597(2*n+1)+1)` -/
def P10967309351326675245.Spec : Prop :=
  ∀ n, P10967309351326675245.a n = A167498 n

end A167498

/-! ## A167498.P13659776990575649447

`(A001386(2*n+1)-8*n)/2`
-/

namespace A167498.P13659776990575649447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001386 (2 * n + 1) - (8 * n : ℤ) : ℚ) / 2

end

end A167498.P13659776990575649447

namespace A167498

/-- `(A001386(2*n+1)-8*n)/2` -/
def P13659776990575649447.Spec : Prop :=
  ∀ n, P13659776990575649447.a n = (A167498 n : ℚ)

end A167498

/-! ## A167498.P17162205807270419848

`2*(A268484(2*n)-A014106(2*n))`
-/

namespace A167498.P17162205807270419848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A268484 (2 * n) - A014106 (2 * n))

end

end A167498.P17162205807270419848

namespace A167498

/-- `2*(A268484(2*n)-A014106(2*n))` -/
def P17162205807270419848.Spec : Prop :=
  ∀ n, P17162205807270419848.a n = A167498 n

end A167498

/-! ## A167498.P16739049871690384444

`2*(A005843(n+1)+A000447(2*n+1))`
-/

namespace A167498.P16739049871690384444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005843 (n + 1) + A000447 (2 * n + 1))

end

end A167498.P16739049871690384444

namespace A167498

/-- `2*(A005843(n+1)+A000447(2*n+1))` -/
def P16739049871690384444.Spec : Prop :=
  ∀ n, P16739049871690384444.a n = A167498 n

end A167498

/-! ## A167498.P7140501244970523354

`2*(A001845(2*n+1)-A046092(2*n+1))`
-/

namespace A167498.P7140501244970523354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001845 (2 * n + 1) - A046092 (2 * n + 1))

end

end A167498.P7140501244970523354

namespace A167498

/-- `2*(A001845(2*n+1)-A046092(2*n+1))` -/
def P7140501244970523354.Spec : Prop :=
  ∀ n, P7140501244970523354.a n = A167498 n

end A167498

/-! ## A167498.P14493053927952419992

`A086514(4*(n+1))`
-/

namespace A167498.P14493053927952419992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086514 (4 * (n + 1))

end

end A167498.P14493053927952419992

namespace A167498

/-- `A086514(4*(n+1))` -/
def P14493053927952419992.Spec : Prop :=
  ∀ n, P14493053927952419992.a n = A167498 n

end A167498

/-!
# A167499: a(n) = n*(n+3)/2 + 6.

The programs for A167499, the canonical program `A167499.P13522463022127954517` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167499 has offset 0).

The definition of A167499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167499.P13522463022127954517

`n*(n+3)/2+6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A167499

/-- `n*(n+3)/2+6` -/
def P13522463022127954517.Spec : Prop :=
  ∀ n, P13522463022127954517.a n = (A167499 n : ℚ)

end A167499

/-! ## A167499.P11889382682187837950

`A187710(n+1)/2`
-/

namespace A167499.P11889382682187837950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187710 (n + 1) : ℚ) / 2

end

end A167499.P11889382682187837950

namespace A167499

/-- `A187710(n+1)/2` -/
def P11889382682187837950.Spec : Prop :=
  ∀ n, P11889382682187837950.a n = (A167499 n : ℚ)

end A167499

/-! ## A167499.P18364983587603600653

`∑[ogf((6-10x+5x^2)/(1-2x+x^2))]`
-/

namespace A167499.P18364983587603600653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167499.P18364983587603600653

namespace A167499

/-- `∑[ogf((6-10x+5x^2)/(1-2x+x^2))]` -/
def P18364983587603600653.Spec : Prop :=
  ∀ n, P18364983587603600653.a n = A167499 n

end A167499

/-! ## A167499.P8846070890608491415

`ogf((6-10x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A167499.P8846070890608491415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, 5] [1, -3, 3, -1] n

end

end A167499.P8846070890608491415

namespace A167499

/-- `ogf((6-10x+5x^2)/(1-3x+3x^2-x^3))` -/
def P8846070890608491415.Spec : Prop :=
  ∀ n, P8846070890608491415.a n = A167499 n

end A167499

/-! ## A167499.P10986380169426092845

`record[a(n-1)+n]` with `a(0)=6, a(1)=0, a(2)=8`
-/

namespace A167499.P10986380169426092845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 8] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167499.P10986380169426092845

namespace A167499

/-- `record[a(n-1)+n]` -/
def P10986380169426092845.Spec : Prop :=
  ∀ n, (P10986380169426092845.a n : ℤ) = A167499 n

end A167499

/-! ## A167499.P13746180011115820502

`abs(C(n+3, 2)+3-n)`
-/

namespace A167499.P13746180011115820502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 3) 2 : ℤ) + (3 - (n : ℤ))|

end

end A167499.P13746180011115820502

namespace A167499

/-- `abs(C(n+3, 2)+3-n)` -/
def P13746180011115820502.Spec : Prop :=
  ∀ n, P13746180011115820502.a n = A167499 n

end A167499

/-! ## A167499.P16268121501668772270

`abs(a(n-1)+1+n)` with `a(0)=6`
-/

namespace A167499.P16268121501668772270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 1 + n

end

end A167499.P16268121501668772270

namespace A167499

/-- `abs(a(n-1)+1+n)` -/
def P16268121501668772270.Spec : Prop :=
  ∀ n, (P16268121501668772270.a n : ℤ) = A167499 n

end A167499

/-! ## A167499.P6074264732807721518

`floor(a(n-1)+1+n)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A167499.P6074264732807721518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 1 + n

end

end A167499.P6074264732807721518

namespace A167499

/-- `floor(a(n-1)+1+n)` -/
def P6074264732807721518.Spec : Prop :=
  ∀ n, (P6074264732807721518.a n : ℤ) = A167499 n

end A167499

/-! ## A167499.P4845329253995059089

`ceil(a(n-1)+1+n)` with `a(0)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A167499.P4845329253995059089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 1 + n

end

end A167499.P4845329253995059089

namespace A167499

/-- `ceil(a(n-1)+1+n)` -/
def P4845329253995059089.Spec : Prop :=
  ∀ n, (P4845329253995059089.a n : ℤ) = A167499 n

end A167499

/-! ## A167499.P8599671352369612456

`round(a(n-1)+1+n)` with `a(0)=6`

`round` is left out, it is the identity on integers.
-/

namespace A167499.P8599671352369612456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 1 + n

end

end A167499.P8599671352369612456

namespace A167499

/-- `round(a(n-1)+1+n)` -/
def P8599671352369612456.Spec : Prop :=
  ∀ n, (P8599671352369612456.a n : ℤ) = A167499 n

end A167499

/-! ## A167499.P14978630140988229462

`Δ[C(n+2, 3)+5*n]`
-/

namespace A167499.P14978630140988229462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A167499.P14978630140988229462

namespace A167499

/-- `Δ[C(n+2, 3)+5*n]` -/
def P14978630140988229462.Spec : Prop :=
  ∀ n, P14978630140988229462.a n = A167499 n

end A167499

/-! ## A167499.P3509340831049953890

`record[n-(2-a(n-1))]` with `a(0)=6`
-/

namespace A167499.P3509340831049953890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  (n : ℤ) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167499.P3509340831049953890

namespace A167499

/-- `record[n-(2-a(n-1))]` -/
def P3509340831049953890.Spec : Prop :=
  ∀ n, P3509340831049953890.a n = A167499 n

end A167499

/-! ## A167499.P2768160929560034820

`∑[C(3, (n+1)²)!+n]`
-/

namespace A167499.P2768160929560034820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 3 ((n + 1) ^ 2)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167499.P2768160929560034820

namespace A167499

/-- `∑[C(3, (n+1)²)!+n]` -/
def P2768160929560034820.Spec : Prop :=
  ∀ n, (P2768160929560034820.a n : ℤ) = A167499 n

end A167499

/-! ## A167499.P14308434759222307589

`∑[floor(3/(n+1))!+n]`
-/

namespace A167499.P14308434759222307589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊3 / (n + 1 : ℚ)⌋.toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167499.P14308434759222307589

namespace A167499

/-- `∑[floor(3/(n+1))!+n]` -/
def P14308434759222307589.Spec : Prop :=
  ∀ n, (P14308434759222307589.a n : ℤ) = A167499 n

end A167499

/-! ## A167499.P3075415181422353322

`(lcm(n+1, n+2)+10)/2`
-/

namespace A167499.P3075415181422353322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 2) + 10 : ℚ) / 2

end

end A167499.P3075415181422353322

namespace A167499

/-- `(lcm(n+1, n+2)+10)/2` -/
def P3075415181422353322.Spec : Prop :=
  ∀ n, P3075415181422353322.a n = (A167499 n : ℚ)

end A167499

/-! ## A167499.P11646320803914726875

`∑[2*n-a(n-2)]` with `a(0)=6, a(1)=2, a(2)=3`
-/

namespace A167499.P11646320803914726875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 2, 3] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167499.P11646320803914726875

namespace A167499

/-- `∑[2*n-a(n-2)]` -/
def P11646320803914726875.Spec : Prop :=
  ∀ n, P11646320803914726875.a n = A167499 n

end A167499

/-! ## A167499.P13208617199797252129

`∑[n-(a(n-2)-n)]` with `a(0)=6, a(1)=2, a(2)=3`
-/

namespace A167499.P13208617199797252129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 2, 3] fun n f1 =>
  (n : ℤ) - (f1 (n - 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167499.P13208617199797252129

namespace A167499

/-- `∑[n-(a(n-2)-n)]` -/
def P13208617199797252129.Spec : Prop :=
  ∀ n, P13208617199797252129.a n = A167499 n

end A167499

/-! ## A167499.P5160070078862510020

`ceil(C(n+3, 2)+ϕ-(n-1))`
-/

namespace A167499.P5160070078862510020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 3) 2 : ℝ) + (Real.goldenRatio - ((n : ℤ) - 1 : ℝ))⌉

end

end A167499.P5160070078862510020

namespace A167499

/-- `ceil(C(n+3, 2)+ϕ-(n-1))` -/
def P5160070078862510020.Spec : Prop :=
  ∀ n, P5160070078862510020.a n = A167499 n

end A167499

/-! ## A167499.P6280810177723368787

`round(C(n+3, 2)+ϕ-(n-1))`
-/

namespace A167499.P6280810177723368787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℝ) + (Real.goldenRatio - ((n : ℤ) - 1 : ℝ)))

end

end A167499.P6280810177723368787

namespace A167499

/-- `round(C(n+3, 2)+ϕ-(n-1))` -/
def P6280810177723368787.Spec : Prop :=
  ∀ n, P6280810177723368787.a n = A167499 n

end A167499

/-! ## A167499.P4177550998485097990

`floor(C(n+3, 2)+ϕ²-(n-1))`
-/

namespace A167499.P4177550998485097990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) 2 : ℝ) + (Real.goldenRatio ^ 2 - ((n : ℤ) - 1 : ℝ))⌋

end

end A167499.P4177550998485097990

namespace A167499

/-- `floor(C(n+3, 2)+ϕ²-(n-1))` -/
def P4177550998485097990.Spec : Prop :=
  ∀ n, P4177550998485097990.a n = A167499 n

end A167499

