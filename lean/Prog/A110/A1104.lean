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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A110402: a(1) = 11; for n >= 1, a(n+1) is obtained by replacing the k-th digit of a(n) with the sum of all the less significant digits starting from the k-th digit.

The programs for A110402, there is no canonical definition to state claims against.
-/

/-! ## A110402.P1797037877725656213

`A017281(∑[11^A324095(n+1)])`
-/

namespace A110402.P1797037877725656213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A324095 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A110402.P1797037877725656213

/-! ## A110402.P17766034265306885738

`A244394(n+1)-record[A137579(n)]`
-/

namespace A110402.P17766034265306885738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244394 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110402.P17766034265306885738

/-! ## A110402.P2172091050240060343

`A017281(∑[C(A002113(n+1), n)])`
-/

namespace A110402.P2172091050240060343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002113 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110402.P2172091050240060343

/-! ## A110402.P8278110099811279377

`10*A061511(A061497(n+1))+1`
-/

namespace A110402.P8278110099811279377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A061511 (A061497 (n + 1)).toNat + 1

end

end A110402.P8278110099811279377

/-! ## A110402.P1011625398111382423

`A017281(C(A216556(n), n^(n%2)))`
-/

namespace A110402.P1011625398111382423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (Nat.choose (A216556 n).toNat (n ^ (n % 2)))

end

end A110402.P1011625398111382423

/-!
# A110403: To get a(m), replace each digit of a(m-1) with the sum of all digits to the left of that digit.

The programs for A110403, there is no canonical definition to state claims against.
-/

/-! ## A110403.P957185644493402074

`A073053(A309863(n))+A051022(n)`
-/

namespace A110403.P957185644493402074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 (A309863 n).toNat + A051022 n

end

end A110403.P957185644493402074

/-! ## A110403.P3484813922623830849

`A261920(A115205(n))+A101337(n+1)`
-/

namespace A110403.P3484813922623830849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261920 (A115205 n).toNat + A101337 (n + 1)

end

end A110403.P3484813922623830849

/-! ## A110403.P11686250747421905714

`A162672(A216556(n)+A172535(n+1))`
-/

namespace A110403.P11686250747421905714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A216556 n + A172535 (n + 1)).toNat

end

end A110403.P11686250747421905714

/-! ## A110403.P17030908407250952014

`A261920(A309863(n))+A101337(n+1)`
-/

namespace A110403.P17030908407250952014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261920 (A309863 n).toNat + A101337 (n + 1)

end

end A110403.P17030908407250952014

/-! ## A110403.P3592465658061195040

`A162672(∑[A353888(n+1)^A324095(n+1)])`
-/

namespace A110403.P3592465658061195040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353888 (n + 1) : ℚ) ^ (A324095 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A110403.P3592465658061195040

/-!
# A110404: Least multiple of n which is a repeated reverse concatenation of digits of n where n == 1, 3, 7 or 9 (mod 10).

The programs for A110404, there is no canonical definition to state claims against.
-/

/-! ## A110404.P17680343644513662213

`A045572(n+1)*A110405(n)`
-/

namespace A110404.P17680343644513662213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1) * A110405 n

end

end A110404.P17680343644513662213

/-!
# A110405: A110404(k)/k where k is the corresponding number == 1,3,7 or 9 (mod 10).

The programs for A110405, there is no canonical definition to state claims against.
-/

/-! ## A110405.P3611264999910872001

`A110404(n+1)/A045572(n+1)`
-/

namespace A110405.P3611264999910872001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110404 (n + 1) : ℚ) / (A045572 (n + 1) : ℚ)

end

end A110405.P3611264999910872001

/-!
# A110407: Integers with mutual residues -2.

The programs for A110407, the canonical program `A110407.P10728570149993195145` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110407 has offset 1).

The definition of A110407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110407.P10728570149993195145

`a(n-1)²+2*a(n-1)-2` with `a(0)=3, a(1)=5, a(2)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110407

/-- `a(n-1)²+2*a(n-1)-2` -/
def P10728570149993195145.Spec : Prop :=
  ∀ n, P10728570149993195145.a n = A110407 (n + 1)

theorem P10728570149993195145.correct : P10728570149993195145.Spec := by
  intro n
  simp only [A110407, Nat.add_sub_cancel]

end A110407

/-! ## A110407.P2522897796560578649

`record[(a(n-1)+1)²-3]` with `a(0)=3, a(1)=5, a(2)=3`
-/

namespace A110407.P2522897796560578649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 3] fun n f1 =>
  (f1 (n - 1) + 1) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110407.P2522897796560578649

namespace A110407

/-- `record[(a(n-1)+1)²-3]` -/
def P2522897796560578649.Spec : Prop :=
  ∀ n, P2522897796560578649.a n = A110407 (n + 1)

end A110407

/-! ## A110407.P16763607794801258325

`record[xor(1, -a(n-1))²-3]` with `a(0)=3, a(1)=5, a(2)=3`
-/

namespace A110407.P16763607794801258325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 3] fun n f1 =>
  Int.xor 1 (-f1 (n - 1)) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110407.P16763607794801258325

namespace A110407

/-- `record[xor(1, -a(n-1))²-3]` -/
def P16763607794801258325.Spec : Prop :=
  ∀ n, P16763607794801258325.a n = A110407 (n + 1)

end A110407

/-! ## A110407.P8989088901042926744

`record[(a(n-1)+1)^(4/2)-3]` with `a(0)=3, a(1)=5, a(2)=3`
-/

namespace A110407.P8989088901042926744
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3, 5, 3] fun n f1 =>
  (f1 (n - 1) + 1) ^ ((4 : ℚ) / 2 : ℝ) - 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110407.P8989088901042926744

namespace A110407

/-- `record[(a(n-1)+1)^(4/2)-3]` -/
def P8989088901042926744.Spec : Prop :=
  ∀ n, P8989088901042926744.a n = (A110407 (n + 1) : ℝ)

end A110407

/-! ## A110407.P10762672101004028401

`record[(a(n-1)+2)*a(n-1)-2]` with `a(0)=3, a(1)=5, a(2)=3`
-/

namespace A110407.P10762672101004028401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 3] fun n f1 =>
  (f1 (n - 1) + 2) * f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110407.P10762672101004028401

namespace A110407

/-- `record[(a(n-1)+2)*a(n-1)-2]` -/
def P10762672101004028401.Spec : Prop :=
  ∀ n, P10762672101004028401.a n = A110407 (n + 1)

end A110407

/-!
# A110411: Smallest prime beginning with the n-th composite number.

The programs for A110411, there is no canonical definition to state claims against.
-/

/-! ## A110411.P16871986261600269546

`A018800(Δ[A053767(n)])`
-/

namespace A110411.P16871986261600269546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (f1 (n + 1) - f1 n).toNat

end

end A110411.P16871986261600269546

/-! ## A110411.P11786197427908780857

`A258337(comp[A060442(n)])`
-/

namespace A110411.P11786197427908780857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258337 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A110411.P11786197427908780857

/-! ## A110411.P13129956084619478196

`A030665(comp[A327968(n)])`
-/

namespace A110411.P13129956084619478196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327968 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A110411.P13129956084619478196

/-! ## A110411.P17557929525485017796

`A018800(A002808(n+1))`
-/

namespace A110411.P17557929525485017796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A002808 (n + 1)).toNat

end

end A110411.P17557929525485017796

/-! ## A110411.P3600632627727001843

`A018800(A018252(n+2))`
-/

namespace A110411.P3600632627727001843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A018252 (n + 2)).toNat

end

end A110411.P3600632627727001843

/-!
# A110412: Sum_{d<n is a divisor of n} tau(n-d).

The programs for A110412, the canonical program `A110412.P8100209294395193234` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110412 has offset 1).

The definition of A110412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110412.P8100209294395193234

`∑{d}[n+1, A032741(n+1-#%(n+1))]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110412

/-- `∑{d}[n+1, A032741(n+1-#%(n+1))]` -/
def P8100209294395193234.Spec : Prop :=
  ∀ n, P8100209294395193234.a n = A110412 (n + 1)

theorem P8100209294395193234.correct : P8100209294395193234.Spec := by
  intro n
  simp only [A110412, Nat.add_sub_cancel]

end A110412

/-! ## A110412.P5763394534097311340

`A032741(n+1)+∑{d}[n+1, A032741(n+1-#)]`
-/

namespace A110412.P5763394534097311340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A032741 (n + 1 - d)

end

end A110412.P5763394534097311340

namespace A110412

/-- `A032741(n+1)+∑{d}[n+1, A032741(n+1-#)]` -/
def P5763394534097311340.Spec : Prop :=
  ∀ n, P5763394534097311340.a n = A110412 (n + 1)

end A110412

/-!
# A110414: n! concatenated with n divided by n.

The programs for A110414, there is no canonical definition to state claims against.
-/

/-! ## A110414.P4006388181753436889

`(A061601(n+1)+2+n)*n!+1`
-/

namespace A110414.P4006388181753436889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A061601 (n + 1) + 2 + (n : ℤ)) * (Nat.factorial n : ℤ) + 1

end

end A110414.P4006388181753436889

/-! ## A110414.P16783176327651340442

`exp(∑{p}[10*n!+1, log(#)])`
-/

namespace A110414.P16783176327651340442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.factorial n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ))

end

end A110414.P16783176327651340442

/-!
# A110415: a(n) = n concatenated with n! divided by n.

The programs for A110415, there is no canonical definition to state claims against.
-/

/-! ## A110415.P16820565470586644516

`A011557(A034886(n+1))+n!`
-/

namespace A110415.P16820565470586644516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A034886 (n + 1)).toNat + (Nat.factorial n : ℤ)

end

end A110415.P16820565470586644516

/-! ## A110415.P7523900598443553545

`A011557(A034886(n+1))+A000142(n)`
-/

namespace A110415.P7523900598443553545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A034886 (n + 1)).toNat + A000142 n

end

end A110415.P7523900598443553545

/-! ## A110415.P12276865453688036871

`A284995(2*(n+1))+A011557(A034886(n+1))`
-/

namespace A110415.P12276865453688036871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284995 (2 * (n + 1)) + A011557 (A034886 (n + 1)).toNat

end

end A110415.P12276865453688036871

/-! ## A110415.P9051644067756207625

`A130534(A000217(n))+A011557(A034886(n+1))`
-/

namespace A110415.P9051644067756207625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A000217 n).toNat + A011557 (A034886 (n + 1)).toNat

end

end A110415.P9051644067756207625

/-! ## A110415.P3547506023784295269

`A226874(A000096(n))+A011557(A034886(n+1))`
-/

namespace A110415.P3547506023784295269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (A000096 n).toNat + A011557 (A034886 (n + 1)).toNat

end

end A110415.P3547506023784295269

/-!
# A110417: For each k from 0 through n-1, take the largest value of C(n,r) that divides k! and sum k! / C(n,r) for all cases where C(n,r)>1.

The programs for A110417, there is no canonical definition to state claims against.
-/

/-! ## A110417.P11775502471976491045

`A319973(A120385(n!))`
-/

namespace A110417.P11775502471976491045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319973 (A120385 (Nat.factorial n)).toNat

end

end A110417.P11775502471976491045

/-! ## A110417.P9322745280468497044

`Δ[A126257(A224479(n))]`
-/

namespace A110417.P9322745280468497044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A224479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110417.P9322745280468497044

/-! ## A110417.P3515500521642097524

`Δ[A206580(∏[A277100(n)])]`
-/

namespace A110417.P3515500521642097524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206580 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110417.P3515500521642097524

/-! ## A110417.P10946236071575242281

`Δ[A008620(A008718(n)!²)]`
-/

namespace A110417.P10946236071575242281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Nat.factorial (A008718 n).toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110417.P10946236071575242281

/-!
# A110418: Least number beginning with (prime(n)-1)! == 0 (mod prime(n)).

The programs for A110418, there is no canonical definition to state claims against.
-/

/-! ## A110418.P17761070604768120988

`p?[A071669(n)]*A110420(n+1)`
-/

namespace A110418.P17761070604768120988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A110420 (n + 1)

end

end A110418.P17761070604768120988

/-! ## A110418.P9296362071633966853

`p?[A090223(n)]*A110420(n+1)`
-/

namespace A110418.P9296362071633966853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A110420 (n + 1)

end

end A110418.P9296362071633966853

/-! ## A110418.P4289580571992328439

`A000040(n+1)*A110420(n+1)`
-/

namespace A110418.P4289580571992328439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A110420 (n + 1)

end

end A110418.P4289580571992328439

/-! ## A110418.P3726091772911535325

`A030475(n+1)*A110420(n+1)`
-/

namespace A110418.P3726091772911535325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1) * A110420 (n + 1)

end

end A110418.P3726091772911535325

/-! ## A110418.P12293596303054164206

`record[A020639(n+2)]*A110420(n+1)`
-/

namespace A110418.P12293596303054164206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A110420 (n + 1)

end

end A110418.P12293596303054164206

/-!
# A110419: Least number k such that (prime(n)-1)! concatenated with k == 0 (mod prime(n)).

The programs for A110419, there is no canonical definition to state claims against.
-/

/-! ## A110419.P17898892254920659713

`A109631(A000040(n+1))%(n²+1)`
-/

namespace A110419.P17898892254920659713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109631 (A000040 (n + 1)).toNat) (n ^ 2 + 1 : ℤ)

end

end A110419.P17898892254920659713

/-! ## A110419.P1884233891540828428

`A109631(record[A093074(n+1)])%A000051(n)`
-/

namespace A110419.P1884233891540828428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000051 n)

end

end A110419.P1884233891540828428

/-! ## A110419.P2794876122282723960

`A109631(record[A006530(n+2)])%A000051(n)`
-/

namespace A110419.P2794876122282723960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A000051 n)

end

end A110419.P2794876122282723960

/-!
# A110420: A110418(n)/prime(n).

The programs for A110420, there is no canonical definition to state claims against.
-/

/-! ## A110420.P10253545966446146466

`A110418(n+1)/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110420.P10253545966446146466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110418 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A110420.P10253545966446146466

/-! ## A110420.P9745077776615680679

`A110418(n+1)/p?[A056847(n)]`
-/

namespace A110420.P9745077776615680679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110418 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A110420.P9745077776615680679

/-! ## A110420.P273934191274576807

`A110418(n+1)/A030475(n+1)`
-/

namespace A110420.P273934191274576807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110418 (n + 1) : ℚ) / (A030475 (n + 1) : ℚ)

end

end A110420.P273934191274576807

/-! ## A110420.P3781101515655616999

`A110418(n+1)/A073350(n+1)`
-/

namespace A110420.P3781101515655616999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110418 (n + 1) : ℚ) / (A073350 (n + 1) : ℚ)

end

end A110420.P3781101515655616999

/-! ## A110420.P17315166032545441780

`A110418(n+1)/record[p?[A065361(n)]]`
-/

namespace A110420.P17315166032545441780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110418 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A110420.P17315166032545441780

/-!
# A110422: a(n) = sum( (-1)^(r+1)*(n-r)*r, r = 1..floor(n/2) ).

The programs for A110422, the canonical program `A110422.P1696300358792728174` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110422 has offset 2).

The definition of A110422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110422.P1696300358792728174

`(n+1)*∑[n+1]%2-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110422

/-- `(n+1)*∑[n+1]%2-a(n-2)` -/
def P1696300358792728174.Spec : Prop :=
  ∀ n, P1696300358792728174.a n = A110422 (n + 2)

theorem P1696300358792728174.correct : P1696300358792728174.Spec := by
  intro n
  simp only [A110422, Nat.add_sub_cancel]

end A110422

/-! ## A110422.P6878248710689499416

`∑[A009001(A004442(n))]*A008621(n)`
-/

namespace A110422.P6878248710689499416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008621 n

end

end A110422.P6878248710689499416

namespace A110422

/-- `∑[A009001(A004442(n))]*A008621(n)` -/
def P6878248710689499416.Spec : Prop :=
  ∀ n, P6878248710689499416.a n = A110422 (n + 2)

end A110422

/-! ## A110422.P9520146021705917793

`(A008610(A004443(n))-A008610(n))/2`
-/

namespace A110422.P9520146021705917793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008610 (A004443 n).toNat - A008610 n : ℚ) / 2

end

end A110422.P9520146021705917793

namespace A110422

/-- `(A008610(A004443(n))-A008610(n))/2` -/
def P9520146021705917793.Spec : Prop :=
  ∀ n, P9520146021705917793.a n = (A110422 (n + 2) : ℚ)

end A110422

/-! ## A110422.P3900869607444436380

`A001057(A008619(n))*A008619(A080412(n))`
-/

namespace A110422.P3900869607444436380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008619 n).toNat * A008619 (A080412 n).toNat

end

end A110422.P3900869607444436380

namespace A110422

/-- `A001057(A008619(n))*A008619(A080412(n))` -/
def P3900869607444436380.Spec : Prop :=
  ∀ n, P3900869607444436380.a n = A110422 (n + 2)

end A110422

/-! ## A110422.P14186655241816239560

`A295286(n+2)-A295287(n+2)`
-/

namespace A110422.P14186655241816239560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295286 (n + 2) - A295287 (n + 2)

end

end A110422.P14186655241816239560

namespace A110422

/-- `A295286(n+2)-A295287(n+2)` -/
def P14186655241816239560.Spec : Prop :=
  ∀ n, P14186655241816239560.a n = A110422 (n + 2)

end A110422

/-! ## A110422.P4422927532712198532

`A001057(A116966(n))*A008621(n)`
-/

namespace A110422.P4422927532712198532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A116966 n).toNat * A008621 n

end

end A110422.P4422927532712198532

namespace A110422

/-- `A001057(A116966(n))*A008621(n)` -/
def P4422927532712198532.Spec : Prop :=
  ∀ n, P4422927532712198532.a n = A110422 (n + 2)

end A110422

/-! ## A110422.P8213872436120044149

`A001057(A116966(n))*A008619(A004524(n))`
-/

namespace A110422.P8213872436120044149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A116966 n).toNat * A008619 (A004524 n).toNat

end

end A110422.P8213872436120044149

namespace A110422

/-- `A001057(A116966(n))*A008619(A004524(n))` -/
def P8213872436120044149.Spec : Prop :=
  ∀ n, P8213872436120044149.a n = A110422 (n + 2)

end A110422

/-! ## A110422.P3813245902583539672

`A001057(A116966(n))*A008619(A004526(n))`
-/

namespace A110422.P3813245902583539672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A116966 n).toNat * A008619 (A004526 n).toNat

end

end A110422.P3813245902583539672

namespace A110422

/-- `A001057(A116966(n))*A008619(A004526(n))` -/
def P3813245902583539672.Spec : Prop :=
  ∀ n, P3813245902583539672.a n = A110422 (n + 2)

end A110422

/-! ## A110422.P4938548314825415952

`A001057(A008619(n))*A065033(A116966(n))`
-/

namespace A110422.P4938548314825415952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008619 n).toNat * A065033 (A116966 n).toNat

end

end A110422.P4938548314825415952

namespace A110422

/-- `A001057(A008619(n))*A065033(A116966(n))` -/
def P4938548314825415952.Spec : Prop :=
  ∀ n, P4938548314825415952.a n = A110422 (n + 2)

end A110422

/-! ## A110422.P4204789221046447967

`Δ[A319702((n+1)*A106466(n)+1)]`
-/

namespace A110422.P4204789221046447967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 ((n + 1 : ℤ) * A106466 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110422.P4204789221046447967

namespace A110422

/-- `Δ[A319702((n+1)*A106466(n)+1)]` -/
def P4204789221046447967.Spec : Prop :=
  ∀ n, P4204789221046447967.a n = A110422 (n + 2)

end A110422

/-!
# A110423: a(n) = (n+1)(n+2)...(n+prime(k)) where prime(k) <= n < prime(k+1).

The programs for A110423, the canonical program `A110423.P17077668433318161995` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110423 has offset 2).

The definition of A110423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110423.P17077668433318161995

`(n+2+A007917(n+2))!/(n+2)!`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110423

/-- `(n+2+A007917(n+2))!/(n+2)!` -/
def P17077668433318161995.Spec : Prop :=
  ∀ n, P17077668433318161995.a n = (A110423 (n + 2) : ℚ)

end A110423

/-! ## A110423.P5417772232393464672

`A007917(n+2)*A110424(n+3)`
-/

namespace A110423.P5417772232393464672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) * A110424 (n + 3)

end

end A110423.P5417772232393464672

namespace A110423

/-- `A007917(n+2)*A110424(n+3)` -/
def P5417772232393464672.Spec : Prop :=
  ∀ n, P5417772232393464672.a n = A110423 (n + 2)

end A110423

/-! ## A110423.P6084748850007302349

`(A013635(n+3)-(n+3))*A110424(n+3)`
-/

namespace A110423.P6084748850007302349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013635 (n + 3) - (n + 3 : ℤ)) * A110424 (n + 3)

end

end A110423.P6084748850007302349

namespace A110423

/-- `(A013635(n+3)-(n+3))*A110424(n+3)` -/
def P6084748850007302349.Spec : Prop :=
  ∀ n, P6084748850007302349.a n = A110423 (n + 2)

end A110423

/-!
# A110424: A110423(n)/prime(k), where prime(k) pertains to A110423(n) given by (n+1)(n+2)...(n+prime(k)) where prime(k) < or = n < prime(k+1).

The programs for A110424, there is no canonical definition to state claims against.
-/

/-! ## A110424.P14855257155613572481

`A110423(n+2)/A007917(n+2)`
-/

namespace A110424.P14855257155613572481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110423 (n + 2) : ℚ) / (A007917 (n + 2) : ℚ)

end

end A110424.P14855257155613572481

/-! ## A110424.P13320226022232476650

`A110423(n+2)/(A013635(n+3)-(n+3))`
-/

namespace A110424.P13320226022232476650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110423 (n + 2) : ℚ) / (A013635 (n + 3) - (n + 3 : ℤ) : ℚ)

end

end A110424.P13320226022232476650

/-! ## A110424.P13351903105882653738

`A110423(n+2)/(n+3-A049711(n+3))`
-/

namespace A110424.P13351903105882653738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110423 (n + 2) : ℚ) / ((n + 3 : ℤ) - A049711 (n + 3) : ℚ)

end

end A110424.P13351903105882653738

/-! ## A110424.P1221806209032227996

`(n+3)*A110423(n+2)/A013637(n+3)`
-/

namespace A110424.P1221806209032227996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * A110423 (n + 2) : ℚ) / (A013637 (n + 3) : ℚ)

end

end A110424.P1221806209032227996

/-!
# A110425: The r-th term of the n-th row of the following array contains the sum of r successively decreasing integers beginning from n. 0<r<=n. e.g. the row corresponding to 4 contains 4, (3+2),{(1) +(0)+(-1)}, {(-2)+(-3)+(-4)+(-5)} ----> 4,5,0,-14 1 2 1 3 3 -3 4 5 0 -14 5 7 3 -10 -35 6 9 6 -6 -30 -69 ... Sequence contains the array by rows.

The programs for A110425, there is no canonical definition to state claims against.
-/

/-! ## A110425.P2945173782126997837

`A110427(1-C(∑[char[∑[n]]], 2)+n)+∑[∑[char[∑[n]]]²]%(n+1)`
-/

namespace A110425.P2945173782126997837
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110427 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat + (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) : ℕ) : ℤ)

end

end A110425.P2945173782126997837

/-! ## A110425.P7894525711200684302

`A003991(n+1)-A002411(A002262(n))`
-/

namespace A110425.P7894525711200684302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A002411 (A002262 n).toNat

end

end A110425.P7894525711200684302

/-! ## A110425.P16970967452288755541

`A075362(n+1)-A027480(A002262(n))`
-/

namespace A110425.P16970967452288755541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A027480 (A002262 n).toNat

end

end A110425.P16970967452288755541

/-! ## A110425.P9248637239360259062

`A141419(n+1)-A006002(A002262(n))`
-/

namespace A110425.P9248637239360259062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A006002 (A002262 n).toNat

end

end A110425.P9248637239360259062

/-! ## A110425.P12535835397447878296

`A003991(n+1)-A002411(A025668(n+1))`
-/

namespace A110425.P12535835397447878296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A002411 (A025668 (n + 1)).toNat

end

end A110425.P12535835397447878296

/-! ## A110425.P17431844690424500859

`A075362(n+1)-A027480(A025668(n+1))`
-/

namespace A110425.P17431844690424500859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A027480 (A025668 (n + 1)).toNat

end

end A110425.P17431844690424500859

/-! ## A110425.P7444701370535693400

`A141419(n+1)-A006002(A025668(n+1))`
-/

namespace A110425.P7444701370535693400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A006002 (A025668 (n + 1)).toNat

end

end A110425.P7444701370535693400

/-! ## A110425.P6636360626310381066

`A075362(n+1)-A135503(A002260(n+1))`
-/

namespace A110425.P6636360626310381066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A135503 (A002260 (n + 1)).toNat

end

end A110425.P6636360626310381066

/-! ## A110425.P13520375843458002453

`A003991(n+1)-A002411(A002260(n+1)-1)`
-/

namespace A110425.P13520375843458002453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A002411 (A002260 (n + 1) - 1).toNat

end

end A110425.P13520375843458002453

/-!
# A110426: The r-th term of the n-th row of the following array contains the sum of r successively decreasing integers beginning from n, 0 < r <= n (see Example).

The programs for A110426, the canonical program `A110426.P18281482205659725926` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110426 has offset 1).

The definition of A110426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110426.P8086782313452863267

`(n+1)*(n+2)*(2-(n-2)*(n+1))/8`
-/

namespace A110426.P8086782313452863267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * (2 - ((n : ℤ) - 2) * (n + 1 : ℤ)) : ℚ) / 8

end

end A110426.P8086782313452863267

namespace A110426

/-- `(n+1)*(n+2)*(2-(n-2)*(n+1))/8` -/
def P8086782313452863267.Spec : Prop :=
  ∀ n, P8086782313452863267.a n = (A110426 (n + 1) : ℚ)

theorem P8086782313452863267.correct : P8086782313452863267.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A110426, Nat.add_sub_cancel, A110426.P8086782313452863267.a, A110426.P18281482205659725926.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A110426, Nat.add_sub_cancel, A110426.P8086782313452863267.a, A110426.P18281482205659725926.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A110426

/-! ## A110426.P18281482205659725926

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=-5, a(4)=-30`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110426

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18281482205659725926.Spec : Prop :=
  ∀ n, P18281482205659725926.a n = A110426 (n + 1)

theorem P18281482205659725926.correct : P18281482205659725926.Spec := by
  intro n
  simp only [A110426, Nat.add_sub_cancel]

end A110426

/-! ## A110426.P13228537765284597481

`A000330(n+1)-A000914(n)`
-/

namespace A110426.P13228537765284597481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - A000914 n

end

end A110426.P13228537765284597481

namespace A110426

/-- `A000330(n+1)-A000914(n)` -/
def P13228537765284597481.Spec : Prop :=
  ∀ n, P13228537765284597481.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P5058181086702884231

`∑[∑[1-3*C(n, 2)]]`
-/

namespace A110426.P5058181086702884231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (3 * Nat.choose n 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110426.P5058181086702884231

namespace A110426

/-- `∑[∑[1-3*C(n, 2)]]` -/
def P5058181086702884231.Spec : Prop :=
  ∀ n, P5058181086702884231.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P11617692389815193486

`∑[n+1]-C(∑[n], 2)`
-/

namespace A110426.P11617692389815193486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

end

end A110426.P11617692389815193486

namespace A110426

/-- `∑[n+1]-C(∑[n], 2)` -/
def P11617692389815193486.Spec : Prop :=
  ∀ n, P11617692389815193486.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P15151972118623047859

`floor(∑[∑[∑[a(n-1)-3]]])` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A110426.P15151972118623047859
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110426.P15151972118623047859

namespace A110426

/-- `floor(∑[∑[∑[a(n-1)-3]]])` -/
def P15151972118623047859.Spec : Prop :=
  ∀ n, P15151972118623047859.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P5138068553356050883

`C(n+2, 2)-3*C(n+2, 4)`
-/

namespace A110426.P5138068553356050883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - (3 * Nat.choose (n + 2) 4 : ℤ)

end

end A110426.P5138068553356050883

namespace A110426

/-- `C(n+2, 2)-3*C(n+2, 4)` -/
def P5138068553356050883.Spec : Prop :=
  ∀ n, P5138068553356050883.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P10074610443252295784

`a(n-1)-(n-2)/2*(n+1)²` with `a(0)=1`
-/

namespace A110426.P10074610443252295784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((n : ℤ) - 2 : ℚ) / 2 * ((n + 1) ^ 2 : ℚ)

end

end A110426.P10074610443252295784

namespace A110426

/-- `a(n-1)-(n-2)/2*(n+1)²` -/
def P10074610443252295784.Spec : Prop :=
  ∀ n, P10074610443252295784.a n = (A110426 (n + 1) : ℚ)

end A110426

/-! ## A110426.P521558338719008315

`Δ[n²]-A086602(n)`
-/

namespace A110426.P521558338719008315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A086602 n

end

end A110426.P521558338719008315

namespace A110426

/-- `Δ[n²]-A086602(n)` -/
def P521558338719008315.Spec : Prop :=
  ∀ n, P521558338719008315.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P6387676262901634795

`(n+1)²-A002817(n)`
-/

namespace A110426.P6387676262901634795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A002817 n

end

end A110426.P6387676262901634795

namespace A110426

/-- `(n+1)²-A002817(n)` -/
def P6387676262901634795.Spec : Prop :=
  ∀ n, P6387676262901634795.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P8008112999737744069

`∑[n+1-A135503(n)]`
-/

namespace A110426.P8008112999737744069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A135503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110426.P8008112999737744069

namespace A110426

/-- `∑[n+1-A135503(n)]` -/
def P8008112999737744069.Spec : Prop :=
  ∀ n, P8008112999737744069.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P16230552728023240854

`∑[(n+1)*A080956(n)]`
-/

namespace A110426.P16230552728023240854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110426.P16230552728023240854

namespace A110426

/-- `∑[(n+1)*A080956(n)]` -/
def P16230552728023240854.Spec : Prop :=
  ∀ n, P16230552728023240854.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P12040297300527223709

`∑[(n+1)²-A006002(n)]`
-/

namespace A110426.P12040297300527223709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A006002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110426.P12040297300527223709

namespace A110426

/-- `∑[(n+1)²-A006002(n)]` -/
def P12040297300527223709.Spec : Prop :=
  ∀ n, P12040297300527223709.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P18000298633691495485

`(n+1)²-∑[A006003(n)]`
-/

namespace A110426.P18000298633691495485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110426.P18000298633691495485

namespace A110426

/-- `(n+1)²-∑[A006003(n)]` -/
def P18000298633691495485.Spec : Prop :=
  ∀ n, P18000298633691495485.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P9415974699802739177

`∑[n+1]-A050534(n+1)`
-/

namespace A110426.P9415974699802739177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A050534 (n + 1)

end

end A110426.P9415974699802739177

namespace A110426

/-- `∑[n+1]-A050534(n+1)` -/
def P9415974699802739177.Spec : Prop :=
  ∀ n, P9415974699802739177.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P14512235661029876177

`(n+1)*(n+2)-A004255(n+1)`
-/

namespace A110426.P14512235661029876177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A004255 (n + 1)

end

end A110426.P14512235661029876177

namespace A110426

/-- `(n+1)*(n+2)-A004255(n+1)` -/
def P14512235661029876177.Spec : Prop :=
  ∀ n, P14512235661029876177.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P9620583839911852747

`A016777(n)-A294259(n)`
-/

namespace A110426.P9620583839911852747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A294259 n

end

end A110426.P9620583839911852747

namespace A110426

/-- `A016777(n)-A294259(n)` -/
def P9620583839911852747.Spec : Prop :=
  ∀ n, P9620583839911852747.a n = A110426 (n + 1)

end A110426

/-! ## A110426.P3958195943280281639

`sqrt(A001249(n))-A001296(n)`
-/

namespace A110426.P3958195943280281639
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001249 n : ℝ) - (A001296 n : ℝ)

end

end A110426.P3958195943280281639

namespace A110426

/-- `sqrt(A001249(n))-A001296(n)` -/
def P3958195943280281639.Spec : Prop :=
  ∀ n, P3958195943280281639.a n = (A110426 (n + 1) : ℝ)

end A110426

/-! ## A110426.P11940614715993544797

`A000292(n+1)-A001296(n)`
-/

namespace A110426.P11940614715993544797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - A001296 n

end

end A110426.P11940614715993544797

namespace A110426

/-- `A000292(n+1)-A001296(n)` -/
def P11940614715993544797.Spec : Prop :=
  ∀ n, P11940614715993544797.a n = A110426 (n + 1)

end A110426

/-!
# A110427: The r-th term of the n-th row of the following array contains the sum of r successively decreasing integers beginning from n. 0 < r <= n. Sequence contains the leading diagonal.

The programs for A110427, the canonical program `A110427.P6736830182577139469` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110427 has offset 1).

The definition of A110427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110427.P2853216525156240638

`(n+1)*(1-(n-1)*(n+1))/2`
-/

namespace A110427.P2853216525156240638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (1 - ((n : ℤ) - 1) * (n + 1 : ℤ)) : ℚ) / 2

end

end A110427.P2853216525156240638

namespace A110427

/-- `(n+1)*(1-(n-1)*(n+1))/2` -/
def P2853216525156240638.Spec : Prop :=
  ∀ n, P2853216525156240638.a n = (A110427 (n + 1) : ℚ)

theorem P2853216525156240638.correct : P2853216525156240638.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A110427, Nat.add_sub_cancel, A110427.P2853216525156240638.a, A110427.P6736830182577139469.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A110427, Nat.add_sub_cancel, A110427.P2853216525156240638.a, A110427.P6736830182577139469.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A110427

/-! ## A110427.P6736830182577139469

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=-3, a(3)=-14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110427

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6736830182577139469.Spec : Prop :=
  ∀ n, P6736830182577139469.a n = A110427 (n + 1)

theorem P6736830182577139469.correct : P6736830182577139469.Spec := by
  intro n
  simp only [A110427, Nat.add_sub_cancel]

end A110427

/-! ## A110427.P15020104724079364493

`n+1-A002411(n)`
-/

namespace A110427.P15020104724079364493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002411 n

end

end A110427.P15020104724079364493

namespace A110427

/-- `n+1-A002411(n)` -/
def P15020104724079364493.Spec : Prop :=
  ∀ n, P15020104724079364493.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P17566675436976776047

`∑[1-(C(n, 2)+n²)]`
-/

namespace A110427.P17566675436976776047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n 2 + n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P17566675436976776047

namespace A110427

/-- `∑[1-(C(n, 2)+n²)]` -/
def P17566675436976776047.Spec : Prop :=
  ∀ n, P17566675436976776047.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P6905853013396788517

`∑[1-C(n, 2)-n²]`
-/

namespace A110427.P6905853013396788517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n 2 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P6905853013396788517

namespace A110427

/-- `∑[1-C(n, 2)-n²]` -/
def P6905853013396788517.Spec : Prop :=
  ∀ n, P6905853013396788517.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P7632044850824526018

`∑[∑[2-floor(3/acot(n))]]`
-/

namespace A110427.P7632044850824526018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P7632044850824526018

namespace A110427

/-- `∑[∑[2-floor(3/acot(n))]]` -/
def P7632044850824526018.Spec : Prop :=
  ∀ n, P7632044850824526018.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P955027089274140579

`∑[1-C(3*n, 2)/3]`
-/

namespace A110427.P955027089274140579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (3 * n) 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P955027089274140579

namespace A110427

/-- `∑[1-C(3*n, 2)/3]` -/
def P955027089274140579.Spec : Prop :=
  ∀ n, P955027089274140579.a n = (A110427 (n + 1) : ℚ)

end A110427

/-! ## A110427.P13397714501784270814

`∑[1-n-3*C(n, 2)]`
-/

namespace A110427.P13397714501784270814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) - (3 * Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P13397714501784270814

namespace A110427

/-- `∑[1-n-3*C(n, 2)]` -/
def P13397714501784270814.Spec : Prop :=
  ∀ n, P13397714501784270814.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P14707205507012225600

`ceil(n+1-n/acot(∑[n]))`
-/

namespace A110427.P14707205507012225600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) - (n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A110427.P14707205507012225600

namespace A110427

/-- `ceil(n+1-n/acot(∑[n]))` -/
def P14707205507012225600.Spec : Prop :=
  ∀ n, P14707205507012225600.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P11656161696855369017

`round(n+1-n/acot(∑[n]))`
-/

namespace A110427.P11656161696855369017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - (n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A110427.P11656161696855369017

namespace A110427

/-- `round(n+1-n/acot(∑[n]))` -/
def P11656161696855369017.Spec : Prop :=
  ∀ n, P11656161696855369017.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P17832191037669849059

`∑[∑[a(n-1)-3]]` with `a(0)=1, a(1)=-1`
-/

namespace A110427.P17832191037669849059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P17832191037669849059

namespace A110427

/-- `∑[∑[a(n-1)-3]]` -/
def P17832191037669849059.Spec : Prop :=
  ∀ n, P17832191037669849059.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P17887182119473276919

`∑[ogf((-1+3x+x^2)/(-1+3x-3x^2+x^3))]`
-/

namespace A110427.P17887182119473276919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1] [1, -3, 3, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P17887182119473276919

namespace A110427

/-- `∑[ogf((-1+3x+x^2)/(-1+3x-3x^2+x^3))]` -/
def P17887182119473276919.Spec : Prop :=
  ∀ n, P17887182119473276919.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P1005890113655634117

`ogf((1-3x-x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A110427.P1005890113655634117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1] [1, -4, 6, -4, 1] n

end

end A110427.P1005890113655634117

namespace A110427

/-- `ogf((1-3x-x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1005890113655634117.Spec : Prop :=
  ∀ n, P1005890113655634117.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P11541551641609275504

`∑[1-(∑[n]+lcm(n, n-1))]`
-/

namespace A110427.P11541551641609275504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f2 j + Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P11541551641609275504

namespace A110427

/-- `∑[1-(∑[n]+lcm(n, n-1))]` -/
def P11541551641609275504.Spec : Prop :=
  ∀ n, P11541551641609275504.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P4722969695455273450

`(1-sinh(log(n+1)))*(n+1)²`
-/

namespace A110427.P4722969695455273450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - Real.sinh (Real.log (n + 1 : ℝ))) * ((n + 1) ^ 2 : ℝ)

end

end A110427.P4722969695455273450

namespace A110427

/-- `(1-sinh(log(n+1)))*(n+1)²` -/
def P4722969695455273450.Spec : Prop :=
  ∀ n, P4722969695455273450.a n = (A110427 (n + 1) : ℝ)

end A110427

/-! ## A110427.P1834878570481648313

`(cosh(log(n+1))-n)*(n+1)²`
-/

namespace A110427.P1834878570481648313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.cosh (Real.log (n + 1 : ℝ)) - (n : ℝ)) * ((n + 1) ^ 2 : ℝ)

end

end A110427.P1834878570481648313

namespace A110427

/-- `(cosh(log(n+1))-n)*(n+1)²` -/
def P1834878570481648313.Spec : Prop :=
  ∀ n, P1834878570481648313.a n = (A110427 (n + 1) : ℝ)

end A110427

/-! ## A110427.P4797900434853803137

`(n+2)*(1/(n+2)-C(n, 2))`
-/

namespace A110427.P4797900434853803137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (1 / (n + 2 : ℚ) - (Nat.choose n 2 : ℚ))

end

end A110427.P4797900434853803137

namespace A110427

/-- `(n+2)*(1/(n+2)-C(n, 2))` -/
def P4797900434853803137.Spec : Prop :=
  ∀ n, P4797900434853803137.a n = (A110427 (n + 1) : ℚ)

end A110427

/-! ## A110427.P898214925733021306

`floor(n+1-lcm(n+1, n²)/2)`
-/

namespace A110427.P898214925733021306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) - (Nat.lcm (n + 1) (n ^ 2) : ℚ) / 2⌋

end

end A110427.P898214925733021306

namespace A110427

/-- `floor(n+1-lcm(n+1, n²)/2)` -/
def P898214925733021306.Spec : Prop :=
  ∀ n, P898214925733021306.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P3963096005802107435

`∑[∑[n+1]-C(n+1+n, 2)]`
-/

namespace A110427.P3963096005802107435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (n + 1 + n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110427.P3963096005802107435

namespace A110427

/-- `∑[∑[n+1]-C(n+1+n, 2)]` -/
def P3963096005802107435.Spec : Prop :=
  ∀ n, P3963096005802107435.a n = A110427 (n + 1)

end A110427

/-! ## A110427.P17016820652132551719

`a(n-2)-(3*n-4)*n` with `a(0)=1, a(1)=1`
-/

namespace A110427.P17016820652132551719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - ((3 * n : ℤ) - 4) * (n : ℤ)

end

end A110427.P17016820652132551719

namespace A110427

/-- `a(n-2)-(3*n-4)*n` -/
def P17016820652132551719.Spec : Prop :=
  ∀ n, P17016820652132551719.a n = A110427 (n + 1)

end A110427

/-!
# A110428: a(1) = 1 and a(2) = 2. Subsequent terms are generated like this: if a(m) is the last term available -- say a(2) -- then a(m+1) = a(m) * a(m-1), a(m+2) = a(m) * a(m-1) * a(m-2), ..., a(2*m-1) = a(m) * a(m-1) * a(m-2) * ... * a(2) * a(1), a(2*m) = a(2*m-1) * a(2*m-2), and so on.

The programs for A110428, there is no canonical definition to state claims against.
-/

/-! ## A110428.P11139990774406494431

`2^A329474(n+1)`
-/

namespace A110428.P11139990774406494431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A329474 (n + 1) : ℤ)

end

end A110428.P11139990774406494431

/-! ## A110428.P16495985513738426484

`a(A004755(n)%n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A110428.P16495985513738426484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.tmod (A004755 n) (n : ℤ)).toNat * a (n - 1)

end

end A110428.P16495985513738426484

/-! ## A110428.P8884539859122500176

`A000079(A329474(n+1))`
-/

namespace A110428.P8884539859122500176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A329474 (n + 1)).toNat

end

end A110428.P8884539859122500176

/-! ## A110428.P110044451172250333

`A011782(A329474(n+1)+1)`
-/

namespace A110428.P110044451172250333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A329474 (n + 1) + 1).toNat

end

end A110428.P110044451172250333

/-! ## A110428.P1226898964832148189

`A106624(2*A329474(n+1))`
-/

namespace A110428.P1226898964832148189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106624 (2 * A329474 (n + 1)).toNat

end

end A110428.P1226898964832148189

/-!
# A110429: Let the digits of n be d_1,d_2,d_3,...,d_k then the digits of a(n) are the concatenation (d_1+d_2),(d_2+d_3),...,(d_(k-1)+d_k). Number formed by concatenation of the sum of neighboring digits of n >100.

The programs for A110429, there is no canonical definition to state claims against.
-/

/-! ## A110429.P5658906817490274551

`A347520(n+10)-char[10]`
-/

namespace A110429.P5658906817490274551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (n + 10) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A110429.P5658906817490274551

/-! ## A110429.P14894358624062158186

`and(A347520(n+10)+A147612(n+1), A347520(n+10))`
-/

namespace A110429.P14894358624062158186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347520 (n + 10) + A147612 (n + 1)) (A347520 (n + 10))

end

end A110429.P14894358624062158186

/-! ## A110429.P12494686220898727910

`A065033(A347520(A347520(n+9))+A347520(n+10))`
-/

namespace A110429.P12494686220898727910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A347520 (A347520 (n + 9)).toNat + A347520 (n + 10)).toNat

end

end A110429.P12494686220898727910

/-!
# A110430: Arithmetic mean of all n-digit positive even numbers.

The programs for A110430, the canonical program `A110430.P725978870390790974` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110430 has offset 0).

The definition of A110430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110430.P263969291458752142

`ogf((5-x+5x^2)/(1-11x+10x^2))`
-/

namespace A110430.P263969291458752142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1, 5] [1, -11, 10] n

end

end A110430.P263969291458752142

namespace A110430

/-- `ogf((5-x+5x^2)/(1-11x+10x^2))` -/
def P263969291458752142.Spec : Prop :=
  ∀ n, P263969291458752142.a n = A110430 n

end A110430

/-! ## A110430.P725978870390790974

`ceil(11/2*10^n)-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110430

/-- `ceil(11/2*10^n)-1` -/
def P725978870390790974.Spec : Prop :=
  ∀ n, P725978870390790974.a n = A110430 n

theorem P725978870390790974.correct : P725978870390790974.Spec := by
  intro n
  simp only [A110430]

end A110430

/-! ## A110430.P13881930117100621985

`9*(floor(10/9*a(n-1))+1)` with `a(0)=5`
-/

namespace A110430.P13881930117100621985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  9 * (⌊(10 : ℚ) / 9 * (a (n - 1) : ℚ)⌋ + 1)

end

end A110430.P13881930117100621985

namespace A110430

/-- `9*(floor(10/9*a(n-1))+1)` -/
def P13881930117100621985.Spec : Prop :=
  ∀ n, P13881930117100621985.a n = A110430 n

end A110430

/-! ## A110430.P7256620488439897554

`abs(1-A110431(n+1))`
-/

namespace A110430.P7256620488439897554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A110431 (n + 1)|

end

end A110430.P7256620488439897554

namespace A110430

/-- `abs(1-A110431(n+1))` -/
def P7256620488439897554.Spec : Prop :=
  ∀ n, P7256620488439897554.a n = A110430 n

end A110430

/-! ## A110430.P6243699922009738441

`floor(A198700(n)/2)`
-/

namespace A110430.P6243699922009738441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198700 n : ℚ) / 2⌋

end

end A110430.P6243699922009738441

namespace A110430

/-- `floor(A198700(n)/2)` -/
def P6243699922009738441.Spec : Prop :=
  ∀ n, P6243699922009738441.a n = A110430 n

end A110430

/-!
# A110431: Average of positive multiples of 3 with n decimal digits, rounded down.

The programs for A110431, the canonical program `A110431.P10998083414834220630` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110431 has offset 1).

The definition of A110431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110431.P11482354961908508802

`ogf((6-5x)/(1-10x))`
-/

namespace A110431.P11482354961908508802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -10] n

end

end A110431.P11482354961908508802

namespace A110431

/-- `ogf((6-5x)/(1-10x))` -/
def P11482354961908508802.Spec : Prop :=
  ∀ n, P11482354961908508802.a n = A110431 (n + 1)

end A110431

/-! ## A110431.P10998083414834220630

`10*a(n-1)` with `a(0)=6, a(1)=55`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110431

/-- `10*a(n-1)` -/
def P10998083414834220630.Spec : Prop :=
  ∀ n, (P10998083414834220630.a n : ℤ) = A110431 (n + 1)

theorem P10998083414834220630.correct : P10998083414834220630.Spec := by
  intro n
  simp only [A110431, Nat.add_sub_cancel]

end A110431

/-! ## A110431.P8256964380764664356

`ceil(11/2*10^n)`
-/

namespace A110431.P8256964380764664356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 : ℚ) / 2 * (10 ^ n : ℚ)⌉

end

end A110431.P8256964380764664356

namespace A110431

/-- `ceil(11/2*10^n)` -/
def P8256964380764664356.Spec : Prop :=
  ∀ n, P8256964380764664356.a n = A110431 (n + 1)

end A110431

/-! ## A110431.P395343786066416725

`A110430(n)+1`
-/

namespace A110431.P395343786066416725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110430 n + 1

end

end A110431.P395343786066416725

namespace A110431

/-- `A110430(n)+1` -/
def P395343786066416725.Spec : Prop :=
  ∀ n, P395343786066416725.a n = A110431 (n + 1)

end A110431

/-! ## A110431.P11490022482072676293

`A093143(n+1)+A093143(n)`
-/

namespace A110431.P11490022482072676293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 1) + A093143 n

end

end A110431.P11490022482072676293

namespace A110431

/-- `A093143(n+1)+A093143(n)` -/
def P11490022482072676293.Spec : Prop :=
  ∀ n, P11490022482072676293.a n = A110431 (n + 1)

end A110431

/-! ## A110431.P14868869404798883207

`floor(A199691(n)/2)`
-/

namespace A110431.P14868869404798883207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199691 n : ℚ) / 2⌋

end

end A110431.P14868869404798883207

namespace A110431

/-- `floor(A199691(n)/2)` -/
def P14868869404798883207.Spec : Prop :=
  ∀ n, P14868869404798883207.a n = A110431 (n + 1)

end A110431

/-!
# A110432: Arithmetic mean of all n-digit positive multiples of n, rounded down.

The programs for A110432, there is no canonical definition to state claims against.
-/

/-! ## A110432.P11693610289048699750

`A117164(n+1)+A110430(A073786(n))`
-/

namespace A110432.P11693610289048699750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117164 (n + 1) + A110430 (A073786 n).toNat

end

end A110432.P11693610289048699750

/-!
# A110435: Beginning with 11, least number such that every partial concatenation is a prime.

The programs for A110435, there is no canonical definition to state claims against.
-/

/-! ## A110435.P1113272100127764100

`A092528(abs(1-n)+3)`
-/

namespace A110435.P1113272100127764100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092528 (|1 - (n : ℤ)| + 3).toNat

end

end A110435.P1113272100127764100

/-! ## A110435.P5917810994433130535

`A069613(A166333(Δ[n²]))*A092528(n+2)`
-/

namespace A110435.P5917810994433130535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069613 (A166333 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A092528 (n + 2)

end

end A110435.P5917810994433130535

/-! ## A110435.P17548998417183395840

`A092528(A166333(2*n+1)²)*A092528(n+2)`
-/

namespace A110435.P17548998417183395840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092528 (A166333 (2 * n + 1) ^ 2).toNat * A092528 (n + 2)

end

end A110435.P17548998417183395840

/-! ## A110435.P5699212728240329363

`A092528(n+2)*A132199(A000292(n+3))`
-/

namespace A110435.P5699212728240329363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092528 (n + 2) * A132199 (A000292 (n + 3)).toNat

end

end A110435.P5699212728240329363

/-!
# A110436: A weighted sum of Jacobi function values.

The programs for A110436, there is no canonical definition to state claims against.
-/

/-! ## A110436.P5138722982715240081

`floor(A054432(2*n+3)/A000079(n+1))`
-/

namespace A110436.P5138722982715240081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054432 (2 * n + 3) : ℚ) / (A000079 (n + 1) : ℚ)⌋

end

end A110436.P5138722982715240081

/-! ## A110436.P9402630971662865535

`∑[2^n]-A046926(A105262(n))`
-/

namespace A110436.P9402630971662865535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A046926 (A105262 n).toNat

end

end A110436.P9402630971662865535

/-! ## A110436.P16314951947949980442

`record[gcd(A265845(2*(n+1)), A266349(2*n+1))]`
-/

namespace A110436.P16314951947949980442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265845 (2 * (n + 1))) (A266349 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110436.P16314951947949980442

/-! ## A110436.P6635918259826479009

`or(A055998(n), A330122(A128209(n)))`
-/

namespace A110436.P6635918259826479009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055998 n) (A330122 (A128209 n).toNat)

end

end A110436.P6635918259826479009

/-!
# A110437: A weighted sum of Jacobi function values.

The programs for A110437, there is no canonical definition to state claims against.
-/

/-! ## A110437.P6395641863783323571

`A007088(A110436(n+1))`
-/

namespace A110437.P6395641863783323571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A110436 (n + 1)).toNat

end

end A110437.P6395641863783323571

/-! ## A110437.P8274193622573686291

`A007088(floor(A054432(2*n+3)/A000079(n+1)))`
-/

namespace A110437.P8274193622573686291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ⌊(A054432 (2 * n + 3) : ℚ) / (A000079 (n + 1) : ℚ)⌋.toNat

end

end A110437.P8274193622573686291

/-! ## A110437.P8724779530089683062

`A185544(2*A110436(n+1))`
-/

namespace A110437.P8724779530089683062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A110436 (n + 1)).toNat

end

end A110437.P8724779530089683062

/-! ## A110437.P1146178855604217300

`A185544(lcm(2, A110436(n+1)))`
-/

namespace A110437.P1146178855604217300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A110436 (n + 1)))

end

end A110437.P1146178855604217300

/-! ## A110437.P13222084143623006439

`A185544(2*floor(A054432(2*n+3)/A000079(n+1)))`
-/

namespace A110437.P13222084143623006439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * ⌊(A054432 (2 * n + 3) : ℚ) / (A000079 (n + 1) : ℚ)⌋).toNat

end

end A110437.P13222084143623006439

/-!
# A110438: Triangular array giving the number of NSEW unit step lattice paths of length n with terminal height k subject to the following restrictions. The paths start at the origin (0,0) and take unit steps (0,1)=N(north), (0,-1)=S(south), (1,0)=E(east) and (-1,0)=W(west) such that no paths pass below the x-axis, no paths begin with W, all W steps remain on the x-axis and there are no NS steps.

The programs for A110438, there is no canonical definition to state claims against.
-/

/-! ## A110438.P12421594975762996343

`A204330(A134558(n))`
-/

namespace A110438.P12421594975762996343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A134558 n).toNat

end

end A110438.P12421594975762996343

/-! ## A110438.P1213069199178678618

`A196266(A171486(n))`
-/

namespace A110438.P1213069199178678618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A171486 n).toNat

end

end A110438.P1213069199178678618

/-! ## A110438.P10665461920785012368

`A196266(A127743(n+1))`
-/

namespace A110438.P10665461920785012368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A127743 (n + 1)).toNat

end

end A110438.P10665461920785012368

/-! ## A110438.P7575275567072051076

`A316844(A228859(n+1))`
-/

namespace A110438.P7575275567072051076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316844 (A228859 (n + 1)).toNat

end

end A110438.P7575275567072051076

/-! ## A110438.P9473295848420138050

`A273342(n+2)-A184964(A209126(n+3))`
-/

namespace A110438.P9473295848420138050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (n + 2) - A184964 (A209126 (n + 3)).toNat

end

end A110438.P9473295848420138050

/-!
# A110439: Triangular array formed by the odd-indexed Fibonacci numbers.

The programs for A110439, there is no canonical definition to state claims against.
-/

/-! ## A110439.P13340177035296118989

`A193924(n)+A046660(A133489(n+1))`
-/

namespace A110439.P13340177035296118989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 n + A046660 (A133489 (n + 1)).toNat

end

end A110439.P13340177035296118989

/-! ## A110439.P12685864134505162860

`A193924(n)+A185284(A144510(n+1))`
-/

namespace A110439.P12685864134505162860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 n + A185284 (A144510 (n + 1)).toNat

end

end A110439.P12685864134505162860

/-! ## A110439.P10916916542268020629

`A001906(A025581(n))+A001222(2^A130167(n))`
-/

namespace A110439.P10916916542268020629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A025581 n).toNat + A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130167 n : ℤ))).toNat

end

end A110439.P10916916542268020629

/-! ## A110439.P1047003086935580267

`A185284(n)+A193924(n)+A183094(A133489(n+1))`
-/

namespace A110439.P1047003086935580267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + (A193924 n + A183094 (A133489 (n + 1)).toNat)

end

end A110439.P1047003086935580267

/-! ## A110439.P5862805165402567563

`A000007(n+2)+A193924(n)+A183094(A133489(n+1))`
-/

namespace A110439.P5862805165402567563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + (A193924 n + A183094 (A133489 (n + 1)).toNat)

end

end A110439.P5862805165402567563

/-!
# A110440: Triangular array formed by the little Schröder numbers s(n,k).

The programs for A110440, the canonical program `A110440.P12668198678410606124` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110440 has offset 0).

The definition of A110440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110440.P12668198678410606124

`T(n-1,k-1)+3*T(n-1,k)+2*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110440

/-- `T(n-1,k-1)+3*T(n-1,k)+2*T(n-1,k+1)` -/
def P12668198678410606124.Spec : Prop :=
  ∀ n, (P12668198678410606124.a n : ℤ) = A110440 n

theorem P12668198678410606124.correct : P12668198678410606124.Spec := by
  intro n
  simp only [A110440]

end A110440

/-! ## A110440.P7758460514389494285

`A134426(n)/A059268(n)`
-/

namespace A110440.P7758460514389494285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134426 n : ℚ) / (A059268 n : ℚ)

end

end A110440.P7758460514389494285

namespace A110440

/-- `A134426(n)/A059268(n)` -/
def P7758460514389494285.Spec : Prop :=
  ∀ n, P7758460514389494285.a n = (A110440 n : ℚ)

end A110440

/-! ## A110440.P3903410102186019474

`A134426(n)/2^A002262(n)`
-/

namespace A110440.P3903410102186019474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134426 n : ℚ) / (2 : ℚ) ^ (A002262 n : ℤ)

end

end A110440.P3903410102186019474

namespace A110440

/-- `A134426(n)/2^A002262(n)` -/
def P3903410102186019474.Spec : Prop :=
  ∀ n, P3903410102186019474.a n = (A110440 n : ℚ)

end A110440

/-! ## A110440.P5420267922513966183

`A134426(n)/A000079(A002262(n))`
-/

namespace A110440.P5420267922513966183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134426 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A110440.P5420267922513966183

namespace A110440

/-- `A134426(n)/A000079(A002262(n))` -/
def P5420267922513966183.Spec : Prop :=
  ∀ n, P5420267922513966183.a n = (A110440 n : ℚ)

end A110440

/-! ## A110440.P1758615828372637264

`A134426(n)/A006519(A175840(n))`
-/

namespace A110440.P1758615828372637264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134426 n : ℚ) / (A006519 (A175840 n).toNat : ℚ)

end

end A110440.P1758615828372637264

namespace A110440

/-- `A134426(n)/A006519(A175840(n))` -/
def P1758615828372637264.Spec : Prop :=
  ∀ n, P1758615828372637264.a n = (A110440 n : ℚ)

end A110440

/-!
# A110441: Triangular array formed by the Mersenne numbers.

The programs for A110441, the canonical program `A110441.P8148622515322649932` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110441 has offset 0).

The definition of A110441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110441.P8148622515322649932

`3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110441

/-- `3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)` -/
def P8148622515322649932.Spec : Prop :=
  ∀ n, P8148622515322649932.a n = A110441 n

theorem P8148622515322649932.correct : P8148622515322649932.Spec := by
  intro n
  simp only [A110441]

end A110441

/-! ## A110441.P3988886628607925288

`abs(A111806(n))`
-/

namespace A110441.P3988886628607925288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111806 n|

end

end A110441.P3988886628607925288

namespace A110441

/-- `abs(A111806(n))` -/
def P3988886628607925288.Spec : Prop :=
  ∀ n, P3988886628607925288.a n = A110441 n

end A110441

/-! ## A110441.P13872308351525355830

`A097807(n)*A111806(n)`
-/

namespace A110441.P13872308351525355830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A111806 n

end

end A110441.P13872308351525355830

namespace A110441

/-- `A097807(n)*A111806(n)` -/
def P13872308351525355830.Spec : Prop :=
  ∀ n, P13872308351525355830.a n = A110441 n

end A110441

/-! ## A110441.P13282551912374559467

`gcd(A000038(n), A111806(n))`
-/

namespace A110441.P13282551912374559467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111806 n)

end

end A110441.P13282551912374559467

namespace A110441

/-- `gcd(A000038(n), A111806(n))` -/
def P13282551912374559467.Spec : Prop :=
  ∀ n, (P13282551912374559467.a n : ℤ) = A110441 n

end A110441

/-! ## A110441.P15304461808036335218

`lcm(A020985(n), A111806(n))`
-/

namespace A110441.P15304461808036335218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A111806 n)

end

end A110441.P15304461808036335218

namespace A110441

/-- `lcm(A020985(n), A111806(n))` -/
def P15304461808036335218.Spec : Prop :=
  ∀ n, (P15304461808036335218.a n : ℤ) = A110441 n

end A110441

/-! ## A110441.P15763466309709473582

`A080246(n)/A113413(n)*A111806(n)`
-/

namespace A110441.P15763466309709473582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080246 n : ℚ) / (A113413 n : ℚ) * (A111806 n : ℚ)

end

end A110441.P15763466309709473582

namespace A110441

/-- `A080246(n)/A113413(n)*A111806(n)` -/
def P15763466309709473582.Spec : Prop :=
  ∀ n, P15763466309709473582.a n = (A110441 n : ℚ)

end A110441

/-! ## A110441.P7554323955874754026

`A206306(n+1)+A124237(n)`
-/

namespace A110441.P7554323955874754026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (n + 1) + A124237 n

end

end A110441.P7554323955874754026

namespace A110441

/-- `A206306(n+1)+A124237(n)` -/
def P7554323955874754026.Spec : Prop :=
  ∀ n, P7554323955874754026.a n = A110441 n

end A110441

/-! ## A110441.P11266927996735892655

`A206306(comp[∑[n]])`
-/

namespace A110441.P11266927996735892655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A110441.P11266927996735892655

namespace A110441

/-- `A206306(comp[∑[n]])` -/
def P11266927996735892655.Spec : Prop :=
  ∀ n, P11266927996735892655.a n = A110441 n

end A110441

/-! ## A110441.P9693025364842689406

`∑{d}[A111806(n), A000010(#)]`
-/

namespace A110441.P9693025364842689406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A110441.P9693025364842689406

namespace A110441

/-- `∑{d}[A111806(n), A000010(#)]` -/
def P9693025364842689406.Spec : Prop :=
  ∀ n, P9693025364842689406.a n = A110441 n

end A110441

/-!
# A110442: Least colossally abundant number c with sigma(c)/c >= n.

The programs for A110442, there is no canonical definition to state claims against.
-/

/-! ## A110442.P6568307921383225436

`A004490(A110443(n+2))`
-/

namespace A110442.P6568307921383225436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004490 (A110443 (n + 2)).toNat

end

end A110442.P6568307921383225436

/-!
# A110443: Index k of the least colossally abundant number c=A004490(k) with sigma(c)/c >= n.

The programs for A110443, there is no canonical definition to state claims against.
-/

/-! ## A110443.P12040509162452316951

`A086676(n+1)+comp[∑[∑{e}[n+1, #]+1]]`
-/

namespace A110443.P12040509162452316951
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086676 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A110443.P12040509162452316951

/-! ## A110443.P10859291465608633431

`A086676(n+1)+A083089(n+1)`
-/

namespace A110443.P10859291465608633431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086676 (n + 1) + A083089 (n + 1)

end

end A110443.P10859291465608633431

/-! ## A110443.P16240779836333236507

`A145569(2*n)+A086676(n+1)`
-/

namespace A110443.P16240779836333236507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (2 * n) + A086676 (n + 1)

end

end A110443.P16240779836333236507

/-! ## A110443.P13556884693245563306

`A086676(n+1)+A057353(A057353(3*n+2))`
-/

namespace A110443.P13556884693245563306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086676 (n + 1) + A057353 (A057353 (3 * n + 2)).toNat

end

end A110443.P13556884693245563306

/-!
# A110444: Binary expansion of A074988.

The programs for A110444, there is no canonical definition to state claims against.
-/

/-! ## A110444.P11709454768049563367

`A008966(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A110444.P11709454768049563367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008966 (n + 1) + 10 * a (n - 1)

end

end A110444.P11709454768049563367

/-! ## A110444.P11258340573688288306

`A341642(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A110444.P11258340573688288306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341642 (n + 1) + 10 * a (n - 1)

end

end A110444.P11258340573688288306

/-! ## A110444.P3056201664039587851

`A008683(n+1)²+10*a(n-1)` with `a(0)=1`
-/

namespace A110444.P3056201664039587851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (n + 1) ^ 2 + 10 * a (n - 1)

end

end A110444.P3056201664039587851

/-! ## A110444.P18090598314613841439

`xor(10*a(n-1), Δ[A107079(n+1)])` with `a(0)=1`
-/

namespace A110444.P18090598314613841439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A110444.P18090598314613841439

/-! ## A110444.P8258013379323742865

`or(10*a(n-1), A000035(A002033(n)))` with `a(0)=1`
-/

namespace A110444.P8258013379323742865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A000035 (A002033 n).toNat)

end

end A110444.P8258013379323742865

/-!
# A110446: Triangle of Delannoy paths counted by number of diagonal steps not preceded by an east step.

The programs for A110446, there is no canonical definition to state claims against.
-/

/-! ## A110446.P7892166568849854113

`A007318(n)*A006139(A025581(n))`
-/

namespace A110446.P7892166568849854113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A006139 (A025581 n).toNat

end

end A110446.P7892166568849854113

/-! ## A110446.P12114589056180764164

`abs(A006139(A025581(n))*A108086(n))`
-/

namespace A110446.P12114589056180764164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006139 (A025581 n).toNat * A108086 n|

end

end A110446.P12114589056180764164

/-! ## A110446.P2940393777703935246

`abs(A006139(A025581(n))*A130595(n))`
-/

namespace A110446.P2940393777703935246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006139 (A025581 n).toNat * A130595 n|

end

end A110446.P2940393777703935246

/-! ## A110446.P5011624829866480093

`sqrt(A008459(n))*A006139(A025581(n))`
-/

namespace A110446.P5011624829866480093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A006139 (A025581 n).toNat : ℝ)

end

end A110446.P5011624829866480093

/-! ## A110446.P10543449095367792410

`Δ[A102363(n)]*A006139(A025581(n))`
-/

namespace A110446.P10543449095367792410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006139 (A025581 n).toNat

end

end A110446.P10543449095367792410

/-! ## A110446.P2479286515078821357

`(A014473(n)+1)*A006139(A025581(n))`
-/

namespace A110446.P2479286515078821357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A006139 (A025581 n).toNat

end

end A110446.P2479286515078821357

/-! ## A110446.P7752120716032401568

`A006139(A025581(n))/2*A028326(n)`
-/

namespace A110446.P7752120716032401568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006139 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A110446.P7752120716032401568

/-! ## A110446.P18170246838776102109

`A001281(A028326(n))*A006139(A025581(n))`
-/

namespace A110446.P18170246838776102109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028326 n).toNat * A006139 (A025581 n).toNat

end

end A110446.P18170246838776102109

/-!
# A110447: Number of permutations containing 3241 patterns only as part of 35241 patterns.

The programs for A110447, there is no canonical definition to state claims against.
-/

/-! ## A110447.P7440735372571952842

`A030266(n+1)`
-/

namespace A110447.P7440735372571952842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030266 (n + 1)

end

end A110447.P7440735372571952842

/-! ## A110447.P17726337705453666663

`∑[abs(Δ[A030266(n)])]`
-/

namespace A110447.P17726337705453666663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110447.P17726337705453666663

/-! ## A110447.P2579879573136692911

`Δ[∑[A030266(n)]*A057427(n)]`
-/

namespace A110447.P2579879573136692911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110447.P2579879573136692911

/-! ## A110447.P13586934603378944108

`or(char[1], A030266(A110514(2*n)))`
-/

namespace A110447.P13586934603378944108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A030266 (A110514 (2 * n)).toNat)

end

end A110447.P13586934603378944108

/-! ## A110447.P13754541909228464763

`A035049(n+1)/(n+1)!`
-/

namespace A110447.P13754541909228464763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035049 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A110447.P13754541909228464763

/-!
# A110448: G.f.: A(x) = exp( Sum_{n>=1} A056045(n)/n*x^n ), where A056045(n) = Sum_{d|n} binomial(n,d).

The programs for A110448, there is no canonical definition to state claims against.
-/

/-! ## A110448.P12022724145147405804

`A330236(A091070(n)+A008406(n+1))-1`
-/

namespace A110448.P12022724145147405804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (A091070 n + A008406 (n + 1)).toNat - 1

end

end A110448.P12022724145147405804

/-! ## A110448.P8705360129376877782

`A175427(A181363(n+1)+A003242(n))`
-/

namespace A110448.P8705360129376877782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A181363 (n + 1) + A003242 n).toNat

end

end A110448.P8705360129376877782

/-! ## A110448.P4757153571231244757

`A330236(A008406(n+1)*A091070(n))`
-/

namespace A110448.P4757153571231244757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (A008406 (n + 1) * A091070 n).toNat

end

end A110448.P4757153571231244757

/-! ## A110448.P12225687769152034379

`A165652(A039653(n))+A055571(A225393(n)+1)`
-/

namespace A110448.P12225687769152034379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (A039653 n).toNat + A055571 (A225393 n + 1).toNat

end

end A110448.P12225687769152034379

/-!
# A110449: Triangle read by rows: T(n,k) = n*((2*k+1)*n+1)/2, 0<=k<=n.

The programs for A110449, the canonical program `A110449.P2639655284380264799` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110449 has offset 0).

The definition of A110449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)*((2*col(n)+1)*row(n)+1)/2` (program `A110449.P1208106429096963669`, by `A110449.P1208106429096963669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110449.P1208106429096963669

`row(n)*((2*col(n)+1)*row(n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110449.P1208106429096963669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n * ((2 * SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triRow n + 1) : ℚ) / 2

end

end A110449.P1208106429096963669

namespace A110449

/-- `row(n)*((2*col(n)+1)*row(n)+1)/2` -/
def P1208106429096963669.Spec : Prop :=
  ∀ n, P1208106429096963669.a n = (A110449 n : ℚ)

theorem P1208106429096963669.correct : P1208106429096963669.Spec := by
  intro n
  simp only [A110449, Nat.add_sub_cancel, A110449.P1208106429096963669.a, A110449.P2639655284380264799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A110449

/-! ## A110449.P2639655284380264799

`C(row(n)+1, 2)+row(n)²*col(n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110449

/-- `C(row(n)+1, 2)+row(n)²*col(n)` -/
def P2639655284380264799.Spec : Prop :=
  ∀ n, (P2639655284380264799.a n : ℤ) = A110449 n

theorem P2639655284380264799.correct : P2639655284380264799.Spec := by
  intro n
  simp only [A110449]

end A110449

/-! ## A110449.P14148903183111530962

`A162611(n)+A083920(n)`
-/

namespace A110449.P14148903183111530962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162611 n + A083920 n

end

end A110449.P14148903183111530962

namespace A110449

/-- `A162611(n)+A083920(n)` -/
def P14148903183111530962.Spec : Prop :=
  ∀ n, P14148903183111530962.a n = A110449 n

theorem P14148903183111530962.correct : P14148903183111530962.Spec := by
  intro n
  simp only [A110449, Nat.add_sub_cancel, A110449.P14148903183111530962.a, A110449.P2639655284380264799.a, A083920, A083920.P13248752610546876947.a, A162611, A162611.P16253396059121565881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A110449

/-! ## A110449.P11060572377618049045

`A162611(n)+n-A003056(n)`
-/

namespace A110449.P11060572377618049045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162611 n + ((n : ℤ) - A003056 n)

end

end A110449.P11060572377618049045

namespace A110449

/-- `A162611(n)+n-A003056(n)` -/
def P11060572377618049045.Spec : Prop :=
  ∀ n, P11060572377618049045.a n = A110449 n

end A110449

/-! ## A110449.P2495691118690841091

`A223544(n+1)+A163282(n)-n`
-/

namespace A110449.P2495691118690841091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + (A163282 n - (n : ℤ))

end

end A110449.P2495691118690841091

namespace A110449

/-- `A223544(n+1)+A163282(n)-n` -/
def P2495691118690841091.Spec : Prop :=
  ∀ n, P2495691118690841091.a n = A110449 n

end A110449

/-! ## A110449.P16603882314026901589

`A075362(n+1)+A163282(n)-(n+1)`
-/

namespace A110449.P16603882314026901589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A163282 n - (n + 1 : ℤ))

end

end A110449.P16603882314026901589

namespace A110449

/-- `A075362(n+1)+A163282(n)-(n+1)` -/
def P16603882314026901589.Spec : Prop :=
  ∀ n, P16603882314026901589.a n = A110449 n

end A110449

/-! ## A110449.P10213505888178622880

`A057944(n)+A163282(n)-A091435(n)`
-/

namespace A110449.P10213505888178622880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + (A163282 n - A091435 n)

end

end A110449.P10213505888178622880

namespace A110449

/-- `A057944(n)+A163282(n)-A091435(n)` -/
def P10213505888178622880.Spec : Prop :=
  ∀ n, P10213505888178622880.a n = A110449 n

end A110449

/-! ## A110449.P13707820135664646576

`A057944(n)+A003056(n)*A079904(n)`
-/

namespace A110449.P13707820135664646576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003056 n * A079904 n

end

end A110449.P13707820135664646576

namespace A110449

/-- `A057944(n)+A003056(n)*A079904(n)` -/
def P13707820135664646576.Spec : Prop :=
  ∀ n, P13707820135664646576.a n = A110449 n

end A110449

/-! ## A110449.P9065547014987860301

`A057944(n)+A003056(n)²*A002262(n)`
-/

namespace A110449.P9065547014987860301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003056 n ^ 2 * A002262 n

end

end A110449.P9065547014987860301

namespace A110449

/-- `A057944(n)+A003056(n)²*A002262(n)` -/
def P9065547014987860301.Spec : Prop :=
  ∀ n, P9065547014987860301.a n = A110449 n

end A110449

/-! ## A110449.P2882682998438565125

`A162613(n+1)+A091435(n)-A176798(n)`
-/

namespace A110449.P2882682998438565125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162613 (n + 1) + (A091435 n - A176798 n)

end

end A110449.P2882682998438565125

namespace A110449

/-- `A162613(n+1)+A091435(n)-A176798(n)` -/
def P2882682998438565125.Spec : Prop :=
  ∀ n, P2882682998438565125.a n = A110449 n

end A110449

/-! ## A110449.P3848934274867782566

`A000217(A003056(n)*A158405(n+1))/A158405(n+1)`
-/

namespace A110449.P3848934274867782566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A003056 n * A158405 (n + 1)).toNat : ℚ) / (A158405 (n + 1) : ℚ)

end

end A110449.P3848934274867782566

namespace A110449

/-- `A000217(A003056(n)*A158405(n+1))/A158405(n+1)` -/
def P3848934274867782566.Spec : Prop :=
  ∀ n, P3848934274867782566.a n = (A110449 n : ℚ)

end A110449

/-! ## A110449.P13026065396381554160

`A241016(n+1)-A244418(n+1)`
-/

namespace A110449.P13026065396381554160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241016 (n + 1) - A244418 (n + 1)

end

end A110449.P13026065396381554160

namespace A110449

/-- `A241016(n+1)-A244418(n+1)` -/
def P13026065396381554160.Spec : Prop :=
  ∀ n, P13026065396381554160.a n = A110449 n

theorem P13026065396381554160.correct : P13026065396381554160.Spec := by
  intro n
  simp only [A110449, Nat.add_sub_cancel, A110449.P13026065396381554160.a, A110449.P2639655284380264799.a, A241016, A241016.P11659684194773639516.a, A244418, A244418.P1954470972308758329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A110449

/-! ## A110449.P9267724860662733086

`A241016(n+1)-A008619(A143218(n+1))`
-/

namespace A110449.P9267724860662733086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241016 (n + 1) - A008619 (A143218 (n + 1)).toNat

end

end A110449.P9267724860662733086

namespace A110449

/-- `A241016(n+1)-A008619(A143218(n+1))` -/
def P9267724860662733086.Spec : Prop :=
  ∀ n, P9267724860662733086.a n = A110449 n

end A110449

/-! ## A110449.P10748030565903786094

`A241016(n+1)-A330613(A038722(n+1))`
-/

namespace A110449.P10748030565903786094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241016 (n + 1) - A330613 (A038722 (n + 1)).toNat

end

end A110449.P10748030565903786094

namespace A110449

/-- `A241016(n+1)-A330613(A038722(n+1))` -/
def P10748030565903786094.Spec : Prop :=
  ∀ n, P10748030565903786094.a n = A110449 n

end A110449

/-!
# A110450: a(n) = n*(n+1)*(n^2+n+1)/2.

The programs for A110450, the canonical program `A110450.P114851272246151369` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110450 has offset 0).

The definition of A110450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110450.P14746507914283905776

`n*(n+1)*(n²+n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110450.P14746507914283905776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n ^ 2 + n + 1) : ℚ) / 2

end

end A110450.P14746507914283905776

namespace A110450

/-- `n*(n+1)*(n²+n+1)/2` -/
def P14746507914283905776.Spec : Prop :=
  ∀ n, P14746507914283905776.a n = (A110450 n : ℚ)

end A110450

/-! ## A110450.P114851272246151369

`A002378(n)+A062392(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110450

/-- `A002378(n)+A062392(n)` -/
def P114851272246151369.Spec : Prop :=
  ∀ n, P114851272246151369.a n = A110450 n

theorem P114851272246151369.correct : P114851272246151369.Spec := by
  intro n
  simp only [A110450]

end A110450

/-! ## A110450.P9700846406210494546

`3*A006325(n+1)`
-/

namespace A110450.P9700846406210494546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006325 (n + 1)

end

end A110450.P9700846406210494546

namespace A110450

/-- `3*A006325(n+1)` -/
def P9700846406210494546.Spec : Prop :=
  ∀ n, P9700846406210494546.a n = A110450 n

end A110450

/-! ## A110450.P17896138057398525159

`A000217(n*(n+1))`
-/

namespace A110450.P17896138057398525159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n * (n + 1))

end

end A110450.P17896138057398525159

namespace A110450

/-- `A000217(n*(n+1))` -/
def P17896138057398525159.Spec : Prop :=
  ∀ n, P17896138057398525159.a n = A110450 n

end A110450

/-! ## A110450.P5620593654515402553

`A014105(A000217(n))`
-/

namespace A110450.P5620593654515402553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (A000217 n).toNat

end

end A110450.P5620593654515402553

namespace A110450

/-- `A014105(A000217(n))` -/
def P5620593654515402553.Spec : Prop :=
  ∀ n, P5620593654515402553.a n = A110450 n

end A110450

/-! ## A110450.P8491820792476834440

`C(∑[2*n]+1, 2)`
-/

namespace A110450.P8491820792476834440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A110450.P8491820792476834440

namespace A110450

/-- `C(∑[2*n]+1, 2)` -/
def P8491820792476834440.Spec : Prop :=
  ∀ n, (P8491820792476834440.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P6495932275044122944

`∑[lcm(n, 2*n²+1)]`
-/

namespace A110450.P6495932275044122944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110450.P6495932275044122944

namespace A110450

/-- `∑[lcm(n, 2*n²+1)]` -/
def P6495932275044122944.Spec : Prop :=
  ∀ n, (P6495932275044122944.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P13624460994402740145

`∑[n*or(1, 2*n²)]`
-/

namespace A110450.P13624460994402740145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110450.P13624460994402740145

namespace A110450

/-- `∑[n*or(1, 2*n²)]` -/
def P13624460994402740145.Spec : Prop :=
  ∀ n, (P13624460994402740145.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P9415766334573974742

`∑[n*xor(1, 2*n²)]`
-/

namespace A110450.P9415766334573974742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (2 * n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110450.P9415766334573974742

namespace A110450

/-- `∑[n*xor(1, 2*n²)]` -/
def P9415766334573974742.Spec : Prop :=
  ∀ n, (P9415766334573974742.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P9697304070783378716

`lcm(∑[2*n]+1, ∑[n])`
-/

namespace A110450.P9697304070783378716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A110450.P9697304070783378716

namespace A110450

/-- `lcm(∑[2*n]+1, ∑[n])` -/
def P9697304070783378716.Spec : Prop :=
  ∀ n, (P9697304070783378716.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P17410381734690163770

`or(1, ∑[2*n])*∑[n]`
-/

namespace A110450.P17410381734690163770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A110450.P17410381734690163770

namespace A110450

/-- `or(1, ∑[2*n])*∑[n]` -/
def P17410381734690163770.Spec : Prop :=
  ∀ n, (P17410381734690163770.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P13348127617000228453

`xor(1, ∑[2*n])*∑[n]`
-/

namespace A110450.P13348127617000228453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A110450.P13348127617000228453

namespace A110450

/-- `xor(1, ∑[2*n])*∑[n]` -/
def P13348127617000228453.Spec : Prop :=
  ∀ n, (P13348127617000228453.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P1301538140398554305

`(record[(n-1)²]-n)*∑[n]`
-/

namespace A110450.P1301538140398554305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110450.P1301538140398554305

namespace A110450

/-- `(record[(n-1)²]-n)*∑[n]` -/
def P1301538140398554305.Spec : Prop :=
  ∀ n, P1301538140398554305.a n = A110450 n

end A110450

/-! ## A110450.P10569451254014591068

`ceil((n+1)/acot(n))*∑[n]`
-/

namespace A110450.P10569451254014591068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110450.P10569451254014591068

namespace A110450

/-- `ceil((n+1)/acot(n))*∑[n]` -/
def P10569451254014591068.Spec : Prop :=
  ∀ n, P10569451254014591068.a n = A110450 n

end A110450

/-! ## A110450.P646770612092884454

`C(n²+n, 2)+n²+n`
-/

namespace A110450.P646770612092884454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + n) 2 + (n ^ 2 + n)

end

end A110450.P646770612092884454

namespace A110450

/-- `C(n²+n, 2)+n²+n` -/
def P646770612092884454.Spec : Prop :=
  ∀ n, (P646770612092884454.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P608454647466204780

`∑[a(n-1)+2]*∑[n]` with `a(0)=1, a(1)=2`
-/

namespace A110450.P608454647466204780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A110450.P608454647466204780

namespace A110450

/-- `∑[a(n-1)+2]*∑[n]` -/
def P608454647466204780.Spec : Prop :=
  ∀ n, (P608454647466204780.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P2680178583280846775

`∑[2*n]²-C(∑[2*n], 2)`
-/

namespace A110450.P2680178583280846775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

end

end A110450.P2680178583280846775

namespace A110450

/-- `∑[2*n]²-C(∑[2*n], 2)` -/
def P2680178583280846775.Spec : Prop :=
  ∀ n, P2680178583280846775.a n = A110450 n

end A110450

/-! ## A110450.P7218629126721002743

`2*n^3+a(n-1)+n` with `a(0)=0`
-/

namespace A110450.P7218629126721002743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * n ^ 3 + (a (n - 1) + n)

end

end A110450.P7218629126721002743

namespace A110450

/-- `2*n^3+a(n-1)+n` -/
def P7218629126721002743.Spec : Prop :=
  ∀ n, (P7218629126721002743.a n : ℤ) = A110450 n

end A110450

/-! ## A110450.P5904809845679431310

`(1-∑[a(n-1)-2])*∑[n]` with `a(0)=0`
-/

namespace A110450.P5904809845679431310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110450.P5904809845679431310

namespace A110450

/-- `(1-∑[a(n-1)-2])*∑[n]` -/
def P5904809845679431310.Spec : Prop :=
  ∀ n, P5904809845679431310.a n = A110450 n

end A110450

/-! ## A110450.P4272893532492427473

`∑[3*(∑[C(2*n, 2)]-C(n, 2))]`
-/

namespace A110450.P4272893532492427473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110450.P4272893532492427473

namespace A110450

/-- `∑[3*(∑[C(2*n, 2)]-C(n, 2))]` -/
def P4272893532492427473.Spec : Prop :=
  ∀ n, P4272893532492427473.a n = A110450 n

end A110450

/-!
# A110451: a(n) = n*(4*n^2 + 2*n + 1).

The programs for A110451, the canonical program `A110451.P14386301386351783775` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110451 has offset 0).

The definition of A110451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n²+2*n+1)` (program `A110451.P14386301386351783775`, by `A110451.P14386301386351783775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A110451.P14386301386351783775

`n*(4*n²+2*n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110451

/-- `n*(4*n²+2*n+1)` -/
def P14386301386351783775.Spec : Prop :=
  ∀ n, (P14386301386351783775.a n : ℤ) = A110451 n

theorem P14386301386351783775.correct : P14386301386351783775.Spec := by
  intro n
  simp only [A110451]

end A110451

/-! ## A110451.P14064608812046808644

`lcm(n, record[or(1, n)²-n])`
-/

namespace A110451.P14064608812046808644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A110451.P14064608812046808644

namespace A110451

/-- `lcm(n, record[or(1, n)²-n])` -/
def P14064608812046808644.Spec : Prop :=
  ∀ n, (P14064608812046808644.a n : ℤ) = A110451 n

end A110451

/-! ## A110451.P16789755901982136634

`2*n*C(Δ[n²], 2)+n`
-/

namespace A110451.P16789755901982136634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 + n

end

end A110451.P16789755901982136634

namespace A110451

/-- `2*n*C(Δ[n²], 2)+n` -/
def P16789755901982136634.Spec : Prop :=
  ∀ n, (P16789755901982136634.a n : ℤ) = A110451 n

end A110451

/-! ## A110451.P18027873391581410326

`2*n*C(2*n+1, 2)+n`
-/

namespace A110451.P18027873391581410326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.choose (2 * n + 1) 2) + n

end

end A110451.P18027873391581410326

namespace A110451

/-- `2*n*C(2*n+1, 2)+n` -/
def P18027873391581410326.Spec : Prop :=
  ∀ n, (P18027873391581410326.a n : ℤ) = A110451 n

theorem P18027873391581410326.correct : P18027873391581410326.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P18027873391581410326.a, A110451.P14386301386351783775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P3324462465436034746

`lcm(n+1+n, n*2*n)+n`
-/

namespace A110451.P3324462465436034746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1 + n) (n * (2 * n)) + n

end

end A110451.P3324462465436034746

namespace A110451

/-- `lcm(n+1+n, n*2*n)+n` -/
def P3324462465436034746.Spec : Prop :=
  ∀ n, (P3324462465436034746.a n : ℤ) = A110451 n

end A110451

/-! ## A110451.P10712387804677733796

`(2*n+1)*2*n*gcd(n, 2*n)+n`
-/

namespace A110451.P10712387804677733796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n * Nat.gcd n (2 * n)) + n

end

end A110451.P10712387804677733796

namespace A110451

/-- `(2*n+1)*2*n*gcd(n, 2*n)+n` -/
def P10712387804677733796.Spec : Prop :=
  ∀ n, (P10712387804677733796.a n : ℤ) = A110451 n

theorem P10712387804677733796.correct : P10712387804677733796.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P10712387804677733796.a, A110451.P14386301386351783775.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A110451

/-! ## A110451.P11570189784995901422

`(2*n+1)*n*and(2*n+1, 2*n)+n`
-/

namespace A110451.P11570189784995901422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (n * Nat.land (2 * n + 1) (2 * n)) + n

end

end A110451.P11570189784995901422

namespace A110451

/-- `(2*n+1)*n*and(2*n+1, 2*n)+n` -/
def P11570189784995901422.Spec : Prop :=
  ∀ n, (P11570189784995901422.a n : ℤ) = A110451 n

end A110451

/-! ## A110451.P9886907091403928605

`2*A099721(n)+n`
-/

namespace A110451.P9886907091403928605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099721 n + (n : ℤ)

end

end A110451.P9886907091403928605

namespace A110451

/-- `2*A099721(n)+n` -/
def P9886907091403928605.Spec : Prop :=
  ∀ n, P9886907091403928605.a n = A110451 n

theorem P9886907091403928605.correct : P9886907091403928605.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P9886907091403928605.a, A110451.P14386301386351783775.a, A099721, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P3403458043408812183

`A190705(n)/3+n`
-/

namespace A110451.P3403458043408812183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190705 n : ℚ) / 3 + (n : ℚ)

end

end A110451.P3403458043408812183

namespace A110451

/-- `A190705(n)/3+n` -/
def P3403458043408812183.Spec : Prop :=
  ∀ n, P3403458043408812183.a n = (A110451 n : ℚ)

theorem P3403458043408812183.correct : P3403458043408812183.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P3403458043408812183.a, A110451.P14386301386351783775.a, A190705, A190705.P1709839651688892883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P17593889589869980875

`A067389(n)+n^3`
-/

namespace A110451.P17593889589869980875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + (n ^ 3 : ℤ)

end

end A110451.P17593889589869980875

namespace A110451

/-- `A067389(n)+n^3` -/
def P17593889589869980875.Spec : Prop :=
  ∀ n, P17593889589869980875.a n = A110451 n

theorem P17593889589869980875.correct : P17593889589869980875.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P17593889589869980875.a, A110451.P14386301386351783775.a, A067389, A067389.P14097551594125527113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P1080636480799128129

`n*A002943(n)+n`
-/

namespace A110451.P1080636480799128129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002943 n + (n : ℤ)

end

end A110451.P1080636480799128129

namespace A110451

/-- `n*A002943(n)+n` -/
def P1080636480799128129.Spec : Prop :=
  ∀ n, P1080636480799128129.a n = A110451 n

theorem P1080636480799128129.correct : P1080636480799128129.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P1080636480799128129.a, A110451.P14386301386351783775.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P3763727927819714179

`Δ[A085537(n)]-n²`
-/

namespace A110451.P3763727927819714179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 2 : ℤ)

end

end A110451.P3763727927819714179

namespace A110451

/-- `Δ[A085537(n)]-n²` -/
def P3763727927819714179.Spec : Prop :=
  ∀ n, P3763727927819714179.a n = A110451 n

theorem P3763727927819714179.correct : P3763727927819714179.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P3763727927819714179.f1, A110451.P3763727927819714179.a, A110451.P14386301386351783775.a, A085537, A085537.P16655703013365461026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P16408869020561750858

`A084367(n)-2*n²`
-/

namespace A110451.P16408869020561750858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n - (2 * n ^ 2 : ℤ)

end

end A110451.P16408869020561750858

namespace A110451

/-- `A084367(n)-2*n²` -/
def P16408869020561750858.Spec : Prop :=
  ∀ n, P16408869020561750858.a n = A110451 n

theorem P16408869020561750858.correct : P16408869020561750858.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P16408869020561750858.a, A110451.P14386301386351783775.a, A084367, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P13742412515299036094

`n²*A016825(n)+n`
-/

namespace A110451.P13742412515299036094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A016825 n + (n : ℤ)

end

end A110451.P13742412515299036094

namespace A110451

/-- `n²*A016825(n)+n` -/
def P13742412515299036094.Spec : Prop :=
  ∀ n, P13742412515299036094.a n = A110451 n

theorem P13742412515299036094.correct : P13742412515299036094.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P13742412515299036094.a, A110451.P14386301386351783775.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P7504097418704434472

`n*A033951(n)-n²`
-/

namespace A110451.P7504097418704434472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033951 n - (n ^ 2 : ℤ)

end

end A110451.P7504097418704434472

namespace A110451

/-- `n*A033951(n)-n²` -/
def P7504097418704434472.Spec : Prop :=
  ∀ n, P7504097418704434472.a n = A110451 n

theorem P7504097418704434472.correct : P7504097418704434472.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P7504097418704434472.a, A110451.P14386301386351783775.a, A033951, A033951.P3925852296356009015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P13528477034198028863

`n*(A033586(n)+2)/2`
-/

namespace A110451.P13528477034198028863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (A033586 n + 2) : ℚ) / 2

end

end A110451.P13528477034198028863

namespace A110451

/-- `n*(A033586(n)+2)/2` -/
def P13528477034198028863.Spec : Prop :=
  ∀ n, P13528477034198028863.a n = (A110451 n : ℚ)

theorem P13528477034198028863.correct : P13528477034198028863.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P13528477034198028863.a, A110451.P14386301386351783775.a, A033586, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P5414302909212047361

`A033430(n)+A014105(n)`
-/

namespace A110451.P5414302909212047361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n + A014105 n

end

end A110451.P5414302909212047361

namespace A110451

/-- `A033430(n)+A014105(n)` -/
def P5414302909212047361.Spec : Prop :=
  ∀ n, P5414302909212047361.a n = A110451 n

theorem P5414302909212047361.correct : P5414302909212047361.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P5414302909212047361.a, A110451.P14386301386351783775.a, A014105, A014105.P182524374866796289.a, A033430, A033430.P5214425656551841819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P17728808605359147281

`A061804(n)+A000384(n)`
-/

namespace A110451.P17728808605359147281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A000384 n

end

end A110451.P17728808605359147281

namespace A110451

/-- `A061804(n)+A000384(n)` -/
def P17728808605359147281.Spec : Prop :=
  ∀ n, P17728808605359147281.a n = A110451 n

theorem P17728808605359147281.correct : P17728808605359147281.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P17728808605359147281.a, A110451.P14386301386351783775.a, A000384, A000384.P5392390561999168282.a, A061804, A061804.P16305426185761710400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P6892229163084857311

`A055112(n)+A015237(n)`
-/

namespace A110451.P6892229163084857311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A015237 n

end

end A110451.P6892229163084857311

namespace A110451

/-- `A055112(n)+A015237(n)` -/
def P6892229163084857311.Spec : Prop :=
  ∀ n, P6892229163084857311.a n = A110451 n

theorem P6892229163084857311.correct : P6892229163084857311.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P6892229163084857311.a, A110451.P14386301386351783775.a, A015237, A015237.P2392393478135424708.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-! ## A110451.P1921033084677432196

`A046092(n)+A035328(n)`
-/

namespace A110451.P1921033084677432196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A035328 n

end

end A110451.P1921033084677432196

namespace A110451

/-- `A046092(n)+A035328(n)` -/
def P1921033084677432196.Spec : Prop :=
  ∀ n, P1921033084677432196.a n = A110451 n

theorem P1921033084677432196.correct : P1921033084677432196.Spec := by
  intro n
  simp only [A110451, Nat.add_sub_cancel, A110451.P1921033084677432196.a, A110451.P14386301386351783775.a, A035328, A035328.P8981633171215695012.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A110451

/-!
# A110454: Largest composite number obtained by concatenation of parts of a distinct partition of n, or 0 if no such number exist.

The programs for A110454, there is no canonical definition to state claims against.
-/

/-! ## A110454.P15800188962668607129

`A132387(A222597(n+1)^A113001(n+1))`
-/

namespace A110454.P15800188962668607129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132387 (SequenceMachineLib.roundAway ((A222597 (n + 1) : ℚ) ^ (A113001 (n + 1) : ℤ))).toNat

end

end A110454.P15800188962668607129

/-! ## A110454.P12067036449114293684

`A071761(n+1)%A303067(A001316(n+1))`
-/

namespace A110454.P12067036449114293684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071761 (n + 1)) (A303067 (A001316 (n + 1)).toNat)

end

end A110454.P12067036449114293684

/-!
# A110457: a(n) is the least prime not already used such that the frequencies of the decimal digits in the first n terms are almost equal, i.e., for any two digits, their numbers of occurrences differ by no more than 1.

The programs for A110457, there is no canonical definition to state claims against.
-/

/-! ## A110457.P18355934677783070237

`p?[∑[A008288(A185664(3*n))]]`
-/

namespace A110457.P18355934677783070237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A185664 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110457.P18355934677783070237

/-!
# A110460: Least multiple of n such that every concatenation a(1)...a(i) for 1 <= i <= n is a perfect square.

The programs for A110460, there is no canonical definition to state claims against.
-/

/-! ## A110460.P7645579386042453228

`lcm(A033766(A000108(n)), A061110(n+1))`
-/

namespace A110460.P7645579386042453228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033766 (A000108 n).toNat) (A061110 (n + 1))

end

end A110460.P7645579386042453228

/-!
# A110461: a(1) = 5; for n>1, if a(n-1) = nk + r, 0 <= r < n, then a(n) = k^(n-r)*(k+1)^r.

The programs for A110461, there is no canonical definition to state claims against.
-/

/-! ## A110461.P18376817849791145006

`A330689(abs(or(n+1, 1-a(n-1))))` with `a(0)=5, a(1)=6, a(2)=8`
-/

namespace A110461.P18376817849791145006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 8] fun n a =>
  A330689 |Int.lor (n + 1 : ℤ) (1 - a (n - 1))|.toNat

end

end A110461.P18376817849791145006

/-!
# A110464: Oddly colossally abundant numbers.

The programs for A110464, there is no canonical definition to state claims against.
-/

/-! ## A110464.P4524023098499693045

`∏[A110465(n+1)]`
-/

namespace A110464.P4524023098499693045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110464.P4524023098499693045

/-! ## A110464.P11183960677274529377

`∏[p?[A000265(A073751(n+1))]]`
-/

namespace A110464.P11183960677274529377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A073751 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110464.P11183960677274529377

/-! ## A110464.P4694154556747968854

`∏[p?[A006005(A342011(n+1))]]`
-/

namespace A110464.P4694154556747968854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A342011 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110464.P4694154556747968854

/-! ## A110464.P8833764600427232896

`∏[p?[A022998(A073751(n+2))]]`
-/

namespace A110464.P8833764600427232896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A073751 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110464.P8833764600427232896

/-!
# A110465: Prime numbers that when multiplied in order yield the sequence of oddly colossally abundant numbers A110464.

The programs for A110465, there is no canonical definition to state claims against.
-/

/-! ## A110465.P15309570405597998745

`p?[A006005(A342011(n+1))]`
-/

namespace A110465.P15309570405597998745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A342011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110465.P15309570405597998745

/-! ## A110465.P3299189117275598433

`p?[A000265(A073751(n+1))]`
-/

namespace A110465.P3299189117275598433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A073751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110465.P3299189117275598433

/-! ## A110465.P6067954992967372538

`filter[A073751(n+1), A257531(#)]`
-/

namespace A110465.P6067954992967372538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A110465.P6067954992967372538

/-! ## A110465.P16782460229580351402

`filter[A073751(n+1), A039982(#)]`
-/

namespace A110465.P16782460229580351402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A110465.P16782460229580351402

/-! ## A110465.P11326360136632249210

`filter[A073751(n+1), A093719(#)]`
-/

namespace A110465.P11326360136632249210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A110465.P11326360136632249210

/-! ## A110465.P5459491122019046453

`filter[A073751(n+1), A105234(#)]`
-/

namespace A110465.P5459491122019046453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A110465.P5459491122019046453

/-! ## A110465.P5805929662298390934

`filter[A073751(n+1), A115971(#)]`
-/

namespace A110465.P5805929662298390934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A110465.P5805929662298390934

/-! ## A110465.P10577430112868633740

`filter[A073751(n+1), A127254(#)]`
-/

namespace A110465.P10577430112868633740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A110465.P10577430112868633740

/-! ## A110465.P9178653481696098931

`filter[A073751(n+1), A152822(#)]`
-/

namespace A110465.P9178653481696098931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A110465.P9178653481696098931

/-! ## A110465.P14487979660678130868

`filter[A073751(n+1), A254651(#)]`
-/

namespace A110465.P14487979660678130868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A110465.P14487979660678130868

/-! ## A110465.P14772085108993651870

`filter[A073751(n+1), A035263(#)]`
-/

namespace A110465.P14772085108993651870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A110465.P14772085108993651870

/-! ## A110465.P18119348937158438934

`filter[A073751(n+1), A174275(#)]`
-/

namespace A110465.P18119348937158438934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A110465.P18119348937158438934

/-! ## A110465.P12356672616315560560

`filter[A073751(n+1), A245656(#)]`
-/

namespace A110465.P12356672616315560560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A110465.P12356672616315560560

/-! ## A110465.P9256271619295532654

`p?[A022998(A073751(n+2))]`
-/

namespace A110465.P9256271619295532654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A073751 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110465.P9256271619295532654

/-! ## A110465.P10745762476986346557

`filter[A073751(n+1), A000035(#)]`
-/

namespace A110465.P10745762476986346557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A110465.P10745762476986346557

/-! ## A110465.P253584424044790535

`filter[A073751(n+1), A080545(#)]`
-/

namespace A110465.P253584424044790535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A110465.P253584424044790535

/-! ## A110465.P3255182932126317711

`filter[A073751(n+1), A102863(#)]`
-/

namespace A110465.P3255182932126317711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A110465.P3255182932126317711

/-! ## A110465.P7219605952248743129

`filter[A073751(n+1), A104106(#)]`
-/

namespace A110465.P7219605952248743129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A110465.P7219605952248743129

/-! ## A110465.P1748949606027993801

`filter[A073751(n+1), A141260(#)]`
-/

namespace A110465.P1748949606027993801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A110465.P1748949606027993801

/-! ## A110465.P2826920018888372969

`filter[A073751(n+1), A259044(#)]`
-/

namespace A110465.P2826920018888372969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A110465.P2826920018888372969

/-!
# A110468: a(n) = (2*n + 1)!/(n + 1).

The programs for A110468, the canonical program `A110468.P18066431316145297717` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110468 has offset 0).

The definition of A110468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110468.P18066431316145297717

`(2*n+1)!/(n+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A110468

/-- `(2*n+1)!/(n+1)` -/
def P18066431316145297717.Spec : Prop :=
  ∀ n, P18066431316145297717.a n = (A110468 n : ℚ)

end A110468

/-! ## A110468.P2613119591794339536

`record[xor(1, n)!]/(n+1)`
-/

namespace A110468.P2613119591794339536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A110468.P2613119591794339536

namespace A110468

/-- `record[xor(1, n)!]/(n+1)` -/
def P2613119591794339536.Spec : Prop :=
  ∀ n, P2613119591794339536.a n = (A110468 n : ℚ)

end A110468

/-! ## A110468.P17934615395799398240

`floor((n+1+n)!/(n+1))`
-/

namespace A110468.P17934615395799398240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1 + n) : ℚ) / (n + 1 : ℚ)⌋

end

end A110468.P17934615395799398240

namespace A110468

/-- `floor((n+1+n)!/(n+1))` -/
def P17934615395799398240.Spec : Prop :=
  ∀ n, P17934615395799398240.a n = A110468 n

end A110468

/-! ## A110468.P17982993940226072458

`ceil((n+1+n)!/(n+1))`
-/

namespace A110468.P17982993940226072458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1 + n) : ℚ) / (n + 1 : ℚ)⌉

end

end A110468.P17982993940226072458

namespace A110468

/-- `ceil((n+1+n)!/(n+1))` -/
def P17982993940226072458.Spec : Prop :=
  ∀ n, P17982993940226072458.a n = A110468 n

end A110468

/-! ## A110468.P12246758090980232178

`round((n+1+n)!/(n+1))`
-/

namespace A110468.P12246758090980232178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1 + n) : ℚ) / (n + 1 : ℚ))

end

end A110468.P12246758090980232178

namespace A110468

/-- `round((n+1+n)!/(n+1))` -/
def P12246758090980232178.Spec : Prop :=
  ∀ n, P12246758090980232178.a n = A110468 n

end A110468

/-!
# A110469: Convolution of J(n)*n! and n! where J(n)=A001045(n), n-th Jacobsthal number.

The programs for A110469, there is no canonical definition to state claims against.
-/

/-! ## A110469.P8961235908498292811

`A278084((n+1)*a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A110469.P8961235908498292811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A278084 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A110469.P8961235908498292811

/-!
# A110470: Triangle, read by rows, where the g.f. of diagonal n, D_n(x) and the g.f. of row n-1, R_{n-1}(x), are related by: D_n(x) = R_{n-1}(x) / (1-x)^(n+1) for n>0 and the g.f. of the main diagonal is D_0(x) = 1/(1-x).

The programs for A110470, there is no canonical definition to state claims against.
-/

/-! ## A110470.P1323173688474637214

`A000196(((A085478(n)+A046854(n))/2)²)`
-/

namespace A110470.P1323173688474637214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (((A085478 n + A046854 n : ℚ) / 2) ^ 2)).toNat

end

end A110470.P1323173688474637214

/-! ## A110470.P1565399713563775479

`(A085478(n)+A046854(n))/A020639(A033488(n+1))`
-/

namespace A110470.P1565399713563775479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n + A046854 n : ℚ) / (A020639 (A033488 (n + 1)).toNat : ℚ)

end

end A110470.P1565399713563775479

/-! ## A110470.P11475952500871261394

`A358992(A208510(n+1)%A352745(2*n+1))`
-/

namespace A110470.P11475952500871261394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358992 (Int.tmod (A208510 (n + 1)) (A352745 (2 * n + 1))).toNat

end

end A110470.P11475952500871261394

/-! ## A110470.P18170584912016556033

`A055080(n+1)-A055999(A185284(2*n+3))`
-/

namespace A110470.P18170584912016556033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055080 (n + 1) - A055999 (A185284 (2 * n + 3)).toNat

end

end A110470.P18170584912016556033

/-! ## A110470.P8399835375692010315

`and(A029950(A325196(3*n+2)), A055080(n+1))`
-/

namespace A110470.P8399835375692010315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029950 (A325196 (3 * n + 2)).toNat) (A055080 (n + 1))

end

end A110470.P8399835375692010315

/-!
# A110471: Prime analog of Baum-Sweet sequence: a(n) = 1 if binary representation of n contains no block of consecutive zeros of exactly prime length; otherwise a(n) = 0.

The programs for A110471, the canonical program `A110471.P10881528150893567747` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110471 has offset 0).

The definition of A110471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110471.P9979493123029686942

`ceil(sin(cosh(A087117(n))))`
-/

namespace A110471.P9979493123029686942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Real.cosh (A087117 n : ℝ))⌉

end

end A110471.P9979493123029686942

namespace A110471

/-- `ceil(sin(cosh(A087117(n))))` -/
def P9979493123029686942.Spec : Prop :=
  ∀ n, P9979493123029686942.a n = A110471 n

end A110471

/-! ## A110471.P17853767128636325212

`char[comp[A319302(n+1)]]`
-/

namespace A110471.P17853767128636325212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A110471.P17853767128636325212

namespace A110471

/-- `char[comp[A319302(n+1)]]` -/
def P17853767128636325212.Spec : Prop :=
  ∀ n, (P17853767128636325212.a n : ℤ) = A110471 n

end A110471

/-! ## A110471.P10881528150893567747

`(∑{e}[A087117(2*n+1), #]-1)²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A110471

/-- `(∑{e}[A087117(2*n+1), #]-1)²` -/
def P10881528150893567747.Spec : Prop :=
  ∀ n, P10881528150893567747.a n = A110471 n

theorem P10881528150893567747.correct : P10881528150893567747.Spec := by
  intro n
  simp only [A110471]

end A110471

/-! ## A110471.P14361297120141725634

`A325896(A087117(n))`
-/

namespace A110471.P14361297120141725634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325896 (A087117 n).toNat

end

end A110471.P14361297120141725634

namespace A110471

/-- `A325896(A087117(n))` -/
def P14361297120141725634.Spec : Prop :=
  ∀ n, P14361297120141725634.a n = A110471 n

end A110471

/-! ## A110471.P9056154426761576904

`A243753(A087117(n)²)`
-/

namespace A110471.P9056154426761576904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243753 (A087117 n ^ 2).toNat

end

end A110471.P9056154426761576904

namespace A110471

/-- `A243753(A087117(n)²)` -/
def P9056154426761576904.Spec : Prop :=
  ∀ n, P9056154426761576904.a n = A110471 n

end A110471

/-! ## A110471.P15125675151763278911

`A080995(A087117(n)+1)`
-/

namespace A110471.P15125675151763278911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A087117 n + 1).toNat

end

end A110471.P15125675151763278911

namespace A110471

/-- `A080995(A087117(n)+1)` -/
def P15125675151763278911.Spec : Prop :=
  ∀ n, P15125675151763278911.a n = A110471 n

end A110471

/-! ## A110471.P13867252937204691322

`A157686(A087117(n)+1)`
-/

namespace A110471.P13867252937204691322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (A087117 n + 1).toNat

end

end A110471.P13867252937204691322

namespace A110471

/-- `A157686(A087117(n)+1)` -/
def P13867252937204691322.Spec : Prop :=
  ∀ n, P13867252937204691322.a n = A110471 n

end A110471

/-! ## A110471.P12133664925458444551

`A328682(A087117(n)+2)`
-/

namespace A110471.P12133664925458444551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A087117 n + 2).toNat

end

end A110471.P12133664925458444551

namespace A110471

/-- `A328682(A087117(n)+2)` -/
def P12133664925458444551.Spec : Prop :=
  ∀ n, P12133664925458444551.a n = A110471 n

end A110471

/-! ## A110471.P14093173042382541187

`A357637(2*A087117(n))`
-/

namespace A110471.P14093173042382541187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357637 (2 * A087117 n).toNat

end

end A110471.P14093173042382541187

namespace A110471

/-- `A357637(2*A087117(n))` -/
def P14093173042382541187.Spec : Prop :=
  ∀ n, P14093173042382541187.a n = A110471 n

end A110471

/-! ## A110471.P12258698387196237603

`A030302(A087117(n)+5)`
-/

namespace A110471.P12258698387196237603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A087117 n + 5).toNat

end

end A110471.P12258698387196237603

namespace A110471

/-- `A030302(A087117(n)+5)` -/
def P12258698387196237603.Spec : Prop :=
  ∀ n, P12258698387196237603.a n = A110471 n

end A110471

/-! ## A110471.P10701522678703744311

`A327517(A087117(n)+14)`
-/

namespace A110471.P10701522678703744311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327517 (A087117 n + 14).toNat

end

end A110471.P10701522678703744311

namespace A110471

/-- `A327517(A087117(n)+14)` -/
def P10701522678703744311.Spec : Prop :=
  ∀ n, P10701522678703744311.a n = A110471 n

end A110471

/-! ## A110471.P10834265369381405244

`A011647(A087117(n)²)²`
-/

namespace A110471.P10834265369381405244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 (A087117 n ^ 2).toNat ^ 2

end

end A110471.P10834265369381405244

namespace A110471

/-- `A011647(A087117(n)²)²` -/
def P10834265369381405244.Spec : Prop :=
  ∀ n, P10834265369381405244.a n = A110471 n

end A110471

/-! ## A110471.P5466848537943526253

`A000166(∑{e}[A087117(n), #])`
-/

namespace A110471.P5466848537943526253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A110471.P5466848537943526253

namespace A110471

/-- `A000166(∑{e}[A087117(n), #])` -/
def P5466848537943526253.Spec : Prop :=
  ∀ n, P5466848537943526253.a n = A110471 n

end A110471

/-! ## A110471.P2975960650151598847

`A000607(∑{e}[A087117(n), #])`
-/

namespace A110471.P2975960650151598847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A110471.P2975960650151598847

namespace A110471

/-- `A000607(∑{e}[A087117(n), #])` -/
def P2975960650151598847.Spec : Prop :=
  ∀ n, P2975960650151598847.a n = A110471 n

end A110471

/-! ## A110471.P14546176320342241345

`A002865(∑{e}[A087117(n), #])`
-/

namespace A110471.P14546176320342241345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A110471.P14546176320342241345

namespace A110471

/-- `A002865(∑{e}[A087117(n), #])` -/
def P14546176320342241345.Spec : Prop :=
  ∀ n, P14546176320342241345.a n = A110471 n

end A110471

/-! ## A110471.P9153302172066303378

`A087117(∑{e}[A087117(n), #])`
-/

namespace A110471.P9153302172066303378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A110471.P9153302172066303378

namespace A110471

/-- `A087117(∑{e}[A087117(n), #])` -/
def P9153302172066303378.Spec : Prop :=
  ∀ n, P9153302172066303378.a n = A110471 n

end A110471

/-! ## A110471.P16072067509439456255

`A000009(A087117(n)+1)%2`
-/

namespace A110471.P16072067509439456255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A087117 n + 1).toNat) 2

end

end A110471.P16072067509439456255

namespace A110471

/-- `A000009(A087117(n)+1)%2` -/
def P16072067509439456255.Spec : Prop :=
  ∀ n, P16072067509439456255.a n = A110471 n

end A110471

/-! ## A110471.P5911538360438729683

`A000162(A087117(n)+1)%2`
-/

namespace A110471.P5911538360438729683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000162 (A087117 n + 1).toNat) 2

end

end A110471.P5911538360438729683

namespace A110471

/-- `A000162(A087117(n)+1)%2` -/
def P5911538360438729683.Spec : Prop :=
  ∀ n, P5911538360438729683.a n = A110471 n

end A110471

/-! ## A110471.P10984605486645622080

`A085405(A087117(n)+A087117(n)²)`
-/

namespace A110471.P10984605486645622080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A087117 n + A087117 n ^ 2).toNat

end

end A110471.P10984605486645622080

namespace A110471

/-- `A085405(A087117(n)+A087117(n)²)` -/
def P10984605486645622080.Spec : Prop :=
  ∀ n, P10984605486645622080.a n = A110471 n

end A110471

/-! ## A110471.P14399908158767908488

`A062756(A330036(A087117(2*n+1)))`
-/

namespace A110471.P14399908158767908488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A330036 (A087117 (2 * n + 1)).toNat).toNat

end

end A110471.P14399908158767908488

namespace A110471

/-- `A062756(A330036(A087117(2*n+1)))` -/
def P14399908158767908488.Spec : Prop :=
  ∀ n, P14399908158767908488.a n = A110471 n

end A110471

/-!
# A110472: Numbers n such that n in binary representation has a block of exactly a semiprime number of zeros.

The programs for A110472, there is no canonical definition to state claims against.
-/

/-! ## A110472.P3837800875837286689

`eq[1, A262696(A087117(n)!)]`
-/

namespace A110472.P3837800875837286689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262696 (Nat.factorial (A087117 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110472.P3837800875837286689

/-! ## A110472.P4072387166430647222

`eq[3, A263450(A087117(n)!)]`
-/

namespace A110472.P4072387166430647222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263450 (Nat.factorial (A087117 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110472.P4072387166430647222

/-! ## A110472.P1681009144288678728

`eq[3, A304455(A087117(n)!)]`
-/

namespace A110472.P1681009144288678728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (Nat.factorial (A087117 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110472.P1681009144288678728

/-! ## A110472.P6368192321141201262

`eq[A165012(A087117(n)), A165020(n+1)]`
-/

namespace A110472.P6368192321141201262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165012 (A087117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110472.P6368192321141201262

/-!
# A110473: Integers not in "array with primes".

The programs for A110473, there is no canonical definition to state claims against.
-/

/-! ## A110473.P8896124224679648279

`eq[ceil(acot(n)), A219964(n)]`
-/

namespace A110473.P8896124224679648279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110473.P8896124224679648279

/-! ## A110473.P7562158048104842627

`comp[n*(2-A069283(n))]`
-/

namespace A110473.P7562158048104842627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A069283 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A110473.P7562158048104842627

/-! ## A110473.P3867981099906100219

`eq[0, A304438(n+1)]+1`
-/

namespace A110473.P3867981099906100219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110473.P3867981099906100219

/-! ## A110473.P5435245766547895030

`eq[1, A219964(n+1)]+1`
-/

namespace A110473.P5435245766547895030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110473.P5435245766547895030

/-! ## A110473.P1703870140014872175

`eq[1, A369032(n+1)]+1`
-/

namespace A110473.P1703870140014872175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110473.P1703870140014872175

/-! ## A110473.P5272920652070228718

`eq[1, A369033(n+1)]+1`
-/

namespace A110473.P5272920652070228718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110473.P5272920652070228718

/-! ## A110473.P8573048413740724447

`lt[0, -a(A257990(n))]` with `a(0)=0, a(1)=1`
-/

namespace A110473.P8573048413740724447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  -f2 (A257990 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A110473.P8573048413740724447

/-! ## A110473.P13042845494987735295

`comp[A093641(n+2)-1]+1`
-/

namespace A110473.P13042845494987735295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A110473.P13042845494987735295

/-! ## A110473.P9089258443986750333

`record[gcd(C(2, n), A326776(n+2))]`
-/

namespace A110473.P9089258443986750333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A326776 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110473.P9089258443986750333

/-! ## A110473.P17716184758559047851

`eq[A054977(n), A219964(n)]`
-/

namespace A110473.P17716184758559047851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110473.P17716184758559047851

/-!
# A110474: Numbers whose binary representation has a block of exactly a nontrivial triangular number of zeros.

The programs for A110474, the canonical program `A110474.P9080698108410457901` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110474 has offset 1).

The definition of A110474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110474.P9080698108410457901

`lt[(A001248(A215314(n+1)+1)*A227350(n+1))%3, 1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A110474

/-- `lt[(A001248(A215314(n+1)+1)*A227350(n+1))%3, 1]+1` -/
def P9080698108410457901.Spec : Prop :=
  ∀ n, (P9080698108410457901.a n : ℤ) = A110474 (n + 1)

theorem P9080698108410457901.correct : P9080698108410457901.Spec := by
  intro n
  simp only [A110474, Nat.add_sub_cancel]

end A110474

/-! ## A110474.P7952628856502345871

`lt[(A158125(A245092(n+4))*A227350(n))%3, 1]`
-/

namespace A110474.P7952628856502345871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158125 (A245092 (n + 4)).toNat * A227350 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A110474.P7952628856502345871

namespace A110474

/-- `lt[(A158125(A245092(n+4))*A227350(n))%3, 1]` -/
def P7952628856502345871.Spec : Prop :=
  ∀ n, (P7952628856502345871.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P17937640144767316896

`eq[(A227350(n)+2)%3, A000005(A040984(n+1))]`
-/

namespace A110474.P17937640144767316896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227350 n + 2) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A040984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110474.P17937640144767316896

namespace A110474

/-- `eq[(A227350(n)+2)%3, A000005(A040984(n+1))]` -/
def P17937640144767316896.Spec : Prop :=
  ∀ n, (P17937640144767316896.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P12654472619632958459

`lt[(A000002(A262981(n+1))*A227350(n))%3, 1]`
-/

namespace A110474.P12654472619632958459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (A262981 (n + 1)).toNat * A227350 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A110474.P12654472619632958459

namespace A110474

/-- `lt[(A000002(A262981(n+1))*A227350(n))%3, 1]` -/
def P12654472619632958459.Spec : Prop :=
  ∀ n, (P12654472619632958459.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P4041519518056614882

`lt[(A016971(A262981(n+4))*A227350(n))%3, 1]`
-/

namespace A110474.P4041519518056614882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 (A262981 (n + 4)).toNat * A227350 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A110474.P4041519518056614882

namespace A110474

/-- `lt[(A016971(A262981(n+4))*A227350(n))%3, 1]` -/
def P4041519518056614882.Spec : Prop :=
  ∀ n, (P4041519518056614882.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P15983068690789023993

`lt[(A227349(A000005((n+1)²+1))*A227350(n))%3, 1]`
-/

namespace A110474.P15983068690789023993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227349 (A000005 ((n + 1) ^ 2 + 1)).toNat * A227350 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A110474.P15983068690789023993

namespace A110474

/-- `lt[(A227349(A000005((n+1)²+1))*A227350(n))%3, 1]` -/
def P15983068690789023993.Spec : Prop :=
  ∀ n, (P15983068690789023993.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P1073808750407460558

`lt[(A000002(A027926(n))*A227350(n))%3, 1]`
-/

namespace A110474.P1073808750407460558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 (A027926 n).toNat * A227350 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A110474.P1073808750407460558

namespace A110474

/-- `lt[(A000002(A027926(n))*A227350(n))%3, 1]` -/
def P1073808750407460558.Spec : Prop :=
  ∀ n, (P1073808750407460558.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P2851396928636997922

`eq[3, A020639(A002450(A227350(n)))]`
-/

namespace A110474.P2851396928636997922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002450 (A227350 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110474.P2851396928636997922

namespace A110474

/-- `eq[3, A020639(A002450(A227350(n)))]` -/
def P2851396928636997922.Spec : Prop :=
  ∀ n, (P2851396928636997922.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P17605543995928396997

`eq[0, A071035(A087117(n)!)]`
-/

namespace A110474.P17605543995928396997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 (Nat.factorial (A087117 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110474.P17605543995928396997

namespace A110474

/-- `eq[0, A071035(A087117(n)!)]` -/
def P17605543995928396997.Spec : Prop :=
  ∀ n, (P17605543995928396997.a n : ℤ) = A110474 (n + 1)

end A110474

/-! ## A110474.P5197440664415325923

`eq[1, A040571(A087117(n)!)]`
-/

namespace A110474.P5197440664415325923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040571 (Nat.factorial (A087117 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A110474.P5197440664415325923

namespace A110474

/-- `eq[1, A040571(A087117(n)!)]` -/
def P5197440664415325923.Spec : Prop :=
  ∀ n, (P5197440664415325923.a n : ℤ) = A110474 (n + 1)

end A110474

/-!
# A110475: Number of symbols '*' and '^' to write the canonical prime factorization of n.

The programs for A110475, the canonical program `A110475.P12090647268886317470` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110475 has offset 1).

The definition of A110475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110475.P12704212672129249291

`(A238949(n+1)+n)%(n+1)`
-/

namespace A110475.P12704212672129249291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238949 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A110475.P12704212672129249291

namespace A110475

/-- `(A238949(n+1)+n)%(n+1)` -/
def P12704212672129249291.Spec : Prop :=
  ∀ n, P12704212672129249291.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P12090647268886317470

`A252736(A007948(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A110475

/-- `A252736(A007948(n+1))` -/
def P12090647268886317470.Spec : Prop :=
  ∀ n, P12090647268886317470.a n = A110475 (n + 1)

theorem P12090647268886317470.correct : P12090647268886317470.Spec := by
  intro n
  simp only [A110475, Nat.add_sub_cancel]

end A110475

/-! ## A110475.P14421098262686828980

`A238949(n+1)+A057428(n)`
-/

namespace A110475.P14421098262686828980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) + A057428 n

end

end A110475.P14421098262686828980

namespace A110475

/-- `A238949(n+1)+A057428(n)` -/
def P14421098262686828980.Spec : Prop :=
  ∀ n, P14421098262686828980.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P10679175663530067931

`A238949(n+1)-A057427(n)`
-/

namespace A110475.P10679175663530067931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) - A057427 n

end

end A110475.P10679175663530067931

namespace A110475

/-- `A238949(n+1)-A057427(n)` -/
def P10679175663530067931.Spec : Prop :=
  ∀ n, P10679175663530067931.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P6314156124824855894

`A297155(n+1)+A056170(n+1)`
-/

namespace A110475.P6314156124824855894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) + A056170 (n + 1)

end

end A110475.P6314156124824855894

namespace A110475

/-- `A297155(n+1)+A056170(n+1)` -/
def P6314156124824855894.Spec : Prop :=
  ∀ n, P6314156124824855894.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P17816920956010452141

`A056239(A073184(n+1))-A057427(n)`
-/

namespace A110475.P17816920956010452141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A073184 (n + 1)).toNat - A057427 n

end

end A110475.P17816920956010452141

namespace A110475

/-- `A056239(A073184(n+1))-A057427(n)` -/
def P17816920956010452141.Spec : Prop :=
  ∀ n, P17816920956010452141.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P2775811289194617099

`A056170(n+1)+A001221(A028234(n+1))`
-/

namespace A110475.P2775811289194617099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A001221 (A028234 (n + 1)).toNat

end

end A110475.P2775811289194617099

namespace A110475

/-- `A056170(n+1)+A001221(A028234(n+1))` -/
def P2775811289194617099.Spec : Prop :=
  ∀ n, P2775811289194617099.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P17408698889251936278

`A056170(n+1)+A048105(A034444(n+1))`
-/

namespace A110475.P17408698889251936278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A048105 (A034444 (n + 1)).toNat

end

end A110475.P17408698889251936278

namespace A110475

/-- `A056170(n+1)+A048105(A034444(n+1))` -/
def P17408698889251936278.Spec : Prop :=
  ∀ n, P17408698889251936278.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P7506609009309921362

`A297155(n+1)+A001221(A003557(n+1))`
-/

namespace A110475.P7506609009309921362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) + A001221 (A003557 (n + 1)).toNat

end

end A110475.P7506609009309921362

namespace A110475

/-- `A297155(n+1)+A001221(A003557(n+1))` -/
def P7506609009309921362.Spec : Prop :=
  ∀ n, P7506609009309921362.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P15914880212178567869

`A238949(n+1)-A001222(A020639(n+1))`
-/

namespace A110475.P15914880212178567869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) - A001222 (A020639 (n + 1)).toNat

end

end A110475.P15914880212178567869

namespace A110475

/-- `A238949(n+1)-A001222(A020639(n+1))` -/
def P15914880212178567869.Spec : Prop :=
  ∀ n, P15914880212178567869.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P13651832594036993603

`A238949(n+1)-A001222(A027746(n+1))`
-/

namespace A110475.P13651832594036993603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) - A001222 (A027746 (n + 1)).toNat

end

end A110475.P13651832594036993603

namespace A110475

/-- `A238949(n+1)-A001222(A027746(n+1))` -/
def P13651832594036993603.Spec : Prop :=
  ∀ n, P13651832594036993603.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P12976042896585457550

`A238949(n+1)-A238949(A027748(n+1))`
-/

namespace A110475.P12976042896585457550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) - A238949 (A027748 (n + 1)).toNat

end

end A110475.P12976042896585457550

namespace A110475

/-- `A238949(n+1)-A238949(A027748(n+1))` -/
def P12976042896585457550.Spec : Prop :=
  ∀ n, P12976042896585457550.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P4072236866427914348

`A046660(A034444(n+1)*A323308(n+1))`
-/

namespace A110475.P4072236866427914348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A034444 (n + 1) * A323308 (n + 1)).toNat

end

end A110475.P4072236866427914348

namespace A110475

/-- `A046660(A034444(n+1)*A323308(n+1))` -/
def P4072236866427914348.Spec : Prop :=
  ∀ n, P4072236866427914348.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P665858035031333235

`A048105(A034444(n+1)*A323308(n+1))`
-/

namespace A110475.P665858035031333235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A034444 (n + 1) * A323308 (n + 1)).toNat

end

end A110475.P665858035031333235

namespace A110475

/-- `A048105(A034444(n+1)*A323308(n+1))` -/
def P665858035031333235.Spec : Prop :=
  ∀ n, P665858035031333235.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P7042656684038516745

`A368251(A034444(n+1)*A323308(n+1))`
-/

namespace A110475.P7042656684038516745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368251 (A034444 (n + 1) * A323308 (n + 1)).toNat

end

end A110475.P7042656684038516745

namespace A110475

/-- `A368251(A034444(n+1)*A323308(n+1))` -/
def P7042656684038516745.Spec : Prop :=
  ∀ n, P7042656684038516745.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P1800874182518844965

`A001221(n+1)+A056170(n+1)-A057427(n)`
-/

namespace A110475.P1800874182518844965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A056170 (n + 1) - A057427 n)

end

end A110475.P1800874182518844965

namespace A110475

/-- `A001221(n+1)+A056170(n+1)-A057427(n)` -/
def P1800874182518844965.Spec : Prop :=
  ∀ n, P1800874182518844965.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P7571540021301847159

`A001221(A000188(n+1))+A001221(A028234(n+1))`
-/

namespace A110475.P7571540021301847159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000188 (n + 1)).toNat + A001221 (A028234 (n + 1)).toNat

end

end A110475.P7571540021301847159

namespace A110475

/-- `A001221(A000188(n+1))+A001221(A028234(n+1))` -/
def P7571540021301847159.Spec : Prop :=
  ∀ n, P7571540021301847159.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P10581683191572309456

`A001221(A003557(n+1))+A001221(A028234(n+1))`
-/

namespace A110475.P10581683191572309456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (n + 1)).toNat + A001221 (A028234 (n + 1)).toNat

end

end A110475.P10581683191572309456

namespace A110475

/-- `A001221(A003557(n+1))+A001221(A028234(n+1))` -/
def P10581683191572309456.Spec : Prop :=
  ∀ n, P10581683191572309456.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P8856208293322296035

`A001221(A003557(n+1))+A001221(A051119(n+1))`
-/

namespace A110475.P8856208293322296035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003557 (n + 1)).toNat + A001221 (A051119 (n + 1)).toNat

end

end A110475.P8856208293322296035

namespace A110475

/-- `A001221(A003557(n+1))+A001221(A051119(n+1))` -/
def P8856208293322296035.Spec : Prop :=
  ∀ n, P8856208293322296035.a n = A110475 (n + 1)

end A110475

/-! ## A110475.P9717656682322320364

`A238949(A233583(n+1)+1)-1`
-/

namespace A110475.P9717656682322320364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A233583 (n + 1) + 1).toNat - 1

end

end A110475.P9717656682322320364

namespace A110475

/-- `A238949(A233583(n+1)+1)-1` -/
def P9717656682322320364.Spec : Prop :=
  ∀ n, P9717656682322320364.a n = A110475 (n + 1)

end A110475

/-!
# A110477: a(n) = Sum_{k=1..n} k*(prime(k) - k).

The programs for A110477, the canonical program `A110477.P9367884061558227820` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110477 has offset 1).

The definition of A110477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110477.P9367884061558227820

`(n+1)*(n+2)*(3*A000040(n+1)-2*(n+1)-1)/6`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110477

/-- `(n+1)*(n+2)*(3*A000040(n+1)-2*(n+1)-1)/6` -/
def P9367884061558227820.Spec : Prop :=
  ∀ n, P9367884061558227820.a n = (A110477 (n + 1) : ℚ)

end A110477

/-! ## A110477.P17283042863978528867

`A196421(n+1)-∑[(n+1)²]`
-/

namespace A110477.P17283042863978528867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196421 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A110477.P17283042863978528867

namespace A110477

/-- `A196421(n+1)-∑[(n+1)²]` -/
def P17283042863978528867.Spec : Prop :=
  ∀ n, P17283042863978528867.a n = A110477 (n + 1)

end A110477

/-! ## A110477.P7027275929023942871

`(n/3+A065890(n+1)+1)*∑[n+1]`
-/

namespace A110477.P7027275929023942871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + (A065890 (n + 1) + 1 : ℚ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A110477.P7027275929023942871

namespace A110477

/-- `(n/3+A065890(n+1)+1)*∑[n+1]` -/
def P7027275929023942871.Spec : Prop :=
  ∀ n, P7027275929023942871.a n = (A110477 (n + 1) : ℚ)

end A110477

/-! ## A110477.P8420225142418887401

`A000040(n+1)*∑[n+1]-∑[(n+1)²]`
-/

namespace A110477.P8420225142418887401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110477.P8420225142418887401

namespace A110477

/-- `A000040(n+1)*∑[n+1]-∑[(n+1)²]` -/
def P8420225142418887401.Spec : Prop :=
  ∀ n, P8420225142418887401.a n = A110477 (n + 1)

end A110477

/-! ## A110477.P14186198859574567499

`A000292(n)+∑[n+1]*A014689(n+1)`
-/

namespace A110477.P14186198859574567499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A014689 (n + 1)

end

end A110477.P14186198859574567499

namespace A110477

/-- `A000292(n)+∑[n+1]*A014689(n+1)` -/
def P14186198859574567499.Spec : Prop :=
  ∀ n, P14186198859574567499.a n = A110477 (n + 1)

end A110477

/-! ## A110477.P10955436490596949373

`Δ[A007504(n)]*A000217(n+1)-∑[(n+1)²]`
-/

namespace A110477.P10955436490596949373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110477.P10955436490596949373

namespace A110477

/-- `Δ[A007504(n)]*A000217(n+1)-∑[(n+1)²]` -/
def P10955436490596949373.Spec : Prop :=
  ∀ n, P10955436490596949373.a n = A110477 (n + 1)

end A110477

/-! ## A110477.P9877950283616462962

`∑[n+1]*A207790(2*(n+1))-∑[(n+1)²]`
-/

namespace A110477.P9877950283616462962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A207790 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110477.P9877950283616462962

namespace A110477

/-- `∑[n+1]*A207790(2*(n+1))-∑[(n+1)²]` -/
def P9877950283616462962.Spec : Prop :=
  ∀ n, P9877950283616462962.a n = A110477 (n + 1)

end A110477

/-! ## A110477.P8265788472584203503

`C(n+2, 2)*record[A014963(n+2)]-∑[(n+1)²]`
-/

namespace A110477.P8265788472584203503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A110477.P8265788472584203503

namespace A110477

/-- `C(n+2, 2)*record[A014963(n+2)]-∑[(n+1)²]` -/
def P8265788472584203503.Spec : Prop :=
  ∀ n, P8265788472584203503.a n = A110477 (n + 1)

end A110477

/-!
# A110480: Numbers n such that (n^2+6)/5 is prime.

The programs for A110480, there is no canonical definition to state claims against.
-/

/-! ## A110480.P1827254071636686203

`sqrt(A110481(n+1))`
-/

namespace A110480.P1827254071636686203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110481 (n + 1) : ℝ)

end

end A110480.P1827254071636686203

/-! ## A110480.P4866773777202459949

`sqrt(5*A110482(n+1)-6)`
-/

namespace A110480.P4866773777202459949
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (5 * A110482 (n + 1) - 6 : ℝ)

end

end A110480.P4866773777202459949

/-! ## A110480.P9772606151718464471

`root(5*A110482(n+1)-6, A040001(2*(n+1)))`
-/

namespace A110480.P9772606151718464471
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 * A110482 (n + 1) - 6 : ℝ) ^ (1 / (A040001 (2 * (n + 1)) : ℝ))

end

end A110480.P9772606151718464471

/-! ## A110480.P9375303233942313168

`root(5*A110482(n+1)-6, 2%A129316(n+1))`
-/

namespace A110480.P9375303233942313168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 * A110482 (n + 1) - 6 : ℝ) ^ (1 / (Int.tmod 2 (A129316 (n + 1)) : ℝ))

end

end A110480.P9375303233942313168

/-!
# A110481: Squares of the form 5p - 6, where p is prime.

The programs for A110481, there is no canonical definition to state claims against.
-/

/-! ## A110481.P7796197072256577825

`5*A110482(n+1)-6`
-/

namespace A110481.P7796197072256577825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A110482 (n + 1) - 6

end

end A110481.P7796197072256577825

/-! ## A110481.P15178019314204478569

`A110480(n+1)²`
-/

namespace A110481.P15178019314204478569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1) ^ 2

end

end A110481.P15178019314204478569

/-! ## A110481.P11448944055055726354

`A110480(-xor(n, -1))^2`
-/

namespace A110481.P11448944055055726354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A110481.P11448944055055726354

/-! ## A110481.P8729275502882140657

`A002620(2*A110480(n+1))`
-/

namespace A110481.P8729275502882140657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A110480 (n + 1)).toNat

end

end A110481.P8729275502882140657

/-! ## A110481.P17139176765657805224

`A008794(2*A110480(n+1))`
-/

namespace A110481.P17139176765657805224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A110480 (n + 1)).toNat

end

end A110481.P17139176765657805224

/-!
# A110482: Primes p such that 5*p - 6 is square.

The programs for A110482, there is no canonical definition to state claims against.
-/

/-! ## A110482.P3192096761886394507

`(A110481(n+1)+6)/5`
-/

namespace A110482.P3192096761886394507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110481 (n + 1) + 6 : ℚ) / 5

end

end A110482.P3192096761886394507

/-! ## A110482.P7708750302534929301

`A008738(A110480(n+1))+1`
-/

namespace A110482.P7708750302534929301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (A110480 (n + 1)).toNat + 1

end

end A110482.P7708750302534929301

/-! ## A110482.P4125953926919561762

`A008812(A110480(n+1)-1)`
-/

namespace A110482.P4125953926919561762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008812 (A110480 (n + 1) - 1).toNat

end

end A110482.P4125953926919561762

/-! ## A110482.P13732655855260706841

`or(A010693(n), A118015(A110480(n+1)))`
-/

namespace A110482.P13732655855260706841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010693 n) (A118015 (A110480 (n + 1)).toNat)

end

end A110482.P13732655855260706841

/-! ## A110482.P14567181020425076487

`A118015(A110480(n+1))+A020639(A005408(n)+1)`
-/

namespace A110482.P14567181020425076487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (A110480 (n + 1)).toNat + A020639 (A005408 n + 1).toNat

end

end A110482.P14567181020425076487

/-! ## A110482.P12745371020940724474

`A118015(A110480(n+1))+1-A317939(A001358(n+1))`
-/

namespace A110482.P12745371020940724474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (A110480 (n + 1)).toNat + 1 - A317939 (A001358 (n + 1)).toNat

end

end A110482.P12745371020940724474

/-! ## A110482.P1727810116591769082

`A008807(2*(A110480(n+1)-1))`
-/

namespace A110482.P1727810116591769082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008807 (2 * (A110480 (n + 1) - 1)).toNat

end

end A110482.P1727810116591769082

/-! ## A110482.P1648583850527389068

`A008807(A110480(n+1)+A110480(n+1)-2)`
-/

namespace A110482.P1648583850527389068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008807 (A110480 (n + 1) + (A110480 (n + 1) - 2)).toNat

end

end A110482.P1648583850527389068

/-! ## A110482.P8104567549419312544

`p?[∑[n*gcd(2, n)*gcd(2, n)]+2]`
-/

namespace A110482.P8104567549419312544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n * Nat.gcd 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A110482.P8104567549419312544

/-! ## A110482.P12127815512982199732

`p?[A195162(n)+2]`
-/

namespace A110482.P12127815512982199732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110482.P12127815512982199732

/-!
# A110484: Squares of the form p*q + p + q + 2, where p and q are primes.

The programs for A110484, there is no canonical definition to state claims against.
-/

/-! ## A110484.P12008796345522337928

`∩[A016813(A243937(n+1)), n²]`
-/

namespace A110484.P12008796345522337928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A243937 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A110484.P12008796345522337928

/-! ## A110484.P18429456855947000296

`∩[A000290(n), A016813(A243937(n+1))]`
-/

namespace A110484.P18429456855947000296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A243937 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110484.P18429456855947000296

/-! ## A110484.P8016209917223315864

`∩[A016754(n), A016813(A243937(n+1))]`
-/

namespace A110484.P8016209917223315864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A243937 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110484.P8016209917223315864

/-! ## A110484.P7348556410423799223

`∪[A088520(3*n+4), A088502(n+1)]²`
-/

namespace A110484.P7348556410423799223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088520 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A110484.P7348556410423799223

/-! ## A110484.P16944665771531678062

`(A324846(n+3)%A253825(2*(n+1)))²`
-/

namespace A110484.P16944665771531678062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324846 (n + 3)) (A253825 (2 * (n + 1))) ^ 2

end

end A110484.P16944665771531678062

/-!
# A110485: n^2 followed by n followed by n^4 followed by n^3.

The programs for A110485, the canonical program `A110485.P11135789409240485846` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110485 has offset 1).

The definition of A110485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110485.P11135789409240485846

`A110001(xor(1, n)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A110485

/-- `A110001(xor(1, n)+1)` -/
def P11135789409240485846.Spec : Prop :=
  ∀ n, P11135789409240485846.a n = A110485 (n + 1)

theorem P11135789409240485846.correct : P11135789409240485846.Spec := by
  intro n
  simp only [A110485, Nat.add_sub_cancel]

end A110485

/-! ## A110485.P17652642388352936922

`A110001((-1)^n+n+1)`
-/

namespace A110485.P17652642388352936922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A110485.P17652642388352936922

namespace A110485

/-- `A110001((-1)^n+n+1)` -/
def P17652642388352936922.Spec : Prop :=
  ∀ n, P17652642388352936922.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P14604563708056661084

`A110650(A116966(n))`
-/

namespace A110485.P14604563708056661084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A116966 n).toNat

end

end A110485.P14604563708056661084

namespace A110485

/-- `A110650(A116966(n))` -/
def P14604563708056661084.Spec : Prop :=
  ∀ n, P14604563708056661084.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P12723936887397634802

`A110652(A263449(n))`
-/

namespace A110485.P12723936887397634802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110652 (A263449 n).toNat

end

end A110485.P12723936887397634802

namespace A110485

/-- `A110652(A263449(n))` -/
def P12723936887397634802.Spec : Prop :=
  ∀ n, P12723936887397634802.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P1819173586717585132

`A110653(A056699(n+1))`
-/

namespace A110485.P1819173586717585132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A056699 (n + 1)).toNat

end

end A110485.P1819173586717585132

namespace A110485

/-- `A110653(A056699(n+1))` -/
def P1819173586717585132.Spec : Prop :=
  ∀ n, P1819173586717585132.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P921572401917705701

`A110003(A067060(n+1))`
-/

namespace A110485.P921572401917705701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A067060 (n + 1)).toNat

end

end A110485.P921572401917705701

namespace A110485

/-- `A110003(A067060(n+1))` -/
def P921572401917705701.Spec : Prop :=
  ∀ n, P921572401917705701.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P16674645356204781226

`A110622(A133256(n+1))`
-/

namespace A110485.P16674645356204781226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A133256 (n + 1)).toNat

end

end A110485.P16674645356204781226

namespace A110485

/-- `A110622(A133256(n+1))` -/
def P16674645356204781226.Spec : Prop :=
  ∀ n, P16674645356204781226.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P6361712458865747127

`A110651(A284307(n+1))`
-/

namespace A110485.P6361712458865747127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A284307 (n + 1)).toNat

end

end A110485.P6361712458865747127

namespace A110485

/-- `A110651(A284307(n+1))` -/
def P6361712458865747127.Spec : Prop :=
  ∀ n, P6361712458865747127.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P4312599025749909623

`A110009(A292576(n+1))`
-/

namespace A110485.P4312599025749909623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A292576 (n + 1)).toNat

end

end A110485.P4312599025749909623

namespace A110485

/-- `A110009(A292576(n+1))` -/
def P4312599025749909623.Spec : Prop :=
  ∀ n, P4312599025749909623.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P12727579942320895243

`A065033(A008619(n))^-or(n+2, -4)`
-/

namespace A110485.P12727579942320895243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (A008619 n).toNat : ℚ) ^ (-Int.lor (n + 2 : ℤ) (-4) : ℤ)

end

end A110485.P12727579942320895243

namespace A110485

/-- `A065033(A008619(n))^-or(n+2, -4)` -/
def P12727579942320895243.Spec : Prop :=
  ∀ n, P12727579942320895243.a n = (A110485 (n + 1) : ℚ)

end A110485

/-! ## A110485.P13285260833762967339

`A110005(A080412(n+1))`
-/

namespace A110485.P13285260833762967339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A080412 (n + 1)).toNat

end

end A110485.P13285260833762967339

namespace A110485

/-- `A110005(A080412(n+1))` -/
def P13285260833762967339.Spec : Prop :=
  ∀ n, P13285260833762967339.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P11378927018058290727

`A110003(A115659(n+2))`
-/

namespace A110485.P11378927018058290727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (A115659 (n + 2)).toNat

end

end A110485.P11378927018058290727

namespace A110485

/-- `A110003(A115659(n+2))` -/
def P11378927018058290727.Spec : Prop :=
  ∀ n, P11378927018058290727.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P14797220015426498149

`A110005(A116966(n+1)-1)`
-/

namespace A110485.P14797220015426498149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A116966 (n + 1) - 1).toNat

end

end A110485.P14797220015426498149

namespace A110485

/-- `A110005(A116966(n+1)-1)` -/
def P14797220015426498149.Spec : Prop :=
  ∀ n, P14797220015426498149.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P2676710170924071361

`A110650(A133256(n+2)-1)`
-/

namespace A110485.P2676710170924071361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (A133256 (n + 2) - 1).toNat

end

end A110485.P2676710170924071361

namespace A110485

/-- `A110650(A133256(n+2)-1)` -/
def P2676710170924071361.Spec : Prop :=
  ∀ n, P2676710170924071361.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P13978060703142158226

`A110009(A284307(n+2)-1)`
-/

namespace A110485.P13978060703142158226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110009 (A284307 (n + 2) - 1).toNat

end

end A110485.P13978060703142158226

namespace A110485

/-- `A110009(A284307(n+2)-1)` -/
def P13978060703142158226.Spec : Prop :=
  ∀ n, P13978060703142158226.a n = A110485 (n + 1)

end A110485

/-! ## A110485.P12631237448740505869

`A110005(n+1)/A110001(n+2)*A110003(n+2)`
-/

namespace A110485.P12631237448740505869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110005 (n + 1) : ℚ) / (A110001 (n + 2) : ℚ) * (A110003 (n + 2) : ℚ)

end

end A110485.P12631237448740505869

namespace A110485

/-- `A110005(n+1)/A110001(n+2)*A110003(n+2)` -/
def P12631237448740505869.Spec : Prop :=
  ∀ n, P12631237448740505869.a n = (A110485 (n + 1) : ℚ)

end A110485

/-! ## A110485.P15535456134130756270

`A110005(n+1)/A110004(n+2)*A110008(n+2)`
-/

namespace A110485.P15535456134130756270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110005 (n + 1) : ℚ) / (A110004 (n + 2) : ℚ) * (A110008 (n + 2) : ℚ)

end

end A110485.P15535456134130756270

namespace A110485

/-- `A110005(n+1)/A110004(n+2)*A110008(n+2)` -/
def P15535456134130756270.Spec : Prop :=
  ∀ n, P15535456134130756270.a n = (A110485 (n + 1) : ℚ)

end A110485

/-!
# A110487: Squares of the form p*q - p - q + 2, where p and q are primes.

The programs for A110487, there is no canonical definition to state claims against.
-/

/-! ## A110487.P2327225957939034284

`∩[A323550(n+1), n²]`
-/

namespace A110487.P2327225957939034284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323550 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A110487.P2327225957939034284

/-! ## A110487.P5658205051082644883

`∩[A000290(n), A323550(n+1)]`
-/

namespace A110487.P5658205051082644883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110487.P5658205051082644883

/-! ## A110487.P11424657777850025287

`∩[A016754(n), A323550(n+1)]`
-/

namespace A110487.P11424657777850025287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110487.P11424657777850025287

/-! ## A110487.P4122561022396853694

`∩[A081346(n), A323550(n+1)]`
-/

namespace A110487.P4122561022396853694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110487.P4122561022396853694

/-! ## A110487.P6632589735681123284

`∩[A081351(n), A323550(n+1)]`
-/

namespace A110487.P6632589735681123284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110487.P6632589735681123284

/-!
# A110488: A number triangle based on the Catalan numbers.

The programs for A110488, there is no canonical definition to state claims against.
-/

/-! ## A110488.P2505402078254079595

`A076038(∑[2*n]%comp[∑[n]])`
-/

namespace A110488.P2505402078254079595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076038 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A110488.P2505402078254079595

/-! ## A110488.P9232132771746315396

`A067345(n+1-round(sqrt(2*n)))`
-/

namespace A110488.P9232132771746315396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067345 ((n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A110488.P9232132771746315396

/-! ## A110488.P10008093201799939421

`A076038(∑[char[∑[n]]]²-(n+1))`
-/

namespace A110488.P10008093201799939421
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076038 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A110488.P10008093201799939421

/-! ## A110488.P7154885540314513950

`or(char[2], A076038(A061579(n)))`
-/

namespace A110488.P7154885540314513950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A076038 (A061579 n).toNat)

end

end A110488.P7154885540314513950

/-! ## A110488.P13068708892873307014

`A076037(A099375(n)+1+n)`
-/

namespace A110488.P13068708892873307014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076037 (A099375 n + 1 + (n : ℤ)).toNat

end

end A110488.P13068708892873307014

/-! ## A110488.P5610650118694311066

`A076037(2*A004736(n+1)+n)`
-/

namespace A110488.P5610650118694311066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076037 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A110488.P5610650118694311066

/-! ## A110488.P4571593209174984833

`ceil(1/A000041(n))*A076038(A061579(n))`
-/

namespace A110488.P4571593209174984833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A076038 (A061579 n).toNat

end

end A110488.P4571593209174984833

/-! ## A110488.P8898790285590313240

`A076038(A061579(n))+A001221(gcd(n, n+1))`
-/

namespace A110488.P8898790285590313240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076038 (A061579 n).toNat + A001221 (Nat.gcd n (n + 1))

end

end A110488.P8898790285590313240

/-! ## A110488.P1513523830196231298

`A007318(∑[n])*A076038(A061579(n))`
-/

namespace A110488.P1513523830196231298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A076038 (A061579 n).toNat

end

end A110488.P1513523830196231298

/-!
# A110489: Row sums of a triangle based on the Catalan numbers.

The programs for A110489, there is no canonical definition to state claims against.
-/

/-! ## A110489.P8042010956470850489

`A005425(n)-A241825(A000332(n))`
-/

namespace A110489.P8042010956470850489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 n - A241825 (A000332 n).toNat

end

end A110489.P8042010956470850489

/-! ## A110489.P8178681062642016055

`∑[or(floor(2*n/5), A233970(2^((n-1)%(n+1))))]`
-/

namespace A110489.P8178681062642016055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊2 * ((n : ℚ) / 5)⌋ (A233970 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110489.P8178681062642016055

/-! ## A110489.P12913651972066420874

`∑[or(floor(2*n/5), A233970(4^((2*n)%(n+1)/2)))]`
-/

namespace A110489.P12913651972066420874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊2 * ((n : ℚ) / 5)⌋ (A233970 (SequenceMachineLib.roundAway ((4 : ℝ) ^ (((2 * n % (n + 1) : ℕ) : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110489.P12913651972066420874

/-!
# A110490: Diagonal sums of a triangle based on the Catalan numbers.

The programs for A110490, there is no canonical definition to state claims against.
-/

/-! ## A110490.P10732480959369151882

`A134119(7*A000108(n))`
-/

namespace A110490.P10732480959369151882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (7 * A000108 n).toNat

end

end A110490.P10732480959369151882

/-! ## A110490.P1631934996866265571

`A134119(Δ[7*A155587(n)])`
-/

namespace A110490.P1631934996866265571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (f1 (n + 1) - f1 n).toNat

end

end A110490.P1631934996866265571

/-! ## A110490.P1720585545175638975

`A134119(7*A120588(n+1))`
-/

namespace A110490.P1720585545175638975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (7 * A120588 (n + 1)).toNat

end

end A110490.P1720585545175638975

/-! ## A110490.P1002487544421686072

`A134119(7*A028303(2*n))`
-/

namespace A110490.P1002487544421686072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (7 * A028303 (2 * n)).toNat

end

end A110490.P1002487544421686072

/-!
# A110491: Expansion of e.g.f.: sqrt(1+2x)/sqrt(1-2x).

The programs for A110491, the canonical program `A110491.P10113508686067152025` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110491 has offset 0).

The definition of A110491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110491.P10113508686067152025

`n!*A063886(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A110491

/-- `n!*A063886(n)` -/
def P10113508686067152025.Spec : Prop :=
  ∀ n, P10113508686067152025.a n = A110491 n

theorem P10113508686067152025.correct : P10113508686067152025.Spec := by
  intro n
  simp only [A110491]

end A110491

/-! ## A110491.P9638121114857887240

`∏[a(n-2)+4]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A110491.P9638121114857887240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110491.P9638121114857887240

namespace A110491

/-- `∏[a(n-2)+4]` -/
def P9638121114857887240.Spec : Prop :=
  ∀ n, (P9638121114857887240.a n : ℤ) = A110491 n

end A110491

/-! ## A110491.P2905942647611797358

`2^n*∏[abs(or(1, -n))]`
-/

namespace A110491.P2905942647611797358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A110491.P2905942647611797358

namespace A110491

/-- `2^n*∏[abs(or(1, -n))]` -/
def P2905942647611797358.Spec : Prop :=
  ∀ n, P2905942647611797358.a n = A110491 n

end A110491

/-! ## A110491.P5745565114137226359

`∏[or(2, comp[2*(n+1)])-1]`
-/

namespace A110491.P5745565114137226359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110491.P5745565114137226359

namespace A110491

/-- `∏[or(2, comp[2*(n+1)])-1]` -/
def P5745565114137226359.Spec : Prop :=
  ∀ n, P5745565114137226359.a n = A110491 n

end A110491

/-! ## A110491.P4403213794409100773

`2*or(1, n-1)*a(n-1)` with `a(0)=1`
-/

namespace A110491.P4403213794409100773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Int.lor 1 ((n : ℤ) - 1) * a (n - 1))

end

end A110491.P4403213794409100773

namespace A110491

/-- `2*or(1, n-1)*a(n-1)` -/
def P4403213794409100773.Spec : Prop :=
  ∀ n, P4403213794409100773.a n = A110491 n

end A110491

/-! ## A110491.P825576833683772188

`∏[4*(n-1)-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A110491.P825576833683772188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * ((n : ℤ) - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110491.P825576833683772188

namespace A110491

/-- `∏[4*(n-1)-a(n-1)]` -/
def P825576833683772188.Spec : Prop :=
  ∀ n, P825576833683772188.a n = A110491 n

end A110491

/-! ## A110491.P12790946186033801700

`(xor(1, n-1)+n)*a(n-1)` with `a(0)=1`
-/

namespace A110491.P12790946186033801700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.xor 1 ((n : ℤ) - 1) + (n : ℤ)) * a (n - 1)

end

end A110491.P12790946186033801700

namespace A110491

/-- `(xor(1, n-1)+n)*a(n-1)` -/
def P12790946186033801700.Spec : Prop :=
  ∀ n, P12790946186033801700.a n = A110491 n

end A110491

/-! ## A110491.P3671888686606822298

`∏[xor(3^(n%2), comp[2*(n+1)])]`
-/

namespace A110491.P3671888686606822298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 ^ (n % 2)) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110491.P3671888686606822298

namespace A110491

/-- `∏[xor(3^(n%2), comp[2*(n+1)])]` -/
def P3671888686606822298.Spec : Prop :=
  ∀ n, (P3671888686606822298.a n : ℤ) = A110491 n

end A110491

/-! ## A110491.P6163389218499842713

`2*(n-char[2*n])*a(n-1)` with `a(0)=1`
-/

namespace A110491.P6163389218499842713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * a (n - 1))

end

end A110491.P6163389218499842713

namespace A110491

/-- `2*(n-char[2*n])*a(n-1)` -/
def P6163389218499842713.Spec : Prop :=
  ∀ n, P6163389218499842713.a n = A110491 n

end A110491

/-! ## A110491.P11085262991745120082

`2*((1-n)%2+n)*a(n-1)` with `a(0)=1`
-/

namespace A110491.P11085262991745120082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)) * a (n - 1)

end

end A110491.P11085262991745120082

namespace A110491

/-- `2*((1-n)%2+n)*a(n-1)` -/
def P11085262991745120082.Spec : Prop :=
  ∀ n, P11085262991745120082.a n = A110491 n

end A110491

/-!
# A110493: Largest prime p such that p^2 divides binomial(2n,n), or 0 if binomial(2n,n) is squarefree.

The programs for A110493, the canonical program `A110493.P9332581609573208670` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110493 has offset 0).

The definition of A110493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110493.P9332581609573208670

`∑{p}[A056670(A004277(n)), #]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A110493

/-- `∑{p}[A056670(A004277(n)), #]` -/
def P9332581609573208670.Spec : Prop :=
  ∀ n, (P9332581609573208670.a n : ℤ) = A110493 n

theorem P9332581609573208670.correct : P9332581609573208670.Spec := by
  intro n
  simp only [A110493]

end A110493

/-! ## A110493.P6541461008823902236

`A087156(A056670(record[(n+1)^(n%2)]))`
-/

namespace A110493.P6541461008823902236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A056670 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A110493.P6541461008823902236

namespace A110493

/-- `A087156(A056670(record[(n+1)^(n%2)]))` -/
def P6541461008823902236.Spec : Prop :=
  ∀ n, P6541461008823902236.a n = A110493 n

end A110493

/-! ## A110493.P11217085628309419120

`∑{d}[A056670(A004277(n)), A001414(#)]`
-/

namespace A110493.P11217085628309419120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001414 d

end

end A110493.P11217085628309419120

namespace A110493

/-- `∑{d}[A056670(A004277(n)), A001414(#)]` -/
def P11217085628309419120.Spec : Prop :=
  ∀ n, P11217085628309419120.a n = A110493 n

end A110493

/-! ## A110493.P17375421162516908963

`∏{p}[A056670(A004277(n)), A191750(#)]-1`
-/

namespace A110493.P17375421162516908963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A191750 p - 1

end

end A110493.P17375421162516908963

namespace A110493

/-- `∏{p}[A056670(A004277(n)), A191750(#)]-1` -/
def P17375421162516908963.Spec : Prop :=
  ∀ n, P17375421162516908963.a n = A110493 n

end A110493

/-! ## A110493.P13851673427109743259

`A056670(A004277(n))-A296209(n²)`
-/

namespace A110493.P13851673427109743259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A004277 n).toNat - A296209 (n ^ 2)

end

end A110493.P13851673427109743259

namespace A110493

/-- `A056670(A004277(n))-A296209(n²)` -/
def P13851673427109743259.Spec : Prop :=
  ∀ n, P13851673427109743259.a n = A110493 n

end A110493

/-! ## A110493.P3313471570961752352

`∑{p}[A006530(A292441(n)), #]`
-/

namespace A110493.P3313471570961752352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A292441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A110493.P3313471570961752352

namespace A110493

/-- `∑{p}[A006530(A292441(n)), #]` -/
def P3313471570961752352.Spec : Prop :=
  ∀ n, (P3313471570961752352.a n : ℤ) = A110493 n

end A110493

/-! ## A110493.P3657175039864875859

`A001414(A006530(A292441(n)))`
-/

namespace A110493.P3657175039864875859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A006530 (A292441 n).toNat).toNat

end

end A110493.P3657175039864875859

namespace A110493

/-- `A001414(A006530(A292441(n)))` -/
def P3657175039864875859.Spec : Prop :=
  ∀ n, P3657175039864875859.a n = A110493 n

end A110493

/-! ## A110493.P6601124234037792023

`A008472(A006530(A292441(n))²)`
-/

namespace A110493.P6601124234037792023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A006530 (A292441 n).toNat ^ 2).toNat

end

end A110493.P6601124234037792023

namespace A110493

/-- `A008472(A006530(A292441(n))²)` -/
def P6601124234037792023.Spec : Prop :=
  ∀ n, P6601124234037792023.a n = A110493 n

end A110493

/-! ## A110493.P16493994766110348930

`A048146(A006530(A292441(n))²)`
-/

namespace A110493.P16493994766110348930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (A006530 (A292441 n).toNat ^ 2).toNat

end

end A110493.P16493994766110348930

namespace A110493

/-- `A048146(A006530(A292441(n))²)` -/
def P16493994766110348930.Spec : Prop :=
  ∀ n, P16493994766110348930.a n = A110493 n

end A110493

/-! ## A110493.P7867084645809080603

`A063958(A006530(A292441(n))²)`
-/

namespace A110493.P7867084645809080603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (A006530 (A292441 n).toNat ^ 2).toNat

end

end A110493.P7867084645809080603

namespace A110493

/-- `A063958(A006530(A292441(n))²)` -/
def P7867084645809080603.Spec : Prop :=
  ∀ n, P7867084645809080603.a n = A110493 n

end A110493

/-! ## A110493.P2937285419045989970

`A069249(A006530(A292441(n))²)`
-/

namespace A110493.P2937285419045989970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (A006530 (A292441 n).toNat ^ 2).toNat

end

end A110493.P2937285419045989970

namespace A110493

/-- `A069249(A006530(A292441(n))²)` -/
def P2937285419045989970.Spec : Prop :=
  ∀ n, P2937285419045989970.a n = A110493 n

end A110493

/-! ## A110493.P18259295864698927231

`A069359(A006530(A292441(n))²)`
-/

namespace A110493.P18259295864698927231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A006530 (A292441 n).toNat ^ 2).toNat

end

end A110493.P18259295864698927231

namespace A110493

/-- `A069359(A006530(A292441(n))²)` -/
def P18259295864698927231.Spec : Prop :=
  ∀ n, P18259295864698927231.a n = A110493 n

end A110493

/-! ## A110493.P16645599094521739861

`A182936(A006530(A292441(n))²)`
-/

namespace A110493.P16645599094521739861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (A006530 (A292441 n).toNat ^ 2).toNat

end

end A110493.P16645599094521739861

namespace A110493

/-- `A182936(A006530(A292441(n))²)` -/
def P16645599094521739861.Spec : Prop :=
  ∀ n, P16645599094521739861.a n = A110493 n

end A110493

/-! ## A110493.P9999431328766246886

`A253236(A006530(A292441(n))²)`
-/

namespace A110493.P9999431328766246886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (A006530 (A292441 n).toNat ^ 2).toNat

end

end A110493.P9999431328766246886

namespace A110493

/-- `A253236(A006530(A292441(n))²)` -/
def P9999431328766246886.Spec : Prop :=
  ∀ n, P9999431328766246886.a n = A110493 n

end A110493

/-! ## A110493.P7033882513769216352

`A300719(A006530(A292441(n))^3)`
-/

namespace A110493.P7033882513769216352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A006530 (A292441 n).toNat ^ 3).toNat

end

end A110493.P7033882513769216352

namespace A110493

/-- `A300719(A006530(A292441(n))^3)` -/
def P7033882513769216352.Spec : Prop :=
  ∀ n, P7033882513769216352.a n = A110493 n

end A110493

/-!
# A110494: Least k such that prime(n)^2 divides binomial(2k,k).

The programs for A110494, the canonical program `A110494.P10384537411605052210` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110494 has offset 1).

The definition of A110494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110494.P10384537411605052210

`or(1, A084921(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110494

/-- `or(1, A084921(n+1))` -/
def P10384537411605052210.Spec : Prop :=
  ∀ n, P10384537411605052210.a n = A110494 (n + 1)

theorem P10384537411605052210.correct : P10384537411605052210.Spec := by
  intro n
  simp only [A110494, Nat.add_sub_cancel]

end A110494

/-! ## A110494.P12122779160700944553

`ceil(A066872(n+1)/2)`
-/

namespace A110494.P12122779160700944553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066872 (n + 1) : ℚ) / 2⌉

end

end A110494.P12122779160700944553

namespace A110494

/-- `ceil(A066872(n+1)/2)` -/
def P12122779160700944553.Spec : Prop :=
  ∀ n, P12122779160700944553.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P13146945106161503078

`ceil(sqrt(A138420(n+1)+2))`
-/

namespace A110494.P13146945106161503078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A138420 (n + 1) + 2 : ℝ)⌉

end

end A110494.P13146945106161503078

namespace A110494

/-- `ceil(sqrt(A138420(n+1)+2))` -/
def P13146945106161503078.Spec : Prop :=
  ∀ n, P13146945106161503078.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P784183911830023363

`ceil(cosh(log(A000040(n+1)²)))`
-/

namespace A110494.P784183911830023363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A000040 (n + 1) ^ 2 : ℝ))⌉

end

end A110494.P784183911830023363

namespace A110494

/-- `ceil(cosh(log(A000040(n+1)²)))` -/
def P784183911830023363.Spec : Prop :=
  ∀ n, P784183911830023363.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P1353134094900604497

`floor(A001248(n+1)/2)+1`
-/

namespace A110494.P1353134094900604497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001248 (n + 1) : ℚ) / 2⌋ + 1

end

end A110494.P1353134094900604497

namespace A110494

/-- `floor(A001248(n+1)/2)+1` -/
def P1353134094900604497.Spec : Prop :=
  ∀ n, P1353134094900604497.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P6919448751828635817

`floor(A049001(n+1)/2)+2`
-/

namespace A110494.P6919448751828635817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049001 (n + 1) : ℚ) / 2⌋ + 2

end

end A110494.P6919448751828635817

namespace A110494

/-- `floor(A049001(n+1)/2)+2` -/
def P6919448751828635817.Spec : Prop :=
  ∀ n, P6919448751828635817.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P15909405334121004995

`ceil(A084920(n+1)/2)+1`
-/

namespace A110494.P15909405334121004995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084920 (n + 1) : ℚ) / 2⌉ + 1

end

end A110494.P15909405334121004995

namespace A110494

/-- `ceil(A084920(n+1)/2)+1` -/
def P15909405334121004995.Spec : Prop :=
  ∀ n, P15909405334121004995.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P16968406712875783926

`A084921(n+1)+A057427(n)`
-/

namespace A110494.P16968406712875783926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1) + A057427 n

end

end A110494.P16968406712875783926

namespace A110494

/-- `A084921(n+1)+A057427(n)` -/
def P16968406712875783926.Spec : Prop :=
  ∀ n, P16968406712875783926.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P12892360451035426995

`A084921(n+1)-A057428(n)`
-/

namespace A110494.P12892360451035426995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1) - A057428 n

end

end A110494.P12892360451035426995

namespace A110494

/-- `A084921(n+1)-A057428(n)` -/
def P12892360451035426995.Spec : Prop :=
  ∀ n, P12892360451035426995.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P5659383700290006202

`A084921(n+1)+A165471(n)²`
-/

namespace A110494.P5659383700290006202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1) + A165471 n ^ 2

end

end A110494.P5659383700290006202

namespace A110494

/-- `A084921(n+1)+A165471(n)²` -/
def P5659383700290006202.Spec : Prop :=
  ∀ n, P5659383700290006202.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P11795132765703633461

`A130291(n+1)+A008837(n+1)`
-/

namespace A110494.P11795132765703633461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) + A008837 (n + 1)

end

end A110494.P11795132765703633461

namespace A110494

/-- `A130291(n+1)+A008837(n+1)` -/
def P11795132765703633461.Spec : Prop :=
  ∀ n, P11795132765703633461.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P13461055585966329321

`A130290(n+1)+A072205(n+1)`
-/

namespace A110494.P13461055585966329321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) + A072205 (n + 1)

end

end A110494.P13461055585966329321

namespace A110494

/-- `A130290(n+1)+A072205(n+1)` -/
def P13461055585966329321.Spec : Prop :=
  ∀ n, P13461055585966329321.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P6250694416915571471

`A034953(n+1)-A102781(n+1)`
-/

namespace A110494.P6250694416915571471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A102781 (n + 1)

end

end A110494.P6250694416915571471

namespace A110494

/-- `A034953(n+1)-A102781(n+1)` -/
def P6250694416915571471.Spec : Prop :=
  ∀ n, P6250694416915571471.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P230582734251728733

`A110496(n+1)%A001248(n+1)`
-/

namespace A110494.P230582734251728733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110496 (n + 1)) (A001248 (n + 1))

end

end A110494.P230582734251728733

namespace A110494

/-- `A110496(n+1)%A001248(n+1)` -/
def P230582734251728733.Spec : Prop :=
  ∀ n, P230582734251728733.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P10686331367366123190

`(A054977(n)+A000040(n+1)²)/2`
-/

namespace A110494.P10686331367366123190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054977 n + A000040 (n + 1) ^ 2 : ℚ) / 2

end

end A110494.P10686331367366123190

namespace A110494

/-- `(A054977(n)+A000040(n+1)²)/2` -/
def P10686331367366123190.Spec : Prop :=
  ∀ n, P10686331367366123190.a n = (A110494 (n + 1) : ℚ)

end A110494

/-! ## A110494.P11014346826985949384

`or(1, lcm(A006093(n+1), A008864(n+1)))`
-/

namespace A110494.P11014346826985949384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Int.lcm (A006093 (n + 1)) (A008864 (n + 1)))

end

end A110494.P11014346826985949384

namespace A110494

/-- `or(1, lcm(A006093(n+1), A008864(n+1)))` -/
def P11014346826985949384.Spec : Prop :=
  ∀ n, (P11014346826985949384.a n : ℤ) = A110494 (n + 1)

end A110494

/-! ## A110494.P4426134665134305905

`ceil((A117762(n+1)+n)/A000040(n+1))`
-/

namespace A110494.P4426134665134305905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117762 (n + 1) + (n : ℤ) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A110494.P4426134665134305905

namespace A110494

/-- `ceil((A117762(n+1)+n)/A000040(n+1))` -/
def P4426134665134305905.Spec : Prop :=
  ∀ n, P4426134665134305905.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P8742880191381644819

`A000040(n+1)+A006093(n+1)*A130290(n+1)`
-/

namespace A110494.P8742880191381644819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A006093 (n + 1) * A130290 (n + 1)

end

end A110494.P8742880191381644819

namespace A110494

/-- `A000040(n+1)+A006093(n+1)*A130290(n+1)` -/
def P8742880191381644819.Spec : Prop :=
  ∀ n, P8742880191381644819.a n = A110494 (n + 1)

end A110494

/-! ## A110494.P17064809119191681460

`A111333(n+1)+A000040(n+1)*A130290(n+1)`
-/

namespace A110494.P17064809119191681460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A000040 (n + 1) * A130290 (n + 1)

end

end A110494.P17064809119191681460

namespace A110494

/-- `A111333(n+1)+A000040(n+1)*A130290(n+1)` -/
def P17064809119191681460.Spec : Prop :=
  ∀ n, P17064809119191681460.a n = A110494 (n + 1)

end A110494

/-!
# A110495: Numbers n such that binomial(2n,n) is cubefree.

The programs for A110495, there is no canonical definition to state claims against.
-/

/-! ## A110495.P1879341962619361060

`lt[A056649(2*(n+1)), 1]+1`
-/

namespace A110495.P1879341962619361060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A110495.P1879341962619361060

/-! ## A110495.P5105177113252380207

`record[A078898(A056651(n+2))]`
-/

namespace A110495.P5105177113252380207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A056651 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110495.P5105177113252380207

/-! ## A110495.P16299340906601893532

`record[A273943(A056651(n+3))]`
-/

namespace A110495.P16299340906601893532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A056651 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110495.P16299340906601893532

/-! ## A110495.P9237381197770263539

`record[gcd(A032742(n+1), A056649(n+1))]`
-/

namespace A110495.P9237381197770263539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 1)) (A056649 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110495.P9237381197770263539

/-! ## A110495.P7694819758067259857

`eq[A056061(2*(n+1)), A056648(2*(n+1))]+1`
-/

namespace A110495.P7694819758067259857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056061 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056648 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A110495.P7694819758067259857

/-!
# A110496: Least k such that prime(n)^3 divides binomial(2k,k).

The programs for A110496, the canonical program `A110496.P5483106087847076975` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110496 has offset 1).

The definition of A110496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110496.P5483106087847076975

`A117762(n+1)+A111333(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A110496

/-- `A117762(n+1)+A111333(n+1)` -/
def P5483106087847076975.Spec : Prop :=
  ∀ n, P5483106087847076975.a n = A110496 (n + 1)

theorem P5483106087847076975.correct : P5483106087847076975.Spec := by
  intro n
  simp only [A110496, Nat.add_sub_cancel]

end A110496

/-! ## A110496.P11373892572247981871

`round((A030078(n+1)+ratio[A250120(n)])/2)`
-/

namespace A110496.P11373892572247981871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A030078 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)) / 2)

end

end A110496.P11373892572247981871

namespace A110496

/-- `round((A030078(n+1)+ratio[A250120(n)])/2)` -/
def P11373892572247981871.Spec : Prop :=
  ∀ n, P11373892572247981871.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P4419425865823001192

`ceil(A117762(n+1)+A000040(n+1)/2)`
-/

namespace A110496.P4419425865823001192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117762 (n + 1) : ℚ) + (A000040 (n + 1) : ℚ) / 2⌉

end

end A110496.P4419425865823001192

namespace A110496

/-- `ceil(A117762(n+1)+A000040(n+1)/2)` -/
def P4419425865823001192.Spec : Prop :=
  ∀ n, P4419425865823001192.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P1170993559336798180

`A236332(A000040(n+1))-C(2, n+2)`
-/

namespace A110496.P1170993559336798180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236332 (A000040 (n + 1)).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A110496.P1170993559336798180

namespace A110496

/-- `A236332(A000040(n+1))-C(2, n+2)` -/
def P1170993559336798180.Spec : Prop :=
  ∀ n, P1170993559336798180.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P5741920810241399219

`A236332(A000040(n%a(n-1)+1))` with `a(0)=7`
-/

namespace A110496.P5741920810241399219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A236332 (A000040 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat).toNat

end

end A110496.P5741920810241399219

namespace A110496

/-- `A236332(A000040(n%a(n-1)+1))` -/
def P5741920810241399219.Spec : Prop :=
  ∀ n, P5741920810241399219.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P15209601385615633435

`A274324(A000040(n+1))+A000038(n)`
-/

namespace A110496.P15209601385615633435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (A000040 (n + 1)).toNat + A000038 n

end

end A110496.P15209601385615633435

namespace A110496

/-- `A274324(A000040(n+1))+A000038(n)` -/
def P15209601385615633435.Spec : Prop :=
  ∀ n, P15209601385615633435.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P13408537788344663958

`A236332(A000040(n+1))-A000007(n)`
-/

namespace A110496.P13408537788344663958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236332 (A000040 (n + 1)).toNat - A000007 n

end

end A110496.P13408537788344663958

namespace A110496

/-- `A236332(A000040(n+1))-A000007(n)` -/
def P13408537788344663958.Spec : Prop :=
  ∀ n, P13408537788344663958.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P4428593492488145722

`A298754(A008578(n+2))-A000038(n)`
-/

namespace A110496.P4428593492488145722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298754 (A008578 (n + 2)).toNat - A000038 n

end

end A110496.P4428593492488145722

namespace A110496

/-- `A298754(A008578(n+2))-A000038(n)` -/
def P4428593492488145722.Spec : Prop :=
  ∀ n, P4428593492488145722.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P3360219071027098538

`A274324(record[A020639(n+2)])+A000038(n)`
-/

namespace A110496.P3360219071027098538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274324 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000038 n

end

end A110496.P3360219071027098538

namespace A110496

/-- `A274324(record[A020639(n+2)])+A000038(n)` -/
def P3360219071027098538.Spec : Prop :=
  ∀ n, P3360219071027098538.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P584595702805461040

`A117762(n+1)+A000463(A000040(n+1))`
-/

namespace A110496.P584595702805461040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117762 (n + 1) + A000463 (A000040 (n + 1)).toNat

end

end A110496.P584595702805461040

namespace A110496

/-- `A117762(n+1)+A000463(A000040(n+1))` -/
def P584595702805461040.Spec : Prop :=
  ∀ n, P584595702805461040.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P11488940153495914423

`A228564(A000040(n+1))+A138416(n+1)`
-/

namespace A110496.P11488940153495914423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (A000040 (n + 1)).toNat + A138416 (n + 1)

end

end A110496.P11488940153495914423

namespace A110496

/-- `A228564(A000040(n+1))+A138416(n+1)` -/
def P11488940153495914423.Spec : Prop :=
  ∀ n, P11488940153495914423.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P465329641695503472

`A117762(n+1)+A008619(record[A000010(n+1)])`
-/

namespace A110496.P465329641695503472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117762 (n + 1) + A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A110496.P465329641695503472

namespace A110496

/-- `A117762(n+1)+A008619(record[A000010(n+1)])` -/
def P465329641695503472.Spec : Prop :=
  ∀ n, P465329641695503472.a n = A110496 (n + 1)

end A110496

/-! ## A110496.P16054063308841561675

`A008457(A000040(n+1))/A006530(A001316(n))`
-/

namespace A110496.P16054063308841561675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008457 (A000040 (n + 1)).toNat : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A110496.P16054063308841561675

namespace A110496

/-- `A008457(A000040(n+1))/A006530(A001316(n))` -/
def P16054063308841561675.Spec : Prop :=
  ∀ n, P16054063308841561675.a n = (A110496 (n + 1) : ℚ)

end A110496

/-! ## A110496.P6363491243254145059

`A236332(A000040(n+1))-A008683((n+1)²)`
-/

namespace A110496.P6363491243254145059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236332 (A000040 (n + 1)).toNat - A008683 ((n + 1) ^ 2)

end

end A110496.P6363491243254145059

namespace A110496

/-- `A236332(A000040(n+1))-A008683((n+1)²)` -/
def P6363491243254145059.Spec : Prop :=
  ∀ n, P6363491243254145059.a n = A110496 (n + 1)

end A110496

/-!
# A110497: a(1) = 1; a(m) = maximum denominator possible with a continued fraction [b(1);b(2),b(3),...,b(m-1)], where (b(1),b(2),b(3),...,b(m-1)) is a permutation of (a(1),a(2),a(3),...,a(m-1)).

The programs for A110497, there is no canonical definition to state claims against.
-/

/-! ## A110497.P10151940498621303980

`A105787(abs(1-n)+1)`
-/

namespace A110497.P10151940498621303980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105787 (|1 - (n : ℤ)| + 1).toNat

end

end A110497.P10151940498621303980

/-! ## A110497.P14052487751073857506

`A105787(A233583(n+1))+A000007(2*(n+1))`
-/

namespace A110497.P14052487751073857506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105787 (A233583 (n + 1)).toNat + A000007 (2 * (n + 1))

end

end A110497.P14052487751073857506

/-! ## A110497.P17344042743590223914

`A002275(A105769(n+1))*A105787(A028310(n))`
-/

namespace A110497.P17344042743590223914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A105769 (n + 1)).toNat * A105787 (A028310 n).toNat

end

end A110497.P17344042743590223914

/-! ## A110497.P5045043088657134130

`floor(sqrt(A105787(n+1)))`
-/

namespace A110497.P5045043088657134130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A105787 (n + 1))

end

end A110497.P5045043088657134130

/-! ## A110497.P16804902856262324821

`round(sqrt(sqrt(A105787(n+2))))`
-/

namespace A110497.P16804902856262324821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A105787 (n + 2) : ℝ)))

end

end A110497.P16804902856262324821

/-!
# A110498: a(1) = 1; a(m) = minimum denominator possible with a continued fraction [b(1);b(2),b(3),...b(m-1)], where (b(1),b(2),b(3),...b(m-1)) is a permutation of (a(1),a(2),a(3),...a(m-1)).

The programs for A110498, there is no canonical definition to state claims against.
-/

/-! ## A110498.P581205369153905684

`A051274(xor(A340385(2*n+1), A363004(n)))`
-/

namespace A110498.P581205369153905684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 (Int.xor (A340385 (2 * n + 1)) (A363004 n)).toNat

end

end A110498.P581205369153905684

/-! ## A110498.P7190353877329899829

`A089899(A026724(n))`
-/

namespace A110498.P7190353877329899829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089899 (A026724 n).toNat

end

end A110498.P7190353877329899829

/-! ## A110498.P2112237405620658070

`A089899(A048888(n))`
-/

namespace A110498.P2112237405620658070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089899 (A048888 n).toNat

end

end A110498.P2112237405620658070

/-! ## A110498.P17019261385923024347

`A089899(A280027(n))`
-/

namespace A110498.P17019261385923024347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089899 (A280027 n).toNat

end

end A110498.P17019261385923024347

