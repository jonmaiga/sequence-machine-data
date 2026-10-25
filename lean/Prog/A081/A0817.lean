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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A081700: k-tuple abundance records.

The programs for A081700, there is no canonical definition to state claims against.
-/

/-! ## A081700.P4039777409983217735

`record[A081705(n+1)]`
-/

namespace A081700.P4039777409983217735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081700.P4039777409983217735

/-! ## A081700.P18208961657248872064

`or(A008620(A076875(n+1)), A138364(n+1))`
-/

namespace A081700.P18208961657248872064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008620 (A076875 (n + 1)).toNat) (A138364 (n + 1))

end

end A081700.P18208961657248872064

/-!
# A081701: a(n) = prime(n) * (prime(n) - 1)^(prime(n) - 1).

The programs for A081701, there is no canonical definition to state claims against.
-/

/-! ## A081701.P4545433210366362475

`A055897(A000040(n+1))`
-/

namespace A081701.P4545433210366362475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055897 (A000040 (n + 1)).toNat

end

end A081701.P4545433210366362475

/-! ## A081701.P17474418256961976825

`A066320(A034953(n+1))`
-/

namespace A081701.P17474418256961976825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066320 (A034953 (n + 1)).toNat

end

end A081701.P17474418256961976825

/-! ## A081701.P2881104723859025498

`A225723(A072205(n+1))`
-/

namespace A081701.P2881104723859025498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A072205 (n + 1)).toNat

end

end A081701.P2881104723859025498

/-! ## A081701.P11420969413616559348

`A055897(record[A006530(n+2)])`
-/

namespace A081701.P11420969413616559348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081701.P11420969413616559348

/-! ## A081701.P11680480669276716448

`A055897(record[A020639(n+2)])`
-/

namespace A081701.P11680480669276716448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081701.P11680480669276716448

/-!
# A081702: Largest prime factor of the n-th Carmichael number (A002997).

The programs for A081702, there is no canonical definition to state claims against.
-/

/-! ## A081702.P1238526438544183058

`A006530(A002997(n+1))`
-/

namespace A081702.P1238526438544183058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002997 (n + 1)).toNat

end

end A081702.P1238526438544183058

/-! ## A081702.P16209305489785104203

`A298701(∑[A135717(n+1)])`
-/

namespace A081702.P16209305489785104203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081702.P16209305489785104203

/-! ## A081702.P12258455308216998370

`A298701(∑[∑{e}[A081703(n+1), #]+1])`
-/

namespace A081702.P12258455308216998370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298701 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081702.P12258455308216998370

/-! ## A081702.P9839045754374426452

`A298701(∑[∑{e}[A002997(n+1), #]])`
-/

namespace A081702.P9839045754374426452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298701 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081702.P9839045754374426452

/-! ## A081702.P13392662483302844647

`A006530(A081703(n+1))`
-/

namespace A081702.P13392662483302844647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A081703 (n + 1)).toNat

end

end A081702.P13392662483302844647

/-!
# A081703: Largest proper divisor of the n-th Carmichael number (A002997).

The programs for A081703, there is no canonical definition to state claims against.
-/

/-! ## A081703.P11300594647542921884

`A002997(n+1)/A141710(n+1)`
-/

namespace A081703.P11300594647542921884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℚ) / (A141710 (n + 1) : ℚ)

end

end A081703.P11300594647542921884

/-! ## A081703.P12506378344349187045

`A032742(A002997(n+1))`
-/

namespace A081703.P12506378344349187045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A002997 (n + 1)).toNat

end

end A081703.P12506378344349187045

/-! ## A081703.P6993259539524805747

`∪[A087788(n+1), A141711(n+1)]/A141710(n+1)`
-/

namespace A081703.P6993259539524805747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A141710 (n + 1) : ℚ)

end

end A081703.P6993259539524805747

/-! ## A081703.P5031947991723625271

`∪[A033181(n+1), A262043(n+1)]/A141710(n+1)`
-/

namespace A081703.P5031947991723625271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262043 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A141710 (n + 1) : ℚ)

end

end A081703.P5031947991723625271

/-! ## A081703.P17158612941806252873

`∪[A141711(n+1), A355039(n+1)]/A141710(n+1)`
-/

namespace A081703.P17158612941806252873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A141710 (n + 1) : ℚ)

end

end A081703.P17158612941806252873

/-! ## A081703.P5753313730230880250

`(A174590(n+1)*A306414(n+1)+1)/A141710(n+1)`
-/

namespace A081703.P5753313730230880250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174590 (n + 1) * A306414 (n + 1) + 1 : ℚ) / (A141710 (n + 1) : ℚ)

end

end A081703.P5753313730230880250

/-! ## A081703.P14339360565516116710

`A002997(n+1)/A298701(∑[A135717(n+1)]-A135717(n+1)+1)`
-/

namespace A081703.P14339360565516116710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℚ) / (A298701 (∑ j ∈ Finset.range (n + 1), f1 j - A135717 (n + 1) + 1).toNat : ℚ)

end

end A081703.P14339360565516116710

/-! ## A081703.P14915905221983773128

`(A174590(n+1)*A306414(n+1)+1)/A298701(∑[A135717(n+1)]-A135717(n+1)+1)`
-/

namespace A081703.P14915905221983773128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174590 (n + 1) * A306414 (n + 1) + 1 : ℚ) / (A298701 (∑ j ∈ Finset.range (n + 1), f1 j - A135717 (n + 1) + 1).toNat : ℚ)

end

end A081703.P14915905221983773128

/-! ## A081703.P7518796062778396021

`A002997(n+1)/A020639(A002997(n+1)/A081702(n+1))`
-/

namespace A081703.P7518796062778396021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℚ) / (A020639 (SequenceMachineLib.roundAway ((A002997 (n + 1) : ℚ) / (A081702 (n + 1) : ℚ))).toNat : ℚ)

end

end A081703.P7518796062778396021

/-! ## A081703.P13511213607712498360

`(A174590(n+1)*A306414(n+1)+1)/A020639((A174590(n+1)*A306414(n+1)+1)/A081702(n+1))`
-/

namespace A081703.P13511213607712498360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174590 (n + 1) * A306414 (n + 1) + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((A174590 (n + 1) * A306414 (n + 1) + 1 : ℚ) / (A081702 (n + 1) : ℚ))).toNat : ℚ)

end

end A081703.P13511213607712498360

/-!
# A081704: Let f(0)=1, f(1)=t, f(n+1) = (f(n)^2+t^n)/f(n-1). f(t) is a polynomial with integer coefficients. Then a(n) = f(n) when t=3.

The programs for A081704, the canonical program `A081704.P18299888481502434258` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081704 has offset 0).

The definition of A081704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081704.P18299888481502434258

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081704

/-- `5*a(n-1)-3*a(n-2)` -/
def P18299888481502434258.Spec : Prop :=
  ∀ n, P18299888481502434258.a n = A081704 n

theorem P18299888481502434258.correct : P18299888481502434258.Spec := by
  intro n
  simp only [A081704]

end A081704

/-! ## A081704.P12852593338155096202

`ogf((1-2x)/(1-5x+3x^2))`
-/

namespace A081704.P12852593338155096202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 3] n

end

end A081704.P12852593338155096202

namespace A081704

/-- `ogf((1-2x)/(1-5x+3x^2))` -/
def P12852593338155096202.Spec : Prop :=
  ∀ n, P12852593338155096202.a n = A081704 n

end A081704

/-! ## A081704.P1563075125579156488

`∑[A095939(n)]`
-/

namespace A081704.P1563075125579156488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081704.P1563075125579156488

namespace A081704

/-- `∑[A095939(n)]` -/
def P1563075125579156488.Spec : Prop :=
  ∀ n, P1563075125579156488.a n = A081704 n

end A081704

/-! ## A081704.P14386187562085154915

`A052961(n)+∑[A095940(n)]`
-/

namespace A081704.P14386187562085154915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081704.P14386187562085154915

namespace A081704

/-- `A052961(n)+∑[A095940(n)]` -/
def P14386187562085154915.Spec : Prop :=
  ∀ n, P14386187562085154915.a n = A081704 n

end A081704

/-! ## A081704.P8934011872546236191

`∑[A095934(n)-A095940(n)]`
-/

namespace A081704.P8934011872546236191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n - A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081704.P8934011872546236191

namespace A081704

/-- `∑[A095934(n)-A095940(n)]` -/
def P8934011872546236191.Spec : Prop :=
  ∀ n, P8934011872546236191.a n = A081704 n

end A081704

/-! ## A081704.P6001170857965447594

`(∑[A109114(n)]+2)/3`
-/

namespace A081704.P6001170857965447594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / 3

end

end A081704.P6001170857965447594

namespace A081704

/-- `(∑[A109114(n)]+2)/3` -/
def P6001170857965447594.Spec : Prop :=
  ∀ n, P6001170857965447594.a n = (A081704 n : ℚ)

end A081704

/-! ## A081704.P7930207046735659322

`A109114(n)+A106732(n)`
-/

namespace A081704.P7930207046735659322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109114 n + A106732 n

end

end A081704.P7930207046735659322

namespace A081704

/-- `A109114(n)+A106732(n)` -/
def P7930207046735659322.Spec : Prop :=
  ∀ n, P7930207046735659322.a n = A081704 n

end A081704

/-! ## A081704.P11605475946214091620

`A228569(n)-A052961(n)`
-/

namespace A081704.P11605475946214091620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228569 n - A052961 n

end

end A081704.P11605475946214091620

namespace A081704

/-- `A228569(n)-A052961(n)` -/
def P11605475946214091620.Spec : Prop :=
  ∀ n, P11605475946214091620.a n = A081704 n

end A081704

/-! ## A081704.P6937298672103986734

`A018902(n)-∑[A095940(n)]`
-/

namespace A081704.P6937298672103986734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081704.P6937298672103986734

namespace A081704

/-- `A018902(n)-∑[A095940(n)]` -/
def P6937298672103986734.Spec : Prop :=
  ∀ n, P6937298672103986734.a n = A081704 n

end A081704

/-! ## A081704.P15395092595379649324

`A052961(n+1)-A018902(n)`
-/

namespace A081704.P15395092595379649324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) - A018902 n

end

end A081704.P15395092595379649324

namespace A081704

/-- `A052961(n+1)-A018902(n)` -/
def P15395092595379649324.Spec : Prop :=
  ∀ n, P15395092595379649324.a n = A081704 n

end A081704

/-! ## A081704.P2617863202994562250

`A095939(n+1)-A109114(n)`
-/

namespace A081704.P2617863202994562250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) - A109114 n

end

end A081704.P2617863202994562250

namespace A081704

/-- `A095939(n+1)-A109114(n)` -/
def P2617863202994562250.Spec : Prop :=
  ∀ n, P2617863202994562250.a n = A081704 n

end A081704

/-! ## A081704.P16260441824067081601

`(A052961(n)+A018902(n))/2`
-/

namespace A081704.P16260441824067081601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052961 n + A018902 n : ℚ) / 2

end

end A081704.P16260441824067081601

namespace A081704

/-- `(A052961(n)+A018902(n))/2` -/
def P16260441824067081601.Spec : Prop :=
  ∀ n, P16260441824067081601.a n = (A081704 n : ℚ)

end A081704

/-! ## A081704.P9597183344450499967

`A010903(n)-2*A116415(n)`
-/

namespace A081704.P9597183344450499967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010903 n - 2 * A116415 n

end

end A081704.P9597183344450499967

namespace A081704

/-- `A010903(n)-2*A116415(n)` -/
def P9597183344450499967.Spec : Prop :=
  ∀ n, P9597183344450499967.a n = A081704 n

end A081704

/-! ## A081704.P7469912172206083519

`2*A018902(n)-A116415(n)`
-/

namespace A081704.P7469912172206083519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018902 n - A116415 n

end

end A081704.P7469912172206083519

namespace A081704

/-- `2*A018902(n)-A116415(n)` -/
def P7469912172206083519.Spec : Prop :=
  ∀ n, P7469912172206083519.a n = A081704 n

end A081704

/-! ## A081704.P9543717193157203405

`A095940(n+1)-∑[A095940(n)]`
-/

namespace A081704.P9543717193157203405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081704.P9543717193157203405

namespace A081704

/-- `A095940(n+1)-∑[A095940(n)]` -/
def P9543717193157203405.Spec : Prop :=
  ∀ n, P9543717193157203405.a n = A081704 n

end A081704

/-! ## A081704.P853937232925875863

`A052961(n+1)-A095940(n+1)`
-/

namespace A081704.P853937232925875863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) - A095940 (n + 1)

end

end A081704.P853937232925875863

namespace A081704

/-- `A052961(n+1)-A095940(n+1)` -/
def P853937232925875863.Spec : Prop :=
  ∀ n, P853937232925875863.a n = A081704 n

end A081704

/-! ## A081704.P16757750569193432269

`A095934(n+1)-2*A116415(n)`
-/

namespace A081704.P16757750569193432269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 (n + 1) - 2 * A116415 n

end

end A081704.P16757750569193432269

namespace A081704

/-- `A095934(n+1)-2*A116415(n)` -/
def P16757750569193432269.Spec : Prop :=
  ∀ n, P16757750569193432269.a n = A081704 n

end A081704

/-! ## A081704.P9812727272812587346

`A052961(n)-(A018902(n)-A116415(n))`
-/

namespace A081704.P9812727272812587346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n - (A018902 n - A116415 n)

end

end A081704.P9812727272812587346

namespace A081704

/-- `A052961(n)-(A018902(n)-A116415(n))` -/
def P9812727272812587346.Spec : Prop :=
  ∀ n, P9812727272812587346.a n = A081704 n

end A081704

/-! ## A081704.P16602466845319233132

`A052961(n+1)+A116415(n)-A095939(n+1)`
-/

namespace A081704.P16602466845319233132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) + (A116415 n - A095939 (n + 1))

end

end A081704.P16602466845319233132

namespace A081704

/-- `A052961(n+1)+A116415(n)-A095939(n+1)` -/
def P16602466845319233132.Spec : Prop :=
  ∀ n, P16602466845319233132.a n = A081704 n

end A081704

/-! ## A081704.P6184739507515695896

`A095940(n+1)+A095940(n+1)-A116415(n)`
-/

namespace A081704.P6184739507515695896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) + (A095940 (n + 1) - A116415 n)

end

end A081704.P6184739507515695896

namespace A081704

/-- `A095940(n+1)+A095940(n+1)-A116415(n)` -/
def P6184739507515695896.Spec : Prop :=
  ∀ n, P6184739507515695896.a n = A081704 n

end A081704

/-!
# A081705: k-tuple abundance of abundant numbers.

The programs for A081705, there is no canonical definition to state claims against.
-/

/-! ## A081705.P13805627861383331862

`gcd(A054385(n+1), A070581(A000081(n)))`
-/

namespace A081705.P13805627861383331862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054385 (n + 1)) (A070581 (A000081 n).toNat)

end

end A081705.P13805627861383331862

/-!
# A081706: Numbers n such that binary representation ends either in an odd number of ones followed by one zero or in an even number of ones.

The programs for A081706, the canonical program `A081706.P2549860807253607026` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081706 has offset 1).

The definition of A081706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081706.P2549860807253607026

`eq[0, xor(n, n+2)%3]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081706

/-- `eq[0, xor(n, n+2)%3]` -/
def P2549860807253607026.Spec : Prop :=
  ∀ n, (P2549860807253607026.a n : ℤ) = A081706 (n + 1)

theorem P2549860807253607026.correct : P2549860807253607026.Spec := by
  intro n
  simp only [A081706, Nat.add_sub_cancel]

end A081706

/-! ## A081706.P2137425268573637976

`A344346(n+1)-1`
-/

namespace A081706.P2137425268573637976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (n + 1) - 1

end

end A081706.P2137425268573637976

namespace A081706

/-- `A344346(n+1)-1` -/
def P2137425268573637976.Spec : Prop :=
  ∀ n, P2137425268573637976.a n = A081706 (n + 1)

theorem P2137425268573637976.correct : P2137425268573637976.Spec := by
  intro n
  simp only [A081706, Nat.add_sub_cancel, A081706.P2137425268573637976.a, A081706.P2549860807253607026.f1, A081706.P2549860807253607026.f2, A081706.P2549860807253607026.a, A344346, A344346.P16964101836230254873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081706

/-! ## A081706.P10167281710624708338

`comp[n*(A035263(n+1)+1)]`
-/

namespace A081706.P10167281710624708338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A035263 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081706.P10167281710624708338

namespace A081706

/-- `comp[n*(A035263(n+1)+1)]` -/
def P10167281710624708338.Spec : Prop :=
  ∀ n, (P10167281710624708338.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P6438169312473517893

`lt[1, A009117(val(or(1, n)+1, 2))]`
-/

namespace A081706.P6438169312473517893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 (SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081706.P6438169312473517893

namespace A081706

/-- `lt[1, A009117(val(or(1, n)+1, 2))]` -/
def P6438169312473517893.Spec : Prop :=
  ∀ n, (P6438169312473517893.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P12857212353944441238

`eq[2, A251101(val(or(1, n)+1, 2))]`
-/

namespace A081706.P12857212353944441238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251101 (SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081706.P12857212353944441238

namespace A081706

/-- `eq[2, A251101(val(or(1, n)+1, 2))]` -/
def P12857212353944441238.Spec : Prop :=
  ∀ n, (P12857212353944441238.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P15727013620984383135

`lt[3, A020639(xor(n, n+2)+1)]`
-/

namespace A081706.P15727013620984383135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081706.P15727013620984383135

namespace A081706

/-- `lt[3, A020639(xor(n, n+2)+1)]` -/
def P15727013620984383135.Spec : Prop :=
  ∀ n, (P15727013620984383135.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P18360498596577773335

`2*comp[∑[A080426(n+1)]-1]-n`
-/

namespace A081706.P18360498596577773335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A081706.P18360498596577773335

namespace A081706

/-- `2*comp[∑[A080426(n+1)]-1]-n` -/
def P18360498596577773335.Spec : Prop :=
  ∀ n, P18360498596577773335.a n = A081706 (n + 1)

end A081706

/-! ## A081706.P9531750226449654187

`lt[2, A256263(val((n+1)*(n+2), 2)+1)%4]`
-/

namespace A081706.P9531750226449654187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256263 (SequenceMachineLib.valuation ((n + 1) * (n + 2)) 2 + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081706.P9531750226449654187

namespace A081706

/-- `lt[2, A256263(val((n+1)*(n+2), 2)+1)%4]` -/
def P9531750226449654187.Spec : Prop :=
  ∀ n, (P9531750226449654187.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P865134425520603857

`eq[A035263(n+1), A035263(n+2)]`
-/

namespace A081706.P865134425520603857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081706.P865134425520603857

namespace A081706

/-- `eq[A035263(n+1), A035263(n+2)]` -/
def P865134425520603857.Spec : Prop :=
  ∀ n, (P865134425520603857.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P6286930245390615069

`eq[A089608(n+1), A089608(n+2)]`
-/

namespace A081706.P6286930245390615069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089608 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081706.P6286930245390615069

namespace A081706

/-- `eq[A089608(n+1), A089608(n+2)]` -/
def P6286930245390615069.Spec : Prop :=
  ∀ n, (P6286930245390615069.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P5764674848659724395

`eq[A010060(n+2), A010060(n)]`
-/

namespace A081706.P5764674848659724395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081706.P5764674848659724395

namespace A081706

/-- `eq[A010060(n+2), A010060(n)]` -/
def P5764674848659724395.Spec : Prop :=
  ∀ n, (P5764674848659724395.a n : ℤ) = A081706 (n + 1)

end A081706

/-! ## A081706.P11192759551813233897

`A161627(Δ[n²])/2`
-/

namespace A081706.P11192759551813233897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161627 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A081706.P11192759551813233897

namespace A081706

/-- `A161627(Δ[n²])/2` -/
def P11192759551813233897.Spec : Prop :=
  ∀ n, P11192759551813233897.a n = (A081706 (n + 1) : ℚ)

end A081706

/-! ## A081706.P13677966311381491041

`record[or(2, A161641(n+1))]`
-/

namespace A081706.P13677966311381491041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A161641 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081706.P13677966311381491041

namespace A081706

/-- `record[or(2, A161641(n+1))]` -/
def P13677966311381491041.Spec : Prop :=
  ∀ n, P13677966311381491041.a n = A081706 (n + 1)

end A081706

/-! ## A081706.P6062153724241489028

`A161641(A014601(n+1))`
-/

namespace A081706.P6062153724241489028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A014601 (n + 1)).toNat

end

end A081706.P6062153724241489028

namespace A081706

/-- `A161641(A014601(n+1))` -/
def P6062153724241489028.Spec : Prop :=
  ∀ n, P6062153724241489028.a n = A081706 (n + 1)

end A081706

/-! ## A081706.P6268023900410513226

`A161641(A154708(n+1))`
-/

namespace A081706.P6268023900410513226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A154708 (n + 1)).toNat

end

end A081706.P6268023900410513226

namespace A081706

/-- `A161641(A154708(n+1))` -/
def P6268023900410513226.Spec : Prop :=
  ∀ n, P6268023900410513226.a n = A081706 (n + 1)

end A081706

/-! ## A081706.P159691764040593264

`A161641(A042964(n+1)+1)`
-/

namespace A081706.P159691764040593264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A042964 (n + 1) + 1).toNat

end

end A081706.P159691764040593264

namespace A081706

/-- `A161641(A042964(n+1)+1)` -/
def P159691764040593264.Spec : Prop :=
  ∀ n, P159691764040593264.a n = A081706 (n + 1)

end A081706

/-! ## A081706.P13740588648965203763

`A161641(A053438(n+1)+1)`
-/

namespace A081706.P13740588648965203763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161641 (A053438 (n + 1) + 1).toNat

end

end A081706.P13740588648965203763

namespace A081706

/-- `A161641(A053438(n+1)+1)` -/
def P13740588648965203763.Spec : Prop :=
  ∀ n, P13740588648965203763.a n = A081706 (n + 1)

end A081706

/-! ## A081706.P10056132792538002093

`comp[A161674(n+1)]`
-/

namespace A081706.P10056132792538002093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081706.P10056132792538002093

namespace A081706

/-- `comp[A161674(n+1)]` -/
def P10056132792538002093.Spec : Prop :=
  ∀ n, (P10056132792538002093.a n : ℤ) = A081706 (n + 1)

end A081706

/-!
# A081707: a(n) = tau(n) - bigomega(n) = A000005(n) - A001222(n).

The programs for A081707, the canonical program `A081707.P11488317504414789232` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081707 has offset 1).

The definition of A081707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081707.P11488317504414789232

`A000005(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A081707

/-- `A000005(n+1)-A001222(n+1)` -/
def P11488317504414789232.Spec : Prop :=
  ∀ n, P11488317504414789232.a n = A081707 (n + 1)

theorem P11488317504414789232.correct : P11488317504414789232.Spec := by
  intro n
  simp only [A081707, Nat.add_sub_cancel]

end A081707

/-! ## A081707.P7111256319891324045

`∏{e}[n+1, #+1]-∑{e}[n+1, #]`
-/

namespace A081707.P7111256319891324045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A081707.P7111256319891324045

namespace A081707

/-- `∏{e}[n+1, #+1]-∑{e}[n+1, #]` -/
def P7111256319891324045.Spec : Prop :=
  ∀ n, P7111256319891324045.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P10470532518108836151

`1-A162906(n+1)+n`
-/

namespace A081707.P10470532518108836151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A162906 (n + 1) + (n : ℤ)

end

end A081707.P10470532518108836151

namespace A081707

/-- `1-A162906(n+1)+n` -/
def P10470532518108836151.Spec : Prop :=
  ∀ n, P10470532518108836151.a n = A081707 (n + 1)

theorem P10470532518108836151.correct : P10470532518108836151.Spec := by
  intro n
  simp only [A081707, Nat.add_sub_cancel, A081707.P10470532518108836151.a, A081707.P11488317504414789232.a, A000005, A000005.P16091521709108585461.a, A001222, A001222.P11318177267732088261.a, A162906, A162906.P6107126863955034378.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081707

/-! ## A081707.P14657953225832029516

`∑{d}[n+1, round(acot(A014963(#)))]`
-/

namespace A081707.P14657953225832029516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (A014963 d : ℝ))

end

end A081707.P14657953225832029516

namespace A081707

/-- `∑{d}[n+1, round(acot(A014963(#)))]` -/
def P14657953225832029516.Spec : Prop :=
  ∀ n, P14657953225832029516.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P3030650312961875350

`∑{d}[n+1, floor(atan(A001221(#)))]+1`
-/

namespace A081707.P3030650312961875350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (A001221 d : ℝ)⌋ + 1

end

end A081707.P3030650312961875350

namespace A081707

/-- `∑{d}[n+1, floor(atan(A001221(#)))]+1` -/
def P3030650312961875350.Spec : Prop :=
  ∀ n, P3030650312961875350.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P5437563415004646350

`A000005(2*n+1-n)-∑{e}[n+1, #]`
-/

namespace A081707.P5437563415004646350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1 - n) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A081707.P5437563415004646350

namespace A081707

/-- `A000005(2*n+1-n)-∑{e}[n+1, #]` -/
def P5437563415004646350.Spec : Prop :=
  ∀ n, P5437563415004646350.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P2438808919313971838

`A324191(A046523(n+1))`
-/

namespace A081707.P2438808919313971838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A046523 (n + 1)).toNat

end

end A081707.P2438808919313971838

namespace A081707

/-- `A324191(A046523(n+1))` -/
def P2438808919313971838.Spec : Prop :=
  ∀ n, P2438808919313971838.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P14179504968069735013

`A324191(A071364(n+1))`
-/

namespace A081707.P14179504968069735013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A071364 (n + 1)).toNat

end

end A081707.P14179504968069735013

namespace A081707

/-- `A324191(A071364(n+1))` -/
def P14179504968069735013.Spec : Prop :=
  ∀ n, P14179504968069735013.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P6437795688126612787

`A324191(A097272(n+1))`
-/

namespace A081707.P6437795688126612787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (A097272 (n + 1)).toNat

end

end A081707.P6437795688126612787

namespace A081707

/-- `A324191(A097272(n+1))` -/
def P6437795688126612787.Spec : Prop :=
  ∀ n, P6437795688126612787.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P14476567586573259906

`A325765(n)-A252736(n+1)`
-/

namespace A081707.P14476567586573259906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - A252736 (n + 1)

end

end A081707.P14476567586573259906

namespace A081707

/-- `A325765(n)-A252736(n+1)` -/
def P14476567586573259906.Spec : Prop :=
  ∀ n, P14476567586573259906.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P7343562969294300557

`Δ[A006218(n)]-A001222(n+1)`
-/

namespace A081707.P7343562969294300557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001222 (n + 1)

end

end A081707.P7343562969294300557

namespace A081707

/-- `Δ[A006218(n)]-A001222(n+1)` -/
def P7343562969294300557.Spec : Prop :=
  ∀ n, P7343562969294300557.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P4464104537640528171

`A000005(n+1)-Δ[A022559(n)]`
-/

namespace A081707.P4464104537640528171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (f1 (n + 1) - f1 n)

end

end A081707.P4464104537640528171

namespace A081707

/-- `A000005(n+1)-Δ[A022559(n)]` -/
def P4464104537640528171.Spec : Prop :=
  ∀ n, P4464104537640528171.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P8696088198493637520

`Δ[A054519(n)]-A001222(n+1)`
-/

namespace A081707.P8696088198493637520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001222 (n + 1)

end

end A081707.P8696088198493637520

namespace A081707

/-- `Δ[A054519(n)]-A001222(n+1)` -/
def P8696088198493637520.Spec : Prop :=
  ∀ n, P8696088198493637520.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P13065946455883870056

`A081400(n+1)+A005361(n+1)`
-/

namespace A081707.P13065946455883870056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (n + 1) + A005361 (n + 1)

end

end A081707.P13065946455883870056

namespace A081707

/-- `A081400(n+1)+A005361(n+1)` -/
def P13065946455883870056.Spec : Prop :=
  ∀ n, P13065946455883870056.a n = A081707 (n + 1)

theorem P13065946455883870056.correct : P13065946455883870056.Spec := by
  intro n
  simp only [A081707, Nat.add_sub_cancel, A081707.P13065946455883870056.a, A081707.P11488317504414789232.a, A000005, A000005.P16091521709108585461.a, A001222, A001222.P11318177267732088261.a, A005361, A005361.P4811270261471152635.f1, A005361.P4811270261471152635.a, A081400, A081400.P8046056568042130816.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081707

/-! ## A081707.P2667226887117462822

`A135767(n+1)+A001221(n+1)`
-/

namespace A081707.P2667226887117462822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135767 (n + 1) + A001221 (n + 1)

end

end A081707.P2667226887117462822

namespace A081707

/-- `A135767(n+1)+A001221(n+1)` -/
def P2667226887117462822.Spec : Prop :=
  ∀ n, P2667226887117462822.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P14733662664797971041

`A325794(n+1)+A318995(n+1)`
-/

namespace A081707.P14733662664797971041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325794 (n + 1) + A318995 (n + 1)

end

end A081707.P14733662664797971041

namespace A081707

/-- `A325794(n+1)+A318995(n+1)` -/
def P14733662664797971041.Spec : Prop :=
  ∀ n, P14733662664797971041.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P8090456669729097347

`A324191(n+1)+A324179(n+1)`
-/

namespace A081707.P8090456669729097347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324191 (n + 1) + A324179 (n + 1)

end

end A081707.P8090456669729097347

namespace A081707

/-- `A324191(n+1)+A324179(n+1)` -/
def P8090456669729097347.Spec : Prop :=
  ∀ n, P8090456669729097347.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P11508714619236985107

`A033273(n+1)-A046660(n+1)`
-/

namespace A081707.P11508714619236985107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A046660 (n + 1)

end

end A081707.P11508714619236985107

namespace A081707

/-- `A033273(n+1)-A046660(n+1)` -/
def P11508714619236985107.Spec : Prop :=
  ∀ n, P11508714619236985107.a n = A081707 (n + 1)

theorem P11508714619236985107.correct : P11508714619236985107.Spec := by
  intro n
  simp only [A081707, Nat.add_sub_cancel, A081707.P11508714619236985107.a, A081707.P11488317504414789232.a, A000005, A000005.P16091521709108585461.a, A001222, A001222.P11318177267732088261.a, A033273, A033273.P18420659424697249895.a, A046660, A046660.P3614759855976580945.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A029837, A029837.P1050578713049589.a, A059841, A059841.P2666504972441551157.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081707

/-! ## A081707.P13116608956166370223

`A334954(n+1)-A073093(n+1)`
-/

namespace A081707.P13116608956166370223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A073093 (n + 1)

end

end A081707.P13116608956166370223

namespace A081707

/-- `A334954(n+1)-A073093(n+1)` -/
def P13116608956166370223.Spec : Prop :=
  ∀ n, P13116608956166370223.a n = A081707 (n + 1)

end A081707

/-! ## A081707.P8217982800658482177

`sqrt(A035116(n+1))-A001222(n+1)`
-/

namespace A081707.P8217982800658482177
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ) - (A001222 (n + 1) : ℝ)

end

end A081707.P8217982800658482177

namespace A081707

/-- `sqrt(A035116(n+1))-A001222(n+1)` -/
def P8217982800658482177.Spec : Prop :=
  ∀ n, P8217982800658482177.a n = (A081707 (n + 1) : ℝ)

end A081707

/-!
# A081708: a(n) = a(n-1) + 64*a(n-2) starting with a(0) = 2 and a(1) = 1.

The programs for A081708, the canonical program `A081708.P13391511941029715111` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081708 has offset 0).

The definition of A081708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+64*a(n-2)` (program `A081708.P13391511941029715111`, by `A081708.P13391511941029715111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081708.P13391511941029715111

`a(n-1)+64*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081708

/-- `a(n-1)+64*a(n-2)` -/
def P13391511941029715111.Spec : Prop :=
  ∀ n, (P13391511941029715111.a n : ℤ) = A081708 n

theorem P13391511941029715111.correct : P13391511941029715111.Spec := by
  intro n
  simp only [A081708]

end A081708

/-! ## A081708.P4828829333197067741

`65*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A081708.P4828829333197067741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  65 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A081708.P4828829333197067741

namespace A081708

/-- `65*a(n-2)-(a(n-2)-a(n-1))` -/
def P4828829333197067741.Spec : Prop :=
  ∀ n, P4828829333197067741.a n = A081708 n

end A081708

/-! ## A081708.P12925467757563944107

`A152691(a(n-2))+a(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A081708.P12925467757563944107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A152691 (a (n - 2)).toNat + a (n - 1)

end

end A081708.P12925467757563944107

namespace A081708

/-- `A152691(a(n-2))+a(n-1)` -/
def P12925467757563944107.Spec : Prop :=
  ∀ n, P12925467757563944107.a n = A081708 n

end A081708

/-!
# A081711: Numbers k such that k! + k# - 1 is prime, where k# is the primorial function A034386(k).

The programs for A081711, there is no canonical definition to state claims against.
-/

/-! ## A081711.P1955581301215651965

`eq[A001227(n+5), A271269(A321648(2*(n+1)))]`
-/

namespace A081711.P1955581301215651965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (A321648 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081711.P1955581301215651965

/-! ## A081711.P7011165861116805850

`lt[A106619(n+2), A106591(n)]+1`
-/

namespace A081711.P7011165861116805850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A081711.P7011165861116805850

/-! ## A081711.P16562040792608748205

`lt[A270831(n+1), A304442(A181821(n+1))]`
-/

namespace A081711.P16562040792608748205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A181821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081711.P16562040792608748205

/-!
# A081713: n! - n# - 1 is prime, where n# is the primorial function.

The programs for A081713, there is no canonical definition to state claims against.
-/

/-! ## A081713.P12057639926479062393

`A006530(A113357(n))+3`
-/

namespace A081713.P12057639926479062393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A113357 n).toNat + 3

end

end A081713.P12057639926479062393

/-!
# A081714: a(n) = F(n)*L(n+1) where F=Fibonacci and L=Lucas numbers.

The programs for A081714, the canonical program `A081714.P7362606135924003935` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081714 has offset 0).

The definition of A081714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081714.P7362606135924003935

`A122367(n)-(-1)^n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081714

/-- `A122367(n)-(-1)^n` -/
def P7362606135924003935.Spec : Prop :=
  ∀ n, P7362606135924003935.a n = A081714 n

theorem P7362606135924003935.correct : P7362606135924003935.Spec := by
  intro n
  simp only [A081714]

end A081714

/-! ## A081714.P10934930201050964830

`(A001254(n+1)-A001906(n+1))/2`
-/

namespace A081714.P10934930201050964830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001254 (n + 1) - A001906 (n + 1) : ℚ) / 2

end

end A081714.P10934930201050964830

namespace A081714

/-- `(A001254(n+1)-A001906(n+1))/2` -/
def P10934930201050964830.Spec : Prop :=
  ∀ n, P10934930201050964830.a n = (A081714 n : ℚ)

end A081714

/-! ## A081714.P8619276467570230126

`ogf((3x-2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A081714.P8619276467570230126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -2, -2, 1] n

end

end A081714.P8619276467570230126

namespace A081714

/-- `ogf((3x-2x^2)/(1-2x-2x^2+x^3))` -/
def P8619276467570230126.Spec : Prop :=
  ∀ n, P8619276467570230126.a n = A081714 n

end A081714

/-! ## A081714.P2259908059850063332

`ceil(ϕ^(2*n)-a(n-1))` with `a(0)=0`
-/

namespace A081714.P2259908059850063332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio ^ (2 * n) - (a (n - 1) : ℝ)⌉

end

end A081714.P2259908059850063332

namespace A081714

/-- `ceil(ϕ^(2*n)-a(n-1))` -/
def P2259908059850063332.Spec : Prop :=
  ∀ n, P2259908059850063332.a n = A081714 n

end A081714

/-! ## A081714.P4125781590873615506

`round(ϕ^(2*n)-a(n-1))` with `a(0)=0`
-/

namespace A081714.P4125781590873615506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n) - (a (n - 1) : ℝ))

end

end A081714.P4125781590873615506

namespace A081714

/-- `round(ϕ^(2*n)-a(n-1))` -/
def P4125781590873615506.Spec : Prop :=
  ∀ n, P4125781590873615506.a n = A081714 n

end A081714

/-! ## A081714.P1184002932988587525

`-floor(a(n-1)-ϕ^(2*n))` with `a(0)=0`
-/

namespace A081714.P1184002932988587525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -⌊(a (n - 1) : ℝ) - Real.goldenRatio ^ (2 * n)⌋

end

end A081714.P1184002932988587525

namespace A081714

/-- `-floor(a(n-1)-ϕ^(2*n))` -/
def P1184002932988587525.Spec : Prop :=
  ∀ n, P1184002932988587525.a n = A081714 n

end A081714

/-! ## A081714.P12188889059022359583

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A081714.P12188889059022359583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A081714.P12188889059022359583

namespace A081714

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P12188889059022359583.Spec : Prop :=
  ∀ n, P12188889059022359583.a n = A081714 n

end A081714

/-! ## A081714.P11113983742948768776

`A111573(2*n)`
-/

namespace A081714.P11113983742948768776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 (2 * n)

end

end A081714.P11113983742948768776

namespace A081714

/-- `A111573(2*n)` -/
def P11113983742948768776.Spec : Prop :=
  ∀ n, P11113983742948768776.a n = A081714 n

end A081714

/-! ## A081714.P9890876902358566

`record[-A186679(n)]`
-/

namespace A081714.P9890876902358566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A186679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081714.P9890876902358566

namespace A081714

/-- `record[-A186679(n)]` -/
def P9890876902358566.Spec : Prop :=
  ∀ n, P9890876902358566.a n = A081714 n

end A081714

/-! ## A081714.P12363457016872292204

`abs(1-A099496(n))`
-/

namespace A081714.P12363457016872292204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A099496 n|

end

end A081714.P12363457016872292204

namespace A081714

/-- `abs(1-A099496(n))` -/
def P12363457016872292204.Spec : Prop :=
  ∀ n, P12363457016872292204.a n = A081714 n

end A081714

/-! ## A081714.P11802087038901732158

`A295675(2*(n+2))`
-/

namespace A081714.P11802087038901732158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295675 (2 * (n + 2))

end

end A081714.P11802087038901732158

namespace A081714

/-- `A295675(2*(n+2))` -/
def P11802087038901732158.Spec : Prop :=
  ∀ n, P11802087038901732158.a n = A081714 n

end A081714

/-! ## A081714.P8996546463585253332

`xor(2, A128534(n+1))`
-/

namespace A081714.P8996546463585253332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A128534 (n + 1))

end

end A081714.P8996546463585253332

namespace A081714

/-- `xor(2, A128534(n+1))` -/
def P8996546463585253332.Spec : Prop :=
  ∀ n, P8996546463585253332.a n = A081714 n

end A081714

/-! ## A081714.P270078045410680427

`xor(2, A074662(2*n))`
-/

namespace A081714.P270078045410680427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A074662 (2 * n))

end

end A081714.P270078045410680427

namespace A081714

/-- `xor(2, A074662(2*n))` -/
def P270078045410680427.Spec : Prop :=
  ∀ n, P270078045410680427.a n = A081714 n

end A081714

/-! ## A081714.P15148057197912347874

`xor(2, A236144(2*n))`
-/

namespace A081714.P15148057197912347874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A236144 (2 * n))

end

end A081714.P15148057197912347874

namespace A081714

/-- `xor(2, A236144(2*n))` -/
def P15148057197912347874.Spec : Prop :=
  ∀ n, P15148057197912347874.a n = A081714 n

end A081714

/-! ## A081714.P11483299215826497027

`abs(1-∑[A219233(n)])`
-/

namespace A081714.P11483299215826497027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A081714.P11483299215826497027

namespace A081714

/-- `abs(1-∑[A219233(n)])` -/
def P11483299215826497027.Spec : Prop :=
  ∀ n, P11483299215826497027.a n = A081714 n

end A081714

/-! ## A081714.P11707547941290701098

`A000045(Δ[n²])-(-1)^n`
-/

namespace A081714.P11707547941290701098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (-1) ^ n

end

end A081714.P11707547941290701098

namespace A081714

/-- `A000045(Δ[n²])-(-1)^n` -/
def P11707547941290701098.Spec : Prop :=
  ∀ n, P11707547941290701098.a n = A081714 n

end A081714

/-! ## A081714.P8874252080016617029

`A000032(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A081714.P8874252080016617029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000032 (2 * n) - a (n - 1)

end

end A081714.P8874252080016617029

namespace A081714

/-- `A000032(2*n)-a(n-1)` -/
def P8874252080016617029.Spec : Prop :=
  ∀ n, P8874252080016617029.a n = A081714 n

end A081714

/-! ## A081714.P10908099155222087864

`Δ[A000032(n-2+n)+a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A081714.P10908099155222087864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000032 ((n : ℤ) - 2 + (n : ℤ)).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081714.P10908099155222087864

namespace A081714

/-- `Δ[A000032(n-2+n)+a(n-2)]` -/
def P10908099155222087864.Spec : Prop :=
  ∀ n, P10908099155222087864.a n = A081714 n

end A081714

/-! ## A081714.P14752649988724832573

`A226649(A047470(n+1))`
-/

namespace A081714.P14752649988724832573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226649 (A047470 (n + 1)).toNat

end

end A081714.P14752649988724832573

namespace A081714

/-- `A226649(A047470(n+1))` -/
def P14752649988724832573.Spec : Prop :=
  ∀ n, P14752649988724832573.a n = A081714 n

end A081714

/-! ## A081714.P2545150754922751575

`A027941(n)+A010673(n)`
-/

namespace A081714.P2545150754922751575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + A010673 n

end

end A081714.P2545150754922751575

namespace A081714

/-- `A027941(n)+A010673(n)` -/
def P2545150754922751575.Spec : Prop :=
  ∀ n, P2545150754922751575.a n = A081714 n

end A081714

/-!
# A081715: Numbers n such that 3^n+2 is a semiprime.

The programs for A081715, there is no canonical definition to state claims against.
-/

/-! ## A081715.P10903796820223233578

`eq[2, A114141(n)]`
-/

namespace A081715.P10903796820223233578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081715.P10903796820223233578

/-! ## A081715.P11749968969467561596

`lt[A114141(n+1), 3]+1`
-/

namespace A081715.P11749968969467561596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114141 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A081715.P11749968969467561596

/-! ## A081715.P783112466329294543

`lt[A114141(A028310(n)), 3]`
-/

namespace A081715.P783112466329294543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114141 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081715.P783112466329294543

/-! ## A081715.P5787961219402664899

`lt[A110622(A114141(n)²), 2]`
-/

namespace A081715.P5787961219402664899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A114141 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081715.P5787961219402664899

/-! ## A081715.P15940986623210763644

`lt[A001222(A114141(n)²), 3]`
-/

namespace A081715.P15940986623210763644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114141 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081715.P15940986623210763644

/-!
# A081716: Smallest number x such that phi(x)=A000010(x) has exactly n different decimal digits.

The programs for A081716, there is no canonical definition to state claims against.
-/

/-! ## A081716.P17183507924754877839

`A151800(A181547(n)+A002283(n))`
-/

namespace A081716.P17183507924754877839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A181547 n + A002283 n).toNat

end

end A081716.P17183507924754877839

/-!
# A081717: Primes prime(j) such that prime(j) + j is composite.

The programs for A081717, the canonical program `A081717.P73423759083911477` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081717 has offset 1).

The definition of A081717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081717.P1843754118156866642

`A000040(lt[1, A072064(n+1)]+1)`
-/

namespace A081717.P1843754118156866642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A081717.P1843754118156866642

namespace A081717

/-- `A000040(lt[1, A072064(n+1)]+1)` -/
def P1843754118156866642.Spec : Prop :=
  ∀ n, P1843754118156866642.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P1878659149374494186

`A006005(lt[1, A072064(n+1)]+1)`
-/

namespace A081717.P1878659149374494186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A081717.P1878659149374494186

namespace A081717

/-- `A006005(lt[1, A072064(n+1)]+1)` -/
def P1878659149374494186.Spec : Prop :=
  ∀ n, P1878659149374494186.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P6087903472820079781

`A000040(comp[A064402(n+1)-1]+1)`
-/

namespace A081717.P6087903472820079781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064402 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A081717.P6087903472820079781

namespace A081717

/-- `A000040(comp[A064402(n+1)-1]+1)` -/
def P6087903472820079781.Spec : Prop :=
  ∀ n, P6087903472820079781.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P73423759083911477

`p?[(n+1)*A005171(A000720(n+1)+n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081717

/-- `p?[(n+1)*A005171(A000720(n+1)+n+1)]` -/
def P73423759083911477.Spec : Prop :=
  ∀ n, P73423759083911477.a n = A081717 (n + 1)

theorem P73423759083911477.correct : P73423759083911477.Spec := by
  intro n
  simp only [A081717, Nat.add_sub_cancel]

end A081717

/-! ## A081717.P9117804772943700614

`p?[n-A055672(A095117(n))]`
-/

namespace A081717.P9117804772943700614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055672 (A095117 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P9117804772943700614

namespace A081717

/-- `p?[n-A055672(A095117(n))]` -/
def P9117804772943700614.Spec : Prop :=
  ∀ n, P9117804772943700614.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P3882687710387069956

`p?[n-A055671(A230980(n)+n)]`
-/

namespace A081717.P3882687710387069956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055671 (A230980 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P3882687710387069956

namespace A081717

/-- `p?[n-A055671(A230980(n)+n)]` -/
def P3882687710387069956.Spec : Prop :=
  ∀ n, P3882687710387069956.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P8950850682935104909

`p?[A014685(A014688(n+1))-(n+1)]`
-/

namespace A081717.P8950850682935104909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014685 (A014688 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P8950850682935104909

namespace A081717

/-- `p?[A014685(A014688(n+1))-(n+1)]` -/
def P8950850682935104909.Spec : Prop :=
  ∀ n, P8950850682935104909.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P15774165874947113881

`p?[(n+1)*A049076(A000720(n+1)+n+1)]`
-/

namespace A081717.P15774165874947113881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049076 (A000720 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P15774165874947113881

namespace A081717

/-- `p?[(n+1)*A049076(A000720(n+1)+n+1)]` -/
def P15774165874947113881.Spec : Prop :=
  ∀ n, P15774165874947113881.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P4611694359850161852

`record[A006530(A165634(A002808(n+7)))]`
-/

namespace A081717.P4611694359850161852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A165634 (A002808 (n + 7)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081717.P4611694359850161852

namespace A081717

/-- `record[A006530(A165634(A002808(n+7)))]` -/
def P4611694359850161852.Spec : Prop :=
  ∀ n, P4611694359850161852.a n = A081717 (n + 1)

end A081717

/-! ## A081717.P7827648837301560575

`p?[A000040(n+1)-A061397(A014688(n+1))]`
-/

namespace A081717.P7827648837301560575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A061397 (A014688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081717.P7827648837301560575

namespace A081717

/-- `p?[A000040(n+1)-A061397(A014688(n+1))]` -/
def P7827648837301560575.Spec : Prop :=
  ∀ n, P7827648837301560575.a n = A081717 (n + 1)

end A081717

/-!
# A081718: Array T(n,m) read by antidiagonals, where T(n,m) = number of n X infinity multiplicity integer partition (mip) matrix of m (n >= 0, m >= 0).

The programs for A081718, there is no canonical definition to state claims against.
-/

/-! ## A081718.P16313104167848021033

`A290353(n)-A025469(A211399(n))`
-/

namespace A081718.P16313104167848021033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 n - A025469 (A211399 n).toNat

end

end A081718.P16313104167848021033

/-! ## A081718.P4288043870745335102

`A290353(n)-A277157(A256384(n))`
-/

namespace A081718.P4288043870745335102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 n - A277157 (A256384 n).toNat

end

end A081718.P4288043870745335102

/-! ## A081718.P3975105065178946887

`A290353(n)-A185284(A091298(n+1))`
-/

namespace A081718.P3975105065178946887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 n - A185284 (A091298 (n + 1)).toNat

end

end A081718.P3975105065178946887

/-! ## A081718.P13378808583487497896

`A290353(n)-A070109(A168347(n+1))`
-/

namespace A081718.P13378808583487497896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290353 n - A070109 (A168347 (n + 1)).toNat

end

end A081718.P13378808583487497896

/-!
# A081719: Triangle T(n,k) read by rows, related to Faà di Bruno's formula (n >= 0 and 0 <= k <= n).

The programs for A081719, there is no canonical definition to state claims against.
-/

/-! ## A081719.P16106982056815950658

`A174059(A274581(n))%A353345(n+1)`
-/

namespace A081719.P16106982056815950658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174059 (A274581 n).toNat) (A353345 (n + 1))

end

end A081719.P16106982056815950658

/-! ## A081719.P2646874644441820964

`A055086(A085852(n))%A194697(n+1)`
-/

namespace A081719.P2646874644441820964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055086 (A085852 n).toNat) (A194697 (n + 1))

end

end A081719.P2646874644441820964

/-! ## A081719.P3321583176142173713

`A243109(A122935(n)%A234688(n+1))`
-/

namespace A081719.P3321583176142173713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243109 (Int.tmod (A122935 n) (A234688 (n + 1))).toNat

end

end A081719.P3321583176142173713

/-! ## A081719.P5986508978673356487

`A372594(A123125(n))`
-/

namespace A081719.P5986508978673356487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372594 (A123125 n).toNat

end

end A081719.P5986508978673356487

/-! ## A081719.P9201308538156711306

`A038575(5^A097805(n))`
-/

namespace A081719.P9201308538156711306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A081719.P9201308538156711306

/-!
# A081721: Number of bracelets of n beads in up to n colors.

The programs for A081721, there is no canonical definition to state claims against.
-/

/-! ## A081721.P86886888395386661

`A081720(∑[n+1])`
-/

namespace A081721.P86886888395386661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081721.P86886888395386661

/-! ## A081721.P11424385203194234270

`record[A081720(n+1)/A039598(n)]`
-/

namespace A081721.P11424385203194234270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081720 (n + 1) : ℚ) / (A039598 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081721.P11424385203194234270

/-! ## A081721.P3930212047366672524

`record[A081720(n+1)/A054335(n)]`
-/

namespace A081721.P3930212047366672524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081720 (n + 1) : ℚ) / (A054335 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081721.P3930212047366672524

/-! ## A081721.P696123745074683432

`record[A081720(n+1)/A008277(n+1)]`
-/

namespace A081721.P696123745074683432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081720 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081721.P696123745074683432

/-! ## A081721.P17334160895352491060

`record[A081720(A110654(A264754(n)))]`
-/

namespace A081721.P17334160895352491060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081720 (A110654 (A264754 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081721.P17334160895352491060

/-!
# A081722: Row sums of triangle in A081720.

The programs for A081722, there is no canonical definition to state claims against.
-/

/-! ## A081722.P16538971328406059745

`∑[A326888(n+2)+A071840(or(3^n+7^n+1, 5^n-(3^n+2*n)))]`
-/

namespace A081722.P16538971328406059745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326888 (n + 2) + A071840 (Int.lor (3 ^ n + (7 ^ n + 1) : ℤ) ((5 ^ n : ℤ) - (3 ^ n + 2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081722.P16538971328406059745

/-!
# A081723: Let b(n)=floor((3/2)^n), c(n)=floor((4/3)^n); sequence gives values of k such that b(k+1) / b(k) = 3/2 and c(k+1) / c(k) = 4/3.

The programs for A081723, the canonical program `A081723.P16579669309368322344` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081723 has offset 1).

The definition of A081723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081723.P16579669309368322344

`∩[A065554(n+1), A065564(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081723

/-- `∩[A065554(n+1), A065564(n+1)]` -/
def P16579669309368322344.Spec : Prop :=
  ∀ n, (P16579669309368322344.a n : ℤ) = A081723 (n + 1)

theorem P16579669309368322344.correct : P16579669309368322344.Spec := by
  intro n
  simp only [A081723, Nat.add_sub_cancel]

end A081723

/-! ## A081723.P2570577530302018509

`∩[eq[0, A064628(n+1)%4], A065554(n+3)]`
-/

namespace A081723.P2570577530302018509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064628 (n + 1)) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A081723.P2570577530302018509

namespace A081723

/-- `∩[eq[0, A064628(n+1)%4], A065554(n+3)]` -/
def P2570577530302018509.Spec : Prop :=
  ∀ n, (P2570577530302018509.a n : ℤ) = A081723 (n + 1)

end A081723

/-!
# A081724: Let b(n)=floor((3/2)^n), c(n)=floor((4/3)^n), d(n)=floor((5/4)^n); sequence gives values of n such that b(n+1)/b(n)=3/2, c(n+1)/c(n)=4/3 and d(n+1)/d(n)=5/4.

The programs for A081724, there is no canonical definition to state claims against.
-/

/-! ## A081724.P10296661385843456870

`∩[A065566(n+1), A081723(n+1)]`
-/

namespace A081724.P10296661385843456870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081724.P10296661385843456870

/-!
# A081725: a(n) = A065560(n) + n - prime(n).

The programs for A081725, there is no canonical definition to state claims against.
-/

/-! ## A081725.P10686011443247940976

`A065560(n+2)-A014689(n+2)`
-/

namespace A081725.P10686011443247940976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065560 (n + 2) - A014689 (n + 2)

end

end A081725.P10686011443247940976

/-! ## A081725.P7010507312731703611

`A238966(A024494(n+1))+A048793(n)`
-/

namespace A081725.P7010507312731703611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (A024494 (n + 1)).toNat + A048793 n

end

end A081725.P7010507312731703611

/-!
# A081727: Length of periods of Euler numbers modulo n.

The programs for A081727, there is no canonical definition to state claims against.
-/

/-! ## A081727.P9676041076440882438

`gcd(A011773(n+1), A326142(A292354(n+1)))`
-/

namespace A081727.P9676041076440882438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011773 (n + 1)) (A326142 (A292354 (n + 1)).toNat)

end

end A081727.P9676041076440882438

/-! ## A081727.P12583512848984768388

`gcd(A000010(n+1), A308951(A236914(n+3)))`
-/

namespace A081727.P12583512848984768388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A308951 (A236914 (n + 3)).toNat)

end

end A081727.P12583512848984768388

/-! ## A081727.P11117910251335913878

`gcd(A000010(n+1), A119047(A337334(n)))`
-/

namespace A081727.P11117910251335913878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A119047 (A337334 n).toNat)

end

end A081727.P11117910251335913878

/-! ## A081727.P13517590607003723646

`A000010(n+1)/A334440(A367005(n))`
-/

namespace A081727.P13517590607003723646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A334440 (A367005 n).toNat : ℚ)

end

end A081727.P13517590607003723646

/-! ## A081727.P12894750459067933622

`A000010(n+1)/A257510(A302681(n+1))`
-/

namespace A081727.P12894750459067933622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A257510 (A302681 (n + 1)).toNat : ℚ)

end

end A081727.P12894750459067933622

/-!
# A081728: Length of periods of Euler numbers modulo prime(n).

The programs for A081728, there is no canonical definition to state claims against.
-/

/-! ## A081728.P16420538249621876955

`A067541(p?[xor(1, n)+1]-1)`
-/

namespace A081728.P16420538249621876955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A081728.P16420538249621876955

/-! ## A081728.P16143444970253582698

`round(sqrt(lcm(2, A102781(n+1))²+1))`
-/

namespace A081728.P16143444970253582698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.lcm 2 (A102781 (n + 1)) ^ 2 + 1 : ℝ))

end

end A081728.P16143444970253582698

/-! ## A081728.P13504152918838106985

`gcd(p?[a(n-1)+2]-1, A138420(n+1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A081728.P13504152918838106985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1) (A138420 (n + 1))

end

end A081728.P13504152918838106985

/-! ## A081728.P6651501575715235060

`A186646(∑[A075526(n)])`
-/

namespace A081728.P6651501575715235060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081728.P6651501575715235060

/-! ## A081728.P6170218830635359543

`A067541(record[A225530(n)])`
-/

namespace A081728.P6170218830635359543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081728.P6170218830635359543

/-! ## A081728.P6455906284152558268

`A067541(A006093(n+1))`
-/

namespace A081728.P6455906284152558268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A006093 (n + 1)).toNat

end

end A081728.P6455906284152558268

/-! ## A081728.P17785015327185836336

`A081727(A000040(n+1))`
-/

namespace A081728.P17785015327185836336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081727 (A000040 (n + 1)).toNat

end

end A081728.P17785015327185836336

/-! ## A081728.P9014519458038153569

`A081727(A006005(n+1))`
-/

namespace A081728.P9014519458038153569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081727 (A006005 (n + 1)).toNat

end

end A081728.P9014519458038153569

/-! ## A081728.P12840678879817276020

`A067541(A039915(n+1))`
-/

namespace A081728.P12840678879817276020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A039915 (n + 1)).toNat

end

end A081728.P12840678879817276020

/-! ## A081728.P5554793428060211163

`A081727(A176997(n+1))`
-/

namespace A081728.P5554793428060211163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081727 (A176997 (n + 1)).toNat

end

end A081728.P5554793428060211163

/-!
# A081729: Expansion of Sum(k>=0, x^(2^k)) + 1/(1+x). First differences of A007456 (gossip sequence) for n>1.

The programs for A081729, the canonical program `A081729.P13956299838836808291` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081729 has offset 0).

The definition of A081729 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081729.P13956299838836808291

`A209229(n)+A033999(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081729

/-- `A209229(n)+A033999(n)` -/
def P13956299838836808291.Spec : Prop :=
  ∀ n, P13956299838836808291.a n = A081729 n

theorem P13956299838836808291.correct : P13956299838836808291.Spec := by
  intro n
  simp only [A081729]

end A081729

/-! ## A081729.P3780449294512103997

`char[2^n]+(-1)^n`
-/

namespace A081729.P3780449294512103997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (-1) ^ n

end

end A081729.P3780449294512103997

namespace A081729

/-- `char[2^n]+(-1)^n` -/
def P3780449294512103997.Spec : Prop :=
  ∀ n, P3780449294512103997.a n = A081729 n

end A081729

/-! ## A081729.P78551278856053333

`Δ[∑[char[A001316(n)+1]]+n%2]`
-/

namespace A081729.P78551278856053333
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081729.P78551278856053333

namespace A081729

/-- `Δ[∑[char[A001316(n)+1]]+n%2]` -/
def P78551278856053333.Spec : Prop :=
  ∀ n, P78551278856053333.a n = A081729 n

end A081729

/-! ## A081729.P11984818671653252246

`-xor(A034947(2*n+3), A209229(n))`
-/

namespace A081729.P11984818671653252246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A034947 (2 * n + 3)) (A209229 n)

end

end A081729.P11984818671653252246

namespace A081729

/-- `-xor(A034947(2*n+3), A209229(n))` -/
def P11984818671653252246.Spec : Prop :=
  ∀ n, P11984818671653252246.a n = A081729 n

end A081729

/-! ## A081729.P4539849785776664091

`round(1/A086582(n)-A062157(n))`
-/

namespace A081729.P4539849785776664091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A086582 n : ℚ) - (A062157 n : ℚ))

end

end A081729.P4539849785776664091

namespace A081729

/-- `round(1/A086582(n)-A062157(n))` -/
def P4539849785776664091.Spec : Prop :=
  ∀ n, P4539849785776664091.a n = A081729 n

end A081729

/-!
# A081730: Numbers k such that the k-th Euler number == 1 (mod k).

The programs for A081730, there is no canonical definition to state claims against.
-/

/-! ## A081730.P5043020430875675796

`∪[A035163(n+1), A174090(n+1)]`
-/

namespace A081730.P5043020430875675796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081730.P5043020430875675796

/-! ## A081730.P5120636174189496313

`∩[A325394(n+1), A339879(n+1)]`
-/

namespace A081730.P5120636174189496313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081730.P5120636174189496313

/-! ## A081730.P6603802394347207443

`∩[A229300(n+1), A307824(n+1)]`
-/

namespace A081730.P6603802394347207443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081730.P6603802394347207443

/-!
# A081731: a(n) = (A000364(n+2)-A000364(n))/60.

The programs for A081731, there is no canonical definition to state claims against.
-/

/-! ## A081731.P5231616613082047397

`(A000364(n+3)-A000364(n+1))/60`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081731.P5231616613082047397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000364 (n + 3) - A000364 (n + 1) : ℚ) / 60

end

end A081731.P5231616613082047397

/-!
# A081733: Triangle read by rows, T(n,k) = 2^(n-k)*[x^k] Euler_polynomial(n, x), for n >= 0, k >= 0.

The programs for A081733, there is no canonical definition to state claims against.
-/

/-! ## A081733.P10004547933617484267

`A004174(n)/A059268(n)`
-/

namespace A081733.P10004547933617484267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) / (A059268 n : ℚ)

end

end A081733.P10004547933617484267

/-! ## A081733.P2522403040346453613

`A004174(n)/2^A002262(n)`
-/

namespace A081733.P2522403040346453613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) / (2 : ℚ) ^ (A002262 n : ℤ)

end

end A081733.P2522403040346453613

/-! ## A081733.P4310944636218240506

`A109449(n)*A163805(A025581(n))`
-/

namespace A081733.P4310944636218240506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n * A163805 (A025581 n).toNat

end

end A081733.P4310944636218240506

/-! ## A081733.P398927332698613781

`A130595(n)*A155585(A025581(n))`
-/

namespace A081733.P398927332698613781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A155585 (A025581 n).toNat

end

end A081733.P398927332698613781

/-! ## A081733.P10817760739730992458

`A117569(A025581(n))*A247453(n)`
-/

namespace A081733.P10817760739730992458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A025581 n).toNat * A247453 n

end

end A081733.P10817760739730992458

/-! ## A081733.P4991565510274165244

`A004174(n)/A000079(A002262(n))`
-/

namespace A081733.P4991565510274165244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A081733.P4991565510274165244

/-! ## A081733.P1840827297102166271

`A004174(n)/A130321(A061579(n))`
-/

namespace A081733.P1840827297102166271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) / (A130321 (A061579 n).toNat : ℚ)

end

end A081733.P1840827297102166271

/-! ## A081733.P5243610358142428742

`A004174(n)/A011782(A002260(n+1))`
-/

namespace A081733.P5243610358142428742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) / (A011782 (A002260 (n + 1)).toNat : ℚ)

end

end A081733.P5243610358142428742

/-! ## A081733.P4296511727541060685

`A004175(A061579(n))/A059268(n)`
-/

namespace A081733.P4296511727541060685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004175 (A061579 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A081733.P4296511727541060685

/-! ## A081733.P17051270067674114348

`A004174(n)/A006519(A276618(n))`
-/

namespace A081733.P17051270067674114348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 n : ℚ) / (A006519 (A276618 n).toNat : ℚ)

end

end A081733.P17051270067674114348

/-!
# A081735: Numbers k such that the k-th Motzkin number == 1 (mod k).

The programs for A081735, there is no canonical definition to state claims against.
-/

/-! ## A081735.P15554869604534701670

`record[gcd(n+2, A140662(n+1))]`
-/

namespace A081735.P15554869604534701670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A140662 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081735.P15554869604534701670

/-! ## A081735.P5770057012239004277

`record[gcd(abs(A166587(n))-1, n-1)]`
-/

namespace A081735.P5770057012239004277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|A166587 n| - 1) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081735.P5770057012239004277

/-! ## A081735.P14043189221019422813

`eq[1, A001006(n)%(C(2, n)+n)]`
-/

namespace A081735.P14043189221019422813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) (Nat.choose 2 n + n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081735.P14043189221019422813

/-! ## A081735.P7785664948929045096

`record[gcd(A049834(n+1), A203717(n+2))]`
-/

namespace A081735.P7785664948929045096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049834 (n + 1)) (A203717 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081735.P7785664948929045096

/-! ## A081735.P6296570658012271512

`∑[A056671(∑[A283877(n)])]`
-/

namespace A081735.P6296570658012271512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081735.P6296570658012271512

/-!
# A081737: a(n) = (n-1)*10 + n-th decimal digit of Pi=3.14159...

The programs for A081737, there is no canonical definition to state claims against.
-/

/-! ## A081737.P12753749846117740495

`A000796(n)+10*n`
-/

namespace A081737.P12753749846117740495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + (10 * n : ℤ)

end

end A081737.P12753749846117740495

/-! ## A081737.P10661222787046182896

`10*n+9-A030644(n)`
-/

namespace A081737.P10661222787046182896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + (9 - A030644 (n + 1))

end

end A081737.P10661222787046182896

/-! ## A081737.P1946716065139254029

`sqrt(A072448(n+1))+10*n`
-/

namespace A081737.P1946716065139254029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (n + 1) : ℝ) + (10 * n : ℝ)

end

end A081737.P1946716065139254029

/-! ## A081737.P15173854224838453319

`10*n+A123152(n+1)-1`
-/

namespace A081737.P15173854224838453319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + (A123152 (n + 1) - 1)

end

end A081737.P15173854224838453319

/-! ## A081737.P16631543069397452195

`A065253(n+1)%10+10*n`
-/

namespace A081737.P16631543069397452195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10 + (10 * n : ℤ)

end

end A081737.P16631543069397452195

/-! ## A081737.P13301013224901625346

`A008592(n)+A000796(n)`
-/

namespace A081737.P13301013224901625346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + A000796 (n + 1)

end

end A081737.P13301013224901625346

/-! ## A081737.P8502269391302695155

`A001355(Δ[n²])+10*n`
-/

namespace A081737.P8502269391302695155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (10 * n : ℤ)

end

end A081737.P8502269391302695155

/-! ## A081737.P14745380438402674870

`A110766(Δ[n²])+10*n`
-/

namespace A081737.P14745380438402674870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (10 * n : ℤ)

end

end A081737.P14745380438402674870

/-! ## A081737.P2307965654898270510

`Δ[A059582(n)]+10*n`
-/

namespace A081737.P2307965654898270510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (10 * n : ℤ)

end

end A081737.P2307965654898270510

/-! ## A081737.P17176836185639646958

`A095709(∑[n]+1)+10*n`
-/

namespace A081737.P17176836185639646958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (10 * n : ℤ)

end

end A081737.P17176836185639646958

/-!
# A081738: a(n) = Sum_{2 <= p <= n, p prime} p^2.

The programs for A081738, the canonical program `A081738.P7608964105670881196` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081738 has offset 1).

The definition of A081738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081738.P7608964105670881196

`∑[∑{p}[n+1, C(#, n)²]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081738

/-- `∑[∑{p}[n+1, C(#, n)²]]` -/
def P7608964105670881196.Spec : Prop :=
  ∀ n, (P7608964105670881196.a n : ℤ) = A081738 (n + 1)

theorem P7608964105670881196.correct : P7608964105670881196.Spec := by
  intro n
  simp only [A081738, Nat.add_sub_cancel]

end A081738

/-! ## A081738.P8932080941285301726

`∑[∑{p}[n+1, C(#, n)]^2]`
-/

namespace A081738.P8932080941285301726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P8932080941285301726

namespace A081738

/-- `∑[∑{p}[n+1, C(#, n)]^2]` -/
def P8932080941285301726.Spec : Prop :=
  ∀ n, (P8932080941285301726.a n : ℤ) = A081738 (n + 1)

end A081738

/-! ## A081738.P13850070396452440039

`∑[∑{p}[n+1, #*C(#, n)]]`
-/

namespace A081738.P13850070396452440039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p * Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P13850070396452440039

namespace A081738

/-- `∑[∑{p}[n+1, #*C(#, n)]]` -/
def P13850070396452440039.Spec : Prop :=
  ∀ n, (P13850070396452440039.a n : ℤ) = A081738 (n + 1)

end A081738

/-! ## A081738.P15113425851818412906

`∑[A061397(n+1)²]`
-/

namespace A081738.P15113425851818412906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P15113425851818412906

namespace A081738

/-- `∑[A061397(n+1)²]` -/
def P15113425851818412906.Spec : Prop :=
  ∀ n, P15113425851818412906.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P2365445697717624283

`∑[(n+1-A143545(n+1))²]`
-/

namespace A081738.P2365445697717624283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A143545 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P2365445697717624283

namespace A081738

/-- `∑[(n+1-A143545(n+1))²]` -/
def P2365445697717624283.Spec : Prop :=
  ∀ n, P2365445697717624283.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P13210682831050377772

`∑[(n+1-A191558(n+1))²]`
-/

namespace A081738.P13210682831050377772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A191558 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P13210682831050377772

namespace A081738

/-- `∑[(n+1-A191558(n+1))²]` -/
def P13210682831050377772.Spec : Prop :=
  ∀ n, P13210682831050377772.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P17520940088957183598

`∑[((n+1)*A010051(n+1))²]`
-/

namespace A081738.P17520940088957183598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A010051 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P17520940088957183598

namespace A081738

/-- `∑[((n+1)*A010051(n+1))²]` -/
def P17520940088957183598.Spec : Prop :=
  ∀ n, P17520940088957183598.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P13974290938787220140

`∑[((n+1)*A129950(n+1))²]`
-/

namespace A081738.P13974290938787220140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A129950 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P13974290938787220140

namespace A081738

/-- `∑[((n+1)*A129950(n+1))²]` -/
def P13974290938787220140.Spec : Prop :=
  ∀ n, P13974290938787220140.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P13412862316267739309

`∑[C(A006530(n+1), n)²]-1`
-/

namespace A081738.P13412862316267739309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A081738.P13412862316267739309

namespace A081738

/-- `∑[C(A006530(n+1), n)²]-1` -/
def P13412862316267739309.Spec : Prop :=
  ∀ n, P13412862316267739309.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P16095656733253075808

`∑[C(A020639(n+1), n)²]-1`
-/

namespace A081738.P16095656733253075808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A081738.P16095656733253075808

namespace A081738

/-- `∑[C(A020639(n+1), n)²]-1` -/
def P16095656733253075808.Spec : Prop :=
  ∀ n, P16095656733253075808.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P753540185086652087

`∑[A008472(A089026(n+1))²]`
-/

namespace A081738.P753540185086652087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A089026 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P753540185086652087

namespace A081738

/-- `∑[A008472(A089026(n+1))²]` -/
def P753540185086652087.Spec : Prop :=
  ∀ n, P753540185086652087.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P14967309000938635157

`∑[(A010051(n+1)*A151800(n))²]`
-/

namespace A081738.P14967309000938635157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) * A151800 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P14967309000938635157

namespace A081738

/-- `∑[(A010051(n+1)*A151800(n))²]` -/
def P14967309000938635157.Spec : Prop :=
  ∀ n, P14967309000938635157.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P14725729968208713914

`∑[A001414(n+1)*A061397(n+1)]`
-/

namespace A081738.P14725729968208713914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P14725729968208713914

namespace A081738

/-- `∑[A001414(n+1)*A061397(n+1)]` -/
def P14725729968208713914.Spec : Prop :=
  ∀ n, P14725729968208713914.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P8241216867699238647

`∑[A007947(n+1)*A061397(n+1)]`
-/

namespace A081738.P8241216867699238647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P8241216867699238647

namespace A081738

/-- `∑[A007947(n+1)*A061397(n+1)]` -/
def P8241216867699238647.Spec : Prop :=
  ∀ n, P8241216867699238647.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P16197499811139230095

`∑[A008472(n+1)*A061397(n+1)]`
-/

namespace A081738.P16197499811139230095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P16197499811139230095

namespace A081738

/-- `∑[A008472(n+1)*A061397(n+1)]` -/
def P16197499811139230095.Spec : Prop :=
  ∀ n, P16197499811139230095.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P13476516419959444386

`∑[A008475(n+1)*A061397(n+1)]`
-/

namespace A081738.P13476516419959444386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) * A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P13476516419959444386

namespace A081738

/-- `∑[A008475(n+1)*A061397(n+1)]` -/
def P13476516419959444386.Spec : Prop :=
  ∀ n, P13476516419959444386.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P105672899490778900

`∑[A061397(n+1)*A181894(n+1)]`
-/

namespace A081738.P105672899490778900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) * A181894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P105672899490778900

namespace A081738

/-- `∑[A061397(n+1)*A181894(n+1)]` -/
def P105672899490778900.Spec : Prop :=
  ∀ n, P105672899490778900.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P892708577856725794

`∑[(A008683(n+1)*A092509(n+1))²]`
-/

namespace A081738.P892708577856725794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) * A092509 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P892708577856725794

namespace A081738

/-- `∑[(A008683(n+1)*A092509(n+1))²]` -/
def P892708577856725794.Spec : Prop :=
  ∀ n, P892708577856725794.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P9014498257298602328

`∑[(A020639(n+1)*char[A006093(n+1)])²]`
-/

namespace A081738.P9014498257298602328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P9014498257298602328

namespace A081738

/-- `∑[(A020639(n+1)*char[A006093(n+1)])²]` -/
def P9014498257298602328.Spec : Prop :=
  ∀ n, P9014498257298602328.a n = A081738 (n + 1)

end A081738

/-! ## A081738.P10666639494281118220

`∑[A008472(n+1)*A008472(A089026(n+1))]`
-/

namespace A081738.P10666639494281118220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A008472 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081738.P10666639494281118220

namespace A081738

/-- `∑[A008472(n+1)*A008472(A089026(n+1))]` -/
def P10666639494281118220.Spec : Prop :=
  ∀ n, P10666639494281118220.a n = A081738 (n + 1)

end A081738

/-!
# A081740: 11-level labeled rooted trees with n leaves.

The programs for A081740, there is no canonical definition to state claims against.
-/

/-! ## A081740.P7733123849975279891

`A144150(eq[10, A025581(n)])`
-/

namespace A081740.P7733123849975279891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081740.P7733123849975279891

/-! ## A081740.P4997896791331725718

`A144150(eq[11, A193739(n)])`
-/

namespace A081740.P4997896791331725718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081740.P4997896791331725718

/-! ## A081740.P4555174759571029799

`A144150(eq[12, A116598(n)])`
-/

namespace A081740.P4555174759571029799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081740.P4555174759571029799

/-! ## A081740.P3635174503859846733

`A144150(eq[21, A099375(n)])`
-/

namespace A081740.P3635174503859846733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081740.P3635174503859846733

/-! ## A081740.P9394578091162616711

`A144150(eq[11, A004736(n+1)])`
-/

namespace A081740.P9394578091162616711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081740.P9394578091162616711

/-!
# A081741: Numbers k that divide A005554(k) (the sum of consecutive Motzkin numbers).

The programs for A081741, there is no canonical definition to state claims against.
-/

/-! ## A081741.P7021701943883668290

`eq[A198293(n+1)², A178306(n)]`
-/

namespace A081741.P7021701943883668290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198293 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081741.P7021701943883668290

/-!
# A081742: a(1)=1; then if n is a multiple of 3, a(n) = a(n/3) + 1; if n is not a multiple of 3 but even, a(n) = a(n/2) + 1; a(n) = a(n-1) + 1 otherwise.

The programs for A081742, there is no canonical definition to state claims against.
-/

/-! ## A081742.P15206734421004888120

`A334098(record[A088587(n+1)])`
-/

namespace A081742.P15206734421004888120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081742.P15206734421004888120

/-! ## A081742.P2531465019908736562

`A302243(n)+A255270(A123104(n))`
-/

namespace A081742.P2531465019908736562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 n + A255270 (A123104 (n + 31)).toNat

end

end A081742.P2531465019908736562

/-! ## A081742.P5990141820911373248

`A318306(A370968(n+2))`
-/

namespace A081742.P5990141820911373248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A370968 (n + 2)).toNat

end

end A081742.P5990141820911373248

/-! ## A081742.P13010738618174594740

`A001179(n+1)+A001221(A032908(n))`
-/

namespace A081742.P13010738618174594740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001179 (n + 1) + A001221 (A032908 n).toNat

end

end A081742.P13010738618174594740

/-! ## A081742.P7791104046053505508

`A309432(A237250(n+2))`
-/

namespace A081742.P7791104046053505508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 (A237250 (n + 2)).toNat

end

end A081742.P7791104046053505508

/-!
# A081743: a(1)=1 then a(n)=a(n/2^k)+1 if n is even and 2^k is the largest power of 2 dividing n, a(n)=a(n-1) otherwise.

The programs for A081743, the canonical program `A081743.P5518210580700423937` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081743 has offset 1).

The definition of A081743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081743.P5518210580700423937

`A000120(n+1)+A059841(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081743

/-- `A000120(n+1)+A059841(n+1)` -/
def P5518210580700423937.Spec : Prop :=
  ∀ n, P5518210580700423937.a n = A081743 (n + 1)

theorem P5518210580700423937.correct : P5518210580700423937.Spec := by
  intro n
  simp only [A081743, Nat.add_sub_cancel]

end A081743

/-! ## A081743.P7494957762945026378

`a(and(n+1, n-2))+1` with `a(0)=1, a(1)=2`
-/

namespace A081743.P7494957762945026378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.land (n + 1 : ℤ) ((n : ℤ) - 2)).toNat + 1

end

end A081743.P7494957762945026378

namespace A081743

/-- `a(and(n+1, n-2))+1` -/
def P7494957762945026378.Spec : Prop :=
  ∀ n, (P7494957762945026378.a n : ℤ) = A081743 (n + 1)

end A081743

/-! ## A081743.P11012971956996365843

`∑[1-val(n+1, 2)]+n%2`
-/

namespace A081743.P11012971956996365843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n % 2 : ℕ) : ℤ)

end

end A081743.P11012971956996365843

namespace A081743

/-- `∑[1-val(n+1, 2)]+n%2` -/
def P11012971956996365843.Spec : Prop :=
  ∀ n, P11012971956996365843.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P16513443293653923845

`or(1, n+1)-∑[val(n+1, 2)]`
-/

namespace A081743.P16513443293653923845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081743.P16513443293653923845

namespace A081743

/-- `or(1, n+1)-∑[val(n+1, 2)]` -/
def P16513443293653923845.Spec : Prop :=
  ∀ n, P16513443293653923845.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P18080696887087961782

`ceil(log2(A048460(n+2)))`
-/

namespace A081743.P18080696887087961782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A048460 (n + 2) : ℝ)⌉

end

end A081743.P18080696887087961782

namespace A081743

/-- `ceil(log2(A048460(n+2)))` -/
def P18080696887087961782.Spec : Prop :=
  ∀ n, P18080696887087961782.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P8148150464378705167

`log2(A060632(n+1))+1`
-/

namespace A081743.P8148150464378705167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060632 (n + 1) : ℝ) + 1

end

end A081743.P8148150464378705167

namespace A081743

/-- `log2(A060632(n+1))+1` -/
def P8148150464378705167.Spec : Prop :=
  ∀ n, P8148150464378705167.a n = (A081743 (n + 1) : ℝ)

end A081743

/-! ## A081743.P1606228563978257809

`A000120(ceil(n/2))+1`
-/

namespace A081743.P1606228563978257809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌈(n : ℚ) / 2⌉.toNat + 1

end

end A081743.P1606228563978257809

namespace A081743

/-- `A000120(ceil(n/2))+1` -/
def P1606228563978257809.Spec : Prop :=
  ∀ n, P1606228563978257809.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P14549497738915383751

`2*n+3-A327492(n+1)`
-/

namespace A081743.P14549497738915383751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A327492 (n + 1)

end

end A081743.P14549497738915383751

namespace A081743

/-- `2*n+3-A327492(n+1)` -/
def P14549497738915383751.Spec : Prop :=
  ∀ n, P14549497738915383751.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P4517907351440924451

`A063787(A080513(n))`
-/

namespace A081743.P4517907351440924451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A080513 n).toNat

end

end A081743.P4517907351440924451

namespace A081743

/-- `A063787(A080513(n))` -/
def P4517907351440924451.Spec : Prop :=
  ∀ n, P4517907351440924451.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P4569040090665106593

`A000005(A060632(n+1))`
-/

namespace A081743.P4569040090665106593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060632 (n + 1)).toNat

end

end A081743.P4569040090665106593

namespace A081743

/-- `A000005(A060632(n+1))` -/
def P4569040090665106593.Spec : Prop :=
  ∀ n, P4569040090665106593.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P14241146134168278214

`A063787(A008619(n+1))`
-/

namespace A081743.P14241146134168278214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A008619 (n + 1)).toNat

end

end A081743.P14241146134168278214

namespace A081743

/-- `A063787(A008619(n+1))` -/
def P14241146134168278214.Spec : Prop :=
  ∀ n, P14241146134168278214.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P8732990032613476399

`A061338(A090078(n+1))`
-/

namespace A081743.P8732990032613476399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (A090078 (n + 1)).toNat

end

end A081743.P8732990032613476399

namespace A081743

/-- `A061338(A090078(n+1))` -/
def P8732990032613476399.Spec : Prop :=
  ∀ n, P8732990032613476399.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P874298383950264798

`A008619(A178493(n+1))`
-/

namespace A081743.P874298383950264798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A178493 (n + 1)).toNat

end

end A081743.P874298383950264798

namespace A081743

/-- `A008619(A178493(n+1))` -/
def P874298383950264798.Spec : Prop :=
  ∀ n, P874298383950264798.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P11021813134287189678

`A061338(A259445(n+1))`
-/

namespace A081743.P11021813134287189678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061338 (A259445 (n + 1)).toNat

end

end A081743.P11021813134287189678

namespace A081743

/-- `A061338(A259445(n+1))` -/
def P11021813134287189678.Spec : Prop :=
  ∀ n, P11021813134287189678.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P10770998236658364451

`A003313(A048460(n+2))`
-/

namespace A081743.P10770998236658364451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A048460 (n + 2)).toNat

end

end A081743.P10770998236658364451

namespace A081743

/-- `A003313(A048460(n+2))` -/
def P10770998236658364451.Spec : Prop :=
  ∀ n, P10770998236658364451.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P2646554556932968392

`A048881(n)+A000034(n)`
-/

namespace A081743.P2646554556932968392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n + A000034 n

end

end A081743.P2646554556932968392

namespace A081743

/-- `A048881(n)+A000034(n)` -/
def P2646554556932968392.Spec : Prop :=
  ∀ n, P2646554556932968392.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P3689997000579315361

`A002487(A060632(n+1)+1)`
-/

namespace A081743.P3689997000579315361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A060632 (n + 1) + 1).toNat

end

end A081743.P3689997000579315361

namespace A081743

/-- `A002487(A060632(n+1)+1)` -/
def P3689997000579315361.Spec : Prop :=
  ∀ n, P3689997000579315361.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P5960901152939420873

`A100661(A011371(n+1)+1)`
-/

namespace A081743.P5960901152939420873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A011371 (n + 1) + 1).toNat

end

end A081743.P5960901152939420873

namespace A081743

/-- `A100661(A011371(n+1)+1)` -/
def P5960901152939420873.Spec : Prop :=
  ∀ n, P5960901152939420873.a n = A081743 (n + 1)

end A081743

/-! ## A081743.P7482021346950110792

`A001222(2*A060632(n+1))`
-/

namespace A081743.P7482021346950110792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A060632 (n + 1)).toNat

end

end A081743.P7482021346950110792

namespace A081743

/-- `A001222(2*A060632(n+1))` -/
def P7482021346950110792.Spec : Prop :=
  ∀ n, P7482021346950110792.a n = A081743 (n + 1)

end A081743

/-!
# A081745: a(n) = A080901(n) - n.

The programs for A081745, there is no canonical definition to state claims against.
-/

/-! ## A081745.P11382035679566515768

`A080901(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081745.P11382035679566515768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080901 (n + 1) - (n + 1 : ℤ)

end

end A081745.P11382035679566515768

/-!
# A081746: a(1)=1; for n>1, a(n)=a(n-1)-3 if n is already in the sequence, a(n)=a(n-1)+5 otherwise.

The programs for A081746, there is no canonical definition to state claims against.
-/

/-! ## A081746.P7426461323959744061

`A081747(n+1)+1+n`
-/

namespace A081746.P7426461323959744061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081747 (n + 1) + 1 + (n : ℤ)

end

end A081746.P7426461323959744061

/-! ## A081746.P6747934636586414827

`4*A081748(n+1)+1+n`
-/

namespace A081746.P6747934636586414827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081748 (n + 1) + 1 + (n : ℤ)

end

end A081746.P6747934636586414827

/-! ## A081746.P15053342666612263964

`A358838(A296536(n+1))`
-/

namespace A081746.P15053342666612263964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358838 (A296536 (n + 1)).toNat

end

end A081746.P15053342666612263964

/-! ## A081746.P18154782508921423306

`A156230(A016921(2*n))+n`
-/

namespace A081746.P18154782508921423306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156230 (A016921 (2 * n)).toNat + (n : ℤ)

end

end A081746.P18154782508921423306

/-! ## A081746.P9916026958888887463

`A080900(n+1)-A289007(A005425(n))`
-/

namespace A081746.P9916026958888887463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080900 (n + 1) - A289007 (A005425 n).toNat

end

end A081746.P9916026958888887463

/-!
# A081747: a(n) = A081746(n) - n.

The programs for A081747, there is no canonical definition to state claims against.
-/

/-! ## A081747.P6707450440623028993

`A081746(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081747.P6707450440623028993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081746 (n + 1) - (n + 1 : ℤ)

end

end A081747.P6707450440623028993

/-!
# A081748: a(n) = (A081746(n) - n)/4.

The programs for A081748, there is no canonical definition to state claims against.
-/

/-! ## A081748.P17521567483061306254

`(A081746(n+1)-(n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081748.P17521567483061306254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081746 (n + 1) - (n + 1 : ℤ) : ℚ) / 4

end

end A081748.P17521567483061306254

/-!
# A081752: Ordered product of the sides of primitive Pythagorean triangles divided by 60.

The programs for A081752, there is no canonical definition to state claims against.
-/

/-! ## A081752.P14447724702112738333

`A063011(n+1)/60`
-/

namespace A081752.P14447724702112738333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063011 (n + 1) : ℚ) / 60

end

end A081752.P14447724702112738333

/-! ## A081752.P13959991577307125095

`record[ratio[A063011(A152271(n))]]`
-/

namespace A081752.P13959991577307125095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063011 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081752.P13959991577307125095

/-! ## A081752.P9358101080146268318

`record[ratio[A063011(A210959(n+1))]]`
-/

namespace A081752.P9358101080146268318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063011 (A210959 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081752.P9358101080146268318

/-! ## A081752.P13607729167749265761

`record[ratio[A063011(A193592(n))]]`
-/

namespace A081752.P13607729167749265761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063011 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081752.P13607729167749265761

/-! ## A081752.P12861914261608769274

`A088509(n+1)*A088510(n+1)*A088511(n+1)/60`
-/

namespace A081752.P12861914261608769274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088509 (n + 1) * A088510 (n + 1) * A088511 (n + 1) : ℚ) / 60

end

end A081752.P12861914261608769274

/-!
# A081753: a(n) = floor(n/12) if n == 2 (mod 12); a(n) = floor(n/12) + 1 otherwise.

The programs for A081753, the canonical program `A081753.P562683174254757142` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081753 has offset 0).

The definition of A081753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081753.P562683174254757142

`round((2-∑[(n%4)%3]+n)/3)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081753

/-- `round((2-∑[(n%4)%3]+n)/3)` -/
def P562683174254757142.Spec : Prop :=
  ∀ n, P562683174254757142.a n = A081753 n

theorem P562683174254757142.correct : P562683174254757142.Spec := by
  intro n
  simp only [A081753]

end A081753

/-! ## A081753.P11877978764622180770

`ceil(A004443(n)/12)`
-/

namespace A081753.P11877978764622180770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004443 n : ℚ) / 12⌉

end

end A081753.P11877978764622180770

namespace A081753

/-- `ceil(A004443(n)/12)` -/
def P11877978764622180770.Spec : Prop :=
  ∀ n, P11877978764622180770.a n = A081753 n

end A081753

/-! ## A081753.P18181063761282225688

`ceil(A263426(n)/12)`
-/

namespace A081753.P18181063761282225688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A263426 n : ℚ) / 12⌉

end

end A081753.P18181063761282225688

namespace A081753

/-- `ceil(A263426(n)/12)` -/
def P18181063761282225688.Spec : Prop :=
  ∀ n, P18181063761282225688.a n = A081753 n

end A081753

/-! ## A081753.P5232171721605308067

`ceil(A112689(n+1)/2)`
-/

namespace A081753.P5232171721605308067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112689 (n + 1) : ℚ) / 2⌉

end

end A081753.P5232171721605308067

namespace A081753

/-- `ceil(A112689(n+1)/2)` -/
def P5232171721605308067.Spec : Prop :=
  ∀ n, P5232171721605308067.a n = A081753 n

end A081753

/-! ## A081753.P10555030658472079323

`A103221(∑[and(3, n)]-n)`
-/

namespace A081753.P10555030658472079323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A081753.P10555030658472079323

namespace A081753

/-- `A103221(∑[and(3, n)]-n)` -/
def P10555030658472079323.Spec : Prop :=
  ∀ n, P10555030658472079323.a n = A081753 n

end A081753

/-! ## A081753.P10131413668449894995

`A008679(or(n, Δ[or(1, n)]))`
-/

namespace A081753.P10131413668449894995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Int.lor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A081753.P10131413668449894995

namespace A081753

/-- `A008679(or(n, Δ[or(1, n)]))` -/
def P10131413668449894995.Spec : Prop :=
  ∀ n, P10131413668449894995.a n = A081753 n

end A081753

/-! ## A081753.P9285398495786604610

`A008679(n-∑[∑[n]]%2)`
-/

namespace A081753.P9285398495786604610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (n - (∑ j ∈ Finset.range (n + 1), f1 j) % 2)

end

end A081753.P9285398495786604610

namespace A081753

/-- `A008679(n-∑[∑[n]]%2)` -/
def P9285398495786604610.Spec : Prop :=
  ∀ n, P9285398495786604610.a n = A081753 n

end A081753

/-! ## A081753.P16199959771860687400

`A008679(A213635(n+1))`
-/

namespace A081753.P16199959771860687400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A213635 (n + 1)).toNat

end

end A081753.P16199959771860687400

namespace A081753

/-- `A008679(A213635(n+1))` -/
def P16199959771860687400.Spec : Prop :=
  ∀ n, P16199959771860687400.a n = A081753 n

end A081753

/-! ## A081753.P7939399123250953569

`A004526(A112689(n+1)+1)`
-/

namespace A081753.P7939399123250953569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A112689 (n + 1) + 1).toNat

end

end A081753.P7939399123250953569

namespace A081753

/-- `A004526(A112689(n+1)+1)` -/
def P7939399123250953569.Spec : Prop :=
  ∀ n, P7939399123250953569.a n = A081753 n

end A081753

/-! ## A081753.P4625653265436379381

`A103221(∑[A103221(n)%2]-1)`
-/

namespace A081753.P4625653265436379381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103221 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A081753.P4625653265436379381

namespace A081753

/-- `A103221(∑[A103221(n)%2]-1)` -/
def P4625653265436379381.Spec : Prop :=
  ∀ n, P4625653265436379381.a n = A081753 n

end A081753

/-! ## A081753.P5228599100668557700

`A110655(A008620(n)-Δ[A008620(n)])`
-/

namespace A081753.P5228599100668557700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A008620 n - (f1 (n + 1) - f1 n)).toNat

end

end A081753.P5228599100668557700

namespace A081753

/-- `A110655(A008620(n)-Δ[A008620(n)])` -/
def P5228599100668557700.Spec : Prop :=
  ∀ n, P5228599100668557700.a n = A081753 n

end A081753

/-! ## A081753.P5874166539201966816

`A103221(A059169(n+1)+A002265(n))`
-/

namespace A081753.P5874166539201966816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A059169 (n + 1) + A002265 n).toNat

end

end A081753.P5874166539201966816

namespace A081753

/-- `A103221(A059169(n+1)+A002265(n))` -/
def P5874166539201966816.Spec : Prop :=
  ∀ n, P5874166539201966816.a n = A081753 n

end A081753

/-! ## A081753.P18107192356755397568

`A008679(n-A112690(n))`
-/

namespace A081753.P18107192356755397568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 ((n : ℤ) - A112690 n).toNat

end

end A081753.P18107192356755397568

namespace A081753

/-- `A008679(n-A112690(n))` -/
def P18107192356755397568.Spec : Prop :=
  ∀ n, P18107192356755397568.a n = A081753 n

end A081753

/-! ## A081753.P15084230211670093758

`A008679(A061347(n+3)+n+2)`
-/

namespace A081753.P15084230211670093758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A061347 (n + 3) + (n + 2 : ℤ)).toNat

end

end A081753.P15084230211670093758

namespace A081753

/-- `A008679(A061347(n+3)+n+2)` -/
def P15084230211670093758.Spec : Prop :=
  ∀ n, P15084230211670093758.a n = A081753 n

end A081753

/-! ## A081753.P5270028138772374443

`A059169(A285872(n+3)-A008611(n+1))`
-/

namespace A081753.P5270028138772374443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A285872 (n + 3) - A008611 (n + 1)).toNat

end

end A081753.P5270028138772374443

namespace A081753

/-- `A059169(A285872(n+3)-A008611(n+1))` -/
def P5270028138772374443.Spec : Prop :=
  ∀ n, P5270028138772374443.a n = A081753 n

end A081753

/-! ## A081753.P15769571088521308898

`A008679(A022003(n+2)+n+3)`
-/

namespace A081753.P15769571088521308898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A022003 (n + 2) + (n + 3 : ℤ)).toNat

end

end A081753.P15769571088521308898

namespace A081753

/-- `A008679(A022003(n+2)+n+3)` -/
def P15769571088521308898.Spec : Prop :=
  ∀ n, P15769571088521308898.a n = A081753 n

end A081753

/-! ## A081753.P10613146055537718943

`A008618(A047229(n+1))`
-/

namespace A081753.P10613146055537718943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A047229 (n + 1)).toNat

end

end A081753.P10613146055537718943

namespace A081753

/-- `A008618(A047229(n+1))` -/
def P10613146055537718943.Spec : Prop :=
  ∀ n, P10613146055537718943.a n = A081753 n

end A081753

/-! ## A081753.P9909797613888556068

`A033182(A126590(n+2))`
-/

namespace A081753.P9909797613888556068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A126590 (n + 2)).toNat

end

end A081753.P9909797613888556068

namespace A081753

/-- `A033182(A126590(n+2))` -/
def P9909797613888556068.Spec : Prop :=
  ∀ n, P9909797613888556068.a n = A081753 n

end A081753

/-! ## A081753.P11178363901919881104

`A033183(A157932(n+1))`
-/

namespace A081753.P11178363901919881104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A157932 (n + 1)).toNat

end

end A081753.P11178363901919881104

namespace A081753

/-- `A033183(A157932(n+1))` -/
def P11178363901919881104.Spec : Prop :=
  ∀ n, P11178363901919881104.a n = A081753 n

end A081753

/-! ## A081753.P18224550005493366597

`A033183(2*(A004525(n)+n))`
-/

namespace A081753.P18224550005493366597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (2 * (A004525 n + (n : ℤ))).toNat

end

end A081753.P18224550005493366597

namespace A081753

/-- `A033183(2*(A004525(n)+n))` -/
def P18224550005493366597.Spec : Prop :=
  ∀ n, P18224550005493366597.a n = A081753 n

end A081753

/-!
# A081754: Numbers k such that the number of noncongruent solutions to x^(2^m) == 1 (mod k) is the same for any m>=1.

The programs for A081754, the canonical program `A081754.P11765567811949560293` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081754 has offset 1).

The definition of A081754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081754.P11765567811949560293

`eq[1, A046073(n+1)%2]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A081754

/-- `eq[1, A046073(n+1)%2]+1` -/
def P11765567811949560293.Spec : Prop :=
  ∀ n, (P11765567811949560293.a n : ℤ) = A081754 (n + 1)

theorem P11765567811949560293.correct : P11765567811949560293.Spec := by
  intro n
  simp only [A081754, Nat.add_sub_cancel]

end A081754

/-! ## A081754.P4988108670009168587

`record[(n+1)/A000079(val(A046073(n+1), 2))]`
-/

namespace A081754.P4988108670009168587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000079 (SequenceMachineLib.valuation (A046073 (n + 1)).toNat 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081754.P4988108670009168587

namespace A081754

/-- `record[(n+1)/A000079(val(A046073(n+1), 2))]` -/
def P4988108670009168587.Spec : Prop :=
  ∀ n, P4988108670009168587.a n = (A081754 (n + 1) : ℚ)

end A081754

/-! ## A081754.P10895945559994588182

`record[(n+1)/A000224(val(A046073(n+1), 2)+1)]`
-/

namespace A081754.P10895945559994588182
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000224 (SequenceMachineLib.valuation (A046073 (n + 1)).toNat 2 + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081754.P10895945559994588182

namespace A081754

/-- `record[(n+1)/A000224(val(A046073(n+1), 2)+1)]` -/
def P10895945559994588182.Spec : Prop :=
  ∀ n, P10895945559994588182.a n = (A081754 (n + 1) : ℚ)

end A081754

/-! ## A081754.P11878753629432410557

`eq[1, A106609(A072436(n+1))]+1`
-/

namespace A081754.P11878753629432410557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A072436 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081754.P11878753629432410557

namespace A081754

/-- `eq[1, A106609(A072436(n+1))]+1` -/
def P11878753629432410557.Spec : Prop :=
  ∀ n, (P11878753629432410557.a n : ℤ) = A081754 (n + 1)

end A081754

/-! ## A081754.P12676110183316619365

`eq[A060594(n+1), A073103(n+1)]+1`
-/

namespace A081754.P12676110183316619365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081754.P12676110183316619365

namespace A081754

/-- `eq[A060594(n+1), A073103(n+1)]+1` -/
def P12676110183316619365.Spec : Prop :=
  ∀ n, (P12676110183316619365.a n : ℤ) = A081754 (n + 1)

end A081754

/-! ## A081754.P11043336508245618368

`eq[A060594(n+1), A247257(n+1)]+1`
-/

namespace A081754.P11043336508245618368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081754.P11043336508245618368

namespace A081754

/-- `eq[A060594(n+1), A247257(n+1)]+1` -/
def P11043336508245618368.Spec : Prop :=
  ∀ n, (P11043336508245618368.a n : ℤ) = A081754 (n + 1)

end A081754

/-! ## A081754.P12797504850268605202

`eq[A155828(n+1)+1, A073103(n+1)]+1`
-/

namespace A081754.P12797504850268605202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A081754.P12797504850268605202

namespace A081754

/-- `eq[A155828(n+1)+1, A073103(n+1)]+1` -/
def P12797504850268605202.Spec : Prop :=
  ∀ n, (P12797504850268605202.a n : ℤ) = A081754 (n + 1)

end A081754

/-! ## A081754.P15782107072007443195

`record[(n+1)/A002322(val(A002322(n+1), 2)+1)]`
-/

namespace A081754.P15782107072007443195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002322 (SequenceMachineLib.valuation (A002322 (n + 1)).toNat 2 + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081754.P15782107072007443195

namespace A081754

/-- `record[(n+1)/A002322(val(A002322(n+1), 2)+1)]` -/
def P15782107072007443195.Spec : Prop :=
  ∀ n, P15782107072007443195.a n = (A081754 (n + 1) : ℚ)

end A081754

/-! ## A081754.P17665672406279248403

`eq[A000010(n+1)/A046073(n+1), A073103(n+1)]+1`
-/

namespace A081754.P17665672406279248403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A046073 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A081754.P17665672406279248403

namespace A081754

/-- `eq[A000010(n+1)/A046073(n+1), A073103(n+1)]+1` -/
def P17665672406279248403.Spec : Prop :=
  ∀ n, (P17665672406279248403.a n : ℤ) = A081754 (n + 1)

end A081754

/-! ## A081754.P11068854359398939337

`lt[1, A221076(A046073(n+1))]+1`
-/

namespace A081754.P11068854359398939337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221076 (A046073 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A081754.P11068854359398939337

namespace A081754

/-- `lt[1, A221076(A046073(n+1))]+1` -/
def P11068854359398939337.Spec : Prop :=
  ∀ n, (P11068854359398939337.a n : ℤ) = A081754 (n + 1)

end A081754

/-!
# A081755: Number of noncongruent solutions to x^(2^m) == 1 (mod n) when n is such that the number of solutions is the same for any m>=1.

The programs for A081755, the canonical program `A081755.P13675370153460538164` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081755 has offset 1).

The definition of A081755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081755.P13675370153460538164

`A000079(val(A000010(A081754(n+1)), 2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A081755

/-- `A000079(val(A000010(A081754(n+1)), 2))` -/
def P13675370153460538164.Spec : Prop :=
  ∀ n, P13675370153460538164.a n = A081755 (n + 1)

theorem P13675370153460538164.correct : P13675370153460538164.Spec := by
  intro n
  simp only [A081755, Nat.add_sub_cancel]

end A081755

/-! ## A081755.P16613783441718401954

`A060594(A081754(n+1))`
-/

namespace A081755.P16613783441718401954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A081754 (n + 1)).toNat

end

end A081755.P16613783441718401954

namespace A081755

/-- `A060594(A081754(n+1))` -/
def P16613783441718401954.Spec : Prop :=
  ∀ n, P16613783441718401954.a n = A081755 (n + 1)

end A081755

/-! ## A081755.P4842586722937938144

`filter[A364925(n+1), A209229(#)]`
-/

namespace A081755.P4842586722937938144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209229 (f1 j).toNat = 1) n)

end

end A081755.P4842586722937938144

namespace A081755

/-- `filter[A364925(n+1), A209229(#)]` -/
def P4842586722937938144.Spec : Prop :=
  ∀ n, P4842586722937938144.a n = A081755 (n + 1)

end A081755

/-! ## A081755.P4096302333098182280

`∑{d}[A081754(n+1), A114643(#)]`
-/

namespace A081755.P4096302333098182280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A114643 d

end

end A081755.P4096302333098182280

namespace A081755

/-- `∑{d}[A081754(n+1), A114643(#)]` -/
def P4096302333098182280.Spec : Prop :=
  ∀ n, P4096302333098182280.a n = A081755 (n + 1)

end A081755

/-! ## A081755.P12165036384608530123

`A073103(A081754(2*n+1-n))`
-/

namespace A081755.P12165036384608530123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A081754 (2 * n + 1 - n)).toNat

end

end A081755.P12165036384608530123

namespace A081755

/-- `A073103(A081754(2*n+1-n))` -/
def P12165036384608530123.Spec : Prop :=
  ∀ n, P12165036384608530123.a n = A081755 (n + 1)

end A081755

/-! ## A081755.P8938028500300796956

`A073103(lcm(2, A081754(n+1)))`
-/

namespace A081755.P8938028500300796956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (Int.lcm 2 (A081754 (n + 1)))

end

end A081755.P8938028500300796956

namespace A081755

/-- `A073103(lcm(2, A081754(n+1)))` -/
def P8938028500300796956.Spec : Prop :=
  ∀ n, P8938028500300796956.a n = A081755 (n + 1)

end A081755

/-! ## A081755.P10159819026133610375

`A157230(5*A081754(n+1))`
-/

namespace A081755.P10159819026133610375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (5 * A081754 (n + 1)).toNat

end

end A081755.P10159819026133610375

namespace A081755

/-- `A157230(5*A081754(n+1))` -/
def P10159819026133610375.Spec : Prop :=
  ∀ n, P10159819026133610375.a n = A081755 (n + 1)

end A081755

/-!
# A081756: Numbers k such that there is a proper divisor d of k satisfying sigma(d)=k.

The programs for A081756, there is no canonical definition to state claims against.
-/

/-! ## A081756.P17127943970778653899

`A307741(∑[A309471(n)!])`
-/

namespace A081756.P17127943970778653899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309471 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081756.P17127943970778653899

/-! ## A081756.P7834061387819133139

`A307741(A061497(n+1))`
-/

namespace A081756.P7834061387819133139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307741 (A061497 (n + 1)).toNat

end

end A081756.P7834061387819133139

/-! ## A081756.P5103315008996483423

`A307741(A077741(n+1))`
-/

namespace A081756.P5103315008996483423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307741 (A077741 (n + 1)).toNat

end

end A081756.P5103315008996483423

/-! ## A081756.P18244617108071966357

`record[A307741(A206437(n+1))]`
-/

namespace A081756.P18244617108071966357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307741 (A206437 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081756.P18244617108071966357

/-! ## A081756.P16344958813282149253

`A307741((n+1)^A347162(n+1))`
-/

namespace A081756.P16344958813282149253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A347162 (n + 1) : ℤ))).toNat

end

end A081756.P16344958813282149253

/-!
# A081757: Number of ways to write n as i*j+i-j, 0

The programs for A081757, there is no canonical definition to state claims against.
-/

/-! ## A081757.P18313293609219219084

`A033111(lt[A255545(n+4), A342513(n+1)])`
-/

namespace A081757.P18313293609219219084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255545 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081757.P18313293609219219084

/-! ## A081757.P15888047291881798597

`A033111(lt[A186861(2*(n+2)), A072407(n+1)])`
-/

namespace A081757.P15888047291881798597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033111 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081757.P15888047291881798597

/-! ## A081757.P11061875890416323108

`A338732(A007092(n))^A057521(n+1)²`
-/

namespace A081757.P11061875890416323108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338732 (A007092 n).toNat : ℚ) ^ (A057521 (n + 1) ^ 2 : ℤ)

end

end A081757.P11061875890416323108

/-! ## A081757.P671000511599125259

`A338732(A007092(n)%A334463(3*n+1))`
-/

namespace A081757.P671000511599125259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338732 (Int.tmod (A007092 n) (A334463 (3 * n + 1))).toNat

end

end A081757.P671000511599125259

/-! ## A081757.P12823873598860124441

`∑{e}[Δ[A212661(n+6)]-1, #]`
-/

namespace A081757.P12823873598860124441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212661 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A081757.P12823873598860124441

/-!
# A081758: Sum of prime factors (with repetition) of sum of prime factors (with repetition) of n.

The programs for A081758, the canonical program `A081758.P13222533557675849893` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081758 has offset 2).

The definition of A081758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081758.P13222533557675849893

`A001414(A001414(n+2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081758

/-- `A001414(A001414(n+2))` -/
def P13222533557675849893.Spec : Prop :=
  ∀ n, P13222533557675849893.a n = A081758 (n + 2)

theorem P13222533557675849893.correct : P13222533557675849893.Spec := by
  intro n
  simp only [A081758, Nat.add_sub_cancel]

end A081758

/-! ## A081758.P1294130733023806754

`∑{d}[∑[A090340(n+1)], A120007(#)]`
-/

namespace A081758.P1294130733023806754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090340 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A081758.P1294130733023806754

namespace A081758

/-- `∑{d}[∑[A090340(n+1)], A120007(#)]` -/
def P1294130733023806754.Spec : Prop :=
  ∀ n, P1294130733023806754.a n = A081758 (n + 2)

end A081758

/-! ## A081758.P11302001926632236962

`sqrt(A074373(sqrt(A074373(n+2))))`
-/

namespace A081758.P11302001926632236962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (SequenceMachineLib.roundAway (Real.sqrt (A074373 (n + 2) : ℝ))).toNat : ℝ)

end

end A081758.P11302001926632236962

namespace A081758

/-- `sqrt(A074373(sqrt(A074373(n+2))))` -/
def P11302001926632236962.Spec : Prop :=
  ∀ n, P11302001926632236962.a n = (A081758 (n + 2) : ℝ)

end A081758

/-! ## A081758.P4486232458714609157

`A036288(Δ[A025281(n+1)])-1`
-/

namespace A081758.P4486232458714609157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (f1 (n + 1) - f1 n).toNat - 1

end

end A081758.P4486232458714609157

namespace A081758

/-- `A036288(Δ[A025281(n+1)])-1` -/
def P4486232458714609157.Spec : Prop :=
  ∀ n, P4486232458714609157.a n = A081758 (n + 2)

end A081758

/-! ## A081758.P7897316409474090028

`A036288(A036288(n+2)-1)-1`
-/

namespace A081758.P7897316409474090028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A036288 (n + 2) - 1).toNat - 1

end

end A081758.P7897316409474090028

namespace A081758

/-- `A036288(A036288(n+2)-1)-1` -/
def P7897316409474090028.Spec : Prop :=
  ∀ n, P7897316409474090028.a n = A081758 (n + 2)

theorem P7897316409474090028.correct : P7897316409474090028.Spec := by
  intro n
  simp only [A081758, Nat.add_sub_cancel, A081758.P7897316409474090028.a, A081758.P13222533557675849893.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081758

/-! ## A081758.P3045565643689352429

`A056239(A064988(A056239(A064988(n+2))))`
-/

namespace A081758.P3045565643689352429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064988 (A056239 (A064988 (n + 2)).toNat).toNat).toNat

end

end A081758.P3045565643689352429

namespace A081758

/-- `A056239(A064988(A056239(A064988(n+2))))` -/
def P3045565643689352429.Spec : Prop :=
  ∀ n, P3045565643689352429.a n = A081758 (n + 2)

end A081758

/-! ## A081758.P6686906180720890171

`A001414(A001414(record[(2-n)²]))-2`
-/

namespace A081758.P6686906180720890171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat - 2

end

end A081758.P6686906180720890171

namespace A081758

/-- `A001414(A001414(record[(2-n)²]))-2` -/
def P6686906180720890171.Spec : Prop :=
  ∀ n, P6686906180720890171.a n = A081758 (n + 2)

end A081758

/-! ## A081758.P4980183585971446556

`A107463(A107463((n+2)²))-2`
-/

namespace A081758.P4980183585971446556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A107463 ((n + 2) ^ 2)).toNat - 2

end

end A081758.P4980183585971446556

namespace A081758

/-- `A107463(A107463((n+2)²))-2` -/
def P4980183585971446556.Spec : Prop :=
  ∀ n, P4980183585971446556.a n = A081758 (n + 2)

end A081758

/-! ## A081758.P7791310186518378330

`A280292(A064549(A280292(A064549(n+2))))`
-/

namespace A081758.P7791310186518378330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (A064549 (A280292 (A064549 (n + 2)).toNat).toNat).toNat

end

end A081758.P7791310186518378330

namespace A081758

/-- `A280292(A064549(A280292(A064549(n+2))))` -/
def P7791310186518378330.Spec : Prop :=
  ∀ n, P7791310186518378330.a n = A081758 (n + 2)

end A081758

/-!
# A081759: Numbers k such that 5*k+6 is prime.

The programs for A081759, the canonical program `A081759.P335554766721588986` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081759 has offset 1).

The definition of A081759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081759.P9543365357075056098

`2*A024912(n+1)-1`
-/

namespace A081759.P9543365357075056098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024912 (n + 1) - 1

end

end A081759.P9543365357075056098

namespace A081759

/-- `2*A024912(n+1)-1` -/
def P9543365357075056098.Spec : Prop :=
  ∀ n, P9543365357075056098.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P335554766721588986

`A024894(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081759

/-- `A024894(n+1)-1` -/
def P335554766721588986.Spec : Prop :=
  ∀ n, P335554766721588986.a n = A081759 (n + 1)

theorem P335554766721588986.correct : P335554766721588986.Spec := by
  intro n
  simp only [A081759, Nat.add_sub_cancel]

end A081759

/-! ## A081759.P15360805669776533598

`2*A126785(n+1)+1`
-/

namespace A081759.P15360805669776533598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126785 (n + 1) + 1

end

end A081759.P15360805669776533598

namespace A081759

/-- `2*A126785(n+1)+1` -/
def P15360805669776533598.Spec : Prop :=
  ∀ n, P15360805669776533598.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P6692844248476579896

`floor(A030430(n+1)/5)-1`
-/

namespace A081759.P6692844248476579896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030430 (n + 1) : ℚ) / 5⌋ - 1

end

end A081759.P6692844248476579896

namespace A081759

/-- `floor(A030430(n+1)/5)-1` -/
def P6692844248476579896.Spec : Prop :=
  ∀ n, P6692844248476579896.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P17826775957190221899

`A126785(n+1)+A024912(n+1)`
-/

namespace A081759.P17826775957190221899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126785 (n + 1) + A024912 (n + 1)

end

end A081759.P17826775957190221899

namespace A081759

/-- `A126785(n+1)+A024912(n+1)` -/
def P17826775957190221899.Spec : Prop :=
  ∀ n, P17826775957190221899.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P6341987507117530863

`2*(A139368(n+1)+A102342(n+1))-1`
-/

namespace A081759.P6341987507117530863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139368 (n + 1) + A102342 (n + 1)) - 1

end

end A081759.P6341987507117530863

namespace A081759

/-- `2*(A139368(n+1)+A102342(n+1))-1` -/
def P6341987507117530863.Spec : Prop :=
  ∀ n, P6341987507117530863.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P5097926030485913996

`A057428(A049627(n))+A024894(n+1)`
-/

namespace A081759.P5097926030485913996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A049627 n).toNat + A024894 (n + 1)

end

end A081759.P5097926030485913996

namespace A081759

/-- `A057428(A049627(n))+A024894(n+1)` -/
def P5097926030485913996.Spec : Prop :=
  ∀ n, P5097926030485913996.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P5543333870681642138

`A057428(A002024(n+1))+A024894(n+1)`
-/

namespace A081759.P5543333870681642138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002024 (n + 1)).toNat + A024894 (n + 1)

end

end A081759.P5543333870681642138

namespace A081759

/-- `A057428(A002024(n+1))+A024894(n+1)` -/
def P5543333870681642138.Spec : Prop :=
  ∀ n, P5543333870681642138.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P1493426509261612147

`A000265(A024912(n+1)+A024912(n+1)-1)`
-/

namespace A081759.P1493426509261612147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A024912 (n + 1) + (A024912 (n + 1) - 1)).toNat

end

end A081759.P1493426509261612147

namespace A081759

/-- `A000265(A024912(n+1)+A024912(n+1)-1)` -/
def P1493426509261612147.Spec : Prop :=
  ∀ n, P1493426509261612147.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P11688143048281855409

`A116572(A049511(n+1))-1`
-/

namespace A081759.P11688143048281855409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116572 (A049511 (n + 1)).toNat - 1

end

end A081759.P11688143048281855409

namespace A081759

/-- `A116572(A049511(n+1))-1` -/
def P11688143048281855409.Spec : Prop :=
  ∀ n, P11688143048281855409.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P3784558803116554857

`eq[1, A001222(5*n+6)]`
-/

namespace A081759.P3784558803116554857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081759.P3784558803116554857

namespace A081759

/-- `eq[1, A001222(5*n+6)]` -/
def P3784558803116554857.Spec : Prop :=
  ∀ n, (P3784558803116554857.a n : ℤ) = A081759 (n + 1)

end A081759

/-! ## A081759.P9399381512069892394

`eq[2, A000005(5*n+6)]`
-/

namespace A081759.P9399381512069892394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081759.P9399381512069892394

namespace A081759

/-- `eq[2, A000005(5*n+6)]` -/
def P9399381512069892394.Spec : Prop :=
  ∀ n, (P9399381512069892394.a n : ℤ) = A081759 (n + 1)

end A081759

/-! ## A081759.P7540337190475748477

`lt[A001222(5*(n+2)-4), 2]`
-/

namespace A081759.P7540337190475748477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 2) - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081759.P7540337190475748477

namespace A081759

/-- `lt[A001222(5*(n+2)-4), 2]` -/
def P7540337190475748477.Spec : Prop :=
  ∀ n, (P7540337190475748477.a n : ℤ) = A081759 (n + 1)

end A081759

/-! ## A081759.P4155198448751408379

`lt[A000005(5*(n+2)-4), 3]`
-/

namespace A081759.P4155198448751408379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 2) - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081759.P4155198448751408379

namespace A081759

/-- `lt[A000005(5*(n+2)-4), 3]` -/
def P4155198448751408379.Spec : Prop :=
  ∀ n, (P4155198448751408379.a n : ℤ) = A081759 (n + 1)

end A081759

/-! ## A081759.P12272719013068156652

`record[(2*n+1)/A091088(n+1)]`
-/

namespace A081759.P12272719013068156652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A091088 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081759.P12272719013068156652

namespace A081759

/-- `record[(2*n+1)/A091088(n+1)]` -/
def P12272719013068156652.Spec : Prop :=
  ∀ n, P12272719013068156652.a n = (A081759 (n + 1) : ℚ)

end A081759

/-! ## A081759.P18004432135239912089

`lt[n+2, A020639(5*(n+1)+1)]`
-/

namespace A081759.P18004432135239912089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081759.P18004432135239912089

namespace A081759

/-- `lt[n+2, A020639(5*(n+1)+1)]` -/
def P18004432135239912089.Spec : Prop :=
  ∀ n, (P18004432135239912089.a n : ℤ) = A081759 (n + 1)

end A081759

/-! ## A081759.P12421481233422272961

`A004273(A024912(n+1))`
-/

namespace A081759.P12421481233422272961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A024912 (n + 1)).toNat

end

end A081759.P12421481233422272961

namespace A081759

/-- `A004273(A024912(n+1))` -/
def P12421481233422272961.Spec : Prop :=
  ∀ n, P12421481233422272961.a n = A081759 (n + 1)

end A081759

/-! ## A081759.P17463353855855795092

`comp[A153276(n+1)]`
-/

namespace A081759.P17463353855855795092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081759.P17463353855855795092

namespace A081759

/-- `comp[A153276(n+1)]` -/
def P17463353855855795092.Spec : Prop :=
  ∀ n, (P17463353855855795092.a n : ℤ) = A081759 (n + 1)

end A081759

/-! ## A081759.P11037539419547490453

`eq[1, A367970(n+1)]`
-/

namespace A081759.P11037539419547490453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367970 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081759.P11037539419547490453

namespace A081759

/-- `eq[1, A367970(n+1)]` -/
def P11037539419547490453.Spec : Prop :=
  ∀ n, (P11037539419547490453.a n : ℤ) = A081759 (n + 1)

end A081759

/-! ## A081759.P2598203148892607614

`A014681(A024894(n+1))`
-/

namespace A081759.P2598203148892607614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A024894 (n + 1)).toNat

end

end A081759.P2598203148892607614

namespace A081759

/-- `A014681(A024894(n+1))` -/
def P2598203148892607614.Spec : Prop :=
  ∀ n, P2598203148892607614.a n = A081759 (n + 1)

end A081759

/-!
# A081761: Least number >n having same type of prime factorization, a(1)=1.

The programs for A081761, there is no canonical definition to state claims against.
-/

/-! ## A081761.P9324474471420205722

`A077558(∑[char[1]+n]+1)`
-/

namespace A081761.P9324474471420205722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A081761.P9324474471420205722

/-!
# A081762: Primes p such that p*(p-2) divides 2^(p-1)-1.

The programs for A081762, there is no canonical definition to state claims against.
-/

/-! ## A081762.P17554414447389475020

`A260406(∑{e}[A260406(n+2), #]+n+1)`
-/

namespace A081762.P17554414447389475020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + n + 1)

end

end A081762.P17554414447389475020

/-! ## A081762.P8789568173084264429

`p?[A260406(n+1)]`
-/

namespace A081762.P8789568173084264429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081762.P8789568173084264429

/-! ## A081762.P7493273661726691750

`p?[A087965(n+1)+1]`
-/

namespace A081762.P7493273661726691750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087965 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081762.P7493273661726691750

/-! ## A081762.P1237388951367670443

`p?[A247219(n+1)+1]`
-/

namespace A081762.P1237388951367670443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247219 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081762.P1237388951367670443

/-! ## A081762.P5465817839328094150

`p?[A187787(n+1)+2]`
-/

namespace A081762.P5465817839328094150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187787 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081762.P5465817839328094150

/-!
# A081763: Primes p such that p*(p-1) divides 3^(p-1)-1.

The programs for A081763, there is no canonical definition to state claims against.
-/

/-! ## A081763.P18157488425105784383

`p?[or(2, A067945(n+1))-1]`
-/

namespace A081763.P18157488425105784383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A067945 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P18157488425105784383

/-! ## A081763.P13637629294594082385

`p?[A067945(n+2)+ceil(sin(n)²)]`
-/

namespace A081763.P13637629294594082385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 2) + ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P13637629294594082385

/-! ## A081763.P14644832635608396115

`p?[A157928(n)+A067945(n+1)]`
-/

namespace A081763.P14644832635608396115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A067945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P14644832635608396115

/-! ## A081763.P1048555820486907506

`p?[A067945(n+2)+A057427(n)]`
-/

namespace A081763.P1048555820486907506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 2) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P1048555820486907506

/-! ## A081763.P16933165668025243295

`p?[or(A060576(n), A067945(n+1))]`
-/

namespace A081763.P16933165668025243295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060576 n) (A067945 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P16933165668025243295

/-! ## A081763.P3897922338277686673

`p?[A067945(n+2)+A060576(n+1)]`
-/

namespace A081763.P3897922338277686673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 2) + A060576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P3897922338277686673

/-! ## A081763.P9739061169016569776

`p?[A067945(n+2)+A030101(n)%2]`
-/

namespace A081763.P9739061169016569776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 2) + Int.tmod (A030101 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P9739061169016569776

/-! ## A081763.P17386925405350562105

`p?[A067945(n+1)+a(A000038(n))]` with `a(0)=1, a(1)=2`
-/

namespace A081763.P17386925405350562105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A067945 (n + 1) + f1 (A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P17386925405350562105

/-! ## A081763.P17148493617447339986

`p?[A067945(n+1)+A000007(C(2, n²))]`
-/

namespace A081763.P17148493617447339986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1) + A000007 (Nat.choose 2 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P17148493617447339986

/-! ## A081763.P15049312063725323598

`p?[A067945(n+1)+A014963(A017341(n))]`
-/

namespace A081763.P15049312063725323598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1) + A014963 (A017341 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P15049312063725323598

/-! ## A081763.P1667410020882877866

`p?[A067945(n+2)+A001221(A001316(n))]`
-/

namespace A081763.P1667410020882877866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 2) + A001221 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P1667410020882877866

/-! ## A081763.P9522882674188868296

`p?[A067945(n+1)-A280193(A166333(n))]`
-/

namespace A081763.P9522882674188868296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1) - A280193 (A166333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P9522882674188868296

/-! ## A081763.P264521912925568847

`p?[A067945(n+1)+A001222(A136548(n+1))]`
-/

namespace A081763.P264521912925568847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1) + A001222 (A136548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081763.P264521912925568847

/-!
# A081764: Primes p such that p*(p-2) divides 3^(p-1)-1.

The programs for A081764, there is no canonical definition to state claims against.
-/

/-! ## A081764.P17067341836931908477

`p?[A100050(A081762(n+1))]`
-/

namespace A081764.P17067341836931908477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (A081762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081764.P17067341836931908477

/-! ## A081764.P5590179388248846948

`p?[A100050(A260406(n+1))]`
-/

namespace A081764.P5590179388248846948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (A260406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081764.P5590179388248846948

/-!
# A081765: Numbers k such that k+2 divides 2^(k-1) - 1.

The programs for A081765, there is no canonical definition to state claims against.
-/

/-! ## A081765.P11878992394934505363

`2*A179209(n+1)-1`
-/

namespace A081765.P11878992394934505363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179209 (n + 1) - 1

end

end A081765.P11878992394934505363

/-! ## A081765.P897512741058972428

`A276967(n+2)-2`
-/

namespace A081765.P897512741058972428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276967 (n + 2) - 2

end

end A081765.P897512741058972428

/-! ## A081765.P14752530240992350312

`∩[2*n+1, A213382(n+1)]`
-/

namespace A081765.P14752530240992350312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081765.P14752530240992350312

/-! ## A081765.P10469586281652548070

`filter[A213382(n+1), A359832(#)]`
-/

namespace A081765.P10469586281652548070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A081765.P10469586281652548070

/-! ## A081765.P8692497402759131953

`filter[A213382(n+1), A361023(#)]`
-/

namespace A081765.P8692497402759131953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A081765.P8692497402759131953

/-! ## A081765.P9343732927364437423

`filter[A213382(n+1), A373157(#)]`
-/

namespace A081765.P9343732927364437423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A081765.P9343732927364437423

/-! ## A081765.P10126084296240678569

`A000265(A179209(n+1)+A179209(n+1)-1)`
-/

namespace A081765.P10126084296240678569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A179209 (n + 1) + (A179209 (n + 1) - 1)).toNat

end

end A081765.P10126084296240678569

/-! ## A081765.P15784781616813950250

`filter[A213382(n+1), A039982(#)]`
-/

namespace A081765.P15784781616813950250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A081765.P15784781616813950250

/-! ## A081765.P6109822054852564381

`filter[A213382(n+1), A093719(#)]`
-/

namespace A081765.P6109822054852564381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A081765.P6109822054852564381

/-! ## A081765.P10079344582145641280

`filter[A213382(n+1), A098725(#)]`
-/

namespace A081765.P10079344582145641280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A081765.P10079344582145641280

/-! ## A081765.P6712628477249895800

`filter[A213382(n+1), A166486(#)]`
-/

namespace A081765.P6712628477249895800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A081765.P6712628477249895800

/-! ## A081765.P14112276714185759620

`∩[A213382(n+1), A381035(n+1)]`
-/

namespace A081765.P14112276714185759620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081765.P14112276714185759620

/-! ## A081765.P17775232475970578162

`∩[A213382(n+1), A373992(n+1)]`
-/

namespace A081765.P17775232475970578162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081765.P17775232475970578162

/-! ## A081765.P10823006495980140746

`∩[A213382(n+1), A326835(n+1)]`
-/

namespace A081765.P10823006495980140746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081765.P10823006495980140746

/-! ## A081765.P5847615745634664944

`A004273(A179209(n+1))`
-/

namespace A081765.P5847615745634664944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A179209 (n + 1)).toNat

end

end A081765.P5847615745634664944

/-! ## A081765.P10690208704205495882

`∩[A213382(n+1), A004273(n)]`
-/

namespace A081765.P10690208704205495882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081765.P10690208704205495882

/-! ## A081765.P8980820907320537870

`∩[A213382(n+1), A004274(n)]`
-/

namespace A081765.P8980820907320537870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081765.P8980820907320537870

/-!
# A081767: Numbers k such that k^2 - 1 divides binomial(2k,k).

The programs for A081767, there is no canonical definition to state claims against.
-/

/-! ## A081767.P13026848586819503224

`∩[A004782(n+1), A062289(n+1)]`
-/

namespace A081767.P13026848586819503224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081767.P13026848586819503224

/-! ## A081767.P16602484628131240816

`eq[1, A248123(n+1)]+2`
-/

namespace A081767.P16602484628131240816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A081767.P16602484628131240816

/-! ## A081767.P3455395695670010911

`filter[A004782(n+1), A043545(#)]`
-/

namespace A081767.P3455395695670010911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A081767.P3455395695670010911

/-! ## A081767.P10578931408634625125

`record[root(A020725(n+1), A248123(n+1))]`
-/

namespace A081767.P10578931408634625125
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℝ) ^ (1 / (A248123 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081767.P10578931408634625125

/-! ## A081767.P9793556425570380846

`record[(A071416(n+1)+1)/A248123(n+1)]`
-/

namespace A081767.P9793556425570380846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071416 (n + 1) + 1 : ℚ) / (A248123 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081767.P9793556425570380846

/-! ## A081767.P12652567012521494845

`record[A004782(n+1)/A248123(A014847(n+1))]`
-/

namespace A081767.P12652567012521494845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004782 (n + 1) : ℚ) / (A248123 (A014847 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081767.P12652567012521494845

/-! ## A081767.P2445866199004238295

`A020725(record[A071416(n+1)/A248123(n+1)])`
-/

namespace A081767.P2445866199004238295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071416 (n + 1) : ℚ) / (A248123 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A081767.P2445866199004238295

/-! ## A081767.P9421101438110480170

`filter[A004782(n+1), A267442(#)]`
-/

namespace A081767.P9421101438110480170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A081767.P9421101438110480170

/-! ## A081767.P3199904733118518707

`record[root(A008619(2*(n+1)), A248123(n+1))]`
-/

namespace A081767.P3199904733118518707
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * (n + 1)) : ℝ) ^ (1 / (A248123 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081767.P3199904733118518707

/-!
# A081768: Number of k, 1<=k<=n, such that C(n,k) divides C(2n,2k).

The programs for A081768, there is no canonical definition to state claims against.
-/

/-! ## A081768.P838782570974555451

`A066272(A341660(n+1)+A314941(n))`
-/

namespace A081768.P838782570974555451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A341660 (n + 1) + A314941 n).toNat

end

end A081768.P838782570974555451

/-! ## A081768.P3460702430633038745

`A005811(A046163(n+1)*A190222(n+1))`
-/

namespace A081768.P3460702430633038745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A046163 (n + 1) * A190222 (n + 1)).toNat

end

end A081768.P3460702430633038745

/-!
# A081769: a(n)-th term of the continued fraction for 2*Sum_{k>=0} 1/2^(2^k) is 2.

The programs for A081769, the canonical program `A081769.P1839311465366829947` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081769 has offset 1).

The definition of A081769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081769.P1839311465366829947

`∑[3*A092910(n)-4]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081769

/-- `∑[3*A092910(n)-4]` -/
def P1839311465366829947.Spec : Prop :=
  ∀ n, P1839311465366829947.a n = A081769 (n + 1)

theorem P1839311465366829947.correct : P1839311465366829947.Spec := by
  intro n
  simp only [A081769, Nat.add_sub_cancel]

end A081769

/-! ## A081769.P17108459872025136359

`A014682(∑[A006464(n+1)])-n`
-/

namespace A081769.P17108459872025136359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A081769.P17108459872025136359

namespace A081769

/-- `A014682(∑[A006464(n+1)])-n` -/
def P17108459872025136359.Spec : Prop :=
  ∀ n, P17108459872025136359.a n = A081769 (n + 1)

end A081769

/-! ## A081769.P4991077000977116968

`∑[11-Δ[A317539(2*n+1)]]`
-/

namespace A081769.P4991077000977116968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317539 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081769.P4991077000977116968

namespace A081769

/-- `∑[11-Δ[A317539(2*n+1)]]` -/
def P4991077000977116968.Spec : Prop :=
  ∀ n, P4991077000977116968.a n = A081769 (n + 1)

end A081769

/-! ## A081769.P9616813185527012417

`eq[2, A006466(n)]+1`
-/

namespace A081769.P9616813185527012417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081769.P9616813185527012417

namespace A081769

/-- `eq[2, A006466(n)]+1` -/
def P9616813185527012417.Spec : Prop :=
  ∀ n, (P9616813185527012417.a n : ℤ) = A081769 (n + 1)

end A081769

/-! ## A081769.P7099233897626848330

`eq[2, A006466(n-A006466(a(n-1)))]` with `a(0)=6`
-/

namespace A081769.P7099233897626848330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A006466 ((n : ℤ) - A006466 (f2 (n - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081769.P7099233897626848330

namespace A081769

/-- `eq[2, A006466(n-A006466(a(n-1)))]` -/
def P7099233897626848330.Spec : Prop :=
  ∀ n, (P7099233897626848330.a n : ℤ) = A081769 (n + 1)

end A081769

/-! ## A081769.P11255267721866595672

`A020725(eq[2, A006466(n)])`
-/

namespace A081769.P11255267721866595672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081769.P11255267721866595672

namespace A081769

/-- `A020725(eq[2, A006466(n)])` -/
def P11255267721866595672.Spec : Prop :=
  ∀ n, P11255267721866595672.a n = A081769 (n + 1)

end A081769

/-! ## A081769.P2983913964100581145

`A153152(eq[2, A006466(n)])`
-/

namespace A081769.P2983913964100581145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081769.P2983913964100581145

namespace A081769

/-- `A153152(eq[2, A006466(n)])` -/
def P2983913964100581145.Spec : Prop :=
  ∀ n, P2983913964100581145.a n = A081769 (n + 1)

end A081769

/-! ## A081769.P6173071829082198951

`eq[2, A006466(A153151(n))]`
-/

namespace A081769.P6173071829082198951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A153151 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081769.P6173071829082198951

namespace A081769

/-- `eq[2, A006466(A153151(n))]` -/
def P6173071829082198951.Spec : Prop :=
  ∀ n, (P6173071829082198951.a n : ℤ) = A081769 (n + 1)

end A081769

/-! ## A081769.P10536033105974590752

`A008619(2*eq[2, A006466(n)])`
-/

namespace A081769.P10536033105974590752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081769.P10536033105974590752

namespace A081769

/-- `A008619(2*eq[2, A006466(n)])` -/
def P10536033105974590752.Spec : Prop :=
  ∀ n, P10536033105974590752.a n = A081769 (n + 1)

end A081769

/-! ## A081769.P13620406548384741393

`A052938(2*eq[2, A006466(n)])`
-/

namespace A081769.P13620406548384741393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081769.P13620406548384741393

namespace A081769

/-- `A052938(2*eq[2, A006466(n)])` -/
def P13620406548384741393.Spec : Prop :=
  ∀ n, P13620406548384741393.a n = A081769 (n + 1)

end A081769

/-!
# A081770: Numbers twice their squarefree kernel (A007947).

The programs for A081770, the canonical program `A081770.P8847963435303273364` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081770 has offset 1).

The definition of A081770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081770.P11939662985266041292

`2*A039956(n+1)`
-/

namespace A081770.P11939662985266041292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039956 (n + 1)

end

end A081770.P11939662985266041292

namespace A081770

/-- `2*A039956(n+1)` -/
def P11939662985266041292.Spec : Prop :=
  ∀ n, P11939662985266041292.a n = A081770 (n + 1)

theorem P11939662985266041292.correct : P11939662985266041292.Spec := by
  intro n
  simp only [A081770, Nat.add_sub_cancel, A081770.P11939662985266041292.a, A081770.P8847963435303273364.a, A039956, A039956.P6592204116604427737.a, A056911, A056911.P3674524494642334646.f1, A056911.P3674524494642334646.f2, A056911.P3674524494642334646.a, A323239, A323239.P16564446151600433291.f1, A323239.P16564446151600433291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081770

/-! ## A081770.P8847963435303273364

`4*A056911(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081770

/-- `4*A056911(n+1)` -/
def P8847963435303273364.Spec : Prop :=
  ∀ n, P8847963435303273364.a n = A081770 (n + 1)

theorem P8847963435303273364.correct : P8847963435303273364.Spec := by
  intro n
  simp only [A081770, Nat.add_sub_cancel]

end A081770

/-! ## A081770.P5722838896392698898

`4*sqrt(A392366(n+1))`
-/

namespace A081770.P5722838896392698898
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A392366 (n + 1) : ℝ)

end

end A081770.P5722838896392698898

namespace A081770

/-- `4*sqrt(A392366(n+1))` -/
def P5722838896392698898.Spec : Prop :=
  ∀ n, P5722838896392698898.a n = (A081770 (n + 1) : ℝ)

end A081770

/-! ## A081770.P14746810701060055062

`record[lcm(4, A005117(n+1))]`
-/

namespace A081770.P14746810701060055062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A005117 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P14746810701060055062

namespace A081770

/-- `record[lcm(4, A005117(n+1))]` -/
def P14746810701060055062.Spec : Prop :=
  ∀ n, (P14746810701060055062.a n : ℤ) = A081770 (n + 1)

end A081770

/-! ## A081770.P10961389296753874565

`2*(A160785(n+1)-1)`
-/

namespace A081770.P10961389296753874565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A160785 (n + 1) - 1)

end

end A081770.P10961389296753874565

namespace A081770

/-- `2*(A160785(n+1)-1)` -/
def P10961389296753874565.Spec : Prop :=
  ∀ n, P10961389296753874565.a n = A081770 (n + 1)

theorem P10961389296753874565.correct : P10961389296753874565.Spec := by
  intro n
  simp only [A081770, Nat.add_sub_cancel, A081770.P10961389296753874565.a, A081770.P8847963435303273364.a, A056911, A056911.P3674524494642334646.f1, A056911.P3674524494642334646.f2, A056911.P3674524494642334646.a, A160785, A160785.P2444679081168475481.a, A039956, A039956.P6592204116604427737.a, A323239, A323239.P16564446151600433291.f1, A323239.P16564446151600433291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081770

/-! ## A081770.P8951521244897826283

`4*lt[A087049(2*n), 1]`
-/

namespace A081770.P8951521244897826283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081770.P8951521244897826283

namespace A081770

/-- `4*lt[A087049(2*n), 1]` -/
def P8951521244897826283.Spec : Prop :=
  ∀ n, (P8951521244897826283.a n : ℤ) = A081770 (n + 1)

end A081770

/-! ## A081770.P5517311216425794021

`record[2*A007913(2*(n+1))]`
-/

namespace A081770.P5517311216425794021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007913 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P5517311216425794021

namespace A081770

/-- `record[2*A007913(2*(n+1))]` -/
def P5517311216425794021.Spec : Prop :=
  ∀ n, P5517311216425794021.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P2753497679678799060

`record[2*A007947(2*(n+1))]`
-/

namespace A081770.P2753497679678799060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P2753497679678799060

namespace A081770

/-- `record[2*A007947(2*(n+1))]` -/
def P2753497679678799060.Spec : Prop :=
  ∀ n, P2753497679678799060.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P4772390702073108314

`record[(2*n+1)*(A008683(2*n+1)²+3)]`
-/

namespace A081770.P4772390702073108314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (A008683 (2 * n + 1) ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P4772390702073108314

namespace A081770

/-- `record[(2*n+1)*(A008683(2*n+1)²+3)]` -/
def P4772390702073108314.Spec : Prop :=
  ∀ n, P4772390702073108314.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P12129261905205705706

`2*A016825(A264387(n+1))`
-/

namespace A081770.P12129261905205705706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (A264387 (n + 1)).toNat

end

end A081770.P12129261905205705706

namespace A081770

/-- `2*A016825(A264387(n+1))` -/
def P12129261905205705706.Spec : Prop :=
  ∀ n, P12129261905205705706.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P16909271400273299066

`2*A005117(A383008(n+1))`
-/

namespace A081770.P16909271400273299066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005117 (A383008 (n + 1)).toNat

end

end A081770.P16909271400273299066

namespace A081770

/-- `2*A005117(A383008(n+1))` -/
def P16909271400273299066.Spec : Prop :=
  ∀ n, P16909271400273299066.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P41060858267299036

`2*eq[A073097(n), A105570(n)]`
-/

namespace A081770.P41060858267299036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081770.P41060858267299036

namespace A081770

/-- `2*eq[A073097(n), A105570(n)]` -/
def P41060858267299036.Spec : Prop :=
  ∀ n, (P41060858267299036.a n : ℤ) = A081770 (n + 1)

end A081770

/-! ## A081770.P14294708008776309010

`A065642(record[A007947(2*(n+1))])`
-/

namespace A081770.P14294708008776309010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081770.P14294708008776309010

namespace A081770

/-- `A065642(record[A007947(2*(n+1))])` -/
def P14294708008776309010.Spec : Prop :=
  ∀ n, P14294708008776309010.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P2979211204225117934

`A039956(n+1)+A005117(A383008(n+1))`
-/

namespace A081770.P2979211204225117934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) + A005117 (A383008 (n + 1)).toNat

end

end A081770.P2979211204225117934

namespace A081770

/-- `A039956(n+1)+A005117(A383008(n+1))` -/
def P2979211204225117934.Spec : Prop :=
  ∀ n, P2979211204225117934.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P1516218518978236152

`A039956(n+1)+A056911(n+1)+A056911(n+1)`
-/

namespace A081770.P1516218518978236152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) + (A056911 (n + 1) + A056911 (n + 1))

end

end A081770.P1516218518978236152

namespace A081770

/-- `A039956(n+1)+A056911(n+1)+A056911(n+1)` -/
def P1516218518978236152.Spec : Prop :=
  ∀ n, P1516218518978236152.a n = A081770 (n + 1)

theorem P1516218518978236152.correct : P1516218518978236152.Spec := by
  intro n
  simp only [A081770, Nat.add_sub_cancel, A081770.P1516218518978236152.a, A081770.P8847963435303273364.a, A039956, A039956.P6592204116604427737.a, A056911, A056911.P3674524494642334646.f1, A056911.P3674524494642334646.f2, A056911.P3674524494642334646.a, A323239, A323239.P16564446151600433291.f1, A323239.P16564446151600433291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081770

/-! ## A081770.P412489211331309149

`A017113(A264387(n+1))`
-/

namespace A081770.P412489211331309149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A264387 (n + 1)).toNat

end

end A081770.P412489211331309149

namespace A081770

/-- `A017113(A264387(n+1))` -/
def P412489211331309149.Spec : Prop :=
  ∀ n, P412489211331309149.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P11728511889071074655

`record[4*∏{p}[2*n+1, #]]`
-/

namespace A081770.P11728511889071074655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P11728511889071074655

namespace A081770

/-- `record[4*∏{p}[2*n+1, #]]` -/
def P11728511889071074655.Spec : Prop :=
  ∀ n, (P11728511889071074655.a n : ℤ) = A081770 (n + 1)

end A081770

/-! ## A081770.P6408500223867442266

`record[(2*n+1)*(5-∏{e}[2*n+1, #])]`
-/

namespace A081770.P6408500223867442266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (5 - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P6408500223867442266

namespace A081770

/-- `record[(2*n+1)*(5-∏{e}[2*n+1, #])]` -/
def P6408500223867442266.Spec : Prop :=
  ∀ n, P6408500223867442266.a n = A081770 (n + 1)

end A081770

/-! ## A081770.P18405824982434369820

`record[(2*n+1)*4/∏{e}[2*n+1, #]]`
-/

namespace A081770.P18405824982434369820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (4 / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P18405824982434369820

namespace A081770

/-- `record[(2*n+1)*4/∏{e}[2*n+1, #]]` -/
def P18405824982434369820.Spec : Prop :=
  ∀ n, P18405824982434369820.a n = (A081770 (n + 1) : ℚ)

end A081770

/-! ## A081770.P6029441365348018894

`record[2*A099985(n+1)]`
-/

namespace A081770.P6029441365348018894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081770.P6029441365348018894

namespace A081770

/-- `record[2*A099985(n+1)]` -/
def P6029441365348018894.Spec : Prop :=
  ∀ n, P6029441365348018894.a n = A081770 (n + 1)

end A081770

/-!
# A081771: Continued fraction for Sum_{k>=0} 1/3^(2^k-1).

The programs for A081771, there is no canonical definition to state claims against.
-/

/-! ## A081771.P7428848211454057386

`A081775(n)%4`
-/

namespace A081771.P7428848211454057386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081775 n) 4

end

end A081771.P7428848211454057386

/-! ## A081771.P15372649944494526088

`A081776(n)%5`
-/

namespace A081771.P15372649944494526088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081776 n) 5

end

end A081771.P15372649944494526088

/-! ## A081771.P1670212410524362083

`A081777(n)%6`
-/

namespace A081771.P1670212410524362083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081777 n) 6

end

end A081771.P1670212410524362083

/-! ## A081771.P8058344635674866008

`A034002(A006465(n))`
-/

namespace A081771.P8058344635674866008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034002 (A006465 n).toNat

end

end A081771.P8058344635674866008

/-! ## A081771.P12861416729127636590

`A008479(xor(11, A006465(n)))`
-/

namespace A081771.P12861416729127636590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (Int.xor 11 (A006465 n)).toNat

end

end A081771.P12861416729127636590

/-! ## A081771.P15213534539162114132

`A000188(xor(35, A006465(n)))`
-/

namespace A081771.P15213534539162114132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.xor 35 (A006465 n)).toNat

end

end A081771.P15213534539162114132

/-! ## A081771.P11921330478993443821

`gcd(A002445(n), A081777(n))`
-/

namespace A081771.P11921330478993443821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A081777 n)

end

end A081771.P11921330478993443821

/-! ## A081771.P3707888453238375277

`and(A001538(n), A081775(n))`
-/

namespace A081771.P3707888453238375277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001538 n) (A081775 n)

end

end A081771.P3707888453238375277

/-! ## A081771.P13347413670302910853

`and(A001539(n), A081775(n))`
-/

namespace A081771.P13347413670302910853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A081775 n)

end

end A081771.P13347413670302910853

/-! ## A081771.P493707653011619370

`and(A002148(n), A081775(n))`
-/

namespace A081771.P493707653011619370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A081775 n)

end

end A081771.P493707653011619370

/-! ## A081771.P1791582553115020151

`and(A004769(n), A081775(n))`
-/

namespace A081771.P1791582553115020151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004769 n) (A081775 n)

end

end A081771.P1791582553115020151

/-! ## A081771.P2621618624502968881

`and(A017101(n), A081775(n))`
-/

namespace A081771.P2621618624502968881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017101 n) (A081775 n)

end

end A081771.P2621618624502968881

/-! ## A081771.P9219010987823941741

`and(A017103(n), A081775(n))`
-/

namespace A081771.P9219010987823941741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017103 n) (A081775 n)

end

end A081771.P9219010987823941741

/-! ## A081771.P5445970173914026393

`and(A017105(n), A081775(n))`
-/

namespace A081771.P5445970173914026393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017105 n) (A081775 n)

end

end A081771.P5445970173914026393

/-! ## A081771.P6052523850740786867

`and(A066322(n), A081775(n))`
-/

namespace A081771.P6052523850740786867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066322 n) (A081775 n)

end

end A081771.P6052523850740786867

/-! ## A081771.P15786201317719698758

`and(A081775(n), A086760(n))`
-/

namespace A081771.P15786201317719698758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081775 n) (A086760 n)

end

end A081771.P15786201317719698758

/-! ## A081771.P5972322356751240301

`and(A081775(n), A094200(n))`
-/

namespace A081771.P5972322356751240301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081775 n) (A094200 n)

end

end A081771.P5972322356751240301

/-! ## A081771.P13868903340728681128

`and(A081775(n), A106839(n))`
-/

namespace A081771.P13868903340728681128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081775 n) (A106839 n)

end

end A081771.P13868903340728681128

/-! ## A081771.P1255270000741040759

`and(A081775(n), A122553(n))`
-/

namespace A081771.P1255270000741040759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081775 n) (A122553 n)

end

end A081771.P1255270000741040759

/-! ## A081771.P15386674436641927640

`and(A081775(n), A134429(n))`
-/

namespace A081771.P15386674436641927640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081775 n) (A134429 n)

end

end A081771.P15386674436641927640

/-!
# A081772: Continued fraction for Sum_{k>=0} 1/4^(2^k-1).

The programs for A081772, there is no canonical definition to state claims against.
-/

/-! ## A081772.P4617319353471269593

`A081777(n)%5`
-/

namespace A081772.P4617319353471269593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081777 n) 5

end

end A081772.P4617319353471269593

/-! ## A081772.P15833616383910216351

`dr(A006465(n)%17)`
-/

namespace A081772.P15833616383910216351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A006465 n) 17)

end

end A081772.P15833616383910216351

/-! ## A081772.P10521219126999489668

`A006465(n*a(floor(acot(n))))%5` with `a(0)=1`
-/

namespace A081772.P10521219126999489668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A006465 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat) 5

end

end A081772.P10521219126999489668

/-! ## A081772.P13206879553044637498

`A050873(A006465(n)+6)`
-/

namespace A081772.P13206879553044637498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A006465 n + 6).toNat

end

end A081772.P13206879553044637498

/-! ## A081772.P3594802649982651530

`gcd(A006465(n), A329514(n))`
-/

namespace A081772.P3594802649982651530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006465 n) (A329514 n)

end

end A081772.P3594802649982651530

/-! ## A081772.P9223431991249676003

`(A006465(n)+A000007(n))%6`
-/

namespace A081772.P9223431991249676003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006465 n + A000007 n) 6

end

end A081772.P9223431991249676003

/-! ## A081772.P3597295027229118511

`A081773(n)+A081773(n)-A081774(n)`
-/

namespace A081772.P3597295027229118511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081773 n + (A081773 n - A081774 n)

end

end A081772.P3597295027229118511

/-! ## A081772.P2198338001278158346

`A081774(n)+A081774(n)-A081776(n)`
-/

namespace A081772.P2198338001278158346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081774 n + (A081774 n - A081776 n)

end

end A081772.P2198338001278158346

/-!
# A081773: Continued fraction for Sum_{k>=0} 1/5^(2^k-1).

The programs for A081773, there is no canonical definition to state claims against.
-/

/-! ## A081773.P10037343618823607135

`A055649(A006465(n))%8`
-/

namespace A081773.P10037343618823607135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055649 (A006465 n).toNat) 8

end

end A081773.P10037343618823607135

/-! ## A081773.P8169423838337040869

`A081772(n)+A081772(n)-A081771(n)`
-/

namespace A081773.P8169423838337040869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081772 n + (A081772 n - A081771 n)

end

end A081773.P8169423838337040869

/-! ## A081773.P5927768474736599569

`A081772(n)+A081775(n)-A081774(n)`
-/

namespace A081773.P5927768474736599569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081772 n + (A081775 n - A081774 n)

end

end A081773.P5927768474736599569

/-! ## A081773.P17303596732441034558

`and(A081775(n), A392263(A270640(3*(n+1))))`
-/

namespace A081773.P17303596732441034558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081775 n) (A392263 (A270640 (3 * (n + 1))).toNat)

end

end A081773.P17303596732441034558

/-!
# A081774: Continued fraction for Sum_{k>=0} 1/6^(2^k-1).

The programs for A081774, there is no canonical definition to state claims against.
-/

/-! ## A081774.P17389222936393959841

`A081773(n)+A081773(n)-A081772(n)`
-/

namespace A081774.P17389222936393959841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081773 n + (A081773 n - A081772 n)

end

end A081774.P17389222936393959841

/-!
# A081775: Continued fraction for Sum_{k>=0} 1/7^(2^k-1).

The programs for A081775, there is no canonical definition to state claims against.
-/

/-! ## A081775.P8080175781168178277

`(A006465(n)%19)%10`
-/

namespace A081775.P8080175781168178277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A006465 n) 19) 10

end

end A081775.P8080175781168178277

/-! ## A081775.P5677163498697686419

`A081772(n)+A081777(n)-A081774(n)`
-/

namespace A081775.P5677163498697686419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081772 n + (A081777 n - A081774 n)

end

end A081775.P5677163498697686419

/-! ## A081775.P6291947065935920475

`A081773(n)+A081774(n)-A081772(n)`
-/

namespace A081775.P6291947065935920475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081773 n + (A081774 n - A081772 n)

end

end A081775.P6291947065935920475

/-!
# A081776: Continued fraction for Sum_{k>=0} 1/8^(2^k-1).

The programs for A081776, there is no canonical definition to state claims against.
-/

/-! ## A081776.P3749422937525166669

`dr(xor(36, (A006465(n)%19)%10))`
-/

namespace A081776.P3749422937525166669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor 36 (Int.tmod (Int.tmod (A006465 n) 19) 10))

end

end A081776.P3749422937525166669

/-! ## A081776.P7555108781552567414

`A081774(n)+A081774(n)-A081772(n)`
-/

namespace A081776.P7555108781552567414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081774 n + (A081774 n - A081772 n)

end

end A081776.P7555108781552567414

/-! ## A081776.P767459502047428428

`A081775(n)+A081775(n)-A081774(n)`
-/

namespace A081776.P767459502047428428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081775 n + (A081775 n - A081774 n)

end

end A081776.P767459502047428428

/-!
# A081777: Continued fraction for Sum_{k>=0} 1/9^(2^k-1).

The programs for A081777, there is no canonical definition to state claims against.
-/

/-! ## A081777.P10568245685033224713

`dr(73-A004197(A006465(n)))`
-/

namespace A081777.P10568245685033224713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (73 - A004197 (A006465 n).toNat)

end

end A081777.P10568245685033224713

/-! ## A081777.P11063055208827535501

`dr(A017077(A004197(A006465(n))))`
-/

namespace A081777.P11063055208827535501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A017077 (A004197 (A006465 n).toNat).toNat)

end

end A081777.P11063055208827535501

/-! ## A081777.P2751030160295190794

`A081774(n)+A081775(n)-A081772(n)`
-/

namespace A081777.P2751030160295190794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081774 n + (A081775 n - A081772 n)

end

end A081777.P2751030160295190794

/-! ## A081777.P5105868696389973618

`A030132(lcm(A016825(n), A236559(n+1)))`
-/

namespace A081777.P5105868696389973618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030132 (Int.lcm (A016825 n) (A236559 (n + 1)))

end

end A081777.P5105868696389973618

/-!
# A081779: Ordered m for which m = k^3*a*b*(a^4 - b^4) determine (unique) solution triples(k,a,b), where k=1,2,3,... and (a,b) are coprime pairs, not both odd (i.e., of opposite parity).

The programs for A081779, there is no canonical definition to state claims against.
-/

/-! ## A081779.P3983788938606293051

`A057096(n+1)/2`
-/

namespace A081779.P3983788938606293051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (n + 1) : ℚ) / 2

end

end A081779.P3983788938606293051

/-! ## A081779.P9174171078816350992

`30*A057097(n+1)`
-/

namespace A081779.P9174171078816350992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A057097 (n + 1)

end

end A081779.P9174171078816350992

/-! ## A081779.P5071694558355404483

`A057100(n+1)*A057101(n+1)`
-/

namespace A081779.P5071694558355404483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057100 (n + 1) * A057101 (n + 1)

end

end A081779.P5071694558355404483

/-! ## A081779.P5460865972273170431

`sqrt(A057098(n+1)²+A057099(n+1)²)*A057101(n+1)`
-/

namespace A081779.P5460865972273170431
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A057098 (n + 1) ^ 2 + A057099 (n + 1) ^ 2 : ℝ) * (A057101 (n + 1) : ℝ)

end

end A081779.P5460865972273170431

/-! ## A081779.P1082318446250336560

`record[A057096(A152271(n))/2]`
-/

namespace A081779.P1082318446250336560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057096 (A152271 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081779.P1082318446250336560

/-! ## A081779.P3111152265864247402

`A249674(A057097(n+1))`
-/

namespace A081779.P3111152265864247402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (A057097 (n + 1)).toNat

end

end A081779.P3111152265864247402

/-!
# A081782: Continued cotangent for the Gamma constant.

The programs for A081782, there is no canonical definition to state claims against.
-/

/-! ## A081782.P6356226433550228719

`∑{d}[n, A173286(#!)]`
-/

namespace A081782.P6356226433550228719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A173286 (Nat.factorial d)

end

end A081782.P6356226433550228719

/-!
# A081785: Continued cotangent for log(2).

The programs for A081785, there is no canonical definition to state claims against.
-/

/-! ## A081785.P12183781990271426452

`or(A033452(n), A340390(A333984(n)))`
-/

namespace A081785.P12183781990271426452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033452 n) (A340390 (A333984 n).toNat)

end

end A081785.P12183781990271426452

/-!
# A081789: Continued cotangent for cos(1).

The programs for A081789, there is no canonical definition to state claims against.
-/

/-! ## A081789.P16633195776937274787

`A101583(∑[(1-n)²])+n`
-/

namespace A081789.P16633195776937274787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101583 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A081789.P16633195776937274787

/-!
# A081797: Maximal coefficient (in absolute value) of the minimal polynomial P with integer coefficients such that P(sin(Pi/n)) = 0.

The programs for A081797, there is no canonical definition to state claims against.
-/

/-! ## A081797.P8726566842783642086

`A336647(Δ[n*a(n-1)]+1)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A081797.P8726566842783642086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336647 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 1

end

end A081797.P8726566842783642086

/-! ## A081797.P16461839442973510214

`floor(root(A090245(n), A028920(n)))`
-/

namespace A081797.P16461839442973510214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090245 n : ℝ) ^ (1 / (A028920 n : ℝ))⌋

end

end A081797.P16461839442973510214

/-! ## A081797.P15148707755952879102

`A090245(A124219(n+1)-1)`
-/

namespace A081797.P15148707755952879102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090245 (A124219 (n + 1) - 1).toNat

end

end A081797.P15148707755952879102

/-!
# A081798: a(n) = Sum_{k = 0..n} C(n,k) * C(n+k,k) * C(n+2*k,k).

The programs for A081798, there is no canonical definition to state claims against.
-/

/-! ## A081798.P14356538963858800589

`A229142(∑[n+4]+2)`
-/

namespace A081798.P14356538963858800589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A081798.P14356538963858800589

/-! ## A081798.P10089257834092718439

`record[gcd(A124323(n+2), A229142(n))]`
-/

namespace A081798.P10089257834092718439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124323 (n + 2)) (A229142 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081798.P10089257834092718439

/-! ## A081798.P10014718540736533597

`A229142(A046691(n+2))%A284071(n+5)`
-/

namespace A081798.P10014718540736533597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229142 (A046691 (n + 2)).toNat) (A284071 (n + 5))

end

end A081798.P10014718540736533597

/-! ## A081798.P14033749589208995521

`A054977(3*(n+1))*A229142(A133263(n+4)-6)`
-/

namespace A081798.P14033749589208995521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (3 * (n + 1)) * A229142 (A133263 (n + 4) - 6).toNat

end

end A081798.P14033749589208995521

