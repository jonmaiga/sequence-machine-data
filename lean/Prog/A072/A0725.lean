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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A072500: Product of divisors of n which are >= n^(1/2).

The programs for A072500, there is no canonical definition to state claims against.
-/

/-! ## A072500.P11121322808668539877

`A072499(n+1)*A072501(n+1)`
-/

namespace A072500.P11121322808668539877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1) * A072501 (n + 1)

end

end A072500.P11121322808668539877

/-! ## A072500.P9284065652564091216

`A007955(n+1)/A363520(n+1)`
-/

namespace A072500.P9284065652564091216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A363520 (n + 1) : ℚ)

end

end A072500.P9284065652564091216

/-! ## A072500.P4887133182046219306

`(n+1)^A038548(n+1)/A072499(n+1)`
-/

namespace A072500.P4887133182046219306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A038548 (n + 1) : ℤ) / (A072499 (n + 1) : ℚ)

end

end A072500.P4887133182046219306

/-! ## A072500.P5652774562475766291

`A007956(n+1)/A363521(n+1)*A072501(n+1)`
-/

namespace A072500.P5652774562475766291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) : ℚ) / (A363521 (n + 1) : ℚ) * (A072501 (n + 1) : ℚ)

end

end A072500.P5652774562475766291

/-!
# A072501: Ratio of the product of divisors of n which are > n^(1/2) to product of divisors of n which are < n^(1/2).

The programs for A072501, there is no canonical definition to state claims against.
-/

/-! ## A072501.P1439853318526430893

`A072500(n+1)/A072499(n+1)`
-/

namespace A072501.P1439853318526430893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072500 (n + 1) : ℚ) / (A072499 (n + 1) : ℚ)

end

end A072501.P1439853318526430893

/-! ## A072501.P3869009895781384753

`A007955(n+1)/(A072499(n+1)*A363520(n+1))`
-/

namespace A072501.P3869009895781384753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A072499 (n + 1) * A363520 (n + 1) : ℚ)

end

end A072501.P3869009895781384753

/-! ## A072501.P11047968427730957013

`floor((n+1)^A038548(n+1)/A072499(n+1))/A072499(n+1)`
-/

namespace A072501.P11047968427730957013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) ^ (A038548 (n + 1) : ℤ) / (A072499 (n + 1) : ℚ)⌋ : ℚ) / (A072499 (n + 1) : ℚ)

end

end A072501.P11047968427730957013

/-! ## A072501.P5381250224198206573

`A072500(n+1)/floor((n+1)^A038548(n+1)/A072500(n+1))`
-/

namespace A072501.P5381250224198206573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072500 (n + 1) : ℚ) / (⌊(n + 1 : ℚ) ^ (A038548 (n + 1) : ℤ) / (A072500 (n + 1) : ℚ)⌋ : ℚ)

end

end A072501.P5381250224198206573

/-!
# A072502: Numbers that are run sums (trapezoidal, the difference between two triangular numbers) in exactly 3 ways.

The programs for A072502, the canonical program `A072502.P9604153156894014729` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072502 has offset 1).

The definition of A072502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072502.P9604153156894014729

`eq[3, A318874(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072502

/-- `eq[3, A318874(n+1)]+1` -/
def P9604153156894014729.Spec : Prop :=
  ∀ n, (P9604153156894014729.a n : ℤ) = A072502 (n + 1)

theorem P9604153156894014729.correct : P9604153156894014729.Spec := by
  intro n
  simp only [A072502, Nat.add_sub_cancel]

end A072502

/-! ## A072502.P10362877878405222817

`eq[4, A336158(n+1)]+1`
-/

namespace A072502.P10362877878405222817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P10362877878405222817

namespace A072502

/-- `eq[4, A336158(n+1)]+1` -/
def P10362877878405222817.Spec : Prop :=
  ∀ n, (P10362877878405222817.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P7771543895990224207

`eq[3, A000005(A000265(n+1))]+1`
-/

namespace A072502.P7771543895990224207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P7771543895990224207

namespace A072502

/-- `eq[3, A000005(A000265(n+1))]+1` -/
def P7771543895990224207.Spec : Prop :=
  ∀ n, (P7771543895990224207.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P1830144954489511725

`eq[2, A066910(A335283(n+1))]+1`
-/

namespace A072502.P1830144954489511725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066910 (A335283 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P1830144954489511725

namespace A072502

/-- `eq[2, A066910(A335283(n+1))]+1` -/
def P1830144954489511725.Spec : Prop :=
  ∀ n, (P1830144954489511725.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P9851632677857255971

`eq[2, A069283(n)]`
-/

namespace A072502.P9851632677857255971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072502.P9851632677857255971

namespace A072502

/-- `eq[2, A069283(n)]` -/
def P9851632677857255971.Spec : Prop :=
  ∀ n, (P9851632677857255971.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P15163017256580693957

`eq[3, A001227(n+1)]+1`
-/

namespace A072502.P15163017256580693957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P15163017256580693957

namespace A072502

/-- `eq[3, A001227(n+1)]+1` -/
def P15163017256580693957.Spec : Prop :=
  ∀ n, (P15163017256580693957.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P11543692311169213965

`eq[3, A001227(A028310(n))]`
-/

namespace A072502.P11543692311169213965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072502.P11543692311169213965

namespace A072502

/-- `eq[3, A001227(A028310(n))]` -/
def P11543692311169213965.Spec : Prop :=
  ∀ n, (P11543692311169213965.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P11886493558616345762

`eq[1, A320003(A008458(n))-2]`
-/

namespace A072502.P11886493558616345762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A008458 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072502.P11886493558616345762

namespace A072502

/-- `eq[1, A320003(A008458(n))-2]` -/
def P11886493558616345762.Spec : Prop :=
  ∀ n, (P11886493558616345762.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P1766751315049461004

`eq[2, A078898(A064989(n+1))]+1`
-/

namespace A072502.P1766751315049461004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A064989 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P1766751315049461004

namespace A072502

/-- `eq[2, A078898(A064989(n+1))]+1` -/
def P1766751315049461004.Spec : Prop :=
  ∀ n, (P1766751315049461004.a n : ℤ) = A072502 (n + 1)

end A072502

/-! ## A072502.P15083141528992034104

`eq[2, A078898(A268674(n+1))]+1`
-/

namespace A072502.P15083141528992034104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A268674 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P15083141528992034104

namespace A072502

/-- `eq[2, A078898(A268674(n+1))]+1` -/
def P15083141528992034104.Spec : Prop :=
  ∀ n, (P15083141528992034104.a n : ℤ) = A072502 (n + 1)

end A072502

/-!
# A072504: a(n) = LCM of divisors of n which are <= sqrt(n).

The programs for A072504, the canonical program `A072504.P15978785907571623922` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072504 has offset 1).

The definition of A072504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072504.P772795980203128095

`(n+1)/A072505(n+1)`
-/

namespace A072504.P772795980203128095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072505 (n + 1) : ℚ)

end

end A072504.P772795980203128095

namespace A072504

/-- `(n+1)/A072505(n+1)` -/
def P772795980203128095.Spec : Prop :=
  ∀ n, P772795980203128095.a n = (A072504 (n + 1) : ℚ)

end A072504

/-! ## A072504.P9477814915304290590

`gcd(n+1, A003418(round(sqrt(n))))`
-/

namespace A072504.P9477814915304290590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003418 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat)

end

end A072504.P9477814915304290590

namespace A072504

/-- `gcd(n+1, A003418(round(sqrt(n))))` -/
def P9477814915304290590.Spec : Prop :=
  ∀ n, (P9477814915304290590.a n : ℤ) = A072504 (n + 1)

end A072504

/-! ## A072504.P15978785907571623922

`gcd(A003418(A000194(n)), n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072504

/-- `gcd(A003418(A000194(n)), n+1)` -/
def P15978785907571623922.Spec : Prop :=
  ∀ n, (P15978785907571623922.a n : ℤ) = A072504 (n + 1)

theorem P15978785907571623922.correct : P15978785907571623922.Spec := by
  intro n
  simp only [A072504, Nat.add_sub_cancel]

end A072504

/-! ## A072504.P1696947797828306594

`val(A000079(n), A000079(A072505(n+1)))+1`
-/

namespace A072504.P1696947797828306594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A072505 (n + 1)).toNat).toNat + 1

end

end A072504.P1696947797828306594

namespace A072504

/-- `val(A000079(n), A000079(A072505(n+1)))+1` -/
def P1696947797828306594.Spec : Prop :=
  ∀ n, (P1696947797828306594.a n : ℤ) = A072504 (n + 1)

end A072504

/-! ## A072504.P4928629623621632114

`(n+1)*A072505(n+1)^A008683(A081256(n+1))`
-/

namespace A072504.P4928629623621632114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A072505 (n + 1) : ℚ) ^ (A008683 (A081256 (n + 1)).toNat : ℤ)

end

end A072504.P4928629623621632114

namespace A072504

/-- `(n+1)*A072505(n+1)^A008683(A081256(n+1))` -/
def P4928629623621632114.Spec : Prop :=
  ∀ n, P4928629623621632114.a n = (A072504 (n + 1) : ℚ)

end A072504

/-! ## A072504.P5009522687077292953

`A234575(A072505(n+1)+∑[n])`
-/

namespace A072504.P5009522687077292953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A072505 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A072504.P5009522687077292953

namespace A072504

/-- `A234575(A072505(n+1)+∑[n])` -/
def P5009522687077292953.Spec : Prop :=
  ∀ n, P5009522687077292953.a n = A072504 (n + 1)

end A072504

/-!
# A072505: a(n) = n / (LCM of divisors of n which are <= sqrt(n)).

The programs for A072505, the canonical program `A072505.P1528102251887923534` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072505 has offset 1).

The definition of A072505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072505.P1528102251887923534

`(n+1)/A072504(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072505

/-- `(n+1)/A072504(n+1)` -/
def P1528102251887923534.Spec : Prop :=
  ∀ n, P1528102251887923534.a n = (A072505 (n + 1) : ℚ)

end A072505

/-! ## A072505.P9897714848814878647

`(n+1)/gcd(n+1, A003418(round(sqrt(n))))`
-/

namespace A072505.P9897714848814878647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A003418 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat) : ℚ)

end

end A072505.P9897714848814878647

namespace A072505

/-- `(n+1)/gcd(n+1, A003418(round(sqrt(n))))` -/
def P9897714848814878647.Spec : Prop :=
  ∀ n, P9897714848814878647.a n = (A072505 (n + 1) : ℚ)

end A072505

/-! ## A072505.P18357108986656654717

`A088387(n+1)^(A001222(n+1)-A333750(n+1))`
-/

namespace A072505.P18357108986656654717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (n + 1) : ℚ) ^ (A001222 (n + 1) - A333750 (n + 1) : ℤ)

end

end A072505.P18357108986656654717

namespace A072505

/-- `A088387(n+1)^(A001222(n+1)-A333750(n+1))` -/
def P18357108986656654717.Spec : Prop :=
  ∀ n, P18357108986656654717.a n = (A072505 (n + 1) : ℚ)

end A072505

/-! ## A072505.P15561148629313189370

`A088387(n+1)^(A001222(n+1)-A001222(A072504(n+1)))`
-/

namespace A072505.P15561148629313189370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (n + 1) : ℚ) ^ (A001222 (n + 1) - A001222 (A072504 (n + 1)).toNat : ℤ)

end

end A072505.P15561148629313189370

namespace A072505

/-- `A088387(n+1)^(A001222(n+1)-A001222(A072504(n+1)))` -/
def P15561148629313189370.Spec : Prop :=
  ∀ n, P15561148629313189370.a n = (A072505 (n + 1) : ℚ)

end A072505

/-! ## A072505.P10536210227911865320

`A219158(A072504(n+1)+∑[n])`
-/

namespace A072505.P10536210227911865320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A072504 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A072505.P10536210227911865320

namespace A072505

/-- `A219158(A072504(n+1)+∑[n])` -/
def P10536210227911865320.Spec : Prop :=
  ∀ n, P10536210227911865320.a n = A072505 (n + 1)

end A072505

/-! ## A072505.P15949290717669962873

`A234575(A072504(n+1)+∑[n])`
-/

namespace A072505.P15949290717669962873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A072504 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A072505.P15949290717669962873

namespace A072505

/-- `A234575(A072504(n+1)+∑[n])` -/
def P15949290717669962873.Spec : Prop :=
  ∀ n, P15949290717669962873.a n = A072505 (n + 1)

end A072505

/-! ## A072505.P3658817519905083597

`A010766(A072504(n+1)+∑[n])`
-/

namespace A072505.P3658817519905083597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A072504 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A072505.P3658817519905083597

namespace A072505

/-- `A010766(A072504(n+1)+∑[n])` -/
def P3658817519905083597.Spec : Prop :=
  ∀ n, P3658817519905083597.a n = A072505 (n + 1)

end A072505

/-! ## A072505.P1603070915659767116

`A126988(A072504(n+1)+∑[n])`
-/

namespace A072505.P1603070915659767116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A072504 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A072505.P1603070915659767116

namespace A072505

/-- `A126988(A072504(n+1)+∑[n])` -/
def P1603070915659767116.Spec : Prop :=
  ∀ n, P1603070915659767116.a n = A072505 (n + 1)

end A072505

/-! ## A072505.P2995405349918778917

`A051537(A072504(n+1)+A000217(n))`
-/

namespace A072505.P2995405349918778917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A072504 (n + 1) + A000217 n).toNat

end

end A072505.P2995405349918778917

namespace A072505

/-- `A051537(A072504(n+1)+A000217(n))` -/
def P2995405349918778917.Spec : Prop :=
  ∀ n, P2995405349918778917.a n = A072505 (n + 1)

end A072505

/-! ## A072505.P299379211084874048

`A054531(A072504(n+1)+A000217(n))`
-/

namespace A072505.P299379211084874048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A072504 (n + 1) + A000217 n).toNat

end

end A072505.P299379211084874048

namespace A072505

/-- `A054531(A072504(n+1)+A000217(n))` -/
def P299379211084874048.Spec : Prop :=
  ∀ n, P299379211084874048.a n = A072505 (n + 1)

end A072505

/-!
# A072506: Triangle giving T(n,m) = number of necklaces of two colors with 2n beads of which m=1..n are black.

The programs for A072506, there is no canonical definition to state claims against.
-/

/-! ## A072506.P4998078703196310304

`A037306(A341706(n+1))`
-/

namespace A072506.P4998078703196310304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A341706 (n + 1)).toNat

end

end A072506.P4998078703196310304

/-! ## A072506.P13994370804575722998

`A047996((round(sqrt(2*(n+1)))+1)²+2*n+1-A002260(n+1))`
-/

namespace A072506.P13994370804575722998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A072506.P13994370804575722998

/-! ## A072506.P6075501168235265708

`A037306(A185869(n+1)-A002262(n))`
-/

namespace A072506.P6075501168235265708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A185869 (n + 1) - A002262 n).toNat

end

end A072506.P6075501168235265708

/-! ## A072506.P15582343307543775234

`A047996(A292565(n+1)-A002024(n+1))`
-/

namespace A072506.P15582343307543775234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A292565 (n + 1) - A002024 (n + 1)).toNat

end

end A072506.P15582343307543775234

/-! ## A072506.P9534898772823728990

`A047996(A185871(n+1)-A134868(n+1))`
-/

namespace A072506.P9534898772823728990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A185871 (n + 1) - A134868 (n + 1)).toNat

end

end A072506.P9534898772823728990

/-! ## A072506.P16987459560486728472

`A241926(A292564(n)+1)`
-/

namespace A072506.P16987459560486728472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (A292564 n + 1).toNat

end

end A072506.P16987459560486728472

/-!
# A072510: Numbers n with property that n = product of first k divisors of n for some k.

The programs for A072510, there is no canonical definition to state claims against.
-/

/-! ## A072510.P13365247227333315713

`eq[1, A076933(n+1)]+1`
-/

namespace A072510.P13365247227333315713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072510.P13365247227333315713

/-! ## A072510.P3105733556942937558

`record[(n+1)/A076933(n+1)^A025479(n+1)]`
-/

namespace A072510.P3105733556942937558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076933 (n + 1) : ℚ) ^ (A025479 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072510.P3105733556942937558

/-! ## A072510.P12271174221549113276

`eq[n+1, A135874(n+1)]+1`
-/

namespace A072510.P12271174221549113276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072510.P12271174221549113276

/-! ## A072510.P15821062570159232428

`A135874(record[2*(n+1)-A135874(n+1)])`
-/

namespace A072510.P15821062570159232428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A135874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135874 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072510.P15821062570159232428

/-! ## A072510.P10942771949522460280

`record[n+1-A000720(A135874(n+1)-n)]`
-/

namespace A072510.P10942771949522460280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 (A135874 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072510.P10942771949522460280

/-! ## A072510.P15093968746761824393

`record[n-A325142((n+1)%A135874(n+1))]`
-/

namespace A072510.P15093968746761824393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A325142 (Int.tmod (n + 1 : ℤ) (A135874 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072510.P15093968746761824393

/-! ## A072510.P6326692795795879839

`record[A135875(n+1)]`
-/

namespace A072510.P6326692795795879839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072510.P6326692795795879839

/-!
# A072511: Least number m such that 2m can be expressed as the sum of two distinct primes in exactly n ways.

The programs for A072511, there is no canonical definition to state claims against.
-/

/-! ## A072511.P4730325721478997968

`A298990(2*n)`
-/

namespace A072511.P4730325721478997968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (2 * n)

end

end A072511.P4730325721478997968

/-! ## A072511.P13025299522550387764

`A298990(n+n)%Δ[A051877(n)]`
-/

namespace A072511.P13025299522550387764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298990 (n + n)) (f1 (n + 1) - f1 n)

end

end A072511.P13025299522550387764

/-! ## A072511.P15000442554814599139

`A298990(A005843(n))%A126204(n)`
-/

namespace A072511.P15000442554814599139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298990 (A005843 n).toNat) (A126204 n)

end

end A072511.P15000442554814599139

/-! ## A072511.P2977631919370582486

`A298990(A005843(n))+A159075(n+3)`
-/

namespace A072511.P2977631919370582486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (A005843 n).toNat + A159075 (n + 3)

end

end A072511.P2977631919370582486

/-! ## A072511.P14860987136149829455

`A298990(n+n)+A063667(A008805(n))`
-/

namespace A072511.P14860987136149829455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (n + n) + A063667 (A008805 n).toNat

end

end A072511.P14860987136149829455

/-! ## A072511.P5024687114160212680

`filter[A298990(n), A005171(#)]`
-/

namespace A072511.P5024687114160212680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A072511.P5024687114160212680

/-! ## A072511.P10295987061444376934

`A298990(n+n)+A000122(A046386(n+1))`
-/

namespace A072511.P10295987061444376934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (n + n) + A000122 (A046386 (n + 1)).toNat

end

end A072511.P10295987061444376934

/-! ## A072511.P18287950342905750801

`A298990(n+n)/A007318(∑[n])`
-/

namespace A072511.P18287950342905750801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298990 (n + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A072511.P18287950342905750801

/-! ## A072511.P9533776407452353737

`A298990(n+n)/A286957(∑[n])`
-/

namespace A072511.P9533776407452353737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298990 (n + n) : ℚ) / (A286957 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A072511.P9533776407452353737

/-! ## A072511.P15354050346524599149

`A085062(A073611(2*n))`
-/

namespace A072511.P15354050346524599149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A073611 (2 * n)).toNat

end

end A072511.P15354050346524599149

/-! ## A072511.P4065712503996331772

`A298990(n+n)+3-A048883(A130321(n))`
-/

namespace A072511.P4065712503996331772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 (n + n) + (3 - A048883 (A130321 n).toNat)

end

end A072511.P4065712503996331772

/-!
# A072512: Product of all n - d, where 1 < d < n and d is a divisor of n.

The programs for A072512, the canonical program `A072512.P13908372946579896774` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072512 has offset 1).

The definition of A072512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072512.P13908372946579896774

`ceil(∏{d}[n+1, floor(n+1-n/#)]/round(acot(n)+n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072512

/-- `ceil(∏{d}[n+1, floor(n+1-n/#)]/round(acot(n)+n))` -/
def P13908372946579896774.Spec : Prop :=
  ∀ n, P13908372946579896774.a n = A072512 (n + 1)

theorem P13908372946579896774.correct : P13908372946579896774.Spec := by
  intro n
  simp only [A072512, Nat.add_sub_cancel]

end A072512

/-! ## A072512.P11586146877508827931

`round(∏{d}[n+1, floor(n+1-n/#)]/round(acot(n)+n))`
-/

namespace A072512.P11586146877508827931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), ⌊(n + 1 : ℚ) - (n : ℚ) / (d : ℚ)⌋ : ℤ) : ℚ) / (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ))

end

end A072512.P11586146877508827931

namespace A072512

/-- `round(∏{d}[n+1, floor(n+1-n/#)]/round(acot(n)+n))` -/
def P11586146877508827931.Spec : Prop :=
  ∀ n, P11586146877508827931.a n = A072512 (n + 1)

end A072512

/-! ## A072512.P9217124224255072905

`A072513(n+1)/round(1/acot(n))`
-/

namespace A072512.P9217124224255072905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072513 (n + 1) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

end

end A072512.P9217124224255072905

namespace A072512

/-- `A072513(n+1)/round(1/acot(n))` -/
def P9217124224255072905.Spec : Prop :=
  ∀ n, P9217124224255072905.a n = (A072512 (n + 1) : ℚ)

end A072512

/-! ## A072512.P8484049142868364191

`∏{d}[n+1, floor(n+1-n/#)]/A028310(n)`
-/

namespace A072512.P8484049142868364191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), ⌊(n + 1 : ℚ) - (n : ℚ) / (d : ℚ)⌋ : ℤ) : ℚ) / (A028310 n : ℚ)

end

end A072512.P8484049142868364191

namespace A072512

/-- `∏{d}[n+1, floor(n+1-n/#)]/A028310(n)` -/
def P8484049142868364191.Spec : Prop :=
  ∀ n, P8484049142868364191.a n = (A072512 (n + 1) : ℚ)

end A072512

/-! ## A072512.P11189886095280749449

`A072513(n+1)/A028310(n)`
-/

namespace A072512.P11189886095280749449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072513 (n + 1) : ℚ) / (A028310 n : ℚ)

end

end A072512.P11189886095280749449

namespace A072512

/-- `A072513(n+1)/A028310(n)` -/
def P11189886095280749449.Spec : Prop :=
  ∀ n, P11189886095280749449.a n = (A072512 (n + 1) : ℚ)

end A072512

/-!
# A072513: Product of all n - d, where d < n and d is a divisor of n.

The programs for A072513, the canonical program `A072513.P17087271600577333498` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072513 has offset 1).

The definition of A072513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072513.P15597351955641206284

`∏{d}[n+1, abs(#-n)+1]/2`
-/

namespace A072513.P15597351955641206284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), (|(d : ℤ) - (n : ℤ)| + 1) : ℤ) : ℚ) / 2

end

end A072513.P15597351955641206284

namespace A072513

/-- `∏{d}[n+1, abs(#-n)+1]/2` -/
def P15597351955641206284.Spec : Prop :=
  ∀ n, P15597351955641206284.a n = (A072513 (n + 1) : ℚ)

end A072513

/-! ## A072513.P17087271600577333498

`∏{d}[n+1, floor(n+1-n/#)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072513

/-- `∏{d}[n+1, floor(n+1-n/#)]` -/
def P17087271600577333498.Spec : Prop :=
  ∀ n, P17087271600577333498.a n = A072513 (n + 1)

theorem P17087271600577333498.correct : P17087271600577333498.Spec := by
  intro n
  simp only [A072513, Nat.add_sub_cancel]

end A072513

/-! ## A072513.P17688109344532213393

`round(1/acot(n))*A072512(n+1)`
-/

namespace A072513.P17688109344532213393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) * A072512 (n + 1)

end

end A072513.P17688109344532213393

namespace A072513

/-- `round(1/acot(n))*A072512(n+1)` -/
def P17688109344532213393.Spec : Prop :=
  ∀ n, P17688109344532213393.a n = A072513 (n + 1)

end A072513

/-! ## A072513.P16345472680469051690

`A028310(n)*A072512(n+1)`
-/

namespace A072513.P16345472680469051690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A072512 (n + 1)

end

end A072513.P16345472680469051690

namespace A072513

/-- `A028310(n)*A072512(n+1)` -/
def P16345472680469051690.Spec : Prop :=
  ∀ n, P16345472680469051690.a n = A072513 (n + 1)

end A072513

/-! ## A072513.P2006603538692784026

`A007956(n+1)*A377484(n+1)`
-/

namespace A072513.P2006603538692784026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A377484 (n + 1)

end

end A072513.P2006603538692784026

namespace A072513

/-- `A007956(n+1)*A377484(n+1)` -/
def P2006603538692784026.Spec : Prop :=
  ∀ n, P2006603538692784026.a n = A072513 (n + 1)

end A072513

/-! ## A072513.P5915719899308528254

`lcm(A072512(n+1), A377484(n+1))`
-/

namespace A072513.P5915719899308528254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072512 (n + 1)) (A377484 (n + 1))

end

end A072513.P5915719899308528254

namespace A072513

/-- `lcm(A072512(n+1), A377484(n+1))` -/
def P5915719899308528254.Spec : Prop :=
  ∀ n, (P5915719899308528254.a n : ℤ) = A072513 (n + 1)

end A072513

/-! ## A072513.P5437327911959580199

`A072512(n+1)*A193739(∑[n])`
-/

namespace A072513.P5437327911959580199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072512 (n + 1) * A193739 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072513.P5437327911959580199

namespace A072513

/-- `A072512(n+1)*A193739(∑[n])` -/
def P5437327911959580199.Spec : Prop :=
  ∀ n, P5437327911959580199.a n = A072513 (n + 1)

end A072513

/-!
# A072514: Sum of n mod k for k in {1...n} with gcd(k,n) > 1.

The programs for A072514, the canonical program `A072514.P13343322914018552684` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072514 has offset 1).

The definition of A072514 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, A067439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072514.P13343322914018552684

`A004125(n+1)-A067439(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A072514

/-- `A004125(n+1)-A067439(n+1)` -/
def P13343322914018552684.Spec : Prop :=
  ∀ n, P13343322914018552684.a n = A072514 (n + 1)

theorem P13343322914018552684.correct : P13343322914018552684.Spec := by
  intro n
  simp only [A072514, Nat.add_sub_cancel]

end A072514

/-! ## A072514.P8236591834272594659

`Δ[A072481(n)]-A067439(n+1)`
-/

namespace A072514.P8236591834272594659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A067439 (n + 1)

end

end A072514.P8236591834272594659

namespace A072514

/-- `Δ[A072481(n)]-A067439(n+1)` -/
def P8236591834272594659.Spec : Prop :=
  ∀ n, P8236591834272594659.a n = A072514 (n + 1)

end A072514

/-! ## A072514.P211747109598586377

`∑[A235796(n+1)]-A067439(n+1)`
-/

namespace A072514.P211747109598586377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A067439 (n + 1)

end

end A072514.P211747109598586377

namespace A072514

/-- `∑[A235796(n+1)]-A067439(n+1)` -/
def P211747109598586377.Spec : Prop :=
  ∀ n, P211747109598586377.a n = A072514 (n + 1)

end A072514

/-! ## A072514.P13966683807246213926

`A067436(n+1)/2-A067439(n+1)`
-/

namespace A072514.P13966683807246213926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067436 (n + 1) : ℚ) / 2 - (A067439 (n + 1) : ℚ)

end

end A072514.P13966683807246213926

namespace A072514

/-- `A067436(n+1)/2-A067439(n+1)` -/
def P13966683807246213926.Spec : Prop :=
  ∀ n, P13966683807246213926.a n = (A072514 (n + 1) : ℚ)

theorem P13966683807246213926.correct : P13966683807246213926.Spec := by
  intro n
  simp only [A072514, Nat.add_sub_cancel, A072514.P13966683807246213926.a, A072514.P13343322914018552684.a, A004125, A004125.P17154347137318566864.a, A067436, A067436.P3160659514685204136.a, A067439, A067439.P11811676257442922889.f1, A067439.P11811676257442922889.a, A055615, A055615.P8993130195977213181.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072514

/-! ## A072514.P15107683382602984997

`∑{d}[n+1, A067439(#)*A087156((n+1)/#)]`
-/

namespace A072514.P15107683382602984997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067439 d * A087156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A072514.P15107683382602984997

namespace A072514

/-- `∑{d}[n+1, A067439(#)*A087156((n+1)/#)]` -/
def P15107683382602984997.Spec : Prop :=
  ∀ n, P15107683382602984997.a n = A072514 (n + 1)

end A072514

/-! ## A072514.P167326966893614596

`(n+1)²-(A067439(n+1)+A024916(n+1))`
-/

namespace A072514.P167326966893614596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A067439 (n + 1) + A024916 (n + 1))

end

end A072514.P167326966893614596

namespace A072514

/-- `(n+1)²-(A067439(n+1)+A024916(n+1))` -/
def P167326966893614596.Spec : Prop :=
  ∀ n, P167326966893614596.a n = A072514 (n + 1)

end A072514

/-! ## A072514.P1839872125764890457

`A000217(n)-(A153485(n+1)+A067439(n+1))`
-/

namespace A072514.P1839872125764890457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A153485 (n + 1) + A067439 (n + 1))

end

end A072514.P1839872125764890457

namespace A072514

/-- `A000217(n)-(A153485(n+1)+A067439(n+1))` -/
def P1839872125764890457.Spec : Prop :=
  ∀ n, P1839872125764890457.a n = A072514 (n + 1)

theorem P1839872125764890457.correct : P1839872125764890457.Spec := by
  intro n
  simp only [A072514, Nat.add_sub_cancel, A072514.P1839872125764890457.a, A072514.P13343322914018552684.a, A000217, A000217.P10269402890581615239.a, A004125, A004125.P17154347137318566864.a, A067439, A067439.P11811676257442922889.f1, A067439.P11811676257442922889.a, A153485, A153485.P1399869421749084233.a, A055615, A055615.P8993130195977213181.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072514

/-! ## A072514.P9285847880816803975

`A123327(n+1)-(A067439(n+1)+A000203(n+1))`
-/

namespace A072514.P9285847880816803975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123327 (n + 1) - (A067439 (n + 1) + A000203 (n + 1))

end

end A072514.P9285847880816803975

namespace A072514

/-- `A123327(n+1)-(A067439(n+1)+A000203(n+1))` -/
def P9285847880816803975.Spec : Prop :=
  ∀ n, P9285847880816803975.a n = A072514 (n + 1)

theorem P9285847880816803975.correct : P9285847880816803975.Spec := by
  intro n
  simp only [A072514, Nat.add_sub_cancel, A072514.P9285847880816803975.a, A072514.P13343322914018552684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A004125, A004125.P17154347137318566864.a, A067439, A067439.P11811676257442922889.f1, A067439.P11811676257442922889.a, A123327, A123327.P12449877284529674263.a, A055615, A055615.P8993130195977213181.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072514

/-! ## A072514.P4715813766236313967

`A163180(n+1)-(A067439(n+1)+A000005(n+1))`
-/

namespace A072514.P4715813766236313967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163180 (n + 1) - (A067439 (n + 1) + A000005 (n + 1))

end

end A072514.P4715813766236313967

namespace A072514

/-- `A163180(n+1)-(A067439(n+1)+A000005(n+1))` -/
def P4715813766236313967.Spec : Prop :=
  ∀ n, P4715813766236313967.a n = A072514 (n + 1)

theorem P4715813766236313967.correct : P4715813766236313967.Spec := by
  intro n
  simp only [A072514, Nat.add_sub_cancel, A072514.P4715813766236313967.a, A072514.P13343322914018552684.a, A000005, A000005.P16091521709108585461.a, A004125, A004125.P17154347137318566864.a, A067439, A067439.P11811676257442922889.f1, A067439.P11811676257442922889.a, A163180, A163180.P13831125964064735918.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055615, A055615.P8993130195977213181.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072514

/-! ## A072514.P13416214348901103888

`A024816(n+1)-(A244048(n+1)+A067439(n+1))`
-/

namespace A072514.P13416214348901103888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - (A244048 (n + 1) + A067439 (n + 1))

end

end A072514.P13416214348901103888

namespace A072514

/-- `A024816(n+1)-(A244048(n+1)+A067439(n+1))` -/
def P13416214348901103888.Spec : Prop :=
  ∀ n, P13416214348901103888.a n = A072514 (n + 1)

theorem P13416214348901103888.correct : P13416214348901103888.Spec := by
  intro n
  simp only [A072514, Nat.add_sub_cancel, A072514.P13416214348901103888.a, A072514.P13343322914018552684.a, A004125, A004125.P17154347137318566864.a, A024816, A024816.P5963848523726637929.a, A067439, A067439.P11811676257442922889.f1, A067439.P11811676257442922889.a, A244048, A244048.P6865276920681536651.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A055615, A055615.P8993130195977213181.a, A111490, A111490.P12273219940558635463.f2, A111490.P12273219940558635463.f1, A111490.P12273219940558635463.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072514

/-! ## A072514.P6381529185391455762

`A024934(n+1)+A233131(n+1)-A067439(n+1)`
-/

namespace A072514.P6381529185391455762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024934 (n + 1) + (A233131 (n + 1) - A067439 (n + 1))

end

end A072514.P6381529185391455762

namespace A072514

/-- `A024934(n+1)+A233131(n+1)-A067439(n+1)` -/
def P6381529185391455762.Spec : Prop :=
  ∀ n, P6381529185391455762.a n = A072514 (n + 1)

end A072514

/-!
# A072515: Let u(1) = u(2) = v(1) = v(2) = 1, u(n+2) = u(n)+v(n+1), v(n+2) = abs(u(n)-v(n+1)), then a(n) = u(n).

The programs for A072515, there is no canonical definition to state claims against.
-/

/-! ## A072515.P6911705040227266294

`A035931(∑[record[A239927(n)²]])`
-/

namespace A072515.P6911705040227266294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239927 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072515.P6911705040227266294

/-! ## A072515.P10204478262950550572

`or(A028242(A050728(n)), A088534(n))`
-/

namespace A072515.P10204478262950550572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028242 (A050728 n).toNat) (A088534 n)

end

end A072515.P10204478262950550572

/-! ## A072515.P13310829517572474791

`A266161(A041099(n))`
-/

namespace A072515.P13310829517572474791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266161 (A041099 n).toNat

end

end A072515.P13310829517572474791

/-! ## A072515.P782811092331256013

`A293390((n+1)*A323483(2*n))`
-/

namespace A072515.P782811092331256013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 ((n + 1 : ℤ) * A323483 (2 * n)).toNat

end

end A072515.P782811092331256013

/-! ## A072515.P5608098970974022139

`A000120(A102881(n)+A000194(n))`
-/

namespace A072515.P5608098970974022139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A102881 n + A000194 n).toNat

end

end A072515.P5608098970974022139

/-!
# A072516: Sum of remainders when n is divided by lesser squares.

The programs for A072516, the canonical program `A072516.P18149148055783031557` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072516 has offset 1).

The definition of A072516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072516.P7649545455806150282

`∑[floor(sqrt(n)-A293235(n+1))]`
-/

namespace A072516.P7649545455806150282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) - (A293235 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072516.P7649545455806150282

namespace A072516

/-- `∑[floor(sqrt(n)-A293235(n+1))]` -/
def P7649545455806150282.Spec : Prop :=
  ∀ n, P7649545455806150282.a n = A072516 (n + 1)

end A072516

/-! ## A072516.P18149148055783031557

`∑[A000196(n)-A293235(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072516

/-- `∑[A000196(n)-A293235(n+1)]` -/
def P18149148055783031557.Spec : Prop :=
  ∀ n, P18149148055783031557.a n = A072516 (n + 1)

theorem P18149148055783031557.correct : P18149148055783031557.Spec := by
  intro n
  simp only [A072516, Nat.add_sub_cancel]

end A072516

/-! ## A072516.P16828608837684562076

`A022554(n)-∑[A293235(n+1)]`
-/

namespace A072516.P16828608837684562076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072516.P16828608837684562076

namespace A072516

/-- `A022554(n)-∑[A293235(n+1)]` -/
def P16828608837684562076.Spec : Prop :=
  ∀ n, P16828608837684562076.a n = A072516 (n + 1)

end A072516

/-! ## A072516.P3948313318978563874

`(n+1)*A000196(n+1)-∑[A035316(n+1)]`
-/

namespace A072516.P3948313318978563874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000196 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072516.P3948313318978563874

namespace A072516

/-- `(n+1)*A000196(n+1)-∑[A035316(n+1)]` -/
def P3948313318978563874.Spec : Prop :=
  ∀ n, P3948313318978563874.a n = A072516 (n + 1)

end A072516

/-! ## A072516.P12022965059906249961

`∑[A000196(n)-(1-A326058(n+1)+n)%(n+1)]`
-/

namespace A072516.P12022965059906249961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - Int.tmod (1 - A326058 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072516.P12022965059906249961

namespace A072516

/-- `∑[A000196(n)-(1-A326058(n+1)+n)%(n+1)]` -/
def P12022965059906249961.Spec : Prop :=
  ∀ n, P12022965059906249961.a n = A072516 (n + 1)

end A072516

/-!
# A072517: Smallest triangular number beginning with the n-th triangular number other than itself.

The programs for A072517, there is no canonical definition to state claims against.
-/

/-! ## A072517.P5368109306761234956

`C(A072518(n+1)+1, 2)`
-/

namespace A072517.P5368109306761234956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072518 (n + 1) + 1).toNat 2

end

end A072517.P5368109306761234956

/-! ## A072517.P5311566810799623854

`A000217(A072518(n+1))`
-/

namespace A072517.P5311566810799623854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A072518 (n + 1)).toNat

end

end A072517.P5311566810799623854

/-! ## A072517.P10320730628583097923

`A161680(A072518(n+1)+1)`
-/

namespace A072517.P10320730628583097923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A072518 (n + 1) + 1).toNat

end

end A072517.P10320730628583097923

/-! ## A072517.P14545889227266754773

`A179865(A072518(n+1)+1)`
-/

namespace A072517.P14545889227266754773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A072518 (n + 1) + 1).toNat

end

end A072517.P14545889227266754773

/-! ## A072517.P11996798619943698112

`A323294(A072518(n+1)+1)`
-/

namespace A072517.P11996798619943698112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323294 (A072518 (n + 1) + 1).toNat

end

end A072517.P11996798619943698112

/-! ## A072517.P14040863904221128847

`A253145(A072518(n+1)-1)`
-/

namespace A072517.P14040863904221128847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A072518 (n + 1) - 1).toNat

end

end A072517.P14040863904221128847

/-! ## A072517.P10285514111938068575

`∑{d}[A072518(n+1), A007438(#)]`
-/

namespace A072517.P10285514111938068575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A072517.P10285514111938068575

/-!
# A072518: Index of smallest triangular number beginning with the n-th triangular number other than itself.

The programs for A072518, there is no canonical definition to state claims against.
-/

/-! ## A072518.P2886232652881763970

`floor(sqrt(2*A072517(n+1)))`
-/

namespace A072518.P2886232652881763970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A072517 (n + 1))

end

end A072518.P2886232652881763970

/-! ## A072518.P18227078440321154220

`round(sqrt(2*A072517(C(n+1, n))))`
-/

namespace A072518.P18227078440321154220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A072517 (Nat.choose (n + 1) n) : ℝ))

end

end A072518.P18227078440321154220

/-! ## A072518.P2346420626277389825

`round(sqrt(2*A072517(Δ[n²]-n)))`
-/

namespace A072518.P2346420626277389825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A072517 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A072518.P2346420626277389825

/-! ## A072518.P7932815083878991280

`round(sqrt(2*A072517(n+1)))%A017007(n)`
-/

namespace A072518.P7932815083878991280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A072517 (n + 1) : ℝ))) (A017007 n)

end

end A072518.P7932815083878991280

/-! ## A072518.P6320989139528824297

`A000027(round(sqrt(2*A072517(n+1))))`
-/

namespace A072518.P6320989139528824297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A072517 (n + 1) : ℝ))).toNat

end

end A072518.P6320989139528824297

/-! ## A072518.P2003462492544937048

`A028310(round(sqrt(2*A072517(n+1))))`
-/

namespace A072518.P2003462492544937048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (Real.sqrt (2 * A072517 (n + 1) : ℝ))).toNat

end

end A072518.P2003462492544937048

/-!
# A072519: Smallest Fibonacci number beginning with the n-th Fibonacci number other than itself.

The programs for A072519, there is no canonical definition to state claims against.
-/

/-! ## A072519.P9597535574426077239

`A000045(A072520(n+1))`
-/

namespace A072519.P9597535574426077239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072520 (n + 1)).toNat

end

end A072519.P9597535574426077239

/-! ## A072519.P8549372186646614102

`A123736(A072520(n+1)²)`
-/

namespace A072519.P8549372186646614102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A072520 (n + 1) ^ 2).toNat

end

end A072519.P8549372186646614102

/-! ## A072519.P16740400766804074942

`A053602(2*A072520(n+1))`
-/

namespace A072519.P16740400766804074942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A072520 (n + 1)).toNat

end

end A072519.P16740400766804074942

/-! ## A072519.P11984292860662124277

`∑{d}[A072520(n+1), A007436(#)]`
-/

namespace A072519.P11984292860662124277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A072519.P11984292860662124277

/-! ## A072519.P11101973716441969854

`A053602(A072520(n+1)+A072520(n+1))`
-/

namespace A072519.P11101973716441969854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A072520 (n + 1) + A072520 (n + 1)).toNat

end

end A072519.P11101973716441969854

/-!
# A072521: a(1) = 6 and then the smallest triangular numbers, larger than the previous term, such that sum of two neighbors is also a triangular number.

The programs for A072521, there is no canonical definition to state claims against.
-/

/-! ## A072521.P1716355612199091441

`C(A072522(n+1)+1, 2)`
-/

namespace A072521.P1716355612199091441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072522 (n + 1) + 1).toNat 2

end

end A072521.P1716355612199091441

/-! ## A072521.P1320184487647051496

`A000217(A072522(n+1))`
-/

namespace A072521.P1320184487647051496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A072522 (n + 1)).toNat

end

end A072521.P1320184487647051496

/-! ## A072521.P9850679801189615864

`A161680(A072522(n+1)+1)`
-/

namespace A072521.P9850679801189615864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A072522 (n + 1) + 1).toNat

end

end A072521.P9850679801189615864

/-! ## A072521.P15434184138425618618

`A179865(A072522(n+1)+1)`
-/

namespace A072521.P15434184138425618618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A072522 (n + 1) + 1).toNat

end

end A072521.P15434184138425618618

/-! ## A072521.P16482322922685373322

`A253145(A072522(n+1)-1)`
-/

namespace A072521.P16482322922685373322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A072522 (n + 1) - 1).toNat

end

end A072521.P16482322922685373322

/-!
# A072522: Smallest number a(n)>a(n-1) such that T(a(n-1))+T(a(n))=T(m) for some m, a(1)=3; T(i) are the triangular numbers.

The programs for A072522, there is no canonical definition to state claims against.
-/

/-! ## A072522.P8887116483342524216

`floor(sqrt(2*A072521(n+1)))`
-/

namespace A072522.P8887116483342524216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A072521 (n + 1))

end

end A072522.P8887116483342524216

/-! ## A072522.P12874446432796219387

`round(A008683(4*(n+1))+sqrt(2*A072521(n+1)))`
-/

namespace A072522.P12874446432796219387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (4 * (n + 1)) : ℝ) + Real.sqrt (2 * A072521 (n + 1) : ℝ))

end

end A072522.P12874446432796219387

/-!
# A072523: Sum of remainders when n-th Fibonacci number is divided by all smaller Fibonacci numbers > 1.

The programs for A072523, there is no canonical definition to state claims against.
-/

/-! ## A072523.P2649778135561876289

`A025047(n)-A327924(A000129(n+1))`
-/

namespace A072523.P2649778135561876289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n - A327924 (A000129 (n + 1)).toNat

end

end A072523.P2649778135561876289

/-! ## A072523.P14953556969604506830

`A317492(A245152(n+1))-A023193(n+1)`
-/

namespace A072523.P14953556969604506830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (A245152 (n + 1)).toNat - A023193 (n + 1)

end

end A072523.P14953556969604506830

/-! ## A072523.P11420796006777834718

`A320847(A285139(2*n+3)+A000071(n+1))`
-/

namespace A072523.P11420796006777834718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A285139 (2 * n + 3) + A000071 (n + 1)).toNat

end

end A072523.P11420796006777834718

/-!
# A072525: a(0) = 1; a(n+1) is smallest composite number > a(n) such that a(n) + a(n+1) is prime.

The programs for A072525, there is no canonical definition to state claims against.
-/

/-! ## A072525.P1872898587146012222

`A098548(n+3)-A193531(A326083(n))`
-/

namespace A072525.P1872898587146012222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (n + 3) - A193531 (A326083 n).toNat

end

end A072525.P1872898587146012222

/-! ## A072525.P9667605913713596888

`A051884(A175585(n)+1)%A118311(3*(n+1))`
-/

namespace A072525.P9667605913713596888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051884 (A175585 n + 1).toNat) (A118311 (3 * (n + 1)))

end

end A072525.P9667605913713596888

/-! ## A072525.P7991790480756379125

`A051884(A373789(n+1)%A273928(n+1))`
-/

namespace A072525.P7991790480756379125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051884 (Int.tmod (A373789 (n + 1)) (A273928 (n + 1))).toNat

end

end A072525.P7991790480756379125

/-!
# A072526: Numerator of number J(n) arising in computation of second moment of A*_n lattice.

The programs for A072526, there is no canonical definition to state claims against.
-/

/-! ## A072526.P14047847922169233008

`A050851(a(n-1))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A072526.P14047847922169233008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  A050851 (a (n - 1)).toNat

end

end A072526.P14047847922169233008

/-!
# A072527: Number of values of k such that n divided by k leaves a remainder 3.

The programs for A072527, the canonical program `A072527.P13133049884075909958` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072527 has offset 1).

The definition of A072527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072527.P13133049884075909958

`∑{d}[2-n, C(3%#, 3)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072527

/-- `∑{d}[2-n, C(3%#, 3)]` -/
def P13133049884075909958.Spec : Prop :=
  ∀ n, (P13133049884075909958.a n : ℤ) = A072527 (n + 1)

theorem P13133049884075909958.correct : P13133049884075909958.Spec := by
  intro n
  simp only [A072527, Nat.add_sub_cancel]

end A072527

/-! ## A072527.P17230348069719245932

`∑{d}[2-n, round(root(13, -#))]`
-/

namespace A072527.P17230348069719245932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.roundAway ((13 : ℝ) ^ (1 / (-(d : ℤ) : ℝ)))

end

end A072527.P17230348069719245932

namespace A072527

/-- `∑{d}[2-n, round(root(13, -#))]` -/
def P17230348069719245932.Spec : Prop :=
  ∀ n, P17230348069719245932.a n = A072527 (n + 1)

end A072527

/-! ## A072527.P12295403798860852419

`floor(∑{d}[2-n, (n+1)%#]/3)`
-/

namespace A072527.P12295403798860852419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1) % d : ℕ) : ℚ) / 3⌋

end

end A072527.P12295403798860852419

namespace A072527

/-- `floor(∑{d}[2-n, (n+1)%#]/3)` -/
def P12295403798860852419.Spec : Prop :=
  ∀ n, P12295403798860852419.a n = A072527 (n + 1)

end A072527

/-! ## A072527.P14764932710140552730

`A002264(∑{d}[2-n, 3%#])`
-/

namespace A072527.P14764932710140552730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ d ∈ Nat.divisors (f1 n).natAbs, 3 % d)

end

end A072527.P14764932710140552730

namespace A072527

/-- `A002264(∑{d}[2-n, 3%#])` -/
def P14764932710140552730.Spec : Prop :=
  ∀ n, P14764932710140552730.a n = A072527 (n + 1)

end A072527

/-! ## A072527.P11288519205657574746

`A321014(abs(abs(2-n)-1)+1)`
-/

namespace A072527.P11288519205657574746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321014 (|(|2 - (n : ℤ)| - 1)| + 1).toNat

end

end A072527.P11288519205657574746

namespace A072527

/-- `A321014(abs(abs(2-n)-1)+1)` -/
def P11288519205657574746.Spec : Prop :=
  ∀ n, P11288519205657574746.a n = A072527 (n + 1)

end A072527

/-!
# A072528: Table T(n,k) read by rows, giving number of occurrences of the remainder k when n is divided by i=1,2,3,...,n.

The programs for A072528, there is no canonical definition to state claims against.
-/

/-! ## A072528.P8594559417065600745

`A135539(A056536(n+1))`
-/

namespace A072528.P8594559417065600745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A056536 (n + 1)).toNat

end

end A072528.P8594559417065600745

/-! ## A072528.P14743154636152232536

`A135539(A091018(n)+1)`
-/

namespace A072528.P14743154636152232536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A091018 n + 1).toNat

end

end A072528.P14743154636152232536

/-! ## A072528.P1922160591626035299

`gcd(A097292(n+1), A160385(A140489(3*n+1)))`
-/

namespace A072528.P1922160591626035299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097292 (n + 1)) (A160385 (A140489 (3 * n + 1)).toNat)

end

end A072528.P1922160591626035299

/-! ## A072528.P17733355582736946129

`A090996(A106238(n+1)+A079080(n+1))`
-/

namespace A072528.P17733355582736946129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A106238 (n + 1) + A079080 (n + 1)).toNat

end

end A072528.P17733355582736946129

/-! ## A072528.P6489066555585027828

`A072411(A000330(2*n)+A000330(n+4))`
-/

namespace A072528.P6489066555585027828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A000330 (2 * n) + A000330 (n + 4)).toNat

end

end A072528.P6489066555585027828

/-!
# A072529: Product of the next n multiples of n.

The programs for A072529, the canonical program `A072529.P8898267478827306887` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072529 has offset 1).

The definition of A072529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072529.P8898267478827306887

`(n+1)^(n+1)*((n+1)*(n+2)/2)!/((n+1)*n/2)!`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072529

/-- `(n+1)^(n+1)*((n+1)*(n+2)/2)!/((n+1)*n/2)!` -/
def P8898267478827306887.Spec : Prop :=
  ∀ n, P8898267478827306887.a n = (A072529 (n + 1) : ℚ)

end A072529

/-! ## A072529.P15195284304107194601

`(n+1)^(n+1)*A057003(n+1)`
-/

namespace A072529.P15195284304107194601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) * A057003 (n + 1)

end

end A072529.P15195284304107194601

namespace A072529

/-- `(n+1)^(n+1)*A057003(n+1)` -/
def P15195284304107194601.Spec : Prop :=
  ∀ n, P15195284304107194601.a n = A072529 (n + 1)

end A072529

/-!
# A072530: Number of primes p < n such that n divided by p leaves a prime remainder.

The programs for A072530, there is no canonical definition to state claims against.
-/

/-! ## A072530.P13577183791177370764

`A048865(n+1)-A072531(n+1)`
-/

namespace A072530.P13577183791177370764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) - A072531 (n + 1)

end

end A072530.P13577183791177370764

/-! ## A072530.P16781964770752977723

`A000720(n+1)-(A072531(n+1)+A001221(n+1))`
-/

namespace A072530.P16781964770752977723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (A072531 (n + 1) + A001221 (n + 1))

end

end A072530.P16781964770752977723

/-! ## A072530.P10547709814866685242

`A179179(n+1)-(A072531(n+1)+A037228(n+1))`
-/

namespace A072530.P10547709814866685242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) - (A072531 (n + 1) + A037228 (n + 1))

end

end A072530.P10547709814866685242

/-! ## A072530.P17163714900411018523

`or(A289016(A284923(n+1)), A340996(n+1))`
-/

namespace A072530.P17163714900411018523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289016 (A284923 (n + 1)).toNat) (A340996 (n + 1))

end

end A072530.P17163714900411018523

/-! ## A072530.P6536927654048258427

`or(A340996(n+1), A340999(A003145(n+1)))`
-/

namespace A072530.P6536927654048258427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A340996 (n + 1)) (A340999 ((A003145 (n + 1)).toNat + 204))

end

end A072530.P6536927654048258427

/-!
# A072531: Number of primes p < n such that n divided by p leaves a 1 or a composite (nonzero) remainder.

The programs for A072531, there is no canonical definition to state claims against.
-/

/-! ## A072531.P16093171294480352487

`A048865(n+1)-A072530(n+1)`
-/

namespace A072531.P16093171294480352487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) - A072530 (n + 1)

end

end A072531.P16093171294480352487

/-! ## A072531.P8025963963592347417

`A000720(n+1)-(A072530(n+1)+A001221(n+1))`
-/

namespace A072531.P8025963963592347417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (A072530 (n + 1) + A001221 (n + 1))

end

end A072531.P8025963963592347417

/-! ## A072531.P3255059479013335839

`A179179(n+1)-(A072530(n+1)+A037228(n+1))`
-/

namespace A072531.P3255059479013335839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) - (A072530 (n + 1) + A037228 (n + 1))

end

end A072531.P3255059479013335839

/-! ## A072531.P4452159499215504010

`A076754(A107848(n+2))`
-/

namespace A072531.P4452159499215504010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076754 (A107848 (n + 2)).toNat

end

end A072531.P4452159499215504010

/-! ## A072531.P14885738538458974771

`A001221(A173091(3*n+1)+A173069(n))`
-/

namespace A072531.P14885738538458974771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A173091 (3 * n + 1) + A173069 n).toNat

end

end A072531.P14885738538458974771

/-!
# A072532: a(0)=1; for n>0, a(n) = smallest prime of the form k*a(n-1)-1 with k>1.

The programs for A072532, there is no canonical definition to state claims against.
-/

/-! ## A072532.P16346413451593995697

`A038700(a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A072532.P16346413451593995697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  A038700 (a (n - 1)).toNat

end

end A072532.P16346413451593995697

/-! ## A072532.P18337611617210286287

`A088732(a(n-1)-1)` with `a(0)=1`
-/

namespace A072532.P18337611617210286287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088732 (a (n - 1) - 1).toNat

end

end A072532.P18337611617210286287

/-! ## A072532.P3510321183445591285

`A282049(2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A072532.P3510321183445591285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A282049 (2 * a (n - 1)).toNat

end

end A072532.P3510321183445591285

/-! ## A072532.P17262193020459034323

`A000040(A132989(a(n-1)))` with `a(0)=1`
-/

namespace A072532.P17262193020459034323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A132989 (a (n - 1)).toNat).toNat

end

end A072532.P17262193020459034323

/-! ## A072532.P15551397099640480773

`A088732(A326068(a(n-1)))` with `a(0)=1`
-/

namespace A072532.P15551397099640480773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088732 (A326068 (a (n - 1)).toNat).toNat

end

end A072532.P15551397099640480773

/-!
# A072533: Least Keith number (or repfigit) with n digits, or 0 if there is none.

The programs for A072533, there is no canonical definition to state claims against.
-/

/-! ## A072533.P9009517321803117581

`A130010(∑[A050235(n+1)]+11)`
-/

namespace A072533.P9009517321803117581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130010 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A072533.P9009517321803117581

/-!
# A072534: a(1) = 2, a(2) = 3 and a(n) = the smallest prime of the form k*a(n-1) - a(n-2).

The programs for A072534, there is no canonical definition to state claims against.
-/

/-! ## A072534.P8358903249294985195

`p?[∪[A120365(n+1), A120350(n+1)]]`
-/

namespace A072534.P8358903249294985195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120365 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120350 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072534.P8358903249294985195

/-! ## A072534.P15328304592046064268

`p?[∪[2*n, A120365(n+1)]]`
-/

namespace A072534.P15328304592046064268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120365 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072534.P15328304592046064268

/-! ## A072534.P6650513433548706299

`p?[∪[A120365(n+1), A120344(n+1)]]`
-/

namespace A072534.P6650513433548706299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120365 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120344 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072534.P6650513433548706299

/-! ## A072534.P17582879161054464292

`p?[∪[A120365(n+1), A120351(n+1)]]`
-/

namespace A072534.P17582879161054464292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120365 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072534.P17582879161054464292

/-!
# A072535: a(1) = 2, a(2) = 3 and a(n) = the smallest prime which is a linear combination of a(n-1) and a(n-2) of the form r*a(n-1) + s*a(n-2) with r,s >=1.

The programs for A072535, there is no canonical definition to state claims against.
-/

/-! ## A072535.P15920107307180418530

`A106317(A194545(n)+2)`
-/

namespace A072535.P15920107307180418530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106317 (A194545 n + 2).toNat

end

end A072535.P15920107307180418530

/-! ## A072535.P1931510978115908526

`p?[∑[A007318(A007690(n))]]`
-/

namespace A072535.P1931510978115908526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007690 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072535.P1931510978115908526

/-! ## A072535.P736914886878912102

`p?[∑[A002083(A064317(n))]]`
-/

namespace A072535.P736914886878912102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (A064317 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072535.P736914886878912102

/-!
# A072536: a(1) = 2, a(2) = 3, a(3) = 5 and a(n) = the smallest prime which is a linear combination of previous three terms with all coefficients >=1.

The programs for A072536, there is no canonical definition to state claims against.
-/

/-! ## A072536.P16065203601400909936

`A101044(A134009(n+1))`
-/

namespace A072536.P16065203601400909936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101044 (A134009 (n + 1)).toNat

end

end A072536.P16065203601400909936

/-! ## A072536.P9336159180987740502

`A101044(A137402(n+1))`
-/

namespace A072536.P9336159180987740502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101044 (A137402 (n + 1)).toNat

end

end A072536.P9336159180987740502

/-! ## A072536.P10562148974441124889

`A101044(floor(sqrt(A005056(n))))`
-/

namespace A072536.P10562148974441124889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101044 (Int.sqrt (A005056 n)).toNat

end

end A072536.P10562148974441124889

/-! ## A072536.P5078037394339338403

`A101044(A001523(n)+ceil(sin(n)²))`
-/

namespace A072536.P5078037394339338403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101044 (A001523 n + ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A072536.P5078037394339338403

/-!
# A072537: a(1) = 2, a(2) = 3 and a(n) = the smallest prime which is a linear combination of all previous terms with all coefficients >= 1.

The programs for A072537, there is no canonical definition to state claims against.
-/

/-! ## A072537.P8203333455468608597

`A063905(A148867(n+1))`
-/

namespace A072537.P8203333455468608597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A148867 (n + 1)).toNat

end

end A072537.P8203333455468608597

/-! ## A072537.P16382723759875314087

`A063905(A149098(n+1))`
-/

namespace A072537.P16382723759875314087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A149098 (n + 1)).toNat

end

end A072537.P16382723759875314087

/-! ## A072537.P12639485479091168777

`A063905(A149121(n+1))`
-/

namespace A072537.P12639485479091168777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A149121 (n + 1)).toNat

end

end A072537.P12639485479091168777

/-! ## A072537.P11580842346975539370

`A100725(A118033(n+1))`
-/

namespace A072537.P11580842346975539370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (A118033 (n + 1)).toNat

end

end A072537.P11580842346975539370

/-!
# A072541: List of pairs of numbers (k, k+4), where k-1 and k+3 are primes.

The programs for A072541, there is no canonical definition to state claims against.
-/

/-! ## A072541.P1252351597863057957

`1+A094343(n+1)`
-/

namespace A072541.P1252351597863057957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A094343 (n + 1)

end

end A072541.P1252351597863057957

/-! ## A072541.P4449264343563968256

`∑{d}[A094343(Δ[n²]-n), #]`
-/

namespace A072541.P4449264343563968256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A072541.P4449264343563968256

/-! ## A072541.P3014615183990632248

`A094343(A008619(2*n))-A057428(A001316(n))`
-/

namespace A072541.P3014615183990632248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (A008619 (2 * n)).toNat - A057428 (A001316 n).toNat

end

end A072541.P3014615183990632248

/-! ## A072541.P6666806690097106172

`A094343(A008619(2*n))-A057428(A008619(n))`
-/

namespace A072541.P6666806690097106172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (A008619 (2 * n)).toNat - A057428 (A008619 n).toNat

end

end A072541.P6666806690097106172

/-! ## A072541.P18046665178294429910

`A000203(A094343(n+1))`
-/

namespace A072541.P18046665178294429910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A094343 (n + 1)).toNat

end

end A072541.P18046665178294429910

/-!
# A072542: a(n) = the least positive integer k such that sigma(k) > sigma(1) + ... + sigma(n).

The programs for A072542, there is no canonical definition to state claims against.
-/

/-! ## A072542.P717919775253775814

`A070172(∑[∑{d}[n+1, #]]+1)`
-/

namespace A072542.P717919775253775814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A072542.P717919775253775814

/-! ## A072542.P2935545092053433645

`A070172(A160664(n+1))`
-/

namespace A072542.P2935545092053433645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A160664 (n + 1)).toNat

end

end A072542.P2935545092053433645

/-! ## A072542.P9933795257259499326

`A070172(A024916(n+1)+1)`
-/

namespace A072542.P9933795257259499326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A024916 (n + 1) + 1).toNat

end

end A072542.P9933795257259499326

/-! ## A072542.P866959180634236020

`A070172(∑[A000203(n+1)]+1)`
-/

namespace A072542.P866959180634236020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A072542.P866959180634236020

/-! ## A072542.P7656953993994464641

`A070172(A020725(∑[∑{d}[n+1, #]]))`
-/

namespace A072542.P7656953993994464641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A020725 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A072542.P7656953993994464641

/-!
# A072543: Numbers whose largest decimal digit is also the initial digit.

The programs for A072543, the canonical program `A072543.P16086005877462382500` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072543 has offset 1).

The definition of A072543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072543.P16086005877462382500

`eq[A000030(n), A054055(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072543

/-- `eq[A000030(n), A054055(n)]` -/
def P16086005877462382500.Spec : Prop :=
  ∀ n, (P16086005877462382500.a n : ℤ) = A072543 (n + 1)

theorem P16086005877462382500.correct : P16086005877462382500.Spec := by
  intro n
  simp only [A072543, Nat.add_sub_cancel]

end A072543

/-! ## A072543.P8596737874822669697

`eq[A032762(n)%10, A054055(n)]`
-/

namespace A072543.P8596737874822669697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032762 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P8596737874822669697

namespace A072543

/-- `eq[A032762(n)%10, A054055(n)]` -/
def P8596737874822669697.Spec : Prop :=
  ∀ n, (P8596737874822669697.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P4794005372217077465

`eq[A082216(n)%10, A054055(n)]`
-/

namespace A072543.P4794005372217077465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082216 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P4794005372217077465

namespace A072543

/-- `eq[A082216(n)%10, A054055(n)]` -/
def P4794005372217077465.Spec : Prop :=
  ∀ n, (P4794005372217077465.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P537535698313755730

`eq[A054055(n)+n, A182324(n)]`
-/

namespace A072543.P537535698313755730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P537535698313755730

namespace A072543

/-- `eq[A054055(n)+n, A182324(n)]` -/
def P537535698313755730.Spec : Prop :=
  ∀ n, (P537535698313755730.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P10958475497884886456

`eq[A000030(n), A000030(A004186(n))]`
-/

namespace A072543.P10958475497884886456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P10958475497884886456

namespace A072543

/-- `eq[A000030(n), A000030(A004186(n))]` -/
def P10958475497884886456.Spec : Prop :=
  ∀ n, (P10958475497884886456.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P6240546068219726766

`eq[A010879(A032762(n)), A054055(n)]`
-/

namespace A072543.P6240546068219726766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P6240546068219726766

namespace A072543

/-- `eq[A010879(A032762(n)), A054055(n)]` -/
def P6240546068219726766.Spec : Prop :=
  ∀ n, (P6240546068219726766.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P13863772637881079728

`eq[A000030(n), A000030(A227362(n))]`
-/

namespace A072543.P13863772637881079728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P13863772637881079728

namespace A072543

/-- `eq[A000030(n), A000030(A227362(n))]` -/
def P13863772637881079728.Spec : Prop :=
  ∀ n, (P13863772637881079728.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P13245143344828725455

`eq[A054055(n), A054055(A355221(n))]`
-/

namespace A072543.P13245143344828725455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A355221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P13245143344828725455

namespace A072543

/-- `eq[A054055(n), A054055(A355221(n))]` -/
def P13245143344828725455.Spec : Prop :=
  ∀ n, (P13245143344828725455.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P4614222531930838488

`eq[0, A056965(A355222(n))]`
-/

namespace A072543.P4614222531930838488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A355222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072543.P4614222531930838488

namespace A072543

/-- `eq[0, A056965(A355222(n))]` -/
def P4614222531930838488.Spec : Prop :=
  ∀ n, (P4614222531930838488.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P16183150805311446767

`eq[A004428(A355222(n)), A054055(n)]`
-/

namespace A072543.P16183150805311446767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004428 (A355222 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P16183150805311446767

namespace A072543

/-- `eq[A004428(A355222(n)), A054055(n)]` -/
def P16183150805311446767.Spec : Prop :=
  ∀ n, (P16183150805311446767.a n : ℤ) = A072543 (n + 1)

end A072543

/-! ## A072543.P155576918477495925

`eq[A000030(n), A061395(A113581(n))]`
-/

namespace A072543.P155576918477495925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072543.P155576918477495925

namespace A072543

/-- `eq[A000030(n), A061395(A113581(n))]` -/
def P155576918477495925.Spec : Prop :=
  ∀ n, (P155576918477495925.a n : ℤ) = A072543 (n + 1)

end A072543

/-!
# A072544: Numbers whose smallest decimal digit is also the initial digit.

The programs for A072544, the canonical program `A072544.P3283143156771516929` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072544 has offset 1).

The definition of A072544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072544.P4720475721910102684

`eq[0, A056965(A355221(n))]`
-/

namespace A072544.P4720475721910102684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A355221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072544.P4720475721910102684

namespace A072544

/-- `eq[0, A056965(A355221(n))]` -/
def P4720475721910102684.Spec : Prop :=
  ∀ n, (P4720475721910102684.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P1570195659215998634

`eq[A000030(n), A054054(n)]`
-/

namespace A072544.P1570195659215998634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P1570195659215998634

namespace A072544

/-- `eq[A000030(n), A054054(n)]` -/
def P1570195659215998634.Spec : Prop :=
  ∀ n, (P1570195659215998634.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P5671288751438643415

`eq[val(A061509(n), 2), A054054(n)]`
-/

namespace A072544.P5671288751438643415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072544.P5671288751438643415

namespace A072544

/-- `eq[val(A061509(n), 2), A054054(n)]` -/
def P5671288751438643415.Spec : Prop :=
  ∀ n, (P5671288751438643415.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P3283143156771516929

`eq[val(A348783(n), 5), A000030(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072544

/-- `eq[val(A348783(n), 5), A000030(n)]` -/
def P3283143156771516929.Spec : Prop :=
  ∀ n, (P3283143156771516929.a n : ℤ) = A072544 (n + 1)

theorem P3283143156771516929.correct : P3283143156771516929.Spec := by
  intro n
  simp only [A072544, Nat.add_sub_cancel]

end A072544

/-! ## A072544.P14974159253257694388

`eq[A004186(n)%10, A000030(n)]`
-/

namespace A072544.P14974159253257694388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P14974159253257694388

namespace A072544

/-- `eq[A004186(n)%10, A000030(n)]` -/
def P14974159253257694388.Spec : Prop :=
  ∀ n, (P14974159253257694388.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P18416850272515885003

`eq[A004086(n)%10, A054054(n)]`
-/

namespace A072544.P18416850272515885003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 n) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P18416850272515885003

namespace A072544

/-- `eq[A004086(n)%10, A054054(n)]` -/
def P18416850272515885003.Spec : Prop :=
  ∀ n, (P18416850272515885003.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P9964970134442196419

`eq[A054054(n)+n, A182324(n)]`
-/

namespace A072544.P9964970134442196419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P9964970134442196419

namespace A072544

/-- `eq[A054054(n)+n, A182324(n)]` -/
def P9964970134442196419.Spec : Prop :=
  ∀ n, (P9964970134442196419.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P8514169084776641922

`eq[A000030(n), A007814(A086066(n))]`
-/

namespace A072544.P8514169084776641922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A086066 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P8514169084776641922

namespace A072544

/-- `eq[A000030(n), A007814(A086066(n))]` -/
def P8514169084776641922.Spec : Prop :=
  ∀ n, (P8514169084776641922.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P14209172618465482994

`eq[A007376(A229186(n)), A054054(n)]`
-/

namespace A072544.P14209172618465482994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A229186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P14209172618465482994

namespace A072544

/-- `eq[A007376(A229186(n)), A054054(n)]` -/
def P14209172618465482994.Spec : Prop :=
  ∀ n, (P14209172618465482994.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P6915665059882119702

`eq[A054054(n), A054055(A355221(n))]`
-/

namespace A072544.P6915665059882119702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A355221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P6915665059882119702

namespace A072544

/-- `eq[A054054(n), A054055(A355221(n))]` -/
def P6915665059882119702.Spec : Prop :=
  ∀ n, (P6915665059882119702.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P14604980420821217333

`eq[A054054(n), A054054(A355222(n))]`
-/

namespace A072544.P14604980420821217333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A355222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P14604980420821217333

namespace A072544

/-- `eq[A054054(n), A054054(A355222(n))]` -/
def P14604980420821217333.Spec : Prop :=
  ∀ n, (P14604980420821217333.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P4238131742328045434

`eq[A008963(A020344(n)), A054054(n)]`
-/

namespace A072544.P4238131742328045434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008963 (A020344 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P4238131742328045434

namespace A072544

/-- `eq[A008963(A020344(n)), A054054(n)]` -/
def P4238131742328045434.Spec : Prop :=
  ∀ n, (P4238131742328045434.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P76364552896643683

`eq[A002993(A272676(n)), A054054(n)]`
-/

namespace A072544.P76364552896643683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 (A272676 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P76364552896643683

namespace A072544

/-- `eq[A002993(A272676(n)), A054054(n)]` -/
def P76364552896643683.Spec : Prop :=
  ∀ n, (P76364552896643683.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P12503145159396915057

`eq[A001113(A078197(n)), A054054(n)]`
-/

namespace A072544.P12503145159396915057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A078197 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P12503145159396915057

namespace A072544

/-- `eq[A001113(A078197(n)), A054054(n)]` -/
def P12503145159396915057.Spec : Prop :=
  ∀ n, (P12503145159396915057.a n : ℤ) = A072544 (n + 1)

end A072544

/-! ## A072544.P17672156610726455689

`eq[A000796(A014777(n)), A054054(n)]`
-/

namespace A072544.P17672156610726455689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A014777 n).toNat + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072544.P17672156610726455689

namespace A072544

/-- `eq[A000796(A014777(n)), A054054(n)]` -/
def P17672156610726455689.Spec : Prop :=
  ∀ n, (P17672156610726455689.a n : ℤ) = A072544 (n + 1)

end A072544

/-!
# A072545: a(0) = 1, a(n) for n > 0 is the smallest number > a(n-1) such that a(n)-a(k) is nonprime for 0 <= k < n.

The programs for A072545, there is no canonical definition to state claims against.
-/

/-! ## A072545.P12821906445011359259

`A025043(n+1)+1`
-/

namespace A072545.P12821906445011359259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025043 (n + 1) + 1

end

end A072545.P12821906445011359259

/-! ## A072545.P8748803504487091435

`A332941(n)+a(n-1)` with `a(0)=1`
-/

namespace A072545.P8748803504487091435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332941 n + a (n - 1)

end

end A072545.P8748803504487091435

/-! ## A072545.P3063973185524029783

`∑[A332941(A033715(n)%2+n)]`
-/

namespace A072545.P3063973185524029783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (Int.tmod (A033715 n) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072545.P3063973185524029783

/-! ## A072545.P4320343146410744585

`∑[A332941(A033731(n)%2+n)]`
-/

namespace A072545.P4320343146410744585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (Int.tmod (A033731 n) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072545.P4320343146410744585

/-! ## A072545.P14816349576144825146

`∑[A332941(A033732(n)%2+n)]`
-/

namespace A072545.P14816349576144825146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (Int.tmod (A033732 n) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072545.P14816349576144825146

/-! ## A072545.P781082428257065307

`∑[A332941(A254337(n+1)%2+n)]`
-/

namespace A072545.P781082428257065307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (Int.tmod (A254337 (n + 1)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072545.P781082428257065307

/-! ## A072545.P18275466971683585845

`eq[0, A014589(n)]+1`
-/

namespace A072545.P18275466971683585845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072545.P18275466971683585845

/-! ## A072545.P273012827526748619

`A023443(eq[1, A014589(n)])`
-/

namespace A072545.P273012827526748619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072545.P273012827526748619

/-! ## A072545.P4809611283509853299

`record[gcd(A000027(n+1), A014589(n))]`
-/

namespace A072545.P4809611283509853299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A014589 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072545.P4809611283509853299

/-! ## A072545.P1998257359170553536

`record[n+1-A254337(5*A014589(n))]`
-/

namespace A072545.P1998257359170553536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A254337 (5 * A014589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072545.P1998257359170553536

/-! ## A072545.P7301237805358917765

`record[n+1-A014589(n)*A025044(n+1)]`
-/

namespace A072545.P7301237805358917765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A014589 n * A025044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072545.P7301237805358917765

/-! ## A072545.P6323050584306363558

`A014560(A014586(n))+lt[A014589(n), 1]`
-/

namespace A072545.P6323050584306363558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A014586 n).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A072545.P6323050584306363558

/-! ## A072545.P2176181050254297213

`∑[A332941(A003056(A000124(n)))]`
-/

namespace A072545.P2176181050254297213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332941 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072545.P2176181050254297213

/-!
# A072546: Sequence related to Fibonacci and "tribonacci" sequences : let f(1)=1, f(2)=n, f(k+2)=f(k+1)+f(k), t(1)=t(2)=t(3)=1, t(k+3)=t(k+2)+t(k+1)+t(k) (t(k)=A000213(k-1)); sequence gives the smallest value k = a(n) such that t(k)>f(k).

The programs for A072546, there is no canonical definition to state claims against.
-/

/-! ## A072546.P10354745401786668069

`A130245(3*∑[n+2]²)`
-/

namespace A072546.P10354745401786668069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A072546.P10354745401786668069

/-!
# A072547: Main diagonal of the array in which first column and row are filled alternatively with 1's or 0's and then T(i,j) = T(i-1,j) + T(i,j-1).

The programs for A072547, the canonical program `A072547.P9547033141978854223` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072547 has offset 1).

The definition of A072547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072547.P7999847639461186972

`A109078(comp[2*(n+1)])`
-/

namespace A072547.P7999847639461186972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109078 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A072547.P7999847639461186972

namespace A072547

/-- `A109078(comp[2*(n+1)])` -/
def P7999847639461186972.Spec : Prop :=
  ∀ n, P7999847639461186972.a n = A072547 (n + 1)

end A072547

/-! ## A072547.P9547033141978854223

`Δ[A112556(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072547

/-- `Δ[A112556(n)]` -/
def P9547033141978854223.Spec : Prop :=
  ∀ n, P9547033141978854223.a n = A072547 (n + 1)

theorem P9547033141978854223.correct : P9547033141978854223.Spec := by
  intro n
  simp only [A072547, Nat.add_sub_cancel]

end A072547

/-! ## A072547.P744867318112022714

`Δ[A116466(2*n)]`
-/

namespace A072547.P744867318112022714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116466 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072547.P744867318112022714

namespace A072547

/-- `Δ[A116466(2*n)]` -/
def P744867318112022714.Spec : Prop :=
  ∀ n, P744867318112022714.a n = A072547 (n + 1)

end A072547

/-! ## A072547.P3164835288134423479

`A001791(n)-A091526(n+1)`
-/

namespace A072547.P3164835288134423479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n - A091526 (n + 1)

end

end A072547.P3164835288134423479

namespace A072547

/-- `A001791(n)-A091526(n+1)` -/
def P3164835288134423479.Spec : Prop :=
  ∀ n, P3164835288134423479.a n = A072547 (n + 1)

end A072547

/-! ## A072547.P15046611308680789638

`A112556(n+1)-A112556(n)`
-/

namespace A072547.P15046611308680789638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 (n + 1) - A112556 n

end

end A072547.P15046611308680789638

namespace A072547

/-- `A112556(n+1)-A112556(n)` -/
def P15046611308680789638.Spec : Prop :=
  ∀ n, P15046611308680789638.a n = A072547 (n + 1)

theorem P15046611308680789638.correct : P15046611308680789638.Spec := by
  intro n
  simp only [A072547, Nat.add_sub_cancel, A072547.P15046611308680789638.a, A072547.P9547033141978854223.f1, A072547.P9547033141978854223.a, SequenceMachineLib.memo_apply]

end A072547

/-! ## A072547.P11598942634192472389

`2*A026641(n)-A000984(n)`
-/

namespace A072547.P11598942634192472389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026641 n - A000984 n

end

end A072547.P11598942634192472389

namespace A072547

/-- `2*A026641(n)-A000984(n)` -/
def P11598942634192472389.Spec : Prop :=
  ∀ n, P11598942634192472389.a n = A072547 (n + 1)

end A072547

/-! ## A072547.P13521053847734477128

`(A126983(n)+A026641(n))/2`
-/

namespace A072547.P13521053847734477128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126983 n + A026641 n : ℚ) / 2

end

end A072547.P13521053847734477128

namespace A072547

/-- `(A126983(n)+A026641(n))/2` -/
def P13521053847734477128.Spec : Prop :=
  ∀ n, P13521053847734477128.a n = (A072547 (n + 1) : ℚ)

end A072547

/-! ## A072547.P5749311436164691501

`A116466(2*(n+1))-A116466(2*n)`
-/

namespace A072547.P5749311436164691501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116466 (2 * (n + 1)) - A116466 (2 * n)

end

end A072547.P5749311436164691501

namespace A072547

/-- `A116466(2*(n+1))-A116466(2*n)` -/
def P5749311436164691501.Spec : Prop :=
  ∀ n, P5749311436164691501.a n = A072547 (n + 1)

end A072547

/-! ## A072547.P9421020646592606230

`2*A191526(2*n)-A001405(2*n)`
-/

namespace A072547.P9421020646592606230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191526 (2 * n) - A001405 (2 * n)

end

end A072547.P9421020646592606230

namespace A072547

/-- `2*A191526(2*n)-A001405(2*n)` -/
def P9421020646592606230.Spec : Prop :=
  ∀ n, P9421020646592606230.a n = A072547 (n + 1)

end A072547

/-! ## A072547.P10480013353365247375

`A000957(n+1)+A014300(n+1)-A000984(n)`
-/

namespace A072547.P10480013353365247375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + (A014300 (n + 1) - A000984 n)

end

end A072547.P10480013353365247375

namespace A072547

/-- `A000957(n+1)+A014300(n+1)-A000984(n)` -/
def P10480013353365247375.Spec : Prop :=
  ∀ n, P10480013353365247375.a n = A072547 (n + 1)

end A072547

/-! ## A072547.P810133915240444038

`A201635(∑[n]+n)`
-/

namespace A072547.P810133915240444038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A072547.P810133915240444038

namespace A072547

/-- `A201635(∑[n]+n)` -/
def P810133915240444038.Spec : Prop :=
  ∀ n, P810133915240444038.a n = A072547 (n + 1)

end A072547

/-!
# A072548: a(n) = sigma(n) mod PrimePi(n).

The programs for A072548, the canonical program `A072548.P12306959769484027666` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072548 has offset 2).

The definition of A072548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+2)%A000720(n+2)` (program `A072548.P12306959769484027666`, by `A072548.P12306959769484027666.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072548.P12306959769484027666

`A000203(n+2)%A000720(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072548

/-- `A000203(n+2)%A000720(n+2)` -/
def P12306959769484027666.Spec : Prop :=
  ∀ n, P12306959769484027666.a n = A072548 (n + 2)

theorem P12306959769484027666.correct : P12306959769484027666.Spec := by
  intro n
  simp only [A072548, Nat.add_sub_cancel]

end A072548

/-! ## A072548.P17599272358001795258

`(A065608(n+2)+A000005(n+2))%A000720(n+2)`
-/

namespace A072548.P17599272358001795258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065608 (n + 2) + A000005 (n + 2)) (A000720 (n + 2))

end

end A072548.P17599272358001795258

namespace A072548

/-- `(A065608(n+2)+A000005(n+2))%A000720(n+2)` -/
def P17599272358001795258.Spec : Prop :=
  ∀ n, P17599272358001795258.a n = A072548 (n + 2)

theorem P17599272358001795258.correct : P17599272358001795258.Spec := by
  intro n
  simp only [A072548, Nat.add_sub_cancel, A072548.P17599272358001795258.a, A072548.P12306959769484027666.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065608, A065608.P12445239359989980431.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A072548

/-! ## A072548.P7027531730386713717

`A152991(n+2)%A000720(n+2)`
-/

namespace A072548.P7027531730386713717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152991 (n + 2)) (A000720 (n + 2))

end

end A072548.P7027531730386713717

namespace A072548

/-- `A152991(n+2)%A000720(n+2)` -/
def P7027531730386713717.Spec : Prop :=
  ∀ n, P7027531730386713717.a n = A072548 (n + 2)

end A072548

/-! ## A072548.P11825335037497465108

`Δ[A024916(n+1)]%A000720(n+2)`
-/

namespace A072548.P11825335037497465108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000720 (n + 2))

end

end A072548.P11825335037497465108

namespace A072548

/-- `Δ[A024916(n+1)]%A000720(n+2)` -/
def P11825335037497465108.Spec : Prop :=
  ∀ n, P11825335037497465108.a n = A072548 (n + 2)

end A072548

/-! ## A072548.P15598828549977433179

`A245092(2*n+3)%A000720(n+2)`
-/

namespace A072548.P15598828549977433179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 3)) (A000720 (n + 2))

end

end A072548.P15598828549977433179

namespace A072548

/-- `A245092(2*n+3)%A000720(n+2)` -/
def P15598828549977433179.Spec : Prop :=
  ∀ n, P15598828549977433179.a n = A072548 (n + 2)

end A072548

/-! ## A072548.P13234656401328393911

`∑{d}[A000720(A000040(n+2)+1), #]%A000720(n+2)`
-/

namespace A072548.P13234656401328393911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A000720 (n + 2))

end

end A072548.P13234656401328393911

namespace A072548

/-- `∑{d}[A000720(A000040(n+2)+1), #]%A000720(n+2)` -/
def P13234656401328393911.Spec : Prop :=
  ∀ n, P13234656401328393911.a n = A072548 (n + 2)

end A072548

/-!
# A072549: a(n) = abs(floor(n + a(n-1)^2/n - n*log(n))) with a(0)=1.

The programs for A072549, the canonical program `A072549.P4450153367816939789` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072549 has offset 0).

The definition of A072549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(floor(n+a(n-1)²/n-n*log(n)))` (program `A072549.P4450153367816939789`, by `A072549.P4450153367816939789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072549.P4450153367816939789

`abs(floor(n+a(n-1)²/n-n*log(n)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072549

/-- `abs(floor(n+a(n-1)²/n-n*log(n)))` -/
def P4450153367816939789.Spec : Prop :=
  ∀ n, P4450153367816939789.a n = A072549 n

theorem P4450153367816939789.correct : P4450153367816939789.Spec := by
  intro n
  simp only [A072549]

end A072549

/-!
# A072550: Number of Vice Presidents under n-th President of U.S.A.

The programs for A072550, there is no canonical definition to state claims against.
-/

/-! ## A072550.P781595990904610929

`A287104(A008000(n)*A064380(n+2))`
-/

namespace A072550.P781595990904610929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (A008000 n * A064380 (n + 2)).toNat

end

end A072550.P781595990904610929

/-! ## A072550.P15544206759731190561

`A078461(or(A141206(n+1), A145113(n)))`
-/

namespace A072550.P15544206759731190561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (Int.lor (A141206 (n + 1)) (A145113 n)).toNat

end

end A072550.P15544206759731190561

/-! ## A072550.P5014079804743762990

`A038769(xor(A275715(n+1), A315679(n)))`
-/

namespace A072550.P5014079804743762990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (Int.xor (A275715 (n + 1)) (A315679 n)).toNat

end

end A072550.P5014079804743762990

/-! ## A072550.P4751841994665820018

`A287156(xor(A005087(n+1), A249275(n+1)))`
-/

namespace A072550.P4751841994665820018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287156 (Int.xor (A005087 (n + 1)) (A249275 (n + 1))).toNat

end

end A072550.P4751841994665820018

/-!
# A072552: Number of connected planar regular graphs of degree 4 with n nodes.

The programs for A072552, there is no canonical definition to state claims against.
-/

/-! ## A072552.P14539082172749176092

`A078666(n+6)+A025462(A089791(n+3))`
-/

namespace A072552.P14539082172749176092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078666 (n + 6) + A025462 (A089791 (n + 3)).toNat

end

end A072552.P14539082172749176092

/-!
# A072553: Sigma of n-th composite number equals a(n)-th composite number if it is also a composite or equals zero if sigma[c] is prime.

The programs for A072553, the canonical program `A072553.P644284163393021583` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072553 has offset 1).

The definition of A072553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072553.P9100583948648811523

`A066246(∑{d}[comp[p?[2*n+1]-3]+3, #])`
-/

namespace A072553.P9100583948648811523
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A072553.P9100583948648811523

namespace A072553

/-- `A066246(∑{d}[comp[p?[2*n+1]-3]+3, #])` -/
def P9100583948648811523.Spec : Prop :=
  ∀ n, P9100583948648811523.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P644284163393021583

`A066246(A073255(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072553

/-- `A066246(A073255(n+1))` -/
def P644284163393021583.Spec : Prop :=
  ∀ n, P644284163393021583.a n = A072553 (n + 1)

theorem P644284163393021583.correct : P644284163393021583.Spec := by
  intro n
  simp only [A072553, Nat.add_sub_cancel]

end A072553

/-! ## A072553.P1846436859774257930

`A066246(A162194(n+2))`
-/

namespace A072553.P1846436859774257930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A162194 (n + 2)).toNat

end

end A072553.P1846436859774257930

namespace A072553

/-- `A066246(A162194(n+2))` -/
def P1846436859774257930.Spec : Prop :=
  ∀ n, P1846436859774257930.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P3223974296805504755

`A066246(∑{d}[Δ[A053767(n)], #])`
-/

namespace A072553.P3223974296805504755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A072553.P3223974296805504755

namespace A072553

/-- `A066246(∑{d}[Δ[A053767(n)], #])` -/
def P3223974296805504755.Spec : Prop :=
  ∀ n, P3223974296805504755.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P14331284548540381510

`A066246(∑{d}[A002808(n+1), #])`
-/

namespace A072553.P14331284548540381510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A072553.P14331284548540381510

namespace A072553

/-- `A066246(∑{d}[A002808(n+1), #])` -/
def P14331284548540381510.Spec : Prop :=
  ∀ n, P14331284548540381510.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P10763635460278246707

`A066246(∑{d}[A018252(n+2), #])`
-/

namespace A072553.P10763635460278246707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A072553.P10763635460278246707

namespace A072553

/-- `A066246(∑{d}[A018252(n+2), #])` -/
def P10763635460278246707.Spec : Prop :=
  ∀ n, P10763635460278246707.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P12336004616663291880

`A066246(∑{d}[comp[C(A006530(n+1), n)], #])`
-/

namespace A072553.P12336004616663291880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A072553.P12336004616663291880

namespace A072553

/-- `A066246(∑{d}[comp[C(A006530(n+1), n)], #])` -/
def P12336004616663291880.Spec : Prop :=
  ∀ n, P12336004616663291880.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P4863477291442639259

`A066246(∑{d}[comp[C(A020639(n+1), n)], #])`
-/

namespace A072553.P4863477291442639259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A072553.P4863477291442639259

namespace A072553

/-- `A066246(∑{d}[comp[C(A020639(n+1), n)], #])` -/
def P4863477291442639259.Spec : Prop :=
  ∀ n, P4863477291442639259.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P16042706401457638426

`A066246(∑{d}[lt[1, A001222(n+1)]+1, #])`
-/

namespace A072553.P16042706401457638426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A072553.P16042706401457638426

namespace A072553

/-- `A066246(∑{d}[lt[1, A001222(n+1)]+1, #])` -/
def P16042706401457638426.Spec : Prop :=
  ∀ n, P16042706401457638426.a n = A072553 (n + 1)

end A072553

/-! ## A072553.P13137538353319744752

`A066246(∑{d}[lt[2, A000005(n+1)]+1, #])`
-/

namespace A072553.P13137538353319744752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A072553.P13137538353319744752

namespace A072553

/-- `A066246(∑{d}[lt[2, A000005(n+1)]+1, #])` -/
def P13137538353319744752.Spec : Prop :=
  ∀ n, P13137538353319744752.a n = A072553 (n + 1)

end A072553

/-!
# A072554: E24 range of preferred resistor values in electronic engineering.

The programs for A072554, there is no canonical definition to state claims against.
-/

/-! ## A072554.P13554494257479695367

`A277903(A218153(n+2))+9`
-/

namespace A072554.P13554494257479695367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (A218153 (n + 2)).toNat + 9

end

end A072554.P13554494257479695367

/-! ## A072554.P6259569707382375576

`A056556(A066186(n+4))+6`
-/

namespace A072554.P6259569707382375576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A066186 (n + 4)).toNat + 6

end

end A072554.P6259569707382375576

/-! ## A072554.P15697531248069011561

`A141213(A120200(n+1)-2)+2`
-/

namespace A072554.P15697531248069011561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A120200 (n + 1) - 2).toNat + 2

end

end A072554.P15697531248069011561

/-! ## A072554.P8609052182346534778

`A141213(A120200(n+1))`
-/

namespace A072554.P8609052182346534778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A120200 (n + 1)).toNat

end

end A072554.P8609052182346534778

/-!
# A072555: Smallest of four consecutive integers divisible by four consecutive primes respectively.

The programs for A072555, there is no canonical definition to state claims against.
-/

/-! ## A072555.P9424275836122700603

`∩[A073607(n+1), A233583(A073607(n+1))]`
-/

namespace A072555.P9424275836122700603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A073607 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072555.P9424275836122700603

/-!
# A072556: Numbers n such that n and the n-th Fibonacci number have the same number of distinct prime factors.

The programs for A072556, there is no canonical definition to state claims against.
-/

/-! ## A072556.P15198382182246166569

`eq[A001221(n+1), A022307(n+1)]+1`
-/

namespace A072556.P15198382182246166569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072556.P15198382182246166569

/-! ## A072556.P8729835376852394117

`eq[A001221(A000038(n)+n), A022307(n)]`
-/

namespace A072556.P8729835376852394117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072556.P8729835376852394117

/-!
# A072557: Let w(n) be defined by the following recurrence: w(1)=w(2)=w(3)=1, w(n)=(w(n-1)*w(n-2)+(w(n-1)+w(n-2))/3) / w(n-3); sequence gives values of n such that w(n) is an integer.

The programs for A072557, the canonical program `A072557.P12193368760261981115` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072557 has offset 1).

The definition of A072557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072557.P12193368760261981115

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=5, a(1)=11, a(2)=16, a(3)=17, a(4)=18, a(5)=23`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072557

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P12193368760261981115.Spec : Prop :=
  ∀ n, P12193368760261981115.a n = A072557 (n + 1)

theorem P12193368760261981115.correct : P12193368760261981115.Spec := by
  intro n
  simp only [A072557, Nat.add_sub_cancel]

end A072557

/-! ## A072557.P2449731169526032448

`∑[floor(a(n-5))]` with `a(0)=5, a(1)=6, a(2)=5, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A072557.P2449731169526032448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6, 5, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072557.P2449731169526032448

namespace A072557

/-- `∑[floor(a(n-5))]` -/
def P2449731169526032448.Spec : Prop :=
  ∀ n, (P2449731169526032448.a n : ℤ) = A072557 (n + 1)

end A072557

/-! ## A072557.P17134392371855517834

`∑[ceil(a(n-5))]` with `a(0)=5, a(1)=6, a(2)=5, a(3)=1, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A072557.P17134392371855517834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6, 5, 1, 1] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072557.P17134392371855517834

namespace A072557

/-- `∑[ceil(a(n-5))]` -/
def P17134392371855517834.Spec : Prop :=
  ∀ n, (P17134392371855517834.a n : ℤ) = A072557 (n + 1)

end A072557

/-! ## A072557.P11918563566066133448

`∑[(5^(∑[n+1]%5))%7]`
-/

namespace A072557.P11918563566066133448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 5) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072557.P11918563566066133448

namespace A072557

/-- `∑[(5^(∑[n+1]%5))%7]` -/
def P11918563566066133448.Spec : Prop :=
  ∀ n, (P11918563566066133448.a n : ℤ) = A072557 (n + 1)

end A072557

/-! ## A072557.P8701484627813973209

`∑[a(n-5)%7]` with `a(0)=5, a(1)=6, a(2)=5, a(3)=1, a(4)=1`
-/

namespace A072557.P8701484627813973209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 6, 5, 1, 1] fun n f1 =>
  f1 (n - 5) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072557.P8701484627813973209

namespace A072557

/-- `∑[a(n-5)%7]` -/
def P8701484627813973209.Spec : Prop :=
  ∀ n, (P8701484627813973209.a n : ℤ) = A072557 (n + 1)

end A072557

/-! ## A072557.P15635875716081348637

`∑[xor(5, (∑[n+1]²-1)%5)]`
-/

namespace A072557.P15635875716081348637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (Int.tmod ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - 1) 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072557.P15635875716081348637

namespace A072557

/-- `∑[xor(5, (∑[n+1]²-1)%5)]` -/
def P15635875716081348637.Spec : Prop :=
  ∀ n, P15635875716081348637.a n = A072557 (n + 1)

end A072557

/-! ## A072557.P5351929308295597611

`∑[Δ[A008576(A072154(n+1))]%7]`
-/

namespace A072557.P5351929308295597611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A072154 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072557.P5351929308295597611

namespace A072557

/-- `∑[Δ[A008576(A072154(n+1))]%7]` -/
def P5351929308295597611.Spec : Prop :=
  ∀ n, P5351929308295597611.a n = A072557 (n + 1)

end A072557

/-! ## A072557.P1954013932998390344

`eq[A040001(n), A340407(n+1)]`
-/

namespace A072557.P1954013932998390344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072557.P1954013932998390344

namespace A072557

/-- `eq[A040001(n), A340407(n+1)]` -/
def P1954013932998390344.Spec : Prop :=
  ∀ n, (P1954013932998390344.a n : ℤ) = A072557 (n + 1)

end A072557

/-! ## A072557.P14309192081660767968

`eq[A134451(n), A340407(n+1)]`
-/

namespace A072557.P14309192081660767968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072557.P14309192081660767968

namespace A072557

/-- `eq[A134451(n), A340407(n+1)]` -/
def P14309192081660767968.Spec : Prop :=
  ∀ n, (P14309192081660767968.a n : ℤ) = A072557 (n + 1)

end A072557

/-! ## A072557.P3623948970505635055

`eq[A288699(n), A340407(n+1)]`
-/

namespace A072557.P3623948970505635055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072557.P3623948970505635055

namespace A072557

/-- `eq[A288699(n), A340407(n+1)]` -/
def P3623948970505635055.Spec : Prop :=
  ∀ n, (P3623948970505635055.a n : ℤ) = A072557 (n + 1)

end A072557

/-! ## A072557.P13790354194253111303

`eq[3, A020639(A156040(n+1)+3)]+2`
-/

namespace A072557.P13790354194253111303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156040 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A072557.P13790354194253111303

namespace A072557

/-- `eq[3, A020639(A156040(n+1)+3)]+2` -/
def P13790354194253111303.Spec : Prop :=
  ∀ n, (P13790354194253111303.a n : ℤ) = A072557 (n + 1)

end A072557

/-!
# A072560: Denominators of w(n) where w(1)=w(2)=w(3)=1, w(n)=(w(n-1)*w(n-2)+(w(n-1)+w(n-2))/3) / w(n-3).

The programs for A072560, there is no canonical definition to state claims against.
-/

/-! ## A072560.P7289760195425121201

`A177842(6*A014682(n+1))`
-/

namespace A072560.P7289760195425121201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177842 (6 * A014682 (n + 1)).toNat

end

end A072560.P7289760195425121201

/-!
# A072561: Denominators of w(n) equals 3 where w(1)=w(2)=w(3)=1, w(n)=(w(n-1)*w(n-2)+(w(n-1)+w(n-2))/3) / w(n-3).

The programs for A072561, the canonical program `A072561.P15765092492089093831` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072561 has offset 1).

The definition of A072561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072561.P3466190599918194409

`2*n-A194508(or(1, n))`
-/

namespace A072561.P3466190599918194409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A194508 (Nat.lor 1 n)

end

end A072561.P3466190599918194409

namespace A072561

/-- `2*n-A194508(or(1, n))` -/
def P3466190599918194409.Spec : Prop :=
  ∀ n, P3466190599918194409.a n = A072561 (n + 1)

end A072561

/-! ## A072561.P15765092492089093831

`A047209(n+1)-A081598(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072561

/-- `A047209(n+1)-A081598(n)` -/
def P15765092492089093831.Spec : Prop :=
  ∀ n, P15765092492089093831.a n = A072561 (n + 1)

theorem P15765092492089093831.correct : P15765092492089093831.Spec := by
  intro n
  simp only [A072561, Nat.add_sub_cancel]

end A072561

/-! ## A072561.P1724323738522121629

`A008585(A059995(n))+∑[gcd(2, n+1)]`
-/

namespace A072561.P1724323738522121629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A059995 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A072561.P1724323738522121629

namespace A072561

/-- `A008585(A059995(n))+∑[gcd(2, n+1)]` -/
def P1724323738522121629.Spec : Prop :=
  ∀ n, P1724323738522121629.a n = A072561 (n + 1)

end A072561

/-! ## A072561.P5221049029906825920

`lt[A059841(n), dr(A167362(n+1))]`
-/

namespace A072561.P5221049029906825920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A167362 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072561.P5221049029906825920

namespace A072561

/-- `lt[A059841(n), dr(A167362(n+1))]` -/
def P5221049029906825920.Spec : Prop :=
  ∀ n, (P5221049029906825920.a n : ℤ) = A072561 (n + 1)

end A072561

/-! ## A072561.P10703507250380546017

`lt[1, A000035(n)+dr(A167362(n+1))]`
-/

namespace A072561.P10703507250380546017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (SequenceMachineLib.digitalRoot (A167362 (n + 1)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072561.P10703507250380546017

namespace A072561

/-- `lt[1, A000035(n)+dr(A167362(n+1))]` -/
def P10703507250380546017.Spec : Prop :=
  ∀ n, (P10703507250380546017.a n : ℤ) = A072561 (n + 1)

end A072561

/-! ## A072561.P7761404564769686897

`A001651(2*A160542(n+1))-A001651(n+1)`
-/

namespace A072561.P7761404564769686897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (2 * A160542 (n + 1)).toNat - A001651 (n + 1)

end

end A072561.P7761404564769686897

namespace A072561

/-- `A001651(2*A160542(n+1))-A001651(n+1)` -/
def P7761404564769686897.Spec : Prop :=
  ∀ n, P7761404564769686897.a n = A072561 (n + 1)

end A072561

/-! ## A072561.P11965823422007752218

`lt[A000002(A054353(3*n+2)), A307744(2*(n+1))]`
-/

namespace A072561.P11965823422007752218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A054353 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307744 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072561.P11965823422007752218

namespace A072561

/-- `lt[A000002(A054353(3*n+2)), A307744(2*(n+1))]` -/
def P11965823422007752218.Spec : Prop :=
  ∀ n, (P11965823422007752218.a n : ℤ) = A072561 (n + 1)

end A072561

/-!
# A072565: a(n) = prime(n+1)*prime(n+2)+1 mod prime(n), where prime(n) is the n-th prime.

The programs for A072565, the canonical program `A072565.P5008575360239107435` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072565 has offset 1).

The definition of A072565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072565.P5008575360239107435

`(A000040(n+2)*A000040(n+3)+1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072565

/-- `(A000040(n+2)*A000040(n+3)+1)%A000040(n+1)` -/
def P5008575360239107435.Spec : Prop :=
  ∀ n, P5008575360239107435.a n = A072565 (n + 1)

theorem P5008575360239107435.correct : P5008575360239107435.Spec := by
  intro n
  simp only [A072565, Nat.add_sub_cancel]

end A072565

/-! ## A072565.P9336075110416781300

`(A109805(n+1)+1)%A000040(n+1)`
-/

namespace A072565.P9336075110416781300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109805 (n + 1) + 1) (A000040 (n + 1))

end

end A072565.P9336075110416781300

namespace A072565

/-- `(A109805(n+1)+1)%A000040(n+1)` -/
def P9336075110416781300.Spec : Prop :=
  ∀ n, P9336075110416781300.a n = A072565 (n + 1)

end A072565

/-! ## A072565.P9035173567731862713

`(A006094(n+2)+1)%A000040(n+1)`
-/

namespace A072565.P9035173567731862713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2) + 1) (A000040 (n + 1))

end

end A072565.P9035173567731862713

namespace A072565

/-- `(A006094(n+2)+1)%A000040(n+1)` -/
def P9035173567731862713.Spec : Prop :=
  ∀ n, P9035173567731862713.a n = A072565 (n + 1)

theorem P9035173567731862713.correct : P9035173567731862713.Spec := by
  intro n
  simp only [A072565, Nat.add_sub_cancel, A072565.P9035173567731862713.a, A072565.P5008575360239107435.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072565

/-! ## A072565.P3440978473022219018

`A023523(n+3)%A000040(n+1)`
-/

namespace A072565.P3440978473022219018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023523 (n + 3)) (A000040 (n + 1))

end

end A072565.P3440978473022219018

namespace A072565

/-- `A023523(n+3)%A000040(n+1)` -/
def P3440978473022219018.Spec : Prop :=
  ∀ n, P3440978473022219018.a n = A072565 (n + 1)

end A072565

/-! ## A072565.P16021443867910656750

`(Δ[A023515(n+2)]+1)%A000040(n+1)`
-/

namespace A072565.P16021443867910656750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) (A000040 (n + 1))

end

end A072565.P16021443867910656750

namespace A072565

/-- `(Δ[A023515(n+2)]+1)%A000040(n+1)` -/
def P16021443867910656750.Spec : Prop :=
  ∀ n, P16021443867910656750.a n = A072565 (n + 1)

end A072565

/-! ## A072565.P15767575234655611690

`A063041(A000040(n+3))%A000040(n+1)`
-/

namespace A072565.P15767575234655611690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063041 (A000040 (n + 3)).toNat) (A000040 (n + 1))

end

end A072565.P15767575234655611690

namespace A072565

/-- `A063041(A000040(n+3))%A000040(n+1)` -/
def P15767575234655611690.Spec : Prop :=
  ∀ n, P15767575234655611690.a n = A072565 (n + 1)

end A072565

/-! ## A072565.P15533337439898681494

`A004442(A109805(n+1))%A008578(n+2)`
-/

namespace A072565.P15533337439898681494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A109805 (n + 1)).toNat) (A008578 (n + 2))

end

end A072565.P15533337439898681494

namespace A072565

/-- `A004442(A109805(n+1))%A008578(n+2)` -/
def P15533337439898681494.Spec : Prop :=
  ∀ n, P15533337439898681494.a n = A072565 (n + 1)

end A072565

/-!
# A072566: Numbers n such that n and sigma(n) end with the same digit in base 10.

The programs for A072566, the canonical program `A072566.P2708539642026713051` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072566 has offset 1).

The definition of A072566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072566.P2708539642026713051

`eq[n%10, A105853(round(sqrt(n²+1)))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072566

/-- `eq[n%10, A105853(round(sqrt(n²+1)))]` -/
def P2708539642026713051.Spec : Prop :=
  ∀ n, (P2708539642026713051.a n : ℤ) = A072566 (n + 1)

theorem P2708539642026713051.correct : P2708539642026713051.Spec := by
  intro n
  simp only [A072566, Nat.add_sub_cancel]

end A072566

/-! ## A072566.P1856404914337796164

`eq[10, gcd(10, A001065(n+1))]+1`
-/

namespace A072566.P1856404914337796164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A001065 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072566.P1856404914337796164

namespace A072566

/-- `eq[10, gcd(10, A001065(n+1))]+1` -/
def P1856404914337796164.Spec : Prop :=
  ∀ n, (P1856404914337796164.a n : ℤ) = A072566 (n + 1)

end A072566

/-! ## A072566.P16715557347756246718

`eq[A010879(n), A105853(A028310(n))]`
-/

namespace A072566.P16715557347756246718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072566.P16715557347756246718

namespace A072566

/-- `eq[A010879(n), A105853(A028310(n))]` -/
def P16715557347756246718.Spec : Prop :=
  ∀ n, (P16715557347756246718.a n : ℤ) = A072566 (n + 1)

end A072566

/-! ## A072566.P658828024405754004

`eq[1, A274206(A001065(n+1)+1)]+1`
-/

namespace A072566.P658828024405754004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A001065 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072566.P658828024405754004

namespace A072566

/-- `eq[1, A274206(A001065(n+1)+1)]+1` -/
def P658828024405754004.Spec : Prop :=
  ∀ n, (P658828024405754004.a n : ℤ) = A072566 (n + 1)

end A072566

/-!
# A072567: A variant of Zarankiewicz problem: maximal number of 1s in n X n 01-matrix with no four 1s forming a rectangle.

The programs for A072567, there is no canonical definition to state claims against.
-/

/-! ## A072567.P4154027085933567509

`A205805(2*(n+1))`
-/

namespace A072567.P4154027085933567509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (2 * (n + 1))

end

end A072567.P4154027085933567509

/-! ## A072567.P16772741604872277739

`record[A205805(xor(1, n)+1)]`
-/

namespace A072567.P16772741604872277739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072567.P16772741604872277739

/-! ## A072567.P10845330632258438089

`(n+1)²-A350296(n+1)`
-/

namespace A072567.P10845330632258438089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A350296 (n + 1)

end

end A072567.P10845330632258438089

/-! ## A072567.P1038298412725618434

`record[A205805(A205843(n+1))]`
-/

namespace A072567.P1038298412725618434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205805 (A205843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072567.P1038298412725618434

/-! ## A072567.P13968992392620063872

`abs(A000290(n+1)-A350296(n+1))`
-/

namespace A072567.P13968992392620063872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 1) - A350296 (n + 1)|

end

end A072567.P13968992392620063872

/-!
# A072568: Even interprimes.

The programs for A072568, the canonical program `A072568.P6946884247769924292` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072568 has offset 1).

The definition of A072568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072568.P15743447014333017619

`2*A390789(n+1)`
-/

namespace A072568.P15743447014333017619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A390789 (n + 1)

end

end A072568.P15743447014333017619

namespace A072568

/-- `2*A390789(n+1)` -/
def P15743447014333017619.Spec : Prop :=
  ∀ n, P15743447014333017619.a n = A072568 (n + 1)

end A072568

/-! ## A072568.P6946884247769924292

`∪[A072570(n+1), A072571(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072568

/-- `∪[A072570(n+1), A072571(n+1)]` -/
def P6946884247769924292.Spec : Prop :=
  ∀ n, (P6946884247769924292.a n : ℤ) = A072568 (n + 1)

theorem P6946884247769924292.correct : P6946884247769924292.Spec := by
  intro n
  simp only [A072568, Nat.add_sub_cancel]

end A072568

/-! ## A072568.P2881396377552467645

`A024675(eq[1, A028334(n+2)%2]+1)`
-/

namespace A072568.P2881396377552467645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028334 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072568.P2881396377552467645

namespace A072568

/-- `A024675(eq[1, A028334(n+2)%2]+1)` -/
def P2881396377552467645.Spec : Prop :=
  ∀ n, P2881396377552467645.a n = A072568 (n + 1)

end A072568

/-! ## A072568.P12172353487485286

`A024675(eq[2, gcd(2, A024675(n+1))]+1)`
-/

namespace A072568.P12172353487485286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A024675 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A072568.P12172353487485286

namespace A072568

/-- `A024675(eq[2, gcd(2, A024675(n+1))]+1)` -/
def P12172353487485286.Spec : Prop :=
  ∀ n, P12172353487485286.a n = A072568 (n + 1)

end A072568

/-! ## A072568.P15007113013626507110

`A024675(record[n*A080378(n+2)-n]+1)`
-/

namespace A072568.P15007113013626507110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080378 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A072568.P15007113013626507110

namespace A072568

/-- `A024675(record[n*A080378(n+2)-n]+1)` -/
def P15007113013626507110.Spec : Prop :=
  ∀ n, P15007113013626507110.a n = A072568 (n + 1)

end A072568

/-! ## A072568.P11690991898850866273

`∩[2*n, A024675(n+1)]`
-/

namespace A072568.P11690991898850866273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P11690991898850866273

namespace A072568

/-- `∩[2*n, A024675(n+1)]` -/
def P11690991898850866273.Spec : Prop :=
  ∀ n, (P11690991898850866273.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P14116331940660692646

`∩[2*n, A162735(n+1)]`
-/

namespace A072568.P14116331940660692646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P14116331940660692646

namespace A072568

/-- `∩[2*n, A162735(n+1)]` -/
def P14116331940660692646.Spec : Prop :=
  ∀ n, (P14116331940660692646.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P11779416662855326083

`∩[2*n, A162800(n+2)]`
-/

namespace A072568.P11779416662855326083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P11779416662855326083

namespace A072568

/-- `∩[2*n, A162800(n+2)]` -/
def P11779416662855326083.Spec : Prop :=
  ∀ n, (P11779416662855326083.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P14791116614657252988

`record[A000265(A078444(n+2))+1]`
-/

namespace A072568.P14791116614657252988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A078444 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072568.P14791116614657252988

namespace A072568

/-- `record[A000265(A078444(n+2))+1]` -/
def P14791116614657252988.Spec : Prop :=
  ∀ n, P14791116614657252988.a n = A072568 (n + 1)

end A072568

/-! ## A072568.P10945653058050275421

`∩[2*n, A145025(n+1)]`
-/

namespace A072568.P10945653058050275421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P10945653058050275421

namespace A072568

/-- `∩[2*n, A145025(n+1)]` -/
def P10945653058050275421.Spec : Prop :=
  ∀ n, (P10945653058050275421.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P1680381648959954106

`record[A000265(A001043(n+1)-2)+1]`
-/

namespace A072568.P1680381648959954106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001043 (n + 1) - 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072568.P1680381648959954106

namespace A072568

/-- `record[A000265(A001043(n+1)-2)+1]` -/
def P1680381648959954106.Spec : Prop :=
  ∀ n, P1680381648959954106.a n = A072568 (n + 1)

end A072568

/-! ## A072568.P15960358364923130684

`∩[2*n, A063934(n+2)]`
-/

namespace A072568.P15960358364923130684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P15960358364923130684

namespace A072568

/-- `∩[2*n, A063934(n+2)]` -/
def P15960358364923130684.Spec : Prop :=
  ∀ n, (P15960358364923130684.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P12348255430089856412

`A004277(A390789(n+1))`
-/

namespace A072568.P12348255430089856412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A390789 (n + 1)).toNat

end

end A072568.P12348255430089856412

namespace A072568

/-- `A004277(A390789(n+1))` -/
def P12348255430089856412.Spec : Prop :=
  ∀ n, P12348255430089856412.a n = A072568 (n + 1)

end A072568

/-! ## A072568.P15652037403345319030

`∩[A024675(n+1), A004271(n)]`
-/

namespace A072568.P15652037403345319030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P15652037403345319030

namespace A072568

/-- `∩[A024675(n+1), A004271(n)]` -/
def P15652037403345319030.Spec : Prop :=
  ∀ n, (P15652037403345319030.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P3437193771443689605

`∩[A024675(n+1), A004272(n)]`
-/

namespace A072568.P3437193771443689605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P3437193771443689605

namespace A072568

/-- `∩[A024675(n+1), A004272(n)]` -/
def P3437193771443689605.Spec : Prop :=
  ∀ n, (P3437193771443689605.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P17478620063857439528

`∩[A024675(n+1), A004275(n)]`
-/

namespace A072568.P17478620063857439528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P17478620063857439528

namespace A072568

/-- `∩[A024675(n+1), A004275(n)]` -/
def P17478620063857439528.Spec : Prop :=
  ∀ n, (P17478620063857439528.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P2118775555304845162

`∩[A024675(n+1), A004277(n)]`
-/

namespace A072568.P2118775555304845162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P2118775555304845162

namespace A072568

/-- `∩[A024675(n+1), A004277(n)]` -/
def P2118775555304845162.Spec : Prop :=
  ∀ n, (P2118775555304845162.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P7877030001976881556

`∩[A024675(n+1), A004279(n)]`
-/

namespace A072568.P7877030001976881556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P7877030001976881556

namespace A072568

/-- `∩[A024675(n+1), A004279(n)]` -/
def P7877030001976881556.Spec : Prop :=
  ∀ n, (P7877030001976881556.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P564239792178476071

`∩[A024675(n+1), A005843(n)]`
-/

namespace A072568.P564239792178476071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P564239792178476071

namespace A072568

/-- `∩[A024675(n+1), A005843(n)]` -/
def P564239792178476071.Spec : Prop :=
  ∀ n, (P564239792178476071.a n : ℤ) = A072568 (n + 1)

end A072568

/-! ## A072568.P1938978768645078092

`∩[A024675(n+1), A103517(n)]`
-/

namespace A072568.P1938978768645078092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072568.P1938978768645078092

namespace A072568

/-- `∩[A024675(n+1), A103517(n)]` -/
def P1938978768645078092.Spec : Prop :=
  ∀ n, (P1938978768645078092.a n : ℤ) = A072568 (n + 1)

end A072568

/-!
# A072569: Odd interprimes.

The programs for A072569, there is no canonical definition to state claims against.
-/

/-! ## A072569.P569994932586895298

`∪[A072572(n+1), A072573(n+1)]`
-/

namespace A072569.P569994932586895298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P569994932586895298

/-! ## A072569.P10129969698248174191

`∩[2*n+1, A162800(n)]`
-/

namespace A072569.P10129969698248174191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P10129969698248174191

/-! ## A072569.P11608304995150964788

`∩[2*n+1, A024675(n+1)]`
-/

namespace A072569.P11608304995150964788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P11608304995150964788

/-! ## A072569.P6602456680586123734

`∩[2*n+1, A162735(n+2)]`
-/

namespace A072569.P6602456680586123734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P6602456680586123734

/-! ## A072569.P11083302007612483767

`record[A000265(A001043(n+4))]`
-/

namespace A072569.P11083302007612483767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001043 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072569.P11083302007612483767

/-! ## A072569.P17601977773702777450

`∩[2*n+1, A063934(2*n+1)]`
-/

namespace A072569.P17601977773702777450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P17601977773702777450

/-! ## A072569.P2978611250966682421

`∩[A024675(n+1), A071904(n+1)]`
-/

namespace A072569.P2978611250966682421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P2978611250966682421

/-! ## A072569.P15080626818468939342

`∩[A063934(n+1), A071904(n+1)]`
-/

namespace A072569.P15080626818468939342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P15080626818468939342

/-! ## A072569.P13033156606289888392

`∩[A014076(n+1), A145025(n+1)]`
-/

namespace A072569.P13033156606289888392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P13033156606289888392

/-! ## A072569.P4614709982324161443

`∩[A071904(n+1), A145025(n+1)]`
-/

namespace A072569.P4614709982324161443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P4614709982324161443

/-! ## A072569.P4074640286841177647

`∩[A162800(n), A255763(n+1)]`
-/

namespace A072569.P4074640286841177647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P4074640286841177647

/-! ## A072569.P3546776551832298089

`∩[A024675(n+1), A255763(n+1)]`
-/

namespace A072569.P3546776551832298089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P3546776551832298089

/-! ## A072569.P6159931881534290008

`∩[A162800(n), A193071(n+1)]`
-/

namespace A072569.P6159931881534290008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P6159931881534290008

/-! ## A072569.P11597234166119777842

`∩[A024675(n+1), A193071(n+1)]`
-/

namespace A072569.P11597234166119777842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P11597234166119777842

/-! ## A072569.P1915322548622347169

`∩[A024675(n+1), A004273(n)]`
-/

namespace A072569.P1915322548622347169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P1915322548622347169

/-! ## A072569.P13356784443920802288

`∩[A024675(n+1), A004274(n)]`
-/

namespace A072569.P13356784443920802288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P13356784443920802288

/-! ## A072569.P6096958810168401330

`∩[A024675(n+1), A060747(n)]`
-/

namespace A072569.P6096958810168401330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P6096958810168401330

/-! ## A072569.P921564961307525545

`∩[A024675(n+1), A062545(n)]`
-/

namespace A072569.P921564961307525545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P921564961307525545

/-! ## A072569.P11379897966053526710

`∩[A024675(n+1), A130773(n)]`
-/

namespace A072569.P11379897966053526710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P11379897966053526710

/-! ## A072569.P10808753258022731520

`∩[A024675(n+1), A163985(n)]`
-/

namespace A072569.P10808753258022731520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072569.P10808753258022731520

/-!
# A072570: Even interprimes i = (p+q)/2 (where p, q are consecutive primes) such that (q-p)/2 is not divisible by 3.

The programs for A072570, the canonical program `A072570.P13899471690461400496` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072570 has offset 1).

The definition of A072570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1894 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072570.P13899471690461400496

`∩[record[a(n-2)+6^(n%2)], A024675(n+1)]` with `a(0)=0, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072570

/-- `∩[record[a(n-2)+6^(n%2)], A024675(n+1)]` -/
def P13899471690461400496.Spec : Prop :=
  ∀ n, (P13899471690461400496.a n : ℤ) = A072570 (n + 1)

theorem P13899471690461400496.correct : P13899471690461400496.Spec := by
  intro n
  simp only [A072570, Nat.add_sub_cancel]

end A072570

/-! ## A072570.P7695663168404602752

`∩[2*A204502(n+1), A072568(n+1)]`
-/

namespace A072570.P7695663168404602752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072570.P7695663168404602752

namespace A072570

/-- `∩[2*A204502(n+1), A072568(n+1)]` -/
def P7695663168404602752.Spec : Prop :=
  ∀ n, (P7695663168404602752.a n : ℤ) = A072570 (n + 1)

end A072570

/-! ## A072570.P12858190271013669770

`∩[A072568(n+1), A204502(n+1)]`
-/

namespace A072570.P12858190271013669770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072570.P12858190271013669770

namespace A072570

/-- `∩[A072568(n+1), A204502(n+1)]` -/
def P12858190271013669770.Spec : Prop :=
  ∀ n, (P12858190271013669770.a n : ℤ) = A072570 (n + 1)

end A072570

/-! ## A072570.P14405107239011328512

`eq[A093411(A166597(n)), A325142(n)]`
-/

namespace A072570.P14405107239011328512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A166597 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072570.P14405107239011328512

namespace A072570

/-- `eq[A093411(A166597(n)), A325142(n)]` -/
def P14405107239011328512.Spec : Prop :=
  ∀ n, (P14405107239011328512.a n : ℤ) = A072570 (n + 1)

end A072570

/-! ## A072570.P3882302943402295805

`eq[A051699(lcm(6, n)), A325142(n)]`
-/

namespace A072570.P3882302943402295805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (Nat.lcm 6 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072570.P3882302943402295805

namespace A072570

/-- `eq[A051699(lcm(6, n)), A325142(n)]` -/
def P3882302943402295805.Spec : Prop :=
  ∀ n, (P3882302943402295805.a n : ℤ) = A072570 (n + 1)

end A072570

/-!
# A072571: Even interprimes i = (p+q)/2 (where p, q are consecutive primes) such that (q-p)/2 is divisible by 3.

The programs for A072571, the canonical program `A072571.P12820443273534986484` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072571 has offset 1).

The definition of A072571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072571.P12820443273534986484

`filter[A024675(n+2), A120325(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072571

/-- `filter[A024675(n+2), A120325(#)]` -/
def P12820443273534986484.Spec : Prop :=
  ∀ n, P12820443273534986484.a n = A072571 (n + 1)

theorem P12820443273534986484.correct : P12820443273534986484.Spec := by
  intro n
  simp only [A072571, Nat.add_sub_cancel]

end A072571

/-! ## A072571.P6554854230959075

`filter[A072568(n+2), A120325(#)]`
-/

namespace A072571.P6554854230959075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A072571.P6554854230959075

namespace A072571

/-- `filter[A072568(n+2), A120325(#)]` -/
def P6554854230959075.Spec : Prop :=
  ∀ n, P6554854230959075.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P13761833566976034683

`filter[A162735(n+3), A120325(#)]`
-/

namespace A072571.P13761833566976034683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A072571.P13761833566976034683

namespace A072571

/-- `filter[A162735(n+3), A120325(#)]` -/
def P13761833566976034683.Spec : Prop :=
  ∀ n, P13761833566976034683.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P7162798936735332091

`filter[A145025(n+2), A120325(#)]`
-/

namespace A072571.P7162798936735332091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A072571.P7162798936735332091

namespace A072571

/-- `filter[A145025(n+2), A120325(#)]` -/
def P7162798936735332091.Spec : Prop :=
  ∀ n, P7162798936735332091.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P2816295542296360333

`∩[A005004(n+1), A162800(n)]`
-/

namespace A072571.P2816295542296360333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072571.P2816295542296360333

namespace A072571

/-- `∩[A005004(n+1), A162800(n)]` -/
def P2816295542296360333.Spec : Prop :=
  ∀ n, (P2816295542296360333.a n : ℤ) = A072571 (n + 1)

end A072571

/-! ## A072571.P14228811069271566044

`∩[A005004(n+1), A024675(n+1)]`
-/

namespace A072571.P14228811069271566044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072571.P14228811069271566044

namespace A072571

/-- `∩[A005004(n+1), A024675(n+1)]` -/
def P14228811069271566044.Spec : Prop :=
  ∀ n, (P14228811069271566044.a n : ℤ) = A072571 (n + 1)

end A072571

/-! ## A072571.P9708281153828728835

`∩[A005004(n+1), A072568(n+1)]`
-/

namespace A072571.P9708281153828728835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072571.P9708281153828728835

namespace A072571

/-- `∩[A005004(n+1), A072568(n+1)]` -/
def P9708281153828728835.Spec : Prop :=
  ∀ n, (P9708281153828728835.a n : ℤ) = A072571 (n + 1)

end A072571

/-! ## A072571.P12330948335170169919

`filter[A072568(n+2), A097325(#)]`
-/

namespace A072571.P12330948335170169919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A072571.P12330948335170169919

namespace A072571

/-- `filter[A072568(n+2), A097325(#)]` -/
def P12330948335170169919.Spec : Prop :=
  ∀ n, P12330948335170169919.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P16116585092112590255

`∩[A047245(n+2)+1, A072568(n+2)]`
-/

namespace A072571.P16116585092112590255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047245 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072571.P16116585092112590255

namespace A072571

/-- `∩[A047245(n+2)+1, A072568(n+2)]` -/
def P16116585092112590255.Spec : Prop :=
  ∀ n, (P16116585092112590255.a n : ℤ) = A072571 (n + 1)

end A072571

/-! ## A072571.P3353696451529572685

`∩[A047254(n+2)-1, A072568(n+2)]`
-/

namespace A072571.P3353696451529572685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072571.P3353696451529572685

namespace A072571

/-- `∩[A047254(n+2)-1, A072568(n+2)]` -/
def P3353696451529572685.Spec : Prop :=
  ∀ n, (P3353696451529572685.a n : ℤ) = A072571 (n + 1)

end A072571

/-! ## A072571.P12506515298338128078

`∩[A047262(2*n+1)-2, A024675(n+2)]`
-/

namespace A072571.P12506515298338128078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072571.P12506515298338128078

namespace A072571

/-- `∩[A047262(2*n+1)-2, A024675(n+2)]` -/
def P12506515298338128078.Spec : Prop :=
  ∀ n, (P12506515298338128078.a n : ℤ) = A072571 (n + 1)

end A072571

/-! ## A072571.P76718232732081272

`record[A038502(A072568(n+5))]`
-/

namespace A072571.P76718232732081272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A072568 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072571.P76718232732081272

namespace A072571

/-- `record[A038502(A072568(n+5))]` -/
def P76718232732081272.Spec : Prop :=
  ∀ n, P76718232732081272.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P7892804429072383405

`filter[A072568(n+2), A011655(#)]`
-/

namespace A072571.P7892804429072383405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A072571.P7892804429072383405

namespace A072571

/-- `filter[A072568(n+2), A011655(#)]` -/
def P7892804429072383405.Spec : Prop :=
  ∀ n, P7892804429072383405.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P8420429408083661882

`filter[A072568(n+2), A131719(#)]`
-/

namespace A072571.P8420429408083661882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A072571.P8420429408083661882

namespace A072571

/-- `filter[A072568(n+2), A131719(#)]` -/
def P8420429408083661882.Spec : Prop :=
  ∀ n, P8420429408083661882.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P16753659194075063029

`filter[A072568(n+2), A131735(#)]`
-/

namespace A072571.P16753659194075063029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A072571.P16753659194075063029

namespace A072571

/-- `filter[A072568(n+2), A131735(#)]` -/
def P16753659194075063029.Spec : Prop :=
  ∀ n, P16753659194075063029.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P2068222021185319419

`filter[A072568(n+2), A214090(#)]`
-/

namespace A072571.P2068222021185319419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A072571.P2068222021185319419

namespace A072571

/-- `filter[A072568(n+2), A214090(#)]` -/
def P2068222021185319419.Spec : Prop :=
  ∀ n, P2068222021185319419.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P643482328593521893

`filter[A072568(n+2), A267208(#)]`
-/

namespace A072571.P643482328593521893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A072571.P643482328593521893

namespace A072571

/-- `filter[A072568(n+2), A267208(#)]` -/
def P643482328593521893.Spec : Prop :=
  ∀ n, P643482328593521893.a n = A072571 (n + 1)

end A072571

/-! ## A072571.P7461036865090585531

`eq[A063932(n+2), A280057(n)]`
-/

namespace A072571.P7461036865090585531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063932 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072571.P7461036865090585531

namespace A072571

/-- `eq[A063932(n+2), A280057(n)]` -/
def P7461036865090585531.Spec : Prop :=
  ∀ n, (P7461036865090585531.a n : ℤ) = A072571 (n + 1)

end A072571

/-!
# A072572: Odd interprimes divisible by 3.

The programs for A072572, the canonical program `A072572.P18063668036485138131` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072572 has offset 1).

The definition of A072572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072572.P15854040202465483049

`∩[6*n+3, A024675(n+2)]`
-/

namespace A072572.P15854040202465483049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P15854040202465483049

namespace A072572

/-- `∩[6*n+3, A024675(n+2)]` -/
def P15854040202465483049.Spec : Prop :=
  ∀ n, (P15854040202465483049.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P18063668036485138131

`A024675(eq[3, A024675(n+1)%6]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072572

/-- `A024675(eq[3, A024675(n+1)%6]+1)` -/
def P18063668036485138131.Spec : Prop :=
  ∀ n, P18063668036485138131.a n = A072572 (n + 1)

theorem P18063668036485138131.correct : P18063668036485138131.Spec := by
  intro n
  simp only [A072572, Nat.add_sub_cancel]

end A072572

/-! ## A072572.P15077494811896857240

`∩[A016945(n), A162800(n)]`
-/

namespace A072572.P15077494811896857240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P15077494811896857240

namespace A072572

/-- `∩[A016945(n), A162800(n)]` -/
def P15077494811896857240.Spec : Prop :=
  ∀ n, (P15077494811896857240.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P5408595129388596672

`∩[A024675(n+1), A016945(n)]`
-/

namespace A072572.P5408595129388596672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P5408595129388596672

namespace A072572

/-- `∩[A024675(n+1), A016945(n)]` -/
def P5408595129388596672.Spec : Prop :=
  ∀ n, (P5408595129388596672.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P16769535348855882322

`∩[A072569(n+1), A016945(n)]`
-/

namespace A072572.P16769535348855882322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P16769535348855882322

namespace A072572

/-- `∩[A072569(n+1), A016945(n)]` -/
def P16769535348855882322.Spec : Prop :=
  ∀ n, (P16769535348855882322.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P9663327732107561640

`∩[A145025(n+1), A016945(n)]`
-/

namespace A072572.P9663327732107561640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P9663327732107561640

namespace A072572

/-- `∩[A145025(n+1), A016945(n)]` -/
def P9663327732107561640.Spec : Prop :=
  ∀ n, (P9663327732107561640.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P10064392134519132401

`∩[A162735(n+1), A016945(n)]`
-/

namespace A072572.P10064392134519132401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P10064392134519132401

namespace A072572

/-- `∩[A162735(n+1), A016945(n)]` -/
def P10064392134519132401.Spec : Prop :=
  ∀ n, (P10064392134519132401.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P11855904124255510389

`∩[A072569(n+1), A270545(n)]`
-/

namespace A072572.P11855904124255510389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P11855904124255510389

namespace A072572

/-- `∩[A072569(n+1), A270545(n)]` -/
def P11855904124255510389.Spec : Prop :=
  ∀ n, (P11855904124255510389.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P7449492611987618275

`∩[A024675(n+1), A091361(n+1)]`
-/

namespace A072572.P7449492611987618275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P7449492611987618275

namespace A072572

/-- `∩[A024675(n+1), A091361(n+1)]` -/
def P7449492611987618275.Spec : Prop :=
  ∀ n, (P7449492611987618275.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P13264942763241100492

`∩[A072569(n+1), A091361(n+1)]`
-/

namespace A072572.P13264942763241100492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P13264942763241100492

namespace A072572

/-- `∩[A072569(n+1), A091361(n+1)]` -/
def P13264942763241100492.Spec : Prop :=
  ∀ n, (P13264942763241100492.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P5522479055019739900

`∩[A091361(n+1), A145025(n+1)]`
-/

namespace A072572.P5522479055019739900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P5522479055019739900

namespace A072572

/-- `∩[A091361(n+1), A145025(n+1)]` -/
def P5522479055019739900.Spec : Prop :=
  ∀ n, (P5522479055019739900.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P16874635638930010812

`∩[A024675(n+1), 3*A004273(n)]`
-/

namespace A072572.P16874635638930010812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P16874635638930010812

namespace A072572

/-- `∩[A024675(n+1), 3*A004273(n)]` -/
def P16874635638930010812.Spec : Prop :=
  ∀ n, (P16874635638930010812.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P14233026781034729402

`∩[A072569(n+1), A277569(n+1)]`
-/

namespace A072572.P14233026781034729402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P14233026781034729402

namespace A072572

/-- `∩[A072569(n+1), A277569(n+1)]` -/
def P14233026781034729402.Spec : Prop :=
  ∀ n, (P14233026781034729402.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P14277786975704934624

`∩[A072569(n+1), A259754(n+1)]`
-/

namespace A072572.P14277786975704934624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P14277786975704934624

namespace A072572

/-- `∩[A072569(n+1), A259754(n+1)]` -/
def P14277786975704934624.Spec : Prop :=
  ∀ n, (P14277786975704934624.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P12695713399851958596

`∩[A072569(n+1), A136290(n)]`
-/

namespace A072572.P12695713399851958596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P12695713399851958596

namespace A072572

/-- `∩[A072569(n+1), A136290(n)]` -/
def P12695713399851958596.Spec : Prop :=
  ∀ n, (P12695713399851958596.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P10816204430522387141

`∩[A072569(n+1), A008486(n)]`
-/

namespace A072572.P10816204430522387141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P10816204430522387141

namespace A072572

/-- `∩[A072569(n+1), A008486(n)]` -/
def P10816204430522387141.Spec : Prop :=
  ∀ n, (P10816204430522387141.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P8897307998216786141

`∩[A072569(n+1), A008585(n)]`
-/

namespace A072572.P8897307998216786141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P8897307998216786141

namespace A072572

/-- `∩[A072569(n+1), A008585(n)]` -/
def P8897307998216786141.Spec : Prop :=
  ∀ n, (P8897307998216786141.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P6692446881419298129

`∩[A047230(n+1), A072569(n+1)]`
-/

namespace A072572.P6692446881419298129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P6692446881419298129

namespace A072572

/-- `∩[A047230(n+1), A072569(n+1)]` -/
def P6692446881419298129.Spec : Prop :=
  ∀ n, (P6692446881419298129.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P363066650335577307

`∩[A047243(n+1), A072569(n+1)]`
-/

namespace A072572.P363066650335577307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P363066650335577307

namespace A072572

/-- `∩[A047243(n+1), A072569(n+1)]` -/
def P363066650335577307.Spec : Prop :=
  ∀ n, (P363066650335577307.a n : ℤ) = A072572 (n + 1)

end A072572

/-! ## A072572.P17369219831348367735

`∩[A072569(n+1), A174041(n+1)]`
-/

namespace A072572.P17369219831348367735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072572.P17369219831348367735

namespace A072572

/-- `∩[A072569(n+1), A174041(n+1)]` -/
def P17369219831348367735.Spec : Prop :=
  ∀ n, (P17369219831348367735.a n : ℤ) = A072572 (n + 1)

end A072572

/-!
# A072573: Odd interprimes not divisible by 3.

The programs for A072573, there is no canonical definition to state claims against.
-/

/-! ## A072573.P13506343190693063844

`filter[A072569(n+2), A187074(#)]`
-/

namespace A072573.P13506343190693063844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A072573.P13506343190693063844

/-! ## A072573.P15619884342633363110

`filter[A072569(n+2), A359374(#)]`
-/

namespace A072573.P15619884342633363110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A072573.P15619884342633363110

/-! ## A072573.P15245505847011269994

`filter[A072569(n+2), A373155(#)]`
-/

namespace A072573.P15245505847011269994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A072573.P15245505847011269994

/-! ## A072573.P5410843993316197496

`filter[A072569(n+2), A373156(#)]`
-/

namespace A072573.P5410843993316197496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A072573.P5410843993316197496

/-! ## A072573.P18144693006769119708

`filter[A072569(n+2), A374043(#)]`
-/

namespace A072573.P18144693006769119708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A072573.P18144693006769119708

/-! ## A072573.P12911399148914716152

`filter[A072569(n+2), A320106(#)]`
-/

namespace A072573.P12911399148914716152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A072573.P12911399148914716152

/-! ## A072573.P12523226884727716425

`filter[A072569(n+2), A354354(#)]`
-/

namespace A072573.P12523226884727716425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A072573.P12523226884727716425

/-! ## A072573.P4775156873441516290

`∩[A038509(n+1), A162800(n)]`
-/

namespace A072573.P4775156873441516290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P4775156873441516290

/-! ## A072573.P12793820659596097

`∩[A024675(n+1), A038509(n+1)]`
-/

namespace A072573.P12793820659596097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P12793820659596097

/-! ## A072573.P7326744929587581406

`∩[A038509(n+1), A072569(n+1)]`
-/

namespace A072573.P7326744929587581406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P7326744929587581406

/-! ## A072573.P9393867142198310815

`∩[A038509(n+1), A145025(n+1)]`
-/

namespace A072573.P9393867142198310815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P9393867142198310815

/-! ## A072573.P13735686409598973794

`∩[A038509(n+1), A162735(n+1)]`
-/

namespace A072573.P13735686409598973794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P13735686409598973794

/-! ## A072573.P14143815752517379611

`∩[A072569(n+1), A090818(n+1)]`
-/

namespace A072573.P14143815752517379611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P14143815752517379611

/-! ## A072573.P2126652261129122937

`∩[A007310(n+1), A162800(n)]`
-/

namespace A072573.P2126652261129122937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P2126652261129122937

/-! ## A072573.P2642219954580707014

`∩[A007310(n+1), A024675(n+1)]`
-/

namespace A072573.P2642219954580707014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072573.P2642219954580707014

/-! ## A072573.P14450353478713741233

`filter[A072569(n+1), A011655(#)]`
-/

namespace A072573.P14450353478713741233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A072573.P14450353478713741233

/-! ## A072573.P4468161688223852126

`filter[A072569(n+2), A267208(#)]`
-/

namespace A072573.P4468161688223852126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A072573.P4468161688223852126

/-!
# A072574: Triangle T(n,k) of number of compositions (ordered partitions) of n into exactly k distinct parts, 1<=k<=n.

The programs for A072574, there is no canonical definition to state claims against.
-/

/-! ## A072574.P6423729267744224856

`A060016(n+1)*A107044(n+2)`
-/

namespace A072574.P6423729267744224856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A107044 (n + 2)

end

end A072574.P6423729267744224856

/-! ## A072574.P1550184743756487033

`A003983(n+1)!*A060016(n+1)`
-/

namespace A072574.P1550184743756487033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003983 (n + 1)).toNat : ℤ) * A060016 (n + 1)

end

end A072574.P1550184743756487033

/-! ## A072574.P9130916841597023712

`A141803(n+1)!*A060016(n+1)`
-/

namespace A072574.P9130916841597023712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A141803 (n + 1)).toNat : ℤ) * A060016 (n + 1)

end

end A072574.P9130916841597023712

/-! ## A072574.P15982856574066113398

`A060016(n+1)*A226441(n+1)`
-/

namespace A072574.P15982856574066113398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A226441 (n + 1)

end

end A072574.P15982856574066113398

/-! ## A072574.P17445134163226986944

`A060016(n+1)*A166350(n+1)`
-/

namespace A072574.P17445134163226986944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A166350 (n + 1)

end

end A072574.P17445134163226986944

/-! ## A072574.P9272949427975877488

`A002260(n+1)!*A060016(n+1)`
-/

namespace A072574.P9272949427975877488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A060016 (n + 1)

end

end A072574.P9272949427975877488

/-! ## A072574.P1189155873116151540

`A060016(n+1)*A371823(n+1)`
-/

namespace A072574.P1189155873116151540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A371823 (n + 1)

end

end A072574.P1189155873116151540

/-! ## A072574.P17479822124667100625

`A060016(n+1)*A263791(n+1)`
-/

namespace A072574.P17479822124667100625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A263791 (n + 1)

end

end A072574.P17479822124667100625

/-! ## A072574.P2196679450764285827

`A060016(n+1)*A179749(n+1)`
-/

namespace A072574.P2196679450764285827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A179749 (n + 1)

end

end A072574.P2196679450764285827

/-! ## A072574.P17003728985537715986

`A060016(n+1)*A373778(n+1)`
-/

namespace A072574.P17003728985537715986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A373778 (n + 1)

end

end A072574.P17003728985537715986

/-!
# A072575: Triangle T(n,k) of number of compositions (ordered partitions) of n into distinct parts where largest part is exactly k, 1<=k<=n.

The programs for A072575, there is no canonical definition to state claims against.
-/

/-! ## A072575.P4271777673290871411

`A262670(lcm(A107110(n), A262616(n)))`
-/

namespace A072575.P4271777673290871411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262670 (Int.lcm (A107110 n) (A262616 n))

end

end A072575.P4271777673290871411

/-! ## A072575.P7477192546695572925

`A262670(and(A262616(n), A262705(n)))`
-/

namespace A072575.P7477192546695572925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262670 (Int.land (A262616 n) (A262705 n)).toNat

end

end A072575.P7477192546695572925

/-! ## A072575.P1832239129876522974

`gcd(A168313(n+1), A184964(A026374(n)))`
-/

namespace A072575.P1832239129876522974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168313 (n + 1)) (A184964 (A026374 n).toNat)

end

end A072575.P1832239129876522974

/-! ## A072575.P14161166576845307067

`A262670(A004736(n+1)*A290222(n))`
-/

namespace A072575.P14161166576845307067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262670 (A004736 (n + 1) * A290222 n).toNat

end

end A072575.P14161166576845307067

/-! ## A072575.P16530899251702495791

`A086713(A209996(n+2))`
-/

namespace A072575.P16530899251702495791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086713 (A209996 (n + 2)).toNat

end

end A072575.P16530899251702495791

/-!
# A072576: Limit of number of compositions (ordered partitions) of m into distinct parts where largest part is exactly m-n, for m sufficiently large given n.

The programs for A072576, there is no canonical definition to state claims against.
-/

/-! ## A072576.P377210873312928741

`A000007(n)+A216708(n)-A216695(n)`
-/

namespace A072576.P377210873312928741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A216708 n - A216695 n)

end

end A072576.P377210873312928741

/-! ## A072576.P11285735494137672900

`A000007(n)-(A216695(A028310(n))-A216708(n))`
-/

namespace A072576.P11285735494137672900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A216695 (A028310 n).toNat - A216708 n)

end

end A072576.P11285735494137672900

/-! ## A072576.P6872990520363505148

`A000038(n)-(A000007(n)-(A216708(n)-A216695(n)))`
-/

namespace A072576.P6872990520363505148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - (A000007 n - (A216708 n - A216695 n))

end

end A072576.P6872990520363505148

/-! ## A072576.P12184638798566384116

`A032024(n+1)-Δ[A303664(n)]`
-/

namespace A072576.P12184638798566384116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032024 (n + 1) - (f1 (n + 1) - f1 n)

end

end A072576.P12184638798566384116

/-! ## A072576.P4549363819500368952

`A032024(n+1)-A032020(n+1)`
-/

namespace A072576.P4549363819500368952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032024 (n + 1) - A032020 (n + 1)

end

end A072576.P4549363819500368952

/-! ## A072576.P7245583570175647610

`A072575(∑[4*n]+1)`
-/

namespace A072576.P7245583570175647610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072575 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A072576.P7245583570175647610

/-! ## A072576.P15330366183793216354

`lcm((-1)^n, A072575(A001844(n)))`
-/

namespace A072576.P15330366183793216354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A072575 (A001844 n).toNat)

end

end A072576.P15330366183793216354

/-! ## A072576.P3263527177025368887

`A072575(A001844(n))%A000032(n+2)`
-/

namespace A072576.P3263527177025368887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072575 (A001844 n).toNat) (A000032 (n + 2))

end

end A072576.P3263527177025368887

/-! ## A072576.P5751666222739695408

`A072575(A001844(n))+C(2, A000203(n+2))`
-/

namespace A072576.P5751666222739695408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072575 (A001844 n).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A072576.P5751666222739695408

/-! ## A072576.P4913903259548635411

`A000108(C(2, n+2))*A072575(A001844(n))`
-/

namespace A072576.P4913903259548635411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A072575 (A001844 n).toNat

end

end A072576.P4913903259548635411

/-!
# A072577: Numbers k such that k and the k-th prime have the same number of 0's in their binary representation.

The programs for A072577, the canonical program `A072577.P9359693124357026708` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072577 has offset 1).

The definition of A072577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072577.P1979110541136174564

`A049084(A072580(n+1))`
-/

namespace A072577.P1979110541136174564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A072580 (n + 1)).toNat

end

end A072577.P1979110541136174564

namespace A072577

/-- `A049084(A072580(n+1))` -/
def P1979110541136174564.Spec : Prop :=
  ∀ n, P1979110541136174564.a n = A072577 (n + 1)

end A072577

/-! ## A072577.P9359693124357026708

`eq[A023416(n+1), A035103(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072577

/-- `eq[A023416(n+1), A035103(n+1)]+1` -/
def P9359693124357026708.Spec : Prop :=
  ∀ n, (P9359693124357026708.a n : ℤ) = A072577 (n + 1)

theorem P9359693124357026708.correct : P9359693124357026708.Spec := by
  intro n
  simp only [A072577, Nat.add_sub_cancel]

end A072577

/-! ## A072577.P3459370143791166148

`eq[A035103(A028310(n)), A080791(n)]`
-/

namespace A072577.P3459370143791166148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072577.P3459370143791166148

namespace A072577

/-- `eq[A035103(A028310(n)), A080791(n)]` -/
def P3459370143791166148.Spec : Prop :=
  ∀ n, (P3459370143791166148.a n : ℤ) = A072577 (n + 1)

end A072577

/-! ## A072577.P17472534880803999706

`eq[A267584(A008578(n+1)), A267584(n)]`
-/

namespace A072577.P17472534880803999706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072577.P17472534880803999706

namespace A072577

/-- `eq[A267584(A008578(n+1)), A267584(n)]` -/
def P17472534880803999706.Spec : Prop :=
  ∀ n, (P17472534880803999706.a n : ℤ) = A072577 (n + 1)

end A072577

/-! ## A072577.P18173079902323872085

`eq[A267584(A162753(2*n+1)), A267584(n)]`
-/

namespace A072577.P18173079902323872085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A162753 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072577.P18173079902323872085

namespace A072577

/-- `eq[A267584(A162753(2*n+1)), A267584(n)]` -/
def P18173079902323872085.Spec : Prop :=
  ∀ n, (P18173079902323872085.a n : ℤ) = A072577 (n + 1)

end A072577

/-! ## A072577.P9999867012029952419

`eq[A023416(A008578(n+1)), A023416(n)]`
-/

namespace A072577.P9999867012029952419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072577.P9999867012029952419

namespace A072577

/-- `eq[A023416(A008578(n+1)), A023416(n)]` -/
def P9999867012029952419.Spec : Prop :=
  ∀ n, (P9999867012029952419.a n : ℤ) = A072577 (n + 1)

end A072577

/-! ## A072577.P8443520754021172733

`eq[A080791(A000040(n+1)), A080791(n+1)]+1`
-/

namespace A072577.P8443520754021172733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072577.P8443520754021172733

namespace A072577

/-- `eq[A080791(A000040(n+1)), A080791(n+1)]+1` -/
def P8443520754021172733.Spec : Prop :=
  ∀ n, (P8443520754021172733.a n : ℤ) = A072577 (n + 1)

end A072577

/-! ## A072577.P11552050462974496891

`eq[A080791(A008578(n+2)), A080791(n+1)]+1`
-/

namespace A072577.P11552050462974496891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A008578 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072577.P11552050462974496891

namespace A072577

/-- `eq[A080791(A008578(n+2)), A080791(n+1)]+1` -/
def P11552050462974496891.Spec : Prop :=
  ∀ n, (P11552050462974496891.a n : ℤ) = A072577 (n + 1)

end A072577

/-! ## A072577.P9739286486274414252

`eq[A023416(A001747(n+1)+1), A023416(n)]`
-/

namespace A072577.P9739286486274414252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001747 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072577.P9739286486274414252

namespace A072577

/-- `eq[A023416(A001747(n+1)+1), A023416(n)]` -/
def P9739286486274414252.Spec : Prop :=
  ∀ n, (P9739286486274414252.a n : ℤ) = A072577 (n + 1)

end A072577

/-!
# A072578: In binary representation: k has the same number of 0's as the k-th prime has 1's.

The programs for A072578, the canonical program `A072578.P13678441316220565133` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072578 has offset 1).

The definition of A072578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072578.P4493642133324169652

`A049084(A072581(n+1))`
-/

namespace A072578.P4493642133324169652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A072581 (n + 1)).toNat

end

end A072578.P4493642133324169652

namespace A072578

/-- `A049084(A072581(n+1))` -/
def P4493642133324169652.Spec : Prop :=
  ∀ n, P4493642133324169652.a n = A072578 (n + 1)

end A072578

/-! ## A072578.P13678441316220565133

`eq[A014499(A028310(n)), A080791(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072578

/-- `eq[A014499(A028310(n)), A080791(n)]` -/
def P13678441316220565133.Spec : Prop :=
  ∀ n, (P13678441316220565133.a n : ℤ) = A072578 (n + 1)

theorem P13678441316220565133.correct : P13678441316220565133.Spec := by
  intro n
  simp only [A072578, Nat.add_sub_cancel]

end A072578

/-! ## A072578.P14692960422389086160

`A325355(3*A072581(n+1))`
-/

namespace A072578.P14692960422389086160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (3 * A072581 (n + 1)).toNat

end

end A072578.P14692960422389086160

namespace A072578

/-- `A325355(3*A072581(n+1))` -/
def P14692960422389086160.Spec : Prop :=
  ∀ n, P14692960422389086160.a n = A072578 (n + 1)

end A072578

/-! ## A072578.P472171102739704971

`A056239(or(1, A072581(n+1)))`
-/

namespace A072578.P472171102739704971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A072581 (n + 1))).toNat

end

end A072578.P472171102739704971

namespace A072578

/-- `A056239(or(1, A072581(n+1)))` -/
def P472171102739704971.Spec : Prop :=
  ∀ n, P472171102739704971.a n = A072578 (n + 1)

end A072578

/-! ## A072578.P14572426863074960399

`eq[A000120(A008578(n+1)), A080791(n)]`
-/

namespace A072578.P14572426863074960399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072578.P14572426863074960399

namespace A072578

/-- `eq[A000120(A008578(n+1)), A080791(n)]` -/
def P14572426863074960399.Spec : Prop :=
  ∀ n, (P14572426863074960399.a n : ℤ) = A072578 (n + 1)

end A072578

/-! ## A072578.P11118177812356874016

`eq[A000120(A182986(n+1)), A023416(n)]`
-/

namespace A072578.P11118177812356874016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A182986 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072578.P11118177812356874016

namespace A072578

/-- `eq[A000120(A182986(n+1)), A023416(n)]` -/
def P11118177812356874016.Spec : Prop :=
  ∀ n, (P11118177812356874016.a n : ℤ) = A072578 (n + 1)

end A072578

/-!
# A072579: In binary representation: k has the same number of 1's as the k-th prime has 0's.

The programs for A072579, the canonical program `A072579.P12021979385402821400` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072579 has offset 1).

The definition of A072579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072579.P16495570518959262274

`A049084(A072582(n+1))`
-/

namespace A072579.P16495570518959262274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A072582 (n + 1)).toNat

end

end A072579.P16495570518959262274

namespace A072579

/-- `A049084(A072582(n+1))` -/
def P16495570518959262274.Spec : Prop :=
  ∀ n, P16495570518959262274.a n = A072579 (n + 1)

end A072579

/-! ## A072579.P12021979385402821400

`eq[A000120(n+1), A035103(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072579

/-- `eq[A000120(n+1), A035103(n+1)]+1` -/
def P12021979385402821400.Spec : Prop :=
  ∀ n, (P12021979385402821400.a n : ℤ) = A072579 (n + 1)

theorem P12021979385402821400.correct : P12021979385402821400.Spec := by
  intro n
  simp only [A072579, Nat.add_sub_cancel]

end A072579

/-! ## A072579.P10587312767011694001

`eq[A000120(n), A035103(A028310(n))]`
-/

namespace A072579.P10587312767011694001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072579.P10587312767011694001

namespace A072579

/-- `eq[A000120(n), A035103(A028310(n))]` -/
def P10587312767011694001.Spec : Prop :=
  ∀ n, (P10587312767011694001.a n : ℤ) = A072579 (n + 1)

end A072579

/-! ## A072579.P7977132591498839093

`eq[32-A131762(n), A035103(A028310(n))]`
-/

namespace A072579.P7977132591498839093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A131762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072579.P7977132591498839093

namespace A072579

/-- `eq[32-A131762(n), A035103(A028310(n))]` -/
def P7977132591498839093.Spec : Prop :=
  ∀ n, (P7977132591498839093.a n : ℤ) = A072579 (n + 1)

end A072579

/-! ## A072579.P5072617500202568007

`eq[A000120(n), A254045(A130291(n+1))]`
-/

namespace A072579.P5072617500202568007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (A130291 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072579.P5072617500202568007

namespace A072579

/-- `eq[A000120(n), A254045(A130291(n+1))]` -/
def P5072617500202568007.Spec : Prop :=
  ∀ n, (P5072617500202568007.a n : ℤ) = A072579 (n + 1)

end A072579

/-! ## A072579.P5138699370845331377

`eq[2*A001316(n), A267584(A162753(2*n+1))]`
-/

namespace A072579.P5138699370845331377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A162753 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072579.P5138699370845331377

namespace A072579

/-- `eq[2*A001316(n), A267584(A162753(2*n+1))]` -/
def P5138699370845331377.Spec : Prop :=
  ∀ n, (P5138699370845331377.a n : ℤ) = A072579 (n + 1)

end A072579

/-! ## A072579.P10663801051684555310

`eq[A000120(n), A023416(A182986(n+1))]`
-/

namespace A072579.P10663801051684555310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A182986 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072579.P10663801051684555310

namespace A072579

/-- `eq[A000120(n), A023416(A182986(n+1))]` -/
def P10663801051684555310.Spec : Prop :=
  ∀ n, (P10663801051684555310.a n : ℤ) = A072579 (n + 1)

end A072579

/-! ## A072579.P5880176582725724679

`eq[A000120(n+1), A023416(A000040(n+1))]+1`
-/

namespace A072579.P5880176582725724679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072579.P5880176582725724679

namespace A072579

/-- `eq[A000120(n+1), A023416(A000040(n+1))]+1` -/
def P5880176582725724679.Spec : Prop :=
  ∀ n, (P5880176582725724679.a n : ℤ) = A072579 (n + 1)

end A072579

/-! ## A072579.P886249300446744658

`eq[A000120(n+1), A080791(A008578(n+2))]+1`
-/

namespace A072579.P886249300446744658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A008578 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072579.P886249300446744658

namespace A072579

/-- `eq[A000120(n+1), A080791(A008578(n+2))]+1` -/
def P886249300446744658.Spec : Prop :=
  ∀ n, (P886249300446744658.a n : ℤ) = A072579 (n + 1)

end A072579

/-!
# A072580: a(n) = A000040(A072577(n)).

The programs for A072580, the canonical program `A072580.P18037671959808370065` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072580 has offset 1).

The definition of A072580 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072577, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072580.P18037671959808370065

`A000040(A072577(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072580

/-- `A000040(A072577(n+1))` -/
def P18037671959808370065.Spec : Prop :=
  ∀ n, P18037671959808370065.a n = A072580 (n + 1)

theorem P18037671959808370065.correct : P18037671959808370065.Spec := by
  intro n
  simp only [A072580, Nat.add_sub_cancel]

end A072580

/-! ## A072580.P8091820374217646678

`A045319(A072577(n+1)-1)`
-/

namespace A072580.P8091820374217646678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A072577 (n + 1) - 1).toNat

end

end A072580.P8091820374217646678

namespace A072580

/-- `A045319(A072577(n+1)-1)` -/
def P8091820374217646678.Spec : Prop :=
  ∀ n, P8091820374217646678.a n = A072580 (n + 1)

end A072580

/-! ## A072580.P11826615611394980987

`A045344(A072577(n+1)-1)`
-/

namespace A072580.P11826615611394980987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A072577 (n + 1) - 1).toNat

end

end A072580.P11826615611394980987

namespace A072580

/-- `A045344(A072577(n+1)-1)` -/
def P11826615611394980987.Spec : Prop :=
  ∀ n, P11826615611394980987.a n = A072580 (n + 1)

end A072580

/-! ## A072580.P13420927127272131831

`A008578(A072577(n+1)+1)`
-/

namespace A072580.P13420927127272131831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A072577 (n + 1) + 1).toNat

end

end A072580.P13420927127272131831

namespace A072580

/-- `A008578(A072577(n+1)+1)` -/
def P13420927127272131831.Spec : Prop :=
  ∀ n, P13420927127272131831.a n = A072580 (n + 1)

end A072580

/-! ## A072580.P7802246059756879559

`A175787(A072577(n+1)+1)`
-/

namespace A072580.P7802246059756879559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A072577 (n + 1) + 1).toNat

end

end A072580.P7802246059756879559

namespace A072580

/-- `A175787(A072577(n+1)+1)` -/
def P7802246059756879559.Spec : Prop :=
  ∀ n, P7802246059756879559.a n = A072580 (n + 1)

end A072580

/-!
# A072581: a(n) = A000040(A072578(n)).

The programs for A072581, the canonical program `A072581.P13999376890829246694` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072581 has offset 1).

The definition of A072581 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072581.P13999376890829246694

`A000040(A072578(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072581

/-- `A000040(A072578(n+1))` -/
def P13999376890829246694.Spec : Prop :=
  ∀ n, P13999376890829246694.a n = A072581 (n + 1)

theorem P13999376890829246694.correct : P13999376890829246694.Spec := by
  intro n
  simp only [A072581, Nat.add_sub_cancel]

end A072581

/-! ## A072581.P13400233362137675565

`A008578(A072578(n+1)+1)`
-/

namespace A072581.P13400233362137675565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A072578 (n + 1) + 1).toNat

end

end A072581.P13400233362137675565

namespace A072581

/-- `A008578(A072578(n+1)+1)` -/
def P13400233362137675565.Spec : Prop :=
  ∀ n, P13400233362137675565.a n = A072581 (n + 1)

end A072581

/-! ## A072581.P3494403241402285456

`A175787(A072578(n+1)+1)`
-/

namespace A072581.P3494403241402285456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A072578 (n + 1) + 1).toNat

end

end A072581.P3494403241402285456

namespace A072581

/-- `A175787(A072578(n+1)+1)` -/
def P3494403241402285456.Spec : Prop :=
  ∀ n, P3494403241402285456.a n = A072581 (n + 1)

end A072581

/-! ## A072581.P10102715293339069199

`A182986(A072578(n+1)+1)`
-/

namespace A072581.P10102715293339069199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A072578 (n + 1) + 1).toNat

end

end A072581.P10102715293339069199

namespace A072581

/-- `A182986(A072578(n+1)+1)` -/
def P10102715293339069199.Spec : Prop :=
  ∀ n, P10102715293339069199.a n = A072581 (n + 1)

end A072581

/-! ## A072581.P12789501305812766151

`A045319(A072578(n+1)-1)`
-/

namespace A072581.P12789501305812766151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A072578 (n + 1) - 1).toNat

end

end A072581.P12789501305812766151

namespace A072581

/-- `A045319(A072578(n+1)-1)` -/
def P12789501305812766151.Spec : Prop :=
  ∀ n, P12789501305812766151.a n = A072581 (n + 1)

end A072581

/-!
# A072582: a(n) = A000040(A072579(n)).

The programs for A072582, the canonical program `A072582.P8651059492277123430` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072582 has offset 1).

The definition of A072582 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072579, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072582.P8651059492277123430

`A000040(A072579(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072582

/-- `A000040(A072579(n+1))` -/
def P8651059492277123430.Spec : Prop :=
  ∀ n, P8651059492277123430.a n = A072582 (n + 1)

theorem P8651059492277123430.correct : P8651059492277123430.Spec := by
  intro n
  simp only [A072582, Nat.add_sub_cancel]

end A072582

/-! ## A072582.P10190255401233145322

`A008578(A072579(n+1)+1)`
-/

namespace A072582.P10190255401233145322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A072579 (n + 1) + 1).toNat

end

end A072582.P10190255401233145322

namespace A072582

/-- `A008578(A072579(n+1)+1)` -/
def P10190255401233145322.Spec : Prop :=
  ∀ n, P10190255401233145322.a n = A072582 (n + 1)

end A072582

/-! ## A072582.P3054770568911197729

`A158611(A072579(n+1)+2)`
-/

namespace A072582.P3054770568911197729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A072579 (n + 1) + 2).toNat

end

end A072582.P3054770568911197729

namespace A072582

/-- `A158611(A072579(n+1)+2)` -/
def P3054770568911197729.Spec : Prop :=
  ∀ n, P3054770568911197729.a n = A072582 (n + 1)

end A072582

/-! ## A072582.P14526453200308052595

`A006005(A072579(n+1))+A000007(n)`
-/

namespace A072582.P14526453200308052595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A072579 (n + 1)).toNat + A000007 n

end

end A072582.P14526453200308052595

namespace A072582

/-- `A006005(A072579(n+1))+A000007(n)` -/
def P14526453200308052595.Spec : Prop :=
  ∀ n, P14526453200308052595.a n = A072582 (n + 1)

end A072582

/-! ## A072582.P1197803782696587723

`A082500(2*A072579(n+1))`
-/

namespace A072582.P1197803782696587723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A072579 (n + 1)).toNat

end

end A072582.P1197803782696587723

namespace A072582

/-- `A082500(2*A072579(n+1))` -/
def P1197803782696587723.Spec : Prop :=
  ∀ n, P1197803782696587723.a n = A072582 (n + 1)

end A072582

/-! ## A072582.P17951525786323116348

`A141619(2*A072579(n+1))`
-/

namespace A072582.P17951525786323116348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141619 (2 * A072579 (n + 1)).toNat

end

end A072582.P17951525786323116348

namespace A072582

/-- `A141619(2*A072579(n+1))` -/
def P17951525786323116348.Spec : Prop :=
  ∀ n, P17951525786323116348.a n = A072582 (n + 1)

end A072582

/-!
# A072583: Numbers k with the property that there is no match when comparing the numbers of 0's and 1's in the binary representations of k and the k-th prime.

The programs for A072583, there is no canonical definition to state claims against.
-/

/-! ## A072583.P7600396064591356635

`A049084(A072584(n+1))`
-/

namespace A072583.P7600396064591356635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A072584 (n + 1)).toNat

end

end A072583.P7600396064591356635

/-! ## A072583.P10490082825112562046

`A061395(2*A072584(n+1))`
-/

namespace A072583.P10490082825112562046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A072584 (n + 1)).toNat

end

end A072583.P10490082825112562046

/-! ## A072583.P17421537494713980452

`A003963(2*A072584(n+1))`
-/

namespace A072583.P17421537494713980452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A072584 (n + 1)).toNat

end

end A072583.P17421537494713980452

/-!
# A072584: a(n) = A000040(A072583(n)).

The programs for A072584, there is no canonical definition to state claims against.
-/

/-! ## A072584.P7179527352867494353

`A000040(A072583(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072584.P7179527352867494353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072583 (n + 1)).toNat

end

end A072584.P7179527352867494353

/-! ## A072584.P16483499417649176172

`A008578(A072583(n+1)+1)`
-/

namespace A072584.P16483499417649176172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A072583 (n + 1) + 1).toNat

end

end A072584.P16483499417649176172

/-! ## A072584.P16400844246489978634

`A065091(A072583(n+1)-1)`
-/

namespace A072584.P16400844246489978634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A072583 (n + 1) - 1).toNat

end

end A072584.P16400844246489978634

/-! ## A072584.P13599967190637337139

`A158611(A072583(n+1)+2)`
-/

namespace A072584.P13599967190637337139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A072583 (n + 1) + 2).toNat

end

end A072584.P13599967190637337139

/-! ## A072584.P5144678531562517890

`∑{d}[A072583(n+1), A007444(#)]`
-/

namespace A072584.P5144678531562517890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A072584.P5144678531562517890

/-! ## A072584.P7399093198289445796

`A082500(2*A072583(n+1))`
-/

namespace A072584.P7399093198289445796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A072583 (n + 1)).toNat

end

end A072584.P7399093198289445796

/-! ## A072584.P9377822358836986553

`A013610(∑[n])+A006093(A072583(n+1))`
-/

namespace A072584.P9377822358836986553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (∑ j ∈ Finset.range (n + 1), f1 j) + A006093 (A072583 (n + 1)).toNat

end

end A072584.P9377822358836986553

/-! ## A072584.P12313526598534884014

`∑{p}[A001248(A072583(n+1)), A014963(#)]`
-/

namespace A072584.P12313526598534884014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A072583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A072584.P12313526598534884014

/-!
# A072585: Numbers k such that k and phi(k) end with the same digit in base 10.

The programs for A072585, the canonical program `A072585.P14181242269716564526` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072585 has offset 1).

The definition of A072585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072585.P14181242269716564526

`eq[0, A010879(A051953(n+1))]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072585

/-- `eq[0, A010879(A051953(n+1))]+1` -/
def P14181242269716564526.Spec : Prop :=
  ∀ n, (P14181242269716564526.a n : ℤ) = A072585 (n + 1)

theorem P14181242269716564526.correct : P14181242269716564526.Spec := by
  intro n
  simp only [A072585, Nat.add_sub_cancel]

end A072585

/-! ## A072585.P5275683763734546606

`lt[A274206(A051953(n+1)+1), 2]+1`
-/

namespace A072585.P5275683763734546606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A051953 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072585.P5275683763734546606

namespace A072585

/-- `lt[A274206(A051953(n+1)+1), 2]+1` -/
def P5275683763734546606.Spec : Prop :=
  ∀ n, (P5275683763734546606.a n : ℤ) = A072585 (n + 1)

end A072585

/-!
# A072586: Number of numbers <= n having prime factors with odd exponents only.

The programs for A072586, the canonical program `A072586.P8562398630271724933` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072586 has offset 1).

The definition of A072586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072586.P8562398630271724933

`∑[∏{e}[n+1, #%2]]-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072586

/-- `∑[∏{e}[n+1, #%2]]-1` -/
def P8562398630271724933.Spec : Prop :=
  ∀ n, P8562398630271724933.a n = A072586 (n + 1)

theorem P8562398630271724933.correct : P8562398630271724933.Spec := by
  intro n
  simp only [A072586, Nat.add_sub_cancel]

end A072586

/-! ## A072586.P11200231866092996683

`∑[and(1, ∏{e}[n+1, #])]-1`
-/

namespace A072586.P11200231866092996683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A072586.P11200231866092996683

namespace A072586

/-- `∑[and(1, ∏{e}[n+1, #])]-1` -/
def P11200231866092996683.Spec : Prop :=
  ∀ n, P11200231866092996683.a n = A072586 (n + 1)

end A072586

/-! ## A072586.P7707366642018548358

`∑[and(ceil(acot(n)), ∏{e}[n+1, #])]`
-/

namespace A072586.P7707366642018548358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈SequenceMachineLib.acot (n : ℝ)⌉ ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072586.P7707366642018548358

namespace A072586

/-- `∑[and(ceil(acot(n)), ∏{e}[n+1, #])]` -/
def P7707366642018548358.Spec : Prop :=
  ∀ n, P7707366642018548358.a n = A072586 (n + 1)

end A072586

/-! ## A072586.P12098949811224603489

`∑[∏{e}[xor(n, -1), #]%2]-1`
-/

namespace A072586.P12098949811224603489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A072586.P12098949811224603489

namespace A072586

/-- `∑[∏{e}[xor(n, -1), #]%2]-1` -/
def P12098949811224603489.Spec : Prop :=
  ∀ n, P12098949811224603489.a n = A072586 (n + 1)

end A072586

/-! ## A072586.P1904967016443714722

`∑[(∏{e}[n+1, #]%(n+1))%2]`
-/

namespace A072586.P1904967016443714722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072586.P1904967016443714722

namespace A072586

/-- `∑[(∏{e}[n+1, #]%(n+1))%2]` -/
def P1904967016443714722.Spec : Prop :=
  ∀ n, (P1904967016443714722.a n : ℤ) = A072586 (n + 1)

end A072586

/-! ## A072586.P1806256145872251172

`∑[A295316(n+1)]-1`
-/

namespace A072586.P1806256145872251172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072586.P1806256145872251172

namespace A072586

/-- `∑[A295316(n+1)]-1` -/
def P1806256145872251172.Spec : Prop :=
  ∀ n, P1806256145872251172.a n = A072586 (n + 1)

end A072586

/-! ## A072586.P6434771947806605739

`∑[4%A020639(∏{e}[n+1, 3*#])]`
-/

namespace A072586.P6434771947806605739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A020639 (∏ p ∈ Nat.primeFactors (f2 n), 3 * Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072586.P6434771947806605739

namespace A072586

/-- `∑[4%A020639(∏{e}[n+1, 3*#])]` -/
def P6434771947806605739.Spec : Prop :=
  ∀ n, P6434771947806605739.a n = A072586 (n + 1)

end A072586

/-! ## A072586.P13837016692315248238

`∑[A370598((n+1)²)]-1`
-/

namespace A072586.P13837016692315248238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370598 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072586.P13837016692315248238

namespace A072586

/-- `∑[A370598((n+1)²)]-1` -/
def P13837016692315248238.Spec : Prop :=
  ∀ n, P13837016692315248238.a n = A072586 (n + 1)

end A072586

/-!
# A072587: Numbers having at least one prime factor with an even exponent.

The programs for A072587, the canonical program `A072587.P801725359986616698` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072587 has offset 1).

The definition of A072587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072587.P1521316224145201388

`lt[A295316(n+1), 1]+1`
-/

namespace A072587.P1521316224145201388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072587.P1521316224145201388

namespace A072587

/-- `lt[A295316(n+1), 1]+1` -/
def P1521316224145201388.Spec : Prop :=
  ∀ n, (P1521316224145201388.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P4742550634717045825

`lt[1, A336643(n+1)]+1`
-/

namespace A072587.P4742550634717045825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072587.P4742550634717045825

namespace A072587

/-- `lt[1, A336643(n+1)]+1` -/
def P4742550634717045825.Spec : Prop :=
  ∀ n, (P4742550634717045825.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P334797921869716677

`lt[1, A351568(n+1)]+1`
-/

namespace A072587.P334797921869716677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072587.P334797921869716677

namespace A072587

/-- `lt[1, A351568(n+1)]+1` -/
def P334797921869716677.Spec : Prop :=
  ∀ n, (P334797921869716677.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P318919449039095445

`∪[A072588(n+1), (n+2)²]`
-/

namespace A072587.P318919449039095445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A072587.P318919449039095445

namespace A072587

/-- `∪[A072588(n+1), (n+2)²]` -/
def P318919449039095445.Spec : Prop :=
  ∀ n, (P318919449039095445.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P801725359986616698

`lt[1, gcd(2, A005361(n+1))]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072587

/-- `lt[1, gcd(2, A005361(n+1))]+1` -/
def P801725359986616698.Spec : Prop :=
  ∀ n, (P801725359986616698.a n : ℤ) = A072587 (n + 1)

theorem P801725359986616698.correct : P801725359986616698.Spec := by
  intro n
  simp only [A072587, Nat.add_sub_cancel]

end A072587

/-! ## A072587.P12401035089716308456

`eq[2, A020639(A005361(n+1))]+1`
-/

namespace A072587.P12401035089716308456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072587.P12401035089716308456

namespace A072587

/-- `eq[2, A020639(A005361(n+1))]+1` -/
def P12401035089716308456.Spec : Prop :=
  ∀ n, (P12401035089716308456.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P11174772462262400648

`lt[A007913(n+1), A007947(n+1)]+1`
-/

namespace A072587.P11174772462262400648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072587.P11174772462262400648

namespace A072587

/-- `lt[A007913(n+1), A007947(n+1)]+1` -/
def P11174772462262400648.Spec : Prop :=
  ∀ n, (P11174772462262400648.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P8559561552637221513

`lt[A001221(A007913(n+1)), A001221(n+1)]+1`
-/

namespace A072587.P8559561552637221513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007913 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072587.P8559561552637221513

namespace A072587

/-- `lt[A001221(A007913(n+1)), A001221(n+1)]+1` -/
def P8559561552637221513.Spec : Prop :=
  ∀ n, (P8559561552637221513.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P16229525834522690473

`lt[1, A331738(n+1)]+1`
-/

namespace A072587.P16229525834522690473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072587.P16229525834522690473

namespace A072587

/-- `lt[1, A331738(n+1)]+1` -/
def P16229525834522690473.Spec : Prop :=
  ∀ n, (P16229525834522690473.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P12182252616928216871

`lt[A351569(n+1), n]+1`
-/

namespace A072587.P12182252616928216871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072587.P12182252616928216871

namespace A072587

/-- `lt[A351569(n+1), n]+1` -/
def P12182252616928216871.Spec : Prop :=
  ∀ n, (P12182252616928216871.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P11094679355209068386

`eq[1, A000034(A226602(n))]`
-/

namespace A072587.P11094679355209068386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072587.P11094679355209068386

namespace A072587

/-- `eq[1, A000034(A226602(n))]` -/
def P11094679355209068386.Spec : Prop :=
  ∀ n, (P11094679355209068386.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P9990372280829521488

`eq[1, A267354(A226602(n)+1)]`
-/

namespace A072587.P9990372280829521488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 (A226602 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072587.P9990372280829521488

namespace A072587

/-- `eq[1, A267354(A226602(n)+1)]` -/
def P9990372280829521488.Spec : Prop :=
  ∀ n, (P9990372280829521488.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P14189471099719566265

`eq[2, A061393(A226602(n)+1)]`
-/

namespace A072587.P14189471099719566265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A226602 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072587.P14189471099719566265

namespace A072587

/-- `eq[2, A061393(A226602(n)+1)]` -/
def P14189471099719566265.Spec : Prop :=
  ∀ n, (P14189471099719566265.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P15664996892231080017

`lt[2, A020639(A226602(n)+1)]`
-/

namespace A072587.P15664996892231080017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A226602 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072587.P15664996892231080017

namespace A072587

/-- `lt[2, A020639(A226602(n)+1)]` -/
def P15664996892231080017.Spec : Prop :=
  ∀ n, (P15664996892231080017.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P12626075248954784955

`eq[2, A249224(2*A226602(n))]`
-/

namespace A072587.P12626075248954784955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249224 (2 * A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072587.P12626075248954784955

namespace A072587

/-- `eq[2, A249224(2*A226602(n))]` -/
def P12626075248954784955.Spec : Prop :=
  ∀ n, (P12626075248954784955.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P11267044369381419826

`lt[A331737(n+1), n]+1`
-/

namespace A072587.P11267044369381419826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072587.P11267044369381419826

namespace A072587

/-- `lt[A331737(n+1), n]+1` -/
def P11267044369381419826.Spec : Prop :=
  ∀ n, (P11267044369381419826.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P12463382516409226052

`eq[2, A020639(A072411(n+1))]+1`
-/

namespace A072587.P12463382516409226052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072587.P12463382516409226052

namespace A072587

/-- `eq[2, A020639(A072411(n+1))]+1` -/
def P12463382516409226052.Spec : Prop :=
  ∀ n, (P12463382516409226052.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P6277895906242375300

`lt[0, A162641(n+1)]+1`
-/

namespace A072587.P6277895906242375300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072587.P6277895906242375300

namespace A072587

/-- `lt[0, A162641(n+1)]+1` -/
def P6277895906242375300.Spec : Prop :=
  ∀ n, (P6277895906242375300.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P14861263681513162058

`lt[1, A056624(n+1)]+1`
-/

namespace A072587.P14861263681513162058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072587.P14861263681513162058

namespace A072587

/-- `lt[1, A056624(n+1)]+1` -/
def P14861263681513162058.Spec : Prop :=
  ∀ n, (P14861263681513162058.a n : ℤ) = A072587 (n + 1)

end A072587

/-! ## A072587.P10828057035113264887

`lt[A350389(n+1), n]+1`
-/

namespace A072587.P10828057035113264887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072587.P10828057035113264887

namespace A072587

/-- `lt[A350389(n+1), n]+1` -/
def P10828057035113264887.Spec : Prop :=
  ∀ n, (P10828057035113264887.a n : ℤ) = A072587 (n + 1)

end A072587

/-!
# A072588: Numbers having at least one prime factor with an odd and one with an even exponent.

The programs for A072588, the canonical program `A072588.P14826125497487737405` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072588 has offset 1).

The definition of A072588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9817 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072588.P14826125497487737405

`filter[A072587(n+1), A049240(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072588

/-- `filter[A072587(n+1), A049240(#)]` -/
def P14826125497487737405.Spec : Prop :=
  ∀ n, P14826125497487737405.a n = A072588 (n + 1)

theorem P14826125497487737405.correct : P14826125497487737405.Spec := by
  intro n
  simp only [A072588, Nat.add_sub_cancel]

end A072588

/-! ## A072588.P7976890521946069397

`∩[A051144(n+1), A072587(n+1)]`
-/

namespace A072588.P7976890521946069397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072588.P7976890521946069397

namespace A072588

/-- `∩[A051144(n+1), A072587(n+1)]` -/
def P7976890521946069397.Spec : Prop :=
  ∀ n, (P7976890521946069397.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P13521880040242538251

`eq[A000034(A226602(n)), A056926(n)]`
-/

namespace A072588.P13521880040242538251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A226602 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072588.P13521880040242538251

namespace A072588

/-- `eq[A000034(A226602(n)), A056926(n)]` -/
def P13521880040242538251.Spec : Prop :=
  ∀ n, (P13521880040242538251.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P1347871221049301296

`∩[A007624(n+1), A072587(n+1)]`
-/

namespace A072588.P1347871221049301296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072588.P1347871221049301296

namespace A072588

/-- `∩[A007624(n+1), A072587(n+1)]` -/
def P1347871221049301296.Spec : Prop :=
  ∀ n, (P1347871221049301296.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P3759738521774647405

`∩[A072587(n+1), A089229(n+1)]`
-/

namespace A072588.P3759738521774647405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072588.P3759738521774647405

namespace A072588

/-- `∩[A072587(n+1), A089229(n+1)]` -/
def P3759738521774647405.Spec : Prop :=
  ∀ n, (P3759738521774647405.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P14426070795010841530

`∩[A000037(n+1), A072587(n+1)]`
-/

namespace A072588.P14426070795010841530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072588.P14426070795010841530

namespace A072588

/-- `∩[A000037(n+1), A072587(n+1)]` -/
def P14426070795010841530.Spec : Prop :=
  ∀ n, (P14426070795010841530.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P80464178858201548

`∩[A072587(n+1), A164514(n+1)]`
-/

namespace A072588.P80464178858201548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072588.P80464178858201548

namespace A072588

/-- `∩[A072587(n+1), A164514(n+1)]` -/
def P80464178858201548.Spec : Prop :=
  ∀ n, (P80464178858201548.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P2434062091815353397

`filter[A072587(n+1), A267594(#)]`
-/

namespace A072588.P2434062091815353397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A072588.P2434062091815353397

namespace A072588

/-- `filter[A072587(n+1), A267594(#)]` -/
def P2434062091815353397.Spec : Prop :=
  ∀ n, P2434062091815353397.a n = A072588 (n + 1)

end A072588

/-! ## A072588.P1084597638887616651

`filter[A072587(n+1), A267635(#)]`
-/

namespace A072588.P1084597638887616651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A072588.P1084597638887616651

namespace A072588

/-- `filter[A072587(n+1), A267635(#)]` -/
def P1084597638887616651.Spec : Prop :=
  ∀ n, P1084597638887616651.a n = A072588 (n + 1)

end A072588

/-! ## A072588.P8476420799627402497

`eq[A000034(A226602(n)), A267635(n)]`
-/

namespace A072588.P8476420799627402497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A226602 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072588.P8476420799627402497

namespace A072588

/-- `eq[A000034(A226602(n)), A267635(n)]` -/
def P8476420799627402497.Spec : Prop :=
  ∀ n, (P8476420799627402497.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P17075288691472698213

`eq[A037213(n), A266220(A226602(n))]`
-/

namespace A072588.P17075288691472698213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072588.P17075288691472698213

namespace A072588

/-- `eq[A037213(n), A266220(A226602(n))]` -/
def P17075288691472698213.Spec : Prop :=
  ∀ n, (P17075288691472698213.a n : ℤ) = A072588 (n + 1)

end A072588

/-! ## A072588.P4425689954513091774

`eq[2, A001221(A000005(A066990(n+1)))]+1`
-/

namespace A072588.P4425689954513091774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (A066990 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072588.P4425689954513091774

namespace A072588

/-- `eq[2, A001221(A000005(A066990(n+1)))]+1` -/
def P4425689954513091774.Spec : Prop :=
  ∀ n, (P4425689954513091774.a n : ℤ) = A072588 (n + 1)

end A072588

/-!
# A072589: n, phi(n) and sigma(n) end with the same digit.

The programs for A072589, the canonical program `A072589.P6703439860602350751` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072589 has offset 1).

The definition of A072589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072589.P6703439860602350751

`∩[A072566(n+1), A072585(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072589

/-- `∩[A072566(n+1), A072585(n+1)]` -/
def P6703439860602350751.Spec : Prop :=
  ∀ n, (P6703439860602350751.a n : ℤ) = A072589 (n + 1)

theorem P6703439860602350751.correct : P6703439860602350751.Spec := by
  intro n
  simp only [A072589, Nat.add_sub_cancel]

end A072589

/-!
# A072590: Table T(n,k) giving number of spanning trees in complete bipartite graph K(n,k), read by antidiagonals.

The programs for A072590, the canonical program `A072590.P13918242876786338671` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072590 has offset 1).

The definition of A072590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072590.P13918242876786338671

`(col(n)+1)^(row(n)-col(n))*(row(n)-col(n)+1)^col(n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072590

/-- `(col(n)+1)^(row(n)-col(n))*(row(n)-col(n)+1)^col(n)` -/
def P13918242876786338671.Spec : Prop :=
  ∀ n, P13918242876786338671.a n = (A072590 (n + 1) : ℚ)

end A072590

/-! ## A072590.P657212093731123862

`A009998(n)*A009999(n)`
-/

namespace A072590.P657212093731123862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A009999 n

end

end A072590.P657212093731123862

namespace A072590

/-- `A009998(n)*A009999(n)` -/
def P657212093731123862.Spec : Prop :=
  ∀ n, P657212093731123862.a n = A072590 (n + 1)

end A072590

/-! ## A072590.P14608964239568384000

`A009998(n)*A009998(A061579(n))`
-/

namespace A072590.P14608964239568384000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A009998 (A061579 n).toNat

end

end A072590.P14608964239568384000

namespace A072590

/-- `A009998(n)*A009998(A061579(n))` -/
def P14608964239568384000.Spec : Prop :=
  ∀ n, P14608964239568384000.a n = A072590 (n + 1)

end A072590

/-! ## A072590.P13155474795507367484

`A009999(n)*A009999(A061579(n))`
-/

namespace A072590.P13155474795507367484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n * A009999 (A061579 n).toNat

end

end A072590.P13155474795507367484

namespace A072590

/-- `A009999(n)*A009999(A061579(n))` -/
def P13155474795507367484.Spec : Prop :=
  ∀ n, P13155474795507367484.a n = A072590 (n + 1)

end A072590

/-! ## A072590.P17347460662974378362

`A009998(A038722(n+2))*A009998(n)`
-/

namespace A072590.P17347460662974378362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (A038722 (n + 2)).toNat * A009998 n

end

end A072590.P17347460662974378362

namespace A072590

/-- `A009998(A038722(n+2))*A009998(n)` -/
def P17347460662974378362.Spec : Prop :=
  ∀ n, P17347460662974378362.a n = A072590 (n + 1)

end A072590

/-! ## A072590.P16868760914721843390

`A009999(A038722(n+2))*A009999(n)`
-/

namespace A072590.P16868760914721843390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A038722 (n + 2)).toNat * A009999 n

end

end A072590.P16868760914721843390

namespace A072590

/-- `A009999(A038722(n+2))*A009999(n)` -/
def P16868760914721843390.Spec : Prop :=
  ∀ n, P16868760914721843390.a n = A072590 (n + 1)

end A072590

/-! ## A072590.P13998904733544029708

`A009999(n)*A009999(A114327(n)+n)`
-/

namespace A072590.P13998904733544029708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n * A009999 (A114327 n + (n : ℤ)).toNat

end

end A072590.P13998904733544029708

namespace A072590

/-- `A009999(n)*A009999(A114327(n)+n)` -/
def P13998904733544029708.Spec : Prop :=
  ∀ n, P13998904733544029708.a n = A072590 (n + 1)

end A072590

/-!
# A072591: In prime factorization of n replace multiplication with bitwise logical 'and'.

The programs for A072591, there is no canonical definition to state claims against.
-/

/-! ## A072591.P17272603157179830320

`and(A006530(n+1), A020639(A110340(n+1)))`
-/

namespace A072591.P17272603157179830320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (n + 1)) (A020639 (A110340 (n + 1)).toNat)

end

end A072591.P17272603157179830320

/-! ## A072591.P8176135728026157742

`and(A006530(A327389(n+1)), A020639(n+1))`
-/

namespace A072591.P8176135728026157742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A327389 (n + 1)).toNat) (A020639 (n + 1))

end

end A072591.P8176135728026157742

/-! ## A072591.P499985157972388894

`and(A020639(n+1), A006530(A327535(n+1)))`
-/

namespace A072591.P499985157972388894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (n + 1)) (A006530 (A327535 (n + 1)).toNat)

end

end A072591.P499985157972388894

/-! ## A072591.P14364168341040058329

`and(A006530(A000082(3*(n+1))), A020639(n+1))`
-/

namespace A072591.P14364168341040058329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A000082 (3 * (n + 1))).toNat) (A020639 (n + 1))

end

end A072591.P14364168341040058329

/-! ## A072591.P8147705883068946109

`and(A006530(n+1), A020639((n+1)%A145266(n+2)))`
-/

namespace A072591.P8147705883068946109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (n + 1)) (A020639 (Int.tmod (n + 1 : ℤ) (A145266 (n + 2))).toNat)

end

end A072591.P8147705883068946109

/-!
# A072592: Even numbers with at least one prime factor of form 4*k+1.

The programs for A072592, the canonical program `A072592.P12540866148401735071` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072592 has offset 1).

The definition of A072592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072592.P12540866148401735071

`2*A009003(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A072592

/-- `2*A009003(n+1)` -/
def P12540866148401735071.Spec : Prop :=
  ∀ n, P12540866148401735071.a n = A072592 (n + 1)

theorem P12540866148401735071.correct : P12540866148401735071.Spec := by
  intro n
  simp only [A072592, Nat.add_sub_cancel]

end A072592

/-! ## A072592.P7623734189923662074

`2*sqrt(A134422(n+1))`
-/

namespace A072592.P7623734189923662074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A134422 (n + 1) : ℝ)

end

end A072592.P7623734189923662074

namespace A072592

/-- `2*sqrt(A134422(n+1))` -/
def P7623734189923662074.Spec : Prop :=
  ∀ n, P7623734189923662074.a n = (A072592 (n + 1) : ℝ)

end A072592

/-! ## A072592.P16514379306226963286

`2*sqrt(A292313(n+1)/3)`
-/

namespace A072592.P16514379306226963286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt ((A292313 (n + 1) : ℚ) / 3 : ℝ)

end

end A072592.P16514379306226963286

namespace A072592

/-- `2*sqrt(A292313(n+1)/3)` -/
def P16514379306226963286.Spec : Prop :=
  ∀ n, P16514379306226963286.a n = (A072592 (n + 1) : ℝ)

end A072592

/-! ## A072592.P14544824339696498910

`2*∪[A009177(n+1), A084645(n+1)]`
-/

namespace A072592.P14544824339696498910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072592.P14544824339696498910

namespace A072592

/-- `2*∪[A009177(n+1), A084645(n+1)]` -/
def P14544824339696498910.Spec : Prop :=
  ∀ n, (P14544824339696498910.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P6321779565646872116

`2*∪[A004431(n+1), A162592(n+1)]`
-/

namespace A072592.P6321779565646872116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072592.P6321779565646872116

namespace A072592

/-- `2*∪[A004431(n+1), A162592(n+1)]` -/
def P6321779565646872116.Spec : Prop :=
  ∀ n, (P6321779565646872116.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P7331716329565119786

`2*∪[A009177(n+1), A209922(n+1)]`
-/

namespace A072592.P7331716329565119786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072592.P7331716329565119786

namespace A072592

/-- `2*∪[A009177(n+1), A209922(n+1)]` -/
def P7331716329565119786.Spec : Prop :=
  ∀ n, (P7331716329565119786.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P4927395360443678534

`2*∪[A004431(n+1), A341329(n+1)]`
-/

namespace A072592.P4927395360443678534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072592.P4927395360443678534

namespace A072592

/-- `2*∪[A004431(n+1), A341329(n+1)]` -/
def P4927395360443678534.Spec : Prop :=
  ∀ n, (P4927395360443678534.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P7142974330357681445

`2*∪[A025302(n+1), A341329(n+1)]`
-/

namespace A072592.P7142974330357681445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072592.P7142974330357681445

namespace A072592

/-- `2*∪[A025302(n+1), A341329(n+1)]` -/
def P7142974330357681445.Spec : Prop :=
  ∀ n, (P7142974330357681445.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P18279577053003769857

`2*∪[A067761(n+1), A341329(n+1)]`
-/

namespace A072592.P18279577053003769857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072592.P18279577053003769857

namespace A072592

/-- `2*∪[A067761(n+1), A341329(n+1)]` -/
def P18279577053003769857.Spec : Prop :=
  ∀ n, (P18279577053003769857.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P6976482617714366148

`A009003(n+1)+A134422(n+1)/A009003(n+1)`
-/

namespace A072592.P6976482617714366148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009003 (n + 1) : ℚ) + (A134422 (n + 1) : ℚ) / (A009003 (n + 1) : ℚ)

end

end A072592.P6976482617714366148

namespace A072592

/-- `A009003(n+1)+A134422(n+1)/A009003(n+1)` -/
def P6976482617714366148.Spec : Prop :=
  ∀ n, P6976482617714366148.a n = (A072592 (n + 1) : ℚ)

theorem P6976482617714366148.correct : P6976482617714366148.Spec := by
  intro n
  simp only [A072592, Nat.add_sub_cancel, A072592.P6976482617714366148.a, A072592.P12540866148401735071.a, A009003, A009003.P4153996351455582682.f1, A009003.P4153996351455582682.a, A134422, A134422.P8034551626620170611.a, A004144, A004144.P17382156593889680767.a, A081324, A081324.P12063373289040437378.f1, A081324.P12063373289040437378.f2, A081324.P12063373289040437378.a, A063014, A063014.P2435970929241132637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A072592

/-! ## A072592.P15983675527512955473

`A009003(n+1)+A009003(n+2)-A278647(n+1)`
-/

namespace A072592.P15983675527512955473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) + (A009003 (n + 2) - A278647 (n + 1))

end

end A072592.P15983675527512955473

namespace A072592

/-- `A009003(n+1)+A009003(n+2)-A278647(n+1)` -/
def P15983675527512955473.Spec : Prop :=
  ∀ n, P15983675527512955473.a n = A072592 (n + 1)

theorem P15983675527512955473.correct : P15983675527512955473.Spec := by
  intro n
  simp only [A072592, Nat.add_sub_cancel, A072592.P15983675527512955473.a, A072592.P12540866148401735071.a, A009003, A009003.P4153996351455582682.f1, A009003.P4153996351455582682.a, A278647, A278647.P12690470526946050067.a, A004144, A004144.P17382156593889680767.a, A081324, A081324.P12063373289040437378.f1, A081324.P12063373289040437378.f2, A081324.P12063373289040437378.a, A063014, A063014.P2435970929241132637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A072592

/-! ## A072592.P1978588472731815503

`2*lt[1, A063014(n)]`
-/

namespace A072592.P1978588472731815503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072592.P1978588472731815503

namespace A072592

/-- `2*lt[1, A063014(n)]` -/
def P1978588472731815503.Spec : Prop :=
  ∀ n, (P1978588472731815503.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P13548418069864794474

`A004277(A009003(n+1))`
-/

namespace A072592.P13548418069864794474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A009003 (n + 1)).toNat

end

end A072592.P13548418069864794474

namespace A072592

/-- `A004277(A009003(n+1))` -/
def P13548418069864794474.Spec : Prop :=
  ∀ n, P13548418069864794474.a n = A072592 (n + 1)

end A072592

/-! ## A072592.P9546963721865015555

`A103517(A009003(n+1)-1)`
-/

namespace A072592.P9546963721865015555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A009003 (n + 1) - 1).toNat

end

end A072592.P9546963721865015555

namespace A072592

/-- `A103517(A009003(n+1)-1)` -/
def P9546963721865015555.Spec : Prop :=
  ∀ n, P9546963721865015555.a n = A072592 (n + 1)

end A072592

/-! ## A072592.P11274832858108388166

`2*lt[1, A170818(A028310(n))]`
-/

namespace A072592.P11274832858108388166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072592.P11274832858108388166

namespace A072592

/-- `2*lt[1, A170818(A028310(n))]` -/
def P11274832858108388166.Spec : Prop :=
  ∀ n, (P11274832858108388166.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P7566239070567654246

`2*lt[4, A046109(n)]`
-/

namespace A072592.P7566239070567654246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072592.P7566239070567654246

namespace A072592

/-- `2*lt[4, A046109(n)]` -/
def P7566239070567654246.Spec : Prop :=
  ∀ n, (P7566239070567654246.a n : ℤ) = A072592 (n + 1)

end A072592

/-! ## A072592.P1504306424985560726

`A004275(A009003(n+1)+1)`
-/

namespace A072592.P1504306424985560726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A009003 (n + 1) + 1).toNat

end

end A072592.P1504306424985560726

namespace A072592

/-- `A004275(A009003(n+1)+1)` -/
def P1504306424985560726.Spec : Prop :=
  ∀ n, P1504306424985560726.a n = A072592 (n + 1)

end A072592

/-! ## A072592.P11465458280201424521

`A004271(A009003(n+1)+2)`
-/

namespace A072592.P11465458280201424521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A009003 (n + 1) + 2).toNat

end

end A072592.P11465458280201424521

namespace A072592

/-- `A004271(A009003(n+1)+2)` -/
def P11465458280201424521.Spec : Prop :=
  ∀ n, P11465458280201424521.a n = A072592 (n + 1)

end A072592

/-! ## A072592.P12617708505226815420

`A004278(A009003(n+1)+2)`
-/

namespace A072592.P12617708505226815420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A009003 (n + 1) + 2).toNat

end

end A072592.P12617708505226815420

namespace A072592

/-- `A004278(A009003(n+1)+2)` -/
def P12617708505226815420.Spec : Prop :=
  ∀ n, P12617708505226815420.a n = A072592 (n + 1)

end A072592

/-!
# A072593: In prime factorization of n replace multiplication with bitwise logical 'or'.

The programs for A072593, there is no canonical definition to state claims against.
-/

/-! ## A072593.P13284761635752019986

`or(A072594(n+1), A328177(A066048(n+1)))`
-/

namespace A072593.P13284761635752019986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072594 (n + 1)) (A328177 (A066048 (n + 1)).toNat)

end

end A072593.P13284761635752019986

/-! ## A072593.P3154203176124084176

`or(A079879(n+1), A328177(A066048(n+1)))`
-/

namespace A072593.P3154203176124084176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079879 (n + 1)) (A328177 (A066048 (n + 1)).toNat)

end

end A072593.P3154203176124084176

/-! ## A072593.P9724190288700708571

`or(A006530(n+1)%A097942(n+1), A020639(n+1))`
-/

namespace A072593.P9724190288700708571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A006530 (n + 1)) (A097942 (n + 1))) (A020639 (n + 1))

end

end A072593.P9724190288700708571

/-! ## A072593.P2038616984699733275

`or(A006530(A324922(n+1)), A020639(n+1))`
-/

namespace A072593.P2038616984699733275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A324922 (n + 1)).toNat) (A020639 (n + 1))

end

end A072593.P2038616984699733275

/-! ## A072593.P3535426385319135089

`A293434(A316603(n+1))*A328177(A066048(n+1))`
-/

namespace A072593.P3535426385319135089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293434 (A316603 (n + 1)).toNat * A328177 (A066048 (n + 1)).toNat

end

end A072593.P3535426385319135089

/-! ## A072593.P3379453237097503598

`A328177(A066048((n+1)²))`
-/

namespace A072593.P3379453237097503598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328177 (A066048 ((n + 1) ^ 2)).toNat

end

end A072593.P3379453237097503598

/-! ## A072593.P17848630870449405146

`or(A006530(n+1), A014673((n+1)²))`
-/

namespace A072593.P17848630870449405146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (n + 1)) (A014673 ((n + 1) ^ 2))

end

end A072593.P17848630870449405146

/-! ## A072593.P1382250032399326066

`or(A020639(n+1), A085392((n+1)²))`
-/

namespace A072593.P1382250032399326066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (n + 1)) (A085392 ((n + 1) ^ 2))

end

end A072593.P1382250032399326066

/-! ## A072593.P4820705913722591878

`or(A006530(n+1), A249739((n+1)²))`
-/

namespace A072593.P4820705913722591878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (n + 1)) (A249739 ((n + 1) ^ 2))

end

end A072593.P4820705913722591878

/-! ## A072593.P17784576616791266678

`or(A020639(n+1), A032742(A066048(n+1)))`
-/

namespace A072593.P17784576616791266678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (n + 1)) (A032742 (A066048 (n + 1)).toNat)

end

end A072593.P17784576616791266678

/-! ## A072593.P18124386481692332616

`or(A006530(A000196((n+1)²)), A020639(n+1))`
-/

namespace A072593.P18124386481692332616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A000196 ((n + 1) ^ 2)).toNat) (A020639 (n + 1))

end

end A072593.P18124386481692332616

/-! ## A072593.P12233240428945387390

`or(A006530(n+1), A052126(A020639(n+1)²))`
-/

namespace A072593.P12233240428945387390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (n + 1)) (A052126 (A020639 (n + 1) ^ 2).toNat)

end

end A072593.P12233240428945387390

/-!
# A072595: Numbers k such that A072594(k) = 0.

The programs for A072595, there is no canonical definition to state claims against.
-/

/-! ## A072595.P3800742599932710273

`∪[A072596(n+1), (n+2)²]`
-/

namespace A072595.P3800742599932710273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072596 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A072595.P3800742599932710273

/-! ## A072595.P17930014962816459057

`∪[A000290(A020725(n+1)), A072596(n+1)]`
-/

namespace A072595.P17930014962816459057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A020725 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072595.P17930014962816459057

/-! ## A072595.P3554936844885846179

`eq[0, A072594(n+1)]+1`
-/

namespace A072595.P3554936844885846179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072595.P3554936844885846179

/-! ## A072595.P11126826449228677702

`eq[0, A072594(A028310(n))]`
-/

namespace A072595.P11126826449228677702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072595.P11126826449228677702

/-! ## A072595.P1766048365504427512

`A020725(eq[0, A072594(n+1)])`
-/

namespace A072595.P1766048365504427512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072595.P1766048365504427512

/-! ## A072595.P11559306461548584537

`A061800(eq[0, A072594(n+1)])`
-/

namespace A072595.P11559306461548584537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072595.P11559306461548584537

/-! ## A072595.P10816211668733787412

`eq[0, A072594(A138153(n+1))]`
-/

namespace A072595.P10816211668733787412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072595.P10816211668733787412

/-!
# A072596: Nonsquares with A072594(n) = 0.

The programs for A072596, there is no canonical definition to state claims against.
-/

/-! ## A072596.P14754599448412669806

`filter[A072595(n+1), A049240(#)]`
-/

namespace A072596.P14754599448412669806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072596.P14754599448412669806

/-! ## A072596.P18399410345535102203

`filter[A072595(n+1), A132350(#)]`
-/

namespace A072596.P18399410345535102203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A072596.P18399410345535102203

/-! ## A072596.P8720952294918754226

`filter[A072595(n+1), A267594(#)]`
-/

namespace A072596.P8720952294918754226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A072596.P8720952294918754226

/-! ## A072596.P16021876711535497377

`filter[A072595(n+1), A267612(#)]`
-/

namespace A072596.P16021876711535497377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267612 (f1 j).toNat = 1) n)

end

end A072596.P16021876711535497377

/-! ## A072596.P9172059628425635915

`filter[A072595(n+1), A267635(#)]`
-/

namespace A072596.P9172059628425635915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A072596.P9172059628425635915

/-!
# A072597: Expansion of 1/(exp(-x) - x) as exponential generating function.

The programs for A072597, there is no canonical definition to state claims against.
-/

/-! ## A072597.P4574568540680599795

`A006153(n+1)/(n+1)`
-/

namespace A072597.P4574568540680599795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006153 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A072597.P4574568540680599795

/-! ## A072597.P13204134850390521544

`A305133(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A072597.P13204134850390521544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305133 n + (n : ℤ) * a (n - 1)

end

end A072597.P13204134850390521544

/-! ## A072597.P2280569151321293447

`A305990(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A072597.P2280569151321293447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A305990 n - (n : ℤ) * a (n - 1)

end

end A072597.P2280569151321293447

/-! ## A072597.P10617094965106320957

`A000007(n)+A305990(n)-A006153(n)`
-/

namespace A072597.P10617094965106320957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A305990 n - A006153 n)

end

end A072597.P10617094965106320957

/-! ## A072597.P14988764400762262712

`record[A006153(A193739(n))/A193739(n)]`
-/

namespace A072597.P14988764400762262712
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006153 (A193739 n).toNat : ℚ) / (A193739 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072597.P14988764400762262712

/-! ## A072597.P15408492026403567122

`record[A006153(A344180(n))/A344180(n)]`
-/

namespace A072597.P15408492026403567122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006153 (A344180 n).toNat : ℚ) / (A344180 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072597.P15408492026403567122

/-! ## A072597.P4094775160137479040

`A305990(n)-A006153(n)%A052820(n)`
-/

namespace A072597.P4094775160137479040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305990 n - Int.tmod (A006153 n) (A052820 n)

end

end A072597.P4094775160137479040

/-!
# A072599: Numbers n such that (n!)^2 - prime(n) is prime.

The programs for A072599, there is no canonical definition to state claims against.
-/

/-! ## A072599.P6993316078005737295

`ceil(A067527(3*n+1)/comp[∑[n]])`
-/

namespace A072599.P6993316078005737295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067527 (3 * n + 1) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ)⌉

end

end A072599.P6993316078005737295

/-! ## A072599.P508017950546197151

`A177193(A020094(n))+n`
-/

namespace A072599.P508017950546197151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177193 (A020094 n).toNat + (n : ℤ)

end

end A072599.P508017950546197151

/-! ## A072599.P12349321896883555552

`A373661(A006248(n+1))+n`
-/

namespace A072599.P12349321896883555552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373661 (A006248 (n + 1)).toNat + (n : ℤ)

end

end A072599.P12349321896883555552

