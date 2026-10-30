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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C013
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A035100: Number of bits in binary expansion of n-th prime.

The programs for A035100, the canonical program `A035100.P16711503485959756516` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035100 has offset 1).

The definition of A035100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035100.P1828115706347650511

`Δ[A328659(n)]`
-/

namespace A035100.P1828115706347650511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035100.P1828115706347650511

namespace A035100

/-- `Δ[A328659(n)]` -/
def P1828115706347650511.Spec : Prop :=
  ∀ n, P1828115706347650511.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P12669965361993179494

`A098388(1+n)+1`
-/

namespace A035100.P12669965361993179494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (1 + n) + 1

end

end A035100.P12669965361993179494

namespace A035100

/-- `A098388(1+n)+1` -/
def P12669965361993179494.Spec : Prop :=
  ∀ n, P12669965361993179494.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P14324832604072488295

`floor(log2(A072055(n+1)))`
-/

namespace A035100.P14324832604072488295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A072055 (n + 1)).toNat

end

end A035100.P14324832604072488295

namespace A035100

/-- `floor(log2(A072055(n+1)))` -/
def P14324832604072488295.Spec : Prop :=
  ∀ n, (P14324832604072488295.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P11899370783377426113

`floor(log2(A100484(n+1)))`
-/

namespace A035100.P11899370783377426113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A100484 (n + 1)).toNat

end

end A035100.P11899370783377426113

namespace A035100

/-- `floor(log2(A100484(n+1)))` -/
def P11899370783377426113.Spec : Prop :=
  ∀ n, (P11899370783377426113.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P2043594874240104734

`floor(log2(A166496(n+1)))`
-/

namespace A035100.P2043594874240104734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A166496 (n + 1)).toNat

end

end A035100.P2043594874240104734

namespace A035100

/-- `floor(log2(A166496(n+1)))` -/
def P2043594874240104734.Spec : Prop :=
  ∀ n, (P2043594874240104734.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P513687709987987784

`ceil(log2(A008864(n+1)))`
-/

namespace A035100.P513687709987987784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A008864 (n + 1) : ℝ)⌉

end

end A035100.P513687709987987784

namespace A035100

/-- `ceil(log2(A008864(n+1)))` -/
def P513687709987987784.Spec : Prop :=
  ∀ n, P513687709987987784.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P15509438995528139613

`ceil(log2(A028815(n+1)))`
-/

namespace A035100.P15509438995528139613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A028815 (n + 1) : ℝ)⌉

end

end A035100.P15509438995528139613

namespace A035100

/-- `ceil(log2(A028815(n+1)))` -/
def P15509438995528139613.Spec : Prop :=
  ∀ n, P15509438995528139613.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P18396023734823569991

`ceil(log2(A175216(n+1)))`
-/

namespace A035100.P18396023734823569991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A175216 (n + 1) : ℝ)⌉

end

end A035100.P18396023734823569991

namespace A035100

/-- `ceil(log2(A175216(n+1)))` -/
def P18396023734823569991.Spec : Prop :=
  ∀ n, P18396023734823569991.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P15733126786413069971

`ceil(log2(A345531(n+1)))`
-/

namespace A035100.P15733126786413069971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A345531 (n + 1) : ℝ)⌉

end

end A035100.P15733126786413069971

namespace A035100

/-- `ceil(log2(A345531(n+1)))` -/
def P15733126786413069971.Spec : Prop :=
  ∀ n, P15733126786413069971.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P13585773133160164071

`ceil(log2(A350171(n+1)))`
-/

namespace A035100.P13585773133160164071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A350171 (n + 1) : ℝ)⌉

end

end A035100.P13585773133160164071

namespace A035100

/-- `ceil(log2(A350171(n+1)))` -/
def P13585773133160164071.Spec : Prop :=
  ∀ n, P13585773133160164071.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P2681912939058867451

`ceil(log2(A377783(n+1)))`
-/

namespace A035100.P2681912939058867451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A377783 (n + 1) : ℝ)⌉

end

end A035100.P2681912939058867451

namespace A035100

/-- `ceil(log2(A377783(n+1)))` -/
def P2681912939058867451.Spec : Prop :=
  ∀ n, P2681912939058867451.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P4510460091354334216

`ceil(log2(A378249(n+1)))`
-/

namespace A035100.P4510460091354334216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A378249 (n + 1) : ℝ)⌉

end

end A035100.P4510460091354334216

namespace A035100

/-- `ceil(log2(A378249(n+1)))` -/
def P4510460091354334216.Spec : Prop :=
  ∀ n, P4510460091354334216.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P16711503485959756516

`floor(log2(A000040(n+1)))+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035100

/-- `floor(log2(A000040(n+1)))+1` -/
def P16711503485959756516.Spec : Prop :=
  ∀ n, (P16711503485959756516.a n : ℤ) = A035100 (n + 1)

theorem P16711503485959756516.correct : P16711503485959756516.Spec := by
  intro n
  simp only [A035100, Nat.add_sub_cancel]

end A035100

/-! ## A035100.P574460368110197584

`floor(log2(A014193(n+1)))+1`
-/

namespace A035100.P574460368110197584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A014193 (n + 1)).toNat + 1

end

end A035100.P574460368110197584

namespace A035100

/-- `floor(log2(A014193(n+1)))+1` -/
def P574460368110197584.Spec : Prop :=
  ∀ n, (P574460368110197584.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P9759231870151276082

`floor(log2(A039915(n+1)))+1`
-/

namespace A035100.P9759231870151276082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A039915 (n + 1)).toNat + 1

end

end A035100.P9759231870151276082

namespace A035100

/-- `floor(log2(A039915(n+1)))+1` -/
def P9759231870151276082.Spec : Prop :=
  ∀ n, (P9759231870151276082.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P10706321129679025606

`floor(log2(A082542(n+1)))+1`
-/

namespace A035100.P10706321129679025606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A082542 (n + 1)).toNat + 1

end

end A035100.P10706321129679025606

namespace A035100

/-- `floor(log2(A082542(n+1)))+1` -/
def P10706321129679025606.Spec : Prop :=
  ∀ n, (P10706321129679025606.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P15674351890205478082

`floor(log2(A084421(n+1)+1))`
-/

namespace A035100.P15674351890205478082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A084421 (n + 1) + 1).toNat

end

end A035100.P15674351890205478082

namespace A035100

/-- `floor(log2(A084421(n+1)+1))` -/
def P15674351890205478082.Spec : Prop :=
  ∀ n, (P15674351890205478082.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P7412814898242329307

`floor(log2(A143292(n+1)))+1`
-/

namespace A035100.P7412814898242329307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A143292 (n + 1)).toNat + 1

end

end A035100.P7412814898242329307

namespace A035100

/-- `floor(log2(A143292(n+1)))+1` -/
def P7412814898242329307.Spec : Prop :=
  ∀ n, (P7412814898242329307.a n : ℤ) = A035100 (n + 1)

end A035100

/-! ## A035100.P16846441249967699434

`floor(log2(A001749(n+1)))-1`
-/

namespace A035100.P16846441249967699434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A001749 (n + 1)).toNat : ℤ) - 1

end

end A035100.P16846441249967699434

namespace A035100

/-- `floor(log2(A001749(n+1)))-1` -/
def P16846441249967699434.Spec : Prop :=
  ∀ n, P16846441249967699434.a n = A035100 (n + 1)

end A035100

/-! ## A035100.P17395482315758600552

`floor(log2(A037168(n+1)+2))`
-/

namespace A035100.P17395482315758600552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A037168 (n + 1) + 2).toNat

end

end A035100.P17395482315758600552

namespace A035100

/-- `floor(log2(A037168(n+1)+2))` -/
def P17395482315758600552.Spec : Prop :=
  ∀ n, (P17395482315758600552.a n : ℤ) = A035100 (n + 1)

end A035100

/-!
# A035101: E.g.f. x*(c(x/2)-1)/(1-2*x), where c(x) = g.f. for Catalan numbers A000108.

The programs for A035101, the canonical program `A035101.P13719855296267505059` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035101 has offset 1).

The definition of A035101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035101.P13719855296267505059

`(n+1)!*2^n-A001147(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035101

/-- `(n+1)!*2^n-A001147(n+1)` -/
def P13719855296267505059.Spec : Prop :=
  ∀ n, P13719855296267505059.a n = A035101 (n + 1)

theorem P13719855296267505059.correct : P13719855296267505059.Spec := by
  intro n
  simp only [A035101, Nat.add_sub_cancel]

end A035101

/-! ## A035101.P14343767085062800244

`(2*(n+1)-2)*a(n-1)+A129890(n-1)` with `a(0)=0`
-/

namespace A035101.P14343767085062800244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * (n + 1) : ℤ) - 2) * a (n - 1) + A129890 (n - 1)

end

end A035101.P14343767085062800244

namespace A035101

/-- `(2*(n+1)-2)*a(n-1)+A129890(n-1)` -/
def P14343767085062800244.Spec : Prop :=
  ∀ n, P14343767085062800244.a n = A035101 (n + 1)

end A035101

/-! ## A035101.P6401818621691817306

`A002866(n+1)-A001147(n+1)`
-/

namespace A035101.P6401818621691817306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (n + 1) - A001147 (n + 1)

end

end A035101.P6401818621691817306

namespace A035101

/-- `A002866(n+1)-A001147(n+1)` -/
def P6401818621691817306.Spec : Prop :=
  ∀ n, P6401818621691817306.a n = A035101 (n + 1)

end A035101

/-! ## A035101.P3609759586322364620

`(n+1)!*(4^n-C(2*(n+1), n+1)/2)/2^n`
-/

namespace A035101.P3609759586322364620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * ((4 ^ n : ℚ) - (Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / 2) / (2 ^ n : ℚ)

end

end A035101.P3609759586322364620

namespace A035101

/-- `(n+1)!*(4^n-C(2*(n+1), n+1)/2)/2^n` -/
def P3609759586322364620.Spec : Prop :=
  ∀ n, P3609759586322364620.a n = (A035101 (n + 1) : ℚ)

end A035101

/-! ## A035101.P13782321911108504286

`(n+1)!*A008549(n)/2^n`
-/

namespace A035101.P13782321911108504286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A008549 n : ℚ) / (2 ^ n : ℚ)

end

end A035101.P13782321911108504286

namespace A035101

/-- `(n+1)!*A008549(n)/2^n` -/
def P13782321911108504286.Spec : Prop :=
  ∀ n, P13782321911108504286.a n = (A035101 (n + 1) : ℚ)

end A035101

/-! ## A035101.P7199783980813358149

`A129890(n)-A002866(n+1)`
-/

namespace A035101.P7199783980813358149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129890 n - A002866 (n + 1)

end

end A035101.P7199783980813358149

namespace A035101

/-- `A129890(n)-A002866(n+1)` -/
def P7199783980813358149.Spec : Prop :=
  ∀ n, P7199783980813358149.a n = A035101 (n + 1)

end A035101

/-! ## A035101.P2691498912365923140

`∏[A103517(n)]-∏[A005408(n)]`
-/

namespace A035101.P2691498912365923140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A035101.P2691498912365923140

namespace A035101

/-- `∏[A103517(n)]-∏[A005408(n)]` -/
def P2691498912365923140.Spec : Prop :=
  ∀ n, P2691498912365923140.a n = A035101 (n + 1)

end A035101

/-! ## A035101.P16397952491573948353

`∏[A103517(n)]-record[A055634(n)]`
-/

namespace A035101.P16397952491573948353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A035101.P16397952491573948353

namespace A035101

/-- `∏[A103517(n)]-record[A055634(n)]` -/
def P16397952491573948353.Spec : Prop :=
  ∀ n, P16397952491573948353.a n = A035101 (n + 1)

end A035101

/-! ## A035101.P12071949905364125901

`∏[A103517(n)]-A001147(n+1)`
-/

namespace A035101.P12071949905364125901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A001147 (n + 1)

end

end A035101.P12071949905364125901

namespace A035101

/-- `∏[A103517(n)]-A001147(n+1)` -/
def P12071949905364125901.Spec : Prop :=
  ∀ n, P12071949905364125901.a n = A035101 (n + 1)

end A035101

/-! ## A035101.P5172258460836036010

`A002866(n+1)-A081405(2*n)`
-/

namespace A035101.P5172258460836036010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 (n + 1) - A081405 (2 * n)

end

end A035101.P5172258460836036010

namespace A035101

/-- `A002866(n+1)-A081405(2*n)` -/
def P5172258460836036010.Spec : Prop :=
  ∀ n, P5172258460836036010.a n = A035101 (n + 1)

end A035101

/-!
# A035102: Composite binary rooted trees with external nodes.

The programs for A035102, there is no canonical definition to state claims against.
-/

/-! ## A035102.P561673941255657538

`record[A126120(n)]-A035010(n+2)`
-/

namespace A035102.P561673941255657538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A035010 (n + 2)

end

end A035102.P561673941255657538

/-! ## A035102.P7044117879326684755

`A349450(n+2)+A000108(n+1)`
-/

namespace A035102.P7044117879326684755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349450 (n + 2) + A000108 (n + 1)

end

end A035102.P7044117879326684755

/-! ## A035102.P11558012111962708160

`A000108(n+1)-A035010(n+2)`
-/

namespace A035102.P11558012111962708160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A035010 (n + 2)

end

end A035102.P11558012111962708160

/-! ## A035102.P13397268404848273837

`A000108(A000027(n+1))%A035010(n+2)`
-/

namespace A035102.P13397268404848273837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A000027 (n + 1)).toNat) (A035010 (n + 2))

end

end A035102.P13397268404848273837

/-! ## A035102.P16395398746573339299

`A000108(A233583(n+2))%A035010(n+2)`
-/

namespace A035102.P16395398746573339299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A233583 (n + 2)).toNat) (A035010 (n + 2))

end

end A035102.P16395398746573339299

/-! ## A035102.P4854284234009091415

`(A000245(n)+A000108(n))%A035010(n+2)`
-/

namespace A035102.P4854284234009091415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000245 n + A000108 n) (A035010 (n + 2))

end

end A035102.P4854284234009091415

/-!
# A035103: Number of 0's in binary representation of n-th prime.

The programs for A035103, the canonical program `A035103.P1324719609663575418` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035103 has offset 1).

The definition of A035103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035103.P1324719609663575418

`A035100(n+1)-A014499(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035103

/-- `A035100(n+1)-A014499(n+1)` -/
def P1324719609663575418.Spec : Prop :=
  ∀ n, P1324719609663575418.a n = A035103 (n + 1)

theorem P1324719609663575418.correct : P1324719609663575418.Spec := by
  intro n
  simp only [A035103, Nat.add_sub_cancel]

end A035103

/-! ## A035103.P2739426076187567539

`A102566(n+1)-1`
-/

namespace A035103.P2739426076187567539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102566 (n + 1) - 1

end

end A035103.P2739426076187567539

namespace A035103

/-- `A102566(n+1)-1` -/
def P2739426076187567539.Spec : Prop :=
  ∀ n, P2739426076187567539.a n = A035103 (n + 1)

theorem P2739426076187567539.correct : P2739426076187567539.Spec := by
  intro n
  simp only [A035103, Nat.add_sub_cancel, A035103.P2739426076187567539.a, A035103.P1324719609663575418.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A102566, A102566.P5376165484103837869.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035103

/-! ## A035103.P90679843631549199

`∑{digits}[A004676(n+1), 1-#]`
-/

namespace A035103.P90679843631549199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A035103.P90679843631549199

namespace A035103

/-- `∑{digits}[A004676(n+1), 1-#]` -/
def P90679843631549199.Spec : Prop :=
  ∀ n, P90679843631549199.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P17349329120040005557

`Δ[A328659(n)]-A014499(n+1)`
-/

namespace A035103.P17349329120040005557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A014499 (n + 1)

end

end A035103.P17349329120040005557

namespace A035103

/-- `Δ[A328659(n)]-A014499(n+1)` -/
def P17349329120040005557.Spec : Prop :=
  ∀ n, P17349329120040005557.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P12909195928753311797

`A000040(n+1)-A177959(n+1)`
-/

namespace A035103.P12909195928753311797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A177959 (n + 1)

end

end A035103.P12909195928753311797

namespace A035103

/-- `A000040(n+1)-A177959(n+1)` -/
def P12909195928753311797.Spec : Prop :=
  ∀ n, P12909195928753311797.a n = A035103 (n + 1)

theorem P12909195928753311797.correct : P12909195928753311797.Spec := by
  intro n
  simp only [A035103, Nat.add_sub_cancel, A035103.P12909195928753311797.a, A035103.P1324719609663575418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A177959, A177959.P3892879503494814762.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035103

/-! ## A035103.P13224488409164927959

`A080085(n+1)-A163293(n+1)`
-/

namespace A035103.P13224488409164927959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (n + 1) - A163293 (n + 1)

end

end A035103.P13224488409164927959

namespace A035103

/-- `A080085(n+1)-A163293(n+1)` -/
def P13224488409164927959.Spec : Prop :=
  ∀ n, P13224488409164927959.a n = A035103 (n + 1)

theorem P13224488409164927959.correct : P13224488409164927959.Spec := by
  intro n
  simp only [A035103, Nat.add_sub_cancel, A035103.P13224488409164927959.a, A035103.P1324719609663575418.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A080085, A080085.P4216384539738297619.a, A163293, A163293.P4247609805888595491.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035103

/-! ## A035103.P10024734520675153851

`A014499(n+1)-A372516(n+1)`
-/

namespace A035103.P10024734520675153851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) - A372516 (n + 1)

end

end A035103.P10024734520675153851

namespace A035103

/-- `A014499(n+1)-A372516(n+1)` -/
def P10024734520675153851.Spec : Prop :=
  ∀ n, P10024734520675153851.a n = A035103 (n + 1)

theorem P10024734520675153851.correct : P10024734520675153851.Spec := by
  intro n
  simp only [A035103, Nat.add_sub_cancel, A035103.P10024734520675153851.a, A035103.P1324719609663575418.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A372516, A372516.P8084116944890719171.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035103

/-! ## A035103.P7012043783604947111

`A008864(n+1)-(A177959(n+1)+1)`
-/

namespace A035103.P7012043783604947111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A177959 (n + 1) + 1)

end

end A035103.P7012043783604947111

namespace A035103

/-- `A008864(n+1)-(A177959(n+1)+1)` -/
def P7012043783604947111.Spec : Prop :=
  ∀ n, P7012043783604947111.a n = A035103 (n + 1)

theorem P7012043783604947111.correct : P7012043783604947111.Spec := by
  intro n
  simp only [A035103, Nat.add_sub_cancel, A035103.P7012043783604947111.a, A035103.P1324719609663575418.a, A008864, A008864.P9177617808325052279.a, A014499, A014499.P9770580101482900462.a, A035100, A035100.P16711503485959756516.a, A177959, A177959.P3892879503494814762.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035103

/-! ## A035103.P5556518321314995472

`A328659(n+1)-(A328659(n)+A014499(n+1))`
-/

namespace A035103.P5556518321314995472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328659 (n + 1) - (A328659 n + A014499 (n + 1))

end

end A035103.P5556518321314995472

namespace A035103

/-- `A328659(n+1)-(A328659(n)+A014499(n+1))` -/
def P5556518321314995472.Spec : Prop :=
  ∀ n, P5556518321314995472.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P4457909454273267709

`A000120(A159006(n+1)/2)`
-/

namespace A035103.P4457909454273267709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A159006 (n + 1) : ℚ) / 2)).toNat

end

end A035103.P4457909454273267709

namespace A035103

/-- `A000120(A159006(n+1)/2)` -/
def P4457909454273267709.Spec : Prop :=
  ∀ n, P4457909454273267709.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P17695349031176135400

`A008687(A057024(n+1))-1`
-/

namespace A035103.P17695349031176135400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A057024 (n + 1)).toNat - 1

end

end A035103.P17695349031176135400

namespace A035103

/-- `A008687(A057024(n+1))-1` -/
def P17695349031176135400.Spec : Prop :=
  ∀ n, P17695349031176135400.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P3864379065050511880

`A023416(A102781(n+1))`
-/

namespace A035103.P3864379065050511880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A102781 (n + 1)).toNat

end

end A035103.P3864379065050511880

namespace A035103

/-- `A023416(A102781(n+1))` -/
def P3864379065050511880.Spec : Prop :=
  ∀ n, P3864379065050511880.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P18173332484406298154

`A023416(eq[1, A107463(2*n+1)])`
-/

namespace A035103.P18173332484406298154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035103.P18173332484406298154

namespace A035103

/-- `A023416(eq[1, A107463(2*n+1)])` -/
def P18173332484406298154.Spec : Prop :=
  ∀ n, P18173332484406298154.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P2044743797589550013

`A023416(lt[A001222(2*n+1), 2])`
-/

namespace A035103.P2044743797589550013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035103.P2044743797589550013

namespace A035103

/-- `A023416(lt[A001222(2*n+1), 2])` -/
def P2044743797589550013.Spec : Prop :=
  ∀ n, P2044743797589550013.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P13851848699242056747

`A254045(A006254(n+1))`
-/

namespace A035103.P13851848699242056747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A006254 (n + 1)).toNat

end

end A035103.P13851848699242056747

namespace A035103

/-- `A254045(A006254(n+1))` -/
def P13851848699242056747.Spec : Prop :=
  ∀ n, P13851848699242056747.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P10643534011305183501

`A254045(A111333(n+2))`
-/

namespace A035103.P10643534011305183501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A111333 (n + 2)).toNat

end

end A035103.P10643534011305183501

namespace A035103

/-- `A254045(A111333(n+2))` -/
def P10643534011305183501.Spec : Prop :=
  ∀ n, P10643534011305183501.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P10740148652986726398

`A254045(A130291(n+2))`
-/

namespace A035103.P10740148652986726398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A130291 (n + 2)).toNat

end

end A035103.P10740148652986726398

namespace A035103

/-- `A254045(A130291(n+2))` -/
def P10740148652986726398.Spec : Prop :=
  ∀ n, P10740148652986726398.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P7139394728038989532

`A058197(n+1)%A102566(n+1)`
-/

namespace A035103.P7139394728038989532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A102566 (n + 1))

end

end A035103.P7139394728038989532

namespace A035103

/-- `A058197(n+1)%A102566(n+1)` -/
def P7139394728038989532.Spec : Prop :=
  ∀ n, P7139394728038989532.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P8167704161158352545

`A372472(A071403(n+1))`
-/

namespace A035103.P8167704161158352545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372472 (A071403 (n + 1)).toNat

end

end A035103.P8167704161158352545

namespace A035103

/-- `A372472(A071403(n+1))` -/
def P8167704161158352545.Spec : Prop :=
  ∀ n, P8167704161158352545.a n = A035103 (n + 1)

end A035103

/-! ## A035103.P11530090067467127958

`A000120(A159006(n+1))`
-/

namespace A035103.P11530090067467127958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A159006 (n + 1)).toNat

end

end A035103.P11530090067467127958

namespace A035103

/-- `A000120(A159006(n+1))` -/
def P11530090067467127958.Spec : Prop :=
  ∀ n, P11530090067467127958.a n = A035103 (n + 1)

end A035103

/-!
# A035104: First differences give (essentially) A028242.

The programs for A035104, the canonical program `A035104.P13366377584109428424` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035104 has offset 0).

The definition of A035104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035104.P10232274799577628694

`ogf((1+2x+x^2-3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A035104.P10232274799577628694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, -3] [1, -2, 0, 2, -1] n

end

end A035104.P10232274799577628694

namespace A035104

/-- `ogf((1+2x+x^2-3x^3)/(1-2x+2x^3-x^4))` -/
def P10232274799577628694.Spec : Prop :=
  ∀ n, P10232274799577628694.a n = A035104 n

end A035104

/-! ## A035104.P1192837292995602116

`(5+3*(-1)^n+28*n+2*n²)/8`
-/

namespace A035104.P1192837292995602116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 + 3 * (-1) ^ n + (28 * n : ℤ) + (2 * n ^ 2 : ℤ) : ℚ) / 8

end

end A035104.P1192837292995602116

namespace A035104

/-- `(5+3*(-1)^n+28*n+2*n²)/8` -/
def P1192837292995602116.Spec : Prop :=
  ∀ n, P1192837292995602116.a n = (A035104 n : ℚ)

theorem P1192837292995602116.correct : P1192837292995602116.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A035104, Nat.add_sub_cancel, A035104.P1192837292995602116.a, A035104.P13366377584109428424.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A035104, Nat.add_sub_cancel, A035104.P1192837292995602116.a, A035104.P13366377584109428424.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A035104

/-! ## A035104.P13366377584109428424

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035104

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P13366377584109428424.Spec : Prop :=
  ∀ n, P13366377584109428424.a n = A035104 n

theorem P13366377584109428424.correct : P13366377584109428424.Spec := by
  intro n
  simp only [A035104]

end A035104

/-! ## A035104.P3540553623869827998

`∑[a(n-2)+1]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A035104.P3540553623869827998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035104.P3540553623869827998

namespace A035104

/-- `∑[a(n-2)+1]` -/
def P3540553623869827998.Spec : Prop :=
  ∀ n, (P3540553623869827998.a n : ℤ) = A035104 n

end A035104

/-! ## A035104.P10754425370716909154

`a(n-2)+6+n` with `a(0)=1, a(1)=4`
-/

namespace A035104.P10754425370716909154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 6 + n

end

end A035104.P10754425370716909154

namespace A035104

/-- `a(n-2)+6+n` -/
def P10754425370716909154.Spec : Prop :=
  ∀ n, (P10754425370716909154.a n : ℤ) = A035104 n

end A035104

/-! ## A035104.P10087368047370941358

`∑[∑[1-a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A035104.P10087368047370941358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035104.P10087368047370941358

namespace A035104

/-- `∑[∑[1-a(n-1)]]` -/
def P10087368047370941358.Spec : Prop :=
  ∀ n, P10087368047370941358.a n = A035104 n

end A035104

/-! ## A035104.P1890238056125883870

`floor((xor(3, 12*n)+(n+1)²)/4)`
-/

namespace A035104.P1890238056125883870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 3 (12 * n) + (n + 1) ^ 2 : ℚ) / 4⌋

end

end A035104.P1890238056125883870

namespace A035104

/-- `floor((xor(3, 12*n)+(n+1)²)/4)` -/
def P1890238056125883870.Spec : Prop :=
  ∀ n, P1890238056125883870.a n = A035104 n

end A035104

/-! ## A035104.P1485817331122196727

`∑[∑{d}[n, floor(2/#)]+floor(n/2)+1]`
-/

namespace A035104.P1485817331122196727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊2 / (d : ℚ)⌋ + (⌊(n : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035104.P1485817331122196727

namespace A035104

/-- `∑[∑{d}[n, floor(2/#)]+floor(n/2)+1]` -/
def P1485817331122196727.Spec : Prop :=
  ∀ n, P1485817331122196727.a n = A035104 n

end A035104

/-! ## A035104.P4284713169019324356

`∑[∑[(-1)^n*a((n+1)%2)]]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A035104.P4284713169019324356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  (-1) ^ n * f2 ((n + 1) % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035104.P4284713169019324356

namespace A035104

/-- `∑[∑[(-1)^n*a((n+1)%2)]]` -/
def P4284713169019324356.Spec : Prop :=
  ∀ n, P4284713169019324356.a n = A035104 n

end A035104

/-! ## A035104.P13731375112867799561

`A079524(n)+Δ[n²]`
-/

namespace A035104.P13731375112867799561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A035104.P13731375112867799561

namespace A035104

/-- `A079524(n)+Δ[n²]` -/
def P13731375112867799561.Spec : Prop :=
  ∀ n, P13731375112867799561.a n = A035104 n

end A035104

/-! ## A035104.P17927688291339342988

`A184676(n+1)+2*n`
-/

namespace A035104.P17927688291339342988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1) + (2 * n : ℤ)

end

end A035104.P17927688291339342988

namespace A035104

/-- `A184676(n+1)+2*n` -/
def P17927688291339342988.Spec : Prop :=
  ∀ n, P17927688291339342988.a n = A035104 n

end A035104

/-! ## A035104.P2298027625179092490

`A004652(n+1)+3*n`
-/

namespace A035104.P2298027625179092490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n + 1) + (3 * n : ℤ)

end

end A035104.P2298027625179092490

namespace A035104

/-- `A004652(n+1)+3*n` -/
def P2298027625179092490.Spec : Prop :=
  ∀ n, P2298027625179092490.a n = A035104 n

end A035104

/-! ## A035104.P17098554930617234037

`A179272(n)+A016825(n)`
-/

namespace A035104.P17098554930617234037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179272 n + A016825 n

end

end A035104.P17098554930617234037

namespace A035104

/-- `A179272(n)+A016825(n)` -/
def P17098554930617234037.Spec : Prop :=
  ∀ n, P17098554930617234037.a n = A035104 n

end A035104

/-! ## A035104.P13014237213817400396

`A052905(n)-A004652(n)`
-/

namespace A035104.P13014237213817400396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - A004652 n

end

end A035104.P13014237213817400396

namespace A035104

/-- `A052905(n)-A004652(n)` -/
def P13014237213817400396.Spec : Prop :=
  ∀ n, P13014237213817400396.a n = A035104 n

end A035104

/-! ## A035104.P18298303657635114656

`A101424(n)-A027688(n)`
-/

namespace A035104.P18298303657635114656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101424 n - A027688 n

end

end A035104.P18298303657635114656

namespace A035104

/-- `A101424(n)-A027688(n)` -/
def P18298303657635114656.Spec : Prop :=
  ∀ n, P18298303657635114656.a n = A035104 n

end A035104

/-! ## A035104.P4264590743577235735

`A008585(n)+A004652(n+1)`
-/

namespace A035104.P4264590743577235735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004652 (n + 1)

end

end A035104.P4264590743577235735

namespace A035104

/-- `A008585(n)+A004652(n+1)` -/
def P4264590743577235735.Spec : Prop :=
  ∀ n, P4264590743577235735.a n = A035104 n

end A035104

/-! ## A035104.P5310076039045340523

`A032766(n)+A004116(n+1)`
-/

namespace A035104.P5310076039045340523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + A004116 (n + 1)

end

end A035104.P5310076039045340523

namespace A035104

/-- `A032766(n)+A004116(n+1)` -/
def P5310076039045340523.Spec : Prop :=
  ∀ n, P5310076039045340523.a n = A035104 n

end A035104

/-! ## A035104.P9734979118123594180

`A047346(n+1)+A002620(n)`
-/

namespace A035104.P9734979118123594180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (n + 1) + A002620 n

end

end A035104.P9734979118123594180

namespace A035104

/-- `A047346(n+1)+A002620(n)` -/
def P9734979118123594180.Spec : Prop :=
  ∀ n, P9734979118123594180.a n = A035104 n

end A035104

/-! ## A035104.P10562005446375607984

`A047356(n+1)+A004652(n)`
-/

namespace A035104.P10562005446375607984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047356 (n + 1) + A004652 n

end

end A035104.P10562005446375607984

namespace A035104

/-- `A047356(n+1)+A004652(n)` -/
def P10562005446375607984.Spec : Prop :=
  ∀ n, P10562005446375607984.a n = A035104 n

end A035104

/-! ## A035104.P14052880742494640848

`A047355(n+1)+A033638(n)`
-/

namespace A035104.P14052880742494640848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) + A033638 n

end

end A035104.P14052880742494640848

namespace A035104

/-- `A047355(n+1)+A033638(n)` -/
def P14052880742494640848.Spec : Prop :=
  ∀ n, P14052880742494640848.a n = A035104 n

end A035104

/-!
# A035105: a(n) = LCM of Fibonacci sequence {F_1,...,F_n}.

The programs for A035105, there is no canonical definition to state claims against.
-/

/-! ## A035105.P17917859180975009215

`∏[A061446(n+1)]`
-/

namespace A035105.P17917859180975009215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A035105.P17917859180975009215

/-! ## A035105.P2850199536901114950

`lcm(a(n-2), A001654(n))` with `a(0)=1, a(1)=1`
-/

namespace A035105.P2850199536901114950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 2) : ℤ) (A001654 n)

end

end A035105.P2850199536901114950

/-! ## A035105.P6295798943336986861

`lcm(-a(n-1), A058071(∑[n]))` with `a(0)=1`
-/

namespace A035105.P6295798943336986861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (A058071 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A035105.P6295798943336986861

/-! ## A035105.P6292427686587608120

`lcm(A000045(n+1), a(abs(1-n)))` with `a(0)=1`
-/

namespace A035105.P6292427686587608120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A000045 (n + 1)) (a |1 - (n : ℤ)|.toNat : ℤ)

end

end A035105.P6292427686587608120

/-!
# A035106: 1, together with numbers of the form k*(k+1) or k*(k+2), k > 0.

The programs for A035106, the canonical program `A035106.P11125208525114404047` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035106 has offset 1).

The definition of A035106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035106.P11125208525114404047

`a(n-2)+n+1` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035106

/-- `a(n-2)+n+1` -/
def P11125208525114404047.Spec : Prop :=
  ∀ n, (P11125208525114404047.a n : ℤ) = A035106 (n + 1)

theorem P11125208525114404047.correct : P11125208525114404047.Spec := by
  intro n
  simp only [A035106, Nat.add_sub_cancel]

end A035106

/-! ## A035106.P14055912743405885915

`ogf((1-x^2+2x^3-x^4)/(1-2x+2x^3-x^4))`
-/

namespace A035106.P14055912743405885915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 2, -1] [1, -2, 0, 2, -1] n

end

end A035106.P14055912743405885915

namespace A035106

/-- `ogf((1-x^2+2x^3-x^4)/(1-2x+2x^3-x^4))` -/
def P14055912743405885915.Spec : Prop :=
  ∀ n, P14055912743405885915.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P5124723940754107214

`record[a(n-2)+n]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A035106.P5124723940754107214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035106.P5124723940754107214

namespace A035106

/-- `record[a(n-2)+n]` -/
def P5124723940754107214.Spec : Prop :=
  ∀ n, (P5124723940754107214.a n : ℤ) = A035106 (n + 1)

end A035106

/-! ## A035106.P2349796973446169528

`∑[1+a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A035106.P2349796973446169528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  1 + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035106.P2349796973446169528

namespace A035106

/-- `∑[1+a(n-2)]` -/
def P2349796973446169528.Spec : Prop :=
  ∀ n, (P2349796973446169528.a n : ℤ) = A035106 (n + 1)

end A035106

/-! ## A035106.P9469303007679932826

`1+a(n-2)+n` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A035106.P9469303007679932826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  1 + a (n - 2) + n

end

end A035106.P9469303007679932826

namespace A035106

/-- `1+a(n-2)+n` -/
def P9469303007679932826.Spec : Prop :=
  ∀ n, (P9469303007679932826.a n : ℤ) = A035106 (n + 1)

theorem P9469303007679932826.correct : P9469303007679932826.Spec := by
  intro n
  simp only [A035106, Nat.add_sub_cancel, A035106.P9469303007679932826.a, A035106.P11125208525114404047.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A035106

/-! ## A035106.P14331664950373265861

`∑[n]-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A035106.P14331664950373265861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 3)

end

end A035106.P14331664950373265861

namespace A035106

/-- `∑[n]-a(n-3)` -/
def P14331664950373265861.Spec : Prop :=
  ∀ n, P14331664950373265861.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P10461314312184375173

`round((n+2)/sinh(4/(n+2)))`
-/

namespace A035106.P10461314312184375173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) / Real.sinh (4 / (n + 2 : ℚ) : ℝ))

end

end A035106.P10461314312184375173

namespace A035106

/-- `round((n+2)/sinh(4/(n+2)))` -/
def P10461314312184375173.Spec : Prop :=
  ∀ n, P10461314312184375173.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P4480530375714938118

`ceil((abs(1-n)+1)²/4)+n`
-/

namespace A035106.P4480530375714938118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((|1 - (n : ℤ)| + 1) ^ 2 : ℚ) / 4⌉ + (n : ℤ)

end

end A035106.P4480530375714938118

namespace A035106

/-- `ceil((abs(1-n)+1)²/4)+n` -/
def P4480530375714938118.Spec : Prop :=
  ∀ n, P4480530375714938118.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P14435721330596500757

`ceil(A076921(n+1)+n/2)`
-/

namespace A035106.P14435721330596500757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076921 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A035106.P14435721330596500757

namespace A035106

/-- `ceil(A076921(n+1)+n/2)` -/
def P14435721330596500757.Spec : Prop :=
  ∀ n, P14435721330596500757.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P13196266761660335197

`ceil((A080476(n+1)+n)/2)`
-/

namespace A035106.P13196266761660335197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080476 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A035106.P13196266761660335197

namespace A035106

/-- `ceil((A080476(n+1)+n)/2)` -/
def P13196266761660335197.Spec : Prop :=
  ∀ n, P13196266761660335197.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P583659659764525692

`floor(((A028310(n)+1)²+2*(n+1))/4)`
-/

namespace A035106.P583659659764525692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A028310 n + 1) ^ 2 + (2 * (n + 1) : ℤ) : ℚ) / 4⌋

end

end A035106.P583659659764525692

namespace A035106

/-- `floor(((A028310(n)+1)²+2*(n+1))/4)` -/
def P583659659764525692.Spec : Prop :=
  ∀ n, P583659659764525692.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P13697933026237833751

`A065033(n)*A266977(n)`
-/

namespace A035106.P13697933026237833751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A266977 n

end

end A035106.P13697933026237833751

namespace A035106

/-- `A065033(n)*A266977(n)` -/
def P13697933026237833751.Spec : Prop :=
  ∀ n, P13697933026237833751.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P7004647781009594543

`∑[A030451(A289207(n))+1]`
-/

namespace A035106.P7004647781009594543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A289207 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035106.P7004647781009594543

namespace A035106

/-- `∑[A030451(A289207(n))+1]` -/
def P7004647781009594543.Spec : Prop :=
  ∀ n, P7004647781009594543.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P11099599086284202723

`∑[A052938(A004275(n)-n)]`
-/

namespace A035106.P11099599086284202723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A004275 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035106.P11099599086284202723

namespace A035106

/-- `∑[A052938(A004275(n)-n)]` -/
def P11099599086284202723.Spec : Prop :=
  ∀ n, P11099599086284202723.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P10918788512876946686

`∑[A266591(n)]*A065033(n)`
-/

namespace A035106.P10918788512876946686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A065033 n

end

end A035106.P10918788512876946686

namespace A035106

/-- `∑[A266591(n)]*A065033(n)` -/
def P10918788512876946686.Spec : Prop :=
  ∀ n, P10918788512876946686.a n = A035106 (n + 1)

end A035106

/-! ## A035106.P717473244307650199

`∪[A064796(n+1), A001539(n)]`
-/

namespace A035106.P717473244307650199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001539 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035106.P717473244307650199

namespace A035106

/-- `∪[A064796(n+1), A001539(n)]` -/
def P717473244307650199.Spec : Prop :=
  ∀ n, (P717473244307650199.a n : ℤ) = A035106 (n + 1)

end A035106

/-! ## A035106.P5435151908720305373

`∪[A064796(n+1), A060615(n)]`
-/

namespace A035106.P5435151908720305373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060615 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035106.P5435151908720305373

namespace A035106

/-- `∪[A064796(n+1), A060615(n)]` -/
def P5435151908720305373.Spec : Prop :=
  ∀ n, (P5435151908720305373.a n : ℤ) = A035106 (n + 1)

end A035106

/-! ## A035106.P17650640061157596715

`∪[A064796(n+1), A103454(n)]`
-/

namespace A035106.P17650640061157596715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035106.P17650640061157596715

namespace A035106

/-- `∪[A064796(n+1), A103454(n)]` -/
def P17650640061157596715.Spec : Prop :=
  ∀ n, (P17650640061157596715.a n : ℤ) = A035106 (n + 1)

end A035106

/-! ## A035106.P13380777032605238456

`∪[A064796(n+1), A242985(n)]`
-/

namespace A035106.P13380777032605238456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035106.P13380777032605238456

namespace A035106

/-- `∪[A064796(n+1), A242985(n)]` -/
def P13380777032605238456.Spec : Prop :=
  ∀ n, (P13380777032605238456.a n : ℤ) = A035106 (n + 1)

end A035106

/-! ## A035106.P9489434641163497319

`∪[A064796(n+1), A304726(n)]`
-/

namespace A035106.P9489434641163497319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304726 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035106.P9489434641163497319

namespace A035106

/-- `∪[A064796(n+1), A304726(n)]` -/
def P9489434641163497319.Spec : Prop :=
  ∀ n, (P9489434641163497319.a n : ℤ) = A035106 (n + 1)

end A035106

/-!
# A035107: First differences give (essentially) A028242.

The programs for A035107, the canonical program `A035107.P10899615783243555225` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035107 has offset 0).

The definition of A035107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035107.P16294105923312300506

`ogf((3-4x^2+2x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A035107.P16294105923312300506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -4, 2] [1, -3, 2, 2, -3, 1] n

end

end A035107.P16294105923312300506

namespace A035107

/-- `ogf((3-4x^2+2x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P16294105923312300506.Spec : Prop :=
  ∀ n, P16294105923312300506.a n = A035107 n

end A035107

/-! ## A035107.P10899615783243555225

`(4*n^3+54*n²+212*n+153-9*(-1)^n)/48`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035107

/-- `(4*n^3+54*n²+212*n+153-9*(-1)^n)/48` -/
def P10899615783243555225.Spec : Prop :=
  ∀ n, P10899615783243555225.a n = (A035107 n : ℚ)

end A035107

/-! ## A035107.P4343074263080261064

`∑[∑[a(n-2)+1]]` with `a(0)=3, a(1)=3, a(2)=2`
-/

namespace A035107.P4343074263080261064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 2] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035107.P4343074263080261064

namespace A035107

/-- `∑[∑[a(n-2)+1]]` -/
def P4343074263080261064.Spec : Prop :=
  ∀ n, (P4343074263080261064.a n : ℤ) = A035107 n

end A035107

/-! ## A035107.P8436516330389167814

`A175287(n)+(n+1)*(n+3)`
-/

namespace A035107.P8436516330389167814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n + ((n + 1) * (n + 3) : ℤ)

end

end A035107.P8436516330389167814

namespace A035107

/-- `A175287(n)+(n+1)*(n+3)` -/
def P8436516330389167814.Spec : Prop :=
  ∀ n, P8436516330389167814.a n = A035107 n

end A035107

/-! ## A035107.P13982207397673876485

`∑[A049636(n)+∑[∑[n%2]]]+1`
-/

namespace A035107.P13982207397673876485
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A035107.P13982207397673876485

namespace A035107

/-- `∑[A049636(n)+∑[∑[n%2]]]+1` -/
def P13982207397673876485.Spec : Prop :=
  ∀ n, P13982207397673876485.a n = A035107 n

end A035107

/-! ## A035107.P15902632017370886964

`A002623(n)+∑[2*A080513(n)]`
-/

namespace A035107.P15902632017370886964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035107.P15902632017370886964

namespace A035107

/-- `A002623(n)+∑[2*A080513(n)]` -/
def P15902632017370886964.Spec : Prop :=
  ∀ n, P15902632017370886964.a n = A035107 n

end A035107

/-! ## A035107.P8577036172016228466

`A276382(n+1)+A266464(n+1)`
-/

namespace A035107.P8577036172016228466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276382 (n + 1) + A266464 (n + 1)

end

end A035107.P8577036172016228466

namespace A035107

/-- `A276382(n+1)+A266464(n+1)` -/
def P8577036172016228466.Spec : Prop :=
  ∀ n, P8577036172016228466.a n = A035107 n

end A035107

/-! ## A035107.P12690349135234664934

`A110654(n)+∑[A014616(n+1)+1]`
-/

namespace A035107.P12690349135234664934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035107.P12690349135234664934

namespace A035107

/-- `A110654(n)+∑[A014616(n+1)+1]` -/
def P12690349135234664934.Spec : Prop :=
  ∀ n, P12690349135234664934.a n = A035107 n

end A035107

/-! ## A035107.P12237573869902844163

`∑[A014616(n+1)]+A080513(n)+n`
-/

namespace A035107.P12237573869902844163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A080513 n + (n : ℤ))

end

end A035107.P12237573869902844163

namespace A035107

/-- `∑[A014616(n+1)]+A080513(n)+n` -/
def P12237573869902844163.Spec : Prop :=
  ∀ n, P12237573869902844163.a n = A035107 n

end A035107

/-! ## A035107.P17724457409978917910

`∑[abs(A131723(n+2))]`
-/

namespace A035107.P17724457409978917910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131723 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035107.P17724457409978917910

namespace A035107

/-- `∑[abs(A131723(n+2))]` -/
def P17724457409978917910.Spec : Prop :=
  ∀ n, P17724457409978917910.a n = A035107 n

end A035107

/-! ## A035107.P2721757670962623113

`∑[A064796(n+2)]+1`
-/

namespace A035107.P2721757670962623113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A035107.P2721757670962623113

namespace A035107

/-- `∑[A064796(n+2)]+1` -/
def P2721757670962623113.Spec : Prop :=
  ∀ n, P2721757670962623113.a n = A035107 n

end A035107

/-! ## A035107.P7776329477876307347

`∑[A079524(n+1)+2]`
-/

namespace A035107.P7776329477876307347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079524 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035107.P7776329477876307347

namespace A035107

/-- `∑[A079524(n+1)+2]` -/
def P7776329477876307347.Spec : Prop :=
  ∀ n, P7776329477876307347.a n = A035107 n

end A035107

/-! ## A035107.P17453436906284122045

`∑[A035104(n+1)]-(n+1)²`
-/

namespace A035107.P17453436906284122045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A035107.P17453436906284122045

namespace A035107

/-- `∑[A035104(n+1)]-(n+1)²` -/
def P17453436906284122045.Spec : Prop :=
  ∀ n, P17453436906284122045.a n = A035107 n

end A035107

/-! ## A035107.P6334833616551032079

`A183575(n+2)+A002623(n)`
-/

namespace A035107.P6334833616551032079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183575 (n + 2) + A002623 n

end

end A035107.P6334833616551032079

namespace A035107

/-- `A183575(n+2)+A002623(n)` -/
def P6334833616551032079.Spec : Prop :=
  ∀ n, P6334833616551032079.a n = A035107 n

end A035107

/-! ## A035107.P7658423495959078393

`Δ[A002623(n)+A001752(n)]-2`
-/

namespace A035107.P7658423495959078393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A035107.P7658423495959078393

namespace A035107

/-- `Δ[A002623(n)+A001752(n)]-2` -/
def P7658423495959078393.Spec : Prop :=
  ∀ n, P7658423495959078393.a n = A035107 n

end A035107

/-! ## A035107.P8925902250605312612

`Δ[A032091(n+6)+A006918(n)]-2`
-/

namespace A035107.P8925902250605312612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6) + A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A035107.P8925902250605312612

namespace A035107

/-- `Δ[A032091(n+6)+A006918(n)]-2` -/
def P8925902250605312612.Spec : Prop :=
  ∀ n, P8925902250605312612.a n = A035107 n

end A035107

/-! ## A035107.P14959494205742731374

`A002623(n+1)+A024206(n+2)-1`
-/

namespace A035107.P14959494205742731374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) + (A024206 (n + 2) - 1)

end

end A035107.P14959494205742731374

namespace A035107

/-- `A002623(n+1)+A024206(n+2)-1` -/
def P14959494205742731374.Spec : Prop :=
  ∀ n, P14959494205742731374.a n = A035107 n

end A035107

/-! ## A035107.P317305617446864292

`A002620(n+1)+A002623(n+1)+n`
-/

namespace A035107.P317305617446864292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002623 (n + 1) + (n : ℤ))

end

end A035107.P317305617446864292

namespace A035107

/-- `A002620(n+1)+A002623(n+1)+n` -/
def P317305617446864292.Spec : Prop :=
  ∀ n, P317305617446864292.a n = A035107 n

end A035107

/-! ## A035107.P13179699480405710177

`A248851(n+1)-(A002620(n)+A000292(n))`
-/

namespace A035107.P13179699480405710177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 (n + 1) - (A002620 n + A000292 n)

end

end A035107.P13179699480405710177

namespace A035107

/-- `A248851(n+1)-(A002620(n)+A000292(n))` -/
def P13179699480405710177.Spec : Prop :=
  ∀ n, P13179699480405710177.a n = A035107 n

end A035107

/-! ## A035107.P9396319692970067691

`A002623(n+1)+A256666(n)-A248851(n)`
-/

namespace A035107.P9396319692970067691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) + (A256666 n - A248851 n)

end

end A035107.P9396319692970067691

namespace A035107

/-- `A002623(n+1)+A256666(n)-A248851(n)` -/
def P9396319692970067691.Spec : Prop :=
  ∀ n, P9396319692970067691.a n = A035107 n

end A035107

/-!
# A035108: Denominators in expansion of a certain Dirichlet series.

The programs for A035108, there is no canonical definition to state claims against.
-/

/-! ## A035108.P3171300665011300212

`A328335(∑[n+3]-2)-A337602(n)`
-/

namespace A035108.P3171300665011300212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328335 (∑ j ∈ Finset.range (n + 1), f1 j - 2) - A337602 n

end

end A035108.P3171300665011300212

/-!
# A035109: Numerators in the expansion of the Dirichlet series zeta(s) * Product((1+p^-s) / (1-p^(1-s))), p > 2.

The programs for A035109, the canonical program `A035109.P9361930501321691635` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035109 has offset 1).

The definition of A035109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035109.P9361930501321691635

`A309324(n+1)/gcd(n+1, 2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035109

/-- `A309324(n+1)/gcd(n+1, 2)` -/
def P9361930501321691635.Spec : Prop :=
  ∀ n, P9361930501321691635.a n = (A035109 (n + 1) : ℚ)

end A035109

/-! ## A035109.P5286779301189871819

`A060648(A000265(n+1))`
-/

namespace A035109.P5286779301189871819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (A000265 (n + 1)).toNat

end

end A035109.P5286779301189871819

namespace A035109

/-- `A060648(A000265(n+1))` -/
def P5286779301189871819.Spec : Prop :=
  ∀ n, P5286779301189871819.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P7437090715529737000

`1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*A000203(#)*A000593(#)]`
-/

namespace A035109.P7437090715529737000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000203 d * A000593 d : ℤ) : ℚ)

end

end A035109.P7437090715529737000

namespace A035109

/-- `1/(n+1)*∑{d}[n+1, A008683((n+1)/#)*A000203(#)*A000593(#)]` -/
def P7437090715529737000.Spec : Prop :=
  ∀ n, P7437090715529737000.a n = (A035109 (n + 1) : ℚ)

end A035109

/-! ## A035109.P2289100238362274022

`∑{d}[(n+1)/2^val(n+1, 2), A001615(#)]`
-/

namespace A035109.P2289100238362274022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001615 d

end

end A035109.P2289100238362274022

namespace A035109

/-- `∑{d}[(n+1)/2^val(n+1, 2), A001615(#)]` -/
def P2289100238362274022.Spec : Prop :=
  ∀ n, P2289100238362274022.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P15071387213125465657

`A060648(A153733(n)+1)`
-/

namespace A035109.P15071387213125465657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (A153733 n + 1).toNat

end

end A035109.P15071387213125465657

namespace A035109

/-- `A060648(A153733(n)+1)` -/
def P15071387213125465657.Spec : Prop :=
  ∀ n, P15071387213125465657.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P10717676348042630329

`A000265(A309324(n+1))`
-/

namespace A035109.P10717676348042630329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A309324 (n + 1)).toNat

end

end A035109.P10717676348042630329

namespace A035109

/-- `A000265(A309324(n+1))` -/
def P10717676348042630329.Spec : Prop :=
  ∀ n, P10717676348042630329.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P7469605571242762600

`A309324(n+1)/A000034(n)`
-/

namespace A035109.P7469605571242762600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309324 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A035109.P7469605571242762600

namespace A035109

/-- `A309324(n+1)/A000034(n)` -/
def P7469605571242762600.Spec : Prop :=
  ∀ n, P7469605571242762600.a n = (A035109 (n + 1) : ℚ)

end A035109

/-! ## A035109.P3286072140509272248

`∑{d}[n+1, A068068(#)*A193356((n+1)/#)]`
-/

namespace A035109.P3286072140509272248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068068 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P3286072140509272248

namespace A035109

/-- `∑{d}[n+1, A068068(#)*A193356((n+1)/#)]` -/
def P3286072140509272248.Spec : Prop :=
  ∀ n, P3286072140509272248.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P5645630582424892904

`∑{d}[n+1, A000593(#)*A323239((n+1)/#)]`
-/

namespace A035109.P5645630582424892904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P5645630582424892904

namespace A035109

/-- `∑{d}[n+1, A000593(#)*A323239((n+1)/#)]` -/
def P5645630582424892904.Spec : Prop :=
  ∀ n, P5645630582424892904.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P4154565197190932947

`∑{d}[n+1, A088705(#)*A253629((n+1)/#)]`
-/

namespace A035109.P4154565197190932947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A253629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P4154565197190932947

namespace A035109

/-- `∑{d}[n+1, A088705(#)*A253629((n+1)/#)]` -/
def P4154565197190932947.Spec : Prop :=
  ∀ n, P4154565197190932947.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P14847458846426885354

`∑{d}[n+1, A045771(#)*A349343((n+1)/#)]`
-/

namespace A035109.P14847458846426885354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045771 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P14847458846426885354

namespace A035109

/-- `∑{d}[n+1, A045771(#)*A349343((n+1)/#)]` -/
def P14847458846426885354.Spec : Prop :=
  ∀ n, P14847458846426885354.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P13094155513337234117

`∑{d}[n+1, A078644(#)*A319997((n+1)/#)]`
-/

namespace A035109.P13094155513337234117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078644 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P13094155513337234117

namespace A035109

/-- `∑{d}[n+1, A078644(#)*A319997((n+1)/#)]` -/
def P13094155513337234117.Spec : Prop :=
  ∀ n, P13094155513337234117.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P5251534789253655238

`∑{d}[n+1, A154269(#)*A309324((n+1)/#)]`
-/

namespace A035109.P5251534789253655238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A309324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P5251534789253655238

namespace A035109

/-- `∑{d}[n+1, A154269(#)*A309324((n+1)/#)]` -/
def P5251534789253655238.Spec : Prop :=
  ∀ n, P5251534789253655238.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P2150325712518188246

`∑{d}[n+1, A264740(#)*A359155((n+1)/#)]`
-/

namespace A035109.P2150325712518188246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A264740 d * A359155 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P2150325712518188246

namespace A035109

/-- `∑{d}[n+1, A264740(#)*A359155((n+1)/#)]` -/
def P2150325712518188246.Spec : Prop :=
  ∀ n, P2150325712518188246.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P17254266885078025948

`∑{d}[n+1, A288417(#)*A359548((n+1)/#)]`
-/

namespace A035109.P17254266885078025948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288417 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P17254266885078025948

namespace A035109

/-- `∑{d}[n+1, A288417(#)*A359548((n+1)/#)]` -/
def P17254266885078025948.Spec : Prop :=
  ∀ n, P17254266885078025948.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P12046331813977187467

`∑{d}[n+1, A317528(#)*A335115((n+1)/#)]`
-/

namespace A035109.P12046331813977187467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317528 d * A335115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P12046331813977187467

namespace A035109

/-- `∑{d}[n+1, A317528(#)*A335115((n+1)/#)]` -/
def P12046331813977187467.Spec : Prop :=
  ∀ n, P12046331813977187467.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P11496542161118293162

`∑{d}[n+1, A033999(#-1)*A159634((n+1)/#)]`
-/

namespace A035109.P11496542161118293162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A159634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P11496542161118293162

namespace A035109

/-- `∑{d}[n+1, A033999(#-1)*A159634((n+1)/#)]` -/
def P11496542161118293162.Spec : Prop :=
  ∀ n, P11496542161118293162.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P18365114854182511780

`∑{d}[n+1, A059841(#-1)*A347385((n+1)/#)]`
-/

namespace A035109.P18365114854182511780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A347385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035109.P18365114854182511780

namespace A035109

/-- `∑{d}[n+1, A059841(#-1)*A347385((n+1)/#)]` -/
def P18365114854182511780.Spec : Prop :=
  ∀ n, P18365114854182511780.a n = A035109 (n + 1)

end A035109

/-! ## A035109.P12311554678050147763

`A309324(2*(n+1))/2`
-/

namespace A035109.P12311554678050147763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309324 (2 * (n + 1)) : ℚ) / 2

end

end A035109.P12311554678050147763

namespace A035109

/-- `A309324(2*(n+1))/2` -/
def P12311554678050147763.Spec : Prop :=
  ∀ n, P12311554678050147763.a n = (A035109 (n + 1) : ℚ)

end A035109

/-! ## A035109.P1873961375952124608

`A060648(A028234(2*(n+1)))`
-/

namespace A035109.P1873961375952124608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060648 (A028234 (2 * (n + 1))).toNat

end

end A035109.P1873961375952124608

namespace A035109

/-- `A060648(A028234(2*(n+1)))` -/
def P1873961375952124608.Spec : Prop :=
  ∀ n, P1873961375952124608.a n = A035109 (n + 1)

end A035109

/-!
# A035111: Numerators in expansion of a certain Dirichlet series.

The programs for A035111, there is no canonical definition to state claims against.
-/

/-! ## A035111.P5966849599185244356

`A031364(A031363(n+1))`
-/

namespace A035111.P5966849599185244356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (A031363 (n + 1)).toNat

end

end A035111.P5966849599185244356

/-! ## A035111.P5702380686490630132

`A031364(lt[1, A263850(n)])`
-/

namespace A035111.P5702380686490630132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A035111.P5702380686490630132

/-! ## A035111.P10301735897838713477

`A031364(A236331(n+1)/64)`
-/

namespace A035111.P10301735897838713477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (SequenceMachineLib.roundAway ((A236331 (n + 1) : ℚ) / 64)).toNat

end

end A035111.P10301735897838713477

/-! ## A035111.P8564908367545955236

`A031364(lt[0, A031364(n+1)]+1)`
-/

namespace A035111.P8564908367545955236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A035111.P8564908367545955236

/-! ## A035111.P14423956658267737994

`A031364(eq[1, gcd(5, A321562(n+1))]+1)`
-/

namespace A035111.P14423956658267737994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A321562 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A035111.P14423956658267737994

/-! ## A035111.P9416094182027312294

`A031364(record[n%(A035187(n+1)+n)+1])`
-/

namespace A035111.P9416094182027312294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A035187 (n + 1) + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035111.P9416094182027312294

/-! ## A035111.P11307684591184162758

`A031364(eq[1, char[A022344(n)]])`
-/

namespace A035111.P11307684591184162758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031364 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035111.P11307684591184162758

/-!
# A035112: Smallest even index 2a such that n-th irregular prime p (A000928(n)) divides Bernoulli_{2a} with 0<=2a<=p-3.

The programs for A035112, there is no canonical definition to state claims against.
-/

/-! ## A035112.P12486447163761913276

`A281246(n+1)+1`
-/

namespace A035112.P12486447163761913276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281246 (n + 1) + 1

end

end A035112.P12486447163761913276

/-! ## A035112.P3784819018796957423

`A014681(A281246(n+1))`
-/

namespace A035112.P3784819018796957423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A281246 (n + 1)).toNat

end

end A035112.P3784819018796957423

/-! ## A035112.P1575076700463588779

`A090790(n+1)+2`
-/

namespace A035112.P1575076700463588779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090790 (n + 1) + 2

end

end A035112.P1575076700463588779

/-! ## A035112.P9274645810673563762

`A009056(A090790(n+1))`
-/

namespace A035112.P9274645810673563762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A090790 (n + 1)).toNat

end

end A035112.P9274645810673563762

/-! ## A035112.P8941653946446783111

`A308765(∑[A247005(n)!])`
-/

namespace A035112.P8941653946446783111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A247005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035112.P8941653946446783111

/-!
# A035113: Numbers != 2 (mod 4) listed in order of increasing totient function phi (A000010).

The programs for A035113, there is no canonical definition to state claims against.
-/

/-! ## A035113.P13838671621102436299

`filter[A032447(n+1), A152822(#)]`
-/

namespace A035113.P13838671621102436299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A035113.P13838671621102436299

/-!
# A035114: Values of phi(n) corresponding to A035113.

The programs for A035114, there is no canonical definition to state claims against.
-/

/-! ## A035114.P16607253056848574080

`A000010(A035113(n+1))`
-/

namespace A035114.P16607253056848574080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A035113 (n + 1)).toNat

end

end A035114.P16607253056848574080

/-! ## A035114.P17254245153651330068

`A007614(eq[2, A020639(A032447(n+1))])`
-/

namespace A035114.P17254245153651330068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035114.P17254245153651330068

/-! ## A035114.P13837836018175265394

`A039649(A035113(2*n+1-n))-1`
-/

namespace A035114.P13837836018175265394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A035113 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat - 1

end

end A035114.P13837836018175265394

/-! ## A035114.P13306558653414262281

`A039649(filter[A032447(n+1), A152822(#)])-1`
-/

namespace A035114.P13306558653414262281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)).toNat - 1

end

end A035114.P13306558653414262281

/-! ## A035114.P5024850481167692813

`A093819(2*A035113(n+1))`
-/

namespace A035114.P5024850481167692813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (2 * A035113 (n + 1)).toNat

end

end A035114.P5024850481167692813

/-! ## A035114.P4172297213230497519

`A093819(A035113(n+1)+A035113(n+1))`
-/

namespace A035114.P4172297213230497519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A035113 (n + 1) + A035113 (n + 1)).toNat

end

end A035114.P4172297213230497519

/-! ## A035114.P6282292142951047202

`A062570(A207334(n+1))`
-/

namespace A035114.P6282292142951047202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A207334 (n + 1)).toNat

end

end A035114.P6282292142951047202

/-! ## A035114.P15530578304054021710

`A000010(2*A207334(n+1))`
-/

namespace A035114.P15530578304054021710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A207334 (n + 1)).toNat

end

end A035114.P15530578304054021710

/-! ## A035114.P16568173142438544594

`A132952(2*A207334(n+1))`
-/

namespace A035114.P16568173142438544594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (2 * A207334 (n + 1)).toNat

end

end A035114.P16568173142438544594

/-! ## A035114.P14964745290051782561

`A000010(A207334(n+1)+A207334(n+1))`
-/

namespace A035114.P14964745290051782561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A207334 (n + 1) + A207334 (n + 1)).toNat

end

end A035114.P14964745290051782561

/-!
# A035115: Relative class number h- of cyclotomic field Q(zeta_m) where m is n-th term of A035113.

The programs for A035115, there is no canonical definition to state claims against.
-/

/-! ## A035115.P11923533597769497464

`A061653(A035113(n+1))`
-/

namespace A035115.P11923533597769497464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061653 (A035113 (n + 1)).toNat

end

end A035115.P11923533597769497464

/-! ## A035115.P7350639050589255534

`C(A161916(3*(n+1)), floor((n+1)/27))`
-/

namespace A035115.P7350639050589255534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161916 (3 * (n + 1))).toNat ⌊(n + 1 : ℚ) / 27⌋.toNat

end

end A035115.P7350639050589255534

/-! ## A035115.P4539956232588349955

`gcd(A237983(A237984(n+1)), A310235(n))`
-/

namespace A035115.P4539956232588349955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A237983 (A237984 (n + 1)).toNat) (A310235 n)

end

end A035115.P4539956232588349955

/-! ## A035115.P13713290506613942202

`A161916(3*(n+1))^A161031(A036042(n+4))`
-/

namespace A035115.P13713290506613942202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161916 (3 * (n + 1)) : ℚ) ^ (A161031 (A036042 (n + 4)).toNat : ℤ)

end

end A035115.P13713290506613942202

/-! ## A035115.P4458758058147323280

`A305195(A270425(n+2))`
-/

namespace A035115.P4458758058147323280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305195 (A270425 (n + 2)).toNat

end

end A035115.P4458758058147323280

/-!
# A035116: a(n) = tau(n)^2, where tau(n) = A000005(n).

The programs for A035116, the canonical program `A035116.P9275486073209873569` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035116 has offset 1).

The definition of A035116 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²` (program `A035116.P9275486073209873569`, by `A035116.P9275486073209873569.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A035116.P9275486073209873569

`A000005(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035116

/-- `A000005(n+1)²` -/
def P9275486073209873569.Spec : Prop :=
  ∀ n, P9275486073209873569.a n = A035116 (n + 1)

theorem P9275486073209873569.correct : P9275486073209873569.Spec := by
  intro n
  simp only [A035116, Nat.add_sub_cancel]

end A035116

/-! ## A035116.P17286734818633727782

`A066446(n+1)+A184389(n+1)`
-/

namespace A035116.P17286734818633727782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066446 (n + 1) + A184389 (n + 1)

end

end A035116.P17286734818633727782

namespace A035116

/-- `A066446(n+1)+A184389(n+1)` -/
def P17286734818633727782.Spec : Prop :=
  ∀ n, P17286734818633727782.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P15175483330759584961

`∏{e}[1+n, (#+1)²]`
-/

namespace A035116.P15175483330759584961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) ^ 2

end

end A035116.P15175483330759584961

namespace A035116

/-- `∏{e}[1+n, (#+1)²]` -/
def P15175483330759584961.Spec : Prop :=
  ∀ n, (P15175483330759584961.a n : ℤ) = A035116 (n + 1)

end A035116

/-! ## A035116.P4401915727267177237

`∑{d}[n+1, gcd(n, #)]²`
-/

namespace A035116.P4401915727267177237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) ^ 2

end

end A035116.P4401915727267177237

namespace A035116

/-- `∑{d}[n+1, gcd(n, #)]²` -/
def P4401915727267177237.Spec : Prop :=
  ∀ n, (P4401915727267177237.a n : ℤ) = A035116 (n + 1)

end A035116

/-! ## A035116.P6278679661582903925

`∑{d}[n+1, ceil(acot(#))]²`
-/

namespace A035116.P6278679661582903925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉) ^ 2

end

end A035116.P6278679661582903925

namespace A035116

/-- `∑{d}[n+1, ceil(acot(#))]²` -/
def P6278679661582903925.Spec : Prop :=
  ∀ n, P6278679661582903925.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P12967007403689107283

`∏{e}[n+1, #+1]^2`
-/

namespace A035116.P12967007403689107283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2

end

end A035116.P12967007403689107283

namespace A035116

/-- `∏{e}[n+1, #+1]^2` -/
def P12967007403689107283.Spec : Prop :=
  ∀ n, (P12967007403689107283.a n : ℤ) = A035116 (n + 1)

end A035116

/-! ## A035116.P8206024223825279318

`∑{d}[n+1, or(#, -1)]²`
-/

namespace A035116.P8206024223825279318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)) ^ 2

end

end A035116.P8206024223825279318

namespace A035116

/-- `∑{d}[n+1, or(#, -1)]²` -/
def P8206024223825279318.Spec : Prop :=
  ∀ n, P8206024223825279318.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P10041266118814394888

`∑{d}[n+1, ceil(1/#)]²`
-/

namespace A035116.P10041266118814394888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉) ^ 2

end

end A035116.P10041266118814394888

namespace A035116

/-- `∑{d}[n+1, ceil(1/#)]²` -/
def P10041266118814394888.Spec : Prop :=
  ∀ n, P10041266118814394888.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P6053018169841593839

`∏{p}[n+1, (val(n+1, #)+1)²]`
-/

namespace A035116.P6053018169841593839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 1) ^ 2

end

end A035116.P6053018169841593839

namespace A035116

/-- `∏{p}[n+1, (val(n+1, #)+1)²]` -/
def P6053018169841593839.Spec : Prop :=
  ∀ n, (P6053018169841593839.a n : ℤ) = A035116 (n + 1)

end A035116

/-! ## A035116.P7041528628863063898

`(∑{d}[n+1, lcm(#, n+1)]/(n+1))²`
-/

namespace A035116.P7041528628863063898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A035116.P7041528628863063898

namespace A035116

/-- `(∑{d}[n+1, lcm(#, n+1)]/(n+1))²` -/
def P7041528628863063898.Spec : Prop :=
  ∀ n, P7041528628863063898.a n = (A035116 (n + 1) : ℚ)

end A035116

/-! ## A035116.P14936921462350523918

`∏{e}[n+1, #+1]*∏{e}[n+1, #+1]`
-/

namespace A035116.P14936921462350523918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A035116.P14936921462350523918

namespace A035116

/-- `∏{e}[n+1, #+1]*∏{e}[n+1, #+1]` -/
def P14936921462350523918.Spec : Prop :=
  ∀ n, (P14936921462350523918.a n : ℤ) = A035116 (n + 1)

end A035116

/-! ## A035116.P3966828791414725331

`Δ[A006218(n)]²`
-/

namespace A035116.P3966828791414725331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A035116.P3966828791414725331

namespace A035116

/-- `Δ[A006218(n)]²` -/
def P3966828791414725331.Spec : Prop :=
  ∀ n, P3966828791414725331.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P17600486626299768689

`Δ[A054519(n)]²`
-/

namespace A035116.P17600486626299768689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A035116.P17600486626299768689

namespace A035116

/-- `Δ[A054519(n)]²` -/
def P17600486626299768689.Spec : Prop :=
  ∀ n, P17600486626299768689.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P9358999971964761887

`Δ[A139432(n)]²`
-/

namespace A035116.P9358999971964761887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A035116.P9358999971964761887

namespace A035116

/-- `Δ[A139432(n)]²` -/
def P9358999971964761887.Spec : Prop :=
  ∀ n, P9358999971964761887.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P12037456863157711388

`A329484(n+1)²`
-/

namespace A035116.P12037456863157711388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1) ^ 2

end

end A035116.P12037456863157711388

namespace A035116

/-- `A329484(n+1)²` -/
def P12037456863157711388.Spec : Prop :=
  ∀ n, P12037456863157711388.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P16569683651190928105

`log2(A338506(n+1))²`
-/

namespace A035116.P16569683651190928105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A338506 (n + 1) : ℝ) ^ 2

end

end A035116.P16569683651190928105

namespace A035116

/-- `log2(A338506(n+1))²` -/
def P16569683651190928105.Spec : Prop :=
  ∀ n, P16569683651190928105.a n = (A035116 (n + 1) : ℝ)

end A035116

/-! ## A035116.P14315450716044468993

`∑[A341062(n+1)]²`
-/

namespace A035116.P14315450716044468993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A035116.P14315450716044468993

namespace A035116

/-- `∑[A341062(n+1)]²` -/
def P14315450716044468993.Spec : Prop :=
  ∀ n, P14315450716044468993.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P670563176585719922

`∑{d}[n+1, A048691(#)]`
-/

namespace A035116.P670563176585719922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d

end

end A035116.P670563176585719922

namespace A035116

/-- `∑{d}[n+1, A048691(#)]` -/
def P670563176585719922.Spec : Prop :=
  ∀ n, P670563176585719922.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P5367239829124402198

`(A032741(n+1)+1)²`
-/

namespace A035116.P5367239829124402198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) ^ 2

end

end A035116.P5367239829124402198

namespace A035116

/-- `(A032741(n+1)+1)²` -/
def P5367239829124402198.Spec : Prop :=
  ∀ n, P5367239829124402198.a n = A035116 (n + 1)

end A035116

/-! ## A035116.P10237275683657754632

`(1-A334954(n+1))²`
-/

namespace A035116.P10237275683657754632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A334954 (n + 1)) ^ 2

end

end A035116.P10237275683657754632

namespace A035116

/-- `(1-A334954(n+1))²` -/
def P10237275683657754632.Spec : Prop :=
  ∀ n, P10237275683657754632.a n = A035116 (n + 1)

end A035116

/-!
# A035119: Related to A045720 and A035101.

The programs for A035119, the canonical program `A035119.P6707156414570553838` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035119 has offset 1).

The definition of A035119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035119.P6707156414570553838

`(n+1)!*((n+3)*C(2*(n+1), n+1)/4-3*2^(2*(n+1)-3))/(3*2^(n-1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035119

/-- `(n+1)!*((n+3)*C(2*(n+1), n+1)/4-3*2^(2*(n+1)-3))/(3*2^(n-1))` -/
def P6707156414570553838.Spec : Prop :=
  ∀ n, P6707156414570553838.a n = (A035119 (n + 1) : ℚ)

end A035119

/-! ## A035119.P13907523026775443863

`A396954(n+1)/3`
-/

namespace A035119.P13907523026775443863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396954 (n + 1) : ℚ) / 3

end

end A035119.P13907523026775443863

namespace A035119

/-- `A396954(n+1)/3` -/
def P13907523026775443863.Spec : Prop :=
  ∀ n, P13907523026775443863.a n = (A035119 (n + 1) : ℚ)

end A035119

/-! ## A035119.P15808747460678865269

`A035342(A152950(n+1))%A332238(n+1)`
-/

namespace A035119.P15808747460678865269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035342 (A152950 (n + 1)).toNat) (A332238 (n + 1))

end

end A035119.P15808747460678865269

namespace A035119

/-- `A035342(A152950(n+1))%A332238(n+1)` -/
def P15808747460678865269.Spec : Prop :=
  ∀ n, P15808747460678865269.a n = A035119 (n + 1)

end A035119

/-! ## A035119.P13611896145555302859

`char[A091220(n+2)]*A035342(A152950(n+1))`
-/

namespace A035119.P13611896145555302859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091220 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A035342 (A152950 (n + 1)).toNat

end

end A035119.P13611896145555302859

namespace A035119

/-- `char[A091220(n+2)]*A035342(A152950(n+1))` -/
def P13611896145555302859.Spec : Prop :=
  ∀ n, P13611896145555302859.a n = A035119 (n + 1)

end A035119

/-!
# A035120: Discriminants of real quadratic number fields with class number >= 2.

The programs for A035120, there is no canonical definition to state claims against.
-/

/-! ## A035120.P2541924969842974847

`∪[A396863(n+1), A396864(n+1)]`
-/

namespace A035120.P2541924969842974847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035120.P2541924969842974847

/-! ## A035120.P8929286235604447603

`∩[A003658(n+1), comp[A219361(n+1)]]`
-/

namespace A035120.P8929286235604447603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A035120.P8929286235604447603

/-! ## A035120.P15945408576504861666

`∪[A094613(n+1), A094619(n+1)]%A218159(2*n+3)`
-/

namespace A035120.P15945408576504861666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094619 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A218159 (2 * n + 3))

end

end A035120.P15945408576504861666

/-! ## A035120.P10167723834896362130

`filter[A276541(n+1), A290098(#)]`
-/

namespace A035120.P10167723834896362130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A035120.P10167723834896362130

/-! ## A035120.P9286585617389542913

`∩[A003658(n+1), A276541(n+1)]`
-/

namespace A035120.P9286585617389542913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035120.P9286585617389542913

/-!
# A035121: Numbers of the form x^2+82*y^2.

The programs for A035121, there is no canonical definition to state claims against.
-/

/-! ## A035121.P15670981267435894030

`record[A258881(n)-n]-(∑{digits}[n, #]²-∑{digits}[n, #²])`
-/

namespace A035121.P15670981267435894030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ))

end

end A035121.P15670981267435894030

/-! ## A035121.P4472547923231946570

`A118759(∑{digits}[A039723(n), #²])`
-/

namespace A035121.P4472547923231946570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A035121.P4472547923231946570

/-! ## A035121.P12166998055175943298

`record[A258881(n)-n]-A069816(n)`
-/

namespace A035121.P12166998055175943298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A069816 n

end

end A035121.P12166998055175943298

/-! ## A035121.P3745387667811932782

`record[A258881(n)-n]-2*A257297(n)`
-/

namespace A035121.P3745387667811932782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A257297 n

end

end A035121.P3745387667811932782

/-! ## A035121.P6675181287955345778

`∑{digits}[A039723(n), #²]%A342979(A000040(n+2))`
-/

namespace A035121.P6675181287955345778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) (A342979 (A000040 (n + 2)).toNat)

end

end A035121.P6675181287955345778

/-!
# A035122: Roots of 'squares remaining square when written backwards'.

The programs for A035122, there is no canonical definition to state claims against.
-/

/-! ## A035122.P17169380456434272462

`sqrt(A033294(n+1))`
-/

namespace A035122.P17169380456434272462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A033294 (n + 1) : ℝ)

end

end A035122.P17169380456434272462

/-! ## A035122.P2277739698547650734

`root(A033294(n+1), A001316(A001316(n)))`
-/

namespace A035122.P2277739698547650734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033294 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A035122.P2277739698547650734

/-! ## A035122.P14778698185843843870

`root(A033294(n+1), 2%A035090(n+1))`
-/

namespace A035122.P14778698185843843870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033294 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A035090 (n + 1)) : ℝ))

end

end A035122.P14778698185843843870

/-! ## A035122.P17624998648630541810

`A000027(root(A033294(n+1), 2))`
-/

namespace A035122.P17624998648630541810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A033294 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A035122.P17624998648630541810

/-! ## A035122.P17805084645582192916

`A000027(A033294(n+1)^(1/2))`
-/

namespace A035122.P17805084645582192916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A033294 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))).toNat

end

end A035122.P17805084645582192916

/-! ## A035122.P18293775164863966692

`∩[A067251(n+1), A102859(n+1)]`
-/

namespace A035122.P18293775164863966692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035122.P18293775164863966692

/-! ## A035122.P3464402157682419941

`record[A004151(A102859(n+2))]`
-/

namespace A035122.P3464402157682419941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A102859 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035122.P3464402157682419941

/-! ## A035122.P15571906397684324980

`filter[A102859(n+1), A168184(#)]`
-/

namespace A035122.P15571906397684324980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A035122.P15571906397684324980

/-!
# A035123: Roots of 'non-palindromic squares remaining square when written backwards'.

The programs for A035123, there is no canonical definition to state claims against.
-/

/-! ## A035123.P17980947213821292243

`∪[A140212(n+1), A284986(n+1)]`
-/

namespace A035123.P17980947213821292243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035123.P17980947213821292243

/-! ## A035123.P13652431112263554146

`sqrt(A035090(n+1))`
-/

namespace A035123.P13652431112263554146
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035090 (n + 1) : ℝ)

end

end A035123.P13652431112263554146

/-! ## A035123.P446351873170351734

`root(A035090(n+1), 2%A161902(n+1))`
-/

namespace A035123.P446351873170351734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035090 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A161902 (n + 1)) : ℝ))

end

end A035123.P446351873170351734

/-! ## A035123.P4739314719151596045

`root(A035090(n+1), gcd(2, A322835(n+1)))`
-/

namespace A035123.P4739314719151596045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035090 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A322835 (n + 1)) : ℝ))

end

end A035123.P4739314719151596045

/-! ## A035123.P14700398137320492080

`root(A035090(n+1), A001316(A001316(n)))`
-/

namespace A035123.P14700398137320492080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035090 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A035123.P14700398137320492080

/-! ## A035123.P6480750372587402124

`A000027(root(A035090(n+1), 4)²)`
-/

namespace A035123.P6480750372587402124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (((A035090 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)).toNat

end

end A035123.P6480750372587402124

/-! ## A035123.P14856150361489121992

`root(A035090(n+1)%A066528(n+1), 2)`
-/

namespace A035123.P14856150361489121992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A035090 (n + 1)) (A066528 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))

end

end A035123.P14856150361489121992

/-!
# A035124: Nonpalindromic cubes remaining cubic which written backwards: take the cube root of n, reverse its digits, cube that and the result is n with its digits reversed.

The programs for A035124, there is no canonical definition to state claims against.
-/

/-! ## A035124.P9820227403984762915

`A035125(n+1)^3`
-/

namespace A035124.P9820227403984762915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035125 (n + 1) ^ 3

end

end A035124.P9820227403984762915

/-! ## A035124.P10233919783846499202

`∩[A035123(n+1), A069263(n+1)]^3`
-/

namespace A035124.P10233919783846499202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A035124.P10233919783846499202

/-! ## A035124.P14014826364418234158

`∏{p}[A035125(n+1), A000578(#)]`
-/

namespace A035124.P14014826364418234158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000578 p

end

end A035124.P14014826364418234158

/-!
# A035125: Roots of 'non-palindromic cubes remaining cubic when written backwards'.

The programs for A035125, there is no canonical definition to state claims against.
-/

/-! ## A035125.P2606770497635475281

`∩[A035123(n+1), A069263(n+1)]`
-/

namespace A035125.P2606770497635475281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035125.P2606770497635475281

/-! ## A035125.P8646236161283482898

`∩[A048344(n+1), A069263(n+1)]`
-/

namespace A035125.P8646236161283482898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035125.P8646236161283482898

/-! ## A035125.P13006237893144469099

`∩[A069263(n+1), A140212(n+1)]`
-/

namespace A035125.P13006237893144469099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035125.P13006237893144469099

/-! ## A035125.P8936112901373737309

`∩[A069263(n+1), A398714(n+1)]`
-/

namespace A035125.P8936112901373737309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035125.P8936112901373737309

/-! ## A035125.P12974384627739090620

`root(A035124(n+1), 3)`
-/

namespace A035125.P12974384627739090620
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035124 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A035125.P12974384627739090620

/-!
# A035126: Squares when digits rotated right once remain square.

The programs for A035126, there is no canonical definition to state claims against.
-/

/-! ## A035126.P15591396644291142209

`A045877(n+1)²`
-/

namespace A035126.P15591396644291142209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045877 (n + 1) ^ 2

end

end A035126.P15591396644291142209

/-! ## A035126.P2389815157238941527

`A045877(A000027(n+1))^2`
-/

namespace A035126.P2389815157238941527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045877 (A000027 (n + 1)).toNat ^ 2

end

end A035126.P2389815157238941527

/-! ## A035126.P2992072448727467323

`A045877(n+1)^A020639(2*(n+1))`
-/

namespace A035126.P2992072448727467323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045877 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A035126.P2992072448727467323

/-! ## A035126.P5566956513500807175

`A045877(n+1)^gcd(2, A000010(n+2))`
-/

namespace A035126.P5566956513500807175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045877 (n + 1) ^ Int.gcd 2 (A000010 (n + 2))

end

end A035126.P5566956513500807175

/-! ## A035126.P11574980857460327151

`A045877(n+1)*A045877(A000027(n+1))`
-/

namespace A035126.P11574980857460327151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045877 (n + 1) * A045877 (A000027 (n + 1)).toNat

end

end A035126.P11574980857460327151

/-! ## A035126.P5862597501401479859

`A045877(n+1)^A000005(A002144(n+1))`
-/

namespace A035126.P5862597501401479859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045877 (n + 1) : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A035126.P5862597501401479859

/-! ## A035126.P2098811752240370898

`A045877(n+1)^A001221(2*A000040(n+1))`
-/

namespace A035126.P2098811752240370898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045877 (n + 1) : ℚ) ^ (A001221 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A035126.P2098811752240370898

/-!
# A035127: Squares which when digits are rotated left once remain square.

The programs for A035127, there is no canonical definition to state claims against.
-/

/-! ## A035127.P1161027268213504325

`A045878(n+1)²`
-/

namespace A035127.P1161027268213504325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045878 (n + 1) ^ 2

end

end A035127.P1161027268213504325

/-! ## A035127.P15926007743675583399

`A045878(n+1)^gcd(2, A005843(n))`
-/

namespace A035127.P15926007743675583399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045878 (n + 1) ^ Int.gcd 2 (A005843 n)

end

end A035127.P15926007743675583399

/-! ## A035127.P14505223906859787886

`A045878(n+1)^A020639(2*(n+1))`
-/

namespace A035127.P14505223906859787886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045878 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A035127.P14505223906859787886

/-! ## A035127.P12844012633768822278

`A045878(n+1)^(A000040(n+1)%2+1)`
-/

namespace A035127.P12844012633768822278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045878 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 + 1 : ℤ)

end

end A035127.P12844012633768822278

/-! ## A035127.P4308767022048556352

`A045878(n+1)^A006530(A001316(n))`
-/

namespace A035127.P4308767022048556352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045878 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A035127.P4308767022048556352

/-!
# A035132: Nonsquarefree palindromes.

The programs for A035132, there is no canonical definition to state claims against.
-/

/-! ## A035132.P9238081054080853890

`A075804(n)+a(n-1)` with `a(0)=4`
-/

namespace A035132.P9238081054080853890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A075804 n + a (n - 1)

end

end A035132.P9238081054080853890

/-! ## A035132.P11165559267132248904

`∩[A002113(n+1), A013929(n+1)]`
-/

namespace A035132.P11165559267132248904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035132.P11165559267132248904

/-! ## A035132.P377479914295003858

`∩[A013929(n+1), A032350(n+1)]`
-/

namespace A035132.P377479914295003858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035132.P377479914295003858

/-! ## A035132.P745781571290244482

`∩[A013929(n+1), A083158(n+1)]`
-/

namespace A035132.P745781571290244482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035132.P745781571290244482

/-! ## A035132.P12433086825050558996

`filter[A083158(n+1), A087049(#)]`
-/

namespace A035132.P12433086825050558996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A035132.P12433086825050558996

/-! ## A035132.P13539523223725985109

`filter[A032350(n+2), A087049(#)]`
-/

namespace A035132.P13539523223725985109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A035132.P13539523223725985109

/-! ## A035132.P11099774076026117831

`filter[A002113(n+3), A087049(#)]`
-/

namespace A035132.P11099774076026117831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A035132.P11099774076026117831

/-! ## A035132.P16889300176102889846

`∩[A002113(n+1), A071592(n+1)]`
-/

namespace A035132.P16889300176102889846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035132.P16889300176102889846

/-! ## A035132.P13054171816351590385

`∩[A032350(n+1), A071592(n+1)]`
-/

namespace A035132.P13054171816351590385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035132.P13054171816351590385

/-! ## A035132.P4348703498826584975

`∩[A071592(n+1), A083158(n+1)]`
-/

namespace A035132.P4348703498826584975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035132.P4348703498826584975

/-! ## A035132.P16435843141848662841

`∩[A083158(n+1), A162966(n+1)]`
-/

namespace A035132.P16435843141848662841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035132.P16435843141848662841

/-!
# A035133: Cubeful (i.e., not cubefree) palindromes.

The programs for A035133, there is no canonical definition to state claims against.
-/

/-! ## A035133.P8684266056423725152

`∩[A002113(n+1), A046099(n+1)]`
-/

namespace A035133.P8684266056423725152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035133.P8684266056423725152

/-! ## A035133.P14840130174710980509

`∩[A032350(n+1), A046099(n+1)]`
-/

namespace A035133.P14840130174710980509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035133.P14840130174710980509

/-! ## A035133.P10361456206061365156

`∩[A035132(n+1), A046099(n+1)]`
-/

namespace A035133.P10361456206061365156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035133.P10361456206061365156

/-! ## A035133.P11481163273209501502

`∩[A046099(n+1), A083158(n+1)]`
-/

namespace A035133.P11481163273209501502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035133.P11481163273209501502

/-! ## A035133.P10663570420782837378

`∩[A046099(n+1), A325322(n+1)]`
-/

namespace A035133.P10663570420782837378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035133.P10663570420782837378

/-!
# A035134: Squarefree composite palindromes.

The programs for A035134, there is no canonical definition to state claims against.
-/

/-! ## A035134.P14935803038888663956

`∩[A035135(n+1), A071251(n+1)]`
-/

namespace A035134.P14935803038888663956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035134.P14935803038888663956

/-! ## A035134.P17203773135459296369

`∩[A071251(n+1), A032350(n+2)]`
-/

namespace A035134.P17203773135459296369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035134.P17203773135459296369

/-! ## A035134.P10681093017399854143

`record[A007913(A032350(n+3))]`
-/

namespace A035134.P10681093017399854143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A032350 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035134.P10681093017399854143

/-! ## A035134.P8745930765270799228

`filter[A035135(n+1), A008966(#)]`
-/

namespace A035134.P8745930765270799228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A035134.P8745930765270799228

/-! ## A035134.P11448423511419634706

`filter[A035135(n+1), A354819(#)]`
-/

namespace A035134.P11448423511419634706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A035134.P11448423511419634706

/-! ## A035134.P6859292565159840514

`filter[A035135(n+1), A359473(#)]`
-/

namespace A035134.P6859292565159840514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A035134.P6859292565159840514

/-! ## A035134.P14030828792612947793

`filter[A071251(n+1), A354353(#)]`
-/

namespace A035134.P14030828792612947793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A035134.P14030828792612947793

/-! ## A035134.P821381280205051148

`filter[A032350(n+2), A008966(#)]`
-/

namespace A035134.P821381280205051148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A035134.P821381280205051148

/-! ## A035134.P9055053612294211131

`filter[A032350(n+2), A354819(#)]`
-/

namespace A035134.P9055053612294211131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A035134.P9055053612294211131

/-! ## A035134.P6851452237026349379

`filter[A071251(n+2), A354819(#)]`
-/

namespace A035134.P6851452237026349379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A035134.P6851452237026349379

/-! ## A035134.P17856250717777095300

`filter[A002113(n+3), A354819(#)]`
-/

namespace A035134.P17856250717777095300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A035134.P17856250717777095300

/-! ## A035134.P11907556314524043355

`filter[A306273(n+3), A354819(#)]`
-/

namespace A035134.P11907556314524043355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A035134.P11907556314524043355

/-! ## A035134.P786915312715639411

`filter[A110751(n+2), A354819(#)]`
-/

namespace A035134.P786915312715639411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A035134.P786915312715639411

/-! ## A035134.P1890712651846484248

`∩[A005117(n+1), A035135(n+1)]`
-/

namespace A035134.P1890712651846484248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035134.P1890712651846484248

/-! ## A035134.P9003477354655915967

`filter[A071251(n+1), A066247(#)]`
-/

namespace A035134.P9003477354655915967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A035134.P9003477354655915967

/-! ## A035134.P963979119329653825

`filter[A071251(n+1), A202238(#)]`
-/

namespace A035134.P963979119329653825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A035134.P963979119329653825

/-! ## A035134.P10870830209627324807

`filter[A035135(n+1), A295316(#)]`
-/

namespace A035134.P10870830209627324807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A035134.P10870830209627324807

/-! ## A035134.P15897691615918483325

`filter[A035135(n+1), A323154(#)]`
-/

namespace A035134.P15897691615918483325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A035134.P15897691615918483325

/-! ## A035134.P4424273507364807587

`filter[A035135(n+1), A353519(#)]`
-/

namespace A035134.P4424273507364807587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A035134.P4424273507364807587

/-! ## A035134.P1191935038582543131

`filter[A071251(n+2), A005171(#)]`
-/

namespace A035134.P1191935038582543131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A035134.P1191935038582543131

/-!
# A035135: Cubefree composite palindromes.

The programs for A035135, there is no canonical definition to state claims against.
-/

/-! ## A035135.P15158946051929831126

`filter[A032350(n+2), A212793(#)]`
-/

namespace A035135.P15158946051929831126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A035135.P15158946051929831126

/-! ## A035135.P7447035334688677440

`record[A007948(A032350(n+2))]`
-/

namespace A035135.P7447035334688677440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A032350 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035135.P7447035334688677440

/-! ## A035135.P153043886667413389

`filter[A377880(n+2), A136522(#)]`
-/

namespace A035135.P153043886667413389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A035135.P153043886667413389

/-! ## A035135.P136182189292432096

`record[A331472(A117656(A002808(n+1)))]`
-/

namespace A035135.P136182189292432096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A117656 (A002808 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035135.P136182189292432096

/-! ## A035135.P11267207820575257734

`eq[A000122(A166974(n)), A056965(n)]`
-/

namespace A035135.P11267207820575257734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A166974 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035135.P11267207820575257734

/-!
# A035137: Numbers that are not the sum of 2 palindromes (where 0 is considered a palindrome).

The programs for A035137, there is no canonical definition to state claims against.
-/

/-! ## A035137.P8245510690281246549

`lt[2, A261913(n)]`
-/

namespace A035137.P8245510690281246549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261913 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035137.P8245510690281246549

/-! ## A035137.P10696143957051111279

`comp[A260255(n+1)]`
-/

namespace A035137.P10696143957051111279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A035137.P10696143957051111279

/-! ## A035137.P6413860383497977050

`∩[A029742(n+1), A319477(n+1)]`
-/

namespace A035137.P6413860383497977050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035137.P6413860383497977050

/-! ## A035137.P401200757338475584

`eq[0, A260254(n)]`
-/

namespace A035137.P401200757338475584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035137.P401200757338475584

/-! ## A035137.P15033859847597884687

`lt[A262087(n)², n]`
-/

namespace A035137.P15033859847597884687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A035137.P15033859847597884687

/-! ## A035137.P10601519084257995451

`lt[n, 2*A319387(n)]`
-/

namespace A035137.P10601519084257995451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A035137.P10601519084257995451

/-! ## A035137.P15622535715305901478

`lt[A262087(n+1), 1]+1`
-/

namespace A035137.P15622535715305901478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A035137.P15622535715305901478

/-! ## A035137.P16168645802305869341

`lt[n, A319387(n+1)]+1`
-/

namespace A035137.P16168645802305869341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A035137.P16168645802305869341

/-! ## A035137.P7723473889546332400

`eq[0, A262087(A028310(n))]`
-/

namespace A035137.P7723473889546332400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035137.P7723473889546332400

/-! ## A035137.P17197161278639851824

`eq[A000007(n), A262087(n)]`
-/

namespace A035137.P17197161278639851824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035137.P17197161278639851824

/-! ## A035137.P7156305596710060652

`eq[A000038(n), A262087(n)]`
-/

namespace A035137.P7156305596710060652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035137.P7156305596710060652

/-! ## A035137.P5459007699086849525

`eq[A028310(n), A319387(n)]`
-/

namespace A035137.P5459007699086849525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035137.P5459007699086849525

/-! ## A035137.P15084666660998860368

`lt[A262087(n), A047813(n)]`
-/

namespace A035137.P15084666660998860368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035137.P15084666660998860368

/-! ## A035137.P13244317537059620780

`lt[A262087(n), A052036(n)]`
-/

namespace A035137.P13244317537059620780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035137.P13244317537059620780

/-! ## A035137.P1157456616565028062

`lt[A262087(n), A059995(n)]`
-/

namespace A035137.P1157456616565028062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035137.P1157456616565028062

/-! ## A035137.P3087728993026706366

`lt[A262087(n), A261424(n)]`
-/

namespace A035137.P3087728993026706366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035137.P3087728993026706366

/-! ## A035137.P5841725876882875536

`lt[A262087(n), A331472(n)]`
-/

namespace A035137.P5841725876882875536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035137.P5841725876882875536

/-! ## A035137.P5700124154576338478

`eq[sin(A036987(n)), A262087(n)]`
-/

namespace A035137.P5700124154576338478
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A036987 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A035137.P5700124154576338478

/-! ## A035137.P7146034096457049641

`eq[sin(A012245(n+1)), A262087(n)]`
-/

namespace A035137.P7146034096457049641
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A012245 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A035137.P7146034096457049641

/-! ## A035137.P7291926848775137980

`eq[A059841(A004273(n)), A262087(n)]`
-/

namespace A035137.P7291926848775137980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004273 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035137.P7291926848775137980

/-!
# A035139: Digits of prime factors of k do not appear in k.

The programs for A035139, there is no canonical definition to state claims against.
-/

/-! ## A035139.P7885267852917080094

`eq[A000007((2*n+1)²), A131929(n+1)]+1`
-/

namespace A035139.P7885267852917080094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((2 * n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A035139.P7885267852917080094

/-! ## A035139.P4225986966473624698

`eq[A000038(A207625(n+1)), A131929(n+1)]+1`
-/

namespace A035139.P4225986966473624698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A207625 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A035139.P4225986966473624698

/-! ## A035139.P4405920302803684518

`eq[A010051(A321156(2*(n+1))), A131929(n+1)]+1`
-/

namespace A035139.P4405920302803684518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A321156 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A035139.P4405920302803684518

/-! ## A035139.P15301604061009890266

`∪[A050695(n+1), A212913(A072373(n+1))]`
-/

namespace A035139.P15301604061009890266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212913 (A072373 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035139.P15301604061009890266

/-! ## A035139.P3862972323550610339

`eq[A010051(A286854(n+1)), A131929(n+1)]+1`
-/

namespace A035139.P3862972323550610339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A286854 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A035139.P3862972323550610339

/-!
# A035140: Digits of juxtaposition of prime factors of composite n appear also in n.

The programs for A035140, there is no canonical definition to state claims against.
-/

/-! ## A035140.P3499478136261603851

`∪[A050694(n+1), A050697(n+1)]`
-/

namespace A035140.P3499478136261603851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035140.P3499478136261603851

/-!
# A035143: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -47.

The programs for A035143, there is no canonical definition to state claims against.
-/

/-! ## A035143.P13745185174445949028

`∑{d}[n+1, A011592(#)]`
-/

namespace A035143.P13745185174445949028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011592 d

end

end A035143.P13745185174445949028

/-! ## A035143.P9051327282685824325

`lcm(∏{e}[n+1, #+1], A093829(A113176(n+1)))`
-/

namespace A035143.P9051327282685824325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A093829 (A113176 (n + 1)).toNat)

end

end A035143.P9051327282685824325

/-! ## A035143.P9857853832801523143

`A000005(n+1)*A014578(A198518(n))`
-/

namespace A035143.P9857853832801523143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A014578 (A198518 n).toNat

end

end A035143.P9857853832801523143

/-! ## A035143.P12071237858654808907

`lcm(A001227(A257538(n+1)), A035200(n+1))`
-/

namespace A035143.P12071237858654808907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001227 (A257538 (n + 1)).toNat) (A035200 (n + 1))

end

end A035143.P12071237858654808907

/-! ## A035143.P3927735491329018311

`lcm(A002325(A257538(n+1)), A035173(n+1))`
-/

namespace A035143.P3927735491329018311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002325 (A257538 (n + 1)).toNat) (A035173 (n + 1))

end

end A035143.P3927735491329018311

/-!
# A035144: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -46.

The programs for A035144, there is no canonical definition to state claims against.
-/

/-! ## A035144.P18149743000835983188

`A114643(20*∑{d}[n+1, (#*#%2)²])`
-/

namespace A035144.P18149743000835983188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (20 * (∑ d ∈ Nat.divisors (f1 n), (d * (d % 2)) ^ 2))

end

end A035144.P18149743000835983188

/-! ## A035144.P549942512561054684

`A035180(A205446(n+1))`
-/

namespace A035144.P549942512561054684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035180 (A205446 (n + 1)).toNat

end

end A035144.P549942512561054684

/-! ## A035144.P6676703643072484268

`A035202(lcm(n+1, A205446(n+1)))`
-/

namespace A035144.P6676703643072484268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (Int.lcm (n + 1 : ℤ) (A205446 (n + 1)))

end

end A035144.P6676703643072484268

/-! ## A035144.P14956017101695309387

`A035202(n+1)*A055457(A205446(n+1))`
-/

namespace A035144.P14956017101695309387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (n + 1) * A055457 (A205446 (n + 1)).toNat

end

end A035144.P14956017101695309387

/-! ## A035144.P17509069896442061794

`A035194(C(A319525(n+1), A115579(3*(n+1))))`
-/

namespace A035144.P17509069896442061794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035194 (Nat.choose (A319525 (n + 1)).toNat (A115579 (3 * (n + 1))).toNat)

end

end A035144.P17509069896442061794

/-!
# A035145: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -45.

The programs for A035145, the canonical program `A035145.P5586715811141425784` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035145 has offset 1).

The definition of A035145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035145.P5586715811141425784

`A035183(A038502(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035145

/-- `A035183(A038502(n+1))` -/
def P5586715811141425784.Spec : Prop :=
  ∀ n, P5586715811141425784.a n = A035145 (n + 1)

theorem P5586715811141425784.correct : P5586715811141425784.Spec := by
  intro n
  simp only [A035145, Nat.add_sub_cancel]

end A035145

/-! ## A035145.P1854081572193153204

`A035183((n+1)/A038500(n+1))`
-/

namespace A035145.P1854081572193153204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A035145.P1854081572193153204

namespace A035145

/-- `A035183((n+1)/A038500(n+1))` -/
def P1854081572193153204.Spec : Prop :=
  ∀ n, P1854081572193153204.a n = A035145 (n + 1)

end A035145

/-! ## A035145.P5810858804646890464

`A035183(n+1)/A051064(n+1)`
-/

namespace A035145.P5810858804646890464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035183 (n + 1) : ℚ) / (A051064 (n + 1) : ℚ)

end

end A035145.P5810858804646890464

namespace A035145

/-- `A035183(n+1)/A051064(n+1)` -/
def P5810858804646890464.Spec : Prop :=
  ∀ n, P5810858804646890464.a n = (A035145 (n + 1) : ℚ)

end A035145

/-! ## A035145.P9181792506104453267

`A035170(A038502(n+1))*A035263(n+1)`
-/

namespace A035145.P9181792506104453267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (A038502 (n + 1)).toNat * A035263 (n + 1)

end

end A035145.P9181792506104453267

namespace A035145

/-- `A035170(A038502(n+1))*A035263(n+1)` -/
def P9181792506104453267.Spec : Prop :=
  ∀ n, P9181792506104453267.a n = A035145 (n + 1)

end A035145

/-! ## A035145.P1471962408950416112

`A035183(3*(n+1))-A035183(n+1)`
-/

namespace A035145.P1471962408950416112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (3 * (n + 1)) - A035183 (n + 1)

end

end A035145.P1471962408950416112

namespace A035145

/-- `A035183(3*(n+1))-A035183(n+1)` -/
def P1471962408950416112.Spec : Prop :=
  ∀ n, P1471962408950416112.a n = A035145 (n + 1)

end A035145

/-!
# A035146: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -44.

The programs for A035146, the canonical program `A035146.P2109457745238657454` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035146 has offset 1).

The definition of A035146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035146.P8932148589933065889

`A035179((n+1)/2^val(n+1, 2))`
-/

namespace A035146.P8932148589933065889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A035146.P8932148589933065889

namespace A035146

/-- `A035179((n+1)/2^val(n+1, 2))` -/
def P8932148589933065889.Spec : Prop :=
  ∀ n, P8932148589933065889.a n = A035146 (n + 1)

end A035146

/-! ## A035146.P8313649916986666453

`A028609((n+1)/2^val(n+1, 2))/2`
-/

namespace A035146.P8313649916986666453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028609 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / 2

end

end A035146.P8313649916986666453

namespace A035146

/-- `A028609((n+1)/2^val(n+1, 2))/2` -/
def P8313649916986666453.Spec : Prop :=
  ∀ n, P8313649916986666453.a n = (A035146 (n + 1) : ℚ)

end A035146

/-! ## A035146.P8772652074056327050

`∑{d}[(n+1)/2^val(n+1, 2), A011582(#)]`
-/

namespace A035146.P8772652074056327050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A011582 d

end

end A035146.P8772652074056327050

namespace A035146

/-- `∑{d}[(n+1)/2^val(n+1, 2), A011582(#)]` -/
def P8772652074056327050.Spec : Prop :=
  ∀ n, P8772652074056327050.a n = A035146 (n + 1)

end A035146

/-! ## A035146.P2109457745238657454

`A035179(A000265(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035146

/-- `A035179(A000265(n+1))` -/
def P2109457745238657454.Spec : Prop :=
  ∀ n, P2109457745238657454.a n = A035146 (n + 1)

theorem P2109457745238657454.correct : P2109457745238657454.Spec := by
  intro n
  simp only [A035146, Nat.add_sub_cancel]

end A035146

/-! ## A035146.P9787842378145982826

`A035179(A153733(n)+1)`
-/

namespace A035146.P9787842378145982826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (A153733 n + 1).toNat

end

end A035146.P9787842378145982826

namespace A035146

/-- `A035179(A153733(n)+1)` -/
def P9787842378145982826.Spec : Prop :=
  ∀ n, P9787842378145982826.a n = A035146 (n + 1)

theorem P9787842378145982826.correct : P9787842378145982826.Spec := by
  intro n
  simp only [A035146, Nat.add_sub_cancel, A035146.P9787842378145982826.a, A035146.P2109457745238657454.a, A000265, A000265.P16482698636471710744.a, A035179, A035179.P2839605348435704659.f1, A035179.P2839605348435704659.a, A153733, A153733.P10755713114946739736.a, A011582, A011582.P16106722350450749318.a, A331739, A331739.P457850794578440847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035146

/-! ## A035146.P3129114810986482959

`A035179(A214682(n+1))`
-/

namespace A035146.P3129114810986482959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (A214682 (n + 1)).toNat

end

end A035146.P3129114810986482959

namespace A035146

/-- `A035179(A214682(n+1))` -/
def P3129114810986482959.Spec : Prop :=
  ∀ n, P3129114810986482959.a n = A035146 (n + 1)

end A035146

/-! ## A035146.P18407029332077751175

`A035179(or(1, A153733(n)))`
-/

namespace A035146.P18407029332077751175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (Int.lor 1 (A153733 n)).toNat

end

end A035146.P18407029332077751175

namespace A035146

/-- `A035179(or(1, A153733(n)))` -/
def P18407029332077751175.Spec : Prop :=
  ∀ n, P18407029332077751175.a n = A035146 (n + 1)

end A035146

/-! ## A035146.P3605584583932978157

`A028609(A153733(n)+1)/2`
-/

namespace A035146.P3605584583932978157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028609 (A153733 n + 1).toNat : ℚ) / 2

end

end A035146.P3605584583932978157

namespace A035146

/-- `A028609(A153733(n)+1)/2` -/
def P3605584583932978157.Spec : Prop :=
  ∀ n, P3605584583932978157.a n = (A035146 (n + 1) : ℚ)

end A035146

/-! ## A035146.P12376720022834404755

`∑{d}[n+1, A019590(#)*A035179((n+1)/#)]`
-/

namespace A035146.P12376720022834404755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A035179 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035146.P12376720022834404755

namespace A035146

/-- `∑{d}[n+1, A019590(#)*A035179((n+1)/#)]` -/
def P12376720022834404755.Spec : Prop :=
  ∀ n, P12376720022834404755.a n = A035146 (n + 1)

end A035146

/-! ## A035146.P4453218307554225590

`∑{d}[A064989(n+1), A011582(A003961(#))]`
-/

namespace A035146.P4453218307554225590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A011582 (A003961 d).toNat

end

end A035146.P4453218307554225590

namespace A035146

/-- `∑{d}[A064989(n+1), A011582(A003961(#))]` -/
def P4453218307554225590.Spec : Prop :=
  ∀ n, P4453218307554225590.a n = A035146 (n + 1)

end A035146

/-! ## A035146.P1980594481315508157

`A035179(2*(n+1))+A035179(n+1)`
-/

namespace A035146.P1980594481315508157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035179 (2 * (n + 1)) + A035179 (n + 1)

end

end A035146.P1980594481315508157

namespace A035146

/-- `A035179(2*(n+1))+A035179(n+1)` -/
def P1980594481315508157.Spec : Prop :=
  ∀ n, P1980594481315508157.a n = A035146 (n + 1)

end A035146

/-! ## A035146.P5555304308701322548

`or(A035179(n+1), A035179(Δ[n²]+1))`
-/

namespace A035146.P5555304308701322548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035179 (n + 1)) (A035179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A035146.P5555304308701322548

namespace A035146

/-- `or(A035179(n+1), A035179(Δ[n²]+1))` -/
def P5555304308701322548.Spec : Prop :=
  ∀ n, P5555304308701322548.a n = A035146 (n + 1)

end A035146

/-!
# A035147: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = -43.

The programs for A035147, there is no canonical definition to state claims against.
-/

/-! ## A035147.P15849674395881388972

`A138811(n+1)/2`
-/

namespace A035147.P15849674395881388972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138811 (n + 1) : ℚ) / 2

end

end A035147.P15849674395881388972

/-! ## A035147.P11674140482647069123

`∑{d}[1+n, A011591(#)]`
-/

namespace A035147.P11674140482647069123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011591 d

end

end A035147.P11674140482647069123

/-! ## A035147.P14226914835199319839

`A004526(A138811(n+1))`
-/

namespace A035147.P14226914835199319839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A138811 (n + 1)).toNat

end

end A035147.P14226914835199319839

/-! ## A035147.P5525233985940579964

`A057979(A138811(n+1)+1)`
-/

namespace A035147.P5525233985940579964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A138811 (n + 1) + 1).toNat

end

end A035147.P5525233985940579964

/-! ## A035147.P1875495823116296678

`A007953(5*A138811(n+1))`
-/

namespace A035147.P1875495823116296678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (5 * A138811 (n + 1)).toNat

end

end A035147.P1875495823116296678

/-! ## A035147.P13593760120104093130

`A038572(A138811(n+1)-A000007(n))`
-/

namespace A035147.P13593760120104093130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A138811 (n + 1) - A000007 n).toNat

end

end A035147.P13593760120104093130

/-! ## A035147.P7621300763875434179

`A038572(A138811(n+1)%A040158(n+1))`
-/

namespace A035147.P7621300763875434179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.tmod (A138811 (n + 1)) (A040158 (n + 1))).toNat

end

end A035147.P7621300763875434179

/-! ## A035147.P3234568898204597041

`A033755(4*(n+1))/2`
-/

namespace A035147.P3234568898204597041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033755 (4 * (n + 1)) : ℚ) / 2

end

end A035147.P3234568898204597041

/-! ## A035147.P8401382122389090118

`val(2^A138811(4*(n+1)), 4)`
-/

namespace A035147.P8401382122389090118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A138811 (4 * (n + 1)) : ℤ))).toNat 4

end

end A035147.P8401382122389090118

/-! ## A035147.P6272960365672622625

`A001221(A138811(n+1)!)`
-/

namespace A035147.P6272960365672622625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A138811 (n + 1)).toNat)

end

end A035147.P6272960365672622625

/-!
# A035148: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -42.

The programs for A035148, there is no canonical definition to state claims against.
-/

/-! ## A035148.P17537458931659122673

`A145966(A002034(n+1))%3`
-/

namespace A035148.P17537458931659122673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145966 (A002034 (n + 1)).toNat) 3

end

end A035148.P17537458931659122673

/-! ## A035148.P12163032103405293112

`A092037(A092021(n+1)^A336921(n+1))`
-/

namespace A035148.P12163032103405293112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 (SequenceMachineLib.roundAway ((A092021 (n + 1) : ℚ) ^ (A336921 (n + 1) : ℤ))).toNat

end

end A035148.P12163032103405293112

/-! ## A035148.P17473664994820903461

`A035180(A064989(n+1))%A002326(A147295(n))`
-/

namespace A035148.P17473664994820903461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035180 (A064989 (n + 1)).toNat) (A002326 (A147295 n).toNat)

end

end A035148.P17473664994820903461

/-! ## A035148.P3666470097001380971

`A035224(A000056(n+1))`
-/

namespace A035148.P3666470097001380971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035224 (A000056 (n + 1)).toNat

end

end A035148.P3666470097001380971

/-! ## A035148.P4423563556444101634

`A035224(A065430(n+1))`
-/

namespace A035148.P4423563556444101634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035224 (A065430 (n + 1)).toNat

end

end A035148.P4423563556444101634

/-!
# A035149: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -41.

The programs for A035149, there is no canonical definition to state claims against.
-/

/-! ## A035149.P2274000262403625408

`A035225(A353397(n+1))`
-/

namespace A035149.P2274000262403625408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035225 (A353397 (n + 1)).toNat

end

end A035149.P2274000262403625408

/-! ## A035149.P16518498665228745233

`∏{e}[n+1, #+1]%A272259((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A035149.P16518498665228745233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A272259 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1 + 32))

end

end A035149.P16518498665228745233

/-! ## A035149.P4586013608628686858

`and(∏{e}[n+1, #+1], A333862(A122618(n+1)))`
-/

namespace A035149.P4586013608628686858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A333862 (A122618 (n + 1)).toNat)

end

end A035149.P4586013608628686858

/-! ## A035149.P3954713912104893866

`and(∏{e}[n+1, #+1], A280926(A095386(n+2)))`
-/

namespace A035149.P3954713912104893866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A280926 (A095386 (n + 2)).toNat)

end

end A035149.P3954713912104893866

/-! ## A035149.P1512194328117460265

`A035204(A348067(n+1))`
-/

namespace A035149.P1512194328117460265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035204 (A348067 (n + 1)).toNat

end

end A035149.P1512194328117460265

/-!
# A035150: Fourier coefficients of (normalized Delta)^4.

The programs for A035150, there is no canonical definition to state claims against.
-/

/-! ## A035150.P10137977862220468471

`∑{#}[n, A010839(#)*A010839(n-#)]`
-/

namespace A035150.P10137977862220468471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010839 k * A010839 (n - k)

end

end A035150.P10137977862220468471

/-!
# A035151: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -39.

The programs for A035151, the canonical program `A035151.P2523268833969222750` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035151 has offset 1).

The definition of A035151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035151.P2523268833969222750

`∑{d}[n+1, A388073(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035151

/-- `∑{d}[n+1, A388073(#)]` -/
def P2523268833969222750.Spec : Prop :=
  ∀ n, P2523268833969222750.a n = A035151 (n + 1)

theorem P2523268833969222750.correct : P2523268833969222750.Spec := by
  intro n
  simp only [A035151, Nat.add_sub_cancel]

end A035151

/-! ## A035151.P2594916735087389935

`A035204(A061898(n+1)%A322960(n+5))`
-/

namespace A035151.P2594916735087389935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035204 (Int.tmod (A061898 (n + 1)) (A322960 (n + 5))).toNat

end

end A035151.P2594916735087389935

namespace A035151

/-- `A035204(A061898(n+1)%A322960(n+5))` -/
def P2594916735087389935.Spec : Prop :=
  ∀ n, P2594916735087389935.a n = A035151 (n + 1)

end A035151

/-! ## A035151.P18366821136608753798

`A035204(A061898(n+1))%A055553(n+4)`
-/

namespace A035151.P18366821136608753798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035204 (A061898 (n + 1)).toNat) (A055553 (n + 4))

end

end A035151.P18366821136608753798

namespace A035151

/-- `A035204(A061898(n+1))%A055553(n+4)` -/
def P18366821136608753798.Spec : Prop :=
  ∀ n, P18366821136608753798.a n = A035151 (n + 1)

end A035151

/-! ## A035151.P13865632009091314605

`gcd(A035181(A187829(n+1)), A080300(n))`
-/

namespace A035151.P13865632009091314605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035181 (A187829 (n + 1)).toNat) (A080300 n)

end

end A035151.P13865632009091314605

namespace A035151

/-- `gcd(A035181(A187829(n+1)), A080300(n))` -/
def P13865632009091314605.Spec : Prop :=
  ∀ n, (P13865632009091314605.a n : ℤ) = A035151 (n + 1)

end A035151

/-! ## A035151.P10348625786440110936

`A035204(A061898(n+1))*A035204(A011782(n))`
-/

namespace A035151.P10348625786440110936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035204 (A061898 (n + 1)).toNat * A035204 (A011782 n).toNat

end

end A035151.P10348625786440110936

namespace A035151

/-- `A035204(A061898(n+1))*A035204(A011782(n))` -/
def P10348625786440110936.Spec : Prop :=
  ∀ n, P10348625786440110936.a n = A035151 (n + 1)

end A035151

/-!
# A035152: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -38.

The programs for A035152, there is no canonical definition to state claims against.
-/

/-! ## A035152.P13584097438672293556

`and(∑{d}[n+1, #%2], A005382(A000045(n+3)))`
-/

namespace A035152.P13584097438672293556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) (A005382 (A000045 (n + 3)).toNat)

end

end A035152.P13584097438672293556

/-! ## A035152.P12397883278949514397

`A001227(n+1)%A093095(A007662(n))`
-/

namespace A035152.P12397883278949514397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (n + 1)) (A093095 (A007662 n).toNat)

end

end A035152.P12397883278949514397

/-! ## A035152.P15135732964941398935

`and(A001227(n+1), A007970(A006950(n)))`
-/

namespace A035152.P15135732964941398935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001227 (n + 1)) (A007970 (A006950 n).toNat)

end

end A035152.P15135732964941398935

/-! ## A035152.P7522349251092735301

`and(A001227(n+1), A296716(A079960(n)))`
-/

namespace A035152.P7522349251092735301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001227 (n + 1)) (A296716 (A079960 n).toNat)

end

end A035152.P7522349251092735301

/-! ## A035152.P775728893266341273

`and(A001227(n+1), A008578(A023373(n+1)))`
-/

namespace A035152.P775728893266341273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001227 (n + 1)) (A008578 (A023373 (n + 1)).toNat)

end

end A035152.P775728893266341273

/-!
# A035153: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -37.

The programs for A035153, there is no canonical definition to state claims against.
-/

/-! ## A035153.P575908959510394728

`and(∏{e}[n+1, #+1], A034886(A141459(n)))`
-/

namespace A035153.P575908959510394728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A034886 (A141459 n).toNat)

end

end A035153.P575908959510394728

/-! ## A035153.P30531165055000865

`and(A034886(A141459(n)), A275437(n))`
-/

namespace A035153.P30531165055000865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034886 (A141459 n).toNat) (A275437 n)

end

end A035153.P30531165055000865

/-! ## A035153.P16182028770354071866

`and(A000005(n+1), A162401(A027642(n)))`
-/

namespace A035153.P16182028770354071866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A162401 (A027642 n).toNat)

end

end A035153.P16182028770354071866

/-! ## A035153.P132195557059090771

`and(A035229(n+1), A249730(n+1))`
-/

namespace A035153.P132195557059090771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035229 (n + 1)) (A249730 (n + 1))

end

end A035153.P132195557059090771

/-! ## A035153.P7430772479650683187

`and(A124818(n), A318982(n+1))`
-/

namespace A035153.P7430772479650683187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124818 n) (A318982 (n + 1))

end

end A035153.P7430772479650683187

/-!
# A035154: a(n) = Sum_{d|n} Kronecker(-36, d).

The programs for A035154, the canonical program `A035154.P17971849599840028777` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035154 has offset 1).

The definition of A035154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035154.P17971849599840028777

`A002654(n+1)+A002654(3*(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035154

/-- `A002654(n+1)+A002654(3*(n+1))` -/
def P17971849599840028777.Spec : Prop :=
  ∀ n, P17971849599840028777.a n = A035154 (n + 1)

theorem P17971849599840028777.correct : P17971849599840028777.Spec := by
  intro n
  simp only [A035154, Nat.add_sub_cancel]

end A035154

/-! ## A035154.P9555873241139529252

`abs(A113446(n+1))`
-/

namespace A035154.P9555873241139529252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113446 (n + 1)|

end

end A035154.P9555873241139529252

namespace A035154

/-- `abs(A113446(n+1))` -/
def P9555873241139529252.Spec : Prop :=
  ∀ n, P9555873241139529252.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P12619303453642577233

`abs(A121450(n+1))`
-/

namespace A035154.P12619303453642577233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121450 (n + 1)|

end

end A035154.P12619303453642577233

namespace A035154

/-- `abs(A121450(n+1))` -/
def P12619303453642577233.Spec : Prop :=
  ∀ n, P12619303453642577233.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P2096448214080346063

`abs(A132004(n+1))`
-/

namespace A035154.P2096448214080346063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132004 (n + 1)|

end

end A035154.P2096448214080346063

namespace A035154

/-- `abs(A132004(n+1))` -/
def P2096448214080346063.Spec : Prop :=
  ∀ n, P2096448214080346063.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P9744657936324873610

`abs(A132003(n+1)/2)`
-/

namespace A035154.P9744657936324873610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A132003 (n + 1) : ℚ) / 2|

end

end A035154.P9744657936324873610

namespace A035154

/-- `abs(A132003(n+1)/2)` -/
def P9744657936324873610.Spec : Prop :=
  ∀ n, P9744657936324873610.a n = (A035154 (n + 1) : ℚ)

end A035154

/-! ## A035154.P6641002126099940943

`A002654((n+1)/3^val(n+1, 3))`
-/

namespace A035154.P6641002126099940943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A035154.P6641002126099940943

namespace A035154

/-- `A002654((n+1)/3^val(n+1, 3))` -/
def P6641002126099940943.Spec : Prop :=
  ∀ n, P6641002126099940943.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P5572753019440692623

`A125079(A025480(n))`
-/

namespace A035154.P5572753019440692623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (A025480 n).toNat

end

end A035154.P5572753019440692623

namespace A035154

/-- `A125079(A025480(n))` -/
def P5572753019440692623.Spec : Prop :=
  ∀ n, P5572753019440692623.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P9332707709981142127

`A035181(A000265(n+1))`
-/

namespace A035154.P9332707709981142127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (A000265 (n + 1)).toNat

end

end A035154.P9332707709981142127

namespace A035154

/-- `A035181(A000265(n+1))` -/
def P9332707709981142127.Spec : Prop :=
  ∀ n, P9332707709981142127.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P15787598681626908751

`A002654(A038502(n+1))`
-/

namespace A035154.P15787598681626908751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A038502 (n + 1)).toNat

end

end A035154.P15787598681626908751

namespace A035154

/-- `A002654(A038502(n+1))` -/
def P15787598681626908751.Spec : Prop :=
  ∀ n, P15787598681626908751.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P5921877604963732382

`A002654(A065330(n+1))`
-/

namespace A035154.P5921877604963732382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A065330 (n + 1)).toNat

end

end A035154.P5921877604963732382

namespace A035154

/-- `A002654(A065330(n+1))` -/
def P5921877604963732382.Spec : Prop :=
  ∀ n, P5921877604963732382.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P14137792598416757742

`A125079(A101279(n+1))`
-/

namespace A035154.P14137792598416757742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (A101279 (n + 1)).toNat

end

end A035154.P14137792598416757742

namespace A035154

/-- `A125079(A101279(n+1))` -/
def P14137792598416757742.Spec : Prop :=
  ∀ n, P14137792598416757742.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P3715824491363964074

`A033999(n)*A132004(n+1)`
-/

namespace A035154.P3715824491363964074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132004 (n + 1)

end

end A035154.P3715824491363964074

namespace A035154

/-- `A033999(n)*A132004(n+1)` -/
def P3715824491363964074.Spec : Prop :=
  ∀ n, P3715824491363964074.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P15251996646941681263

`gcd(A000038(n), A113446(n+1))`
-/

namespace A035154.P15251996646941681263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A113446 (n + 1))

end

end A035154.P15251996646941681263

namespace A035154

/-- `gcd(A000038(n), A113446(n+1))` -/
def P15251996646941681263.Spec : Prop :=
  ∀ n, (P15251996646941681263.a n : ℤ) = A035154 (n + 1)

end A035154

/-! ## A035154.P6364045238743797841

`gcd(A121450(n+1), A127802(n))`
-/

namespace A035154.P6364045238743797841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121450 (n + 1)) (A127802 n)

end

end A035154.P6364045238743797841

namespace A035154

/-- `gcd(A121450(n+1), A127802(n))` -/
def P6364045238743797841.Spec : Prop :=
  ∀ n, (P6364045238743797841.a n : ℤ) = A035154 (n + 1)

end A035154

/-! ## A035154.P10286242056781830970

`gcd(A130713(n), A132004(n+1))`
-/

namespace A035154.P10286242056781830970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130713 n) (A132004 (n + 1))

end

end A035154.P10286242056781830970

namespace A035154

/-- `gcd(A130713(n), A132004(n+1))` -/
def P10286242056781830970.Spec : Prop :=
  ∀ n, (P10286242056781830970.a n : ℤ) = A035154 (n + 1)

end A035154

/-! ## A035154.P11631832908324261134

`lcm(A020985(n), A113446(n+1))`
-/

namespace A035154.P11631832908324261134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A113446 (n + 1))

end

end A035154.P11631832908324261134

namespace A035154

/-- `lcm(A020985(n), A113446(n+1))` -/
def P11631832908324261134.Spec : Prop :=
  ∀ n, (P11631832908324261134.a n : ℤ) = A035154 (n + 1)

end A035154

/-! ## A035154.P17123761259500617905

`lcm(A033999(n), A121450(n+1))`
-/

namespace A035154.P17123761259500617905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A121450 (n + 1))

end

end A035154.P17123761259500617905

namespace A035154

/-- `lcm(A033999(n), A121450(n+1))` -/
def P17123761259500617905.Spec : Prop :=
  ∀ n, (P17123761259500617905.a n : ℤ) = A035154 (n + 1)

end A035154

/-! ## A035154.P632597627525310519

`lcm(A057077(n), A132004(n+1))`
-/

namespace A035154.P632597627525310519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A132004 (n + 1))

end

end A035154.P632597627525310519

namespace A035154

/-- `lcm(A057077(n), A132004(n+1))` -/
def P632597627525310519.Spec : Prop :=
  ∀ n, (P632597627525310519.a n : ℤ) = A035154 (n + 1)

end A035154

/-! ## A035154.P493602000003595411

`A364048(n+1)+A364047(n+1)`
-/

namespace A035154.P493602000003595411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364048 (n + 1) + A364047 (n + 1)

end

end A035154.P493602000003595411

namespace A035154

/-- `A364048(n+1)+A364047(n+1)` -/
def P493602000003595411.Spec : Prop :=
  ∀ n, P493602000003595411.a n = A035154 (n + 1)

end A035154

/-! ## A035154.P17446650652057875562

`A105673(n+1)-A113446(n+1)`
-/

namespace A035154.P17446650652057875562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) - A113446 (n + 1)

end

end A035154.P17446650652057875562

namespace A035154

/-- `A105673(n+1)-A113446(n+1)` -/
def P17446650652057875562.Spec : Prop :=
  ∀ n, P17446650652057875562.a n = A035154 (n + 1)

end A035154

/-!
# A035155: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -35.

The programs for A035155, the canonical program `A035155.P10521752229398755010` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035155 has offset 1).

The definition of A035155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035155.P10521752229398755010

`∑{d}[n+1, A390614(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035155

/-- `∑{d}[n+1, A390614(#)]` -/
def P10521752229398755010.Spec : Prop :=
  ∀ n, P10521752229398755010.a n = A035155 (n + 1)

theorem P10521752229398755010.correct : P10521752229398755010.Spec := by
  intro n
  simp only [A035155, Nat.add_sub_cancel]

end A035155

/-! ## A035155.P7206108302693536151

`A035194(A166665(n+1))`
-/

namespace A035155.P7206108302693536151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035194 (A166665 (n + 1)).toNat

end

end A035155.P7206108302693536151

namespace A035155

/-- `A035194(A166665(n+1))` -/
def P7206108302693536151.Spec : Prop :=
  ∀ n, P7206108302693536151.a n = A035155 (n + 1)

end A035155

/-! ## A035155.P4677911085645537776

`A280750(A341522(n)+70)`
-/

namespace A035155.P4677911085645537776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (A341522 n + 70).toNat

end

end A035155.P4677911085645537776

namespace A035155

/-- `A280750(A341522(n)+70)` -/
def P4677911085645537776.Spec : Prop :=
  ∀ n, P4677911085645537776.a n = A035155 (n + 1)

end A035155

/-! ## A035155.P3848045757344999483

`val(A103578(n+2), A273015(A101021(n)))`
-/

namespace A035155.P3848045757344999483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A103578 (n + 2)).toNat (A273015 (A101021 n).toNat).toNat

end

end A035155.P3848045757344999483

namespace A035155

/-- `val(A103578(n+2), A273015(A101021(n)))` -/
def P3848045757344999483.Spec : Prop :=
  ∀ n, (P3848045757344999483.a n : ℤ) = A035155 (n + 1)

end A035155

/-! ## A035155.P6550674413933548929

`A267263(A035263(n+1)*A355386(n+1))`
-/

namespace A035155.P6550674413933548929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A035263 (n + 1) * A355386 (n + 1)).toNat

end

end A035155.P6550674413933548929

namespace A035155

/-- `A267263(A035263(n+1)*A355386(n+1))` -/
def P6550674413933548929.Spec : Prop :=
  ∀ n, P6550674413933548929.a n = A035155 (n + 1)

end A035155

/-!
# A035156: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -34.

The programs for A035156, there is no canonical definition to state claims against.
-/

/-! ## A035156.P2516595149982120221

`A299480(A113175(n+1))%3`
-/

namespace A035156.P2516595149982120221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299480 (A113175 (n + 1)).toNat) 3

end

end A035156.P2516595149982120221

/-! ## A035156.P11216793582158181657

`A078719(A078774(2*(n+1)))%3`
-/

namespace A035156.P11216793582158181657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078719 (A078774 (2 * (n + 1))).toNat) 3

end

end A035156.P11216793582158181657

/-! ## A035156.P7584114246304490494

`A292373(A246011(A077342(n+1)²))`
-/

namespace A035156.P7584114246304490494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A246011 (A077342 (n + 1) ^ 2).toNat).toNat

end

end A035156.P7584114246304490494

/-! ## A035156.P13852515496338225096

`A109210(3*(n+1)/2^val(n+1, 2)+1)%3`
-/

namespace A035156.P13852515496338225096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109210 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) + 1)).toNat) 3

end

end A035156.P13852515496338225096

/-! ## A035156.P13941206692677429410

`A002654(A325709(n+1))`
-/

namespace A035156.P13941206692677429410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A325709 (n + 1)).toNat

end

end A035156.P13941206692677429410

/-!
# A035157: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -33.

The programs for A035157, there is no canonical definition to state claims against.
-/

/-! ## A035157.P5834193656233484713

`gcd(A035215(n+1), A035221(A158591(n)))`
-/

namespace A035157.P5834193656233484713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035215 (n + 1)) (A035221 (A158591 n).toNat)

end

end A035157.P5834193656233484713

/-! ## A035157.P15875447962454463051

`A035215(A143034(3*n+1))+A035215(n+1)`
-/

namespace A035157.P15875447962454463051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035215 (A143034 (3 * n + 1)).toNat + A035215 (n + 1)

end

end A035157.P15875447962454463051

/-! ## A035157.P12810438249156861267

`A010874(A051903(n+1)+A032145(n))`
-/

namespace A035157.P12810438249156861267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A051903 (n + 1) + A032145 n).toNat

end

end A035157.P12810438249156861267

/-! ## A035157.P7911753753699839165

`and(A036989(n), A272087(A192135(n+1)))`
-/

namespace A035157.P7911753753699839165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036989 n) (A272087 (A192135 (n + 1)).toNat)

end

end A035157.P7911753753699839165

/-! ## A035157.P8831729713744187336

`or(A035193(A014161(n)), A035215(n+1))`
-/

namespace A035157.P8831729713744187336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035193 (A014161 n).toNat) (A035215 (n + 1))

end

end A035157.P8831729713744187336

/-!
# A035158: Floor of the Chebyshev function theta(n): a(n) = floor(Sum_{primes p <= n} log(p)).

The programs for A035158, the canonical program `A035158.P11043150127881693706` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035158 has offset 1).

The definition of A035158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035158.P13312018454032491779

`floor(∑[log(∏{d}[∑{p}[n+1, C(#, n)], #])])`
-/

namespace A035158.P13312018454032491779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A035158.P13312018454032491779

namespace A035158

/-- `floor(∑[log(∏{d}[∑{p}[n+1, C(#, n)], #])])` -/
def P13312018454032491779.Spec : Prop :=
  ∀ n, P13312018454032491779.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P14054603756814197640

`floor(∑[log(A089026(n+1))])`
-/

namespace A035158.P14054603756814197640
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A089026 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A035158.P14054603756814197640

namespace A035158

/-- `floor(∑[log(A089026(n+1))])` -/
def P14054603756814197640.Spec : Prop :=
  ∀ n, P14054603756814197640.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P326435458244344354

`A083535(or(1, n)+1)-1`
-/

namespace A035158.P326435458244344354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083535 (Nat.lor 1 n + 1) - 1

end

end A035158.P326435458244344354

namespace A035158

/-- `A083535(or(1, n)+1)-1` -/
def P326435458244344354.Spec : Prop :=
  ∀ n, P326435458244344354.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P4875388166585713041

`(A083535(n+1)-1)%(n+1)`
-/

namespace A035158.P4875388166585713041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083535 (n + 1) - 1) (n + 1 : ℤ)

end

end A035158.P4875388166585713041

namespace A035158

/-- `(A083535(n+1)-1)%(n+1)` -/
def P4875388166585713041.Spec : Prop :=
  ∀ n, P4875388166585713041.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P11043150127881693706

`A016040(A033270(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035158

/-- `A016040(A033270(n+1)+1)` -/
def P11043150127881693706.Spec : Prop :=
  ∀ n, P11043150127881693706.a n = A035158 (n + 1)

theorem P11043150127881693706.correct : P11043150127881693706.Spec := by
  intro n
  simp only [A035158, Nat.add_sub_cancel]

end A035158

/-! ## A035158.P379244183262655635

`A083535(n+1)+A057428(n)`
-/

namespace A035158.P379244183262655635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083535 (n + 1) + A057428 n

end

end A035158.P379244183262655635

namespace A035158

/-- `A083535(n+1)+A057428(n)` -/
def P379244183262655635.Spec : Prop :=
  ∀ n, P379244183262655635.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P4165384844369420489

`A083535(n+1)-A057427(n)`
-/

namespace A035158.P4165384844369420489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083535 (n + 1) - A057427 n

end

end A035158.P4165384844369420489

namespace A035158

/-- `A083535(n+1)-A057427(n)` -/
def P4165384844369420489.Spec : Prop :=
  ∀ n, P4165384844369420489.a n = A035158 (n + 1)

theorem P4165384844369420489.correct : P4165384844369420489.Spec := by
  intro n
  simp only [A035158, Nat.add_sub_cancel, A035158.P4165384844369420489.a, A035158.P11043150127881693706.a, A016040, A016040.P16668472596033548107.f1, A016040.P16668472596033548107.a, A033270, A033270.P17547381595511500328.f2, A033270.P17547381595511500328.f1, A033270.P17547381595511500328.a, A057427, A057427.P17645173493419391152.a, A083535, A083535.P10862675203601203932.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035158

/-! ## A035158.P16598085180700682403

`A016040(A000720(n+1)^(n²%(n+1)))`
-/

namespace A035158.P16598085180700682403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016040 (A000720 (n + 1) ^ (n ^ 2 % (n + 1))).toNat

end

end A035158.P16598085180700682403

namespace A035158

/-- `A016040(A000720(n+1)^(n²%(n+1)))` -/
def P16598085180700682403.Spec : Prop :=
  ∀ n, P16598085180700682403.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P7602462603208558615

`A016040(A000720(n+1)+A000007(n))`
-/

namespace A035158.P7602462603208558615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016040 (A000720 (n + 1) + A000007 n).toNat

end

end A035158.P7602462603208558615

namespace A035158

/-- `A016040(A000720(n+1)+A000007(n))` -/
def P7602462603208558615.Spec : Prop :=
  ∀ n, P7602462603208558615.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P15254010315148260890

`floor(log(A034386(n+1)))`
-/

namespace A035158.P15254010315148260890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A034386 (n + 1) : ℝ)⌋

end

end A035158.P15254010315148260890

namespace A035158

/-- `floor(log(A034386(n+1)))` -/
def P15254010315148260890.Spec : Prop :=
  ∀ n, P15254010315148260890.a n = A035158 (n + 1)

end A035158

/-! ## A035158.P13236291209630966098

`floor(log(A186944(n+2)))`
-/

namespace A035158.P13236291209630966098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A186944 (n + 2) : ℝ)⌋

end

end A035158.P13236291209630966098

namespace A035158

/-- `floor(log(A186944(n+2)))` -/
def P13236291209630966098.Spec : Prop :=
  ∀ n, P13236291209630966098.a n = A035158 (n + 1)

end A035158

/-!
# A035159: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -31.

The programs for A035159, there is no canonical definition to state claims against.
-/

/-! ## A035159.P7543868995434778078

`∑{d}[n+1, A011588(#)]`
-/

namespace A035159.P7543868995434778078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011588 d

end

end A035159.P7543868995434778078

/-! ## A035159.P2171011996340659641

`∑{d}[or(n+1, A015070(n)), A020985(#)]`
-/

namespace A035159.P2171011996340659641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A015070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020985 d

end

end A035159.P2171011996340659641

/-! ## A035159.P6691611385083785672

`A035219(A003961(n+1)%A028818(n+1))`
-/

namespace A035159.P6691611385083785672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (Int.tmod (A003961 (n + 1)) (A028818 (n + 1))).toNat

end

end A035159.P6691611385083785672

/-! ## A035159.P17456053230577777898

`A035170(A348067(n+1))%A201170(2*n+3)`
-/

namespace A035159.P17456053230577777898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035170 (A348067 (n + 1)).toNat) (A201170 (2 * n + 3))

end

end A035159.P17456053230577777898

/-! ## A035159.P6808175394372552568

`A035219(C(A003961(n+1), A270061(n)))`
-/

namespace A035159.P6808175394372552568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035219 (Nat.choose (A003961 (n + 1)).toNat (A270061 n).toNat)

end

end A035159.P6808175394372552568

/-!
# A035160: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -30.

The programs for A035160, there is no canonical definition to state claims against.
-/

/-! ## A035160.P7128115601622907232

`A215883(A061395(2*(n+1))%A348307(n+1))`
-/

namespace A035160.P7128115601622907232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 (Int.tmod (A061395 (2 * (n + 1))) (A348307 (n + 1))).toNat

end

end A035160.P7128115601622907232

/-! ## A035160.P16530609166609825461

`A001822(A334202(n+1)+A165024(2*n+1))`
-/

namespace A035160.P16530609166609825461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A334202 (n + 1) + A165024 (2 * n + 1)).toNat

end

end A035160.P16530609166609825461

/-! ## A035160.P12431951449015162626

`and(A215883(A061395(2*(n+1))), A348307(n+2))`
-/

namespace A035160.P12431951449015162626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A215883 (A061395 (2 * (n + 1))).toNat) (A348307 (n + 2))

end

end A035160.P12431951449015162626

/-! ## A035160.P14368088306997933643

`A007949(A146891(A379006(n+1)))`
-/

namespace A035160.P14368088306997933643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A146891 (A379006 (n + 1)).toNat).toNat

end

end A035160.P14368088306997933643

/-! ## A035160.P16052235120608377353

`A146069(A006530(n+1))%3`
-/

namespace A035160.P16052235120608377353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146069 (A006530 (n + 1)).toNat) 3

end

end A035160.P16052235120608377353

/-!
# A035161: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -29.

The programs for A035161, there is no canonical definition to state claims against.
-/

/-! ## A035161.P14315782533230878332

`A035144(A064988(n+1)*A140513(n))`
-/

namespace A035161.P14315782533230878332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (A064988 (n + 1) * A140513 n).toNat

end

end A035161.P14315782533230878332

/-! ## A035161.P9656522191297711808

`A035144(lcm(A064988(n+1), A140513(n)))`
-/

namespace A035161.P9656522191297711808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (Int.lcm (A064988 (n + 1)) (A140513 n))

end

end A035161.P9656522191297711808

/-! ## A035161.P5875814582476698996

`A035144(or(A064988(n+1), A172486(n)))`
-/

namespace A035161.P5875814582476698996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 (Int.lor (A064988 (n + 1)) (A172486 n)).toNat

end

end A035161.P5875814582476698996

/-! ## A035161.P6671284190165262780

`A035144((A172486(n)+1)*A064988(n+1))`
-/

namespace A035161.P6671284190165262780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035144 ((A172486 n + 1) * A064988 (n + 1)).toNat

end

end A035161.P6671284190165262780

/-! ## A035161.P3941049322269475865

`and(record[A064467(n+1)], A112329(n+1))`
-/

namespace A035161.P3941049322269475865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A112329 (n + 1))

end

end A035161.P3941049322269475865

/-!
# A035162: Number of positive odd solutions to equation x^2 + 7y^2 = 8n.

The programs for A035162, the canonical program `A035162.P985168465731373250` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035162 has offset 1).

The definition of A035162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035162.P845029311525873910

`abs(A121454(n+1))`
-/

namespace A035162.P845029311525873910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121454 (n + 1)|

end

end A035162.P845029311525873910

namespace A035162

/-- `abs(A121454(n+1))` -/
def P845029311525873910.Spec : Prop :=
  ∀ n, P845029311525873910.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P13129800317107461172

`A035182(n+1)/(val(n+1, 2)+1)`
-/

namespace A035162.P13129800317107461172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035182 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ)

end

end A035162.P13129800317107461172

namespace A035162

/-- `A035182(n+1)/(val(n+1, 2)+1)` -/
def P13129800317107461172.Spec : Prop :=
  ∀ n, P13129800317107461172.a n = (A035162 (n + 1) : ℚ)

end A035162

/-! ## A035162.P7175849818503366740

`A133827(A025480(n))`
-/

namespace A035162.P7175849818503366740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133827 (A025480 n).toNat

end

end A035162.P7175849818503366740

namespace A035162

/-- `A133827(A025480(n))` -/
def P7175849818503366740.Spec : Prop :=
  ∀ n, P7175849818503366740.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P1152414786535244415

`A035182(A000265(n+1))`
-/

namespace A035162.P1152414786535244415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (A000265 (n + 1)).toNat

end

end A035162.P1152414786535244415

namespace A035162

/-- `A035182(A000265(n+1))` -/
def P1152414786535244415.Spec : Prop :=
  ∀ n, P1152414786535244415.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P11506791300884541910

`A110399(A153733(n)+1)`
-/

namespace A035162.P11506791300884541910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (A153733 n + 1).toNat

end

end A035162.P11506791300884541910

namespace A035162

/-- `A110399(A153733(n)+1)` -/
def P11506791300884541910.Spec : Prop :=
  ∀ n, P11506791300884541910.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P1989525164821814517

`A033999(n)*A121454(n+1)`
-/

namespace A035162.P1989525164821814517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A121454 (n + 1)

end

end A035162.P1989525164821814517

namespace A035162

/-- `A033999(n)*A121454(n+1)` -/
def P1989525164821814517.Spec : Prop :=
  ∀ n, P1989525164821814517.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P2482277261720560431

`gcd(A000038(n), A121454(n+1))`
-/

namespace A035162.P2482277261720560431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A121454 (n + 1))

end

end A035162.P2482277261720560431

namespace A035162

/-- `gcd(A000038(n), A121454(n+1))` -/
def P2482277261720560431.Spec : Prop :=
  ∀ n, (P2482277261720560431.a n : ℤ) = A035162 (n + 1)

end A035162

/-! ## A035162.P3225529087466256890

`A035182(n+1)/A001511(n+1)`
-/

namespace A035162.P3225529087466256890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035182 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A035162.P3225529087466256890

namespace A035162

/-- `A035182(n+1)/A001511(n+1)` -/
def P3225529087466256890.Spec : Prop :=
  ∀ n, P3225529087466256890.a n = (A035162 (n + 1) : ℚ)

end A035162

/-! ## A035162.P16045571569524437895

`lcm(A008836(n+1), A121454(n+1))`
-/

namespace A035162.P16045571569524437895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A121454 (n + 1))

end

end A035162.P16045571569524437895

namespace A035162

/-- `lcm(A008836(n+1), A121454(n+1))` -/
def P16045571569524437895.Spec : Prop :=
  ∀ n, (P16045571569524437895.a n : ℤ) = A035162 (n + 1)

end A035162

/-! ## A035162.P2315805674510824480

`∑{d}[n+1, A048298(#)*A121454((n+1)/#)]`
-/

namespace A035162.P2315805674510824480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A121454 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035162.P2315805674510824480

namespace A035162

/-- `∑{d}[n+1, A048298(#)*A121454((n+1)/#)]` -/
def P2315805674510824480.Spec : Prop :=
  ∀ n, P2315805674510824480.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P7789725502543078435

`∑{d}[n+1, A035182(#)*A154955((n+1)/#)]`
-/

namespace A035162.P7789725502543078435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035182 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035162.P7789725502543078435

namespace A035162

/-- `∑{d}[n+1, A035182(#)*A154955((n+1)/#)]` -/
def P7789725502543078435.Spec : Prop :=
  ∀ n, P7789725502543078435.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P13792340970639509308

`∑{d}[n+1, A099894(#-1)*A121454((n+1)/#)]`
-/

namespace A035162.P13792340970639509308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A121454 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035162.P13792340970639509308

namespace A035162

/-- `∑{d}[n+1, A099894(#-1)*A121454((n+1)/#)]` -/
def P13792340970639509308.Spec : Prop :=
  ∀ n, P13792340970639509308.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P985168465731373250

`A051000(2*(n+1))%7`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035162

/-- `A051000(2*(n+1))%7` -/
def P985168465731373250.Spec : Prop :=
  ∀ n, P985168465731373250.a n = A035162 (n + 1)

theorem P985168465731373250.correct : P985168465731373250.Spec := by
  intro n
  simp only [A035162, Nat.add_sub_cancel]

end A035162

/-! ## A035162.P2295000084453076241

`A096962(2*(n+1))%7`
-/

namespace A035162.P2295000084453076241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096962 (2 * (n + 1))) 7

end

end A035162.P2295000084453076241

namespace A035162

/-- `A096962(2*(n+1))%7` -/
def P2295000084453076241.Spec : Prop :=
  ∀ n, P2295000084453076241.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P12453530842786809413

`A321813(2*(n+1))%7`
-/

namespace A035162.P12453530842786809413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321813 (2 * (n + 1))) 7

end

end A035162.P12453530842786809413

namespace A035162

/-- `A321813(2*(n+1))%7` -/
def P12453530842786809413.Spec : Prop :=
  ∀ n, P12453530842786809413.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P4938130269161998912

`A007331(Δ[A002378(n)])%7`
-/

namespace A035162.P4938130269161998912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007331 (f1 (n + 1) - f1 n).toNat) 7

end

end A035162.P4938130269161998912

namespace A035162

/-- `A007331(Δ[A002378(n)])%7` -/
def P4938130269161998912.Spec : Prop :=
  ∀ n, P4938130269161998912.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P16513419480543355941

`A110399(A028234(2*(n+1)))`
-/

namespace A035162.P16513419480543355941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (A028234 (2 * (n + 1))).toNat

end

end A035162.P16513419480543355941

namespace A035162

/-- `A110399(A028234(2*(n+1)))` -/
def P16513419480543355941.Spec : Prop :=
  ∀ n, P16513419480543355941.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P4413029504116944264

`A035182(2*(n+1))-A035182(n+1)`
-/

namespace A035162.P4413029504116944264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (2 * (n + 1)) - A035182 (n + 1)

end

end A035162.P4413029504116944264

namespace A035162

/-- `A035182(2*(n+1))-A035182(n+1)` -/
def P4413029504116944264.Spec : Prop :=
  ∀ n, P4413029504116944264.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P15244880130285236166

`A000038(n+1)-A121454(2*(n+1))`
-/

namespace A035162.P15244880130285236166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A121454 (2 * (n + 1))

end

end A035162.P15244880130285236166

namespace A035162

/-- `A000038(n+1)-A121454(2*(n+1))` -/
def P15244880130285236166.Spec : Prop :=
  ∀ n, P15244880130285236166.a n = A035162 (n + 1)

end A035162

/-! ## A035162.P10290543910399125544

`gcd(A035182(2*n+2), A035182(n+1))`
-/

namespace A035162.P10290543910399125544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035182 (2 * n + 2)) (A035182 (n + 1))

end

end A035162.P10290543910399125544

namespace A035162

/-- `gcd(A035182(2*n+2), A035182(n+1))` -/
def P10290543910399125544.Spec : Prop :=
  ∀ n, (P10290543910399125544.a n : ℤ) = A035162 (n + 1)

end A035162

/-!
# A035163: Composite numbers k, not a power of 2, such that the E(k) == 1 (mod k), where E(k) is the k-th Euler number (A000364).

The programs for A035163, there is no canonical definition to state claims against.
-/

/-! ## A035163.P11435827766934257058

`filter[A081730(n+1), A202238(#)]`
-/

namespace A035163.P11435827766934257058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A035163.P11435827766934257058

/-!
# A035164: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -26.

The programs for A035164, there is no canonical definition to state claims against.
-/

/-! ## A035164.P11428631138974643337

`A175242(n+1)*A265186(A192560(n+1))`
-/

namespace A035164.P11428631138974643337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (n + 1) * A265186 (A192560 (n + 1)).toNat

end

end A035164.P11428631138974643337

/-! ## A035164.P7432039786782786161

`xor(A001227(n+1), A023416(A204984(n+1)))`
-/

namespace A035164.P7432039786782786161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001227 (n + 1)) (A023416 (A204984 (n + 1)).toNat)

end

end A035164.P7432039786782786161

/-! ## A035164.P6698453129858663349

`A175242(n+1)-A010057(A140113(2*(n+2)))`
-/

namespace A035164.P6698453129858663349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (n + 1) - A010057 (A140113 (2 * (n + 2))).toNat

end

end A035164.P6698453129858663349

/-! ## A035164.P4978548909953657254

`C(A175242(n+1), A008459(A165680(3*n+4)))`
-/

namespace A035164.P4978548909953657254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A175242 (n + 1)).toNat (A008459 (A165680 (3 * n + 4)).toNat).toNat

end

end A035164.P4978548909953657254

/-! ## A035164.P3784004175583142998

`A001227(n+1)-A101638(A017995(n))`
-/

namespace A035164.P3784004175583142998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A101638 (A017995 n).toNat

end

end A035164.P3784004175583142998

/-!
# A035165: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -25.

The programs for A035165, the canonical program `A035165.P18414371456217248996` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035165 has offset 1).

The definition of A035165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035165.P493544031671893127

`(val(n+1, 2)+1)*A002654((n+1)/(2^val(n+1, 2)*5^val(n+1, 5)))`
-/

namespace A035165.P493544031671893127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A002654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ))).toNat

end

end A035165.P493544031671893127

namespace A035165

/-- `(val(n+1, 2)+1)*A002654((n+1)/(2^val(n+1, 2)*5^val(n+1, 5)))` -/
def P493544031671893127.Spec : Prop :=
  ∀ n, P493544031671893127.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P17715599144015290877

`A035184(A132739(n+1))`
-/

namespace A035165.P17715599144015290877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (A132739 (n + 1)).toNat

end

end A035165.P17715599144015290877

namespace A035165

/-- `A035184(A132739(n+1))` -/
def P17715599144015290877.Spec : Prop :=
  ∀ n, P17715599144015290877.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P18414371456217248996

`Δ[A005187(n)]*A053694(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035165

/-- `Δ[A005187(n)]*A053694(n)` -/
def P18414371456217248996.Spec : Prop :=
  ∀ n, P18414371456217248996.a n = A035165 (n + 1)

theorem P18414371456217248996.correct : P18414371456217248996.Spec := by
  intro n
  simp only [A035165, Nat.add_sub_cancel]

end A035165

/-! ## A035165.P12300395201770354475

`A001511(n+1)*A053694(n)`
-/

namespace A035165.P12300395201770354475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A053694 n

end

end A035165.P12300395201770354475

namespace A035165

/-- `A001511(n+1)*A053694(n)` -/
def P12300395201770354475.Spec : Prop :=
  ∀ n, P12300395201770354475.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P6896304463925689464

`A053694(n)*A164677(n+1)`
-/

namespace A035165.P6896304463925689464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053694 n * A164677 (n + 1)

end

end A035165.P6896304463925689464

namespace A035165

/-- `A053694(n)*A164677(n+1)` -/
def P6896304463925689464.Spec : Prop :=
  ∀ n, P6896304463925689464.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P10329753697515560758

`∑{d}[A132739(n+1), A034947(#)]`
-/

namespace A035165.P10329753697515560758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A034947 d

end

end A035165.P10329753697515560758

namespace A035165

/-- `∑{d}[A132739(n+1), A034947(#)]` -/
def P10329753697515560758.Spec : Prop :=
  ∀ n, P10329753697515560758.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P4171592278410024845

`A035184(n+1)/A055457(n+1)`
-/

namespace A035165.P4171592278410024845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035184 (n + 1) : ℚ) / (A055457 (n + 1) : ℚ)

end

end A035165.P4171592278410024845

namespace A035165

/-- `A035184(n+1)/A055457(n+1)` -/
def P4171592278410024845.Spec : Prop :=
  ∀ n, P4171592278410024845.a n = (A035165 (n + 1) : ℚ)

end A035165

/-! ## A035165.P5722387448192394089

`∑{d}[n+1, A091379(#)*A214293((n+1)/#)]`
-/

namespace A035165.P5722387448192394089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091379 d * A214293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035165.P5722387448192394089

namespace A035165

/-- `∑{d}[n+1, A091379(#)*A214293((n+1)/#)]` -/
def P5722387448192394089.Spec : Prop :=
  ∀ n, P5722387448192394089.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P8227287989289847721

`∑{d}[n+1, A036987(#-1)*A053694((n+1)/#-1)]`
-/

namespace A035165.P8227287989289847721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A053694 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035165.P8227287989289847721

namespace A035165

/-- `∑{d}[n+1, A036987(#-1)*A053694((n+1)/#-1)]` -/
def P8227287989289847721.Spec : Prop :=
  ∀ n, P8227287989289847721.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P1143354741470285240

`A000005(A006519(n+1))*A053694(n)`
-/

namespace A035165.P1143354741470285240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A053694 n

end

end A035165.P1143354741470285240

namespace A035165

/-- `A000005(A006519(n+1))*A053694(n)` -/
def P1143354741470285240.Spec : Prop :=
  ∀ n, P1143354741470285240.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P6427911870904794715

`∑{d}[n+1, A001511(#)*A185276((n+1)/#)]`
-/

namespace A035165.P6427911870904794715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A185276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035165.P6427911870904794715

namespace A035165

/-- `∑{d}[n+1, A001511(#)*A185276((n+1)/#)]` -/
def P6427911870904794715.Spec : Prop :=
  ∀ n, P6427911870904794715.a n = A035165 (n + 1)

end A035165

/-! ## A035165.P14931166600325480999

`A050603(2*n)*A053694(n)`
-/

namespace A035165.P14931166600325480999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (2 * n) * A053694 n

end

end A035165.P14931166600325480999

namespace A035165

/-- `A050603(2*n)*A053694(n)` -/
def P14931166600325480999.Spec : Prop :=
  ∀ n, P14931166600325480999.a n = A035165 (n + 1)

end A035165

/-!
# A035167: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -23.

The programs for A035167, the canonical program `A035167.P8550359022361674284` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035167 has offset 1).

The definition of A035167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035167.P8550359022361674284

`∑{d}[n+1, A011586(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035167

/-- `∑{d}[n+1, A011586(#)]` -/
def P8550359022361674284.Spec : Prop :=
  ∀ n, P8550359022361674284.a n = A035167 (n + 1)

theorem P8550359022361674284.correct : P8550359022361674284.Spec := by
  intro n
  simp only [A035167, Nat.add_sub_cancel]

end A035167

/-! ## A035167.P2251077259921281577

`A028930(n+1)+A028959(n+1)/2`
-/

namespace A035167.P2251077259921281577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028930 (n + 1) : ℚ) + (A028959 (n + 1) : ℚ) / 2

end

end A035167.P2251077259921281577

namespace A035167

/-- `A028930(n+1)+A028959(n+1)/2` -/
def P2251077259921281577.Spec : Prop :=
  ∀ n, P2251077259921281577.a n = (A035167 (n + 1) : ℚ)

end A035167

/-! ## A035167.P17568439975497010462

`A030199(n+1)+A007494(A028930(n+1))`
-/

namespace A035167.P17568439975497010462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030199 (n + 1) + A007494 (A028930 (n + 1)).toNat

end

end A035167.P17568439975497010462

namespace A035167

/-- `A030199(n+1)+A007494(A028930(n+1))` -/
def P17568439975497010462.Spec : Prop :=
  ∀ n, P17568439975497010462.a n = A035167 (n + 1)

end A035167

/-! ## A035167.P1853275357960959998

`C(∏{e}[n+1, #+1], A339903(lcm(6, (n+1)^3)/6))`
-/

namespace A035167.P1853275357960959998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (A339903 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat).toNat

end

end A035167.P1853275357960959998

namespace A035167

/-- `C(∏{e}[n+1, #+1], A339903(lcm(6, (n+1)^3)/6))` -/
def P1853275357960959998.Spec : Prop :=
  ∀ n, (P1853275357960959998.a n : ℤ) = A035167 (n + 1)

end A035167

/-! ## A035167.P16895105285900885792

`C(∏{e}[n+1, #+1], A284097(A051000(n+1)))`
-/

namespace A035167.P16895105285900885792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (A284097 (A051000 (n + 1)).toNat).toNat

end

end A035167.P16895105285900885792

namespace A035167

/-- `C(∏{e}[n+1, #+1], A284097(A051000(n+1)))` -/
def P16895105285900885792.Spec : Prop :=
  ∀ n, (P16895105285900885792.a n : ℤ) = A035167 (n + 1)

end A035167

/-!
# A035168: a(n) = Sum_{d|n} Kronecker(-22, d).

The programs for A035168, there is no canonical definition to state claims against.
-/

/-! ## A035168.P12731768556631618343

`A255647(n+1)`
-/

namespace A035168.P12731768556631618343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 (n + 1)

end

end A035168.P12731768556631618343

/-! ## A035168.P6009230189057859433

`dr(A255647(A153152(n)))`
-/

namespace A035168.P6009230189057859433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A255647 (A153152 n).toNat)

end

end A035168.P6009230189057859433

/-! ## A035168.P11429511564114947272

`Δ[A020725(∑[A255647(n)])]`
-/

namespace A035168.P11429511564114947272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035168.P11429511564114947272

/-! ## A035168.P13763464579283081972

`Δ[A028310(∑[A255647(n)])]`
-/

namespace A035168.P13763464579283081972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035168.P13763464579283081972

/-! ## A035168.P10148099175394290735

`Δ[∑[A255647(n)]%A167499(n)]`
-/

namespace A035168.P10148099175394290735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A167499 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035168.P10148099175394290735

/-! ## A035168.P14536928271670403550

`dr(A255647(Δ[A002378(n)]))`
-/

namespace A035168.P14536928271670403550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A255647 (f1 (n + 1) - f1 n).toNat)

end

end A035168.P14536928271670403550

/-! ## A035168.P12051411311275843160

`dr(A255647(Δ[A046092(n)]))`
-/

namespace A035168.P12051411311275843160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A255647 (f1 (n + 1) - f1 n).toNat)

end

end A035168.P12051411311275843160

/-!
# A035169: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -21.

The programs for A035169, there is no canonical definition to state claims against.
-/

/-! ## A035169.P9995351539539622772

`gcd(A035203(n+1), A035203(A061882(n)))`
-/

namespace A035169.P9995351539539622772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035203 (n + 1)) (A035203 (A061882 n).toNat)

end

end A035169.P9995351539539622772

/-! ## A035169.P2882923988274974897

`A330166(lcm(4, A007095(n+3)))`
-/

namespace A035169.P2882923988274974897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (Int.lcm 4 (A007095 (n + 3)))

end

end A035169.P2882923988274974897

/-! ## A035169.P13174551783077569629

`A035203(A367764(2*n+3)²+n)`
-/

namespace A035169.P13174551783077569629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (A367764 (2 * n + 3) ^ 2 + (n : ℤ)).toNat

end

end A035169.P13174551783077569629

/-! ## A035169.P15416851719210320625

`A277731(A061393(A304638(n+1))²)`
-/

namespace A035169.P15416851719210320625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (A061393 (A304638 (n + 1)).toNat ^ 2).toNat

end

end A035169.P15416851719210320625

/-! ## A035169.P9965497678076330665

`A051699(A122156(∑[A139642(n+1)]))`
-/

namespace A035169.P9965497678076330665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A122156 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A035169.P9965497678076330665

/-!
# A035170: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -20.

The programs for A035170, the canonical program `A035170.P11485514388961379659` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035170 has offset 1).

The definition of A035170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124233, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A035170.P11485514388961379659

`A124233(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035170

/-- `A124233(n+1)` -/
def P11485514388961379659.Spec : Prop :=
  ∀ n, P11485514388961379659.a n = A035170 (n + 1)

theorem P11485514388961379659.correct : P11485514388961379659.Spec := by
  intro n
  simp only [A035170, Nat.add_sub_cancel]

end A035170

/-! ## A035170.P14798480267590605400

`abs(A111949(n+1))`
-/

namespace A035170.P14798480267590605400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111949 (n + 1)|

end

end A035170.P14798480267590605400

namespace A035170

/-- `abs(A111949(n+1))` -/
def P14798480267590605400.Spec : Prop :=
  ∀ n, P14798480267590605400.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P2976586760831434379

`abs(A143323(n+1))`
-/

namespace A035170.P2976586760831434379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143323 (n + 1)|

end

end A035170.P2976586760831434379

namespace A035170

/-- `abs(A143323(n+1))` -/
def P2976586760831434379.Spec : Prop :=
  ∀ n, P2976586760831434379.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P11404040421021057540

`∑{d}[n+1, A289741(#)]`
-/

namespace A035170.P11404040421021057540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A289741 d

end

end A035170.P11404040421021057540

namespace A035170

/-- `∑{d}[n+1, A289741(#)]` -/
def P11404040421021057540.Spec : Prop :=
  ∀ n, P11404040421021057540.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P16996460167433817709

`A129390(A025480(n))`
-/

namespace A035170.P16996460167433817709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129390 (A025480 n).toNat

end

end A035170.P16996460167433817709

namespace A035170

/-- `A129390(A025480(n))` -/
def P16996460167433817709.Spec : Prop :=
  ∀ n, P16996460167433817709.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P16960801017612325616

`A035183(A000265(n+1))`
-/

namespace A035170.P16960801017612325616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A000265 (n + 1)).toNat

end

end A035170.P16960801017612325616

namespace A035170

/-- `A035183(A000265(n+1))` -/
def P16960801017612325616.Spec : Prop :=
  ∀ n, P16960801017612325616.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P3918144532219402043

`A035183(A132740(n+1))`
-/

namespace A035170.P3918144532219402043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A132740 (n + 1)).toNat

end

end A035170.P3918144532219402043

namespace A035170

/-- `A035183(A132740(n+1))` -/
def P3918144532219402043.Spec : Prop :=
  ∀ n, P3918144532219402043.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P7567836472719188143

`A035183(A214682(n+1))`
-/

namespace A035170.P7567836472719188143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A214682 (n + 1)).toNat

end

end A035170.P7567836472719188143

namespace A035170

/-- `A035183(A214682(n+1))` -/
def P7567836472719188143.Spec : Prop :=
  ∀ n, P7567836472719188143.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P16924209212779063515

`gcd(A000038(n), A111949(n+1))`
-/

namespace A035170.P16924209212779063515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111949 (n + 1))

end

end A035170.P16924209212779063515

namespace A035170

/-- `gcd(A000038(n), A111949(n+1))` -/
def P16924209212779063515.Spec : Prop :=
  ∀ n, (P16924209212779063515.a n : ℤ) = A035170 (n + 1)

end A035170

/-! ## A035170.P14193508761245395123

`gcd(A045534(n), A143323(n+1))`
-/

namespace A035170.P14193508761245395123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045534 n) (A143323 (n + 1))

end

end A035170.P14193508761245395123

namespace A035170

/-- `gcd(A045534(n), A143323(n+1))` -/
def P14193508761245395123.Spec : Prop :=
  ∀ n, (P14193508761245395123.a n : ℤ) = A035170 (n + 1)

end A035170

/-! ## A035170.P13166092954728530825

`lcm(A014709(n), A111949(n+1))`
-/

namespace A035170.P13166092954728530825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A111949 (n + 1))

end

end A035170.P13166092954728530825

namespace A035170

/-- `lcm(A014709(n), A111949(n+1))` -/
def P13166092954728530825.Spec : Prop :=
  ∀ n, (P13166092954728530825.a n : ℤ) = A035170 (n + 1)

end A035170

/-! ## A035170.P259273030475674376

`lcm(A020985(n), A143323(n+1))`
-/

namespace A035170.P259273030475674376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A143323 (n + 1))

end

end A035170.P259273030475674376

namespace A035170

/-- `lcm(A020985(n), A143323(n+1))` -/
def P259273030475674376.Spec : Prop :=
  ∀ n, (P259273030475674376.a n : ℤ) = A035170 (n + 1)

end A035170

/-! ## A035170.P4436501488265360667

`A111949(n+1)+A028586(n+1)`
-/

namespace A035170.P4436501488265360667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (n + 1) + A028586 (n + 1)

end

end A035170.P4436501488265360667

namespace A035170

/-- `A111949(n+1)+A028586(n+1)` -/
def P4436501488265360667.Spec : Prop :=
  ∀ n, P4436501488265360667.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P15297150724181049490

`A033718(n+1)-A111949(n+1)`
-/

namespace A035170.P15297150724181049490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (n + 1) - A111949 (n + 1)

end

end A035170.P15297150724181049490

namespace A035170

/-- `A033718(n+1)-A111949(n+1)` -/
def P15297150724181049490.Spec : Prop :=
  ∀ n, P15297150724181049490.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P17691440048278257223

`A111949(n+1)*A209615(n+1)`
-/

namespace A035170.P17691440048278257223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111949 (n + 1) * A209615 (n + 1)

end

end A035170.P17691440048278257223

namespace A035170

/-- `A111949(n+1)*A209615(n+1)` -/
def P17691440048278257223.Spec : Prop :=
  ∀ n, P17691440048278257223.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P6262683067309050085

`(A033718(n+1)+A028586(n+1))/2`
-/

namespace A035170.P6262683067309050085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033718 (n + 1) + A028586 (n + 1) : ℚ) / 2

end

end A035170.P6262683067309050085

namespace A035170

/-- `(A033718(n+1)+A028586(n+1))/2` -/
def P6262683067309050085.Spec : Prop :=
  ∀ n, P6262683067309050085.a n = (A035170 (n + 1) : ℚ)

end A035170

/-! ## A035170.P15964558723653549862

`A035183(n%(A166466(n+1)/3)+1)`
-/

namespace A035170.P15964558723653549862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)) + 1).toNat

end

end A035170.P15964558723653549862

namespace A035170

/-- `A035183(n%(A166466(n+1)/3)+1)` -/
def P15964558723653549862.Spec : Prop :=
  ∀ n, P15964558723653549862.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P9839000348960449036

`∑{d}[n+1, A019590(#)*A035183((n+1)/#)]`
-/

namespace A035170.P9839000348960449036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A035183 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035170.P9839000348960449036

namespace A035170

/-- `∑{d}[n+1, A019590(#)*A035183((n+1)/#)]` -/
def P9839000348960449036.Spec : Prop :=
  ∀ n, P9839000348960449036.a n = A035170 (n + 1)

end A035170

/-! ## A035170.P11310256004652708393

`lcm(A112865(n)*A143323(n+1), A112865(n))`
-/

namespace A035170.P11310256004652708393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112865 n * A143323 (n + 1)) (A112865 n)

end

end A035170.P11310256004652708393

namespace A035170

/-- `lcm(A112865(n)*A143323(n+1), A112865(n))` -/
def P11310256004652708393.Spec : Prop :=
  ∀ n, (P11310256004652708393.a n : ℤ) = A035170 (n + 1)

end A035170

/-! ## A035170.P6773113872462523887

`lcm(A065357(n), A143323(2*(n+1)))`
-/

namespace A035170.P6773113872462523887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A143323 (2 * (n + 1)))

end

end A035170.P6773113872462523887

namespace A035170

/-- `lcm(A065357(n), A143323(2*(n+1)))` -/
def P6773113872462523887.Spec : Prop :=
  ∀ n, (P6773113872462523887.a n : ℤ) = A035170 (n + 1)

end A035170

/-!
# A035171: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = -19.

The programs for A035171, the canonical program `A035171.P5722442926785609002` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035171 has offset 1).

The definition of A035171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035171.P16423818141155174027

`A028641(n+1)/2`
-/

namespace A035171.P16423818141155174027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028641 (n + 1) : ℚ) / 2

end

end A035171.P16423818141155174027

namespace A035171

/-- `A028641(n+1)/2` -/
def P16423818141155174027.Spec : Prop :=
  ∀ n, P16423818141155174027.a n = (A035171 (n + 1) : ℚ)

end A035171

/-! ## A035171.P9760333277671865190

`A001281(A028641(n+1))`
-/

namespace A035171.P9760333277671865190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028641 (n + 1)).toNat

end

end A035171.P9760333277671865190

namespace A035171

/-- `A001281(A028641(n+1))` -/
def P9760333277671865190.Spec : Prop :=
  ∀ n, P9760333277671865190.a n = A035171 (n + 1)

end A035171

/-! ## A035171.P9850601395024402748

`A171181(A028641(1+n))`
-/

namespace A035171.P9850601395024402748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A028641 (1 + n)).toNat

end

end A035171.P9850601395024402748

namespace A035171

/-- `A171181(A028641(1+n))` -/
def P9850601395024402748.Spec : Prop :=
  ∀ n, P9850601395024402748.a n = A035171 (n + 1)

end A035171

/-! ## A035171.P5722442926785609002

`∑{d}[n+1, A011585(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035171

/-- `∑{d}[n+1, A011585(#)]` -/
def P5722442926785609002.Spec : Prop :=
  ∀ n, P5722442926785609002.a n = A035171 (n + 1)

theorem P5722442926785609002.correct : P5722442926785609002.Spec := by
  intro n
  simp only [A035171, Nat.add_sub_cancel]

end A035171

/-! ## A035171.P17768172474253936037

`A033731(A008574(n+1))/2`
-/

namespace A035171.P17768172474253936037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033731 (A008574 (n + 1)).toNat : ℚ) / 2

end

end A035171.P17768172474253936037

namespace A035171

/-- `A033731(A008574(n+1))/2` -/
def P17768172474253936037.Spec : Prop :=
  ∀ n, P17768172474253936037.a n = (A035171 (n + 1) : ℚ)

end A035171

/-! ## A035171.P4121664891543145105

`A033731(A008586(n+1))/2`
-/

namespace A035171.P4121664891543145105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033731 (A008586 (n + 1)).toNat : ℚ) / 2

end

end A035171.P4121664891543145105

namespace A035171

/-- `A033731(A008586(n+1))/2` -/
def P4121664891543145105.Spec : Prop :=
  ∀ n, P4121664891543145105.a n = (A035171 (n + 1) : ℚ)

end A035171

/-! ## A035171.P9874770779505163277

`A033731(A008598(n+1))/2`
-/

namespace A035171.P9874770779505163277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033731 (A008598 (n + 1)).toNat : ℚ) / 2

end

end A035171.P9874770779505163277

namespace A035171

/-- `A033731(A008598(n+1))/2` -/
def P9874770779505163277.Spec : Prop :=
  ∀ n, P9874770779505163277.a n = (A035171 (n + 1) : ℚ)

end A035171

/-! ## A035171.P12681557900544049718

`A033731(A044102(n+1))/2`
-/

namespace A035171.P12681557900544049718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033731 (A044102 (n + 1)).toNat : ℚ) / 2

end

end A035171.P12681557900544049718

namespace A035171

/-- `A033731(A044102(n+1))/2` -/
def P12681557900544049718.Spec : Prop :=
  ∀ n, P12681557900544049718.a n = (A035171 (n + 1) : ℚ)

end A035171

/-! ## A035171.P6632405175464693784

`A001221(A028641(n+1)!)`
-/

namespace A035171.P6632405175464693784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A028641 (n + 1)).toNat)

end

end A035171.P6632405175464693784

namespace A035171

/-- `A001221(A028641(n+1)!)` -/
def P6632405175464693784.Spec : Prop :=
  ∀ n, P6632405175464693784.a n = A035171 (n + 1)

end A035171

/-! ## A035171.P7581131045976857197

`A033731(A152691(n+1))/2`
-/

namespace A035171.P7581131045976857197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033731 (A152691 (n + 1)).toNat : ℚ) / 2

end

end A035171.P7581131045976857197

namespace A035171

/-- `A033731(A152691(n+1))/2` -/
def P7581131045976857197.Spec : Prop :=
  ∀ n, P7581131045976857197.a n = (A035171 (n + 1) : ℚ)

end A035171

/-!
# A035172: a(n) = Sum_{d|n} Kronecker(-18, d).

The programs for A035172, the canonical program `A035172.P5026987147346886316` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035172 has offset 1).

The definition of A035172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035172.P12154022657715956695

`A002325((n+1)/3^val(n+1, 3))`
-/

namespace A035172.P12154022657715956695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A035172.P12154022657715956695

namespace A035172

/-- `A002325((n+1)/3^val(n+1, 3))` -/
def P12154022657715956695.Spec : Prop :=
  ∀ n, P12154022657715956695.a n = A035172 (n + 1)

end A035172

/-! ## A035172.P5026987147346886316

`A122071(A025480(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035172

/-- `A122071(A025480(n))` -/
def P5026987147346886316.Spec : Prop :=
  ∀ n, P5026987147346886316.a n = A035172 (n + 1)

theorem P5026987147346886316.correct : P5026987147346886316.Spec := by
  intro n
  simp only [A035172, Nat.add_sub_cancel]

end A035172

/-! ## A035172.P16701114507434656664

`A002325(A038502(n+1))`
-/

namespace A035172.P16701114507434656664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A038502 (n + 1)).toNat

end

end A035172.P16701114507434656664

namespace A035172

/-- `A002325(A038502(n+1))` -/
def P16701114507434656664.Spec : Prop :=
  ∀ n, P16701114507434656664.a n = A035172 (n + 1)

end A035172

/-! ## A035172.P396431503239353986

`A002325(A065330(n+1))`
-/

namespace A035172.P396431503239353986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A065330 (n + 1)).toNat

end

end A035172.P396431503239353986

namespace A035172

/-- `A002325(A065330(n+1))` -/
def P396431503239353986.Spec : Prop :=
  ∀ n, P396431503239353986.a n = A035172 (n + 1)

end A035172

/-! ## A035172.P8685318542813400209

`A122071(A101279(n+1))`
-/

namespace A035172.P8685318542813400209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (A101279 (n + 1)).toNat

end

end A035172.P8685318542813400209

namespace A035172

/-- `A122071(A101279(n+1))` -/
def P8685318542813400209.Spec : Prop :=
  ∀ n, P8685318542813400209.a n = A035172 (n + 1)

end A035172

/-! ## A035172.P10030758402217762522

`A002325(n+1)/A051064(n+1)`
-/

namespace A035172.P10030758402217762522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002325 (n + 1) : ℚ) / (A051064 (n + 1) : ℚ)

end

end A035172.P10030758402217762522

namespace A035172

/-- `A002325(n+1)/A051064(n+1)` -/
def P10030758402217762522.Spec : Prop :=
  ∀ n, P10030758402217762522.a n = (A035172 (n + 1) : ℚ)

end A035172

/-! ## A035172.P11349637167810498694

`A002325((n+1)/A065331(n+1))`
-/

namespace A035172.P11349637167810498694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A035172.P11349637167810498694

namespace A035172

/-- `A002325((n+1)/A065331(n+1))` -/
def P11349637167810498694.Spec : Prop :=
  ∀ n, P11349637167810498694.a n = A035172 (n + 1)

end A035172

/-! ## A035172.P11253822510914128823

`A002325(3*(n+1))-A002325(n+1)`
-/

namespace A035172.P11253822510914128823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (3 * (n + 1)) - A002325 (n + 1)

end

end A035172.P11253822510914128823

namespace A035172

/-- `A002325(3*(n+1))-A002325(n+1)` -/
def P11253822510914128823.Spec : Prop :=
  ∀ n, P11253822510914128823.a n = A035172 (n + 1)

end A035172

/-! ## A035172.P3737820597353362157

`A129134(2*(n+1))/A129134(A065331(2*(n+1)))`
-/

namespace A035172.P3737820597353362157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129134 (2 * (n + 1)) : ℚ) / (A129134 (A065331 (2 * (n + 1))).toNat : ℚ)

end

end A035172.P3737820597353362157

namespace A035172

/-- `A129134(2*(n+1))/A129134(A065331(2*(n+1)))` -/
def P3737820597353362157.Spec : Prop :=
  ∀ n, P3737820597353362157.a n = (A035172 (n + 1) : ℚ)

end A035172

/-! ## A035172.P343535128520157672

`A122071(A085062(n))`
-/

namespace A035172.P343535128520157672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (A085062 n).toNat

end

end A035172.P343535128520157672

namespace A035172

/-- `A122071(A085062(n))` -/
def P343535128520157672.Spec : Prop :=
  ∀ n, P343535128520157672.a n = A035172 (n + 1)

end A035172

/-!
# A035173: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -17.

The programs for A035173, there is no canonical definition to state claims against.
-/

/-! ## A035173.P4616365670422549213

`C(∏{e}[n+1, #+1], A094635(lcm(6, (n+1)^3)/6))`
-/

namespace A035173.P4616365670422549213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (A094635 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat).toNat

end

end A035173.P4616365670422549213

/-! ## A035173.P11533053914321303994

`lcm(∏{e}[n+1, #+1], A099443(∑[n]+3*(n-1)*n²))`
-/

namespace A035173.P11533053914321303994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A099443 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 3 * (((n : ℤ) - 1) * (n ^ 2 : ℤ))).toNat)

end

end A035173.P11533053914321303994

/-! ## A035173.P5707961353796577266

`A035204(A072087(n+1))`
-/

namespace A035173.P5707961353796577266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035204 (A072087 (n + 1)).toNat

end

end A035173.P5707961353796577266

/-! ## A035173.P17293248175895408932

`C(A000005(n+1), A331311((n+1)²²))`
-/

namespace A035173.P17293248175895408932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A331311 (((n + 1) ^ 2) ^ 2)).toNat

end

end A035173.P17293248175895408932

/-! ## A035173.P13774834183561754935

`∏{e}[n+1, #+1]%A165103(A115182(n+1))`
-/

namespace A035173.P13774834183561754935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A165103 (A115182 (n + 1)).toNat)

end

end A035173.P13774834183561754935

/-!
# A035174: Ramanujan's tau function (or tau numbers (A000594)) for 2^n.

The programs for A035174, there is no canonical definition to state claims against.
-/

/-! ## A035174.P10953015393382002101

`A000594(2^n)`
-/

namespace A035174.P10953015393382002101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (2 ^ n)

end

end A035174.P10953015393382002101

/-! ## A035174.P153530812864997258

`A278577(A024622(n))`
-/

namespace A035174.P153530812864997258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278577 (A024622 n).toNat

end

end A035174.P153530812864997258

/-! ## A035174.P4662787752662556811

`∑[A308492(2^n)]`
-/

namespace A035174.P4662787752662556811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308492 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035174.P4662787752662556811

/-! ## A035174.P7325314751432296368

`∑{d}[2^n, A308492(#)]`
-/

namespace A035174.P7325314751432296368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308492 d

end

end A035174.P7325314751432296368

/-! ## A035174.P14178274711486408312

`A000594(A000079(n))+2-4/2`
-/

namespace A035174.P14178274711486408312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000594 (A000079 n).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A035174.P14178274711486408312

/-!
# A035175: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -15.

The programs for A035175, the canonical program `A035175.P2871059185806058886` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035175 has offset 1).

The definition of A035175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035175.P6168775005963735368

`A123864(n+1)`
-/

namespace A035175.P6168775005963735368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 (n + 1)

end

end A035175.P6168775005963735368

namespace A035175

/-- `A123864(n+1)` -/
def P6168775005963735368.Spec : Prop :=
  ∀ n, P6168775005963735368.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P8388233408162850787

`abs(A106406(n+1))`
-/

namespace A035175.P8388233408162850787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106406 (n + 1)|

end

end A035175.P8388233408162850787

namespace A035175

/-- `abs(A106406(n+1))` -/
def P8388233408162850787.Spec : Prop :=
  ∀ n, P8388233408162850787.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P2413523771140690456

`gcd(A000038(n), A106406(n+1))`
-/

namespace A035175.P2413523771140690456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A106406 (n + 1))

end

end A035175.P2413523771140690456

namespace A035175

/-- `gcd(A000038(n), A106406(n+1))` -/
def P2413523771140690456.Spec : Prop :=
  ∀ n, (P2413523771140690456.a n : ℤ) = A035175 (n + 1)

end A035175

/-! ## A035175.P10853499974692304373

`lcm(A020985(n), A106406(n+1))`
-/

namespace A035175.P10853499974692304373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A106406 (n + 1))

end

end A035175.P10853499974692304373

namespace A035175

/-- `lcm(A020985(n), A106406(n+1))` -/
def P10853499974692304373.Spec : Prop :=
  ∀ n, (P10853499974692304373.a n : ℤ) = A035175 (n + 1)

end A035175

/-! ## A035175.P13888743969851757284

`∑{d}[A106406(n+1), A000010(#)]`
-/

namespace A035175.P13888743969851757284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A035175.P13888743969851757284

namespace A035175

/-- `∑{d}[A106406(n+1), A000010(#)]` -/
def P13888743969851757284.Spec : Prop :=
  ∀ n, P13888743969851757284.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P17457432128248261747

`A001511(n+1)*A082451(n+1)`
-/

namespace A035175.P17457432128248261747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A082451 (n + 1)

end

end A035175.P17457432128248261747

namespace A035175

/-- `A001511(n+1)*A082451(n+1)` -/
def P17457432128248261747.Spec : Prop :=
  ∀ n, P17457432128248261747.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P4537026759987020470

`∑{d}[n+1, A082451(#)*A209229((n+1)/#)]`
-/

namespace A035175.P4537026759987020470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082451 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035175.P4537026759987020470

namespace A035175

/-- `∑{d}[n+1, A082451(#)*A209229((n+1)/#)]` -/
def P4537026759987020470.Spec : Prop :=
  ∀ n, P4537026759987020470.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P16675504793719584192

`∑{d}[n+1, A036987(#-1)*A082451((n+1)/#)]`
-/

namespace A035175.P16675504793719584192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A082451 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035175.P16675504793719584192

namespace A035175

/-- `∑{d}[n+1, A036987(#-1)*A082451((n+1)/#)]` -/
def P16675504793719584192.Spec : Prop :=
  ∀ n, P16675504793719584192.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P2871059185806058886

`∑{d}[n+1, A316569(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035175

/-- `∑{d}[n+1, A316569(#)]` -/
def P2871059185806058886.Spec : Prop :=
  ∀ n, P2871059185806058886.a n = A035175 (n + 1)

theorem P2871059185806058886.correct : P2871059185806058886.Spec := by
  intro n
  simp only [A035175, Nat.add_sub_cancel]

end A035175

/-! ## A035175.P14602067920083767428

`A260649(4*(n+1))`
-/

namespace A035175.P14602067920083767428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (4 * (n + 1))

end

end A035175.P14602067920083767428

namespace A035175

/-- `A260649(4*(n+1))` -/
def P14602067920083767428.Spec : Prop :=
  ∀ n, P14602067920083767428.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P15097524215906033687

`abs(A140727(4*(n+1)))`
-/

namespace A035175.P15097524215906033687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140727 (4 * (n + 1))|

end

end A035175.P15097524215906033687

namespace A035175

/-- `abs(A140727(4*(n+1)))` -/
def P15097524215906033687.Spec : Prop :=
  ∀ n, P15097524215906033687.a n = A035175 (n + 1)

end A035175

/-! ## A035175.P9388096117286751390

`A122855(4*(n+1))`
-/

namespace A035175.P9388096117286751390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (4 * (n + 1))

end

end A035175.P9388096117286751390

namespace A035175

/-- `A122855(4*(n+1))` -/
def P9388096117286751390.Spec : Prop :=
  ∀ n, P9388096117286751390.a n = A035175 (n + 1)

end A035175

/-!
# A035176: a(n) = Sum_{d|n} Kronecker(-14, d).

The programs for A035176, there is no canonical definition to state claims against.
-/

/-! ## A035176.P1120772003406798366

`A192006(n+1)`
-/

namespace A035176.P1120772003406798366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (n + 1)

end

end A035176.P1120772003406798366

/-! ## A035176.P17109158208104245372

`Δ[A000027(∑[A192006(n)])]`
-/

namespace A035176.P17109158208104245372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035176.P17109158208104245372

/-! ## A035176.P11720450147562242207

`Δ[A020715(∑[A192006(n)])]`
-/

namespace A035176.P11720450147562242207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035176.P11720450147562242207

/-! ## A035176.P8745761653173449282

`Δ[A028310(∑[A192006(n)])]`
-/

namespace A035176.P8745761653173449282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035176.P8745761653173449282

/-! ## A035176.P9801071160571985432

`Δ[A289207(∑[A192006(n)])]`
-/

namespace A035176.P9801071160571985432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035176.P9801071160571985432

/-!
# A035177: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -13.

The programs for A035177, there is no canonical definition to state claims against.
-/

/-! ## A035177.P1326850824517924491

`A328252(n+3)%A356708(A093903(n+1))`
-/

namespace A035177.P1326850824517924491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328252 (n + 3)) (A356708 (A093903 (n + 1)).toNat)

end

end A035177.P1326850824517924491

/-! ## A035177.P17324413428483894829

`and(A006928(A079289(n)), A026238(n+2))`
-/

namespace A035177.P17324413428483894829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006928 (A079289 n).toNat) (A026238 (n + 2))

end

end A035177.P17324413428483894829

/-! ## A035177.P9671869137691747767

`A000346(n)%A060502(A140814(n))`
-/

namespace A035177.P9671869137691747767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000346 n) (A060502 (A140814 n).toNat)

end

end A035177.P9671869137691747767

/-! ## A035177.P12143278254776065421

`and(A048098(A000712(n)), A115716(n))`
-/

namespace A035177.P12143278254776065421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048098 (A000712 n).toNat) (A115716 n)

end

end A035177.P12143278254776065421

/-! ## A035177.P15389209874396608064

`and(A008612(n), A282743(A000285(n)))`
-/

namespace A035177.P15389209874396608064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008612 n) (A282743 (A000285 n).toNat)

end

end A035177.P15389209874396608064

/-!
# A035178: a(n) = Sum_{d|n} Kronecker(-12, d) (= A134667(d)).

The programs for A035178, the canonical program `A035178.P16959896462476049729` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035178 has offset 1).

The definition of A035178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035178.P12873749898605824046

`(-1)^n*A137608(n+1)`
-/

namespace A035178.P12873749898605824046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A137608 (n + 1)

end

end A035178.P12873749898605824046

namespace A035178

/-- `(-1)^n*A137608(n+1)` -/
def P12873749898605824046.Spec : Prop :=
  ∀ n, P12873749898605824046.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P7172984398469317042

`abs(A093829(1+n))`
-/

namespace A035178.P7172984398469317042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093829 (1 + n)|

end

end A035178.P7172984398469317042

namespace A035178

/-- `abs(A093829(1+n))` -/
def P7172984398469317042.Spec : Prop :=
  ∀ n, P7172984398469317042.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P12717569924733854404

`abs(A113447(n+1))`
-/

namespace A035178.P12717569924733854404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113447 (n + 1)|

end

end A035178.P12717569924733854404

namespace A035178

/-- `abs(A113447(n+1))` -/
def P12717569924733854404.Spec : Prop :=
  ∀ n, P12717569924733854404.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P2940864597812126450

`abs(A137608(n+1))`
-/

namespace A035178.P2940864597812126450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137608 (n + 1)|

end

end A035178.P2940864597812126450

namespace A035178

/-- `abs(A137608(n+1))` -/
def P2940864597812126450.Spec : Prop :=
  ∀ n, P2940864597812126450.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P16959896462476049729

`abs(A261884(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035178

/-- `abs(A261884(n+1))` -/
def P16959896462476049729.Spec : Prop :=
  ∀ n, P16959896462476049729.a n = A035178 (n + 1)

theorem P16959896462476049729.correct : P16959896462476049729.Spec := by
  intro n
  simp only [A035178, Nat.add_sub_cancel]

end A035178

/-! ## A035178.P12726073668959050969

`A255648(n+1)/(n%3)!`
-/

namespace A035178.P12726073668959050969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255648 (n + 1) : ℚ) / (Nat.factorial (n % 3) : ℚ)

end

end A035178.P12726073668959050969

namespace A035178

/-- `A255648(n+1)/(n%3)!` -/
def P12726073668959050969.Spec : Prop :=
  ∀ n, P12726073668959050969.a n = (A035178 (n + 1) : ℚ)

end A035178

/-! ## A035178.P2109207945109242880

`A033762(floor(n/(xor(n, n+1)+1)))`
-/

namespace A035178.P2109207945109242880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A035178.P2109207945109242880

namespace A035178

/-- `A033762(floor(n/(xor(n, n+1)+1)))` -/
def P2109207945109242880.Spec : Prop :=
  ∀ n, P2109207945109242880.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P8344491244729930416

`A002324((n+1)/2^val(n+1, 2))`
-/

namespace A035178.P8344491244729930416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A035178.P8344491244729930416

namespace A035178

/-- `A002324((n+1)/2^val(n+1, 2))` -/
def P8344491244729930416.Spec : Prop :=
  ∀ n, P8344491244729930416.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P92715446061590022

`A033762(A025480(n))`
-/

namespace A035178.P92715446061590022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A025480 n).toNat

end

end A035178.P92715446061590022

namespace A035178

/-- `A033762(A025480(n))` -/
def P92715446061590022.Spec : Prop :=
  ∀ n, P92715446061590022.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P12998350655006900912

`A002324(A000265(n+1))`
-/

namespace A035178.P12998350655006900912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A000265 (n + 1)).toNat

end

end A035178.P12998350655006900912

namespace A035178

/-- `A002324(A000265(n+1))` -/
def P12998350655006900912.Spec : Prop :=
  ∀ n, P12998350655006900912.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P1447550015142838676

`A002324(A065330(n+1))`
-/

namespace A035178.P1447550015142838676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A065330 (n + 1)).toNat

end

end A035178.P1447550015142838676

namespace A035178

/-- `A002324(A065330(n+1))` -/
def P1447550015142838676.Spec : Prop :=
  ∀ n, P1447550015142838676.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P16960133281127843099

`A033762(A101279(n+1))`
-/

namespace A035178.P16960133281127843099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A101279 (n + 1)).toNat

end

end A035178.P16960133281127843099

namespace A035178

/-- `A033762(A101279(n+1))` -/
def P16960133281127843099.Spec : Prop :=
  ∀ n, P16960133281127843099.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P1167565917498879277

`A113448(A038502(n+1))`
-/

namespace A035178.P1167565917498879277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113448 (A038502 (n + 1)).toNat

end

end A035178.P1167565917498879277

namespace A035178

/-- `A113448(A038502(n+1))` -/
def P1167565917498879277.Spec : Prop :=
  ∀ n, P1167565917498879277.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P2011722109728111265

`A113447(A065883(n+1))`
-/

namespace A035178.P2011722109728111265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A065883 (n + 1)).toNat

end

end A035178.P2011722109728111265

namespace A035178

/-- `A113447(A065883(n+1))` -/
def P2011722109728111265.Spec : Prop :=
  ∀ n, P2011722109728111265.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P9320024996505738158

`A002324(A214682(n+1))`
-/

namespace A035178.P9320024996505738158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A214682 (n + 1)).toNat

end

end A035178.P9320024996505738158

namespace A035178

/-- `A002324(A214682(n+1))` -/
def P9320024996505738158.Spec : Prop :=
  ∀ n, P9320024996505738158.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P11302541746769471236

`A113447(A000265(2*(n+1)))`
-/

namespace A035178.P11302541746769471236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A000265 (2 * (n + 1))).toNat

end

end A035178.P11302541746769471236

namespace A035178

/-- `A113447(A000265(2*(n+1)))` -/
def P11302541746769471236.Spec : Prop :=
  ∀ n, P11302541746769471236.a n = A035178 (n + 1)

end A035178

/-! ## A035178.P14878607290322904081

`A255648(n+1)/A177702(n)`
-/

namespace A035178.P14878607290322904081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255648 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A035178.P14878607290322904081

namespace A035178

/-- `A255648(n+1)/A177702(n)` -/
def P14878607290322904081.Spec : Prop :=
  ∀ n, P14878607290322904081.a n = (A035178 (n + 1) : ℚ)

end A035178

/-! ## A035178.P15328713564941209639

`gcd(A000038(n), A093829(n+1))`
-/

namespace A035178.P15328713564941209639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A093829 (n + 1))

end

end A035178.P15328713564941209639

namespace A035178

/-- `gcd(A000038(n), A093829(n+1))` -/
def P15328713564941209639.Spec : Prop :=
  ∀ n, (P15328713564941209639.a n : ℤ) = A035178 (n + 1)

end A035178

/-! ## A035178.P3343072410159347078

`gcd(A099894(n), A113447(n+1))`
-/

namespace A035178.P3343072410159347078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099894 n) (A113447 (n + 1))

end

end A035178.P3343072410159347078

namespace A035178

/-- `gcd(A099894(n), A113447(n+1))` -/
def P3343072410159347078.Spec : Prop :=
  ∀ n, (P3343072410159347078.a n : ℤ) = A035178 (n + 1)

end A035178

/-! ## A035178.P10597842894283294565

`gcd(A127802(n), A137608(n+1))`
-/

namespace A035178.P10597842894283294565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127802 n) (A137608 (n + 1))

end

end A035178.P10597842894283294565

namespace A035178

/-- `gcd(A127802(n), A137608(n+1))` -/
def P10597842894283294565.Spec : Prop :=
  ∀ n, (P10597842894283294565.a n : ℤ) = A035178 (n + 1)

end A035178

/-!
# A035179: a(n) = Sum_{d|n} Kronecker(-11, d).

The programs for A035179, the canonical program `A035179.P2839605348435704659` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035179 has offset 1).

The definition of A035179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035179.P2839605348435704659

`∑{d}[n+1, A011582(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035179

/-- `∑{d}[n+1, A011582(#)]` -/
def P2839605348435704659.Spec : Prop :=
  ∀ n, P2839605348435704659.a n = A035179 (n + 1)

theorem P2839605348435704659.correct : P2839605348435704659.Spec := by
  intro n
  simp only [A035179, Nat.add_sub_cancel]

end A035179

/-! ## A035179.P15009852526516366428

`A035146(n+1)*A035263(n+1)`
-/

namespace A035179.P15009852526516366428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035146 (n + 1) * A035263 (n + 1)

end

end A035179.P15009852526516366428

namespace A035179

/-- `A035146(n+1)*A035263(n+1)` -/
def P15009852526516366428.Spec : Prop :=
  ∀ n, P15009852526516366428.a n = A035179 (n + 1)

end A035179

/-! ## A035179.P17376523735347090331

`lcm(A029883(n+1), A035146(n+1))`
-/

namespace A035179.P17376523735347090331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (n + 1)) (A035146 (n + 1))

end

end A035179.P17376523735347090331

namespace A035179

/-- `lcm(A029883(n+1), A035146(n+1))` -/
def P17376523735347090331.Spec : Prop :=
  ∀ n, (P17376523735347090331.a n : ℤ) = A035179 (n + 1)

end A035179

/-! ## A035179.P2485766954116024812

`∑{d}[n+1, A035146(#)*A154269((n+1)/#)]`
-/

namespace A035179.P2485766954116024812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035146 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035179.P2485766954116024812

namespace A035179

/-- `∑{d}[n+1, A035146(#)*A154269((n+1)/#)]` -/
def P2485766954116024812.Spec : Prop :=
  ∀ n, P2485766954116024812.a n = A035179 (n + 1)

end A035179

/-! ## A035179.P14704422528733317315

`∑{d}[n+1, A065103(#)*A189922((n+1)/#)]`
-/

namespace A035179.P14704422528733317315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065103 d * A189922 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035179.P14704422528733317315

namespace A035179

/-- `∑{d}[n+1, A065103(#)*A189922((n+1)/#)]` -/
def P14704422528733317315.Spec : Prop :=
  ∀ n, P14704422528733317315.a n = A035179 (n + 1)

end A035179

/-! ## A035179.P12122901317496856637

`A028609(n+1)/2`
-/

namespace A035179.P12122901317496856637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028609 (n + 1) : ℚ) / 2

end

end A035179.P12122901317496856637

namespace A035179

/-- `A028609(n+1)/2` -/
def P12122901317496856637.Spec : Prop :=
  ∀ n, P12122901317496856637.a n = (A035179 (n + 1) : ℚ)

end A035179

/-! ## A035179.P1459623181672735799

`Δ[∑[A028609(n)]/2]`
-/

namespace A035179.P1459623181672735799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035179.P1459623181672735799

namespace A035179

/-- `Δ[∑[A028609(n)]/2]` -/
def P1459623181672735799.Spec : Prop :=
  ∀ n, P1459623181672735799.a n = (A035179 (n + 1) : ℚ)

end A035179

/-! ## A035179.P4717404613719884429

`A001281(A028609(n+1))`
-/

namespace A035179.P4717404613719884429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028609 (n + 1)).toNat

end

end A035179.P4717404613719884429

namespace A035179

/-- `A001281(A028609(n+1))` -/
def P4717404613719884429.Spec : Prop :=
  ∀ n, P4717404613719884429.a n = A035179 (n + 1)

end A035179

/-! ## A035179.P8566493237189533932

`A028953(A008574(n+1))/2`
-/

namespace A035179.P8566493237189533932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028953 (A008574 (n + 1)).toNat : ℚ) / 2

end

end A035179.P8566493237189533932

namespace A035179

/-- `A028953(A008574(n+1))/2` -/
def P8566493237189533932.Spec : Prop :=
  ∀ n, P8566493237189533932.a n = (A035179 (n + 1) : ℚ)

end A035179

/-! ## A035179.P4856787267098330001

`A028953(A008586(n+1))/2`
-/

namespace A035179.P4856787267098330001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028953 (A008586 (n + 1)).toNat : ℚ) / 2

end

end A035179.P4856787267098330001

namespace A035179

/-- `A028953(A008586(n+1))/2` -/
def P4856787267098330001.Spec : Prop :=
  ∀ n, P4856787267098330001.a n = (A035179 (n + 1) : ℚ)

end A035179

/-! ## A035179.P7390289299990493321

`A028953(A008598(n+1))/2`
-/

namespace A035179.P7390289299990493321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028953 (A008598 (n + 1)).toNat : ℚ) / 2

end

end A035179.P7390289299990493321

namespace A035179

/-- `A028953(A008598(n+1))/2` -/
def P7390289299990493321.Spec : Prop :=
  ∀ n, P7390289299990493321.a n = (A035179 (n + 1) : ℚ)

end A035179

/-! ## A035179.P3421502944254899227

`A028953(A152691(n+1))/2`
-/

namespace A035179.P3421502944254899227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028953 (A152691 (n + 1)).toNat : ℚ) / 2

end

end A035179.P3421502944254899227

namespace A035179

/-- `A028953(A152691(n+1))/2` -/
def P3421502944254899227.Spec : Prop :=
  ∀ n, P3421502944254899227.a n = (A035179 (n + 1) : ℚ)

end A035179

/-!
# A035180: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -10.

The programs for A035180, the canonical program `A035180.P4525785097877172751` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035180 has offset 1).

The definition of A035180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035180.P14146426336647335063

`abs(A163819(1+n))`
-/

namespace A035180.P14146426336647335063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163819 (1 + n)|

end

end A035180.P14146426336647335063

namespace A035180

/-- `abs(A163819(1+n))` -/
def P14146426336647335063.Spec : Prop :=
  ∀ n, P14146426336647335063.a n = A035180 (n + 1)

end A035180

/-! ## A035180.P4525785097877172751

`∑{d}[n+1, A388072(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035180

/-- `∑{d}[n+1, A388072(#)]` -/
def P4525785097877172751.Spec : Prop :=
  ∀ n, P4525785097877172751.a n = A035180 (n + 1)

theorem P4525785097877172751.correct : P4525785097877172751.Spec := by
  intro n
  simp only [A035180, Nat.add_sub_cancel]

end A035180

/-! ## A035180.P7520609786497425267

`gcd(A000038(n), A163819(n+1))`
-/

namespace A035180.P7520609786497425267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A163819 (n + 1))

end

end A035180.P7520609786497425267

namespace A035180

/-- `gcd(A000038(n), A163819(n+1))` -/
def P7520609786497425267.Spec : Prop :=
  ∀ n, (P7520609786497425267.a n : ℤ) = A035180 (n + 1)

end A035180

/-! ## A035180.P10062920823615789377

`lcm(A014709(n), A163819(n+1))`
-/

namespace A035180.P10062920823615789377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A163819 (n + 1))

end

end A035180.P10062920823615789377

namespace A035180

/-- `lcm(A014709(n), A163819(n+1))` -/
def P10062920823615789377.Spec : Prop :=
  ∀ n, (P10062920823615789377.a n : ℤ) = A035180 (n + 1)

end A035180

/-! ## A035180.P8900572379546716239

`gcd(A034947(n+1)*A163819(n+1), A163819(n+1)²)`
-/

namespace A035180.P8900572379546716239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034947 (n + 1) * A163819 (n + 1)) (A163819 (n + 1) ^ 2)

end

end A035180.P8900572379546716239

namespace A035180

/-- `gcd(A034947(n+1)*A163819(n+1), A163819(n+1)²)` -/
def P8900572379546716239.Spec : Prop :=
  ∀ n, (P8900572379546716239.a n : ℤ) = A035180 (n + 1)

end A035180

/-! ## A035180.P6895539409853803794

`dr(A163819(2*(n+1)))`
-/

namespace A035180.P6895539409853803794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A163819 (2 * (n + 1)))

end

end A035180.P6895539409853803794

namespace A035180

/-- `dr(A163819(2*(n+1)))` -/
def P6895539409853803794.Spec : Prop :=
  ∀ n, (P6895539409853803794.a n : ℤ) = A035180 (n + 1)

end A035180

/-! ## A035180.P8130053812024384546

`gcd(A061006(2*(n+1)), A163819(2*(n+1)))`
-/

namespace A035180.P8130053812024384546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061006 (2 * (n + 1))) (A163819 (2 * (n + 1)))

end

end A035180.P8130053812024384546

namespace A035180

/-- `gcd(A061006(2*(n+1)), A163819(2*(n+1)))` -/
def P8130053812024384546.Spec : Prop :=
  ∀ n, (P8130053812024384546.a n : ℤ) = A035180 (n + 1)

end A035180

/-! ## A035180.P6888752448902317732

`A142150(A317641(2*(n+1))+A317641(n+1))`
-/

namespace A035180.P6888752448902317732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A317641 (2 * (n + 1)) + A317641 (n + 1)).toNat

end

end A035180.P6888752448902317732

namespace A035180

/-- `A142150(A317641(2*(n+1))+A317641(n+1))` -/
def P6888752448902317732.Spec : Prop :=
  ∀ n, P6888752448902317732.a n = A035180 (n + 1)

end A035180

/-! ## A035180.P6336191262283230848

`abs((A317641(n+1)-A317641(A188167(n+1)))/2)`
-/

namespace A035180.P6336191262283230848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A317641 (n + 1) - A317641 (A188167 (n + 1)).toNat : ℚ) / 2|

end

end A035180.P6336191262283230848

namespace A035180

/-- `abs((A317641(n+1)-A317641(A188167(n+1)))/2)` -/
def P6336191262283230848.Spec : Prop :=
  ∀ n, P6336191262283230848.a n = (A035180 (n + 1) : ℚ)

end A035180

/-!
# A035181: a(n) = Sum_{d|n} Kronecker(-9, d).

The programs for A035181, the canonical program `A035181.P2688111840695593634` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035181 has offset 1).

The definition of A035181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035181.P39245884170184008

`(val(n+1, 2)+1)*A035154(n+1)`
-/

namespace A035181.P39245884170184008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A035154 (n + 1)

end

end A035181.P39245884170184008

namespace A035181

/-- `(val(n+1, 2)+1)*A035154(n+1)` -/
def P39245884170184008.Spec : Prop :=
  ∀ n, P39245884170184008.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P9410876764337214685

`A035184(A038502(n+1))`
-/

namespace A035181.P9410876764337214685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (A038502 (n + 1)).toNat

end

end A035181.P9410876764337214685

namespace A035181

/-- `A035184(A038502(n+1))` -/
def P9410876764337214685.Spec : Prop :=
  ∀ n, P9410876764337214685.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P15559690940697167130

`A001511(n+1)*A035154(n+1)`
-/

namespace A035181.P15559690940697167130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A035154 (n + 1)

end

end A035181.P15559690940697167130

namespace A035181

/-- `A001511(n+1)*A035154(n+1)` -/
def P15559690940697167130.Spec : Prop :=
  ∀ n, P15559690940697167130.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P3134873117137513712

`A113446(n+1)*A164677(n+1)`
-/

namespace A035181.P3134873117137513712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1) * A164677 (n + 1)

end

end A035181.P3134873117137513712

namespace A035181

/-- `A113446(n+1)*A164677(n+1)` -/
def P3134873117137513712.Spec : Prop :=
  ∀ n, P3134873117137513712.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P3435583030082992084

`abs(A001511(n+1)*A132004(n+1))`
-/

namespace A035181.P3435583030082992084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001511 (n + 1) * A132004 (n + 1)|

end

end A035181.P3435583030082992084

namespace A035181

/-- `abs(A001511(n+1)*A132004(n+1))` -/
def P3435583030082992084.Spec : Prop :=
  ∀ n, P3435583030082992084.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P8439878600314091623

`A001222(xor(n, n+1)+1)*A035154(n+1)`
-/

namespace A035181.P8439878600314091623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor n (n + 1) + 1) * A035154 (n + 1)

end

end A035181.P8439878600314091623

namespace A035181

/-- `A001222(xor(n, n+1)+1)*A035154(n+1)` -/
def P8439878600314091623.Spec : Prop :=
  ∀ n, P8439878600314091623.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P2688111840695593634

`∑{d}[n+1, A035184(#)*A154272((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035181

/-- `∑{d}[n+1, A035184(#)*A154272((n+1)/#)]` -/
def P2688111840695593634.Spec : Prop :=
  ∀ n, P2688111840695593634.a n = A035181 (n + 1)

theorem P2688111840695593634.correct : P2688111840695593634.Spec := by
  intro n
  simp only [A035181, Nat.add_sub_cancel]

end A035181

/-! ## A035181.P12655156585787109765

`∑{d}[n+1, A091379(#)*A145377((n+1)/#)]`
-/

namespace A035181.P12655156585787109765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091379 d * A145377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035181.P12655156585787109765

namespace A035181

/-- `∑{d}[n+1, A091379(#)*A145377((n+1)/#)]` -/
def P12655156585787109765.Spec : Prop :=
  ∀ n, P12655156585787109765.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P16441897637769744121

`∑{d}[n+1, A035154(#)*A209229((n+1)/#)]`
-/

namespace A035181.P16441897637769744121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035154 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035181.P16441897637769744121

namespace A035181

/-- `∑{d}[n+1, A035154(#)*A209229((n+1)/#)]` -/
def P16441897637769744121.Spec : Prop :=
  ∀ n, P16441897637769744121.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P11545644221698624900

`∑{d}[n+1, A035154(#)*A036987((n+1)/#-1)]`
-/

namespace A035181.P11545644221698624900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035154 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035181.P11545644221698624900

namespace A035181

/-- `∑{d}[n+1, A035154(#)*A036987((n+1)/#-1)]` -/
def P11545644221698624900.Spec : Prop :=
  ∀ n, P11545644221698624900.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P1428420480367976878

`∑{d}[n+1, A034947(#)*A177702((n+1)/#-1)]`
-/

namespace A035181.P1428420480367976878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A177702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035181.P1428420480367976878

namespace A035181

/-- `∑{d}[n+1, A034947(#)*A177702((n+1)/#-1)]` -/
def P1428420480367976878.Spec : Prop :=
  ∀ n, P1428420480367976878.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P4428381778733184214

`∑{d}[n+1, A091379(#)*A195198((n+1)/#)]`
-/

namespace A035181.P4428381778733184214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091379 d * A195198 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035181.P4428381778733184214

namespace A035181

/-- `∑{d}[n+1, A091379(#)*A195198((n+1)/#)]` -/
def P4428381778733184214.Spec : Prop :=
  ∀ n, P4428381778733184214.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P7428200586034702856

`(1-A001511(2*(n+1)))*A132004(2*(n+1))`
-/

namespace A035181.P7428200586034702856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001511 (2 * (n + 1))) * A132004 (2 * (n + 1))

end

end A035181.P7428200586034702856

namespace A035181

/-- `(1-A001511(2*(n+1)))*A132004(2*(n+1))` -/
def P7428200586034702856.Spec : Prop :=
  ∀ n, P7428200586034702856.a n = A035181 (n + 1)

end A035181

/-! ## A035181.P3673874901889765157

`A035184(2*A322015(n)+n+1)`
-/

namespace A035181.P3673874901889765157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (2 * A322015 n + (n + 1 : ℤ)).toNat

end

end A035181.P3673874901889765157

namespace A035181

/-- `A035184(2*A322015(n)+n+1)` -/
def P3673874901889765157.Spec : Prop :=
  ∀ n, P3673874901889765157.a n = A035181 (n + 1)

end A035181

/-!
# A035182: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s) + Kronecker(m,p)*p^(-2s))^(-1) for m = -7.

The programs for A035182, the canonical program `A035182.P215545328454174601` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035182 has offset 1).

The definition of A035182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035182.P17520660462534481478

`(val(n+1, 2)+1)*A035162(n+1)`
-/

namespace A035182.P17520660462534481478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A035162 (n + 1)

end

end A035182.P17520660462534481478

namespace A035182

/-- `(val(n+1, 2)+1)*A035162(n+1)` -/
def P17520660462534481478.Spec : Prop :=
  ∀ n, P17520660462534481478.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P215545328454174601

`A001511(n+1)*A035162(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A035182

/-- `A001511(n+1)*A035162(n+1)` -/
def P215545328454174601.Spec : Prop :=
  ∀ n, P215545328454174601.a n = A035182 (n + 1)

theorem P215545328454174601.correct : P215545328454174601.Spec := by
  intro n
  simp only [A035182, Nat.add_sub_cancel]

end A035182

/-! ## A035182.P9514188772221389784

`(A007814(n+1)+1)*A035162(n+1)`
-/

namespace A035182.P9514188772221389784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A035162 (n + 1)

end

end A035182.P9514188772221389784

namespace A035182

/-- `(A007814(n+1)+1)*A035162(n+1)` -/
def P9514188772221389784.Spec : Prop :=
  ∀ n, P9514188772221389784.a n = A035182 (n + 1)

theorem P9514188772221389784.correct : P9514188772221389784.Spec := by
  intro n
  simp only [A035182, Nat.add_sub_cancel, A035182.P9514188772221389784.a, A035182.P215545328454174601.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A035162, A035162.P985168465731373250.a, A006519, A006519.P10435570611646570274.a, A051000, A051000.P10741678327637826520.f1, A051000.P10741678327637826520.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035182

/-! ## A035182.P749815059976699739

`∑{d}[n+1, A046970(#)*A105634((n+1)/#)]`
-/

namespace A035182.P749815059976699739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A105634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035182.P749815059976699739

namespace A035182

/-- `∑{d}[n+1, A046970(#)*A105634((n+1)/#)]` -/
def P749815059976699739.Spec : Prop :=
  ∀ n, P749815059976699739.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P11762783642257027911

`∑{d}[n+1, A035162(#)*A209229((n+1)/#)]`
-/

namespace A035182.P11762783642257027911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035162 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035182.P11762783642257027911

namespace A035182

/-- `∑{d}[n+1, A035162(#)*A209229((n+1)/#)]` -/
def P11762783642257027911.Spec : Prop :=
  ∀ n, P11762783642257027911.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P5554410024635622952

`∑{d}[n+1, A035162(#)*A036987((n+1)/#-1)]`
-/

namespace A035182.P5554410024635622952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035162 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035182.P5554410024635622952

namespace A035182

/-- `∑{d}[n+1, A035162(#)*A036987((n+1)/#-1)]` -/
def P5554410024635622952.Spec : Prop :=
  ∀ n, P5554410024635622952.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P17033743816672366851

`A035162(n+1)+A110399(n+1)-A121454(n+1)`
-/

namespace A035182.P17033743816672366851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1) + (A110399 (n + 1) - A121454 (n + 1))

end

end A035182.P17033743816672366851

namespace A035182

/-- `A035162(n+1)+A110399(n+1)-A121454(n+1)` -/
def P17033743816672366851.Spec : Prop :=
  ∀ n, P17033743816672366851.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P6741204863272824093

`A002652(n+1)/2`
-/

namespace A035182.P6741204863272824093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 (n + 1) : ℚ) / 2

end

end A035182.P6741204863272824093

namespace A035182

/-- `A002652(n+1)/2` -/
def P6741204863272824093.Spec : Prop :=
  ∀ n, P6741204863272824093.a n = (A035182 (n + 1) : ℚ)

end A035182

/-! ## A035182.P16435747189948859343

`∑{d}[n+1, A175629(#)]`
-/

namespace A035182.P16435747189948859343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175629 d

end

end A035182.P16435747189948859343

namespace A035182

/-- `∑{d}[n+1, A175629(#)]` -/
def P16435747189948859343.Spec : Prop :=
  ∀ n, P16435747189948859343.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P2124637232634421721

`Δ[∑[A002652(n)]/2]`
-/

namespace A035182.P2124637232634421721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035182.P2124637232634421721

namespace A035182

/-- `Δ[∑[A002652(n)]/2]` -/
def P2124637232634421721.Spec : Prop :=
  ∀ n, P2124637232634421721.a n = (A035182 (n + 1) : ℚ)

end A035182

/-! ## A035182.P7164651604421716556

`A001281(A002652(n+1))`
-/

namespace A035182.P7164651604421716556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002652 (n + 1)).toNat

end

end A035182.P7164651604421716556

namespace A035182

/-- `A001281(A002652(n+1))` -/
def P7164651604421716556.Spec : Prop :=
  ∀ n, P7164651604421716556.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P14345628069671005293

`A110399(2*(n+1))+A035162(n+1)`
-/

namespace A035182.P14345628069671005293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (2 * (n + 1)) + A035162 (n + 1)

end

end A035182.P14345628069671005293

namespace A035182

/-- `A110399(2*(n+1))+A035162(n+1)` -/
def P14345628069671005293.Spec : Prop :=
  ∀ n, P14345628069671005293.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P6728568989655653777

`A110399(2*(n+1))-A121454(2*(n+1))`
-/

namespace A035182.P6728568989655653777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (2 * (n + 1)) - A121454 (2 * (n + 1))

end

end A035182.P6728568989655653777

namespace A035182

/-- `A110399(2*(n+1))-A121454(2*(n+1))` -/
def P6728568989655653777.Spec : Prop :=
  ∀ n, P6728568989655653777.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P8732425901728676198

`A110399(A028234(2*(n+1)))+A110399(2*(n+1))`
-/

namespace A035182.P8732425901728676198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (A028234 (2 * (n + 1))).toNat + A110399 (2 * (n + 1))

end

end A035182.P8732425901728676198

namespace A035182

/-- `A110399(A028234(2*(n+1)))+A110399(2*(n+1))` -/
def P8732425901728676198.Spec : Prop :=
  ∀ n, P8732425901728676198.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P320145795696571509

`A110399(A195161(n+1))`
-/

namespace A035182.P320145795696571509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (A195161 (n + 1)).toNat

end

end A035182.P320145795696571509

namespace A035182

/-- `A110399(A195161(n+1))` -/
def P320145795696571509.Spec : Prop :=
  ∀ n, P320145795696571509.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P8578407954651751422

`A110399(4*(n+1))`
-/

namespace A035182.P8578407954651751422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (4 * (n + 1))

end

end A035182.P8578407954651751422

namespace A035182

/-- `A110399(4*(n+1))` -/
def P8578407954651751422.Spec : Prop :=
  ∀ n, P8578407954651751422.a n = A035182 (n + 1)

end A035182

/-! ## A035182.P17069318833080977379

`A033719(A008574(n+1))/2`
-/

namespace A035182.P17069318833080977379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033719 (A008574 (n + 1)).toNat : ℚ) / 2

end

end A035182.P17069318833080977379

namespace A035182

/-- `A033719(A008574(n+1))/2` -/
def P17069318833080977379.Spec : Prop :=
  ∀ n, P17069318833080977379.a n = (A035182 (n + 1) : ℚ)

end A035182

/-! ## A035182.P15325259400663611624

`A033719(A008586(n+1))/2`
-/

namespace A035182.P15325259400663611624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033719 (A008586 (n + 1)).toNat : ℚ) / 2

end

end A035182.P15325259400663611624

namespace A035182

/-- `A033719(A008586(n+1))/2` -/
def P15325259400663611624.Spec : Prop :=
  ∀ n, P15325259400663611624.a n = (A035182 (n + 1) : ℚ)

end A035182

/-! ## A035182.P1366624123497467242

`A205975(n+1)/(2*A324969(n+2))`
-/

namespace A035182.P1366624123497467242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205975 (n + 1) : ℚ) / (2 * A324969 (n + 2) : ℚ)

end

end A035182.P1366624123497467242

namespace A035182

/-- `A205975(n+1)/(2*A324969(n+2))` -/
def P1366624123497467242.Spec : Prop :=
  ∀ n, P1366624123497467242.a n = (A035182 (n + 1) : ℚ)

end A035182

/-! ## A035182.P9616422269290002702

`A033719(A135628(n+1))/2`
-/

namespace A035182.P9616422269290002702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033719 (A135628 (n + 1)).toNat : ℚ) / 2

end

end A035182.P9616422269290002702

namespace A035182

/-- `A033719(A135628(n+1))/2` -/
def P9616422269290002702.Spec : Prop :=
  ∀ n, P9616422269290002702.a n = (A035182 (n + 1) : ℚ)

end A035182

/-!
# A035183: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = -5.

The programs for A035183, the canonical program `A035183.P7352895301479017186` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035183 has offset 1).

The definition of A035183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035183.P7352895301479017186

`A035170(n+1)*A035263(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035183

/-- `A035170(n+1)*A035263(n+1)` -/
def P7352895301479017186.Spec : Prop :=
  ∀ n, P7352895301479017186.a n = A035183 (n + 1)

theorem P7352895301479017186.correct : P7352895301479017186.Spec := by
  intro n
  simp only [A035183, Nat.add_sub_cancel]

end A035183

/-! ## A035183.P14882922776930361929

`A035145(n+1)*A051064(n+1)`
-/

namespace A035183.P14882922776930361929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035145 (n + 1) * A051064 (n + 1)

end

end A035183.P14882922776930361929

namespace A035183

/-- `A035145(n+1)*A051064(n+1)` -/
def P14882922776930361929.Spec : Prop :=
  ∀ n, P14882922776930361929.a n = A035183 (n + 1)

end A035183

/-! ## A035183.P13880013772428611386

`lcm(A029883(n+1), A035170(n+1))`
-/

namespace A035183.P13880013772428611386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (n + 1)) (A035170 (n + 1))

end

end A035183.P13880013772428611386

namespace A035183

/-- `lcm(A029883(n+1), A035170(n+1))` -/
def P13880013772428611386.Spec : Prop :=
  ∀ n, (P13880013772428611386.a n : ℤ) = A035183 (n + 1)

end A035183

/-! ## A035183.P16536197291929517865

`lcm(A035145(n+1), A111949(n+1))`
-/

namespace A035183.P16536197291929517865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035145 (n + 1)) (A111949 (n + 1))

end

end A035183.P16536197291929517865

namespace A035183

/-- `lcm(A035145(n+1), A111949(n+1))` -/
def P16536197291929517865.Spec : Prop :=
  ∀ n, (P16536197291929517865.a n : ℤ) = A035183 (n + 1)

end A035183

/-! ## A035183.P1938320514625219075

`∑{d}[n+1, A035170(#)*A154269((n+1)/#)]`
-/

namespace A035183.P1938320514625219075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035170 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035183.P1938320514625219075

namespace A035183

/-- `∑{d}[n+1, A035170(#)*A154269((n+1)/#)]` -/
def P1938320514625219075.Spec : Prop :=
  ∀ n, P1938320514625219075.a n = A035183 (n + 1)

end A035183

/-! ## A035183.P51894003909812602

`∑{d}[n+1, A124233(#)*A154269((n+1)/#)]`
-/

namespace A035183.P51894003909812602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124233 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035183.P51894003909812602

namespace A035183

/-- `∑{d}[n+1, A124233(#)*A154269((n+1)/#)]` -/
def P51894003909812602.Spec : Prop :=
  ∀ n, P51894003909812602.a n = A035183 (n + 1)

end A035183

/-! ## A035183.P16039389905406018520

`∑{d}[n+1, A226162(#)]`
-/

namespace A035183.P16039389905406018520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A226162 d

end

end A035183.P16039389905406018520

namespace A035183

/-- `∑{d}[n+1, A226162(#)]` -/
def P16039389905406018520.Spec : Prop :=
  ∀ n, P16039389905406018520.a n = A035183 (n + 1)

end A035183

/-! ## A035183.P3913755561485365634

`lcm(A089045(n+1), A143323(n+1))`
-/

namespace A035183.P3913755561485365634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089045 (n + 1)) (A143323 (n + 1))

end

end A035183.P3913755561485365634

namespace A035183

/-- `lcm(A089045(n+1), A143323(n+1))` -/
def P3913755561485365634.Spec : Prop :=
  ∀ n, (P3913755561485365634.a n : ℤ) = A035183 (n + 1)

end A035183

/-! ## A035183.P3395502563401941623

`lcm(A089045(2*n+1)-A089045(2*(n+1)), A111949(2*(n+1)))`
-/

namespace A035183.P3395502563401941623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089045 (2 * n + 1) - A089045 (2 * (n + 1))) (A111949 (2 * (n + 1)))

end

end A035183.P3395502563401941623

namespace A035183

/-- `lcm(A089045(2*n+1)-A089045(2*(n+1)), A111949(2*(n+1)))` -/
def P3395502563401941623.Spec : Prop :=
  ∀ n, (P3395502563401941623.a n : ℤ) = A035183 (n + 1)

end A035183

/-!
# A035184: a(n) = Sum_{d|n} Kronecker(-1, d).

The programs for A035184, the canonical program `A035184.P3251018831054104960` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035184 has offset 1).

The definition of A035184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035184.P15233350344185639449

`∑{d}[n+1, A034947(#)]`
-/

namespace A035184.P15233350344185639449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d

end

end A035184.P15233350344185639449

namespace A035184

/-- `∑{d}[n+1, A034947(#)]` -/
def P15233350344185639449.Spec : Prop :=
  ∀ n, P15233350344185639449.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P13844307884788874803

`∑{d}[n+1, A112347(#)]`
-/

namespace A035184.P13844307884788874803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112347 d

end

end A035184.P13844307884788874803

namespace A035184

/-- `∑{d}[n+1, A112347(#)]` -/
def P13844307884788874803.Spec : Prop :=
  ∀ n, P13844307884788874803.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P3251018831054104960

`(val(n+1, 2)+1)*A002654(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035184

/-- `(val(n+1, 2)+1)*A002654(n+1)` -/
def P3251018831054104960.Spec : Prop :=
  ∀ n, P3251018831054104960.a n = A035184 (n + 1)

theorem P3251018831054104960.correct : P3251018831054104960.Spec := by
  intro n
  simp only [A035184, Nat.add_sub_cancel]

end A035184

/-! ## A035184.P5610484068692917159

`A014577(n)*A035181(n+1)`
-/

namespace A035184.P5610484068692917159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A035181 (n + 1)

end

end A035184.P5610484068692917159

namespace A035184

/-- `A014577(n)*A035181(n+1)` -/
def P5610484068692917159.Spec : Prop :=
  ∀ n, P5610484068692917159.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P12593198405442518267

`lcm(A035181(n+1), A053694(n))`
-/

namespace A035184.P12593198405442518267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035181 (n + 1)) (A053694 n)

end

end A035184.P12593198405442518267

namespace A035184

/-- `lcm(A035181(n+1), A053694(n))` -/
def P12593198405442518267.Spec : Prop :=
  ∀ n, (P12593198405442518267.a n : ℤ) = A035184 (n + 1)

end A035184

/-! ## A035184.P8022891002987774914

`Δ[A005187(n)]*A002654(n+1)`
-/

namespace A035184.P8022891002987774914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002654 (n + 1)

end

end A035184.P8022891002987774914

namespace A035184

/-- `Δ[A005187(n)]*A002654(n+1)` -/
def P8022891002987774914.Spec : Prop :=
  ∀ n, P8022891002987774914.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P1282315759690767947

`A001511(n+1)*A002654(n+1)`
-/

namespace A035184.P1282315759690767947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A002654 (n + 1)

end

end A035184.P1282315759690767947

namespace A035184

/-- `A001511(n+1)*A002654(n+1)` -/
def P1282315759690767947.Spec : Prop :=
  ∀ n, P1282315759690767947.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P7817434692912639802

`A035165(n+1)*A055457(n+1)`
-/

namespace A035184.P7817434692912639802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035165 (n + 1) * A055457 (n + 1)

end

end A035184.P7817434692912639802

namespace A035184

/-- `A035165(n+1)*A055457(n+1)` -/
def P7817434692912639802.Spec : Prop :=
  ∀ n, P7817434692912639802.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P9460495213721433001

`A002654(n+1)*A164677(n+1)`
-/

namespace A035184.P9460495213721433001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A164677 (n + 1)

end

end A035184.P9460495213721433001

namespace A035184

/-- `A002654(n+1)*A164677(n+1)` -/
def P9460495213721433001.Spec : Prop :=
  ∀ n, P9460495213721433001.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P1706375014515009031

`∑{d}[A119972(n+1), #/A119972(#)]`
-/

namespace A035184.P1706375014515009031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119972 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A119972 d : ℚ)

end

end A035184.P1706375014515009031

namespace A035184

/-- `∑{d}[A119972(n+1), #/A119972(#)]` -/
def P1706375014515009031.Spec : Prop :=
  ∀ n, P1706375014515009031.a n = (A035184 (n + 1) : ℚ)

end A035184

/-! ## A035184.P10238543246345330572

`Δ[A014198(n)/4]*A001511(n+1)`
-/

namespace A035184.P10238543246345330572
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014198 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A001511 (n + 1) : ℚ)

end

end A035184.P10238543246345330572

namespace A035184

/-- `Δ[A014198(n)/4]*A001511(n+1)` -/
def P10238543246345330572.Spec : Prop :=
  ∀ n, P10238543246345330572.a n = (A035184 (n + 1) : ℚ)

end A035184

/-! ## A035184.P11556105528814943275

`(A007814(n+1)+1)*A002654(n+1)`
-/

namespace A035184.P11556105528814943275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * A002654 (n + 1)

end

end A035184.P11556105528814943275

namespace A035184

/-- `(A007814(n+1)+1)*A002654(n+1)` -/
def P11556105528814943275.Spec : Prop :=
  ∀ n, P11556105528814943275.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P9773206973039675262

`A001511(n+1)/2*A105673(n+1)`
-/

namespace A035184.P9773206973039675262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) : ℚ) / 2 * (A105673 (n + 1) : ℚ)

end

end A035184.P9773206973039675262

namespace A035184

/-- `A001511(n+1)/2*A105673(n+1)` -/
def P9773206973039675262.Spec : Prop :=
  ∀ n, P9773206973039675262.a n = (A035184 (n + 1) : ℚ)

end A035184

/-! ## A035184.P6215381901878645287

`∑{d}[n+1, A010052(#)*A091379((n+1)/#)]`
-/

namespace A035184.P6215381901878645287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A091379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035184.P6215381901878645287

namespace A035184

/-- `∑{d}[n+1, A010052(#)*A091379((n+1)/#)]` -/
def P6215381901878645287.Spec : Prop :=
  ∀ n, P6215381901878645287.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P13619719805653275402

`∑{d}[n+1, A008442(#)*A104117((n+1)/#)]`
-/

namespace A035184.P13619719805653275402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008442 d * A104117 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035184.P13619719805653275402

namespace A035184

/-- `∑{d}[n+1, A008442(#)*A104117((n+1)/#)]` -/
def P13619719805653275402.Spec : Prop :=
  ∀ n, P13619719805653275402.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P837132248503315730

`∑{d}[n+1, A055975(#)*A088705((n+1)/#)]`
-/

namespace A035184.P837132248503315730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055975 d * A088705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035184.P837132248503315730

namespace A035184

/-- `∑{d}[n+1, A055975(#)*A088705((n+1)/#)]` -/
def P837132248503315730.Spec : Prop :=
  ∀ n, P837132248503315730.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P8708715114353292445

`∑{d}[n+1, A053866(#)*A091400((n+1)/#)]`
-/

namespace A035184.P8708715114353292445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A091400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035184.P8708715114353292445

namespace A035184

/-- `∑{d}[n+1, A053866(#)*A091400((n+1)/#)]` -/
def P8708715114353292445.Spec : Prop :=
  ∀ n, P8708715114353292445.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P9492682665948295882

`∑{d}[n+1, A065333(#)*A113446((n+1)/#)]`
-/

namespace A035184.P9492682665948295882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065333 d * A113446 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035184.P9492682665948295882

namespace A035184

/-- `∑{d}[n+1, A065333(#)*A113446((n+1)/#)]` -/
def P9492682665948295882.Spec : Prop :=
  ∀ n, P9492682665948295882.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P13703496610320253100

`∑{d}[n+1, A035181(#)*A154271((n+1)/#)]`
-/

namespace A035184.P13703496610320253100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035181 d * A154271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035184.P13703496610320253100

namespace A035184

/-- `∑{d}[n+1, A035181(#)*A154271((n+1)/#)]` -/
def P13703496610320253100.Spec : Prop :=
  ∀ n, P13703496610320253100.a n = A035184 (n + 1)

end A035184

/-! ## A035184.P16675079456708605580

`∑{d}[n+1, A002654(#)*A209229((n+1)/#)]`
-/

namespace A035184.P16675079456708605580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035184.P16675079456708605580

namespace A035184

/-- `∑{d}[n+1, A002654(#)*A209229((n+1)/#)]` -/
def P16675079456708605580.Spec : Prop :=
  ∀ n, P16675079456708605580.a n = A035184 (n + 1)

end A035184

/-!
# A035185: Number of divisors of n == 1 or 7 (mod 8) minus number of divisors of n == 3 or 5 (mod 8).

The programs for A035185, the canonical program `A035185.P8037574016802671635` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035185 has offset 1).

The definition of A035185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035185.P18016008265120349403

`(-1)^floor((n+1)/2)*A259829(n+1)`
-/

namespace A035185.P18016008265120349403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A259829 (n + 1) : ℚ)

end

end A035185.P18016008265120349403

namespace A035185

/-- `(-1)^floor((n+1)/2)*A259829(n+1)` -/
def P18016008265120349403.Spec : Prop :=
  ∀ n, P18016008265120349403.a n = (A035185 (n + 1) : ℚ)

end A035185

/-! ## A035185.P9616826021478252098

`abs(A259829(n+1))`
-/

namespace A035185.P9616826021478252098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259829 (n + 1)|

end

end A035185.P9616826021478252098

namespace A035185

/-- `abs(A259829(n+1))` -/
def P9616826021478252098.Spec : Prop :=
  ∀ n, P9616826021478252098.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P7830845038425357346

`gcd(A000038(n), A259829(n+1))`
-/

namespace A035185.P7830845038425357346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A259829 (n + 1))

end

end A035185.P7830845038425357346

namespace A035185

/-- `gcd(A000038(n), A259829(n+1))` -/
def P7830845038425357346.Spec : Prop :=
  ∀ n, (P7830845038425357346.a n : ℤ) = A035185 (n + 1)

end A035185

/-! ## A035185.P13644205637923046458

`lcm(A014709(n), A259829(n+1))`
-/

namespace A035185.P13644205637923046458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A259829 (n + 1))

end

end A035185.P13644205637923046458

namespace A035185

/-- `lcm(A014709(n), A259829(n+1))` -/
def P13644205637923046458.Spec : Prop :=
  ∀ n, (P13644205637923046458.a n : ℤ) = A035185 (n + 1)

end A035185

/-! ## A035185.P8037574016802671635

`A363037(n+1)-A364032(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A035185

/-- `A363037(n+1)-A364032(n+1)` -/
def P8037574016802671635.Spec : Prop :=
  ∀ n, P8037574016802671635.a n = A035185 (n + 1)

theorem P8037574016802671635.correct : P8037574016802671635.Spec := by
  intro n
  simp only [A035185, Nat.add_sub_cancel]

end A035185

/-! ## A035185.P14899429737375325159

`2*A363037(n+1)-A002325(n+1)`
-/

namespace A035185.P14899429737375325159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363037 (n + 1) - A002325 (n + 1)

end

end A035185.P14899429737375325159

namespace A035185

/-- `2*A363037(n+1)-A002325(n+1)` -/
def P14899429737375325159.Spec : Prop :=
  ∀ n, P14899429737375325159.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P15069142168289404020

`A002325(n+1)-2*A364032(n+1)`
-/

namespace A035185.P15069142168289404020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - 2 * A364032 (n + 1)

end

end A035185.P15069142168289404020

namespace A035185

/-- `A002325(n+1)-2*A364032(n+1)` -/
def P15069142168289404020.Spec : Prop :=
  ∀ n, P15069142168289404020.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P3091007629758569247

`∑{d}[n+1, A010052(#)*A087780((n+1)/#)]`
-/

namespace A035185.P3091007629758569247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A087780 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035185.P3091007629758569247

namespace A035185

/-- `∑{d}[n+1, A010052(#)*A087780((n+1)/#)]` -/
def P3091007629758569247.Spec : Prop :=
  ∀ n, P3091007629758569247.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P1484836160534343506

`∑{d}[n+1, A023900(#)*A124340((n+1)/#)]`
-/

namespace A035185.P1484836160534343506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A124340 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035185.P1484836160534343506

namespace A035185

/-- `∑{d}[n+1, A023900(#)*A124340((n+1)/#)]` -/
def P1484836160534343506.Spec : Prop :=
  ∀ n, P1484836160534343506.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P1216706578344570498

`∑{d}[n+1, A035200(#)*A154271((n+1)/#)]`
-/

namespace A035185.P1216706578344570498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035200 d * A154271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035185.P1216706578344570498

namespace A035185

/-- `∑{d}[n+1, A035200(#)*A154271((n+1)/#)]` -/
def P1216706578344570498.Spec : Prop :=
  ∀ n, P1216706578344570498.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P12447036505822693410

`∑{d}[n+1, A091396(#)*A098108((n+1)/#)]`
-/

namespace A035185.P12447036505822693410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091396 d * A098108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035185.P12447036505822693410

namespace A035185

/-- `∑{d}[n+1, A091396(#)*A098108((n+1)/#)]` -/
def P12447036505822693410.Spec : Prop :=
  ∀ n, P12447036505822693410.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P1690741936173551280

`∑{d}[n+1, A091069(#)*A298735((n+1)/#)]`
-/

namespace A035185.P1690741936173551280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091069 d * A298735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035185.P1690741936173551280

namespace A035185

/-- `∑{d}[n+1, A091069(#)*A298735((n+1)/#)]` -/
def P1690741936173551280.Spec : Prop :=
  ∀ n, P1690741936173551280.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P2480998379303614030

`gcd(A105877(n+1)*A259829(n+1), A259829(n+1)²)`
-/

namespace A035185.P2480998379303614030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105877 (n + 1) * A259829 (n + 1)) (A259829 (n + 1) ^ 2)

end

end A035185.P2480998379303614030

namespace A035185

/-- `gcd(A105877(n+1)*A259829(n+1), A259829(n+1)²)` -/
def P2480998379303614030.Spec : Prop :=
  ∀ n, (P2480998379303614030.a n : ℤ) = A035185 (n + 1)

end A035185

/-! ## A035185.P10251220571987893189

`∑{d}[n+1, A091337(#)]`
-/

namespace A035185.P10251220571987893189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091337 d

end

end A035185.P10251220571987893189

namespace A035185

/-- `∑{d}[n+1, A091337(#)]` -/
def P10251220571987893189.Spec : Prop :=
  ∀ n, P10251220571987893189.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P1608868554080974213

`A027414(n+1)+A027414(n+1)-A244543(n+1)`
-/

namespace A035185.P1608868554080974213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (n + 1) + (A027414 (n + 1) - A244543 (n + 1))

end

end A035185.P1608868554080974213

namespace A035185

/-- `A027414(n+1)+A027414(n+1)-A244543(n+1)` -/
def P1608868554080974213.Spec : Prop :=
  ∀ n, P1608868554080974213.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P8096196850613626370

`A259829(2*(n+1))/A033999(n+1)`
-/

namespace A035185.P8096196850613626370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259829 (2 * (n + 1)) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A035185.P8096196850613626370

namespace A035185

/-- `A259829(2*(n+1))/A033999(n+1)` -/
def P8096196850613626370.Spec : Prop :=
  ∀ n, P8096196850613626370.a n = (A035185 (n + 1) : ℚ)

end A035185

/-! ## A035185.P13233478716180334447

`A078462(2*(n+1))-A078462(2*n+1)`
-/

namespace A035185.P13233478716180334447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078462 (2 * (n + 1)) - A078462 (2 * n + 1)

end

end A035185.P13233478716180334447

namespace A035185

/-- `A078462(2*(n+1))-A078462(2*n+1)` -/
def P13233478716180334447.Spec : Prop :=
  ∀ n, P13233478716180334447.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P14562905855946880646

`A033999(2*n)*A259829(2*n+2)*A033999(n+1)`
-/

namespace A035185.P14562905855946880646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A259829 (2 * n + 2) * A033999 (n + 1)

end

end A035185.P14562905855946880646

namespace A035185

/-- `A033999(2*n)*A259829(2*n+2)*A033999(n+1)` -/
def P14562905855946880646.Spec : Prop :=
  ∀ n, P14562905855946880646.a n = A035185 (n + 1)

end A035185

/-! ## A035185.P1282730590139992482

`A259829(4*(n+1))`
-/

namespace A035185.P1282730590139992482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259829 (4 * (n + 1))

end

end A035185.P1282730590139992482

namespace A035185

/-- `A259829(4*(n+1))` -/
def P1282730590139992482.Spec : Prop :=
  ∀ n, P1282730590139992482.a n = A035185 (n + 1)

end A035185

/-!
# A035186: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 3.

The programs for A035186, the canonical program `A035186.P15949002848067084157` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035186 has offset 1).

The definition of A035186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035186.P15949002848067084157

`∑{d}[n+1, A091338(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035186

/-- `∑{d}[n+1, A091338(#)]` -/
def P15949002848067084157.Spec : Prop :=
  ∀ n, P15949002848067084157.a n = A035186 (n + 1)

theorem P15949002848067084157.correct : P15949002848067084157.Spec := by
  intro n
  simp only [A035186, Nat.add_sub_cancel]

end A035186

/-! ## A035186.P18269279188237836245

`A035194(n+1)*A035263(n+1)`
-/

namespace A035186.P18269279188237836245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035194 (n + 1) * A035263 (n + 1)

end

end A035186.P18269279188237836245

namespace A035186

/-- `A035194(n+1)*A035263(n+1)` -/
def P18269279188237836245.Spec : Prop :=
  ∀ n, P18269279188237836245.a n = A035186 (n + 1)

end A035186

/-! ## A035186.P11966025711512716693

`lcm(A029883(n+1), A035194(n+1))`
-/

namespace A035186.P11966025711512716693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (n + 1)) (A035194 (n + 1))

end

end A035186.P11966025711512716693

namespace A035186

/-- `lcm(A029883(n+1), A035194(n+1))` -/
def P11966025711512716693.Spec : Prop :=
  ∀ n, (P11966025711512716693.a n : ℤ) = A035186 (n + 1)

end A035186

/-! ## A035186.P10167346024096193508

`and(1, A085296(n+1))*A035194(n+1)`
-/

namespace A035186.P10167346024096193508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A085296 (n + 1)) * A035194 (n + 1)

end

end A035186.P10167346024096193508

namespace A035186

/-- `and(1, A085296(n+1))*A035194(n+1)` -/
def P10167346024096193508.Spec : Prop :=
  ∀ n, P10167346024096193508.a n = A035186 (n + 1)

end A035186

/-! ## A035186.P8576993784423531838

`∑{d}[n+1, A033684(#)*A091397((n+1)/#)]`
-/

namespace A035186.P8576993784423531838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033684 d * A091397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035186.P8576993784423531838

namespace A035186

/-- `∑{d}[n+1, A033684(#)*A091397((n+1)/#)]` -/
def P8576993784423531838.Spec : Prop :=
  ∀ n, P8576993784423531838.a n = A035186 (n + 1)

end A035186

/-! ## A035186.P16418582251075807328

`∑{d}[n+1, A035194(#)*A154269((n+1)/#)]`
-/

namespace A035186.P16418582251075807328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035194 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035186.P16418582251075807328

namespace A035186

/-- `∑{d}[n+1, A035194(#)*A154269((n+1)/#)]` -/
def P16418582251075807328.Spec : Prop :=
  ∀ n, P16418582251075807328.a n = A035186 (n + 1)

end A035186

/-! ## A035186.P11235398042233875947

`A091397(A055491(n+1))`
-/

namespace A035186.P11235398042233875947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091397 (A055491 (n + 1)).toNat

end

end A035186.P11235398042233875947

namespace A035186

/-- `A091397(A055491(n+1))` -/
def P11235398042233875947.Spec : Prop :=
  ∀ n, P11235398042233875947.a n = A035186 (n + 1)

end A035186

/-! ## A035186.P6748003625298051208

`and(1, A150528(n))*A035194(n+1)`
-/

namespace A035186.P6748003625298051208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A150528 n) * A035194 (n + 1)

end

end A035186.P6748003625298051208

namespace A035186

/-- `and(1, A150528(n))*A035194(n+1)` -/
def P6748003625298051208.Spec : Prop :=
  ∀ n, P6748003625298051208.a n = A035186 (n + 1)

end A035186

/-! ## A035186.P17738091373604126436

`A091397(A071975(n+1))/A071975(A071975(n+1)²)`
-/

namespace A035186.P17738091373604126436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091397 (A071975 (n + 1)).toNat : ℚ) / (A071975 (A071975 (n + 1) ^ 2).toNat : ℚ)

end

end A035186.P17738091373604126436

namespace A035186

/-- `A091397(A071975(n+1))/A071975(A071975(n+1)²)` -/
def P17738091373604126436.Spec : Prop :=
  ∀ n, P17738091373604126436.a n = (A035186 (n + 1) : ℚ)

end A035186

/-! ## A035186.P5286686881246806825

`A091397(A350389(n+1))/A350389(A350389(n+1)²)`
-/

namespace A035186.P5286686881246806825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091397 (A350389 (n + 1)).toNat : ℚ) / (A350389 (A350389 (n + 1) ^ 2).toNat : ℚ)

end

end A035186.P5286686881246806825

namespace A035186

/-- `A091397(A350389(n+1))/A350389(A350389(n+1)²)` -/
def P5286686881246806825.Spec : Prop :=
  ∀ n, P5286686881246806825.a n = (A035186 (n + 1) : ℚ)

end A035186

/-!
# A035187: Sum over divisors d of n of Kronecker symbol (5|d).

The programs for A035187, the canonical program `A035187.P4441846657332739051` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035187 has offset 1).

The definition of A035187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035187.P7967688233890064534

`A374089(n+1)+A010052(n+1)`
-/

namespace A035187.P7967688233890064534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374089 (n + 1) + A010052 (n + 1)

end

end A035187.P7967688233890064534

namespace A035187

/-- `A374089(n+1)+A010052(n+1)` -/
def P7967688233890064534.Spec : Prop :=
  ∀ n, P7967688233890064534.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P13857994828142155237

`A035202(n+1)*A035263(n+1)`
-/

namespace A035187.P13857994828142155237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (n + 1) * A035263 (n + 1)

end

end A035187.P13857994828142155237

namespace A035187

/-- `A035202(n+1)*A035263(n+1)` -/
def P13857994828142155237.Spec : Prop :=
  ∀ n, P13857994828142155237.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P9344262209047823538

`A035202(n+1)*A372574(n+1)`
-/

namespace A035187.P9344262209047823538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (n + 1) * A372574 (n + 1)

end

end A035187.P9344262209047823538

namespace A035187

/-- `A035202(n+1)*A372574(n+1)` -/
def P9344262209047823538.Spec : Prop :=
  ∀ n, P9344262209047823538.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P14071469403814353626

`A035227(n+1)*A372574(n+1)`
-/

namespace A035187.P14071469403814353626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (n + 1) * A372574 (n + 1)

end

end A035187.P14071469403814353626

namespace A035187

/-- `A035227(n+1)*A372574(n+1)` -/
def P14071469403814353626.Spec : Prop :=
  ∀ n, P14071469403814353626.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P15780888971461616299

`A035202(n+1)*A373136(n+1)`
-/

namespace A035187.P15780888971461616299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035202 (n + 1) * A373136 (n + 1)

end

end A035187.P15780888971461616299

namespace A035187

/-- `A035202(n+1)*A373136(n+1)` -/
def P15780888971461616299.Spec : Prop :=
  ∀ n, P15780888971461616299.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P15442826742055433399

`A035227(n+1)*A373136(n+1)`
-/

namespace A035187.P15442826742055433399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035227 (n + 1) * A373136 (n + 1)

end

end A035187.P15442826742055433399

namespace A035187

/-- `A035227(n+1)*A373136(n+1)` -/
def P15442826742055433399.Spec : Prop :=
  ∀ n, P15442826742055433399.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P5257353778420070015

`lcm(A029883(n+1), A035202(n+1))`
-/

namespace A035187.P5257353778420070015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (n + 1)) (A035202 (n + 1))

end

end A035187.P5257353778420070015

namespace A035187

/-- `lcm(A029883(n+1), A035202(n+1))` -/
def P5257353778420070015.Spec : Prop :=
  ∀ n, (P5257353778420070015.a n : ℤ) = A035187 (n + 1)

end A035187

/-! ## A035187.P1085368529895826685

`and(A035202(n+1), A035227(n+1))`
-/

namespace A035187.P1085368529895826685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035202 (n + 1)) (A035227 (n + 1))

end

end A035187.P1085368529895826685

namespace A035187

/-- `and(A035202(n+1), A035227(n+1))` -/
def P1085368529895826685.Spec : Prop :=
  ∀ n, P1085368529895826685.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P5184631509429662692

`and(1, A085296(n+1))*A035202(n+1)`
-/

namespace A035187.P5184631509429662692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A085296 (n + 1)) * A035202 (n + 1)

end

end A035187.P5184631509429662692

namespace A035187

/-- `and(1, A085296(n+1))*A035202(n+1)` -/
def P5184631509429662692.Spec : Prop :=
  ∀ n, P5184631509429662692.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P3482852439498047423

`and(1, A234431(n+1))*A035202(n+1)`
-/

namespace A035187.P3482852439498047423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A234431 (n + 1)) * A035202 (n + 1)

end

end A035187.P3482852439498047423

namespace A035187

/-- `and(1, A234431(n+1))*A035202(n+1)` -/
def P3482852439498047423.Spec : Prop :=
  ∀ n, P3482852439498047423.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P17335525733615425561

`∑{d}[n+1, A010052(#)*A087781((n+1)/#)]`
-/

namespace A035187.P17335525733615425561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A087781 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035187.P17335525733615425561

namespace A035187

/-- `∑{d}[n+1, A010052(#)*A087781((n+1)/#)]` -/
def P17335525733615425561.Spec : Prop :=
  ∀ n, P17335525733615425561.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P14362144699790020519

`∑{d}[n+1, A035202(#)*A154269((n+1)/#)]`
-/

namespace A035187.P14362144699790020519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035202 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035187.P14362144699790020519

namespace A035187

/-- `∑{d}[n+1, A035202(#)*A154269((n+1)/#)]` -/
def P14362144699790020519.Spec : Prop :=
  ∀ n, P14362144699790020519.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P11699895088668331737

`∑{d}[n+1, A035227(#)*A154271((n+1)/#)]`
-/

namespace A035187.P11699895088668331737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035227 d * A154271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035187.P11699895088668331737

namespace A035187

/-- `∑{d}[n+1, A035227(#)*A154271((n+1)/#)]` -/
def P11699895088668331737.Spec : Prop :=
  ∀ n, P11699895088668331737.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P478361021146863570

`∑{d}[n+1, A111949(#)*A374366((n+1)/#)]`
-/

namespace A035187.P478361021146863570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111949 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035187.P478361021146863570

namespace A035187

/-- `∑{d}[n+1, A111949(#)*A374366((n+1)/#)]` -/
def P478361021146863570.Spec : Prop :=
  ∀ n, P478361021146863570.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P16555632597721899591

`∑{d}[n+1, A023900(#)*A053723((n+1)/#-1)]`
-/

namespace A035187.P16555632597721899591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A053723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035187.P16555632597721899591

namespace A035187

/-- `∑{d}[n+1, A023900(#)*A053723((n+1)/#-1)]` -/
def P16555632597721899591.Spec : Prop :=
  ∀ n, P16555632597721899591.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P4441846657332739051

`A001899(n+1)+A373335(n+1)-A001878(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035187

/-- `A001899(n+1)+A373335(n+1)-A001878(n+1)` -/
def P4441846657332739051.Spec : Prop :=
  ∀ n, P4441846657332739051.a n = A035187 (n + 1)

theorem P4441846657332739051.correct : P4441846657332739051.Spec := by
  intro n
  simp only [A035187, Nat.add_sub_cancel]

end A035187

/-! ## A035187.P10353961247015636543

`∑{d}[n+1, A080891(#)]`
-/

namespace A035187.P10353961247015636543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080891 d

end

end A035187.P10353961247015636543

namespace A035187

/-- `∑{d}[n+1, A080891(#)]` -/
def P10353961247015636543.Spec : Prop :=
  ∀ n, P10353961247015636543.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P14226163591300926296

`A374276(A135631(n+1))`
-/

namespace A035187.P14226163591300926296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374276 (A135631 (n + 1)).toNat

end

end A035187.P14226163591300926296

namespace A035187

/-- `A374276(A135631(n+1))` -/
def P14226163591300926296.Spec : Prop :=
  ∀ n, P14226163591300926296.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P1025011306478724719

`and(1, A176604(n))*A035202(n+1)`
-/

namespace A035187.P1025011306478724719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A176604 n) * A035202 (n + 1)

end

end A035187.P1025011306478724719

namespace A035187

/-- `and(1, A176604(n))*A035202(n+1)` -/
def P1025011306478724719.Spec : Prop :=
  ∀ n, P1025011306478724719.a n = A035187 (n + 1)

end A035187

/-! ## A035187.P18299278949379063023

`A374276(n+1)+A374093(n+1)`
-/

namespace A035187.P18299278949379063023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374276 (n + 1) + A374093 (n + 1)

end

end A035187.P18299278949379063023

namespace A035187

/-- `A374276(n+1)+A374093(n+1)` -/
def P18299278949379063023.Spec : Prop :=
  ∀ n, P18299278949379063023.a n = A035187 (n + 1)

end A035187

/-!
# A035188: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 6.

The programs for A035188, the canonical program `A035188.P3561611821461542585` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035188 has offset 1).

The definition of A035188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035188.P3561611821461542585

`∑{d}[n+1, A322796(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035188

/-- `∑{d}[n+1, A322796(#)]` -/
def P3561611821461542585.Spec : Prop :=
  ∀ n, P3561611821461542585.a n = A035188 (n + 1)

theorem P3561611821461542585.correct : P3561611821461542585.Spec := by
  intro n
  simp only [A035188, Nat.add_sub_cancel]

end A035188

/-! ## A035188.P16066283890365079815

`A327785(A055999(n+4))`
-/

namespace A035188.P16066283890365079815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A055999 (n + 4)).toNat

end

end A035188.P16066283890365079815

namespace A035188

/-- `A327785(A055999(n+4))` -/
def P16066283890365079815.Spec : Prop :=
  ∀ n, P16066283890365079815.a n = A035188 (n + 1)

end A035188

/-! ## A035188.P10350153583779335114

`A327785(Δ[A026054(n+4)])`
-/

namespace A035188.P10350153583779335114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (f1 (n + 1) - f1 n).toNat

end

end A035188.P10350153583779335114

namespace A035188

/-- `A327785(Δ[A026054(n+4)])` -/
def P10350153583779335114.Spec : Prop :=
  ∀ n, P10350153583779335114.a n = A035188 (n + 1)

end A035188

/-! ## A035188.P16977596904451182330

`A327785(A155212(n+3)+2)`
-/

namespace A035188.P16977596904451182330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A155212 (n + 3) + 2).toNat

end

end A035188.P16977596904451182330

namespace A035188

/-- `A327785(A155212(n+3)+2)` -/
def P16977596904451182330.Spec : Prop :=
  ∀ n, P16977596904451182330.a n = A035188 (n + 1)

end A035188

/-! ## A035188.P1718826771433910412

`A327785(A052905(n+4)-1)`
-/

namespace A035188.P1718826771433910412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A052905 (n + 4) - 1).toNat

end

end A035188.P1718826771433910412

namespace A035188

/-- `A327785(A052905(n+4)-1)` -/
def P1718826771433910412.Spec : Prop :=
  ∀ n, P1718826771433910412.a n = A035188 (n + 1)

end A035188

/-! ## A035188.P759205399989248427

`A327785(A046691(n+5)-2)`
-/

namespace A035188.P759205399989248427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A046691 (n + 5) - 2).toNat

end

end A035188.P759205399989248427

namespace A035188

/-- `A327785(A046691(n+5)-2)` -/
def P759205399989248427.Spec : Prop :=
  ∀ n, P759205399989248427.a n = A035188 (n + 1)

end A035188

/-! ## A035188.P13741413479321635840

`A327785(A000124(n+7)-7)`
-/

namespace A035188.P13741413479321635840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A000124 (n + 7) - 7).toNat

end

end A035188.P13741413479321635840

namespace A035188

/-- `A327785(A000124(n+7)-7)` -/
def P13741413479321635840.Spec : Prop :=
  ∀ n, P13741413479321635840.a n = A035188 (n + 1)

end A035188

/-! ## A035188.P8449559785238110413

`A327785(A000217(n+6)+n+1)`
-/

namespace A035188.P8449559785238110413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A035188.P8449559785238110413

namespace A035188

/-- `A327785(A000217(n+6)+n+1)` -/
def P8449559785238110413.Spec : Prop :=
  ∀ n, P8449559785238110413.a n = A035188 (n + 1)

end A035188

/-! ## A035188.P3226347628842764786

`gcd(A161520(A073675(n+1)), A161520(n+1))`
-/

namespace A035188.P3226347628842764786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161520 (A073675 (n + 1)).toNat) (A161520 (n + 1))

end

end A035188.P3226347628842764786

namespace A035188

/-- `gcd(A161520(A073675(n+1)), A161520(n+1))` -/
def P3226347628842764786.Spec : Prop :=
  ∀ n, (P3226347628842764786.a n : ℤ) = A035188 (n + 1)

end A035188

/-!
# A035189: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 7.

The programs for A035189, the canonical program `A035189.P17313188979383133820` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035189 has offset 1).

The definition of A035189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035189.P17313188979383133820

`∑{d}[n+1, A089509(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035189

/-- `∑{d}[n+1, A089509(#)]` -/
def P17313188979383133820.Spec : Prop :=
  ∀ n, P17313188979383133820.a n = A035189 (n + 1)

theorem P17313188979383133820.correct : P17313188979383133820.Spec := by
  intro n
  simp only [A035189, Nat.add_sub_cancel]

end A035189

/-! ## A035189.P6225646877194249725

`(val(n+1, 2)+1)*A035210(n+1)`
-/

namespace A035189.P6225646877194249725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A035210 (n + 1)

end

end A035189.P6225646877194249725

namespace A035189

/-- `(val(n+1, 2)+1)*A035210(n+1)` -/
def P6225646877194249725.Spec : Prop :=
  ∀ n, P6225646877194249725.a n = A035189 (n + 1)

end A035189

/-! ## A035189.P1804977024928632325

`Δ[A005187(n)]*A035210(n+1)`
-/

namespace A035189.P1804977024928632325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035210 (n + 1)

end

end A035189.P1804977024928632325

namespace A035189

/-- `Δ[A005187(n)]*A035210(n+1)` -/
def P1804977024928632325.Spec : Prop :=
  ∀ n, P1804977024928632325.a n = A035189 (n + 1)

end A035189

/-! ## A035189.P10055579229580796838

`A001511(n+1)*A035210(n+1)`
-/

namespace A035189.P10055579229580796838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A035210 (n + 1)

end

end A035189.P10055579229580796838

namespace A035189

/-- `A001511(n+1)*A035210(n+1)` -/
def P10055579229580796838.Spec : Prop :=
  ∀ n, P10055579229580796838.a n = A035189 (n + 1)

end A035189

/-! ## A035189.P8278699691169323050

`∑{d}[n+1, A035210(#)*A036987((n+1)/#-1)]`
-/

namespace A035189.P8278699691169323050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035210 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035189.P8278699691169323050

namespace A035189

/-- `∑{d}[n+1, A035210(#)*A036987((n+1)/#-1)]` -/
def P8278699691169323050.Spec : Prop :=
  ∀ n, P8278699691169323050.a n = A035189 (n + 1)

end A035189

/-! ## A035189.P17426857779627871943

`A000005(A006519(n+1))*A035210(n+1)`
-/

namespace A035189.P17426857779627871943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A035210 (n + 1)

end

end A035189.P17426857779627871943

namespace A035189

/-- `A000005(A006519(n+1))*A035210(n+1)` -/
def P17426857779627871943.Spec : Prop :=
  ∀ n, P17426857779627871943.a n = A035189 (n + 1)

end A035189

/-! ## A035189.P4534884496895214795

`A035210(n+1)*A050603(2*n)`
-/

namespace A035189.P4534884496895214795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035210 (n + 1) * A050603 (2 * n)

end

end A035189.P4534884496895214795

namespace A035189

/-- `A035210(n+1)*A050603(2*n)` -/
def P4534884496895214795.Spec : Prop :=
  ∀ n, P4534884496895214795.a n = A035189 (n + 1)

end A035189

/-! ## A035189.P7658390059693886870

`A035210(n+1)*A136480(A266437(n))`
-/

namespace A035189.P7658390059693886870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035210 (n + 1) * A136480 (A266437 n).toNat

end

end A035189.P7658390059693886870

namespace A035189

/-- `A035210(n+1)*A136480(A266437(n))` -/
def P7658390059693886870.Spec : Prop :=
  ∀ n, P7658390059693886870.a n = A035189 (n + 1)

end A035189

/-! ## A035189.P13406050189693356514

`A035210(n+1)*A136480(2*(n+1))`
-/

namespace A035189.P13406050189693356514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035210 (n + 1) * A136480 (2 * (n + 1))

end

end A035189.P13406050189693356514

namespace A035189

/-- `A035210(n+1)*A136480(2*(n+1))` -/
def P13406050189693356514.Spec : Prop :=
  ∀ n, P13406050189693356514.a n = A035189 (n + 1)

end A035189

/-!
# A035191: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 9.

The programs for A035191, the canonical program `A035191.P4075086936734830837` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035191 has offset 1).

The definition of A035191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035191.P10696382242779130747

`A000005(n+1)/val(3*(n+1), 3)`
-/

namespace A035191.P10696382242779130747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (SequenceMachineLib.valuation (3 * (n + 1)) 3 : ℚ)

end

end A035191.P10696382242779130747

namespace A035191

/-- `A000005(n+1)/val(3*(n+1), 3)` -/
def P10696382242779130747.Spec : Prop :=
  ∀ n, P10696382242779130747.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P4075086936734830837

`A000005(A038502(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035191

/-- `A000005(A038502(n+1))` -/
def P4075086936734830837.Spec : Prop :=
  ∀ n, P4075086936734830837.a n = A035191 (n + 1)

theorem P4075086936734830837.correct : P4075086936734830837.Spec := by
  intro n
  simp only [A035191, Nat.add_sub_cancel]

end A035191

/-! ## A035191.P17277251807947292879

`A001817(n+1)+A001822(n+1)`
-/

namespace A035191.P17277251807947292879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) + A001822 (n + 1)

end

end A035191.P17277251807947292879

namespace A035191

/-- `A001817(n+1)+A001822(n+1)` -/
def P17277251807947292879.Spec : Prop :=
  ∀ n, P17277251807947292879.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P2128854366428498485

`A000005(3*(n+1))-A000005(n+1)`
-/

namespace A035191.P2128854366428498485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1)) - A000005 (n + 1)

end

end A035191.P2128854366428498485

namespace A035191

/-- `A000005(3*(n+1))-A000005(n+1)` -/
def P2128854366428498485.Spec : Prop :=
  ∀ n, P2128854366428498485.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P16241047551166916940

`∑{d}[n+1, #²%3]`
-/

namespace A035191.P16241047551166916940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2 % 3

end

end A035191.P16241047551166916940

namespace A035191

/-- `∑{d}[n+1, #²%3]` -/
def P16241047551166916940.Spec : Prop :=
  ∀ n, (P16241047551166916940.a n : ℤ) = A035191 (n + 1)

end A035191

/-! ## A035191.P4761368016120826523

`A000005((n+1)/3^val(n+1, 3))`
-/

namespace A035191.P4761368016120826523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A035191.P4761368016120826523

namespace A035191

/-- `A000005((n+1)/3^val(n+1, 3))` -/
def P4761368016120826523.Spec : Prop :=
  ∀ n, P4761368016120826523.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P13908073304147910393

`∏{e}[n+1, #+1]/val(A166466(n+1), 3)`
-/

namespace A035191.P13908073304147910393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (SequenceMachineLib.valuation (A166466 (n + 1)).toNat 3 : ℚ)

end

end A035191.P13908073304147910393

namespace A035191

/-- `∏{e}[n+1, #+1]/val(A166466(n+1), 3)` -/
def P13908073304147910393.Spec : Prop :=
  ∀ n, P13908073304147910393.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P13169292086057143948

`∏{e}[n+1, #+1]/A001227(3^val(n+1, 3))`
-/

namespace A035191.P13169292086057143948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A001227 (3 ^ SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A035191.P13169292086057143948

namespace A035191

/-- `∏{e}[n+1, #+1]/A001227(3^val(n+1, 3))` -/
def P13169292086057143948.Spec : Prop :=
  ∀ n, P13169292086057143948.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P8992758261083770420

`∑{d}[A038502(n+1), A038500(#)]`
-/

namespace A035191.P8992758261083770420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A038500 d

end

end A035191.P8992758261083770420

namespace A035191

/-- `∑{d}[A038502(n+1), A038500(#)]` -/
def P8992758261083770420.Spec : Prop :=
  ∀ n, P8992758261083770420.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P11172316933874192693

`A082909(n+1)-A001822(n+1)`
-/

namespace A035191.P11172316933874192693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082909 (n + 1) - A001822 (n + 1)

end

end A035191.P11172316933874192693

namespace A035191

/-- `A082909(n+1)-A001822(n+1)` -/
def P11172316933874192693.Spec : Prop :=
  ∀ n, P11172316933874192693.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P859179187628047366

`A372713(n+1)-A000005(n+1)`
-/

namespace A035191.P859179187628047366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372713 (n + 1) - A000005 (n + 1)

end

end A035191.P859179187628047366

namespace A035191

/-- `A372713(n+1)-A000005(n+1)` -/
def P859179187628047366.Spec : Prop :=
  ∀ n, P859179187628047366.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P13228037587498654220

`A372789(n+1)-A372713(n+1)`
-/

namespace A035191.P13228037587498654220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372789 (n + 1) - A372713 (n + 1)

end

end A035191.P13228037587498654220

namespace A035191

/-- `A372789(n+1)-A372713(n+1)` -/
def P13228037587498654220.Spec : Prop :=
  ∀ n, P13228037587498654220.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P12542583786594126536

`A001511(n+1)*A035218(n+1)`
-/

namespace A035191.P12542583786594126536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A035218 (n + 1)

end

end A035191.P12542583786594126536

namespace A035191

/-- `A001511(n+1)*A035218(n+1)` -/
def P12542583786594126536.Spec : Prop :=
  ∀ n, P12542583786594126536.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P16045162266534164449

`A000005((n+1)/A038500(n+1))`
-/

namespace A035191.P16045162266534164449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A035191.P16045162266534164449

namespace A035191

/-- `A000005((n+1)/A038500(n+1))` -/
def P16045162266534164449.Spec : Prop :=
  ∀ n, P16045162266534164449.a n = A035191 (n + 1)

end A035191

/-! ## A035191.P13512147430499214020

`A000005(n+1)/A051064(n+1)`
-/

namespace A035191.P13512147430499214020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A051064 (n + 1) : ℚ)

end

end A035191.P13512147430499214020

namespace A035191

/-- `A000005(n+1)/A051064(n+1)` -/
def P13512147430499214020.Spec : Prop :=
  ∀ n, P13512147430499214020.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P4645006313263320249

`A038040(n+1)/A364222(n+1)`
-/

namespace A035191.P4645006313263320249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A364222 (n + 1) : ℚ)

end

end A035191.P4645006313263320249

namespace A035191

/-- `A038040(n+1)/A364222(n+1)` -/
def P4645006313263320249.Spec : Prop :=
  ∀ n, P4645006313263320249.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P14018251363354469803

`A328484(n+1)/A373438(n+1)`
-/

namespace A035191.P14018251363354469803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328484 (n + 1) : ℚ) / (A373438 (n + 1) : ℚ)

end

end A035191.P14018251363354469803

namespace A035191

/-- `A328484(n+1)/A373438(n+1)` -/
def P14018251363354469803.Spec : Prop :=
  ∀ n, P14018251363354469803.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P5852970225589987025

`A372713(n+1)/A366922(n+1)`
-/

namespace A035191.P5852970225589987025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372713 (n + 1) : ℚ) / (A366922 (n + 1) : ℚ)

end

end A035191.P5852970225589987025

namespace A035191

/-- `A372713(n+1)/A366922(n+1)` -/
def P5852970225589987025.Spec : Prop :=
  ∀ n, P5852970225589987025.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P3686557257418523008

`∑{d}[A038502(n+1), #/A038502(#)]`
-/

namespace A035191.P3686557257418523008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A038502 d : ℚ)

end

end A035191.P3686557257418523008

namespace A035191

/-- `∑{d}[A038502(n+1), #/A038502(#)]` -/
def P3686557257418523008.Spec : Prop :=
  ∀ n, P3686557257418523008.a n = (A035191 (n + 1) : ℚ)

end A035191

/-! ## A035191.P15661650064031386369

`A000005(3*(n+1))-Δ[A006218(n)]`
-/

namespace A035191.P15661650064031386369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A035191.P15661650064031386369

namespace A035191

/-- `A000005(3*(n+1))-Δ[A006218(n)]` -/
def P15661650064031386369.Spec : Prop :=
  ∀ n, P15661650064031386369.a n = A035191 (n + 1)

end A035191

/-!
# A035192: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 10.

The programs for A035192, the canonical program `A035192.P17667714177513179628` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035192 has offset 1).

The definition of A035192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035192.P17667714177513179628

`∑{d}[n+1, A391503(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035192

/-- `∑{d}[n+1, A391503(#)]` -/
def P17667714177513179628.Spec : Prop :=
  ∀ n, P17667714177513179628.a n = A035192 (n + 1)

theorem P17667714177513179628.correct : P17667714177513179628.Spec := by
  intro n
  simp only [A035192, Nat.add_sub_cancel]

end A035192

/-! ## A035192.P16126809927082825825

`A327785(A000096(n+9)+n+2)`
-/

namespace A035192.P16126809927082825825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A000096 (n + 9) + (n + 2 : ℤ)).toNat

end

end A035192.P16126809927082825825

namespace A035192

/-- `A327785(A000096(n+9)+n+2)` -/
def P16126809927082825825.Spec : Prop :=
  ∀ n, P16126809927082825825.a n = A035192 (n + 1)

end A035192

/-! ## A035192.P1869790679009110285

`A327785(A000217(n+10)+n+1)`
-/

namespace A035192.P1869790679009110285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (A000217 (n + 10) + (n + 1 : ℤ)).toNat

end

end A035192.P1869790679009110285

namespace A035192

/-- `A327785(A000217(n+10)+n+1)` -/
def P1869790679009110285.Spec : Prop :=
  ∀ n, P1869790679009110285.a n = A035192 (n + 1)

end A035192

/-! ## A035192.P4662030868797966024

`A035203(28*A003961(n+1))`
-/

namespace A035192.P4662030868797966024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (28 * A003961 (n + 1)).toNat

end

end A035192.P4662030868797966024

namespace A035192

/-- `A035203(28*A003961(n+1))` -/
def P4662030868797966024.Spec : Prop :=
  ∀ n, P4662030868797966024.a n = A035192 (n + 1)

end A035192

/-! ## A035192.P157893545138266187

`A137899(A003961(n+4))+A035203(A003961(n+1))`
-/

namespace A035192.P157893545138266187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137899 (A003961 (n + 4)).toNat + A035203 (A003961 (n + 1)).toNat

end

end A035192.P157893545138266187

namespace A035192

/-- `A137899(A003961(n+4))+A035203(A003961(n+1))` -/
def P157893545138266187.Spec : Prop :=
  ∀ n, P157893545138266187.a n = A035192 (n + 1)

end A035192

/-!
# A035193: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 11.

The programs for A035193, there is no canonical definition to state claims against.
-/

/-! ## A035193.P12794575884288234199

`(1-val(n+1, 2)%2)*A035226(n+1)`
-/

namespace A035193.P12794575884288234199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((SequenceMachineLib.valuation (n + 1) 2 % 2 : ℕ) : ℤ)) * A035226 (n + 1)

end

end A035193.P12794575884288234199

/-! ## A035193.P16267960680587323520

`Δ[A050292(n)]*A035226(n+1)`
-/

namespace A035193.P16267960680587323520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035226 (n + 1)

end

end A035193.P16267960680587323520

/-! ## A035193.P9943398430824226062

`lcm(Δ[A010059(n)], A035226(n+1))`
-/

namespace A035193.P9943398430824226062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A035226 (n + 1))

end

end A035193.P9943398430824226062

/-! ## A035193.P6514134663755103933

`A035226(n+1)*A035263(n+1)`
-/

namespace A035193.P6514134663755103933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035226 (n + 1) * A035263 (n + 1)

end

end A035193.P6514134663755103933

/-! ## A035193.P11946898124570835883

`A035226(n+1)*A372574(n+1)`
-/

namespace A035193.P11946898124570835883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035226 (n + 1) * A372574 (n + 1)

end

end A035193.P11946898124570835883

/-! ## A035193.P16833232059019726755

`A035226(n+1)*A373136(n+1)`
-/

namespace A035193.P16833232059019726755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035226 (n + 1) * A373136 (n + 1)

end

end A035193.P16833232059019726755

/-! ## A035193.P6573761071103914905

`abs(A029883(n+1)*A035226(n+1))`
-/

namespace A035193.P6573761071103914905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029883 (n + 1) * A035226 (n + 1)|

end

end A035193.P6573761071103914905

/-! ## A035193.P2715237465754880701

`(2-Δ[A197911(n)])*A035226(n+1)`
-/

namespace A035193.P2715237465754880701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A035226 (n + 1)

end

end A035193.P2715237465754880701

/-! ## A035193.P13978143274501820846

`∑{d}[n+1, A035226(#)*A154269((n+1)/#)]`
-/

namespace A035193.P13978143274501820846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035226 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035193.P13978143274501820846

/-! ## A035193.P9302918748430234851

`A010059(A135481(n))*A035226(n+1)`
-/

namespace A035193.P9302918748430234851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A135481 n).toNat * A035226 (n + 1)

end

end A035193.P9302918748430234851

/-! ## A035193.P5216881178271009016

`A000035(Δ[A197911(n)])*A035226(n+1)`
-/

namespace A035193.P5216881178271009016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat * A035226 (n + 1)

end

end A035193.P5216881178271009016

/-! ## A035193.P5767592863023666418

`A025581(Δ[A197911(n)])*A035226(n+1)`
-/

namespace A035193.P5767592863023666418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (n + 1) - f1 n).toNat * A035226 (n + 1)

end

end A035193.P5767592863023666418

/-! ## A035193.P10111364675947363053

`A000035(A001511(n+1))*A035226(n+1)`
-/

namespace A035193.P10111364675947363053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001511 (n + 1)).toNat * A035226 (n + 1)

end

end A035193.P10111364675947363053

/-! ## A035193.P8648907447552836989

`lcm(A029883(2*n+1)+A029883(2*(n+1)), A035226(2*(n+1)))`
-/

namespace A035193.P8648907447552836989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (2 * n + 1) + A029883 (2 * (n + 1))) (A035226 (2 * (n + 1)))

end

end A035193.P8648907447552836989

/-! ## A035193.P2366935291178209113

`A000035(A127752(n))*A035226(n+1)`
-/

namespace A035193.P2366935291178209113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A127752 n).toNat * A035226 (n + 1)

end

end A035193.P2366935291178209113

/-!
# A035194: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 12.

The programs for A035194, the canonical program `A035194.P1613741361831210486` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035194 has offset 1).

The definition of A035194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035194.P2267339879502385860

`∑{d}[n+1, A110161(#)]`
-/

namespace A035194.P2267339879502385860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A110161 d

end

end A035194.P2267339879502385860

namespace A035194

/-- `∑{d}[n+1, A110161(#)]` -/
def P2267339879502385860.Spec : Prop :=
  ∀ n, P2267339879502385860.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P8024167977292513696

`A035186(A000265(n+1))`
-/

namespace A035194.P8024167977292513696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A000265 (n + 1)).toNat

end

end A035194.P8024167977292513696

namespace A035194

/-- `A035186(A000265(n+1))` -/
def P8024167977292513696.Spec : Prop :=
  ∀ n, P8024167977292513696.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P409914892959659867

`A035186(A065330(n+1))`
-/

namespace A035194.P409914892959659867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A065330 (n + 1)).toNat

end

end A035194.P409914892959659867

namespace A035194

/-- `A035186(A065330(n+1))` -/
def P409914892959659867.Spec : Prop :=
  ∀ n, P409914892959659867.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P1613741361831210486

`A035186(A214682(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035194

/-- `A035186(A214682(n+1))` -/
def P1613741361831210486.Spec : Prop :=
  ∀ n, P1613741361831210486.a n = A035194 (n + 1)

theorem P1613741361831210486.correct : P1613741361831210486.Spec := by
  intro n
  simp only [A035194, Nat.add_sub_cancel]

end A035194

/-! ## A035194.P5087889853129766991

`A364047(n+1)-A364048(n+1)`
-/

namespace A035194.P5087889853129766991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364047 (n + 1) - A364048 (n + 1)

end

end A035194.P5087889853129766991

namespace A035194

/-- `A364047(n+1)-A364048(n+1)` -/
def P5087889853129766991.Spec : Prop :=
  ∀ n, P5087889853129766991.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P6025390104608191629

`2*A364047(n+1)-A035154(n+1)`
-/

namespace A035194.P6025390104608191629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364047 (n + 1) - A035154 (n + 1)

end

end A035194.P6025390104608191629

namespace A035194

/-- `2*A364047(n+1)-A035154(n+1)` -/
def P6025390104608191629.Spec : Prop :=
  ∀ n, P6025390104608191629.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P6068658705650479664

`A035154(n+1)-2*A364048(n+1)`
-/

namespace A035194.P6068658705650479664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) - 2 * A364048 (n + 1)

end

end A035194.P6068658705650479664

namespace A035194

/-- `A035154(n+1)-2*A364048(n+1)` -/
def P6068658705650479664.Spec : Prop :=
  ∀ n, P6068658705650479664.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P9869971289987906825

`∑{d}[n+1, A019590(#)*A035186((n+1)/#)]`
-/

namespace A035194.P9869971289987906825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A035186 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035194.P9869971289987906825

namespace A035194

/-- `∑{d}[n+1, A019590(#)*A035186((n+1)/#)]` -/
def P9869971289987906825.Spec : Prop :=
  ∀ n, P9869971289987906825.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P3355111192990815644

`∑{d}[n+1, A023900(#)*A124815((n+1)/#)]`
-/

namespace A035194.P3355111192990815644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A124815 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035194.P3355111192990815644

namespace A035194

/-- `∑{d}[n+1, A023900(#)*A124815((n+1)/#)]` -/
def P3355111192990815644.Spec : Prop :=
  ∀ n, P3355111192990815644.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P15393121507432952951

`∑{d}[n+1, A000034(#-1)*A091338((n+1)/#)]`
-/

namespace A035194.P15393121507432952951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A091338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035194.P15393121507432952951

namespace A035194

/-- `∑{d}[n+1, A000034(#-1)*A091338((n+1)/#)]` -/
def P15393121507432952951.Spec : Prop :=
  ∀ n, P15393121507432952951.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P18261406015257297932

`A035186(2*(n+1))+A035186(n+1)`
-/

namespace A035194.P18261406015257297932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (2 * (n + 1)) + A035186 (n + 1)

end

end A035194.P18261406015257297932

namespace A035194

/-- `A035186(2*(n+1))+A035186(n+1)` -/
def P18261406015257297932.Spec : Prop :=
  ∀ n, P18261406015257297932.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P1390044162783404417

`∑{d}[A080512(n+1), A091338(A080512(#))]`
-/

namespace A035194.P1390044162783404417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091338 (A080512 d).toNat

end

end A035194.P1390044162783404417

namespace A035194

/-- `∑{d}[A080512(n+1), A091338(A080512(#))]` -/
def P1390044162783404417.Spec : Prop :=
  ∀ n, P1390044162783404417.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P4283262852518223622

`∑{d}[A257143(n+1), A091338(A257143(#))]`
-/

namespace A035194.P4283262852518223622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A091338 (A257143 d).toNat

end

end A035194.P4283262852518223622

namespace A035194

/-- `∑{d}[A257143(n+1), A091338(A257143(#))]` -/
def P4283262852518223622.Spec : Prop :=
  ∀ n, P4283262852518223622.a n = A035194 (n + 1)

end A035194

/-! ## A035194.P5934980651001366116

`A035186(A166466(n+1))`
-/

namespace A035194.P5934980651001366116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A166466 (n + 1)).toNat

end

end A035194.P5934980651001366116

namespace A035194

/-- `A035186(A166466(n+1))` -/
def P5934980651001366116.Spec : Prop :=
  ∀ n, P5934980651001366116.a n = A035194 (n + 1)

end A035194

/-!
# A035195: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 13.

The programs for A035195, the canonical program `A035195.P607827720367906070` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035195 has offset 1).

The definition of A035195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035195.P607827720367906070

`∑{d}[n+1, #^6]%13`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035195

/-- `∑{d}[n+1, #^6]%13` -/
def P607827720367906070.Spec : Prop :=
  ∀ n, (P607827720367906070.a n : ℤ) = A035195 (n + 1)

theorem P607827720367906070.correct : P607827720367906070.Spec := by
  intro n
  simp only [A035195, Nat.add_sub_cancel]

end A035195

/-! ## A035195.P8798347618398310951

`floor(∑{d}[n+1, root(#, 1/6)])%13`
-/

namespace A035195.P8798347618398310951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ))⌋ 13

end

end A035195.P8798347618398310951

namespace A035195

/-- `floor(∑{d}[n+1, root(#, 1/6)])%13` -/
def P8798347618398310951.Spec : Prop :=
  ∀ n, P8798347618398310951.a n = A035195 (n + 1)

end A035195

/-! ## A035195.P13726497793166336241

`A013954(n+1)%13`
-/

namespace A035195.P13726497793166336241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013954 (n + 1)) 13

end

end A035195.P13726497793166336241

namespace A035195

/-- `A013954(n+1)%13` -/
def P13726497793166336241.Spec : Prop :=
  ∀ n, P13726497793166336241.a n = A035195 (n + 1)

end A035195

/-! ## A035195.P5473238792541904443

`∑{d}[n+1, A011583(#)]`
-/

namespace A035195.P5473238792541904443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011583 d

end

end A035195.P5473238792541904443

namespace A035195

/-- `∑{d}[n+1, A011583(#)]` -/
def P5473238792541904443.Spec : Prop :=
  ∀ n, P5473238792541904443.a n = A035195 (n + 1)

end A035195

/-! ## A035195.P18060967089386888136

`A321562(A065883(n+1))%13`
-/

namespace A035195.P18060967089386888136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321562 (A065883 (n + 1)).toNat) 13

end

end A035195.P18060967089386888136

namespace A035195

/-- `A321562(A065883(n+1))%13` -/
def P18060967089386888136.Spec : Prop :=
  ∀ n, P18060967089386888136.a n = A035195 (n + 1)

end A035195

/-! ## A035195.P7509023500373365896

`A351308((n+1)²)%13`
-/

namespace A035195.P7509023500373365896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351308 ((n + 1) ^ 2)) 13

end

end A035195.P7509023500373365896

namespace A035195

/-- `A351308((n+1)²)%13` -/
def P7509023500373365896.Spec : Prop :=
  ∀ n, P7509023500373365896.a n = A035195 (n + 1)

end A035195

/-! ## A035195.P10506863226293276759

`record[A351308(n+1)]%13`
-/

namespace A035195.P10506863226293276759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 13

end

end A035195.P10506863226293276759

namespace A035195

/-- `record[A351308(n+1)]%13` -/
def P10506863226293276759.Spec : Prop :=
  ∀ n, P10506863226293276759.a n = A035195 (n + 1)

end A035195

/-!
# A035196: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 14.

The programs for A035196, there is no canonical definition to state claims against.
-/

/-! ## A035196.P13749284087182258036

`A327785(eq[14, A193592(n)])`
-/

namespace A035196.P13749284087182258036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035196.P13749284087182258036

/-! ## A035196.P10609315290058646417

`A073202(lcm(10, A364995(n+1)))`
-/

namespace A035196.P10609315290058646417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 (Int.lcm 10 (A364995 (n + 1)))

end

end A035196.P10609315290058646417

/-! ## A035196.P12069086409381415936

`A103863(A301166(A025480(n)))`
-/

namespace A035196.P12069086409381415936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103863 (A301166 (A025480 n).toNat).toNat

end

end A035196.P12069086409381415936

/-! ## A035196.P15345072803716510115

`A167430(A243499(n)²)%3`
-/

namespace A035196.P15345072803716510115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167430 (A243499 n ^ 2).toNat) 3

end

end A035196.P15345072803716510115

/-! ## A035196.P7176183733636760628

`A169590(A027692(A243499(n)))`
-/

namespace A035196.P7176183733636760628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169590 (A027692 (A243499 n).toNat).toNat

end

end A035196.P7176183733636760628

/-!
# A035197: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 15.

The programs for A035197, there is no canonical definition to state claims against.
-/

/-! ## A035197.P14267561754955207762

`A192006(A061898(n+1)%A029789(n+1))`
-/

namespace A035197.P14267561754955207762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 (Int.tmod (A061898 (n + 1)) (A029789 (n + 1))).toNat

end

end A035197.P14267561754955207762

/-! ## A035197.P15218142975724957259

`A020985(A077957(n))*A192006(A061898(n+1))`
-/

namespace A035197.P15218142975724957259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A077957 n).toNat * A192006 (A061898 (n + 1)).toNat

end

end A035197.P15218142975724957259

/-! ## A035197.P6443247198316974122

`A005361(A000043(n+1))*A192006(A061898(n+1))`
-/

namespace A035197.P6443247198316974122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000043 (n + 1)).toNat * A192006 (A061898 (n + 1)).toNat

end

end A035197.P6443247198316974122

/-! ## A035197.P10555313635769226182

`A035221(A325709(n+1))`
-/

namespace A035197.P10555313635769226182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035221 (A325709 (n + 1)).toNat

end

end A035197.P10555313635769226182

/-! ## A035197.P14832500304810871307

`A186726(A186725(n))*A227872(n+1)`
-/

namespace A035197.P14832500304810871307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 (A186725 n).toNat * A227872 (n + 1)

end

end A035197.P14832500304810871307

/-!
# A035198: From a Dirichlet series.

The programs for A035198, there is no canonical definition to state claims against.
-/

/-! ## A035198.P17519253601815953001

`∩[A241263(n+1), A376471(n+1)]`
-/

namespace A035198.P17519253601815953001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035198.P17519253601815953001

/-! ## A035198.P10827277323161974950

`∑[A054743(A340524(∏{p}[n+1, #²]))]`
-/

namespace A035198.P10827277323161974950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054743 (A340524 (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035198.P10827277323161974950

/-!
# A035199: Coefficients in expansion of Dirichlet series Product_p (1-(Kronecker(m,p)+1)*p^(-s)+Kronecker(m,p)*p^(-2s))^(-1) for m = 17.

The programs for A035199, the canonical program `A035199.P7692353671835890353` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035199 has offset 1).

The definition of A035199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035199.P7692353671835890353

`∑{d}[n+1, A011584(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035199

/-- `∑{d}[n+1, A011584(#)]` -/
def P7692353671835890353.Spec : Prop :=
  ∀ n, P7692353671835890353.a n = A035199 (n + 1)

theorem P7692353671835890353.correct : P7692353671835890353.Spec := by
  intro n
  simp only [A035199, Nat.add_sub_cancel]

end A035199

/-! ## A035199.P48785388872063219

`A351309((n+1)²)%17`
-/

namespace A035199.P48785388872063219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351309 ((n + 1) ^ 2)) 17

end

end A035199.P48785388872063219

namespace A035199

/-- `A351309((n+1)²)%17` -/
def P48785388872063219.Spec : Prop :=
  ∀ n, P48785388872063219.a n = A035199 (n + 1)

end A035199

/-! ## A035199.P16963565975607933669

`record[A351309(n+1)]%17`
-/

namespace A035199.P16963565975607933669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 17

end

end A035199.P16963565975607933669

namespace A035199

/-- `record[A351309(n+1)]%17` -/
def P16963565975607933669.Spec : Prop :=
  ∀ n, P16963565975607933669.a n = A035199 (n + 1)

end A035199

/-! ## A035199.P13671374359636546498

`∑{d}[n+1, A117445(A001105(#))]`
-/

namespace A035199.P13671374359636546498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117445 (A001105 d).toNat

end

end A035199.P13671374359636546498

namespace A035199

/-- `∑{d}[n+1, A117445(A001105(#))]` -/
def P13671374359636546498.Spec : Prop :=
  ∀ n, P13671374359636546498.a n = A035199 (n + 1)

end A035199

/-! ## A035199.P9878607476873918412

`A257991(A347811(n))+A080024(n+1)`
-/

namespace A035199.P9878607476873918412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A347811 n).toNat + A080024 (n + 1)

end

end A035199.P9878607476873918412

namespace A035199

/-- `A257991(A347811(n))+A080024(n+1)` -/
def P9878607476873918412.Spec : Prop :=
  ∀ n, P9878607476873918412.a n = A035199 (n + 1)

end A035199

