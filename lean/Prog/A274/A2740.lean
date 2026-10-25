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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A274000: Primes p of the form k^2 + 1 that divide 4^k - 1.

The programs for A274000, there is no canonical definition to state claims against.
-/

/-! ## A274000.P11662046265090649261

`A273999(A303164(n+2)+A065033(n))`
-/

namespace A274000.P11662046265090649261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273999 (A303164 (n + 2) + A065033 n).toNat

end

end A274000.P11662046265090649261

/-! ## A274000.P11987622776931182060

`A273999(C(A162293(n+1), A327858(n)))`
-/

namespace A274000.P11987622776931182060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273999 (Nat.choose (A162293 (n + 1)).toNat (A327858 n).toNat)

end

end A274000.P11987622776931182060

/-!
# A274001: Even numbers with a unique resolution as the sum of two primes, each of which has a twin.

The programs for A274001, there is no canonical definition to state claims against.
-/

/-! ## A274001.P2007251995579122469

`A103517(eq[1, A129363(n+1)])`
-/

namespace A274001.P2007251995579122469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274001.P2007251995579122469

/-! ## A274001.P11727589472068194078

`A004277(eq[1, A129363(n+1)]+1)`
-/

namespace A274001.P11727589472068194078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274001.P11727589472068194078

/-! ## A274001.P8565715563288573900

`A005408(eq[1, A129363(n+1)])+1`
-/

namespace A274001.P8565715563288573900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A274001.P8565715563288573900

/-! ## A274001.P3988011917970661217

`A005843(eq[1, A129363(n+1)]+1)`
-/

namespace A274001.P3988011917970661217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A274001.P3988011917970661217

/-! ## A274001.P17790965249067337030

`A159475(2*eq[1, A129363(n+1)])`
-/

namespace A274001.P17790965249067337030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274001.P17790965249067337030

/-! ## A274001.P12614703663075474674

`A014681(A005408(eq[1, A129363(n+1)]))`
-/

namespace A274001.P12614703663075474674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A274001.P12614703663075474674

/-! ## A274001.P6383914320547380469

`A159475(A005843(eq[1, A129363(n+1)]))`
-/

namespace A274001.P6383914320547380469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A274001.P6383914320547380469

/-!
# A274002: Primes p of the form (q-1)^2+1 that are a divisor of 4^(q-1)-1 where q is prime.

The programs for A274002, there is no canonical definition to state claims against.
-/

/-! ## A274002.P6575531491552775709

`A273999(∑[xor(2, a(n-2))+2])` with `a(0)=2, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A274002.P6575531491552775709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1, 2] fun n f1 =>
  Nat.xor 2 (f1 (n - 2)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274002.P6575531491552775709

/-!
# A274004: First differences of A002960.

The programs for A274004, the canonical program `A274004.P4184462035818911447` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274004 has offset 1).

The definition of A274004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274004.P4184462035818911447

`ceil(lt[2, and(n, n-1)]/2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274004

/-- `ceil(lt[2, and(n, n-1)]/2)` -/
def P4184462035818911447.Spec : Prop :=
  ∀ n, P4184462035818911447.a n = A274004 (n + 1)

theorem P4184462035818911447.correct : P4184462035818911447.Spec := by
  intro n
  simp only [A274004, Nat.add_sub_cancel]

end A274004

/-! ## A274004.P6350545675864616165

`a(n-2)+floor(or(a(n-1), a(n-2))/a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A274004.P6350545675864616165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) + ⌊(Int.lor (a (n - 1)) (a (n - 2)) : ℚ) / (a (n - 2) : ℚ)⌋

end

end A274004.P6350545675864616165

namespace A274004

/-- `a(n-2)+floor(or(a(n-1), a(n-2))/a(n-2))` -/
def P6350545675864616165.Spec : Prop :=
  ∀ n, P6350545675864616165.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P15888584982100767921

`A274089(n+3)`
-/

namespace A274004.P15888584982100767921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274089 (n + 3)

end

end A274004.P15888584982100767921

namespace A274004

/-- `A274089(n+3)` -/
def P15888584982100767921.Spec : Prop :=
  ∀ n, P15888584982100767921.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P13295284355488973441

`A004526(comp[2^n-5])+3`
-/

namespace A274004.P13295284355488973441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 3

end

end A274004.P13295284355488973441

namespace A274004

/-- `A004526(comp[2^n-5])+3` -/
def P13295284355488973441.Spec : Prop :=
  ∀ n, P13295284355488973441.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P10967439856727743365

`A057716(n+2)-a(n-1)` with `a(0)=3`
-/

namespace A274004.P10967439856727743365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A057716 (n + 2) - a (n - 1)

end

end A274004.P10967439856727743365

namespace A274004

/-- `A057716(n+2)-a(n-1)` -/
def P10967439856727743365.Spec : Prop :=
  ∀ n, P10967439856727743365.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P4992713160013788763

`n+3-A083058(a(n-1))` with `a(0)=3`
-/

namespace A274004.P4992713160013788763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n + 3 : ℤ) - A083058 (a (n - 1)).toNat

end

end A274004.P4992713160013788763

namespace A274004

/-- `n+3-A083058(a(n-1))` -/
def P4992713160013788763.Spec : Prop :=
  ∀ n, P4992713160013788763.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P6987424726481374465

`A138591(n+3)-a(n-1)` with `a(0)=3`
-/

namespace A274004.P6987424726481374465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A138591 (n + 3) - a (n - 1)

end

end A274004.P6987424726481374465

namespace A274004

/-- `A138591(n+3)-a(n-1)` -/
def P6987424726481374465.Spec : Prop :=
  ∀ n, P6987424726481374465.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P14507397663769450327

`A008619(comp[or(n, a(n-1))])` with `a(0)=1, a(1)=0`
-/

namespace A274004.P14507397663769450327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.lor n (f1 (n - 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A274004.P14507397663769450327

namespace A274004

/-- `A008619(comp[or(n, a(n-1))])` -/
def P14507397663769450327.Spec : Prop :=
  ∀ n, P14507397663769450327.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P6937490595540835382

`A065033(comp[2*a(floor(n/2))])` with `a(0)=3, a(1)=0, a(2)=1`
-/

namespace A274004.P6937490595540835382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 1] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A274004.P6937490595540835382

namespace A274004

/-- `A065033(comp[2*a(floor(n/2))])` -/
def P6937490595540835382.Spec : Prop :=
  ∀ n, P6937490595540835382.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P11460953109880639860

`A065033(comp[and(n, -a(n-1))])` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A274004.P11460953109880639860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  Int.land (n : ℤ) (-f1 (n - 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274004.P11460953109880639860

namespace A274004

/-- `A065033(comp[and(n, -a(n-1))])` -/
def P11460953109880639860.Spec : Prop :=
  ∀ n, P11460953109880639860.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P4955005032814683314

`A014963(2*a(n-1))+a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A274004.P4955005032814683314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  A014963 (2 * a (n - 1)).toNat + a (n - 2)

end

end A274004.P4955005032814683314

namespace A274004

/-- `A014963(2*a(n-1))+a(n-2)` -/
def P4955005032814683314.Spec : Prop :=
  ∀ n, P4955005032814683314.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P7860800746035880529

`a(n-2)+gcd(2, A014963(a(n-1)))` with `a(0)=3, a(1)=3`
-/

namespace A274004.P7860800746035880529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) + Int.gcd 2 (A014963 (a (n - 1)))

end

end A274004.P7860800746035880529

namespace A274004

/-- `a(n-2)+gcd(2, A014963(a(n-1)))` -/
def P7860800746035880529.Spec : Prop :=
  ∀ n, (P7860800746035880529.a n : ℤ) = A274004 (n + 1)

end A274004

/-! ## A274004.P8114544902708442307

`A014963(lcm(2, a(n-1)))+a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A274004.P8114544902708442307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  A014963 (Int.lcm 2 (a (n - 1))) + a (n - 2)

end

end A274004.P8114544902708442307

namespace A274004

/-- `A014963(lcm(2, a(n-1)))+a(n-2)` -/
def P8114544902708442307.Spec : Prop :=
  ∀ n, P8114544902708442307.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P1670426709047158185

`A128929(A075930(n+1))`
-/

namespace A274004.P1670426709047158185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (A075930 (n + 1)).toNat

end

end A274004.P1670426709047158185

namespace A274004

/-- `A128929(A075930(n+1))` -/
def P1670426709047158185.Spec : Prop :=
  ∀ n, P1670426709047158185.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P3528329867139508143

`A008619(A062289(n+2))`
-/

namespace A274004.P3528329867139508143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A062289 (n + 2)).toNat

end

end A274004.P3528329867139508143

namespace A274004

/-- `A008619(A062289(n+2))` -/
def P3528329867139508143.Spec : Prop :=
  ∀ n, P3528329867139508143.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P7572962141167972415

`A065033(A057716(n+2))`
-/

namespace A274004.P7572962141167972415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A057716 (n + 2)).toNat

end

end A274004.P7572962141167972415

namespace A274004

/-- `A065033(A057716(n+2))` -/
def P7572962141167972415.Spec : Prop :=
  ∀ n, P7572962141167972415.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P5716813949457941952

`A026922(A177712(n+2))`
-/

namespace A274004.P5716813949457941952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A177712 (n + 2)).toNat

end

end A274004.P5716813949457941952

namespace A274004

/-- `A026922(A177712(n+2))` -/
def P5716813949457941952.Spec : Prop :=
  ∀ n, P5716813949457941952.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P16016954541952707981

`A002265(A398389(n+2))`
-/

namespace A274004.P16016954541952707981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A398389 (n + 2)).toNat

end

end A274004.P16016954541952707981

namespace A274004

/-- `A002265(A398389(n+2))` -/
def P16016954541952707981.Spec : Prop :=
  ∀ n, P16016954541952707981.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P2429306963389549943

`Δ[A002960(n+1)]`
-/

namespace A274004.P2429306963389549943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274004.P2429306963389549943

namespace A274004

/-- `Δ[A002960(n+1)]` -/
def P2429306963389549943.Spec : Prop :=
  ∀ n, P2429306963389549943.a n = A274004 (n + 1)

end A274004

/-! ## A274004.P5006821733033783232

`ceil(sqrt(A002960(n+2)))`
-/

namespace A274004.P5006821733033783232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002960 (n + 2) : ℝ)⌉

end

end A274004.P5006821733033783232

namespace A274004

/-- `ceil(sqrt(A002960(n+2)))` -/
def P5006821733033783232.Spec : Prop :=
  ∀ n, P5006821733033783232.a n = A274004 (n + 1)

end A274004

/-!
# A274005: Number of length-n binary sequences where the sum of each subblock differs by at most 2 from every other subblock of the same length.

The programs for A274005, there is no canonical definition to state claims against.
-/

/-! ## A274005.P18265052032771117778

`A036452(n+1)*A362063(n)`
-/

namespace A274005.P18265052032771117778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A362063 n

end

end A274005.P18265052032771117778

/-! ## A274005.P2835575767684024784

`A036453(n+1)*A362063(n)`
-/

namespace A274005.P2835575767684024784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A362063 n

end

end A274005.P2835575767684024784

/-! ## A274005.P10251323958764191044

`(A057427(n)+1)*A362063(n)`
-/

namespace A274005.P10251323958764191044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A362063 n

end

end A274005.P10251323958764191044

/-! ## A274005.P10195994582561786786

`A006530(A001316(n))*A362063(n)`
-/

namespace A274005.P10195994582561786786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A362063 n

end

end A274005.P10195994582561786786

/-!
# A274006: Largest proper prime power divisor of n, or 1 if n is squarefree.

The programs for A274006, there is no canonical definition to state claims against.
-/

/-! ## A274006.P5589127446461888856

`A034699(A057521(n+1))`
-/

namespace A274006.P5589127446461888856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A057521 (n + 1)).toNat

end

end A274006.P5589127446461888856

/-! ## A274006.P145051838809003383

`A034699((n+1)/A055231(n+1))`
-/

namespace A274006.P145051838809003383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A274006.P145051838809003383

/-! ## A274006.P12689643760779924669

`A034699(gcd(n+1, A003557(n+1)²))`
-/

namespace A274006.P12689643760779924669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.gcd (n + 1 : ℤ) (A003557 (n + 1) ^ 2))

end

end A274006.P12689643760779924669

/-! ## A274006.P7334050104575557090

`A034699(A003557(n+1)*A071773(n+1))`
-/

namespace A274006.P7334050104575557090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A003557 (n + 1) * A071773 (n + 1)).toNat

end

end A274006.P7334050104575557090

/-! ## A274006.P13617846807473599226

`A034699(A011264(A011264(n+1)))`
-/

namespace A274006.P13617846807473599226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A011264 (A011264 (n + 1)).toNat).toNat

end

end A274006.P13617846807473599226

/-! ## A274006.P10274726487996205055

`A053585(A057521(n+1)*A291168(A211111(n)))`
-/

namespace A274006.P10274726487996205055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A057521 (n + 1) * A291168 (A211111 n).toNat).toNat

end

end A274006.P10274726487996205055

/-! ## A274006.P14671654622155983752

`A053585(A057521(n+1)^A211111(A099627(n)))`
-/

namespace A274006.P14671654622155983752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (SequenceMachineLib.roundAway ((A057521 (n + 1) : ℚ) ^ (A211111 (A099627 n).toNat : ℤ))).toNat

end

end A274006.P14671654622155983752

/-! ## A274006.P9507176837852340124

`A330741(A118759(n)%((n+1)/A055231(n+1))+1)`
-/

namespace A274006.P9507176837852340124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (Int.tmod (A118759 n) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))) + 1).toNat

end

end A274006.P9507176837852340124

/-! ## A274006.P6718992627630414027

`A057521(A385216(n+1))`
-/

namespace A274006.P6718992627630414027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A385216 (n + 1)).toNat

end

end A274006.P6718992627630414027

/-! ## A274006.P14809985036666128300

`gcd(A160897(n+1), A385216(n+1))`
-/

namespace A274006.P14809985036666128300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A160897 (n + 1)) (A385216 (n + 1))

end

end A274006.P14809985036666128300

/-!
# A274008: Number of length-n ternary sequences where the sum of each block differs by at most 1 from every other block of the same length.

The programs for A274008, the canonical program `A274008.P14054883072027176064` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274008 has offset 0).

The definition of A274008 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005598, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274008.P14054883072027176064

`2*A005598(n)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A274008

/-- `2*A005598(n)-1` -/
def P14054883072027176064.Spec : Prop :=
  ∀ n, P14054883072027176064.a n = A274008 n

theorem P14054883072027176064.correct : P14054883072027176064.Spec := by
  intro n
  simp only [A274008]

end A274008

/-! ## A274008.P14842347134336096344

`∑[A049696(n)]+1`
-/

namespace A274008.P14842347134336096344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274008.P14842347134336096344

namespace A274008

/-- `∑[A049696(n)]+1` -/
def P14842347134336096344.Spec : Prop :=
  ∀ n, P14842347134336096344.a n = A274008 n

end A274008

/-! ## A274008.P2442259297627878513

`∑[A206350(n+1)]`
-/

namespace A274008.P2442259297627878513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274008.P2442259297627878513

namespace A274008

/-- `∑[A206350(n+1)]` -/
def P2442259297627878513.Spec : Prop :=
  ∀ n, P2442259297627878513.a n = A274008 n

end A274008

/-! ## A274008.P5592235439710986054

`2*A103116(n)+1`
-/

namespace A274008.P5592235439710986054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103116 n + 1

end

end A274008.P5592235439710986054

namespace A274008

/-- `2*A103116(n)+1` -/
def P5592235439710986054.Spec : Prop :=
  ∀ n, P5592235439710986054.a n = A274008 n

theorem P5592235439710986054.correct : P5592235439710986054.Spec := by
  intro n
  simp only [A274008, Nat.add_sub_cancel, A274008.P5592235439710986054.a, A274008.P14054883072027176064.a, A005598, A005598.P13593438204838445571.a, A103116, A103116.P13446593034198861880.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274008

/-! ## A274008.P9590229788182696741

`∑[2*A002088(n)]+1`
-/

namespace A274008.P9590229788182696741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274008.P9590229788182696741

namespace A274008

/-- `∑[2*A002088(n)]+1` -/
def P9590229788182696741.Spec : Prop :=
  ∀ n, P9590229788182696741.a n = A274008 n

end A274008

/-! ## A274008.P12909503470888716526

`A103116(n)+A005598(n)`
-/

namespace A274008.P12909503470888716526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n + A005598 n

end

end A274008.P12909503470888716526

namespace A274008

/-- `A103116(n)+A005598(n)` -/
def P12909503470888716526.Spec : Prop :=
  ∀ n, P12909503470888716526.a n = A274008 n

theorem P12909503470888716526.correct : P12909503470888716526.Spec := by
  intro n
  simp only [A274008, Nat.add_sub_cancel, A274008.P12909503470888716526.a, A274008.P14054883072027176064.a, A005598, A005598.P13593438204838445571.a, A103116, A103116.P13446593034198861880.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274008

/-! ## A274008.P3786006446326893978

`A005598(n+1)+A005598(n)-A005728(n+1)`
-/

namespace A274008.P3786006446326893978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 (n + 1) + (A005598 n - A005728 (n + 1))

end

end A274008.P3786006446326893978

namespace A274008

/-- `A005598(n+1)+A005598(n)-A005728(n+1)` -/
def P3786006446326893978.Spec : Prop :=
  ∀ n, P3786006446326893978.a n = A274008 n

end A274008

/-! ## A274008.P9075952106592947476

`∑[xor(1, A049691(n))]`
-/

namespace A274008.P9075952106592947476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A049691 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274008.P9075952106592947476

namespace A274008

/-- `∑[xor(1, A049691(n))]` -/
def P9075952106592947476.Spec : Prop :=
  ∀ n, P9075952106592947476.a n = A274008 n

end A274008

/-! ## A274008.P13798255895213266090

`∑[A206297(n+1)]-n`
-/

namespace A274008.P13798255895213266090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A274008.P13798255895213266090

namespace A274008

/-- `∑[A206297(n+1)]-n` -/
def P13798255895213266090.Spec : Prop :=
  ∀ n, P13798255895213266090.a n = A274008 n

end A274008

/-! ## A274008.P5950357972273299827

`∑[xor(1, A049644(2*n))]`
-/

namespace A274008.P5950357972273299827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A049644 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274008.P5950357972273299827

namespace A274008

/-- `∑[xor(1, A049644(2*n))]` -/
def P5950357972273299827.Spec : Prop :=
  ∀ n, P5950357972273299827.a n = A274008 n

end A274008

/-! ## A274008.P14474957723671993717

`∑[A209978(n)+n+1]`
-/

namespace A274008.P14474957723671993717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209978 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274008.P14474957723671993717

namespace A274008

/-- `∑[A209978(n)+n+1]` -/
def P14474957723671993717.Spec : Prop :=
  ∀ n, P14474957723671993717.a n = A274008 n

end A274008

/-!
# A274009: 1's distance from a number in its binary expansion.

The programs for A274009, the canonical program `A274009.P14334026613148662434` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274009 has offset 0).

The definition of A274009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274009.P14334026613148662434

`A000120(n)+(-1)^n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A274009

/-- `A000120(n)+(-1)^n` -/
def P14334026613148662434.Spec : Prop :=
  ∀ n, P14334026613148662434.a n = A274009 n

theorem P14334026613148662434.correct : P14334026613148662434.Spec := by
  intro n
  simp only [A274009]

end A274009

/-! ## A274009.P1240380576230619965

`a(and(n, n-2))+1` with `a(0)=1, a(1)=0`
-/

namespace A274009.P1240380576230619965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat + 1

end

end A274009.P1240380576230619965

namespace A274009

/-- `a(and(n, n-2))+1` -/
def P1240380576230619965.Spec : Prop :=
  ∀ n, (P1240380576230619965.a n : ℤ) = A274009 n

end A274009

/-! ## A274009.P4930752789801227258

`xor(1, n)-∑[∑{e}[and(n, -n), #]]`
-/

namespace A274009.P4930752789801227258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274009.P4930752789801227258

namespace A274009

/-- `xor(1, n)-∑[∑{e}[and(n, -n), #]]` -/
def P4930752789801227258.Spec : Prop :=
  ∀ n, P4930752789801227258.a n = A274009 n

end A274009

/-! ## A274009.P1796524143700104794

`xor(1, n)-∑[∑{e}[or(n, -n), #]]`
-/

namespace A274009.P1796524143700104794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274009.P1796524143700104794

namespace A274009

/-- `xor(1, n)-∑[∑{e}[or(n, -n), #]]` -/
def P1796524143700104794.Spec : Prop :=
  ∀ n, P1796524143700104794.a n = A274009 n

end A274009

/-! ## A274009.P14393515495375231009

`2*or(1, n)-∑[∏{e}[xor(n, -n), #]]`
-/

namespace A274009.P14393515495375231009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A274009.P14393515495375231009

namespace A274009

/-- `2*or(1, n)-∑[∏{e}[xor(n, -n), #]]` -/
def P14393515495375231009.Spec : Prop :=
  ∀ n, P14393515495375231009.a n = A274009 n

end A274009

/-! ## A274009.P5861131125825109916

`(-1)^n+n-∑[∑{e}[or(n, -n), #]]`
-/

namespace A274009.P5861131125825109916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A274009.P5861131125825109916

namespace A274009

/-- `(-1)^n+n-∑[∑{e}[or(n, -n), #]]` -/
def P5861131125825109916.Spec : Prop :=
  ∀ n, P5861131125825109916.a n = A274009 n

end A274009

/-! ## A274009.P14725617743221276480

`n-(∑[∑{e}[or(n, -n), #]]-(-1)^n)`
-/

namespace A274009.P14725617743221276480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (-1) ^ n)

end

end A274009.P14725617743221276480

namespace A274009

/-- `n-(∑[∑{e}[or(n, -n), #]]-(-1)^n)` -/
def P14725617743221276480.Spec : Prop :=
  ∀ n, P14725617743221276480.a n = A274009 n

end A274009

/-! ## A274009.P12272195797131651102

`a(n-2)+2-val(n²-n, 2)` with `a(0)=1, a(1)=0`
-/

namespace A274009.P12272195797131651102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (2 - (SequenceMachineLib.valuation ((n ^ 2 : ℤ) - (n : ℤ)).toNat 2 : ℤ))

end

end A274009.P12272195797131651102

namespace A274009

/-- `a(n-2)+2-val(n²-n, 2)` -/
def P12272195797131651102.Spec : Prop :=
  ∀ n, P12272195797131651102.a n = A274009 n

end A274009

/-! ## A274009.P9004550507889097185

`A000120(xor(1, n))`
-/

namespace A274009.P9004550507889097185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor 1 n)

end

end A274009.P9004550507889097185

namespace A274009

/-- `A000120(xor(1, n))` -/
def P9004550507889097185.Spec : Prop :=
  ∀ n, P9004550507889097185.a n = A274009 n

end A274009

/-! ## A274009.P12864945643880649236

`log2(A001316(xor(1, n)))`
-/

namespace A274009.P12864945643880649236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (Nat.xor 1 n) : ℝ)

end

end A274009.P12864945643880649236

namespace A274009

/-- `log2(A001316(xor(1, n)))` -/
def P12864945643880649236.Spec : Prop :=
  ∀ n, P12864945643880649236.a n = (A274009 n : ℝ)

end A274009

/-! ## A274009.P10610661896835446816

`xor(1, n)-A011371(n)`
-/

namespace A274009.P10610661896835446816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - A011371 n

end

end A274009.P10610661896835446816

namespace A274009

/-- `xor(1, n)-A011371(n)` -/
def P10610661896835446816.Spec : Prop :=
  ∀ n, P10610661896835446816.a n = A274009 n

end A274009

/-! ## A274009.P12943815276681885507

`a(A053645(n))+1` with `a(0)=1, a(1)=0`
-/

namespace A274009.P12943815276681885507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A053645 n).toNat + 1

end

end A274009.P12943815276681885507

namespace A274009

/-- `a(A053645(n))+1` -/
def P12943815276681885507.Spec : Prop :=
  ∀ n, (P12943815276681885507.a n : ℤ) = A274009 n

end A274009

/-! ## A274009.P3506283692459815412

`A000120(A004442(n))`
-/

namespace A274009.P3506283692459815412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004442 n).toNat

end

end A274009.P3506283692459815412

namespace A274009

/-- `A000120(A004442(n))` -/
def P3506283692459815412.Spec : Prop :=
  ∀ n, P3506283692459815412.a n = A274009 n

end A274009

/-! ## A274009.P8300560106342830422

`A000120(A174239(n))`
-/

namespace A274009.P8300560106342830422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A174239 n).toNat

end

end A274009.P8300560106342830422

namespace A274009

/-- `A000120(A174239(n))` -/
def P8300560106342830422.Spec : Prop :=
  ∀ n, P8300560106342830422.a n = A274009 n

end A274009

/-! ## A274009.P1995203312872884873

`A135523(A071044(n))`
-/

namespace A274009.P1995203312872884873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A071044 n).toNat

end

end A274009.P1995203312872884873

namespace A274009

/-- `A135523(A071044(n))` -/
def P1995203312872884873.Spec : Prop :=
  ∀ n, P1995203312872884873.a n = A274009 n

end A274009

/-! ## A274009.P8366383277071774860

`A023416(A233775(n+1))`
-/

namespace A274009.P8366383277071774860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A233775 (n + 1)).toNat

end

end A274009.P8366383277071774860

namespace A274009

/-- `A023416(A233775(n+1))` -/
def P8366383277071774860.Spec : Prop :=
  ∀ n, P8366383277071774860.a n = A274009 n

end A274009

/-! ## A274009.P39804388169725579

`A001222(A071044(xor(1, n)))`
-/

namespace A274009.P39804388169725579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 (Nat.xor 1 n)).toNat

end

end A274009.P39804388169725579

namespace A274009

/-- `A001222(A071044(xor(1, n)))` -/
def P39804388169725579.Spec : Prop :=
  ∀ n, P39804388169725579.a n = A274009 n

end A274009

/-! ## A274009.P14488885004017677929

`A000120(A033999(n)+n)`
-/

namespace A274009.P14488885004017677929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A033999 n + (n : ℤ)).toNat

end

end A274009.P14488885004017677929

namespace A274009

/-- `A000120(A033999(n)+n)` -/
def P14488885004017677929.Spec : Prop :=
  ∀ n, P14488885004017677929.a n = A274009 n

end A274009

/-! ## A274009.P13741707141918887424

`A114285(n)+A092391(n)`
-/

namespace A274009.P13741707141918887424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114285 n + A092391 n

end

end A274009.P13741707141918887424

namespace A274009

/-- `A114285(n)+A092391(n)` -/
def P13741707141918887424.Spec : Prop :=
  ∀ n, P13741707141918887424.a n = A274009 n

end A274009

/-! ## A274009.P1387472809027224578

`A004442(n)-A011371(n)`
-/

namespace A274009.P1387472809027224578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n - A011371 n

end

end A274009.P1387472809027224578

namespace A274009

/-- `A004442(n)-A011371(n)` -/
def P1387472809027224578.Spec : Prop :=
  ∀ n, P1387472809027224578.a n = A274009 n

end A274009

/-!
# A274010: Boris Stechkin function: a(n) is the number of m with 2 <= m <= n and floor(n(m-1)/m) divisible by m-1.

The programs for A274010, the canonical program `A274010.P14654792066424409895` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274010 has offset 0).

The definition of A274010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274010.P14654792066424409895

`A092338(A028310(n))-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A274010

/-- `A092338(A028310(n))-1` -/
def P14654792066424409895.Spec : Prop :=
  ∀ n, P14654792066424409895.a n = A274010 n

theorem P14654792066424409895.correct : P14654792066424409895.Spec := by
  intro n
  simp only [A274010]

end A274010

/-! ## A274010.P2538364213205317378

`A032741(abs(1-n))+A032741(n)`
-/

namespace A274010.P2538364213205317378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 |1 - (n : ℤ)|.toNat + A032741 n

end

end A274010.P2538364213205317378

namespace A274010

/-- `A032741(abs(1-n))+A032741(n)` -/
def P2538364213205317378.Spec : Prop :=
  ∀ n, P2538364213205317378.a n = A274010 n

end A274010

/-! ## A274010.P9791646394810393816

`A006218(n)%A350102(abs(1-n))`
-/

namespace A274010.P9791646394810393816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006218 n) (A350102 |1 - (n : ℤ)|.toNat)

end

end A274010.P9791646394810393816

namespace A274010

/-- `A006218(n)%A350102(abs(1-n))` -/
def P9791646394810393816.Spec : Prop :=
  ∀ n, P9791646394810393816.a n = A274010 n

end A274010

/-! ## A274010.P14066112761791088167

`∑[A032741(n)-A032741(A289207(n))]`
-/

namespace A274010.P14066112761791088167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n - A032741 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274010.P14066112761791088167

namespace A274010

/-- `∑[A032741(n)-A032741(A289207(n))]` -/
def P14066112761791088167.Spec : Prop :=
  ∀ n, P14066112761791088167.a n = A274010 n

end A274010

/-! ## A274010.P15433147276848628699

`∑{d}[A020639(n+1), A032741(n-A032741(#))]`
-/

namespace A274010.P15433147276848628699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A032741 ((n : ℤ) - A032741 d).toNat

end

end A274010.P15433147276848628699

namespace A274010

/-- `∑{d}[A020639(n+1), A032741(n-A032741(#))]` -/
def P15433147276848628699.Spec : Prop :=
  ∀ n, P15433147276848628699.a n = A274010 n

end A274010

/-! ## A274010.P8672767751692658482

`A092338(A065033(2*n))-1`
-/

namespace A274010.P8672767751692658482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (A065033 (2 * n)).toNat - 1

end

end A274010.P8672767751692658482

namespace A274010

/-- `A092338(A065033(2*n))-1` -/
def P8672767751692658482.Spec : Prop :=
  ∀ n, P8672767751692658482.a n = A274010 n

end A274010

/-! ## A274010.P13498738614366549996

`A092338(A123108(2*n))-1`
-/

namespace A274010.P13498738614366549996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (A123108 (2 * n)).toNat - 1

end

end A274010.P13498738614366549996

namespace A274010

/-- `A092338(A123108(2*n))-1` -/
def P13498738614366549996.Spec : Prop :=
  ∀ n, P13498738614366549996.a n = A274010 n

end A274010

/-! ## A274010.P7602988210020407916

`A092338(A137735(n²))-1`
-/

namespace A274010.P7602988210020407916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (A137735 (n ^ 2)).toNat - 1

end

end A274010.P7602988210020407916

namespace A274010

/-- `A092338(A137735(n²))-1` -/
def P7602988210020407916.Spec : Prop :=
  ∀ n, P7602988210020407916.a n = A274010 n

end A274010

/-! ## A274010.P12025346010191802919

`A307119(A028310(n))-A325765(n)`
-/

namespace A274010.P12025346010191802919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307119 (A028310 n).toNat - A325765 n

end

end A274010.P12025346010191802919

namespace A274010

/-- `A307119(A028310(n))-A325765(n)` -/
def P12025346010191802919.Spec : Prop :=
  ∀ n, P12025346010191802919.a n = A274010 n

end A274010

/-! ## A274010.P7956053397127333552

`A020543(n)%A092338(A028310(n))`
-/

namespace A274010.P7956053397127333552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020543 n) (A092338 (A028310 n).toNat)

end

end A274010.P7956053397127333552

namespace A274010

/-- `A020543(n)%A092338(A028310(n))` -/
def P7956053397127333552.Spec : Prop :=
  ∀ n, P7956053397127333552.a n = A274010 n

end A274010

/-!
# A274011: a(n) is the greatest number of elements in a partition of n into distinct parts such that no two elements add to another.

The programs for A274011, there is no canonical definition to state claims against.
-/

/-! ## A274011.P8413389655295982672

`A102572(A194830(n+1))`
-/

namespace A274011.P8413389655295982672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A194830 (n + 1)).toNat

end

end A274011.P8413389655295982672

/-! ## A274011.P12215500044317062607

`A102572(A036913(n+2))`
-/

namespace A274011.P12215500044317062607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A036913 (n + 2)).toNat

end

end A274011.P12215500044317062607

/-! ## A274011.P11424118880467445681

`A097430(A324846(n+1))+1`
-/

namespace A274011.P11424118880467445681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A324846 (n + 1)).toNat + 1

end

end A274011.P11424118880467445681

/-! ## A274011.P16854075007783182706

`A097430(A330184(n+1))+1`
-/

namespace A274011.P16854075007783182706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A330184 (n + 1)).toNat + 1

end

end A274011.P16854075007783182706

/-! ## A274011.P4021897128880817758

`A300287(A176552(n+1))`
-/

namespace A274011.P4021897128880817758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A176552 (n + 1)).toNat

end

end A274011.P4021897128880817758

/-!
# A274013: Bisection of A273943.

The programs for A274013, there is no canonical definition to state claims against.
-/

/-! ## A274013.P1178022509071642419

`A273943(Δ[n²])`
-/

namespace A274013.P1178022509071642419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A274013.P1178022509071642419

/-! ## A274013.P9116525089337783929

`root(A273943(2*n+1), 2)²`
-/

namespace A274013.P9116525089337783929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A273943 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A274013.P9116525089337783929

/-! ## A274013.P10692388842748293559

`A055643(A273943(2*n+1))`
-/

namespace A274013.P10692388842748293559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A273943 (2 * n + 1)).toNat

end

end A274013.P10692388842748293559

/-! ## A274013.P690381818577063791

`A029578(2*A273943(2*n+1))`
-/

namespace A274013.P690381818577063791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * A273943 (2 * n + 1)).toNat

end

end A274013.P690381818577063791

/-! ## A274013.P3089823534537214919

`gcd(A000038(n), A273943(2*n+1))`
-/

namespace A274013.P3089823534537214919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273943 (2 * n + 1))

end

end A274013.P3089823534537214919

/-! ## A274013.P8693060713235368598

`or(A000007(n), A273943(2*n+1))`
-/

namespace A274013.P8693060713235368598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A273943 (2 * n + 1))

end

end A274013.P8693060713235368598

/-! ## A274013.P15534920651227823909

`filter[A273943(2*n+1), A102609(#)]`
-/

namespace A274013.P15534920651227823909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A274013.P15534920651227823909

/-! ## A274013.P6443812192071989175

`char[A273943(n)]*A273943(2*n+1)`
-/

namespace A274013.P6443812192071989175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A273943 (2 * n + 1)

end

end A274013.P6443812192071989175

/-! ## A274013.P6019666780385785825

`A273943(2*n+1)+A000038(n+1)`
-/

namespace A274013.P6019666780385785825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1) + A000038 (n + 1)

end

end A274013.P6019666780385785825

/-! ## A274013.P11683273127892584625

`A273943(2*n+1)%A023583(n+1)`
-/

namespace A274013.P11683273127892584625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (2 * n + 1)) (A023583 (n + 1))

end

end A274013.P11683273127892584625

/-! ## A274013.P207796900146352398

`A273943(2*n+1)+A080116(2*n+1)`
-/

namespace A274013.P207796900146352398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1) + A080116 (2 * n + 1)

end

end A274013.P207796900146352398

/-! ## A274013.P17309291440376298510

`A273943(2*n+1)+A273943(2*n)-n`
-/

namespace A274013.P17309291440376298510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1) + (A273943 (2 * n) - (n : ℤ))

end

end A274013.P17309291440376298510

/-! ## A274013.P14174847011554290799

`A273943(2*n+1)+A000007(n+1)`
-/

namespace A274013.P14174847011554290799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1) + A000007 (n + 1)

end

end A274013.P14174847011554290799

/-! ## A274013.P13252151001142343148

`A057427(n+1)*A273943(2*n+1)`
-/

namespace A274013.P13252151001142343148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A273943 (2 * n + 1)

end

end A274013.P13252151001142343148

/-! ## A274013.P4675878786644494871

`A273943(2*n+1)*A273943(A075180(2*n))`
-/

namespace A274013.P4675878786644494871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1) * A273943 (A075180 (2 * n)).toNat

end

end A274013.P4675878786644494871

/-! ## A274013.P1797664018422719634

`A000034(2*n)*A273943(2*n+1)`
-/

namespace A274013.P1797664018422719634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A273943 (2 * n + 1)

end

end A274013.P1797664018422719634

/-! ## A274013.P14835888583413143421

`A060576(2*n)*A273943(2*n+1)`
-/

namespace A274013.P14835888583413143421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (2 * n) * A273943 (2 * n + 1)

end

end A274013.P14835888583413143421

/-! ## A274013.P5102495744485954778

`A273943(2*n+1)+A045840(2*n)`
-/

namespace A274013.P5102495744485954778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1) + A045840 (2 * n)

end

end A274013.P5102495744485954778

/-! ## A274013.P2865866555959201464

`A273943(2*n+1)+A005872(2*n)`
-/

namespace A274013.P2865866555959201464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1) + A005872 (2 * n)

end

end A274013.P2865866555959201464

/-!
# A274017: Number of n-bead binary necklaces (no turning over allowed) that avoid the subsequence 110.

The programs for A274017, there is no canonical definition to state claims against.
-/

/-! ## A274017.P17464544538274726371

`∑{d}[n, A006206(#)]+1`
-/

namespace A274017.P17464544538274726371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006206 d + 1

end

end A274017.P17464544538274726371

/-! ## A274017.P10238554654248633612

`A036453(n+1)+A032190(A028310(n))`
-/

namespace A274017.P10238554654248633612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A032190 (A028310 n).toNat

end

end A274017.P10238554654248633612

/-! ## A274017.P310630802524693882

`A000358(A028310(n))+A000040(n+1)%2`
-/

namespace A274017.P310630802524693882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000358 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A274017.P310630802524693882

/-!
# A274018: Number of n-bead ternary necklaces (no turning over allowed) that avoid the subsequence 110.

The programs for A274018, there is no canonical definition to state claims against.
-/

/-! ## A274018.P192724688848714300

`A350945(a(n-1))+1` with `a(0)=1, a(1)=3`
-/

namespace A274018.P192724688848714300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A350945 (a (n - 1)).toNat + 1

end

end A274018.P192724688848714300

/-! ## A274018.P5830270434696822466

`A105048(3*a(n-2))` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A274018.P5830270434696822466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A105048 (3 * a (n - 2)).toNat

end

end A274018.P5830270434696822466

/-! ## A274018.P1118657078693896416

`or((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], A291442(2^n))`
-/

namespace A274018.P1118657078693896416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A291442 (2 ^ n))

end

end A274018.P1118657078693896416

/-!
# A274019: Number of n-bead quaternary necklaces (no turning over allowed) that avoid the subsequence 110.

The programs for A274019, there is no canonical definition to state claims against.
-/

/-! ## A274019.P8744902795991760326

`A081399(A150063(n+1))`
-/

namespace A274019.P8744902795991760326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081399 (A150063 (n + 1)).toNat

end

end A274019.P8744902795991760326

/-! ## A274019.P8012952646636257397

`A178538(A178539(Δ[n²]))`
-/

namespace A274019.P8012952646636257397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178538 (A178539 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A274019.P8012952646636257397

/-!
# A274020: Number of n-bead 5-ary necklaces (no turning over allowed) that avoid the subsequence 110.

The programs for A274020, there is no canonical definition to state claims against.
-/

/-! ## A274020.P1640924623568401841

`A001869(n)-A006577(A208209(n))`
-/

namespace A274020.P1640924623568401841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001869 n - A006577 (A208209 n).toNat

end

end A274020.P1640924623568401841

/-! ## A274020.P16753077955132942729

`A164175(2*n)+A014371(A014371(n))`
-/

namespace A274020.P16753077955132942729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164175 (2 * n) + A014371 (A014371 n).toNat

end

end A274020.P16753077955132942729

/-!
# A274021: Least positive x < n-1 such that x^y == -1 (mod n) for some y > 1, or 0 if no such x exist.

The programs for A274021, there is no canonical definition to state claims against.
-/

/-! ## A274021.P140519783870898497

`A090788(n+4)%A115624(A270164(3*n+2))`
-/

namespace A274021.P140519783870898497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090788 (n + 4)) (A115624 (A270164 (3 * n + 2)).toNat)

end

end A274021.P140519783870898497

/-! ## A274021.P4270082955592904423

`A108352(A016777(n)+A290114(n)-A116362(n))`
-/

namespace A274021.P4270082955592904423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A016777 n + (A290114 n - A116362 n)).toNat

end

end A274021.P4270082955592904423

/-! ## A274021.P4699569833270189996

`A108352(A016777(n)-(A116362(n)-A290114(n)))`
-/

namespace A274021.P4699569833270189996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108352 (A016777 n - (A116362 n - A290114 n)).toNat

end

end A274021.P4699569833270189996

/-! ## A274021.P13659145613008211555

`A271419(A382221(n+1))`
-/

namespace A274021.P13659145613008211555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (A382221 (n + 1)).toNat

end

end A274021.P13659145613008211555

/-! ## A274021.P6244818650550578365

`A046145((n+1)^floor(A046144(n+1)/2))`
-/

namespace A274021.P6244818650550578365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊(A046144 (n + 1) : ℚ) / 2⌋ : ℤ))).toNat

end

end A274021.P6244818650550578365

/-!
# A274027: Numbers k such that k^4 is the average of a positive cube and a positive fifth power.

The programs for A274027, there is no canonical definition to state claims against.
-/

/-! ## A274027.P13771423644758039794

`A118510(A000400(n)*A001222(3*n+5))`
-/

namespace A274027.P13771423644758039794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (A000400 n * A001222 (3 * n + 5)).toNat

end

end A274027.P13771423644758039794

/-!
# A274028: Numbers whose sum of divisors and sum of anti-divisors are both palindromes.

The programs for A274028, there is no canonical definition to state claims against.
-/

/-! ## A274028.P9448510095252810525

`∩[A028980(n+1), A274049(n+1)]`
-/

namespace A274028.P9448510095252810525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274028.P9448510095252810525

/-! ## A274028.P6388065866305035814

`∑[A273975(A293741(n)²)]`
-/

namespace A274028.P6388065866305035814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273975 (A293741 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274028.P6388065866305035814

/-! ## A274028.P9504451294006054420

`∑[A296150(A281520(n)²)]`
-/

namespace A274028.P9504451294006054420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A281520 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274028.P9504451294006054420

/-!
# A274029: Product of infinitary divisors of n.

The programs for A274029, the canonical program `A274029.P1460330632668924800` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274029 has offset 1).

The definition of A274029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274029.P1460330632668924800

`sqrt(n+1)^A037445(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274029

/-- `sqrt(n+1)^A037445(n+1)` -/
def P1460330632668924800.Spec : Prop :=
  ∀ n, P1460330632668924800.a n = (A274029 (n + 1) : ℝ)

end A274029

/-! ## A274029.P8978995491488475749

`(n+1)^2^(A064547(n+1)-1)`
-/

namespace A274029.P8978995491488475749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A064547 (n + 1) - 1 : ℤ) : ℝ)

end

end A274029.P8978995491488475749

namespace A274029

/-- `(n+1)^2^(A064547(n+1)-1)` -/
def P8978995491488475749.Spec : Prop :=
  ∀ n, P8978995491488475749.a n = (A274029 (n + 1) : ℝ)

end A274029

/-! ## A274029.P4169785948686522481

`sqrt(n+1)^A000005(A160102(n+1))`
-/

namespace A274029.P4169785948686522481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (A160102 (n + 1)).toNat : ℤ)

end

end A274029.P4169785948686522481

namespace A274029

/-- `sqrt(n+1)^A000005(A160102(n+1))` -/
def P4169785948686522481.Spec : Prop :=
  ∀ n, P4169785948686522481.a n = (A274029 (n + 1) : ℝ)

end A274029

/-! ## A274029.P16838737471456161226

`sqrt(n+1)^2^A001222(A293442(n+1))`
-/

namespace A274029.P16838737471456161226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ ((2 : ℚ) ^ (A001222 (A293442 (n + 1)).toNat : ℤ) : ℝ)

end

end A274029.P16838737471456161226

namespace A274029

/-- `sqrt(n+1)^2^A001222(A293442(n+1))` -/
def P16838737471456161226.Spec : Prop :=
  ∀ n, P16838737471456161226.a n = (A274029 (n + 1) : ℝ)

end A274029

/-! ## A274029.P10163310990436939308

`A000027(n+1)^A000010(A037445(n+1))`
-/

namespace A274029.P10163310990436939308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) ^ (A000010 (A037445 (n + 1)).toNat : ℤ)

end

end A274029.P10163310990436939308

namespace A274029

/-- `A000027(n+1)^A000010(A037445(n+1))` -/
def P10163310990436939308.Spec : Prop :=
  ∀ n, P10163310990436939308.a n = (A274029 (n + 1) : ℚ)

end A274029

/-! ## A274029.P5903237627589371546

`(n+1)^A001221(A037445(n+1)!)`
-/

namespace A274029.P5903237627589371546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001221 (Nat.factorial (A037445 (n + 1)).toNat) : ℤ)

end

end A274029.P5903237627589371546

namespace A274029

/-- `(n+1)^A001221(A037445(n+1)!)` -/
def P5903237627589371546.Spec : Prop :=
  ∀ n, P5903237627589371546.a n = (A274029 (n + 1) : ℚ)

end A274029

/-! ## A274029.P5568402749833936238

`(n+1)^A000010(A037445((n+1)²))`
-/

namespace A274029.P5568402749833936238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (A037445 ((n + 1) ^ 2)).toNat : ℤ)

end

end A274029.P5568402749833936238

namespace A274029

/-- `(n+1)^A000010(A037445((n+1)²))` -/
def P5568402749833936238.Spec : Prop :=
  ∀ n, P5568402749833936238.a n = (A274029 (n + 1) : ℚ)

end A274029

/-! ## A274029.P14779560324237342085

`(n+1)^A000010(A360721((n+1)²))`
-/

namespace A274029.P14779560324237342085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (A360721 ((n + 1) ^ 2)).toNat : ℤ)

end

end A274029.P14779560324237342085

namespace A274029

/-- `(n+1)^A000010(A360721((n+1)²))` -/
def P14779560324237342085.Spec : Prop :=
  ∀ n, P14779560324237342085.a n = (A274029 (n + 1) : ℚ)

end A274029

/-! ## A274029.P8350001259947512049

`(n+1)^A368106(A368106((n+1)²))`
-/

namespace A274029.P8350001259947512049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A368106 (A368106 ((n + 1) ^ 2)).toNat : ℤ)

end

end A274029.P8350001259947512049

namespace A274029

/-- `(n+1)^A368106(A368106((n+1)²))` -/
def P8350001259947512049.Spec : Prop :=
  ∀ n, P8350001259947512049.a n = (A274029 (n + 1) : ℚ)

end A274029

/-! ## A274029.P1561099411125184676

`(n+1)^A285330(A037445((n+1)^2))`
-/

namespace A274029.P1561099411125184676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A285330 (A037445 ((n + 1) ^ 2)).toNat : ℤ)

end

end A274029.P1561099411125184676

namespace A274029

/-- `(n+1)^A285330(A037445((n+1)^2))` -/
def P1561099411125184676.Spec : Prop :=
  ∀ n, P1561099411125184676.a n = (A274029 (n + 1) : ℚ)

end A274029

/-!
# A274034: Numbers whose exponents in their prime power factorizations are not primes.

The programs for A274034, the canonical program `A274034.P6668103445242214746` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274034 has offset 1).

The definition of A274034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274034.P6668103445242214746

`eq[0, A101436(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A274034

/-- `eq[0, A101436(n+1)]+1` -/
def P6668103445242214746.Spec : Prop :=
  ∀ n, (P6668103445242214746.a n : ℤ) = A274034 (n + 1)

theorem P6668103445242214746.correct : P6668103445242214746.Spec := by
  intro n
  simp only [A274034, Nat.add_sub_cancel]

end A274034

/-! ## A274034.P9848034913638626095

`eq[0, A123391(n+1)]+1`
-/

namespace A274034.P9848034913638626095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A274034.P9848034913638626095

namespace A274034

/-- `eq[0, A123391(n+1)]+1` -/
def P9848034913638626095.Spec : Prop :=
  ∀ n, (P9848034913638626095.a n : ℤ) = A274034 (n + 1)

end A274034

/-! ## A274034.P17664981483093562861

`eq[A001221(n+1), A125070(n+1)]+1`
-/

namespace A274034.P17664981483093562861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274034.P17664981483093562861

namespace A274034

/-- `eq[A001221(n+1), A125070(n+1)]+1` -/
def P17664981483093562861.Spec : Prop :=
  ∀ n, (P17664981483093562861.a n : ℤ) = A274034 (n + 1)

end A274034

/-! ## A274034.P2934436554652375236

`eq[A125029(n+1), A125030(n+1)]+1`
-/

namespace A274034.P2934436554652375236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274034.P2934436554652375236

namespace A274034

/-- `eq[A125029(n+1), A125030(n+1)]+1` -/
def P2934436554652375236.Spec : Prop :=
  ∀ n, (P2934436554652375236.a n : ℤ) = A274034 (n + 1)

end A274034

/-! ## A274034.P9877888294180270573

`record[n+1-A001951(A123391(n+1)²)]`
-/

namespace A274034.P9877888294180270573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001951 (A123391 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274034.P9877888294180270573

namespace A274034

/-- `record[n+1-A001951(A123391(n+1)²)]` -/
def P9877888294180270573.Spec : Prop :=
  ∀ n, P9877888294180270573.a n = A274034 (n + 1)

end A274034

/-! ## A274034.P18339956896660814518

`record[n+1-A108495(A123391(n+1)²)]`
-/

namespace A274034.P18339956896660814518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108495 (A123391 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274034.P18339956896660814518

namespace A274034

/-- `record[n+1-A108495(A123391(n+1)²)]` -/
def P18339956896660814518.Spec : Prop :=
  ∀ n, P18339956896660814518.a n = A274034 (n + 1)

end A274034

/-! ## A274034.P5421257091956870355

`record[xor(n+1, A002321(A123391(n+1)+2))]`
-/

namespace A274034.P5421257091956870355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A002321 (A123391 (n + 1) + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274034.P5421257091956870355

namespace A274034

/-- `record[xor(n+1, A002321(A123391(n+1)+2))]` -/
def P5421257091956870355.Spec : Prop :=
  ∀ n, P5421257091956870355.a n = A274034 (n + 1)

end A274034

/-!
# A274036: a(n) is the thickness of n (see Comments section for definition).

The programs for A274036, there is no canonical definition to state claims against.
-/

/-! ## A274036.P3828930958572819980

`A000120(A331804(2*n))%A334101(n+1)`
-/

namespace A274036.P3828930958572819980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A331804 (2 * n)).toNat) (A334101 (n + 1))

end

end A274036.P3828930958572819980

/-! ## A274036.P15388849064722588871

`A000120(A331804(2*n))%A181470(A283595(n))`
-/

namespace A274036.P15388849064722588871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A331804 (2 * n)).toNat) (A181470 (A283595 n).toNat)

end

end A274036.P15388849064722588871

/-! ## A274036.P13728580324215690280

`A007949(A090417(n+1))+A000120(A331804(4*n))`
-/

namespace A274036.P13728580324215690280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A090417 (n + 1)).toNat + A000120 (A331804 (4 * n)).toNat

end

end A274036.P13728580324215690280

/-! ## A274036.P9609973516325197813

`A033999(A007664(n))²*A000120(A331804(4*n))`
-/

namespace A274036.P9609973516325197813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A007664 n).toNat ^ 2 * A000120 (A331804 (4 * n)).toNat

end

end A274036.P9609973516325197813

/-! ## A274036.P8913834278045465406

`A000120(A331804(2*n))*A008835(A331425(n+1))`
-/

namespace A274036.P8913834278045465406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A331804 (2 * n)).toNat * A008835 (A331425 (n + 1)).toNat

end

end A274036.P8913834278045465406

/-! ## A274036.P11420071293143186214

`A347438(A126692(n+1))+A000120(A331804(4*n))`
-/

namespace A274036.P11420071293143186214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A126692 (n + 1)).toNat + A000120 (A331804 (4 * n)).toNat

end

end A274036.P11420071293143186214

/-! ## A274036.P18288426596298211059

`A000120(A331804(4*n))*A107393(A110013(n+1))`
-/

namespace A274036.P18288426596298211059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A331804 (4 * n)).toNat * A107393 (A110013 (n + 1)).toNat

end

end A274036.P18288426596298211059

/-!
# A274038: Least number k such that the sum of squares of positive divisors of k is the sum of two nonzero squares in exactly n ways.

The programs for A274038, there is no canonical definition to state claims against.
-/

/-! ## A274038.P16096357055113742586

`A104567(A297990(n+1))`
-/

namespace A274038.P16096357055113742586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104567 (A297990 (n + 1)).toNat

end

end A274038.P16096357055113742586

/-!
# A274039: Expansion of (x^4 + x^10) / (1 - 2*x + x^2).

The programs for A274039, the canonical program `A274039.P1215507205939842230` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274039 has offset 0).

The definition of A274039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4+x^10)/(1-2x+x^2))` (program `A274039.P1215507205939842230`, by `A274039.P1215507205939842230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274039.P1215507205939842230

`ogf((x^4+x^10)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274039

/-- `ogf((x^4+x^10)/(1-2x+x^2))` -/
def P1215507205939842230.Spec : Prop :=
  ∀ n, P1215507205939842230.a n = A274039 n

theorem P1215507205939842230.correct : P1215507205939842230.Spec := by
  intro n
  simp only [A274039]

end A274039

/-!
# A274043: Number of squarefree integers congruent to {1, 2, 3} mod 8 <= 10^n.

The programs for A274043, there is no canonical definition to state claims against.
-/

/-! ## A274043.P7282448319970221906

`A071172(n+1)-A274264(n+1)`
-/

namespace A274043.P7282448319970221906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071172 (n + 1) - A274264 (n + 1)

end

end A274043.P7282448319970221906

/-!
# A274044: Squarefree numbers that are the sum of two squares in more than one way.

The programs for A274044, the canonical program `A274044.P18314180091191824190` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274044 has offset 1).

The definition of A274044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274044.P10731489022379971435

`filter[A071011(n+1), A008966(#)]`
-/

namespace A274044.P10731489022379971435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A274044.P10731489022379971435

namespace A274044

/-- `filter[A071011(n+1), A008966(#)]` -/
def P10731489022379971435.Spec : Prop :=
  ∀ n, P10731489022379971435.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P17346868590572849063

`filter[A071011(n+1), A354819(#)]`
-/

namespace A274044.P17346868590572849063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A274044.P17346868590572849063

namespace A274044

/-- `filter[A071011(n+1), A354819(#)]` -/
def P17346868590572849063.Spec : Prop :=
  ∀ n, P17346868590572849063.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P18314180091191824190

`filter[A071011(n+1), A359377(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A274044

/-- `filter[A071011(n+1), A359377(#)]` -/
def P18314180091191824190.Spec : Prop :=
  ∀ n, P18314180091191824190.a n = A274044 (n + 1)

theorem P18314180091191824190.correct : P18314180091191824190.Spec := by
  intro n
  simp only [A274044, Nat.add_sub_cancel]

end A274044

/-! ## A274044.P16843582008225681952

`filter[A024508(n+1), A008966(#)]`
-/

namespace A274044.P16843582008225681952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A274044.P16843582008225681952

namespace A274044

/-- `filter[A024508(n+1), A008966(#)]` -/
def P16843582008225681952.Spec : Prop :=
  ∀ n, P16843582008225681952.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P940881409455603765

`filter[A024508(n+1), A354819(#)]`
-/

namespace A274044.P940881409455603765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A274044.P940881409455603765

namespace A274044

/-- `filter[A024508(n+1), A354819(#)]` -/
def P940881409455603765.Spec : Prop :=
  ∀ n, P940881409455603765.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P14359724666835009089

`filter[A024508(n+1), A359377(#)]`
-/

namespace A274044.P14359724666835009089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A274044.P14359724666835009089

namespace A274044

/-- `filter[A024508(n+1), A359377(#)]` -/
def P14359724666835009089.Spec : Prop :=
  ∀ n, P14359724666835009089.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P1247551301028633830

`filter[A007692(n+1), A008966(#)]`
-/

namespace A274044.P1247551301028633830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A274044.P1247551301028633830

namespace A274044

/-- `filter[A007692(n+1), A008966(#)]` -/
def P1247551301028633830.Spec : Prop :=
  ∀ n, P1247551301028633830.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P6226788254185011411

`filter[A007692(n+1), A354819(#)]`
-/

namespace A274044.P6226788254185011411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A274044.P6226788254185011411

namespace A274044

/-- `filter[A007692(n+1), A354819(#)]` -/
def P6226788254185011411.Spec : Prop :=
  ∀ n, P6226788254185011411.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P5968230109302141035

`filter[A007692(n+1), A359377(#)]`
-/

namespace A274044.P5968230109302141035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A274044.P5968230109302141035

namespace A274044

/-- `filter[A007692(n+1), A359377(#)]` -/
def P5968230109302141035.Spec : Prop :=
  ∀ n, P5968230109302141035.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P857292196200967294

`filter[A118882(n+1), A008966(#)]`
-/

namespace A274044.P857292196200967294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A274044.P857292196200967294

namespace A274044

/-- `filter[A118882(n+1), A008966(#)]` -/
def P857292196200967294.Spec : Prop :=
  ∀ n, P857292196200967294.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P16722069366619050457

`filter[A118882(n+1), A354819(#)]`
-/

namespace A274044.P16722069366619050457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A274044.P16722069366619050457

namespace A274044

/-- `filter[A118882(n+1), A354819(#)]` -/
def P16722069366619050457.Spec : Prop :=
  ∀ n, P16722069366619050457.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P13116847064134440052

`filter[A118882(n+1), A359377(#)]`
-/

namespace A274044.P13116847064134440052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A274044.P13116847064134440052

namespace A274044

/-- `filter[A118882(n+1), A359377(#)]` -/
def P13116847064134440052.Spec : Prop :=
  ∀ n, P13116847064134440052.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P8502170041728036510

`∩[A005117(n+1), A007692(n+1)]`
-/

namespace A274044.P8502170041728036510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274044.P8502170041728036510

namespace A274044

/-- `∩[A005117(n+1), A007692(n+1)]` -/
def P8502170041728036510.Spec : Prop :=
  ∀ n, (P8502170041728036510.a n : ℤ) = A274044 (n + 1)

end A274044

/-! ## A274044.P2560443353721776028

`∩[A005117(n+1), A024508(n+1)]`
-/

namespace A274044.P2560443353721776028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274044.P2560443353721776028

namespace A274044

/-- `∩[A005117(n+1), A024508(n+1)]` -/
def P2560443353721776028.Spec : Prop :=
  ∀ n, (P2560443353721776028.a n : ℤ) = A274044 (n + 1)

end A274044

/-! ## A274044.P5798081383508801425

`∩[A005117(n+1), A071011(n+1)]`
-/

namespace A274044.P5798081383508801425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274044.P5798081383508801425

namespace A274044

/-- `∩[A005117(n+1), A071011(n+1)]` -/
def P5798081383508801425.Spec : Prop :=
  ∀ n, (P5798081383508801425.a n : ℤ) = A274044 (n + 1)

end A274044

/-! ## A274044.P5479661314365810622

`∩[A005117(n+1), A118882(n+1)]`
-/

namespace A274044.P5479661314365810622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274044.P5479661314365810622

namespace A274044

/-- `∩[A005117(n+1), A118882(n+1)]` -/
def P5479661314365810622.Spec : Prop :=
  ∀ n, (P5479661314365810622.a n : ℤ) = A274044 (n + 1)

end A274044

/-! ## A274044.P729421955378608428

`filter[A020893(n+3), A354108(#)]`
-/

namespace A274044.P729421955378608428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A274044.P729421955378608428

namespace A274044

/-- `filter[A020893(n+3), A354108(#)]` -/
def P729421955378608428.Spec : Prop :=
  ∀ n, P729421955378608428.a n = A274044 (n + 1)

end A274044

/-! ## A274044.P12379049065710276499

`∩[A007692(n+1), A020893(n+1)]`
-/

namespace A274044.P12379049065710276499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274044.P12379049065710276499

namespace A274044

/-- `∩[A007692(n+1), A020893(n+1)]` -/
def P12379049065710276499.Spec : Prop :=
  ∀ n, (P12379049065710276499.a n : ℤ) = A274044 (n + 1)

end A274044

/-! ## A274044.P7812798153836549341

`∩[A020893(n+1), A024508(n+1)]`
-/

namespace A274044.P7812798153836549341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274044.P7812798153836549341

namespace A274044

/-- `∩[A020893(n+1), A024508(n+1)]` -/
def P7812798153836549341.Spec : Prop :=
  ∀ n, (P7812798153836549341.a n : ℤ) = A274044 (n + 1)

end A274044

/-! ## A274044.P17830796142634883111

`∩[A020893(n+1), A071011(n+1)]`
-/

namespace A274044.P17830796142634883111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274044.P17830796142634883111

namespace A274044

/-- `∩[A020893(n+1), A071011(n+1)]` -/
def P17830796142634883111.Spec : Prop :=
  ∀ n, (P17830796142634883111.a n : ℤ) = A274044 (n + 1)

end A274044

/-!
# A274047: Diameter of Generalized Petersen Graph G(n, 2).

The programs for A274047, the canonical program `A274047.P5588393262250960711` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274047 has offset 5).

The definition of A274047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274047.P5588393262250960711

`a(n-4)+1` with `a(0)=2, a(1)=4, a(2)=3, a(3)=4, a(4)=4, a(5)=5, a(6)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274047

/-- `a(n-4)+1` -/
def P5588393262250960711.Spec : Prop :=
  ∀ n, (P5588393262250960711.a n : ℤ) = A274047 (n + 5)

theorem P5588393262250960711.correct : P5588393262250960711.Spec := by
  intro n
  simp only [A274047, Nat.add_sub_cancel]

end A274047

/-! ## A274047.P17585845174821857964

`4-floor((a(n-1)-n)/3)` with `a(0)=2, a(1)=4, a(2)=3`
-/

namespace A274047.P17585845174821857964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 3] fun n a =>
  4 - ⌊(a (n - 1) - (n : ℤ) : ℚ) / 3⌋

end

end A274047.P17585845174821857964

namespace A274047

/-- `4-floor((a(n-1)-n)/3)` -/
def P17585845174821857964.Spec : Prop :=
  ∀ n, P17585845174821857964.a n = A274047 (n + 5)

end A274047

/-! ## A274047.P14320759198000945753

`ceil(∑[A141310(n+3)]/(n+1))`
-/

namespace A274047.P14320759198000945753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A274047.P14320759198000945753

namespace A274047

/-- `ceil(∑[A141310(n+3)]/(n+1))` -/
def P14320759198000945753.Spec : Prop :=
  ∀ n, P14320759198000945753.a n = A274047 (n + 5)

end A274047

/-! ## A274047.P10801846697911633056

`A110655(n)+A260081(C(2, n))+2`
-/

namespace A274047.P10801846697911633056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + (A260081 (Nat.choose 2 n) + 2)

end

end A274047.P10801846697911633056

namespace A274047

/-- `A110655(n)+A260081(C(2, n))+2` -/
def P10801846697911633056.Spec : Prop :=
  ∀ n, P10801846697911633056.a n = A274047 (n + 5)

end A274047

/-! ## A274047.P7288083637719577159

`A128929(n+5)+gcd(2, C(2, n))`
-/

namespace A274047.P7288083637719577159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (n + 5) + (Nat.gcd 2 (Nat.choose 2 n) : ℤ)

end

end A274047.P7288083637719577159

namespace A274047

/-- `A128929(n+5)+gcd(2, C(2, n))` -/
def P7288083637719577159.Spec : Prop :=
  ∀ n, P7288083637719577159.a n = A274047 (n + 5)

end A274047

/-! ## A274047.P9759346245967179025

`A110655(n)+2+A020513(A051698(n+1))`
-/

namespace A274047.P9759346245967179025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + 2 + A020513 (A051698 (n + 1)).toNat

end

end A274047.P9759346245967179025

namespace A274047

/-- `A110655(n)+2+A020513(A051698(n+1))` -/
def P9759346245967179025.Spec : Prop :=
  ∀ n, P9759346245967179025.a n = A274047 (n + 5)

end A274047

/-! ## A274047.P9956383979709284195

`A008621(n+7)+char[A014681(n+2)]`
-/

namespace A274047.P9956383979709284195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n + 7) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A274047.P9956383979709284195

namespace A274047

/-- `A008621(n+7)+char[A014681(n+2)]` -/
def P9956383979709284195.Spec : Prop :=
  ∀ n, P9956383979709284195.a n = A274047 (n + 5)

end A274047

/-! ## A274047.P3008096853068007739

`A000034(A038700(n+1))+A110655(n)+1`
-/

namespace A274047.P3008096853068007739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A038700 (n + 1)).toNat + (A110655 n + 1)

end

end A274047.P3008096853068007739

namespace A274047

/-- `A000034(A038700(n+1))+A110655(n)+1` -/
def P3008096853068007739.Spec : Prop :=
  ∀ n, P3008096853068007739.a n = A274047 (n + 5)

end A274047

/-!
# A274048: a(n) = A116640(A018900(n)) = A116623(A059893(A018900(n))).

The programs for A274048, the canonical program `A274048.P17286915012048234897` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274048 has offset 1).

The definition of A274048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274048.P17286915012048234897

`A116640(A018900(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274048

/-- `A116640(A018900(n+1))` -/
def P17286915012048234897.Spec : Prop :=
  ∀ n, P17286915012048234897.a n = A274048 (n + 1)

theorem P17286915012048234897.correct : P17286915012048234897.Spec := by
  intro n
  simp only [A274048, Nat.add_sub_cancel]

end A274048

/-! ## A274048.P10970390969920271163

`A116623(A059893(A018900(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274048.P10970390969920271163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116623 (A059893 (A018900 (n + 1)).toNat).toNat

end

end A274048.P10970390969920271163

namespace A274048

/-- `A116623(A059893(A018900(n+1)))` -/
def P10970390969920271163.Spec : Prop :=
  ∀ n, P10970390969920271163.a n = A274048 (n + 1)

end A274048

/-! ## A274048.P11076430575941400734

`A119733(A084468(n+1))`
-/

namespace A274048.P11076430575941400734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (A084468 (n + 1)).toNat

end

end A274048.P11076430575941400734

namespace A274048

/-- `A119733(A084468(n+1))` -/
def P11076430575941400734.Spec : Prop :=
  ∀ n, P11076430575941400734.a n = A274048 (n + 1)

end A274048

/-! ## A274048.P16142574873214406165

`A116640(eq[2, A000120(n)])`
-/

namespace A274048.P16142574873214406165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274048.P16142574873214406165

namespace A274048

/-- `A116640(eq[2, A000120(n)])` -/
def P16142574873214406165.Spec : Prop :=
  ∀ n, P16142574873214406165.a n = A274048 (n + 1)

end A274048

/-! ## A274048.P1298795371852219016

`A116640(eq[3, A038573(n)])`
-/

namespace A274048.P1298795371852219016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116640 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A274048.P1298795371852219016

namespace A274048

/-- `A116640(eq[3, A038573(n)])` -/
def P1298795371852219016.Spec : Prop :=
  ∀ n, P1298795371852219016.a n = A274048 (n + 1)

end A274048

/-!
# A274049: Numbers k such that sum of anti-divisors of k is palindromic.

The programs for A274049, there is no canonical definition to state claims against.
-/

/-! ## A274049.P4428366008462656090

`eq[A004086(A066417(n+1)), A066417(n+1)]+1`
-/

namespace A274049.P4428366008462656090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A066417 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A274049.P4428366008462656090

/-! ## A274049.P15362983598871883615

`A307995(A293607(n))+n`
-/

namespace A274049.P15362983598871883615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307995 (A293607 n).toNat + (n : ℤ)

end

end A274049.P15362983598871883615

/-! ## A274049.P11904212486960157063

`A077470(A230090(n+1))+n`
-/

namespace A274049.P11904212486960157063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077470 (A230090 (n + 1)).toNat + (n : ℤ)

end

end A274049.P11904212486960157063

/-! ## A274049.P5325579160431361085

`record[A052429(record[A050331(n+1)])]`
-/

namespace A274049.P5325579160431361085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050331 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274049.P5325579160431361085

/-! ## A274049.P159751259353009275

`eq[A340596(n+1), A370414(A135130(n+1))]`
-/

namespace A274049.P159751259353009275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370414 (A135130 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274049.P159751259353009275

/-!
# A274052: Number of factor-free Dyck words with slope 5/2 and length 7n.

The programs for A274052, there is no canonical definition to state claims against.
-/

/-! ## A274052.P13753725249722366061

`A280877(A346647(n))-A275142(n+1)`
-/

namespace A274052.P13753725249722366061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280877 (A346647 n).toNat - A275142 (n + 1)

end

end A274052.P13753725249722366061

/-!
# A274054: Number of modified skew Dyck paths of semilength n such that the area between the x-axis and the path is n*(n+1)/2.

The programs for A274054, there is no canonical definition to state claims against.
-/

/-! ## A274054.P3568243558480797377

`A274372(∑[(1-n)²]+n-1)`
-/

namespace A274054.P3568243558480797377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274372 (∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)).toNat

end

end A274054.P3568243558480797377

/-!
# A274055: Relative of Hofstadter Q-sequence: a(n) = n for 1 <= n <= 42; a(n) = a(n-a(n-1)) + a(n-a(n-2)) for n > 42.

The programs for A274055, there is no canonical definition to state claims against.
-/

/-! ## A274055.P1529235750550973252

`(n+1)%(A010958(n)+3)`
-/

namespace A274055.P1529235750550973252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A010958 n + 3)

end

end A274055.P1529235750550973252

/-! ## A274055.P14303986046852497255

`(n+1)%A001248(A088593(n))`
-/

namespace A274055.P14303986046852497255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001248 (A088593 n).toNat)

end

end A274055.P14303986046852497255

/-! ## A274055.P6635984081601364223

`A212536(A000124(n)%Δ[A031835(n+1)])`
-/

namespace A274055.P6635984081601364223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212536 (Int.tmod (A000124 n) (f1 (n + 1) - f1 n)).toNat

end

end A274055.P6635984081601364223

/-! ## A274055.P16615709378225375660

`A000027(n+1)%A000001(A099832(n+1))`
-/

namespace A274055.P16615709378225375660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A000001 (A099832 (n + 1)).toNat)

end

end A274055.P16615709378225375660

/-! ## A274055.P12515890645387949467

`A028310(n+1)%A000001(A099832(n+1))`
-/

namespace A274055.P12515890645387949467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (A000001 (A099832 (n + 1)).toNat)

end

end A274055.P12515890645387949467

/-!
# A274056: Number of unrooted labeled trees on 2n nodes with node degree either one or three.

The programs for A274056, there is no canonical definition to state claims against.
-/

/-! ## A274056.P2261360005251140267

`A000680(n)*A001791(n+1)`
-/

namespace A274056.P2261360005251140267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n * A001791 (n + 1)

end

end A274056.P2261360005251140267

/-! ## A274056.P6953300670212679415

`A001147(n)*A001761(n+1)`
-/

namespace A274056.P6953300670212679415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A001761 (n + 1)

end

end A274056.P6953300670212679415

/-! ## A274056.P8824362481901242822

`A001497(∑[n])*A001761(n+1)`
-/

namespace A274056.P8824362481901242822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (∑ j ∈ Finset.range (n + 1), f1 j) * A001761 (n + 1)

end

end A274056.P8824362481901242822

/-! ## A274056.P4285168180029303863

`A001761(n+1)*A161198(∑[n])`
-/

namespace A274056.P4285168180029303863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001761 (n + 1) * A161198 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274056.P4285168180029303863

/-! ## A274056.P3584313397988030609

`∏[A004280(n+1)]*A262035(n)`
-/

namespace A274056.P3584313397988030609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A262035 n

end

end A274056.P3584313397988030609

/-!
# A274059: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A274059, there is no canonical definition to state claims against.
-/

/-! ## A274059.P1086328601721947175

`∑[A097014(10*a(n-2)*n/5)]` with `a(0)=1, a(1)=2`
-/

namespace A274059.P1086328601721947175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A097014 (SequenceMachineLib.roundAway ((10 * f1 (n - 2) : ℚ) * ((n : ℚ) / 5))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274059.P1086328601721947175

/-! ## A274059.P14009213961154298015

`∑[A330060(A203074(n))]`
-/

namespace A274059.P14009213961154298015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A203074 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274059.P14009213961154298015

/-! ## A274059.P13965186454132904737

`A074712(A027208(n+1))`
-/

namespace A274059.P13965186454132904737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A027208 (n + 1)).toNat

end

end A274059.P13965186454132904737

/-!
# A274060: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

The programs for A274060, there is no canonical definition to state claims against.
-/

/-! ## A274060.P6946080912507227537

`lcm(A273495(A052928(n)), A274216(n))`
-/

namespace A274060.P6946080912507227537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A273495 (A052928 n).toNat) (A274216 n)

end

end A274060.P6946080912507227537

/-! ## A274060.P8371647934367978130

`A007088(A274224(n))`
-/

namespace A274060.P8371647934367978130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A274224 n).toNat

end

end A274060.P8371647934367978130

/-! ## A274060.P11503913164487580176

`A007088(and(A077854(n), A277933(n)))`
-/

namespace A274060.P11503913164487580176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A077854 n) (A277933 n)).toNat

end

end A274060.P11503913164487580176

/-! ## A274060.P899327811811826919

`A185544(2*A274224(n))`
-/

namespace A274060.P899327811811826919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A274224 n).toNat

end

end A274060.P899327811811826919

/-! ## A274060.P16262580547188441570

`A185544(2*and(A077854(n), A277933(n)))`
-/

namespace A274060.P16262580547188441570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.land (A077854 n) (A277933 n)).toNat

end

end A274060.P16262580547188441570

/-!
# A274061: Number of 1's required to build n using +, * and concatenation of 1's, where the result of concatenation is interpreted as a binary string.

The programs for A274061, there is no canonical definition to state claims against.
-/

/-! ## A274061.P17587320383653586585

`A090822(A025621(n+1))+A000196(n)`
-/

namespace A274061.P17587320383653586585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A025621 (n + 1)).toNat + A000196 n

end

end A274061.P17587320383653586585

/-! ## A274061.P15110671896542478473

`∑[A010892(A027379(n)*A052816(n))]`
-/

namespace A274061.P15110671896542478473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A027379 n * A052816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274061.P15110671896542478473

/-! ## A274061.P10600168973672729764

`A325134(n+1)-A096693(A006906(n))`
-/

namespace A274061.P10600168973672729764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (n + 1) - A096693 (A006906 n).toNat

end

end A274061.P10600168973672729764

/-! ## A274061.P3213151281939358808

`A068063(A043320(n+1)*A089280(n+1))`
-/

namespace A274061.P3213151281939358808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A043320 (n + 1) * A089280 (n + 1)).toNat

end

end A274061.P3213151281939358808

/-! ## A274061.P15025599394810547080

`A068063(A089280(n+1)*A187829(n+1))`
-/

namespace A274061.P15025599394810547080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A089280 (n + 1) * A187829 (n + 1)).toNat

end

end A274061.P15025599394810547080

/-!
# A274062: Even numbers such that the sum of the odd divisors is a Fibonacci number F and the sum of the even divisors is 2F.

The programs for A274062, there is no canonical definition to state claims against.
-/

/-! ## A274062.P16546943970715578621

`2*∩[A272412(n+1), A060747(n)]`
-/

namespace A274062.P16546943970715578621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274062.P16546943970715578621

/-! ## A274062.P5110856967265939537

`A073675(∩[A272412(n+1), A060747(n)])`
-/

namespace A274062.P5110856967265939537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A274062.P5110856967265939537

/-!
# A274063: Numbers whose periodic derivative is equal to the arithmetic derivative.

The programs for A274063, there is no canonical definition to state claims against.
-/

/-! ## A274063.P3717516595421721227

`eq[A003415(n), A038556(n)]`
-/

namespace A274063.P3717516595421721227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274063.P3717516595421721227

/-! ## A274063.P17471625665607224006

`eq[A038556(n), A319703(A004277(n))]`
-/

namespace A274063.P17471625665607224006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274063.P17471625665607224006

/-! ## A274063.P1231717505605105465

`eq[A038556(n), A328099(A028310(n))]`
-/

namespace A274063.P1231717505605105465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274063.P1231717505605105465

/-! ## A274063.P12200301922344090690

`eq[A038556(n), A319703(A316571(n+1))]`
-/

namespace A274063.P12200301922344090690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A316571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274063.P12200301922344090690

/-! ## A274063.P16955749689180064288

`eq[A003415(n), A038554(2*n+1)]`
-/

namespace A274063.P16955749689180064288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A274063.P16955749689180064288

/-!
# A274064: Number of nX3 0..2 arrays with no three equal values forming an isosceles right triangle, and new values introduced in 0..2 order.

The programs for A274064, there is no canonical definition to state claims against.
-/

/-! ## A274064.P11277416074524027107

`A274065(∑[n+3]+1)`
-/

namespace A274064.P11277416074524027107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A274064.P11277416074524027107

/-! ## A274064.P13243668036951590322

`A274065(A167614(n+1))+char[9]`
-/

namespace A274064.P13243668036951590322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A274064.P13243668036951590322

/-! ## A274064.P16812263178459169697

`lcm(A007318(n), A274065(A167614(n+1)))`
-/

namespace A274064.P16812263178459169697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A274065 (A167614 (n + 1)).toNat)

end

end A274064.P16812263178459169697

/-! ## A274064.P11111107478935448319

`∑{d}[A274065(A167614(n+1)), A000010(#)]`
-/

namespace A274064.P11111107478935448319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A274064.P11111107478935448319

/-! ## A274064.P2885084887407110140

`A262079(n+1)*A274065(A167614(n+1))`
-/

namespace A274064.P2885084887407110140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 1) * A274065 (A167614 (n + 1)).toNat

end

end A274064.P2885084887407110140

/-!
# A274066: Number of n X 2 0..2 arrays with no three equal values forming an isosceles triangle, and new values introduced in 0..2 order.

The programs for A274066, there is no canonical definition to state claims against.
-/

/-! ## A274066.P15534416758137674203

`A274068(∑[n+1]+2)`
-/

namespace A274066.P15534416758137674203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274068 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A274066.P15534416758137674203

/-! ## A274066.P4920949917301062077

`record[A274068(3*n+2)]`
-/

namespace A274066.P4920949917301062077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274068 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A274066.P4920949917301062077

/-! ## A274066.P2012464830057318580

`A274068(A000096(n+1))%A077244(n)`
-/

namespace A274066.P2012464830057318580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274068 (A000096 (n + 1)).toNat) (A077244 n)

end

end A274066.P2012464830057318580

/-! ## A274066.P8198654065297138226

`A054977(n+1)*A274068(A000096(n+1))`
-/

namespace A274066.P8198654065297138226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A274068 (A000096 (n + 1)).toNat

end

end A274066.P8198654065297138226

/-!
# A274067: Number of n X 3 0..2 arrays with no three equal values forming an isosceles triangle, and new values introduced in 0..2 order.

The programs for A274067, there is no canonical definition to state claims against.
-/

/-! ## A274067.P10316143027717971743

`A274068(∑[n+2]+4)`
-/

namespace A274067.P10316143027717971743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274068 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274067.P10316143027717971743

/-! ## A274067.P4641368729095348555

`A274068(A167614(n+1))+A025466(n)`
-/

namespace A274067.P4641368729095348555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274068 (A167614 (n + 1)).toNat + A025466 n

end

end A274067.P4641368729095348555

/-! ## A274067.P9293564198854849334

`A274068(A167614(n+1))+A061858(n)`
-/

namespace A274067.P9293564198854849334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274068 (A167614 (n + 1)).toNat + A061858 n

end

end A274067.P9293564198854849334

/-! ## A274067.P11466460022043799252

`A274068(A167614(n+1))+A178798(n)`
-/

namespace A274067.P11466460022043799252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274068 (A167614 (n + 1)).toNat + A178798 n

end

end A274067.P11466460022043799252

/-! ## A274067.P13864326419467421942

`A274068(A167614(n+1))+A185238(n)`
-/

namespace A274067.P13864326419467421942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274068 (A167614 (n + 1)).toNat + A185238 n

end

end A274067.P13864326419467421942

/-!
# A274068: T(n,k)=Number of nXk 0..2 arrays with no three equal values forming an isosceles triangle, and new values introduced in 0..2 order.

The programs for A274068, there is no canonical definition to state claims against.
-/

/-! ## A274068.P14258209954582641008

`A274065(A043317(n+1))`
-/

namespace A274068.P14258209954582641008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (A043317 (n + 1)).toNat

end

end A274068.P14258209954582641008

/-! ## A274068.P17878713803899488488

`A274065(A044914(n+1))`
-/

namespace A274068.P17878713803899488488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (A044914 (n + 1)).toNat

end

end A274068.P17878713803899488488

/-! ## A274068.P9488201649259599593

`A274065(A049872(n)+1)`
-/

namespace A274068.P9488201649259599593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (A049872 n + 1).toNat

end

end A274068.P9488201649259599593

/-! ## A274068.P6174980573993874065

`A274065(A055648(n+1))`
-/

namespace A274068.P6174980573993874065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (A055648 (n + 1)).toNat

end

end A274068.P6174980573993874065

/-! ## A274068.P13357146398380088556

`A274065(A062003(n)+1)`
-/

namespace A274068.P13357146398380088556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274065 (A062003 n + 1).toNat

end

end A274068.P13357146398380088556

/-!
# A274069: a(n) is the concatenation of a(n-1) and the Hamming distance between a(n-1) and its reverse (i.e., the minimum number of bitflips needed to make them identical). Sequence written in binary.

The programs for A274069, there is no canonical definition to state claims against.
-/

/-! ## A274069.P2384215120621779264

`A267514(eq[A282915(n), A282916(n)])`
-/

namespace A274069.P2384215120621779264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267514 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274069.P2384215120621779264

/-!
# A274070: Integer part of the sum of the inverses of the first n primes.

The programs for A274070, the canonical program `A274070.P8091260610285469047` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274070 has offset 1).

The definition of A274070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274070.P8091260610285469047

`round(atan(round(n/4)))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274070

/-- `round(atan(round(n/4)))` -/
def P8091260610285469047.Spec : Prop :=
  ∀ n, P8091260610285469047.a n = A274070 (n + 1)

theorem P8091260610285469047.correct : P8091260610285469047.Spec := by
  intro n
  simp only [A274070, Nat.add_sub_cancel]

end A274070

/-!
# A274072: a(n) = 5^n-(-1)^n.

The programs for A274072, the canonical program `A274072.P940978802578380833` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274072 has offset 0).

The definition of A274072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-(-1)^n` (program `A274072.P940978802578380833`, by `A274072.P940978802578380833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274072.P940978802578380833

`5^n-(-1)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274072

/-- `5^n-(-1)^n` -/
def P940978802578380833.Spec : Prop :=
  ∀ n, P940978802578380833.a n = A274072 n

theorem P940978802578380833.correct : P940978802578380833.Spec := by
  intro n
  simp only [A274072]

end A274072

/-! ## A274072.P11628599326614161312

`6*A015531(n)`
-/

namespace A274072.P11628599326614161312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A015531 n

end

end A274072.P11628599326614161312

namespace A274072

/-- `6*A015531(n)` -/
def P11628599326614161312.Spec : Prop :=
  ∀ n, P11628599326614161312.a n = A274072 n

end A274072

/-! ## A274072.P13290882672081553592

`lcm(3, 1-(-5)^n)`
-/

namespace A274072.P13290882672081553592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (1 - (-5) ^ n)

end

end A274072.P13290882672081553592

namespace A274072

/-- `lcm(3, 1-(-5)^n)` -/
def P13290882672081553592.Spec : Prop :=
  ∀ n, (P13290882672081553592.a n : ℤ) = A274072 n

end A274072

/-! ## A274072.P2503278963418210458

`ogf(6x/(1-4x-5x^2))`
-/

namespace A274072.P2503278963418210458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -4, -5] n

end

end A274072.P2503278963418210458

namespace A274072

/-- `ogf(6x/(1-4x-5x^2))` -/
def P2503278963418210458.Spec : Prop :=
  ∀ n, P2503278963418210458.a n = A274072 n

end A274072

/-! ## A274072.P15638725921581366458

`xor(6, 5*a(n-1))` with `a(0)=0`
-/

namespace A274072.P15638725921581366458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 6 (5 * a (n - 1))

end

end A274072.P15638725921581366458

namespace A274072

/-- `xor(6, 5*a(n-1))` -/
def P15638725921581366458.Spec : Prop :=
  ∀ n, (P15638725921581366458.a n : ℤ) = A274072 n

end A274072

/-! ## A274072.P8653908562297274242

`xor(6, lcm(5, a(n-1)))` with `a(0)=0`
-/

namespace A274072.P8653908562297274242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 6 (Nat.lcm 5 (a (n - 1)))

end

end A274072.P8653908562297274242

namespace A274072

/-- `xor(6, lcm(5, a(n-1)))` -/
def P8653908562297274242.Spec : Prop :=
  ∀ n, (P8653908562297274242.a n : ℤ) = A274072 n

end A274072

/-! ## A274072.P1231321066447543363

`xor(5^n, Δ[comp[or(2, n)]])`
-/

namespace A274072.P1231321066447543363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (5 ^ n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A274072.P1231321066447543363

namespace A274072

/-- `xor(5^n, Δ[comp[or(2, n)]])` -/
def P1231321066447543363.Spec : Prop :=
  ∀ n, P1231321066447543363.a n = A274072 n

end A274072

/-! ## A274072.P12474246673403120787

`xor(5^n, (2*n+1)%4)`
-/

namespace A274072.P12474246673403120787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (5 ^ n) ((2 * n + 1) % 4)

end

end A274072.P12474246673403120787

namespace A274072

/-- `xor(5^n, (2*n+1)%4)` -/
def P12474246673403120787.Spec : Prop :=
  ∀ n, (P12474246673403120787.a n : ℤ) = A274072 n

end A274072

/-! ## A274072.P14088661330768509225

`xor(5^n, 2*and(1, n)+1)`
-/

namespace A274072.P14088661330768509225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (5 ^ n) (2 * Nat.land 1 n + 1)

end

end A274072.P14088661330768509225

namespace A274072

/-- `xor(5^n, 2*and(1, n)+1)` -/
def P14088661330768509225.Spec : Prop :=
  ∀ n, (P14088661330768509225.a n : ℤ) = A274072 n

end A274072

/-! ## A274072.P3276507395218502453

`A132158(3*n)`
-/

namespace A274072.P3276507395218502453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132158 (3 * n)

end

end A274072.P3276507395218502453

namespace A274072

/-- `A132158(3*n)` -/
def P3276507395218502453.Spec : Prop :=
  ∀ n, P3276507395218502453.a n = A274072 n

end A274072

/-! ## A274072.P11191945392842705964

`xor(2, A087404(n))`
-/

namespace A274072.P11191945392842705964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A087404 n)

end

end A274072.P11191945392842705964

namespace A274072

/-- `xor(2, A087404(n))` -/
def P11191945392842705964.Spec : Prop :=
  ∀ n, P11191945392842705964.a n = A274072 n

end A274072

/-! ## A274072.P4246794176550909680

`3*A231103(n+1)`
-/

namespace A274072.P4246794176550909680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A231103 (n + 1)

end

end A274072.P4246794176550909680

namespace A274072

/-- `3*A231103(n+1)` -/
def P4246794176550909680.Spec : Prop :=
  ∀ n, P4246794176550909680.a n = A274072 n

end A274072

/-! ## A274072.P17696451727904343453

`Δ[or(4, 5^n)/4]`
-/

namespace A274072.P17696451727904343453
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (5 ^ n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274072.P17696451727904343453

namespace A274072

/-- `Δ[or(4, 5^n)/4]` -/
def P17696451727904343453.Spec : Prop :=
  ∀ n, P17696451727904343453.a n = (A274072 n : ℚ)

end A274072

/-! ## A274072.P6542651843657556202

`round(xor(4, 5^(n+1))/5)`
-/

namespace A274072.P6542651843657556202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 4 (5 ^ (n + 1)) : ℚ) / 5)

end

end A274072.P6542651843657556202

namespace A274072

/-- `round(xor(4, 5^(n+1))/5)` -/
def P6542651843657556202.Spec : Prop :=
  ∀ n, P6542651843657556202.a n = A274072 n

end A274072

/-! ## A274072.P8794904068980020652

`ceil(xor(5, 5^(n+1))/5)`
-/

namespace A274072.P8794904068980020652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 5 (5 ^ (n + 1)) : ℚ) / 5⌉

end

end A274072.P8794904068980020652

namespace A274072

/-- `ceil(xor(5, 5^(n+1))/5)` -/
def P8794904068980020652.Spec : Prop :=
  ∀ n, P8794904068980020652.a n = A274072 n

end A274072

/-!
# A274073: a(n) = 6^n-(-1)^n.

The programs for A274073, the canonical program `A274073.P7498638606300857502` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274073 has offset 0).

The definition of A274073 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-(-1)^n` (program `A274073.P7498638606300857502`, by `A274073.P7498638606300857502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274073.P7498638606300857502

`6^n-(-1)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274073

/-- `6^n-(-1)^n` -/
def P7498638606300857502.Spec : Prop :=
  ∀ n, P7498638606300857502.a n = A274073 n

theorem P7498638606300857502.correct : P7498638606300857502.Spec := by
  intro n
  simp only [A274073]

end A274073

/-! ## A274073.P12916462283705012321

`7*A015540(n)`
-/

namespace A274073.P12916462283705012321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A015540 n

end

end A274073.P12916462283705012321

namespace A274073

/-- `7*A015540(n)` -/
def P12916462283705012321.Spec : Prop :=
  ∀ n, P12916462283705012321.a n = A274073 n

end A274073

/-! ## A274073.P11949427753233650319

`ogf(7x/(1-5x-6x^2))`
-/

namespace A274073.P11949427753233650319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -5, -6] n

end

end A274073.P11949427753233650319

namespace A274073

/-- `ogf(7x/(1-5x-6x^2))` -/
def P11949427753233650319.Spec : Prop :=
  ∀ n, P11949427753233650319.a n = A274073 n

end A274073

/-! ## A274073.P4914007225120358970

`Δ[A003464(n)+gcd(2, n)]`
-/

namespace A274073.P4914007225120358970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n + (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274073.P4914007225120358970

namespace A274073

/-- `Δ[A003464(n)+gcd(2, n)]` -/
def P4914007225120358970.Spec : Prop :=
  ∀ n, P4914007225120358970.a n = A274073 n

end A274073

/-!
# A274074: a(n) = 6^n+(-1)^n.

The programs for A274074, the canonical program `A274074.P2092999667052204811` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274074 has offset 0).

The definition of A274074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+(-1)^n` (program `A274074.P2092999667052204811`, by `A274074.P2092999667052204811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274074.P2092999667052204811

`6^n+(-1)^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274074

/-- `6^n+(-1)^n` -/
def P2092999667052204811.Spec : Prop :=
  ∀ n, P2092999667052204811.a n = A274074 n

theorem P2092999667052204811.correct : P2092999667052204811.Spec := by
  intro n
  simp only [A274074]

end A274074

/-! ## A274074.P3455591676131249237

`ogf((-2+5x)/(-1+5x+6x^2))`
-/

namespace A274074.P3455591676131249237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -5, -6] n

end

end A274074.P3455591676131249237

namespace A274074

/-- `ogf((-2+5x)/(-1+5x+6x^2))` -/
def P3455591676131249237.Spec : Prop :=
  ∀ n, P3455591676131249237.a n = A274074 n

end A274074

/-! ## A274074.P6319747136179242419

`Δ[A003464(n)-gcd(2, n)]`
-/

namespace A274074.P6319747136179242419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A274074.P6319747136179242419

namespace A274074

/-- `Δ[A003464(n)-gcd(2, n)]` -/
def P6319747136179242419.Spec : Prop :=
  ∀ n, P6319747136179242419.a n = A274074 n

end A274074

/-!
# A274075: Sum of n-th powers of the roots of x^3 + x^2 - 9*x - 1.

The programs for A274075, the canonical program `A274075.P10871660465230647214` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274075 has offset 0).

The definition of A274075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274075.P10871660465230647214

`ogf((3+2x-9x^2)/(1+x-9x^2-x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274075

/-- `ogf((3+2x-9x^2)/(1+x-9x^2-x^3))` -/
def P10871660465230647214.Spec : Prop :=
  ∀ n, P10871660465230647214.a n = A274075 n

theorem P10871660465230647214.correct : P10871660465230647214.Spec := by
  intro n
  simp only [A274075]

end A274075

/-!
# A274077: a(n) = n^3 + 4.

The programs for A274077, the canonical program `A274077.P15358951018328832752` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274077 has offset 0).

The definition of A274077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+4` (program `A274077.P15358951018328832752`, by `A274077.P15358951018328832752.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A274077.P15358951018328832752

`n^3+4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274077

/-- `n^3+4` -/
def P15358951018328832752.Spec : Prop :=
  ∀ n, (P15358951018328832752.a n : ℤ) = A274077 n

theorem P15358951018328832752.correct : P15358951018328832752.Spec := by
  intro n
  simp only [A274077]

end A274077

/-!
# A274079: Table read by rows: the n-th row is the list of numbers diagonally up and to the right of n in the natural numbers read by antidiagonals.

The programs for A274079, the canonical program `A274079.P11049046374545540560` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274079 has offset 1).

The definition of A274079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274079.P11049046374545540560

`A000096(A056556(n))+A056560(n)+2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A274079

/-- `A000096(A056556(n))+A056560(n)+2` -/
def P11049046374545540560.Spec : Prop :=
  ∀ n, P11049046374545540560.a n = A274079 (n + 1)

theorem P11049046374545540560.correct : P11049046374545540560.Spec := by
  intro n
  simp only [A274079, Nat.add_sub_cancel]

end A274079

/-! ## A274079.P5449010127308543532

`A126862(A123579(n+1))-(n+1)`
-/

namespace A274079.P5449010127308543532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126862 (A123579 (n + 1)).toNat - (n + 1 : ℤ)

end

end A274079.P5449010127308543532

namespace A274079

/-- `A126862(A123579(n+1))-(n+1)` -/
def P5449010127308543532.Spec : Prop :=
  ∀ n, P5449010127308543532.a n = A274079 (n + 1)

end A274079

/-! ## A274079.P18145989131612454434

`A000720(3*n+5)-A345957(A107083(n+1))`
-/

namespace A274079.P18145989131612454434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * n + 5) - A345957 (A107083 (n + 1)).toNat

end

end A274079.P18145989131612454434

namespace A274079

/-- `A000720(3*n+5)-A345957(A107083(n+1))` -/
def P18145989131612454434.Spec : Prop :=
  ∀ n, P18145989131612454434.a n = A274079 (n + 1)

end A274079

/-!
# A274080: Table read by rows: row n gives all numbers less than n in the same row, column, or diagonal as n in the natural numbers read by antidiagonals.

The programs for A274080, there is no canonical definition to state claims against.
-/

/-! ## A274080.P4859943528958436508

`A002260(comp[6*n]%A119937(2*n+5))`
-/

namespace A274080.P4859943528958436508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A119937 (2 * n + 5))).toNat

end

end A274080.P4859943528958436508

/-! ## A274080.P10986658089029546932

`A002260(∑[A003557(A094989(n))])`
-/

namespace A274080.P10986658089029546932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A094989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A274080.P10986658089029546932

/-! ## A274080.P3728254389444814280

`A002260(A005100(n+1)%A227473(n))`
-/

namespace A274080.P3728254389444814280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A005100 (n + 1)) (A227473 n)).toNat

end

end A274080.P3728254389444814280

/-! ## A274080.P12540278959672375205

`A002260(A037918(n+1)%A227473(n))`
-/

namespace A274080.P12540278959672375205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A037918 (n + 1)) (A227473 n)).toNat

end

end A274080.P12540278959672375205

/-!
# A274081: Number of unrooted labeled trees on 3n+2 nodes with node degree either one or four.

The programs for A274081, there is no canonical definition to state claims against.
-/

/-! ## A274081.P9034104989947459331

`A014606(n)*A025174(n+1)`
-/

namespace A274081.P9034104989947459331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n * A025174 (n + 1)

end

end A274081.P9034104989947459331

/-! ## A274081.P14375809748868151340

`A014606(n)*A051033(3*n+2)`
-/

namespace A274081.P14375809748868151340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n * A051033 (3 * n + 2)

end

end A274081.P14375809748868151340

/-!
# A274083: Number of unrooted labeled trees on 4n+2 nodes with node degree either one or five.

The programs for A274083, there is no canonical definition to state claims against.
-/

/-! ## A274083.P16692078397294891429

`A014608(n)*A257633(n)`
-/

namespace A274083.P16692078397294891429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014608 n * A257633 n

end

end A274083.P16692078397294891429

/-!
# A274084: Triangular numbers that are repdigits with length > 2 in some base.

The programs for A274084, there is no canonical definition to state claims against.
-/

/-! ## A274084.P15867142455360590436

`∩[A167782(n+2), A000217(n)]`
-/

namespace A274084.P15867142455360590436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274084.P15867142455360590436

/-! ## A274084.P8870772937482802664

`∩[A167782(n+1), A000096(n)+1]`
-/

namespace A274084.P8870772937482802664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274084.P8870772937482802664

/-! ## A274084.P14721031962431904913

`∩[A167782(n+1), A350295(n+3)]`
-/

namespace A274084.P14721031962431904913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274084.P14721031962431904913

/-!
# A274086: Nearest integer to n*tan(n).

The programs for A274086, the canonical program `A274086.P4906183830907507085` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274086 has offset 0).

The definition of A274086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A274086.P4906183830907507085

`round(n*tan(n))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A274086

/-- `round(n*tan(n))` -/
def P4906183830907507085.Spec : Prop :=
  ∀ n, P4906183830907507085.a n = A274086 n

theorem P4906183830907507085.correct : P4906183830907507085.Spec := by
  intro n
  simp only [A274086]

end A274086

/-! ## A274086.P16874689474249245197

`round(n/cot(A028310(n)))`
-/

namespace A274086.P16874689474249245197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.cot (A028310 n : ℝ))

end

end A274086.P16874689474249245197

namespace A274086

/-- `round(n/cot(A028310(n)))` -/
def P16874689474249245197.Spec : Prop :=
  ∀ n, P16874689474249245197.a n = A274086 n

end A274086

/-!
# A274087: Nearest integer to n^2*sin(n).

The programs for A274087, the canonical program `A274087.P7398759194992797752` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274087 has offset 0).

The definition of A274087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274087.P1506913150130137769

`A274095(n²)`
-/

namespace A274087.P1506913150130137769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274095 (n ^ 2)

end

end A274087.P1506913150130137769

namespace A274087

/-- `A274095(n²)` -/
def P1506913150130137769.Spec : Prop :=
  ∀ n, P1506913150130137769.a n = A274087 n

end A274087

/-! ## A274087.P5158863885093951089

`or(char[1], A274095(n*n))`
-/

namespace A274087.P5158863885093951089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274095 (n * n))

end

end A274087.P5158863885093951089

namespace A274087

/-- `or(char[1], A274095(n*n))` -/
def P5158863885093951089.Spec : Prop :=
  ∀ n, P5158863885093951089.a n = A274087 n

end A274087

/-! ## A274087.P7398759194992797752

`round(sqrt(A000290(n²))*sin(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A274087

/-- `round(sqrt(A000290(n²))*sin(n))` -/
def P7398759194992797752.Spec : Prop :=
  ∀ n, P7398759194992797752.a n = A274087 n

theorem P7398759194992797752.correct : P7398759194992797752.Spec := by
  intro n
  simp only [A274087]

end A274087

/-! ## A274087.P9687605055121268903

`and(-1, A274095(A000290(n)))`
-/

namespace A274087.P9687605055121268903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A274095 (A000290 n).toNat)

end

end A274087.P9687605055121268903

namespace A274087

/-- `and(-1, A274095(A000290(n)))` -/
def P9687605055121268903.Spec : Prop :=
  ∀ n, P9687605055121268903.a n = A274087 n

end A274087

/-! ## A274087.P14903029092286700317

`A274095(n*n)/A007318(∑[n])`
-/

namespace A274087.P14903029092286700317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274095 (n * n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A274087.P14903029092286700317

namespace A274087

/-- `A274095(n*n)/A007318(∑[n])` -/
def P14903029092286700317.Spec : Prop :=
  ∀ n, P14903029092286700317.a n = (A274087 n : ℚ)

end A274087

/-! ## A274087.P2583248561141323053

`A274095(n*n)+A000007(n+1)`
-/

namespace A274087.P2583248561141323053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274095 (n * n) + A000007 (n + 1)

end

end A274087.P2583248561141323053

namespace A274087

/-- `A274095(n*n)+A000007(n+1)` -/
def P2583248561141323053.Spec : Prop :=
  ∀ n, P2583248561141323053.a n = A274087 n

end A274087

/-! ## A274087.P4375376954606379835

`A274095(n*n)%A000041(2*n)`
-/

namespace A274087.P4375376954606379835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274095 (n * n)) (A000041 (2 * n))

end

end A274087.P4375376954606379835

namespace A274087

/-- `A274095(n*n)%A000041(2*n)` -/
def P4375376954606379835.Spec : Prop :=
  ∀ n, P4375376954606379835.a n = A274087 n

end A274087

/-! ## A274087.P6256114236823459717

`A274095(n*n)+A008683(4*(n+1))`
-/

namespace A274087.P6256114236823459717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274095 (n * n) + A008683 (4 * (n + 1))

end

end A274087.P6256114236823459717

namespace A274087

/-- `A274095(n*n)+A008683(4*(n+1))` -/
def P6256114236823459717.Spec : Prop :=
  ∀ n, P6256114236823459717.a n = A274087 n

end A274087

/-! ## A274087.P9855266593345361422

`A007318(C(2, n+1))*A274095(n*n)`
-/

namespace A274087.P9855266593345361422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A274095 (n * n)

end

end A274087.P9855266593345361422

namespace A274087

/-- `A007318(C(2, n+1))*A274095(n*n)` -/
def P9855266593345361422.Spec : Prop :=
  ∀ n, P9855266593345361422.a n = A274087 n

end A274087

/-! ## A274087.P9176078067435982552

`A000041(C(2, n+2))*A274095(n*n)`
-/

namespace A274087.P9176078067435982552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A274095 (n * n)

end

end A274087.P9176078067435982552

namespace A274087

/-- `A000041(C(2, n+2))*A274095(n*n)` -/
def P9176078067435982552.Spec : Prop :=
  ∀ n, P9176078067435982552.a n = A274087 n

end A274087

/-! ## A274087.P5878564940105072099

`A057427(n)*A274095(A000290(n))`
-/

namespace A274087.P5878564940105072099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274095 (A000290 n).toNat

end

end A274087.P5878564940105072099

namespace A274087

/-- `A057427(n)*A274095(A000290(n))` -/
def P5878564940105072099.Spec : Prop :=
  ∀ n, P5878564940105072099.a n = A274087 n

end A274087

/-! ## A274087.P581303995211276469

`A178334(n)*A274095(A000290(n))`
-/

namespace A274087.P581303995211276469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A274095 (A000290 n).toNat

end

end A274087.P581303995211276469

namespace A274087

/-- `A178334(n)*A274095(A000290(n))` -/
def P581303995211276469.Spec : Prop :=
  ∀ n, P581303995211276469.a n = A274087 n

end A274087

/-! ## A274087.P15514689454732177762

`A274095(A000290(n))%A000051(n)`
-/

namespace A274087.P15514689454732177762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274095 (A000290 n).toNat) (A000051 n)

end

end A274087.P15514689454732177762

namespace A274087

/-- `A274095(A000290(n))%A000051(n)` -/
def P15514689454732177762.Spec : Prop :=
  ∀ n, P15514689454732177762.a n = A274087 n

end A274087

/-! ## A274087.P16802703941663396158

`A014963(10*(n+1))*A274095(A000290(n))`
-/

namespace A274087.P16802703941663396158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A274095 (A000290 n).toNat

end

end A274087.P16802703941663396158

namespace A274087

/-- `A014963(10*(n+1))*A274095(A000290(n))` -/
def P16802703941663396158.Spec : Prop :=
  ∀ n, P16802703941663396158.a n = A274087 n

end A274087

/-! ## A274087.P13216954737967314434

`A274095(n*n)+A005171(A000040(n+1))`
-/

namespace A274087.P13216954737967314434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274095 (n * n) + A005171 (A000040 (n + 1)).toNat

end

end A274087.P13216954737967314434

namespace A274087

/-- `A274095(n*n)+A005171(A000040(n+1))` -/
def P13216954737967314434.Spec : Prop :=
  ∀ n, P13216954737967314434.a n = A274087 n

end A274087

/-! ## A274087.P18150990267701727993

`A001221(A007918(n))*A274095(A000290(n))`
-/

namespace A274087.P18150990267701727993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007918 n).toNat * A274095 (A000290 n).toNat

end

end A274087.P18150990267701727993

namespace A274087

/-- `A001221(A007918(n))*A274095(A000290(n))` -/
def P18150990267701727993.Spec : Prop :=
  ∀ n, P18150990267701727993.a n = A274087 n

end A274087

/-!
# A274088: a(n) = nearest integer to n^2 * sin(sqrt(n)).

The programs for A274088, there is no canonical definition to state claims against.
-/

/-! ## A274088.P3211493781300310268

`A274091(2*n)`
-/

namespace A274088.P3211493781300310268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274091 (2 * n)

end

end A274088.P3211493781300310268

/-! ## A274088.P6760638376872016232

`A274091(n+n)/gcd(n, n+1)`
-/

namespace A274088.P6760638376872016232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274091 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A274088.P6760638376872016232

/-! ## A274088.P12547228431893842192

`A274091(A004277(n))%A001538(n)`
-/

namespace A274088.P12547228431893842192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274091 (A004277 n).toNat) (A001538 n)

end

end A274088.P12547228431893842192

/-! ## A274088.P5761915758649168455

`A274091(A005843(n))%A001538(n)`
-/

namespace A274088.P5761915758649168455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274091 (A005843 n).toNat) (A001538 n)

end

end A274088.P5761915758649168455

/-! ## A274088.P15269551361048722789

`A274092(3*n)`
-/

namespace A274088.P15269551361048722789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274092 (3 * n)

end

end A274088.P15269551361048722789

/-!
# A274089: Numbers repeated except that powers of 2 only appear once.

The programs for A274089, the canonical program `A274089.P10433632364485525915` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274089 has offset 1).

The definition of A274089 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A274089.P10433632364485525915

`floor(A057716(n+1)/2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A274089

/-- `floor(A057716(n+1)/2)` -/
def P10433632364485525915.Spec : Prop :=
  ∀ n, P10433632364485525915.a n = A274089 (n + 1)

theorem P10433632364485525915.correct : P10433632364485525915.Spec := by
  intro n
  simp only [A274089, Nat.add_sub_cancel]

end A274089

/-! ## A274089.P17174788856467773127

`floor(comp[and(n, -n)]/2)`
-/

namespace A274089.P17174788856467773127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌋

end

end A274089.P17174788856467773127

namespace A274089

/-- `floor(comp[and(n, -n)]/2)` -/
def P17174788856467773127.Spec : Prop :=
  ∀ n, P17174788856467773127.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P11586032578423700469

`ceil(comp[2^n-1]/2)`
-/

namespace A274089.P11586032578423700469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌉

end

end A274089.P11586032578423700469

namespace A274089

/-- `ceil(comp[2^n-1]/2)` -/
def P11586032578423700469.Spec : Prop :=
  ∀ n, P11586032578423700469.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P8071872792170969217

`∑[comp[2^n]%2]+1`
-/

namespace A274089.P8071872792170969217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274089.P8071872792170969217

namespace A274089

/-- `∑[comp[2^n]%2]+1` -/
def P8071872792170969217.Spec : Prop :=
  ∀ n, (P8071872792170969217.a n : ℤ) = A274089 (n + 1)

end A274089

/-! ## A274089.P3849490419783596395

`∑[and(1, comp[2^n])]+1`
-/

namespace A274089.P3849490419783596395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A274089.P3849490419783596395

namespace A274089

/-- `∑[and(1, comp[2^n])]+1` -/
def P3849490419783596395.Spec : Prop :=
  ∀ n, (P3849490419783596395.a n : ℤ) = A274089 (n + 1)

end A274089

/-! ## A274089.P13734256985626840598

`round(comp[and(n, 1-n)]/2)`
-/

namespace A274089.P13734256985626840598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2)

end

end A274089.P13734256985626840598

namespace A274089

/-- `round(comp[and(n, 1-n)]/2)` -/
def P13734256985626840598.Spec : Prop :=
  ∀ n, P13734256985626840598.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P17455217756589889403

`∑[comp[and(n, 1-n)]%2]`
-/

namespace A274089.P17455217756589889403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274089.P17455217756589889403

namespace A274089

/-- `∑[comp[and(n, 1-n)]%2]` -/
def P17455217756589889403.Spec : Prop :=
  ∀ n, (P17455217756589889403.a n : ℤ) = A274089 (n + 1)

end A274089

/-! ## A274089.P8063435732381689702

`∑[and(1, comp[and(n, 1-n)])]`
-/

namespace A274089.P8063435732381689702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274089.P8063435732381689702

namespace A274089

/-- `∑[and(1, comp[and(n, 1-n)])]` -/
def P8063435732381689702.Spec : Prop :=
  ∀ n, (P8063435732381689702.a n : ℤ) = A274089 (n + 1)

end A274089

/-! ## A274089.P5375564874627942366

`floor(lt[and(n, -n), n]/2)`
-/

namespace A274089.P5375564874627942366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2⌋

end

end A274089.P5375564874627942366

namespace A274089

/-- `floor(lt[and(n, -n), n]/2)` -/
def P5375564874627942366.Spec : Prop :=
  ∀ n, P5375564874627942366.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P18093545113792089550

`comp[2^n]-a(n-1)` with `a(0)=1`
-/

namespace A274089.P18093545113792089550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A274089.P18093545113792089550

namespace A274089

/-- `comp[2^n]-a(n-1)` -/
def P18093545113792089550.Spec : Prop :=
  ∀ n, P18093545113792089550.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P17101082977194426825

`floor(comp[A130125(n)]/2)`
-/

namespace A274089.P17101082977194426825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌋

end

end A274089.P17101082977194426825

namespace A274089

/-- `floor(comp[A130125(n)]/2)` -/
def P17101082977194426825.Spec : Prop :=
  ∀ n, P17101082977194426825.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P6660147620532256033

`floor(comp[A158780(n)]/2)`
-/

namespace A274089.P6660147620532256033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌋

end

end A274089.P6660147620532256033

namespace A274089

/-- `floor(comp[A158780(n)]/2)` -/
def P6660147620532256033.Spec : Prop :=
  ∀ n, P6660147620532256033.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P8337772671871203833

`round(comp[A000225(n)]/2)`
-/

namespace A274089.P8337772671871203833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2)

end

end A274089.P8337772671871203833

namespace A274089

/-- `round(comp[A000225(n)]/2)` -/
def P8337772671871203833.Spec : Prop :=
  ∀ n, P8337772671871203833.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P1631901585396878370

`n+1-A083058(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A274089.P1631901585396878370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1 : ℤ) - A083058 (a (n - 1)).toNat

end

end A274089.P1631901585396878370

namespace A274089

/-- `n+1-A083058(a(n-1))` -/
def P1631901585396878370.Spec : Prop :=
  ∀ n, P1631901585396878370.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P13066877783799142291

`A008619(comp[A000225(n+1)])`
-/

namespace A274089.P13066877783799142291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274089.P13066877783799142291

namespace A274089

/-- `A008619(comp[A000225(n+1)])` -/
def P13066877783799142291.Spec : Prop :=
  ∀ n, P13066877783799142291.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P986074176043644861

`A008619(comp[A003817(n+1)])`
-/

namespace A274089.P986074176043644861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274089.P986074176043644861

namespace A274089

/-- `A008619(comp[A003817(n+1)])` -/
def P986074176043644861.Spec : Prop :=
  ∀ n, P986074176043644861.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P16493735680808161910

`A008619(comp[A000225(n)-1])`
-/

namespace A274089.P16493735680808161910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274089.P16493735680808161910

namespace A274089

/-- `A008619(comp[A000225(n)-1])` -/
def P16493735680808161910.Spec : Prop :=
  ∀ n, P16493735680808161910.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P14873240925604356671

`A008619(comp[A003817(n)-1])`
-/

namespace A274089.P14873240925604356671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274089.P14873240925604356671

namespace A274089

/-- `A008619(comp[A003817(n)-1])` -/
def P14873240925604356671.Spec : Prop :=
  ∀ n, P14873240925604356671.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P10414105715003529916

`A008619(comp[2*A000225(n)])`
-/

namespace A274089.P10414105715003529916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000225 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274089.P10414105715003529916

namespace A274089

/-- `A008619(comp[2*A000225(n)])` -/
def P10414105715003529916.Spec : Prop :=
  ∀ n, P10414105715003529916.a n = A274089 (n + 1)

end A274089

/-! ## A274089.P3314668886291514824

`A008619(comp[2*A003817(n)])`
-/

namespace A274089.P3314668886291514824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003817 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274089.P3314668886291514824

namespace A274089

/-- `A008619(comp[2*A003817(n)])` -/
def P3314668886291514824.Spec : Prop :=
  ∀ n, P3314668886291514824.a n = A274089 (n + 1)

end A274089

/-!
# A274090: a(n) = nearest integer to n^2 * cos(sqrt(n)).

The programs for A274090, there is no canonical definition to state claims against.
-/

/-! ## A274090.P10139644815446988211

`A274091(Δ[n²])`
-/

namespace A274090.P10139644815446988211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274091 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A274090.P10139644815446988211

/-! ## A274090.P8301271071424853316

`A274091(n+1+n)/gcd(n, n+1)`
-/

namespace A274090.P8301271071424853316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274091 (n + 1 + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A274090.P8301271071424853316

/-! ## A274090.P17052611375364230035

`A274091(2*n+1)+A070097(A303399(2*(n+2)))`
-/

namespace A274090.P17052611375364230035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274091 (2 * n + 1) + A070097 (A303399 (2 * (n + 2))).toNat

end

end A274090.P17052611375364230035

/-! ## A274090.P8343348273519586796

`A274091(2*n+1)%A175751(n+1)`
-/

namespace A274090.P8343348273519586796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274091 (2 * n + 1)) (A175751 (n + 1))

end

end A274090.P8343348273519586796

/-! ## A274090.P11455711420744299629

`A274091(2*n+1)+A000035(A342050(n+1))`
-/

namespace A274090.P11455711420744299629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274091 (2 * n + 1) + A000035 (A342050 (n + 1)).toNat

end

end A274090.P11455711420744299629

/-! ## A274090.P15036872633151422997

`A274092(3*n+1)`
-/

namespace A274090.P15036872633151422997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274092 (3 * n + 1)

end

end A274090.P15036872633151422997

/-! ## A274090.P15774907028200951591

`A113061(A000040(3*n+4))*A274091(2*n+1)`
-/

namespace A274090.P15774907028200951591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (A000040 (3 * n + 4)).toNat * A274091 (2 * n + 1)

end

end A274090.P15774907028200951591

/-! ## A274090.P2202519031424902174

`A274091(2*n+1)%(2^n)`
-/

namespace A274090.P2202519031424902174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274091 (2 * n + 1)) (2 ^ n : ℤ)

end

end A274090.P2202519031424902174

/-! ## A274090.P15109434799025604608

`A274091(2*n+1)^A014963(∑[n+1])`
-/

namespace A274090.P15109434799025604608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274091 (2 * n + 1) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A274090.P15109434799025604608

/-!
# A274091: Take alternate terms of A274088 and A274090.

The programs for A274091, there is no canonical definition to state claims against.
-/

/-! ## A274091.P4295935388825048912

`A274092(floor(3*n/2))`
-/

namespace A274091.P4295935388825048912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274092 ⌊3 * ((n : ℚ) / 2)⌋.toNat

end

end A274091.P4295935388825048912

/-!
# A274093: a(0)=0; thereafter (-1)^n*n appears n times.

The programs for A274093, the canonical program `A274093.P3378925896752465146` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274093 has offset 0).

The definition of A274093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274093.P15099193963415134854

`-A274094(n)`
-/

namespace A274093.P15099193963415134854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274094 n

end

end A274093.P15099193963415134854

namespace A274093

/-- `-A274094(n)` -/
def P15099193963415134854.Spec : Prop :=
  ∀ n, P15099193963415134854.a n = A274093 n

theorem P15099193963415134854.correct : P15099193963415134854.Spec := by
  intro n
  simp only [A274093, Nat.add_sub_cancel, A274093.P15099193963415134854.a, A274093.P3378925896752465146.a, A010816, A010816.P9990213171636561186.a, A274094, A274094.P5521899497297854027.a, A198954, A198954.P2690440958221023727.a, A374157, A374157.P5715907988378515051.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A274093

/-! ## A274093.P8775385063455834066

`A038608(round(sqrt(2*n)))`
-/

namespace A274093.P8775385063455834066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A274093.P8775385063455834066

namespace A274093

/-- `A038608(round(sqrt(2*n)))` -/
def P8775385063455834066.Spec : Prop :=
  ∀ n, P8775385063455834066.a n = A274093 n

end A274093

/-! ## A274093.P11179959918722406235

`-A181983(round(sqrt(2*n)))`
-/

namespace A274093.P11179959918722406235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A181983 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A274093.P11179959918722406235

namespace A274093

/-- `-A181983(round(sqrt(2*n)))` -/
def P11179959918722406235.Spec : Prop :=
  ∀ n, P11179959918722406235.a n = A274093 n

end A274093

/-! ## A274093.P13960702058507591433

`A248157(round(sqrt(2*n))+3)`
-/

namespace A274093.P13960702058507591433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248157 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 3).toNat

end

end A274093.P13960702058507591433

namespace A274093

/-- `A248157(round(sqrt(2*n))+3)` -/
def P13960702058507591433.Spec : Prop :=
  ∀ n, P13960702058507591433.a n = A274093 n

end A274093

/-! ## A274093.P3378925896752465146

`a(n-1)-A010816(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A274093

/-- `a(n-1)-A010816(n-1)` -/
def P3378925896752465146.Spec : Prop :=
  ∀ n, P3378925896752465146.a n = A274093 n

theorem P3378925896752465146.correct : P3378925896752465146.Spec := by
  intro n
  simp only [A274093]

end A274093

/-! ## A274093.P15708298578157474498

`A057428(n)*A274094(n)`
-/

namespace A274093.P15708298578157474498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A274094 n

end

end A274093.P15708298578157474498

namespace A274093

/-- `A057428(n)*A274094(n)` -/
def P15708298578157474498.Spec : Prop :=
  ∀ n, P15708298578157474498.a n = A274093 n

end A274093

/-! ## A274093.P8822787666037475020

`A010816(n)-∑[A010816(n)]`
-/

namespace A274093.P8822787666037475020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A274093.P8822787666037475020

namespace A274093

/-- `A010816(n)-∑[A010816(n)]` -/
def P8822787666037475020.Spec : Prop :=
  ∀ n, P8822787666037475020.a n = A274093 n

end A274093

/-! ## A274093.P6475178052122817249

`A010816(n)-A274094(n+1)`
-/

namespace A274093.P6475178052122817249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n - A274094 (n + 1)

end

end A274093.P6475178052122817249

namespace A274093

/-- `A010816(n)-A274094(n+1)` -/
def P6475178052122817249.Spec : Prop :=
  ∀ n, P6475178052122817249.a n = A274093 n

end A274093

/-! ## A274093.P15816364669283992514

`A153881(n+1)*A274094(n)`
-/

namespace A274093.P15816364669283992514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A274094 n

end

end A274093.P15816364669283992514

namespace A274093

/-- `A153881(n+1)*A274094(n)` -/
def P15816364669283992514.Spec : Prop :=
  ∀ n, P15816364669283992514.a n = A274093 n

end A274093

/-! ## A274093.P16428335816956420800

`Δ[A274094(n)]-A274094(n+1)`
-/

namespace A274093.P16428335816956420800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A274094 (n + 1)

end

end A274093.P16428335816956420800

namespace A274093

/-- `Δ[A274094(n)]-A274094(n+1)` -/
def P16428335816956420800.Spec : Prop :=
  ∀ n, P16428335816956420800.a n = A274093 n

theorem P16428335816956420800.correct : P16428335816956420800.Spec := by
  intro n
  simp only [A274093, Nat.add_sub_cancel, A274093.P16428335816956420800.f1, A274093.P16428335816956420800.a, A274093.P3378925896752465146.a, A010816, A010816.P9990213171636561186.a, A274094, A274094.P5521899497297854027.a, A198954, A198954.P2690440958221023727.a, A374157, A374157.P5715907988378515051.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A274093

/-! ## A274093.P10151623011687870790

`char[A274128(n+1)]-A274094(n)`
-/

namespace A274093.P10151623011687870790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274128 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A274094 n

end

end A274093.P10151623011687870790

namespace A274093

/-- `char[A274128(n+1)]-A274094(n)` -/
def P10151623011687870790.Spec : Prop :=
  ∀ n, P10151623011687870790.a n = A274093 n

end A274093

/-! ## A274093.P15451007750569155502

`A033999(A123578(n))*A123578(n)`
-/

namespace A274093.P15451007750569155502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A123578 n).toNat * A123578 n

end

end A274093.P15451007750569155502

namespace A274093

/-- `A033999(A123578(n))*A123578(n)` -/
def P15451007750569155502.Spec : Prop :=
  ∀ n, P15451007750569155502.a n = A274093 n

end A274093

/-! ## A274093.P12099925479095376616

`A062157(A123578(n)+1)*A123578(n)`
-/

namespace A274093.P12099925479095376616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A123578 n + 1).toNat * A123578 n

end

end A274093.P12099925479095376616

namespace A274093

/-- `A062157(A123578(n)+1)*A123578(n)` -/
def P12099925479095376616.Spec : Prop :=
  ∀ n, P12099925479095376616.a n = A274093 n

end A274093

/-! ## A274093.P3839168178750981841

`A105812(A123578(n)+1)*A123578(n)`
-/

namespace A274093.P3839168178750981841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A123578 n + 1).toNat * A123578 n

end

end A274093.P3839168178750981841

namespace A274093

/-- `A105812(A123578(n)+1)*A123578(n)` -/
def P3839168178750981841.Spec : Prop :=
  ∀ n, P3839168178750981841.a n = A274093 n

end A274093

/-! ## A274093.P4935666889242407354

`A123578(n)/A033999(A123578(n)+2)`
-/

namespace A274093.P4935666889242407354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123578 n : ℚ) / (A033999 (A123578 n + 2).toNat : ℚ)

end

end A274093.P4935666889242407354

namespace A274093

/-- `A123578(n)/A033999(A123578(n)+2)` -/
def P4935666889242407354.Spec : Prop :=
  ∀ n, P4935666889242407354.a n = (A274093 n : ℚ)

end A274093

/-! ## A274093.P14081160351929104591

`A056594(2*A123578(n))*A123578(n)`
-/

namespace A274093.P14081160351929104591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A123578 n).toNat * A123578 n

end

end A274093.P14081160351929104591

namespace A274093

/-- `A056594(2*A123578(n))*A123578(n)` -/
def P14081160351929104591.Spec : Prop :=
  ∀ n, P14081160351929104591.a n = A274093 n

end A274093

/-! ## A274093.P13288608098462833644

`A000096(n)-abs(A274094(n)+A000096(n))`
-/

namespace A274093.P13288608098462833644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - |A274094 n + A000096 n|

end

end A274093.P13288608098462833644

namespace A274093

/-- `A000096(n)-abs(A274094(n)+A000096(n))` -/
def P13288608098462833644.Spec : Prop :=
  ∀ n, P13288608098462833644.a n = A274093 n

end A274093

/-! ## A274093.P13856098638455684464

`A274094(n)/A057428(n+1)`
-/

namespace A274093.P13856098638455684464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274094 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A274093.P13856098638455684464

namespace A274093

/-- `A274094(n)/A057428(n+1)` -/
def P13856098638455684464.Spec : Prop :=
  ∀ n, P13856098638455684464.a n = (A274093 n : ℚ)

theorem P13856098638455684464.correct : P13856098638455684464.Spec := by
  intro n
  simp only [A274093, Nat.add_sub_cancel, A274093.P13856098638455684464.a, A274093.P3378925896752465146.a, A010816, A010816.P9990213171636561186.a, A057428, A057428.P2999489532230392221.a, A274094, A274094.P5521899497297854027.a, A057427, A057427.P3058147525557661423.a, A198954, A198954.P2690440958221023727.a, A374157, A374157.P5715907988378515051.a, A000007, A000007.P6599383543502402472.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A274093

/-! ## A274093.P17231800003046374927

`-A329116(A168038(n))`
-/

namespace A274093.P17231800003046374927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A329116 (A168038 n).toNat

end

end A274093.P17231800003046374927

namespace A274093

/-- `-A329116(A168038(n))` -/
def P17231800003046374927.Spec : Prop :=
  ∀ n, P17231800003046374927.a n = A274093 n

end A274093

/-! ## A274093.P4134360912435080170

`-A329116(A000194(2*n)²)`
-/

namespace A274093.P4134360912435080170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A329116 (A000194 (2 * n) ^ 2).toNat

end

end A274093.P4134360912435080170

namespace A274093

/-- `-A329116(A000194(2*n)²)` -/
def P4134360912435080170.Spec : Prop :=
  ∀ n, P4134360912435080170.a n = A274093 n

end A274093

/-!
# A274094: a(0)=0; thereafter (-1)^(n+1)*n appears n times.

The programs for A274094, the canonical program `A274094.P5521899497297854027` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274094 has offset 0).

The definition of A274094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274094.P5521899497297854027

`-A274093(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A274094

/-- `-A274093(n)` -/
def P5521899497297854027.Spec : Prop :=
  ∀ n, P5521899497297854027.a n = A274094 n

theorem P5521899497297854027.correct : P5521899497297854027.Spec := by
  intro n
  simp only [A274094]

end A274094

/-! ## A274094.P12295352266967068639

`A181983(round(sqrt(2*n)))`
-/

namespace A274094.P12295352266967068639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A274094.P12295352266967068639

namespace A274094

/-- `A181983(round(sqrt(2*n)))` -/
def P12295352266967068639.Spec : Prop :=
  ∀ n, P12295352266967068639.a n = A274094 n

end A274094

/-! ## A274094.P9370433773988779137

`-A038608(round(sqrt(2*n)))`
-/

namespace A274094.P9370433773988779137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A038608 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A274094.P9370433773988779137

namespace A274094

/-- `-A038608(round(sqrt(2*n)))` -/
def P9370433773988779137.Spec : Prop :=
  ∀ n, P9370433773988779137.a n = A274094 n

end A274094

/-! ## A274094.P11168467347808024113

`A010816(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A274094.P11168467347808024113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010816 (n - 1) + a (n - 1)

end

end A274094.P11168467347808024113

namespace A274094

/-- `A010816(n-1)+a(n-1)` -/
def P11168467347808024113.Spec : Prop :=
  ∀ n, P11168467347808024113.a n = A274094 n

end A274094

/-! ## A274094.P13236933449140521595

`A057428(n)*A274093(n)`
-/

namespace A274094.P13236933449140521595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A274093 n

end

end A274094.P13236933449140521595

namespace A274094

/-- `A057428(n)*A274093(n)` -/
def P13236933449140521595.Spec : Prop :=
  ∀ n, P13236933449140521595.a n = A274094 n

end A274094

/-! ## A274094.P3493066895884874412

`∑[A010816(n)]-A010816(n)`
-/

namespace A274094.P3493066895884874412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010816 n

end

end A274094.P3493066895884874412

namespace A274094

/-- `∑[A010816(n)]-A010816(n)` -/
def P3493066895884874412.Spec : Prop :=
  ∀ n, P3493066895884874412.a n = A274094 n

end A274094

/-! ## A274094.P8722414068216027011

`A153881(n+1)*A274093(n)`
-/

namespace A274094.P8722414068216027011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A274093 n

end

end A274094.P8722414068216027011

namespace A274094

/-- `A153881(n+1)*A274093(n)` -/
def P8722414068216027011.Spec : Prop :=
  ∀ n, P8722414068216027011.a n = A274094 n

end A274094

/-! ## A274094.P6719980475993939482

`1-(A274093(n)+A033999(n)²)`
-/

namespace A274094.P6719980475993939482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A274093 n + A033999 n ^ 2)

end

end A274094.P6719980475993939482

namespace A274094

/-- `1-(A274093(n)+A033999(n)²)` -/
def P6719980475993939482.Spec : Prop :=
  ∀ n, P6719980475993939482.a n = A274094 n

end A274094

/-! ## A274094.P4479595936155756361

`1-(A274093(n)+A057077(n)²)`
-/

namespace A274094.P4479595936155756361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A274093 n + A057077 n ^ 2)

end

end A274094.P4479595936155756361

namespace A274094

/-- `1-(A274093(n)+A057077(n)²)` -/
def P4479595936155756361.Spec : Prop :=
  ∀ n, P4479595936155756361.a n = A274094 n

end A274094

/-! ## A274094.P14213437706861592482

`Δ[A274093(n)]-A274093(n+1)`
-/

namespace A274094.P14213437706861592482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A274093 (n + 1)

end

end A274094.P14213437706861592482

namespace A274094

/-- `Δ[A274093(n)]-A274093(n+1)` -/
def P14213437706861592482.Spec : Prop :=
  ∀ n, P14213437706861592482.a n = A274094 n

theorem P14213437706861592482.correct : P14213437706861592482.Spec := by
  intro n
  simp only [A274094, Nat.add_sub_cancel, A274094.P14213437706861592482.f1, A274094.P14213437706861592482.a, A274094.P5521899497297854027.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A274094

/-! ## A274094.P13393823669374014299

`char[A103658(2*(n+2))]-A274093(n)`
-/

namespace A274094.P13393823669374014299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103658 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A274093 n

end

end A274094.P13393823669374014299

namespace A274094

/-- `char[A103658(2*(n+2))]-A274093(n)` -/
def P13393823669374014299.Spec : Prop :=
  ∀ n, P13393823669374014299.a n = A274094 n

end A274094

/-! ## A274094.P17810154328029154739

`A062157(A123578(n))*A123578(n)`
-/

namespace A274094.P17810154328029154739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A123578 n).toNat * A123578 n

end

end A274094.P17810154328029154739

namespace A274094

/-- `A062157(A123578(n))*A123578(n)` -/
def P17810154328029154739.Spec : Prop :=
  ∀ n, P17810154328029154739.a n = A274094 n

end A274094

/-! ## A274094.P9631477604162489152

`A033999(A109613(n))*A274093(n)`
-/

namespace A274094.P9631477604162489152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A109613 n).toNat * A274093 n

end

end A274094.P9631477604162489152

namespace A274094

/-- `A033999(A109613(n))*A274093(n)` -/
def P9631477604162489152.Spec : Prop :=
  ∀ n, P9631477604162489152.a n = A274094 n

end A274094

/-! ## A274094.P14763504116818525369

`A033999(A123578(n)+1)*A123578(n)`
-/

namespace A274094.P14763504116818525369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A123578 n + 1).toNat * A123578 n

end

end A274094.P14763504116818525369

namespace A274094

/-- `A033999(A123578(n)+1)*A123578(n)` -/
def P14763504116818525369.Spec : Prop :=
  ∀ n, P14763504116818525369.a n = A274094 n

end A274094

/-! ## A274094.P3013405122090108957

`A105812(A123578(n)+2)*A123578(n)`
-/

namespace A274094.P3013405122090108957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A123578 n + 2).toNat * A123578 n

end

end A274094.P3013405122090108957

namespace A274094

/-- `A105812(A123578(n)+2)*A123578(n)` -/
def P3013405122090108957.Spec : Prop :=
  ∀ n, P3013405122090108957.a n = A274094 n

end A274094

/-! ## A274094.P14932889963399797552

`abs(A000096(n)-A274093(n))-A000096(n)`
-/

namespace A274094.P14932889963399797552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000096 n - A274093 n| - A000096 n

end

end A274094.P14932889963399797552

namespace A274094

/-- `abs(A000096(n)-A274093(n))-A000096(n)` -/
def P14932889963399797552.Spec : Prop :=
  ∀ n, P14932889963399797552.a n = A274094 n

end A274094

/-! ## A274094.P16118968630083201095

`abs(A000124(n)-A274093(n))-A000124(n)`
-/

namespace A274094.P16118968630083201095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000124 n - A274093 n| - A000124 n

end

end A274094.P16118968630083201095

namespace A274094

/-- `abs(A000124(n)-A274093(n))-A000124(n)` -/
def P16118968630083201095.Spec : Prop :=
  ∀ n, P16118968630083201095.a n = A274094 n

end A274094

/-! ## A274094.P13607168172763720874

`A274093(n)/(n-A038722(A038722(n+1)))`
-/

namespace A274094.P13607168172763720874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274093 n : ℚ) / ((n : ℤ) - A038722 (A038722 (n + 1)).toNat : ℚ)

end

end A274094.P13607168172763720874

namespace A274094

/-- `A274093(n)/(n-A038722(A038722(n+1)))` -/
def P13607168172763720874.Spec : Prop :=
  ∀ n, P13607168172763720874.a n = (A274094 n : ℚ)

end A274094

/-! ## A274094.P1805746841573817212

`A274093(n)/A057428(n+1)`
-/

namespace A274094.P1805746841573817212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274093 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A274094.P1805746841573817212

namespace A274094

/-- `A274093(n)/A057428(n+1)` -/
def P1805746841573817212.Spec : Prop :=
  ∀ n, P1805746841573817212.a n = (A274094 n : ℚ)

theorem P1805746841573817212.correct : P1805746841573817212.Spec := by
  intro n
  simp only [A274094, Nat.add_sub_cancel, A274094.P1805746841573817212.a, A274094.P5521899497297854027.a, A057428, A057428.P2999489532230392221.a, A274093, A274093.P3378925896752465146.a, A010816, A010816.P9990213171636561186.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A198954, A198954.P2690440958221023727.a, A374157, A374157.P5715907988378515051.a, A053187, A053187.P5980113714214141663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A274094

/-! ## A274094.P9278851023259747946

`A004526(Δ[A004526(n)])-A274093(n)`
-/

namespace A274094.P9278851023259747946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat - A274093 n

end

end A274094.P9278851023259747946

namespace A274094

/-- `A004526(Δ[A004526(n)])-A274093(n)` -/
def P9278851023259747946.Spec : Prop :=
  ∀ n, P9278851023259747946.a n = A274094 n

end A274094

/-!
# A274095: Nearest integer to n*sin(sqrt(n)).

The programs for A274095, there is no canonical definition to state claims against.
-/

/-! ## A274095.P8927367351191743483

`A274096(2*n)`
-/

namespace A274095.P8927367351191743483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274096 (2 * n)

end

end A274095.P8927367351191743483

/-! ## A274095.P3906313484061176139

`A274096(A004277(n))%A004277(n)`
-/

namespace A274095.P3906313484061176139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274096 (A004277 n).toNat) (A004277 n)

end

end A274095.P3906313484061176139

/-! ## A274095.P16944716415384850693

`A274096(A005843(n))%A022144(n)`
-/

namespace A274095.P16944716415384850693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274096 (A005843 n).toNat) (A022144 n)

end

end A274095.P16944716415384850693

/-! ## A274095.P4366323373791389717

`A274096(A004277(n))+A000007(n+3)`
-/

namespace A274095.P4366323373791389717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274096 (A004277 n).toNat + A000007 (n + 3)

end

end A274095.P4366323373791389717

/-! ## A274095.P16626841481864471189

`A274096(A005843(n))+A000007(n+3)`
-/

namespace A274095.P16626841481864471189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274096 (A005843 n).toNat + A000007 (n + 3)

end

end A274095.P16626841481864471189

/-! ## A274095.P11891570553736313420

`A274097(3*n)`
-/

namespace A274095.P11891570553736313420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274097 (3 * n)

end

end A274095.P11891570553736313420

/-! ## A274095.P7616922717034967148

`A274097(n+n+n)%(n+1)`
-/

namespace A274095.P7616922717034967148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274097 (n + n + n)) (n + 1 : ℤ)

end

end A274095.P7616922717034967148

/-! ## A274095.P3758700353122496744

`-A274097(Δ[A005449(n)])`
-/

namespace A274095.P3758700353122496744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274097 (f1 (n + 1) - f1 n).toNat

end

end A274095.P3758700353122496744

/-! ## A274095.P11942552361253948924

`-A274097(record[A330396(n)])`
-/

namespace A274095.P11942552361253948924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274097 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274095.P11942552361253948924

/-! ## A274095.P12878057831386997142

`A274096(n+n)^A007318(∑[n])`
-/

namespace A274095.P12878057831386997142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274096 (n + n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A274095.P12878057831386997142

/-!
# A274096: a(n) = nearest integer to k*sin(sqrt(k)+j*Pi/2) where n = 2*k+j, 0<=j<=1.

The programs for A274096, there is no canonical definition to state claims against.
-/

/-! ## A274096.P17551670584484104784

`A274097(comp[3*n-1])`
-/

namespace A274096.P17551670584484104784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274097 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A274096.P17551670584484104784

/-! ## A274096.P13252285176191485679

`A000034(2*(n+2))*A274097(A123108(3*n))`
-/

namespace A274096.P13252285176191485679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 2)) * A274097 (A123108 (3 * n)).toNat

end

end A274096.P13252285176191485679

/-! ## A274096.P16141735028359126002

`A274101(lt[A063787(n+1), A063787(2*n+5)])`
-/

namespace A274096.P16141735028359126002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274096.P16141735028359126002

/-! ## A274096.P8170007918543501964

`A274101(lt[A237769(n+1), A029838(3*n+1)])`
-/

namespace A274096.P8170007918543501964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A274096.P8170007918543501964

/-! ## A274096.P12946153464923848241

`A274101(lt[A246815(3*n+2), 1])`
-/

namespace A274096.P12946153464923848241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246815 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A274096.P12946153464923848241

/-! ## A274096.P5114509902866617708

`A274101(record[A002262(2*n)-A002262(2*n+1)])`
-/

namespace A274096.P5114509902866617708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * n) - A002262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274096.P5114509902866617708

/-!
# A274097: a(n) = nearest integer to k*sin(sqrt(k)+j*Pi/2) where n = 3*k+j, 0<=j

The programs for A274097, there is no canonical definition to state claims against.
-/

/-! ## A274097.P2052172414171511667

`A274101(A065033(A008576(n)-1))`
-/

namespace A274097.P2052172414171511667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (A065033 (A008576 n - 1).toNat).toNat

end

end A274097.P2052172414171511667

/-! ## A274097.P260144556757068139

`A274101(A002264(4*n))`
-/

namespace A274097.P260144556757068139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (A002264 (4 * n)).toNat

end

end A274097.P260144556757068139

/-! ## A274097.P2844682514473127185

`A274101(lt[0, A034178(3*n+1)])`
-/

namespace A274097.P2844682514473127185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A274097.P2844682514473127185

/-! ## A274097.P12961602331115546061

`A274101(record[A302405(A056239(n+1))])`
-/

namespace A274097.P12961602331115546061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A056239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274097.P12961602331115546061

/-! ## A274097.P10756351403120584159

`A274101(eq[A090192(n), A097331(n)])`
-/

namespace A274097.P10756351403120584159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A274097.P10756351403120584159

/-! ## A274097.P12445163965766213121

`A274101(record[A002262(2*n)])`
-/

namespace A274097.P12445163965766213121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A274097.P12445163965766213121

/-!
# A274098: Number of ways the most probable score sequence happens in an n-person round-robin tournament.

The programs for A274098, there is no canonical definition to state claims against.
-/

/-! ## A274098.P7935033726615833686

`A000010(A227363(n)+A125813(n+1))`
-/

namespace A274098.P7935033726615833686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A227363 n + A125813 (n + 1)).toNat

end

end A274098.P7935033726615833686

/-! ## A274098.P1540426776006526334

`A000010(A210575(n)+A051759(n+2))`
-/

namespace A274098.P1540426776006526334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A210575 n + A051759 (n + 2)).toNat

end

end A274098.P1540426776006526334

/-!
# A274099: Number of partitions of n*(n-1)/2 into at most four parts.

The programs for A274099, the canonical program `A274099.P13893247273971540902` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A274099 has offset 1).

The definition of A274099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A274099.P13893247273971540902

`A001400(∑[n])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A274099

/-- `A001400(∑[n])` -/
def P13893247273971540902.Spec : Prop :=
  ∀ n, P13893247273971540902.a n = A274099 (n + 1)

theorem P13893247273971540902.correct : P13893247273971540902.Spec := by
  intro n
  simp only [A274099, Nat.add_sub_cancel]

end A274099

/-! ## A274099.P392141742454531708

`A026810(∑[n]+4)`
-/

namespace A274099.P392141742454531708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A274099.P392141742454531708

namespace A274099

/-- `A026810(∑[n]+4)` -/
def P392141742454531708.Spec : Prop :=
  ∀ n, P392141742454531708.a n = A274099 (n + 1)

theorem P392141742454531708.correct : P392141742454531708.Spec := by
  intro n
  simp only [A274099, Nat.add_sub_cancel, A274099.P392141742454531708.f1, A274099.P392141742454531708.a, A274099.P13893247273971540902.f1, A274099.P13893247273971540902.a, A001400, A001400.P17105359062635275807.a, A026810, A026810.P8500249767737753929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A274099

/-! ## A274099.P14908557165356190245

`and(-1, A001400(C(n+1, 2)))`
-/

namespace A274099.P14908557165356190245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001400 (Nat.choose (n + 1) 2))

end

end A274099.P14908557165356190245

namespace A274099

/-- `and(-1, A001400(C(n+1, 2)))` -/
def P14908557165356190245.Spec : Prop :=
  ∀ n, P14908557165356190245.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P13459854608639714143

`and(-1, A001400((n²+n)/2))`
-/

namespace A274099.P13459854608639714143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001400 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A274099.P13459854608639714143

namespace A274099

/-- `and(-1, A001400((n²+n)/2))` -/
def P13459854608639714143.Spec : Prop :=
  ∀ n, P13459854608639714143.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P18366764068228548144

`or(char[1], A001400(A000217(n)))`
-/

namespace A274099.P18366764068228548144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001400 (A000217 n).toNat)

end

end A274099.P18366764068228548144

namespace A274099

/-- `or(char[1], A001400(A000217(n)))` -/
def P18366764068228548144.Spec : Prop :=
  ∀ n, P18366764068228548144.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P7978218796477797429

`or(char[1], A026810(A145018(n+1)))`
-/

namespace A274099.P7978218796477797429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026810 (A145018 (n + 1)).toNat)

end

end A274099.P7978218796477797429

namespace A274099

/-- `or(char[1], A026810(A145018(n+1)))` -/
def P7978218796477797429.Spec : Prop :=
  ∀ n, P7978218796477797429.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P3970672802251680952

`A001400(A000217(n))%A041324(n)`
-/

namespace A274099.P3970672802251680952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001400 (A000217 n).toNat) (A041324 n)

end

end A274099.P3970672802251680952

namespace A274099

/-- `A001400(A000217(n))%A041324(n)` -/
def P3970672802251680952.Spec : Prop :=
  ∀ n, P3970672802251680952.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P3256973898979419050

`A274233(n+1)+A026810(A000217(n))`
-/

namespace A274099.P3256973898979419050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274233 (n + 1) + A026810 (A000217 n).toNat

end

end A274099.P3256973898979419050

namespace A274099

/-- `A274233(n+1)+A026810(A000217(n))` -/
def P3256973898979419050.Spec : Prop :=
  ∀ n, P3256973898979419050.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P17114494829510235

`A026810(A145018(n+1))%A017104(n)`
-/

namespace A274099.P17114494829510235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026810 (A145018 (n + 1)).toNat) (A017104 n)

end

end A274099.P17114494829510235

namespace A274099

/-- `A026810(A145018(n+1))%A017104(n)` -/
def P17114494829510235.Spec : Prop :=
  ∀ n, P17114494829510235.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P1217420587281133134

`gcd(A000038(n), A026810(A145018(n+1)))`
-/

namespace A274099.P1217420587281133134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026810 (A145018 (n + 1)).toNat)

end

end A274099.P1217420587281133134

namespace A274099

/-- `gcd(A000038(n), A026810(A145018(n+1)))` -/
def P1217420587281133134.Spec : Prop :=
  ∀ n, (P1217420587281133134.a n : ℤ) = A274099 (n + 1)

end A274099

/-! ## A274099.P9496475177274102478

`lcm(A026810(A145018(n+1)), A160357(n))`
-/

namespace A274099.P9496475177274102478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026810 (A145018 (n + 1)).toNat) (A160357 n)

end

end A274099.P9496475177274102478

namespace A274099

/-- `lcm(A026810(A145018(n+1)), A160357(n))` -/
def P9496475177274102478.Spec : Prop :=
  ∀ n, (P9496475177274102478.a n : ℤ) = A274099 (n + 1)

end A274099

/-! ## A274099.P5418209551423672152

`A007318(C(2, n))*A001400(A000217(n))`
-/

namespace A274099.P5418209551423672152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A001400 (A000217 n).toNat

end

end A274099.P5418209551423672152

namespace A274099

/-- `A007318(C(2, n))*A001400(A000217(n))` -/
def P5418209551423672152.Spec : Prop :=
  ∀ n, P5418209551423672152.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P327528559955908812

`A001400(A000217(n))^A000108(C(2, n))`
-/

namespace A274099.P327528559955908812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001400 (A000217 n).toNat : ℚ) ^ (A000108 (Nat.choose 2 n) : ℤ)

end

end A274099.P327528559955908812

namespace A274099

/-- `A001400(A000217(n))^A000108(C(2, n))` -/
def P327528559955908812.Spec : Prop :=
  ∀ n, P327528559955908812.a n = (A274099 (n + 1) : ℚ)

end A274099

/-! ## A274099.P1282071037395860059

`A001400(A000217(n))+A008683(8*(n+1))`
-/

namespace A274099.P1282071037395860059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (A000217 n).toNat + A008683 (8 * (n + 1))

end

end A274099.P1282071037395860059

namespace A274099

/-- `A001400(A000217(n))+A008683(8*(n+1))` -/
def P1282071037395860059.Spec : Prop :=
  ∀ n, P1282071037395860059.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P1678366471353246420

`A001400(A000217(n))^A014963(4*n+2)`
-/

namespace A274099.P1678366471353246420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001400 (A000217 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A274099.P1678366471353246420

namespace A274099

/-- `A001400(A000217(n))^A014963(4*n+2)` -/
def P1678366471353246420.Spec : Prop :=
  ∀ n, P1678366471353246420.a n = (A274099 (n + 1) : ℚ)

end A274099

/-! ## A274099.P1885341254030938641

`A007318(C(2, n))*A026810(A145018(n+1))`
-/

namespace A274099.P1885341254030938641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A026810 (A145018 (n + 1)).toNat

end

end A274099.P1885341254030938641

namespace A274099

/-- `A007318(C(2, n))*A026810(A145018(n+1))` -/
def P1885341254030938641.Spec : Prop :=
  ∀ n, P1885341254030938641.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P6465471282563043033

`A000040(n+2)%2*A026810(A145018(n+1))`
-/

namespace A274099.P6465471282563043033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A026810 (A145018 (n + 1)).toNat

end

end A274099.P6465471282563043033

namespace A274099

/-- `A000040(n+2)%2*A026810(A145018(n+1))` -/
def P6465471282563043033.Spec : Prop :=
  ∀ n, P6465471282563043033.a n = A274099 (n + 1)

end A274099

/-! ## A274099.P4256699503270352197

`A029138(∑[2*n])`
-/

namespace A274099.P4256699503270352197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274099.P4256699503270352197

namespace A274099

/-- `A029138(∑[2*n])` -/
def P4256699503270352197.Spec : Prop :=
  ∀ n, P4256699503270352197.a n = A274099 (n + 1)

end A274099

