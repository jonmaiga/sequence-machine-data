import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A378200: Square array read by upward antidiagonals: T(n,k) = ((k + n - 1)^2 + (k - n + 1)*(-1)^n + (1 - k - n)*(-1)^k + (1 - k - n)*(-1)^(k + n) + 2)/2.

The programs for A378200, the canonical program `A378200.P9582015431075575270` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378200 has offset 1).

The definition of A378200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378200.P14251864101436997746

`A056023(A380245(n+1))`
-/

namespace A378200.P14251864101436997746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A380245 (n + 1)).toNat

end

end A378200.P14251864101436997746

namespace A378200

/-- `A056023(A380245(n+1))` -/
def P14251864101436997746.Spec : Prop :=
  ∀ n, P14251864101436997746.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P15605993857679881607

`A380815(A056023(n+1))`
-/

namespace A378200.P15605993857679881607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A056023 (n + 1)).toNat

end

end A378200.P15605993857679881607

namespace A378200

/-- `A380815(A056023(n+1))` -/
def P15605993857679881607.Spec : Prop :=
  ∀ n, P15605993857679881607.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P14318621911000022902

`A378705(A378684(n+1))`
-/

namespace A378200.P14318621911000022902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A378684 (n + 1)).toNat

end

end A378200.P14318621911000022902

namespace A378200

/-- `A378705(A378684(n+1))` -/
def P14318621911000022902.Spec : Prop :=
  ∀ n, P14318621911000022902.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P6523908497759611181

`A379342(A378762(n+1))`
-/

namespace A378200.P6523908497759611181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A378762 (n + 1)).toNat

end

end A378200.P6523908497759611181

namespace A378200

/-- `A379342(A378762(n+1))` -/
def P6523908497759611181.Spec : Prop :=
  ∀ n, P6523908497759611181.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P8266495034893704299

`A380200(A383589(n+1))`
-/

namespace A378200.P8266495034893704299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A383589 (n + 1)).toNat

end

end A378200.P8266495034893704299

namespace A378200

/-- `A380200(A383589(n+1))` -/
def P8266495034893704299.Spec : Prop :=
  ∀ n, P8266495034893704299.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P1341654622376603443

`A383723(A380200(n+1))`
-/

namespace A378200.P1341654622376603443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A380200 (n + 1)).toNat

end

end A378200.P1341654622376603443

namespace A378200

/-- `A383723(A380200(n+1))` -/
def P1341654622376603443.Spec : Prop :=
  ∀ n, P1341654622376603443.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P1242150936640459086

`A380245(A383723(n+1))`
-/

namespace A378200.P1242150936640459086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A383723 (n + 1)).toNat

end

end A378200.P1242150936640459086

namespace A378200

/-- `A380245(A383723(n+1))` -/
def P1242150936640459086.Spec : Prop :=
  ∀ n, P1242150936640459086.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P611381261341335528

`A383589(A380815(n+1))`
-/

namespace A378200.P611381261341335528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A380815 (n + 1)).toNat

end

end A378200.P611381261341335528

namespace A378200

/-- `A383589(A380815(n+1))` -/
def P611381261341335528.Spec : Prop :=
  ∀ n, P611381261341335528.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P9582015431075575270

`A056023(A381664(A381664(n+1)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A378200

/-- `A056023(A381664(A381664(n+1)))` -/
def P9582015431075575270.Spec : Prop :=
  ∀ n, P9582015431075575270.a n = A378200 (n + 1)

theorem P9582015431075575270.correct : P9582015431075575270.Spec := by
  intro n
  simp only [A378200, Nat.add_sub_cancel]

end A378200

/-! ## A378200.P13412027076250448438

`A378705(A379343(A376214(n+1)))`
-/

namespace A378200.P13412027076250448438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A379343 (A376214 (n + 1)).toNat).toNat

end

end A378200.P13412027076250448438

namespace A378200

/-- `A378705(A379343(A376214(n+1)))` -/
def P13412027076250448438.Spec : Prop :=
  ∀ n, P13412027076250448438.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P15012187274815130825

`A378762(A378705(A378705(n+1)))`
-/

namespace A378200.P15012187274815130825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A378705 (A378705 (n + 1)).toNat).toNat

end

end A378200.P15012187274815130825

namespace A378200

/-- `A378762(A378705(A378705(n+1)))` -/
def P15012187274815130825.Spec : Prop :=
  ∀ n, P15012187274815130825.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P6898135325299735656

`A376214(A378705(A381663(n+1)))`
-/

namespace A378200.P6898135325299735656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A378705 (A381663 (n + 1)).toNat).toNat

end

end A378200.P6898135325299735656

namespace A378200

/-- `A376214(A378705(A381663(n+1)))` -/
def P6898135325299735656.Spec : Prop :=
  ∀ n, P6898135325299735656.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P12626781614303760441

`A379342(A378705(A379342(n+1)))`
-/

namespace A378200.P12626781614303760441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A378705 (A379342 (n + 1)).toNat).toNat

end

end A378200.P12626781614303760441

namespace A378200

/-- `A379342(A378705(A379342(n+1)))` -/
def P12626781614303760441.Spec : Prop :=
  ∀ n, P12626781614303760441.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P1280082854167914136

`A380817(A378705(A379343(n+1)))`
-/

namespace A378200.P1280082854167914136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A378705 (A379343 (n + 1)).toNat).toNat

end

end A378200.P1280082854167914136

namespace A378200

/-- `A380817(A378705(A379343(n+1)))` -/
def P1280082854167914136.Spec : Prop :=
  ∀ n, P1280082854167914136.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P16361732411195695440

`A380815(A378762(A380817(n+1)))`
-/

namespace A378200.P16361732411195695440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A378762 (A380817 (n + 1)).toNat).toNat

end

end A378200.P16361732411195695440

namespace A378200

/-- `A380815(A378762(A380817(n+1)))` -/
def P16361732411195695440.Spec : Prop :=
  ∀ n, P16361732411195695440.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P11980631776623821540

`A380200(A378762(A381662(n+1)))`
-/

namespace A378200.P11980631776623821540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A378762 (A381662 (n + 1)).toNat).toNat

end

end A378200.P11980631776623821540

namespace A378200

/-- `A380200(A378762(A381662(n+1)))` -/
def P11980631776623821540.Spec : Prop :=
  ∀ n, P11980631776623821540.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P17058819135213140111

`A382499(A378705(A382499(n+1)))`
-/

namespace A378200.P17058819135213140111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378705 (A382499 (n + 1)).toNat).toNat

end

end A378200.P17058819135213140111

namespace A378200

/-- `A382499(A378705(A382499(n+1)))` -/
def P17058819135213140111.Spec : Prop :=
  ∀ n, P17058819135213140111.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P8002489362506873243

`A382680(A378705(A382680(n+1)))`
-/

namespace A378200.P8002489362506873243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378705 (A382680 (n + 1)).toNat).toNat

end

end A378200.P8002489362506873243

namespace A378200

/-- `A382680(A378705(A382680(n+1)))` -/
def P8002489362506873243.Spec : Prop :=
  ∀ n, P8002489362506873243.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P15022621582547416848

`A383724(A378684(A381968(n+1)))`
-/

namespace A378200.P15022621582547416848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A378684 (A381968 (n + 1)).toNat).toNat

end

end A378200.P15022621582547416848

namespace A378200

/-- `A383724(A378684(A381968(n+1)))` -/
def P15022621582547416848.Spec : Prop :=
  ∀ n, P15022621582547416848.a n = A378200 (n + 1)

end A378200

/-! ## A378200.P9691578054718853008

`A383419(A378684(A382679(n+1)))`
-/

namespace A378200.P9691578054718853008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A378684 (A382679 (n + 1)).toNat).toNat

end

end A378200.P9691578054718853008

namespace A378200

/-- `A383419(A378684(A382679(n+1)))` -/
def P9691578054718853008.Spec : Prop :=
  ∀ n, P9691578054718853008.a n = A378200 (n + 1)

end A378200

/-!
# A378201: a(n) = 2*n mod q, where q is the greatest prime such that 2*n - q is also prime.

The programs for A378201, there is no canonical definition to state claims against.
-/

/-! ## A378201.P3038776803823926379

`A020481(n+2)%(n+2)`
-/

namespace A378201.P3038776803823926379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020481 (n + 2)) (n + 2 : ℤ)

end

end A378201.P3038776803823926379

/-! ## A378201.P6726007716265789399

`((n+1)*A020482(n+2))%(n+2)`
-/

namespace A378201.P6726007716265789399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A020482 (n + 2)) (n + 2 : ℤ)

end

end A378201.P6726007716265789399

/-! ## A378201.P15473390453391430794

`A080368(A073046(n+2))`
-/

namespace A378201.P15473390453391430794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080368 (A073046 (n + 2)).toNat

end

end A378201.P15473390453391430794

/-! ## A378201.P8993907611818426550

`A020481(n+2)*A157928(n)`
-/

namespace A378201.P8993907611818426550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2) * A157928 n

end

end A378201.P8993907611818426550

/-! ## A378201.P17239624842789628564

`and(A020481(n+2), A047859(n))`
-/

namespace A378201.P17239624842789628564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020481 (n + 2)) (A047859 n)

end

end A378201.P17239624842789628564

/-! ## A378201.P12438336251189446120

`and(A020481(n+2), A267685(n))`
-/

namespace A378201.P12438336251189446120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020481 (n + 2)) (A267685 n)

end

end A378201.P12438336251189446120

/-! ## A378201.P16769932905317547779

`and(A020481(n+2), A267886(n))`
-/

namespace A378201.P16769932905317547779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020481 (n + 2)) (A267886 n)

end

end A378201.P16769932905317547779

/-! ## A378201.P12947225091261831489

`and(A020481(n+2), A283651(n))`
-/

namespace A378201.P12947225091261831489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020481 (n + 2)) (A283651 n)

end

end A378201.P12947225091261831489

/-! ## A378201.P14867315756705546804

`and(A020481(n+2), A284485(n))`
-/

namespace A378201.P14867315756705546804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020481 (n + 2)) (A284485 n)

end

end A378201.P14867315756705546804

/-! ## A378201.P202404296185455293

`lcm(A020481(n+2), A173950(n+1))`
-/

namespace A378201.P202404296185455293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020481 (n + 2)) (A173950 (n + 1))

end

end A378201.P202404296185455293

/-!
# A378202: Largest primitive practical number that divides the n-th practical number - A005153(n).

The programs for A378202, there is no canonical definition to state claims against.
-/

/-! ## A378202.P8143199939985908593

`A005153(n+1)/A377377(n+1)`
-/

namespace A378202.P8143199939985908593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005153 (n + 1) : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P8143199939985908593

/-! ## A378202.P11417698052053105896

`record[A327832(n+1)]/A377377(n+1)`
-/

namespace A378202.P11417698052053105896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P11417698052053105896

/-! ## A378202.P6928420964416289116

`(lt[A279048(n+1), 1]+1)/A377377(n+1)`
-/

namespace A378202.P6928420964416289116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P6928420964416289116

/-! ## A378202.P8514240223497185707

`(lt[n, A030057(n+1)]+1)/A377377(n+1)`
-/

namespace A378202.P8514240223497185707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P8514240223497185707

/-! ## A378202.P12098387718120111740

`record[(n+1)*A322860(n+1)]/A377377(n+1)`
-/

namespace A378202.P12098387718120111740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322860 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P12098387718120111740

/-! ## A378202.P16867375928285482509

`record[n%A225561(n+1)+1]/A377377(n+1)`
-/

namespace A378202.P16867375928285482509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A225561 (n + 1)) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P16867375928285482509

/-! ## A378202.P2201770564098753364

`A327832(lt[n, A327832(n+1)]+1)/A377377(n+1)`
-/

namespace A378202.P2201770564098753364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P2201770564098753364

/-! ## A378202.P445474775232115571

`record[A275121(n+1)/A210445(n+1)²]/A377377(n+1)`
-/

namespace A378202.P445474775232115571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275121 (n + 1) : ℚ) / (A210445 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / (A377377 (n + 1) : ℚ)

end

end A378202.P445474775232115571

/-! ## A378202.P4499612879635212766

`(eq[A063524(3*n+4), A279048(n+1)]+1)/A377377(n+1)`
-/

namespace A378202.P4499612879635212766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 : ℚ) / (A377377 (n + 1) : ℚ)

end

end A378202.P4499612879635212766

/-!
# A378211: Dirichlet inverse of A191161, hypersigma variant 2.

The programs for A378211, the canonical program `A378211.P10174579376731078055` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378211 has offset 1).

The definition of A378211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378211.P10174579376731078055

`2*A046692(n+1)-A055615(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378211

/-- `2*A046692(n+1)-A055615(n+1)` -/
def P10174579376731078055.Spec : Prop :=
  ∀ n, P10174579376731078055.a n = A378211 (n + 1)

theorem P10174579376731078055.correct : P10174579376731078055.Spec := by
  intro n
  simp only [A378211, Nat.add_sub_cancel]

end A378211

/-! ## A378211.P155261765758030296

`∑{d}[n+1, A033879(#)*A327960((n+1)/#)]`
-/

namespace A378211.P155261765758030296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378211.P155261765758030296

namespace A378211

/-- `∑{d}[n+1, A033879(#)*A327960((n+1)/#)]` -/
def P155261765758030296.Spec : Prop :=
  ∀ n, P155261765758030296.a n = A378211 (n + 1)

end A378211

/-! ## A378211.P8536105828847836948

`∑{d}[n+1, A008683(#)*A378217((n+1)/#)]`
-/

namespace A378211.P8536105828847836948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378211.P8536105828847836948

namespace A378211

/-- `∑{d}[n+1, A008683(#)*A378217((n+1)/#)]` -/
def P8536105828847836948.Spec : Prop :=
  ∀ n, P8536105828847836948.a n = A378211 (n + 1)

end A378211

/-! ## A378211.P18418052607478425354

`∑{d}[n+1, A023900(#)*A378219((n+1)/#)]`
-/

namespace A378211.P18418052607478425354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378211.P18418052607478425354

namespace A378211

/-- `∑{d}[n+1, A023900(#)*A378219((n+1)/#)]` -/
def P18418052607478425354.Spec : Prop :=
  ∀ n, P18418052607478425354.a n = A378211 (n + 1)

end A378211

/-! ## A378211.P6043086562190764896

`∑{d}[n+1, A083254(#)*A328722((n+1)/#)]`
-/

namespace A378211.P6043086562190764896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378211.P6043086562190764896

namespace A378211

/-- `∑{d}[n+1, A083254(#)*A328722((n+1)/#)]` -/
def P6043086562190764896.Spec : Prop :=
  ∀ n, P6043086562190764896.a n = A378211 (n + 1)

end A378211

/-! ## A378211.P11743870051655308679

`∑{d}[n+1, A055615(#)*A378225((n+1)/#)]`
-/

namespace A378211.P11743870051655308679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378211.P11743870051655308679

namespace A378211

/-- `∑{d}[n+1, A055615(#)*A378225((n+1)/#)]` -/
def P11743870051655308679.Spec : Prop :=
  ∀ n, P11743870051655308679.a n = A378211 (n + 1)

end A378211

/-! ## A378211.P12811617758679249516

`∑{d}[n+1, A359484(#)*A378224((n+1)/#)]`
-/

namespace A378211.P12811617758679249516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359484 d * A378224 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378211.P12811617758679249516

namespace A378211

/-- `∑{d}[n+1, A359484(#)*A378224((n+1)/#)]` -/
def P12811617758679249516.Spec : Prop :=
  ∀ n, P12811617758679249516.a n = A378211 (n + 1)

end A378211

/-!
# A378213: Dirichlet inverse of A140773.

The programs for A378213, there is no canonical definition to state claims against.
-/

/-! ## A378213.P772329843338514790

`∑{d}[n+1, A007427(#)*A359763((n+1)/#)]`
-/

namespace A378213.P772329843338514790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A359763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378213.P772329843338514790

/-! ## A378213.P16323268307872923259

`∑{d}[n+1, A008683(#)*A369453((n+1)/#)]`
-/

namespace A378213.P16323268307872923259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A369453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378213.P16323268307872923259

/-! ## A378213.P17266837859457950081

`∑{d}[n+1, A007432(#)*A378536((n+1)/#)]`
-/

namespace A378213.P17266837859457950081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378213.P17266837859457950081

/-! ## A378213.P12501494649209279743

`∑{d}[n+1, A271102(#)*A378453((n+1)/#)]`
-/

namespace A378213.P12501494649209279743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A378453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378213.P12501494649209279743

/-! ## A378213.P68886994510211922

`∑{d}[n+1, A307445(#)*A378452((n+1)/#)]`
-/

namespace A378213.P68886994510211922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A378452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378213.P68886994510211922

/-! ## A378213.P11672557986004284377

`∑{d}[n+1, A355837(#)*A378214((n+1)/#)]`
-/

namespace A378213.P11672557986004284377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355837 d * A378214 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378213.P11672557986004284377

/-!
# A378214: Dirichlet inverse of A369255, where A369255(n) = A140773(n) mod 2.

The programs for A378214, there is no canonical definition to state claims against.
-/

/-! ## A378214.P4000930293268979160

`∑{d}[n+1, A227291(#)*A359763((n+1)/#)]`
-/

namespace A378214.P4000930293268979160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227291 d * A359763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378214.P4000930293268979160

/-! ## A378214.P6794520022896174517

`∑{d}[n+1, A252505(#)*A378453((n+1)/#)]`
-/

namespace A378214.P6794520022896174517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252505 d * A378453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378214.P6794520022896174517

/-! ## A378214.P7870851907252560371

`∑{d}[n+1, A307430(#)*A378452((n+1)/#)]`
-/

namespace A378214.P7870851907252560371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307430 d * A378452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378214.P7870851907252560371

/-! ## A378214.P1411734762659397978

`∑{d}[n+1, A323308(#)*A369453((n+1)/#)]`
-/

namespace A378214.P1411734762659397978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323308 d * A369453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378214.P1411734762659397978

/-! ## A378214.P4318913097610124018

`∑{d}[n+1, A322327(#)*A378213((n+1)/#)]`
-/

namespace A378214.P4318913097610124018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322327 d * A378213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378214.P4318913097610124018

/-! ## A378214.P8428676871634011979

`A134667(A244098(n+1)²*A244098(n+1))`
-/

namespace A378214.P8428676871634011979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A244098 (n + 1) ^ 2 * A244098 (n + 1)).toNat

end

end A378214.P8428676871634011979

/-!
# A378215: Parity of A378213, where A378213 is the Dirichlet inverse of A140773.

The programs for A378215, there is no canonical definition to state claims against.
-/

/-! ## A378215.P9307279773541479671

`and(1, A378213(n+1))`
-/

namespace A378215.P9307279773541479671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A378213 (n + 1))

end

end A378215.P9307279773541479671

/-! ## A378215.P4088269047173896615

`A000035(A378214(n+1)²)`
-/

namespace A378215.P4088269047173896615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A378214 (n + 1) ^ 2).toNat

end

end A378215.P4088269047173896615

/-! ## A378215.P5683346015055264927

`and(A060576(n), A378214(n+1))`
-/

namespace A378215.P5683346015055264927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A378214 (n + 1))

end

end A378215.P5683346015055264927

/-! ## A378215.P1981805220397607196

`and(A158388(n), A378214(n+1))`
-/

namespace A378215.P1981805220397607196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A378214 (n + 1))

end

end A378215.P1981805220397607196

/-! ## A378215.P9610330892886902282

`and(A179184(n), A378214(n+1))`
-/

namespace A378215.P9610330892886902282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A378214 (n + 1))

end

end A378215.P9610330892886902282

/-! ## A378215.P12538616522294968657

`and(A185114(n), A378214(n+1))`
-/

namespace A378215.P12538616522294968657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185114 n) (A378214 (n + 1))

end

end A378215.P12538616522294968657

/-! ## A378215.P17591162655617071949

`and(A185115(n), A378214(n+1))`
-/

namespace A378215.P17591162655617071949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185115 n) (A378214 (n + 1))

end

end A378215.P17591162655617071949

/-! ## A378215.P2667874953992534758

`and(A174530(n), A378214(n+1))`
-/

namespace A378215.P2667874953992534758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174530 n) (A378214 (n + 1))

end

end A378215.P2667874953992534758

/-! ## A378215.P9913758816302835863

`A336422(n+1)%A007421(n+1)`
-/

namespace A378215.P9913758816302835863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336422 (n + 1)) (A007421 (n + 1))

end

end A378215.P9913758816302835863

/-! ## A378215.P14485062322838658477

`A280665(A182139(n+1))²`
-/

namespace A378215.P14485062322838658477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280665 (A182139 (n + 1)).toNat ^ 2

end

end A378215.P14485062322838658477

/-!
# A378216: Dirichlet inverse of A174725.

The programs for A378216, the canonical program `A378216.P4619166357507459087` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378216 has offset 1).

The definition of A378216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378216.P4619166357507459087

`2-A000005(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A378216

/-- `2-A000005(n+1)` -/
def P4619166357507459087.Spec : Prop :=
  ∀ n, P4619166357507459087.a n = A378216 (n + 1)

theorem P4619166357507459087.correct : P4619166357507459087.Spec := by
  intro n
  simp only [A378216, Nat.add_sub_cancel]

end A378216

/-! ## A378216.P2091664817049414978

`2-∏{e}[n+1, #+1]`
-/

namespace A378216.P2091664817049414978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A378216.P2091664817049414978

namespace A378216

/-- `2-∏{e}[n+1, #+1]` -/
def P2091664817049414978.Spec : Prop :=
  ∀ n, P2091664817049414978.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P13424146063876224141

`2-∑{d}[n+1, gcd(n, #)]`
-/

namespace A378216.P13424146063876224141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A378216.P13424146063876224141

namespace A378216

/-- `2-∑{d}[n+1, gcd(n, #)]` -/
def P13424146063876224141.Spec : Prop :=
  ∀ n, P13424146063876224141.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P17783200146888588375

`∑{d}[n+1, 1-2%#²]`
-/

namespace A378216.P17783200146888588375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - ((2 % d ^ 2 : ℕ) : ℤ))

end

end A378216.P17783200146888588375

namespace A378216

/-- `∑{d}[n+1, 1-2%#²]` -/
def P17783200146888588375.Spec : Prop :=
  ∀ n, P17783200146888588375.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P4998117148738912929

`∑{d}[n+1, C(2, #²)-1]`
-/

namespace A378216.P4998117148738912929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.choose 2 (d ^ 2) : ℤ) - 1)

end

end A378216.P4998117148738912929

namespace A378216

/-- `∑{d}[n+1, C(2, #²)-1]` -/
def P4998117148738912929.Spec : Prop :=
  ∀ n, P4998117148738912929.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P13629363299328571303

`∑{d}[n+1, or(#, -1)]+2`
-/

namespace A378216.P13629363299328571303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1) + 2

end

end A378216.P13629363299328571303

namespace A378216

/-- `∑{d}[n+1, or(#, -1)]+2` -/
def P13629363299328571303.Spec : Prop :=
  ∀ n, P13629363299328571303.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P8800689302553404645

`2-∑{d}[n+1, ceil(1/#)]`
-/

namespace A378216.P8800689302553404645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A378216.P8800689302553404645

namespace A378216

/-- `2-∑{d}[n+1, ceil(1/#)]` -/
def P8800689302553404645.Spec : Prop :=
  ∀ n, P8800689302553404645.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P8566439650097756402

`2-Δ[A006218(n)]`
-/

namespace A378216.P8566439650097756402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A378216.P8566439650097756402

namespace A378216

/-- `2-Δ[A006218(n)]` -/
def P8566439650097756402.Spec : Prop :=
  ∀ n, P8566439650097756402.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P15029374648267429716

`2-Δ[A054519(n)]`
-/

namespace A378216.P15029374648267429716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A378216.P15029374648267429716

namespace A378216

/-- `2-Δ[A054519(n)]` -/
def P15029374648267429716.Spec : Prop :=
  ∀ n, P15029374648267429716.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P11722781736989477095

`1-A032741(n+1)`
-/

namespace A378216.P11722781736989477095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A032741 (n + 1)

end

end A378216.P11722781736989477095

namespace A378216

/-- `1-A032741(n+1)` -/
def P11722781736989477095.Spec : Prop :=
  ∀ n, P11722781736989477095.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P16710992366750051260

`3-A334954(n+1)`
-/

namespace A378216.P16710992366750051260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A334954 (n + 1)

end

end A378216.P16710992366750051260

namespace A378216

/-- `3-A334954(n+1)` -/
def P16710992366750051260.Spec : Prop :=
  ∀ n, P16710992366750051260.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P2953577839741956760

`A062968(n+1)-n`
-/

namespace A378216.P2953577839741956760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - (n : ℤ)

end

end A378216.P2953577839741956760

namespace A378216

/-- `A062968(n+1)-n` -/
def P2953577839741956760.Spec : Prop :=
  ∀ n, P2953577839741956760.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P4787650875232890854

`2-abs(Δ[A139432(n)])`
-/

namespace A378216.P4787650875232890854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |f1 (n + 1) - f1 n|

end

end A378216.P4787650875232890854

namespace A378216

/-- `2-abs(Δ[A139432(n)])` -/
def P4787650875232890854.Spec : Prop :=
  ∀ n, P4787650875232890854.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P11178889342254617217

`∑{d}[n+1, A153881(#)]`
-/

namespace A378216.P11178889342254617217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A153881 d

end

end A378216.P11178889342254617217

namespace A378216

/-- `∑{d}[n+1, A153881(#)]` -/
def P11178889342254617217.Spec : Prop :=
  ∀ n, P11178889342254617217.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P4698502966559788477

`2-abs(A329484(n+1))`
-/

namespace A378216.P4698502966559788477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |A329484 (n + 1)|

end

end A378216.P4698502966559788477

namespace A378216

/-- `2-abs(A329484(n+1))` -/
def P4698502966559788477.Spec : Prop :=
  ∀ n, P4698502966559788477.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P16381011023139639089

`2-sqrt(A035116(n+1))`
-/

namespace A378216.P16381011023139639089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.sqrt (A035116 (n + 1) : ℝ)

end

end A378216.P16381011023139639089

namespace A378216

/-- `2-sqrt(A035116(n+1))` -/
def P16381011023139639089.Spec : Prop :=
  ∀ n, P16381011023139639089.a n = (A378216 (n + 1) : ℝ)

end A378216

/-! ## A378216.P11295195753243548954

`1-log2(A100577(n+1))`
-/

namespace A378216.P11295195753243548954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.logb 2 (A100577 (n + 1) : ℝ)

end

end A378216.P11295195753243548954

namespace A378216

/-- `1-log2(A100577(n+1))` -/
def P11295195753243548954.Spec : Prop :=
  ∀ n, P11295195753243548954.a n = (A378216 (n + 1) : ℝ)

end A378216

/-! ## A378216.P12702117000851988868

`2-log2(A338506(n+1))`
-/

namespace A378216.P12702117000851988868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.logb 2 (A338506 (n + 1) : ℝ)

end

end A378216.P12702117000851988868

namespace A378216

/-- `2-log2(A338506(n+1))` -/
def P12702117000851988868.Spec : Prop :=
  ∀ n, P12702117000851988868.a n = (A378216 (n + 1) : ℝ)

end A378216

/-! ## A378216.P6189599601308609032

`2-∑[A341062(n+1)]`
-/

namespace A378216.P6189599601308609032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378216.P6189599601308609032

namespace A378216

/-- `2-∑[A341062(n+1)]` -/
def P6189599601308609032.Spec : Prop :=
  ∀ n, P6189599601308609032.a n = A378216 (n + 1)

end A378216

/-! ## A378216.P4660361107054499155

`1-A338117(2*(n+1))`
-/

namespace A378216.P4660361107054499155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A338117 (2 * (n + 1))

end

end A378216.P4660361107054499155

namespace A378216

/-- `1-A338117(2*(n+1))` -/
def P4660361107054499155.Spec : Prop :=
  ∀ n, P4660361107054499155.a n = A378216 (n + 1)

end A378216

/-!
# A378217: Dirichlet inverse of A330575.

The programs for A378217, the canonical program `A378217.P591878857379882394` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378217 has offset 1).

The definition of A378217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378217.P591878857379882394

`∑{d}[n+1, A378211(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378217

/-- `∑{d}[n+1, A378211(#)]` -/
def P591878857379882394.Spec : Prop :=
  ∀ n, P591878857379882394.a n = A378217 (n + 1)

theorem P591878857379882394.correct : P591878857379882394.Spec := by
  intro n
  simp only [A378217, Nat.add_sub_cancel]

end A378217

/-! ## A378217.P260355826256513248

`A062004(n+1)-A023900(n+1)`
-/

namespace A378217.P260355826256513248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062004 (n + 1) - A023900 (n + 1)

end

end A378217.P260355826256513248

namespace A378217

/-- `A062004(n+1)-A023900(n+1)` -/
def P260355826256513248.Spec : Prop :=
  ∀ n, P260355826256513248.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P2152208987070942417

`2*A055615(n+1)-A023900(n+1)`
-/

namespace A378217.P2152208987070942417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055615 (n + 1) - A023900 (n + 1)

end

end A378217.P2152208987070942417

namespace A378217

/-- `2*A055615(n+1)-A023900(n+1)` -/
def P2152208987070942417.Spec : Prop :=
  ∀ n, P2152208987070942417.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P5949553186364765396

`∑{d}[n+1, A083254(#)*A101035((n+1)/#)]`
-/

namespace A378217.P5949553186364765396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P5949553186364765396

namespace A378217

/-- `∑{d}[n+1, A083254(#)*A101035((n+1)/#)]` -/
def P5949553186364765396.Spec : Prop :=
  ∀ n, P5949553186364765396.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P1133293214325392682

`∑{d}[n+1, A033879(#)*A328722((n+1)/#)]`
-/

namespace A378217.P1133293214325392682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P1133293214325392682

namespace A378217

/-- `∑{d}[n+1, A033879(#)*A328722((n+1)/#)]` -/
def P1133293214325392682.Spec : Prop :=
  ∀ n, P1133293214325392682.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P4796716841804572920

`∑{d}[n+1, A023900(#)*A378225((n+1)/#)]`
-/

namespace A378217.P4796716841804572920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P4796716841804572920

namespace A378217

/-- `∑{d}[n+1, A023900(#)*A378225((n+1)/#)]` -/
def P4796716841804572920.Spec : Prop :=
  ∀ n, P4796716841804572920.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P14586971961047451347

`∑{d}[n+1, A046692(#)*A378216((n+1)/#)]`
-/

namespace A378217.P14586971961047451347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P14586971961047451347

namespace A378217

/-- `∑{d}[n+1, A046692(#)*A378216((n+1)/#)]` -/
def P14586971961047451347.Spec : Prop :=
  ∀ n, P14586971961047451347.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P7083249800461585848

`∑{d}[n+1, A130054(#)*A378219((n+1)/#)]`
-/

namespace A378217.P7083249800461585848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P7083249800461585848

namespace A378217

/-- `∑{d}[n+1, A130054(#)*A378219((n+1)/#)]` -/
def P7083249800461585848.Spec : Prop :=
  ∀ n, P7083249800461585848.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P8429852308135296641

`∑{d}[n+1, A296075(#)*A327960((n+1)/#)]`
-/

namespace A378217.P8429852308135296641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P8429852308135296641

namespace A378217

/-- `∑{d}[n+1, A296075(#)*A327960((n+1)/#)]` -/
def P8429852308135296641.Spec : Prop :=
  ∀ n, P8429852308135296641.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P10788892378834753364

`∑{d}[n+1, A359484(#)*A378218((n+1)/#)]`
-/

namespace A378217.P10788892378834753364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359484 d * A378218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P10788892378834753364

namespace A378217

/-- `∑{d}[n+1, A359484(#)*A378218((n+1)/#)]` -/
def P10788892378834753364.Spec : Prop :=
  ∀ n, P10788892378834753364.a n = A378217 (n + 1)

end A378217

/-! ## A378217.P13945235158638454470

`∑{d}[n+1, A378645(#)*A378655((n+1)/#)]`
-/

namespace A378217.P13945235158638454470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378645 d * A378655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378217.P13945235158638454470

namespace A378217

/-- `∑{d}[n+1, A378645(#)*A378655((n+1)/#)]` -/
def P13945235158638454470.Spec : Prop :=
  ∀ n, P13945235158638454470.a n = A378217 (n + 1)

end A378217

/-!
# A378218: Dirichlet inverse of A345182.

The programs for A378218, the canonical program `A378218.P9928520778619542145` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378218 has offset 1).

The definition of A378218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378218.P9928520778619542145

`a(gcd(1-n, floor(n/2)))-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A378218

/-- `a(gcd(1-n, floor(n/2)))-1` -/
def P9928520778619542145.Spec : Prop :=
  ∀ n, P9928520778619542145.a n = A378218 (n + 1)

theorem P9928520778619542145.correct : P9928520778619542145.Spec := by
  intro n
  simp only [A378218, Nat.add_sub_cancel]

end A378218

/-! ## A378218.P13437576494567500086

`n%2*a(floor(n/2))-1` with `a(0)=1`
-/

namespace A378218.P13437576494567500086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n % 2 : ℕ) : ℤ) * a ⌊(n : ℚ) / 2⌋.toNat - 1

end

end A378218.P13437576494567500086

namespace A378218

/-- `n%2*a(floor(n/2))-1` -/
def P13437576494567500086.Spec : Prop :=
  ∀ n, P13437576494567500086.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P8889897007789483262

`a(A057979(n))-1` with `a(0)=1`
-/

namespace A378218.P8889897007789483262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A057979 n).toNat - 1

end

end A378218.P8889897007789483262

namespace A378218

/-- `a(A057979(n))-1` -/
def P8889897007789483262.Spec : Prop :=
  ∀ n, P8889897007789483262.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P1004901194632109737

`1-A359508(Δ[n²])`
-/

namespace A378218.P1004901194632109737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359508 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A378218.P1004901194632109737

namespace A378218

/-- `1-A359508(Δ[n²])` -/
def P1004901194632109737.Spec : Prop :=
  ∀ n, P1004901194632109737.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P8194951915556630954

`∑{d}[n+1, A378224(#)]`
-/

namespace A378218.P8194951915556630954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378224 d

end

end A378218.P8194951915556630954

namespace A378218

/-- `∑{d}[n+1, A378224(#)]` -/
def P8194951915556630954.Spec : Prop :=
  ∀ n, P8194951915556630954.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P1928337948483242180

`2*A036987(n)-A001511(n+1)`
-/

namespace A378218.P1928337948483242180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036987 n - A001511 (n + 1)

end

end A378218.P1928337948483242180

namespace A378218

/-- `2*A036987(n)-A001511(n+1)` -/
def P1928337948483242180.Spec : Prop :=
  ∀ n, P1928337948483242180.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P4175758868227171939

`∑{d}[n+1, A001511(#)*A378225((n+1)/#)]`
-/

namespace A378218.P4175758868227171939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378218.P4175758868227171939

namespace A378218

/-- `∑{d}[n+1, A001511(#)*A378225((n+1)/#)]` -/
def P4175758868227171939.Spec : Prop :=
  ∀ n, P4175758868227171939.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P3621922529577052491

`∑{d}[n+1, A033879(#)*A349341((n+1)/#)]`
-/

namespace A378218.P3621922529577052491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378218.P3621922529577052491

namespace A378218

/-- `∑{d}[n+1, A033879(#)*A349341((n+1)/#)]` -/
def P3621922529577052491.Spec : Prop :=
  ∀ n, P3621922529577052491.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P18140727764189458327

`∑{d}[n+1, A087003(#)*A378216((n+1)/#)]`
-/

namespace A378218.P18140727764189458327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378218.P18140727764189458327

namespace A378218

/-- `∑{d}[n+1, A087003(#)*A378216((n+1)/#)]` -/
def P18140727764189458327.Spec : Prop :=
  ∀ n, P18140727764189458327.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P1598974687866966533

`∑{d}[n+1, A129628(#)*A378219((n+1)/#)]`
-/

namespace A378218.P1598974687866966533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378218.P1598974687866966533

namespace A378218

/-- `∑{d}[n+1, A129628(#)*A378219((n+1)/#)]` -/
def P1598974687866966533.Spec : Prop :=
  ∀ n, P1598974687866966533.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P8730704457973904869

`∑{d}[n+1, A296075(#)*A326938((n+1)/#)]`
-/

namespace A378218.P8730704457973904869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378218.P8730704457973904869

namespace A378218

/-- `∑{d}[n+1, A296075(#)*A326938((n+1)/#)]` -/
def P8730704457973904869.Spec : Prop :=
  ∀ n, P8730704457973904869.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P16413133957596369447

`A070941(A101279(n+1))-A070941(n)`
-/

namespace A378218.P16413133957596369447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A101279 (n + 1)).toNat - A070941 n

end

end A378218.P16413133957596369447

namespace A378218

/-- `A070941(A101279(n+1))-A070941(n)` -/
def P16413133957596369447.Spec : Prop :=
  ∀ n, P16413133957596369447.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P10066117683724168871

`A209229(n+1)+A209229(n+1)-A001511(n+1)`
-/

namespace A378218.P10066117683724168871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1) + (A209229 (n + 1) - A001511 (n + 1))

end

end A378218.P10066117683724168871

namespace A378218

/-- `A209229(n+1)+A209229(n+1)-A001511(n+1)` -/
def P10066117683724168871.Spec : Prop :=
  ∀ n, P10066117683724168871.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P18151297185446818262

`A238845(2*n+1)-A238845(2*n)`
-/

namespace A378218.P18151297185446818262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238845 (2 * n + 1) - A238845 (2 * n)

end

end A378218.P18151297185446818262

namespace A378218

/-- `A238845(2*n+1)-A238845(2*n)` -/
def P18151297185446818262.Spec : Prop :=
  ∀ n, P18151297185446818262.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P6435781058129184676

`A069517(2*(n+1))-A007814(2*(n+1))`
-/

namespace A378218.P6435781058129184676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (2 * (n + 1)) - A007814 (2 * (n + 1))

end

end A378218.P6435781058129184676

namespace A378218

/-- `A069517(2*(n+1))-A007814(2*(n+1))` -/
def P6435781058129184676.Spec : Prop :=
  ∀ n, P6435781058129184676.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P14584189578699953125

`A000225(A014963(2*(n+1)))-A001511(2*(n+1))`
-/

namespace A378218.P14584189578699953125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A014963 (2 * (n + 1))).toNat - A001511 (2 * (n + 1))

end

end A378218.P14584189578699953125

namespace A378218

/-- `A000225(A014963(2*(n+1)))-A001511(2*(n+1))` -/
def P14584189578699953125.Spec : Prop :=
  ∀ n, P14584189578699953125.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P11138549368533270484

`A135560(n+1)-A127750(n)`
-/

namespace A378218.P11138549368533270484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (n + 1) - A127750 n

end

end A378218.P11138549368533270484

namespace A378218

/-- `A135560(n+1)-A127750(n)` -/
def P11138549368533270484.Spec : Prop :=
  ∀ n, P11138549368533270484.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P9721488353939549755

`A366839(n+1)-A127752(n)`
-/

namespace A378218.P9721488353939549755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366839 (n + 1) - A127752 n

end

end A378218.P9721488353939549755

namespace A378218

/-- `A366839(n+1)-A127752(n)` -/
def P9721488353939549755.Spec : Prop :=
  ∀ n, P9721488353939549755.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P516735261596986253

`A036987(n)+A127750(n)-A127752(n)`
-/

namespace A378218.P516735261596986253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n + (A127750 n - A127752 n)

end

end A378218.P516735261596986253

namespace A378218

/-- `A036987(n)+A127750(n)-A127752(n)` -/
def P516735261596986253.Spec : Prop :=
  ∀ n, P516735261596986253.a n = A378218 (n + 1)

end A378218

/-! ## A378218.P2105571964122957177

`A001511(n+1)+A036987(n)-A127750(n)`
-/

namespace A378218.P2105571964122957177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A036987 n - A127750 n)

end

end A378218.P2105571964122957177

namespace A378218

/-- `A001511(n+1)+A036987(n)-A127750(n)` -/
def P2105571964122957177.Spec : Prop :=
  ∀ n, P2105571964122957177.a n = A378218 (n + 1)

end A378218

/-!
# A378219: Dirichlet inverse of A253249.

The programs for A378219, the canonical program `A378219.P14117610568073585605` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378219 has offset 1).

The definition of A378219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378219.P15339471146828941888

`2*A007427(n+1)-A008683(n+1)`
-/

namespace A378219.P15339471146828941888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007427 (n + 1) - A008683 (n + 1)

end

end A378219.P15339471146828941888

namespace A378219

/-- `2*A007427(n+1)-A008683(n+1)` -/
def P15339471146828941888.Spec : Prop :=
  ∀ n, P15339471146828941888.a n = A378219 (n + 1)

end A378219

/-! ## A378219.P2782409943636103096

`∑{d}[n+1, A046692(#)*A083254((n+1)/#)]`
-/

namespace A378219.P2782409943636103096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378219.P2782409943636103096

namespace A378219

/-- `∑{d}[n+1, A046692(#)*A083254((n+1)/#)]` -/
def P2782409943636103096.Spec : Prop :=
  ∀ n, P2782409943636103096.a n = A378219 (n + 1)

end A378219

/-! ## A378219.P16232740949922675643

`∑{d}[n+1, A000010(#)*A378211((n+1)/#)]`
-/

namespace A378219.P16232740949922675643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378219.P16232740949922675643

namespace A378219

/-- `∑{d}[n+1, A000010(#)*A378211((n+1)/#)]` -/
def P16232740949922675643.Spec : Prop :=
  ∀ n, P16232740949922675643.a n = A378219 (n + 1)

end A378219

/-! ## A378219.P18154743086939880623

`∑{d}[n+1, A007428(#)*A378216((n+1)/#)]`
-/

namespace A378219.P18154743086939880623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378219.P18154743086939880623

namespace A378219

/-- `∑{d}[n+1, A007428(#)*A378216((n+1)/#)]` -/
def P18154743086939880623.Spec : Prop :=
  ∀ n, P18154743086939880623.a n = A378219 (n + 1)

end A378219

/-! ## A378219.P7520767087088074022

`∑{d}[n+1, A008683(#)*A378225((n+1)/#)]`
-/

namespace A378219.P7520767087088074022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378219.P7520767087088074022

namespace A378219

/-- `∑{d}[n+1, A008683(#)*A378225((n+1)/#)]` -/
def P7520767087088074022.Spec : Prop :=
  ∀ n, P7520767087088074022.a n = A378219 (n + 1)

end A378219

/-! ## A378219.P14117610568073585605

`∑{d}[n+1, A092673(#)*A378224((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378219

/-- `∑{d}[n+1, A092673(#)*A378224((n+1)/#)]` -/
def P14117610568073585605.Spec : Prop :=
  ∀ n, P14117610568073585605.a n = A378219 (n + 1)

theorem P14117610568073585605.correct : P14117610568073585605.Spec := by
  intro n
  simp only [A378219, Nat.add_sub_cancel]

end A378219

/-! ## A378219.P6858698945412252854

`∑{d}[n+1, A337544(#)*A378221((n+1)/#)]`
-/

namespace A378219.P6858698945412252854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A337544 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378219.P6858698945412252854

namespace A378219

/-- `∑{d}[n+1, A337544(#)*A378221((n+1)/#)]` -/
def P6858698945412252854.Spec : Prop :=
  ∀ n, P6858698945412252854.a n = A378219 (n + 1)

end A378219

/-!
# A378220: Dirichlet inverse of phi(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A378220, the canonical program `A378220.P1471173532227017870` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378220 has offset 1).

The definition of A378220 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378220.P1471173532227017870

`A023900(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378220

/-- `A023900(A003961(n+1))` -/
def P1471173532227017870.Spec : Prop :=
  ∀ n, P1471173532227017870.a n = A378220 (n + 1)

theorem P1471173532227017870.correct : P1471173532227017870.Spec := by
  intro n
  simp only [A378220, Nat.add_sub_cancel]

end A378220

/-! ## A378220.P4847649536395606437

`∑{d}[n+1, A346234(#)]`
-/

namespace A378220.P4847649536395606437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346234 d

end

end A378220.P4847649536395606437

namespace A378220

/-- `∑{d}[n+1, A346234(#)]` -/
def P4847649536395606437.Spec : Prop :=
  ∀ n, P4847649536395606437.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P13491953259635619347

`∏{p}[n+1, A346246(#)]`
-/

namespace A378220.P13491953259635619347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A346246 p

end

end A378220.P13491953259635619347

namespace A378220

/-- `∏{p}[n+1, A346246(#)]` -/
def P13491953259635619347.Spec : Prop :=
  ∀ n, P13491953259635619347.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P7635007786464497727

`∏{p}[n+1, A389077(#)]`
-/

namespace A378220.P7635007786464497727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A389077 p

end

end A378220.P7635007786464497727

namespace A378220

/-- `∏{p}[n+1, A389077(#)]` -/
def P7635007786464497727.Spec : Prop :=
  ∀ n, P7635007786464497727.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P4393201296838371016

`∑{d}[n+1, A023900(#)*A349388((n+1)/#)]`
-/

namespace A378220.P4393201296838371016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378220.P4393201296838371016

namespace A378220

/-- `∑{d}[n+1, A023900(#)*A349388((n+1)/#)]` -/
def P4393201296838371016.Spec : Prop :=
  ∀ n, P4393201296838371016.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P13460257130506642820

`∑{d}[n+1, A000005(#)*A378221((n+1)/#)]`
-/

namespace A378220.P13460257130506642820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378220.P13460257130506642820

namespace A378220

/-- `∑{d}[n+1, A000005(#)*A378221((n+1)/#)]` -/
def P13460257130506642820.Spec : Prop :=
  ∀ n, P13460257130506642820.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P8971071067822564497

`∑{d}[n+1, A061020(#)*A347238((n+1)/#)]`
-/

namespace A378220.P8971071067822564497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A347238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378220.P8971071067822564497

namespace A378220

/-- `∑{d}[n+1, A061020(#)*A347238((n+1)/#)]` -/
def P8971071067822564497.Spec : Prop :=
  ∀ n, P8971071067822564497.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P8001343416585711802

`∑{d}[n+1, A055615(#)*A378607((n+1)/#)]`
-/

namespace A378220.P8001343416585711802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A378607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378220.P8001343416585711802

namespace A378220

/-- `∑{d}[n+1, A055615(#)*A378607((n+1)/#)]` -/
def P8001343416585711802.Spec : Prop :=
  ∀ n, P8001343416585711802.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P151245944201467380

`∑{d}[n+1, A346246(#)*A378216((n+1)/#)]`
-/

namespace A378220.P151245944201467380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346246 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378220.P151245944201467380

namespace A378220

/-- `∑{d}[n+1, A346246(#)*A378216((n+1)/#)]` -/
def P151245944201467380.Spec : Prop :=
  ∀ n, P151245944201467380.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P18152879934008413714

`A023900(A328915(n+1))`
-/

namespace A378220.P18152879934008413714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A328915 (n + 1)).toNat

end

end A378220.P18152879934008413714

namespace A378220

/-- `A023900(A328915(n+1))` -/
def P18152879934008413714.Spec : Prop :=
  ∀ n, P18152879934008413714.a n = A378220 (n + 1)

end A378220

/-! ## A378220.P7136792113757688414

`∑{d}[A003961(n+1), A055615(#)]`
-/

namespace A378220.P7136792113757688414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A378220.P7136792113757688414

namespace A378220

/-- `∑{d}[A003961(n+1), A055615(#)]` -/
def P7136792113757688414.Spec : Prop :=
  ∀ n, P7136792113757688414.a n = A378220 (n + 1)

end A378220

/-!
# A378221: Dirichlet inverse of sigma(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A378221, the canonical program `A378221.P4388743736498616945` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378221 has offset 1).

The definition of A378221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046692, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378221.P4388743736498616945

`A046692(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378221

/-- `A046692(A003961(n+1))` -/
def P4388743736498616945.Spec : Prop :=
  ∀ n, P4388743736498616945.a n = A378221 (n + 1)

theorem P4388743736498616945.correct : P4388743736498616945.Spec := by
  intro n
  simp only [A378221, Nat.add_sub_cancel]

end A378221

/-! ## A378221.P17511393874914503826

`A378228(n+1)/(n+1)`
-/

namespace A378221.P17511393874914503826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378228 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A378221.P17511393874914503826

namespace A378221

/-- `A378228(n+1)/(n+1)` -/
def P17511393874914503826.Spec : Prop :=
  ∀ n, P17511393874914503826.a n = (A378221 (n + 1) : ℚ)

end A378221

/-! ## A378221.P11444286428409282254

`∑{d}[n+1, A008683(#)*A346234((n+1)/#)]`
-/

namespace A378221.P11444286428409282254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378221.P11444286428409282254

namespace A378221

/-- `∑{d}[n+1, A008683(#)*A346234((n+1)/#)]` -/
def P11444286428409282254.Spec : Prop :=
  ∀ n, P11444286428409282254.a n = A378221 (n + 1)

end A378221

/-! ## A378221.P17796221375666896546

`∑{d}[n+1, A007427(#)*A378220((n+1)/#)]`
-/

namespace A378221.P17796221375666896546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378221.P17796221375666896546

namespace A378221

/-- `∑{d}[n+1, A007427(#)*A378220((n+1)/#)]` -/
def P17796221375666896546.Spec : Prop :=
  ∀ n, P17796221375666896546.a n = A378221 (n + 1)

end A378221

/-! ## A378221.P18161227701193182042

`∑{d}[n+1, A046692(#)*A349388((n+1)/#)]`
-/

namespace A378221.P18161227701193182042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378221.P18161227701193182042

namespace A378221

/-- `∑{d}[n+1, A046692(#)*A349388((n+1)/#)]` -/
def P18161227701193182042.Spec : Prop :=
  ∀ n, P18161227701193182042.a n = A378221 (n + 1)

end A378221

/-! ## A378221.P15567992267642007148

`∑{d}[n+1, A158523(#)*A347238((n+1)/#)]`
-/

namespace A378221.P15567992267642007148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A347238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378221.P15567992267642007148

namespace A378221

/-- `∑{d}[n+1, A158523(#)*A347238((n+1)/#)]` -/
def P15567992267642007148.Spec : Prop :=
  ∀ n, P15567992267642007148.a n = A378221 (n + 1)

end A378221

/-! ## A378221.P11878602005070161814

`∑{d}[n+1, A346246(#)*A378225((n+1)/#)]`
-/

namespace A378221.P11878602005070161814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346246 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378221.P11878602005070161814

namespace A378221

/-- `∑{d}[n+1, A346246(#)*A378225((n+1)/#)]` -/
def P11878602005070161814.Spec : Prop :=
  ∀ n, P11878602005070161814.a n = A378221 (n + 1)

end A378221

/-! ## A378221.P16668748321839320260

`∑{d}[n+1, A349385(#)*A378520((n+1)/#)]`
-/

namespace A378221.P16668748321839320260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349385 d * A378520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378221.P16668748321839320260

namespace A378221

/-- `∑{d}[n+1, A349385(#)*A378520((n+1)/#)]` -/
def P16668748321839320260.Spec : Prop :=
  ∀ n, P16668748321839320260.a n = A378221 (n + 1)

end A378221

/-! ## A378221.P15398872309893035648

`A327268(A045965(n+1))`
-/

namespace A378221.P15398872309893035648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327268 (A045965 (n + 1)).toNat

end

end A378221.P15398872309893035648

namespace A378221

/-- `A327268(A045965(n+1))` -/
def P15398872309893035648.Spec : Prop :=
  ∀ n, P15398872309893035648.a n = A378221 (n + 1)

end A378221

/-! ## A378221.P15001041931340112760

`A046692(A344587(n+1)+A336851(n+1))`
-/

namespace A378221.P15001041931340112760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A344587 (n + 1) + A336851 (n + 1)).toNat

end

end A378221.P15001041931340112760

namespace A378221

/-- `A046692(A344587(n+1)+A336851(n+1))` -/
def P15001041931340112760.Spec : Prop :=
  ∀ n, P15001041931340112760.a n = A378221 (n + 1)

theorem P15001041931340112760.correct : P15001041931340112760.Spec := by
  intro n
  simp only [A378221, Nat.add_sub_cancel, A378221.P15001041931340112760.a, A378221.P4388743736498616945.a, A003961, A003961.P5996473960037614004.a, A046692, A046692.P2122140602833396605.f1, A046692.P2122140602833396605.a, A336851, A336851.P7105463253357279779.a, A344587, A344587.P3683186071812823048.a, A003973, A003973.P4846480468008244812.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A327960, A327960.P1150811079346032985.f1, A327960.P1150811079346032985.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A101035, A101035.P3462403393033249231.f1, A101035.P3462403393033249231.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378221

/-! ## A378221.P5667869835156215838

`A046692(A280702(n+1)*A280703(n+1))`
-/

namespace A378221.P5667869835156215838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A280702 (n + 1) * A280703 (n + 1)).toNat

end

end A378221.P5667869835156215838

namespace A378221

/-- `A046692(A280702(n+1)*A280703(n+1))` -/
def P5667869835156215838.Spec : Prop :=
  ∀ n, P5667869835156215838.a n = A378221 (n + 1)

end A378221

/-!
# A378222: Number of ordered factorizations of the odd part of n into factors > 1.

The programs for A378222, there is no canonical definition to state claims against.
-/

/-! ## A378222.P766996246989606448

`A074206(A000265(n+1))`
-/

namespace A378222.P766996246989606448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A000265 (n + 1)).toNat

end

end A378222.P766996246989606448

/-! ## A378222.P8793576687892747086

`round(A335283(n+1)/2)`
-/

namespace A378222.P8793576687892747086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A335283 (n + 1) : ℚ) / 2)

end

end A378222.P8793576687892747086

/-! ## A378222.P6032569249894508938

`A002033(A153733(n))`
-/

namespace A378222.P6032569249894508938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A153733 n).toNat

end

end A378222.P6032569249894508938

/-! ## A378222.P13560010029836857689

`A352063(A025480(n))`
-/

namespace A378222.P13560010029836857689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 (A025480 n).toNat

end

end A378222.P13560010029836857689

/-! ## A378222.P4226788878673454973

`A074206(A064989(n+1))`
-/

namespace A378222.P4226788878673454973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A064989 (n + 1)).toNat

end

end A378222.P4226788878673454973

/-! ## A378222.P7519472404320416819

`A074206(A171435(n+1))`
-/

namespace A378222.P7519472404320416819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A171435 (n + 1)).toNat

end

end A378222.P7519472404320416819

/-! ## A378222.P15238276808143303412

`A002033(A322250(n+1))`
-/

namespace A378222.P15238276808143303412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A322250 (n + 1)).toNat

end

end A378222.P15238276808143303412

/-! ## A378222.P9500926935131020432

`A004525(A335283(n+1))`
-/

namespace A378222.P9500926935131020432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A335283 (n + 1)).toNat

end

end A378222.P9500926935131020432

/-! ## A378222.P2544224227313768974

`A325144(A065883(n+1))`
-/

namespace A378222.P2544224227313768974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325144 (A065883 (n + 1)).toNat

end

end A378222.P2544224227313768974

/-! ## A378222.P15912251626486406098

`A074206(A332819(n+1))`
-/

namespace A378222.P15912251626486406098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A332819 (n + 1)).toNat

end

end A378222.P15912251626486406098

/-! ## A378222.P5948088575332574277

`A074206(A348747(n+1))`
-/

namespace A378222.P5948088575332574277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A348747 (n + 1)).toNat

end

end A378222.P5948088575332574277

/-! ## A378222.P16395317636456440976

`A074206(A354092(n+1))`
-/

namespace A378222.P16395317636456440976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A354092 (n + 1)).toNat

end

end A378222.P16395317636456440976

/-! ## A378222.P6393167933312412021

`A352063(A101279(n+1))`
-/

namespace A378222.P6393167933312412021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 (A101279 (n + 1)).toNat

end

end A378222.P6393167933312412021

/-! ## A378222.P16446410493567093045

`A002033(A000265(n+1)-1)`
-/

namespace A378222.P16446410493567093045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A000265 (n + 1) - 1).toNat

end

end A378222.P16446410493567093045

/-! ## A378222.P15187533029308692868

`A335283(n+1)/A043529(n)`
-/

namespace A378222.P15187533029308692868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335283 (n + 1) : ℚ) / (A043529 n : ℚ)

end

end A378222.P15187533029308692868

/-! ## A378222.P6455081177967235539

`∑{d}[n+1, A087003(#)*A335283((n+1)/#)]`
-/

namespace A378222.P6455081177967235539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A335283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378222.P6455081177967235539

/-!
# A378223: Inverse Möbius transform of A345182.

The programs for A378223, there is no canonical definition to state claims against.
-/

/-! ## A378223.P456335798534018761

`∑{d}[n+1, A345182(#)]`
-/

namespace A378223.P456335798534018761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345182 d

end

end A378223.P456335798534018761

/-! ## A378223.P1936200563014351948

`∑{d}[n+1, A001227(#)*A174725((n+1)/#)]`
-/

namespace A378223.P1936200563014351948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378223.P1936200563014351948

/-! ## A378223.P14538681861384621979

`∑{d}[n+1, A002131(#)*A323910((n+1)/#)]`
-/

namespace A378223.P14538681861384621979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378223.P14538681861384621979

/-! ## A378223.P17435310995510325352

`∑{d}[n+1, A092673(#)*A253249((n+1)/#)]`
-/

namespace A378223.P17435310995510325352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378223.P17435310995510325352

/-! ## A378223.P12684214096419577334

`∑{d}[n+1, A191161(#)*A359484((n+1)/#)]`
-/

namespace A378223.P12684214096419577334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191161 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378223.P12684214096419577334

/-! ## A378223.P6829251790432502955

`∑{d}[n+1, A327096(#)*A378432((n+1)/#)]`
-/

namespace A378223.P6829251790432502955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327096 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378223.P6829251790432502955

/-!
# A378224: Dirichlet inverse of A378223.

The programs for A378224, the canonical program `A378224.P17280632333159008747` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378224 has offset 1).

The definition of A378224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378224.P17280632333159008747

`∑{d}[n+1, A033879(#)*A326938((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378224

/-- `∑{d}[n+1, A033879(#)*A326938((n+1)/#)]` -/
def P17280632333159008747.Spec : Prop :=
  ∀ n, P17280632333159008747.a n = A378224 (n + 1)

theorem P17280632333159008747.correct : P17280632333159008747.Spec := by
  intro n
  simp only [A378224, Nat.add_sub_cancel]

end A378224

/-! ## A378224.P17980040469380988476

`∑{d}[n+1, A001511(#)*A378219((n+1)/#)]`
-/

namespace A378224.P17980040469380988476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P17980040469380988476

namespace A378224

/-- `∑{d}[n+1, A001511(#)*A378219((n+1)/#)]` -/
def P17980040469380988476.Spec : Prop :=
  ∀ n, P17980040469380988476.a n = A378224 (n + 1)

end A378224

/-! ## A378224.P2109565801394681164

`∑{d}[n+1, A008683(#)*A378218((n+1)/#)]`
-/

namespace A378224.P2109565801394681164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P2109565801394681164

namespace A378224

/-- `∑{d}[n+1, A008683(#)*A378218((n+1)/#)]` -/
def P2109565801394681164.Spec : Prop :=
  ∀ n, P2109565801394681164.a n = A378224 (n + 1)

end A378224

/-! ## A378224.P18034323091036856393

`∑{d}[n+1, A083254(#)*A349341((n+1)/#)]`
-/

namespace A378224.P18034323091036856393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P18034323091036856393

namespace A378224

/-- `∑{d}[n+1, A083254(#)*A349341((n+1)/#)]` -/
def P18034323091036856393.Spec : Prop :=
  ∀ n, P18034323091036856393.a n = A378224 (n + 1)

end A378224

/-! ## A378224.P1695774778382975698

`∑{d}[n+1, A062570(#)*A378217((n+1)/#)]`
-/

namespace A378224.P1695774778382975698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P1695774778382975698

namespace A378224

/-- `∑{d}[n+1, A062570(#)*A378217((n+1)/#)]` -/
def P1695774778382975698.Spec : Prop :=
  ∀ n, P1695774778382975698.a n = A378224 (n + 1)

end A378224

/-! ## A378224.P4349110751678438015

`∑{d}[n+1, A327276(#)*A378216((n+1)/#)]`
-/

namespace A378224.P4349110751678438015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327276 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P4349110751678438015

namespace A378224

/-- `∑{d}[n+1, A327276(#)*A378216((n+1)/#)]` -/
def P4349110751678438015.Spec : Prop :=
  ∀ n, P4349110751678438015.a n = A378224 (n + 1)

end A378224

/-! ## A378224.P2565489331881114313

`∑{d}[n+1, A036987(#-1)*A378225((n+1)/#)]`
-/

namespace A378224.P2565489331881114313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378224.P2565489331881114313

namespace A378224

/-- `∑{d}[n+1, A036987(#-1)*A378225((n+1)/#)]` -/
def P2565489331881114313.Spec : Prop :=
  ∀ n, P2565489331881114313.a n = A378224 (n + 1)

end A378224

/-! ## A378224.P15719573964777605525

`A087003(n+1)+A087003(n+1)-A209229(n+1)`
-/

namespace A378224.P15719573964777605525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n + 1) + (A087003 (n + 1) - A209229 (n + 1))

end

end A378224.P15719573964777605525

namespace A378224

/-- `A087003(n+1)+A087003(n+1)-A209229(n+1)` -/
def P15719573964777605525.Spec : Prop :=
  ∀ n, P15719573964777605525.a n = A378224 (n + 1)

end A378224

/-!
# A378225: Dirichlet inverse of A067824.

The programs for A378225, the canonical program `A378225.P16861983548388386532` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378225 has offset 1).

The definition of A378225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378225.P8957727490834889344

`∑{d}[n+1, A378219(#)]`
-/

namespace A378225.P8957727490834889344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378219 d

end

end A378225.P8957727490834889344

namespace A378225

/-- `∑{d}[n+1, A378219(#)]` -/
def P8957727490834889344.Spec : Prop :=
  ∀ n, P8957727490834889344.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P546973919115278442

`∑{d}[n+1, #*A378211((n+1)/#)]`
-/

namespace A378225.P546973919115278442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378225.P546973919115278442

namespace A378225

/-- `∑{d}[n+1, #*A378211((n+1)/#)]` -/
def P546973919115278442.Spec : Prop :=
  ∀ n, P546973919115278442.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P13019788602841116765

`A112300(A073184(n+1))`
-/

namespace A378225.P13019788602841116765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112300 (A073184 (n + 1)).toNat

end

end A378225.P13019788602841116765

namespace A378225

/-- `A112300(A073184(n+1))` -/
def P13019788602841116765.Spec : Prop :=
  ∀ n, P13019788602841116765.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P16861983548388386532

`A133695(n+1)+A057427(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A378225

/-- `A133695(n+1)+A057427(n)` -/
def P16861983548388386532.Spec : Prop :=
  ∀ n, P16861983548388386532.a n = A378225 (n + 1)

theorem P16861983548388386532.correct : P16861983548388386532.Spec := by
  intro n
  simp only [A378225, Nat.add_sub_cancel]

end A378225

/-! ## A378225.P9818959722170107606

`A133695(n+1)-A057428(n)`
-/

namespace A378225.P9818959722170107606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (n + 1) - A057428 n

end

end A378225.P9818959722170107606

namespace A378225

/-- `A133695(n+1)-A057428(n)` -/
def P9818959722170107606.Spec : Prop :=
  ∀ n, P9818959722170107606.a n = A378225 (n + 1)

theorem P9818959722170107606.correct : P9818959722170107606.Spec := by
  intro n
  simp only [A378225, Nat.add_sub_cancel, A378225.P9818959722170107606.a, A378225.P16861983548388386532.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A133695, A133695.P14090460044357670883.a, A000007, A000007.P6599383543502402472.a, A080847, A080847.P15039464906544920582.f1, A080847.P15039464906544920582.f2, A080847.P15039464906544920582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378225

/-! ## A378225.P9494301314968429356

`A008683(n+1)*A275437(n)`
-/

namespace A378225.P9494301314968429356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A275437 n

end

end A378225.P9494301314968429356

namespace A378225

/-- `A008683(n+1)*A275437(n)` -/
def P9494301314968429356.Spec : Prop :=
  ∀ n, P9494301314968429356.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P8201961282214181896

`A008683(n+1)-A157658(n+1)`
-/

namespace A378225.P8201961282214181896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A157658 (n + 1)

end

end A378225.P8201961282214181896

namespace A378225

/-- `A008683(n+1)-A157658(n+1)` -/
def P8201961282214181896.Spec : Prop :=
  ∀ n, P8201961282214181896.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P2552447625671177597

`A008683(n+1)*A036453(n+1)`
-/

namespace A378225.P2552447625671177597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A036453 (n + 1)

end

end A378225.P2552447625671177597

namespace A378225

/-- `A008683(n+1)*A036453(n+1)` -/
def P2552447625671177597.Spec : Prop :=
  ∀ n, P2552447625671177597.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P1971028078353563880

`(A057427(n)+1)*A008683(n+1)`
-/

namespace A378225.P1971028078353563880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A008683 (n + 1)

end

end A378225.P1971028078353563880

namespace A378225

/-- `(A057427(n)+1)*A008683(n+1)` -/
def P1971028078353563880.Spec : Prop :=
  ∀ n, P1971028078353563880.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P12633897802671108117

`A008683(n+1)*A067132(n+1)`
-/

namespace A378225.P12633897802671108117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A067132 (n + 1)

end

end A378225.P12633897802671108117

namespace A378225

/-- `A008683(n+1)*A067132(n+1)` -/
def P12633897802671108117.Spec : Prop :=
  ∀ n, P12633897802671108117.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P16096113547088344302

`A008683(n+1)*A071187(n+1)`
-/

namespace A378225.P16096113547088344302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A071187 (n + 1)

end

end A378225.P16096113547088344302

namespace A378225

/-- `A008683(n+1)*A071187(n+1)` -/
def P16096113547088344302.Spec : Prop :=
  ∀ n, P16096113547088344302.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P730164867445120582

`A008683(n+1)*A071188(n+1)`
-/

namespace A378225.P730164867445120582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A071188 (n + 1)

end

end A378225.P730164867445120582

namespace A378225

/-- `A008683(n+1)*A071188(n+1)` -/
def P730164867445120582.Spec : Prop :=
  ∀ n, P730164867445120582.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P14175298497325819375

`A008683(n+1)*A082091(n+1)`
-/

namespace A378225.P14175298497325819375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A082091 (n + 1)

end

end A378225.P14175298497325819375

namespace A378225

/-- `A008683(n+1)*A082091(n+1)` -/
def P14175298497325819375.Spec : Prop :=
  ∀ n, P14175298497325819375.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P1416382629144731634

`A008683(n+1)*A100549(n+1)`
-/

namespace A378225.P1416382629144731634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A100549 (n + 1)

end

end A378225.P1416382629144731634

namespace A378225

/-- `A008683(n+1)*A100549(n+1)` -/
def P1416382629144731634.Spec : Prop :=
  ∀ n, P1416382629144731634.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P7662899197104808258

`A008683(n+1)*A134193(n+1)`
-/

namespace A378225.P7662899197104808258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A134193 (n + 1)

end

end A378225.P7662899197104808258

namespace A378225

/-- `A008683(n+1)*A134193(n+1)` -/
def P7662899197104808258.Spec : Prop :=
  ∀ n, P7662899197104808258.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P7074993540512866336

`A008683(n+1)*A305980(n+1)`
-/

namespace A378225.P7074993540512866336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A305980 (n + 1)

end

end A378225.P7074993540512866336

namespace A378225

/-- `A008683(n+1)*A305980(n+1)` -/
def P7074993540512866336.Spec : Prop :=
  ∀ n, P7074993540512866336.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P5465173618498475345

`A008683(n+1)*A328162(n+1)`
-/

namespace A378225.P5465173618498475345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A328162 (n + 1)

end

end A378225.P5465173618498475345

namespace A378225

/-- `A008683(n+1)*A328162(n+1)` -/
def P5465173618498475345.Spec : Prop :=
  ∀ n, P5465173618498475345.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P16464255039287195000

`A008683(n+1)*A340675(n+1)`
-/

namespace A378225.P16464255039287195000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A340675 (n + 1)

end

end A378225.P16464255039287195000

namespace A378225

/-- `A008683(n+1)*A340675(n+1)` -/
def P16464255039287195000.Spec : Prop :=
  ∀ n, P16464255039287195000.a n = A378225 (n + 1)

end A378225

/-! ## A378225.P7435977445271365242

`A008683(n+1)*A348044(n+1)`
-/

namespace A378225.P7435977445271365242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A348044 (n + 1)

end

end A378225.P7435977445271365242

namespace A378225

/-- `A008683(n+1)*A348044(n+1)` -/
def P7435977445271365242.Spec : Prop :=
  ∀ n, P7435977445271365242.a n = A378225 (n + 1)

end A378225

/-!
# A378226: XOR-Moebius transform of A318457, where A318457(n) = n XOR (sigma(n)-n).

The programs for A378226, there is no canonical definition to state claims against.
-/

/-! ## A378226.P15324519576693119507

`xor(A256739(n+1), A318503(n+1))`
-/

namespace A378226.P15324519576693119507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A256739 (n + 1)) (A318503 (n + 1))

end

end A378226.P15324519576693119507

/-!
# A378228: Dirichlet inverse of A341528, where A341528(n) = n * sigma(A003961(n)), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A378228, the canonical program `A378228.P13007534797453819210` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378228 has offset 1).

The definition of A378228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378228.P13007534797453819210

`(n+1)*A378221(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378228

/-- `(n+1)*A378221(n+1)` -/
def P13007534797453819210.Spec : Prop :=
  ∀ n, P13007534797453819210.a n = A378228 (n + 1)

theorem P13007534797453819210.correct : P13007534797453819210.Spec := by
  intro n
  simp only [A378228, Nat.add_sub_cancel]

end A378228

/-! ## A378228.P3600517454341811349

`∑{d}[n+1, A349387(#)*A378229((n+1)/#)]`
-/

namespace A378228.P3600517454341811349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349387 d * A378229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378228.P3600517454341811349

namespace A378228

/-- `∑{d}[n+1, A349387(#)*A378229((n+1)/#)]` -/
def P3600517454341811349.Spec : Prop :=
  ∀ n, P3600517454341811349.a n = A378228 (n + 1)

end A378228

/-! ## A378228.P6727512821543723617

`(n+1)*∑{d}[n+1, A346246(#)*A378225((n+1)/#)]`
-/

namespace A378228.P6727512821543723617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A346246 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A378228.P6727512821543723617

namespace A378228

/-- `(n+1)*∑{d}[n+1, A346246(#)*A378225((n+1)/#)]` -/
def P6727512821543723617.Spec : Prop :=
  ∀ n, P6727512821543723617.a n = A378228 (n + 1)

end A378228

/-! ## A378228.P168567052720495663

`(n+1)*A046692(A003961(n+1))`
-/

namespace A378228.P168567052720495663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A046692 (A003961 (n + 1)).toNat

end

end A378228.P168567052720495663

namespace A378228

/-- `(n+1)*A046692(A003961(n+1))` -/
def P168567052720495663.Spec : Prop :=
  ∀ n, P168567052720495663.a n = A378228 (n + 1)

end A378228

/-! ## A378228.P7804349452178144033

`(n+1)*A327268(A045965(n+1))`
-/

namespace A378228.P7804349452178144033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327268 (A045965 (n + 1)).toNat

end

end A378228.P7804349452178144033

namespace A378228

/-- `(n+1)*A327268(A045965(n+1))` -/
def P7804349452178144033.Spec : Prop :=
  ∀ n, P7804349452178144033.a n = A378228 (n + 1)

end A378228

/-!
# A378229: Dirichlet inverse of A341529, where A341529(n) = sigma(n) * A003961(n), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A378229, the canonical program `A378229.P3491273019573870571` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378229 has offset 1).

The definition of A378229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378229.P7939683110045519700

`A003961(n+1)*A046692(n+1)`
-/

namespace A378229.P7939683110045519700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A046692 (n + 1)

end

end A378229.P7939683110045519700

namespace A378229

/-- `A003961(n+1)*A046692(n+1)` -/
def P7939683110045519700.Spec : Prop :=
  ∀ n, P7939683110045519700.a n = A378229 (n + 1)

end A378229

/-! ## A378229.P1896087754896000692

`∑{d}[n+1, A003972(#)]*A046692(n+1)`
-/

namespace A378229.P1896087754896000692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A003972 d) * A046692 (n + 1)

end

end A378229.P1896087754896000692

namespace A378229

/-- `∑{d}[n+1, A003972(#)]*A046692(n+1)` -/
def P1896087754896000692.Spec : Prop :=
  ∀ n, P1896087754896000692.a n = A378229 (n + 1)

end A378229

/-! ## A378229.P3491273019573870571

`∑{d}[n+1, A349388(#)*A378228((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378229

/-- `∑{d}[n+1, A349388(#)*A378228((n+1)/#)]` -/
def P3491273019573870571.Spec : Prop :=
  ∀ n, P3491273019573870571.a n = A378229 (n + 1)

theorem P3491273019573870571.correct : P3491273019573870571.Spec := by
  intro n
  simp only [A378229, Nat.add_sub_cancel]

end A378229

/-! ## A378229.P12042780687681339154

`(A344587(n+1)+A336851(n+1))*A046692(n+1)`
-/

namespace A378229.P12042780687681339154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344587 (n + 1) + A336851 (n + 1)) * A046692 (n + 1)

end

end A378229.P12042780687681339154

namespace A378229

/-- `(A344587(n+1)+A336851(n+1))*A046692(n+1)` -/
def P12042780687681339154.Spec : Prop :=
  ∀ n, P12042780687681339154.a n = A378229 (n + 1)

end A378229

/-! ## A378229.P3426377433897349627

`A046692(n+1)*A280702(n+1)*A280703(n+1)`
-/

namespace A378229.P3426377433897349627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1) * A280702 (n + 1) * A280703 (n + 1)

end

end A378229.P3426377433897349627

namespace A378229

/-- `A046692(n+1)*A280702(n+1)*A280703(n+1)` -/
def P3426377433897349627.Spec : Prop :=
  ∀ n, P3426377433897349627.a n = A378229 (n + 1)

end A378229

/-!
# A378230: Positions of 0's in A378226, where A278226 is XOR-Moebius transform of A318457, and A318457(n) = n XOR (sigma(n)-n).

The programs for A378230, there is no canonical definition to state claims against.
-/

/-! ## A378230.P2227600162202233348

`lt[A378226(n+1), 1]+1`
-/

namespace A378230.P2227600162202233348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378230.P2227600162202233348

/-! ## A378230.P6175925691706409896

`eq[0, A378226(abs(1-n)+1)]`
-/

namespace A378230.P6175925691706409896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378230.P6175925691706409896

/-! ## A378230.P5600685819117453997

`eq[A100995(n+1), A378226(n+1)]+1`
-/

namespace A378230.P5600685819117453997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A378230.P5600685819117453997

/-! ## A378230.P7392138596166162061

`eq[A353495(n+1), A378226(n+1)]+1`
-/

namespace A378230.P7392138596166162061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A378230.P7392138596166162061

/-! ## A378230.P11705239963395181676

`lt[xor(A256739(n+1), A318503(n+1)), 1]+1`
-/

namespace A378230.P11705239963395181676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A256739 (n + 1)) (A318503 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378230.P11705239963395181676

/-! ## A378230.P3151636976736138014

`eq[A260196(n)+1, A378226(n+1)]+1`
-/

namespace A378230.P3151636976736138014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A378230.P3151636976736138014

/-! ## A378230.P3862235479066560318

`eq[A240467(n+2), A378226(n+1)]+1`
-/

namespace A378230.P3862235479066560318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A378230.P3862235479066560318

/-!
# A378231: Deficiency of prime-shifted squares: a(n) = 2*A003961(n^2) - sigma(A003961(n^2)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A378231, the canonical program `A378231.P6423701850518415668` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378231 has offset 1).

The definition of A378231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378231.P6423701850518415668

`A377879(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A378231

/-- `A377879(A003961(n+1))` -/
def P6423701850518415668.Spec : Prop :=
  ∀ n, P6423701850518415668.a n = A378231 (n + 1)

theorem P6423701850518415668.correct : P6423701850518415668.Spec := by
  intro n
  simp only [A378231, Nat.add_sub_cancel]

end A378231

/-! ## A378231.P15619728977055377725

`A344587((n+1)²)`
-/

namespace A378231.P15619728977055377725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 ((n + 1) ^ 2)

end

end A378231.P15619728977055377725

namespace A378231

/-- `A344587((n+1)²)` -/
def P15619728977055377725.Spec : Prop :=
  ∀ n, P15619728977055377725.a n = A378231 (n + 1)

end A378231

/-! ## A378231.P3419037954628639022

`2*A379481(n+1)-A379482(n+1)`
-/

namespace A378231.P3419037954628639022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379481 (n + 1) - A379482 (n + 1)

end

end A378231.P3419037954628639022

namespace A378231

/-- `2*A379481(n+1)-A379482(n+1)` -/
def P3419037954628639022.Spec : Prop :=
  ∀ n, P3419037954628639022.a n = A378231 (n + 1)

end A378231

/-! ## A378231.P10544237412957238006

`A377879(A045965(n+1))`
-/

namespace A378231.P10544237412957238006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377879 (A045965 (n + 1)).toNat

end

end A378231.P10544237412957238006

namespace A378231

/-- `A377879(A045965(n+1))` -/
def P10544237412957238006.Spec : Prop :=
  ∀ n, P10544237412957238006.a n = A378231 (n + 1)

end A378231

/-! ## A378231.P6306375439193857008

`A344587(A000290(n+1))+A019590(n+5)`
-/

namespace A378231.P6306375439193857008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (A000290 (n + 1)).toNat + A019590 (n + 5)

end

end A378231.P6306375439193857008

namespace A378231

/-- `A344587(A000290(n+1))+A019590(n+5)` -/
def P6306375439193857008.Spec : Prop :=
  ∀ n, P6306375439193857008.a n = A378231 (n + 1)

end A378231

/-!
# A378234: From higher-order arithmetic progressions: Corrected version of A259461.

The programs for A378234, there is no canonical definition to state claims against.
-/

/-! ## A378234.P13261872370417896801

`A259461(lcm(n, ∑{d}[n+1, #%2]))`
-/

namespace A378234.P13261872370417896801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259461 (Nat.lcm n (∑ d ∈ Nat.divisors (f1 n), d % 2))

end

end A378234.P13261872370417896801

/-!
# A378235: Number of winning positions of Gordon Hamilton's Jumping Frogs game with single frogs, where the distance between the leftmost frog and the rightmost frog is equal to n.

The programs for A378235, there is no canonical definition to state claims against.
-/

/-! ## A378235.P13081049844668204839

`A239496(2*n+1)+A000196(A000108(n))`
-/

namespace A378235.P13081049844668204839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239496 (2 * n + 1) + A000196 (A000108 n).toNat

end

end A378235.P13081049844668204839

/-! ## A378235.P3155999790498173148

`A089401(A003065(n))`
-/

namespace A378235.P3155999790498173148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089401 (A003065 n).toNat

end

end A378235.P3155999790498173148

/-! ## A378235.P14173564649540464098

`A089401(A073031(n))`
-/

namespace A378235.P14173564649540464098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089401 (A073031 n).toNat

end

end A378235.P14173564649540464098

/-! ## A378235.P1930117739033721073

`A089401(A079971(n))`
-/

namespace A378235.P1930117739033721073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089401 (A079971 n).toNat

end

end A378235.P1930117739033721073

/-! ## A378235.P1880646729340698948

`A089401(A114138(n))`
-/

namespace A378235.P1880646729340698948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089401 (A114138 n).toNat

end

end A378235.P1880646729340698948

/-!
# A378236: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n,r) * binomial(n+2*r+k,n)/(n+2*r+k) for k > 0.

The programs for A378236, there is no canonical definition to state claims against.
-/

/-! ## A378236.P6795996468700554703

`A330709(2*A266488(n))`
-/

namespace A378236.P6795996468700554703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (2 * A266488 n).toNat

end

end A378236.P6795996468700554703

/-! ## A378236.P12489439973472322719

`A110510(A061579(n)%A119242(n))`
-/

namespace A378236.P12489439973472322719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (Int.tmod (A061579 n) (A119242 n)).toNat

end

end A378236.P12489439973472322719

/-! ## A378236.P13450704454224735819

`A179651(A298362(n+1))*A182172(n)`
-/

namespace A378236.P13450704454224735819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (A298362 (n + 1)).toNat * A182172 n

end

end A378236.P13450704454224735819

/-! ## A378236.P5957220196754037166

`A361397(n)^A363561(A242532(n+1))`
-/

namespace A378236.P5957220196754037166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361397 n : ℚ) ^ (A363561 (A242532 (n + 1)).toNat : ℤ)

end

end A378236.P5957220196754037166

/-! ## A378236.P2147623919375934045

`A361397(n)^A122078(A122078(n+4))`
-/

namespace A378236.P2147623919375934045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361397 n : ℚ) ^ (A122078 (A122078 (n + 4)).toNat : ℤ)

end

end A378236.P2147623919375934045

/-!
# A378237: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n,r) * binomial(n+3*r+k,n)/(n+3*r+k) for k > 0.

The programs for A378237, there is no canonical definition to state claims against.
-/

/-! ## A378237.P6484973064959721859

`A112318(A339350(n))`
-/

namespace A378237.P6484973064959721859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A339350 n).toNat

end

end A378237.P6484973064959721859

/-! ## A378237.P12041098117806151295

`A112318(A381573(n))`
-/

namespace A378237.P12041098117806151295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A381573 n).toNat

end

end A378237.P12041098117806151295

/-! ## A378237.P17267130183927254621

`A373624(A378238(n))`
-/

namespace A378237.P17267130183927254621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373624 (A378238 n).toNat

end

end A378237.P17267130183927254621

/-! ## A378237.P8051131470872404451

`A012265(A266488(n))`
-/

namespace A378237.P8051131470872404451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A266488 n).toNat

end

end A378237.P8051131470872404451

/-! ## A378237.P16549630373973434400

`A341584(A395200(n))`
-/

namespace A378237.P16549630373973434400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341584 (A395200 n).toNat

end

end A378237.P16549630373973434400

/-!
# A378238: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n,r) * binomial(3*n+r+k,n)/(3*n+r+k) for k > 0.

The programs for A378238, there is no canonical definition to state claims against.
-/

/-! ## A378238.P5163317697277723125

`A087890(A325108(n+3))*A385062(n)`
-/

namespace A378238.P5163317697277723125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (A325108 (n + 3)).toNat * A385062 n

end

end A378238.P5163317697277723125

/-! ## A378238.P3485430135716898775

`A174231(A266488(n))`
-/

namespace A378238.P3485430135716898775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (A266488 n).toNat

end

end A378238.P3485430135716898775

/-! ## A378238.P608513093027814174

`∑{d}[A176129(n), A178867(#)]`
-/

namespace A378238.P608513093027814174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A178867 d

end

end A378238.P608513093027814174

/-! ## A378238.P13451373976179762111

`A266213(n)+A184944(A126736(n))`
-/

namespace A378238.P13451373976179762111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + A184944 (A126736 n).toNat

end

end A378238.P13451373976179762111

/-! ## A378238.P4011112286655481650

`A191932(A242464(n)+A228832(n))`
-/

namespace A378238.P4011112286655481650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (A242464 n + A228832 n).toNat

end

end A378238.P4011112286655481650

/-!
# A378239: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n,r) * binomial(2*n+2*r+k,n)/(2*n+2*r+k) for k > 0.

The programs for A378239, there is no canonical definition to state claims against.
-/

/-! ## A378239.P5998511401102054508

`A353591(A378238(n))`
-/

namespace A378239.P5998511401102054508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353591 (A378238 n).toNat

end

end A378239.P5998511401102054508

/-! ## A378239.P2144945541534409463

`A001222(A066117(n+1))*A362079(n)`
-/

namespace A378239.P2144945541534409463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066117 (n + 1)).toNat * A362079 n

end

end A378239.P2144945541534409463

/-! ## A378239.P12072147864836824732

`A103298(A394320(n))`
-/

namespace A378239.P12072147864836824732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A394320 n).toNat

end

end A378239.P12072147864836824732

/-! ## A378239.P10417280936812543489

`A157477(A362787(n))`
-/

namespace A378239.P10417280936812543489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A362787 n).toNat

end

end A378239.P10417280936812543489

/-! ## A378239.P10280228913301806253

`A119269(A109001(n))*A266213(n)`
-/

namespace A378239.P10280228913301806253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A109001 n).toNat * A266213 n

end

end A378239.P10280228913301806253

/-!
# A378240: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n,r) * binomial(3*n+3*r+k,n)/(3*n+3*r+k) for k > 0.

The programs for A378240, there is no canonical definition to state claims against.
-/

/-! ## A378240.P13685648263144195842

`A368506(C(n, A368504(n)))`
-/

namespace A378240.P13685648263144195842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368506 (Nat.choose n (A368504 n).toNat)

end

end A378240.P13685648263144195842

/-! ## A378240.P11185718776204480966

`A010101(A008949(n))*A290216(n)`
-/

namespace A378240.P11185718776204480966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010101 (A008949 n).toNat * A290216 n

end

end A378240.P11185718776204480966

/-! ## A378240.P18431798530947189494

`A129835(A122078(n)*A336534(n))`
-/

namespace A378240.P18431798530947189494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129835 (A122078 n * A336534 n).toNat

end

end A378240.P18431798530947189494

/-! ## A378240.P17169283735123932958

`A062760(A220264(n))*A362079(n)`
-/

namespace A378240.P17169283735123932958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (A220264 n).toNat * A362079 n

end

end A378240.P17169283735123932958

/-! ## A378240.P12234792282139710135

`C(A135383(A364113(n)), A370363(n))`
-/

namespace A378240.P12234792282139710135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A135383 (A364113 n).toNat).toNat (A370363 n).toNat

end

end A378240.P12234792282139710135

/-!
# A378241: Numbers of directed Hamiltonian cycles in the complete 4-partite graph K_{n,n,n,n}.

The programs for A378241, there is no canonical definition to state claims against.
-/

/-! ## A378241.P7318612031878604338

`2*A381326(n+1)`
-/

namespace A378241.P7318612031878604338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A381326 (n + 1)

end

end A378241.P7318612031878604338

/-!
# A378243: a(n) is the least k > 0 such that n belongs to a Fibonacci-like sequence starting with initial values A378242(i) and A378242(j) for some i, j <= n.

The programs for A378243, there is no canonical definition to state claims against.
-/

/-! ## A378243.P808810410611052937

`A095407(A074274(n+4)*A384175(n))`
-/

namespace A378243.P808810410611052937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A074274 (n + 4) * A384175 n).toNat

end

end A378243.P808810410611052937

/-!
# A378244: a(1) = 1, a(2) = 2, and for any n > 2, a(n) is the least number > a(n-1) that belongs to a unique Fibonacci-like sequence starting with two distinct earlier terms.

The programs for A378244, there is no canonical definition to state claims against.
-/

/-! ## A378244.P10402138819069945616

`A056239(A033472(n+1))+A005117(n+1)`
-/

namespace A378244.P10402138819069945616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A033472 (n + 1)).toNat + A005117 (n + 1)

end

end A378244.P10402138819069945616

/-!
# A378248: Number of sets of chess pieces whose collective material value adds to n.

The programs for A378248, the canonical program `A378248.P16323363356914607129` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378248 has offset 0).

The definition of A378248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378248.P16323363356914607129

`A029041(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A378248

/-- `A029041(n)+a(n-3)` -/
def P16323363356914607129.Spec : Prop :=
  ∀ n, P16323363356914607129.a n = A378248 n

theorem P16323363356914607129.correct : P16323363356914607129.Spec := by
  intro n
  simp only [A378248]

end A378248

/-!
# A378249: Least perfect power > prime(n).

The programs for A378249, there is no canonical definition to state claims against.
-/

/-! ## A378249.P12953684669626425335

`A074984(A000040(n+1))+A000040(n+1)`
-/

namespace A378249.P12953684669626425335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (A000040 (n + 1)).toNat + A000040 (n + 1)

end

end A378249.P12953684669626425335

/-! ## A378249.P11299045542445996443

`A074984(A008864(n+1))+A008864(n+1)`
-/

namespace A378249.P11299045542445996443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074984 (A008864 (n + 1)).toNat + A008864 (n + 1)

end

end A378249.P11299045542445996443

/-! ## A378249.P13406959333450063026

`A377783(n+1)+A074984(A377783(n+1))`
-/

namespace A378249.P13406959333450063026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377783 (n + 1) + A074984 (A377783 (n + 1)).toNat

end

end A378249.P13406959333450063026

/-! ## A378249.P17164299085596970445

`A378617(n)+a(n-1)` with `a(0)=4`
-/

namespace A378249.P17164299085596970445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A378617 n + a (n - 1)

end

end A378249.P17164299085596970445

/-! ## A378249.P3847163772124593988

`∑[A378617(a(3%n)+n)]` with `a(0)=4`
-/

namespace A378249.P3847163772124593988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A378617 (f1 (3 % n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378249.P3847163772124593988

/-!
# A378250: Perfect-powers x > 1 such that it is not possible to choose a prime y and a perfect-power z satisfying x > y > z.

The programs for A378250, there is no canonical definition to state claims against.
-/

/-! ## A378250.P1197754063376039871

`record[A378249(n+1)-char[1]]`
-/

namespace A378250.P1197754063376039871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378250.P1197754063376039871

/-! ## A378250.P8137460261834923841

`record[A378249(∏{p}[n+1, #]+1)]`
-/

namespace A378250.P8137460261834923841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (∏ p ∈ Nat.primeFactors (f2 n), p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378250.P8137460261834923841

/-! ## A378250.P2094015535478771608

`record[A378249(A022446(n))]`
-/

namespace A378250.P2094015535478771608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378250.P2094015535478771608

/-! ## A378250.P13764434374840122677

`record[A378249(A152271(n))]`
-/

namespace A378250.P13764434374840122677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378250.P13764434374840122677

/-! ## A378250.P14108388665380988775

`A378249(A378365(n+1))`
-/

namespace A378250.P14108388665380988775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (A378365 (n + 1)).toNat

end

end A378250.P14108388665380988775

/-! ## A378250.P12353966068212784606

`A378249(A377283(n+2))`
-/

namespace A378250.P12353966068212784606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (A377283 (n + 2)).toNat

end

end A378250.P12353966068212784606

/-! ## A378250.P14638503552407181711

`record[A378249(A134478(n))]`
-/

namespace A378250.P14638503552407181711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378249 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378250.P14638503552407181711

/-!
# A378251: Number of primes between consecutive perfect powers, zeros omitted.

The programs for A378251, there is no canonical definition to state claims against.
-/

/-! ## A378251.P12908093486564390216

`Δ[A377283(n+1)]`
-/

namespace A378251.P12908093486564390216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378251.P12908093486564390216

/-! ## A378251.P4472280081365719307

`A377283(n+2)-A377283(n+1)`
-/

namespace A378251.P4472280081365719307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377283 (n + 2) - A377283 (n + 1)

end

end A378251.P4472280081365719307

/-! ## A378251.P17831800282206402054

`Δ[A378365(n+1)]`
-/

namespace A378251.P17831800282206402054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378251.P17831800282206402054

/-! ## A378251.P10161671381214094182

`A378365(n+2)-A378365(n+1)`
-/

namespace A378251.P10161671381214094182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378365 (n + 2) - A378365 (n + 1)

end

end A378251.P10161671381214094182

/-!
# A378252: Least prime power > 2^n.

The programs for A378252, there is no canonical definition to state claims against.
-/

/-! ## A378252.P4946824083350157447

`A014210(n)-A000122(n²+7)`
-/

namespace A378252.P4946824083350157447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A000122 (n ^ 2 + 7)

end

end A378252.P4946824083350157447

/-! ## A378252.P12942538796497828600

`A014210(n)-A033759(A014688(3*(n+1)))`
-/

namespace A378252.P12942538796497828600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A033759 (A014688 (3 * (n + 1))).toNat

end

end A378252.P12942538796497828600

/-! ## A378252.P13814037164914906587

`A014210(n)-A151670(A161598(2*(n+2)))`
-/

namespace A378252.P13814037164914906587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A151670 (A161598 (2 * (n + 2))).toNat

end

end A378252.P13814037164914906587

/-! ## A378252.P1885547670755860268

`A014210(n)-A322335(A364255(2*n+3))`
-/

namespace A378252.P1885547670755860268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A322335 (A364255 (2 * n + 3)).toNat

end

end A378252.P1885547670755860268

/-! ## A378252.P5422415421021895560

`A014210(n)-A000045(n)*A185017(2*n+1)`
-/

namespace A378252.P5422415421021895560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - A000045 n * A185017 (2 * n + 1)

end

end A378252.P5422415421021895560

/-!
# A378253: Perfect powers p such that there are no other perfect powers between p and the least prime > p.

The programs for A378253, there is no canonical definition to state claims against.
-/

/-! ## A378253.P15243283445188985625

`record[A081676(A315828(n))]`
-/

namespace A378253.P15243283445188985625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A315828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378253.P15243283445188985625

/-! ## A378253.P14129945152259509643

`A378035(A378365(n+1))`
-/

namespace A378253.P14129945152259509643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378035 (A378365 (n + 1)).toNat

end

end A378253.P14129945152259509643

/-! ## A378253.P3770397756739745879

`A378035(A377283(n+2))`
-/

namespace A378253.P3770397756739745879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378035 (A377283 (n + 2)).toNat

end

end A378253.P3770397756739745879

/-! ## A378253.P12013686489458694526

`record[A081676(A000010(n+1))]`
-/

namespace A378253.P12013686489458694526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378253.P12013686489458694526

/-! ## A378253.P4294441664649895049

`record[A081676(A020639(n+1))]`
-/

namespace A378253.P4294441664649895049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378253.P4294441664649895049

/-! ## A378253.P2231642250047586217

`record[A081676(A025473(n+1))]`
-/

namespace A378253.P2231642250047586217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A025473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378253.P2231642250047586217

/-! ## A378253.P12767838403716794089

`record[A081676(A060685(n+1))]`
-/

namespace A378253.P12767838403716794089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A060685 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378253.P12767838403716794089

/-! ## A378253.P5770832197442058154

`record[A081676(A137826(n+1))]`
-/

namespace A378253.P5770832197442058154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A137826 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378253.P5770832197442058154

/-! ## A378253.P13741375210800095169

`record[A081676(A326140(n+1))]`
-/

namespace A378253.P13741375210800095169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A326140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378253.P13741375210800095169

/-! ## A378253.P15490999798202251066

`A081676(A378250(n+1)-1)`
-/

namespace A378253.P15490999798202251066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A378250 (n + 1) - 1).toNat

end

end A378253.P15490999798202251066

/-!
# A378254: Cogrowth sequence of the 20-element group C10 X C2 = .

The programs for A378254, there is no canonical definition to state claims against.
-/

/-! ## A378254.P13196746602746374267

`A007947(A212389(2*n))`
-/

namespace A378254.P13196746602746374267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A212389 (2 * n)).toNat

end

end A378254.P13196746602746374267

/-! ## A378254.P5342140151268233614

`A212389(∑{e}[A000302(n), #])`
-/

namespace A378254.P5342140151268233614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212389 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A378254.P5342140151268233614

/-! ## A378254.P12890037860306203086

`A212389(∏{e}[A000302(n), #])`
-/

namespace A378254.P12890037860306203086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212389 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A378254.P12890037860306203086

/-! ## A378254.P89210037242509384

`A212389(2*n)^A213217(n)`
-/

namespace A378254.P89210037242509384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212389 (2 * n) : ℚ) ^ (A213217 n : ℤ)

end

end A378254.P89210037242509384

/-! ## A378254.P815796227004847170

`A212389(2*n)^A260529(n)`
-/

namespace A378254.P815796227004847170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212389 (2 * n) : ℚ) ^ (A260529 n : ℤ)

end

end A378254.P815796227004847170

/-!
# A378255: G.f. A(x) satisfies A(x) = x + A(A(x)^2) + A(A(x)^3).

The programs for A378255, there is no canonical definition to state claims against.
-/

/-! ## A378255.P8376650203072285276

`A072912(A150818(n))`
-/

namespace A378255.P8376650203072285276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072912 (A150818 n).toNat

end

end A378255.P8376650203072285276

/-! ## A378255.P13767186119896961865

`A195120(A363555(n+1))`
-/

namespace A378255.P13767186119896961865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A363555 (n + 1)).toNat

end

end A378255.P13767186119896961865

/-! ## A378255.P2942733016315845979

`A194212(A324595(n)+2)`
-/

namespace A378255.P2942733016315845979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194212 (A324595 n + 2).toNat

end

end A378255.P2942733016315845979

/-!
# A378257: G.f. A(x) satisfies A(x*A(x) - x^3*A'(x)) = x^2.

The programs for A378257, there is no canonical definition to state claims against.
-/

/-! ## A378257.P4991052668912317177

`A058989(A004114(n))`
-/

namespace A378257.P4991052668912317177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058989 (A004114 n).toNat

end

end A378257.P4991052668912317177

/-! ## A378257.P17744019166163668897

`A058989(A281489(n))`
-/

namespace A378257.P17744019166163668897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058989 (A281489 n).toNat

end

end A378257.P17744019166163668897

/-! ## A378257.P7002894771325629988

`A058989(A000700(n²))`
-/

namespace A378257.P7002894771325629988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058989 (A000700 (n ^ 2)).toNat

end

end A378257.P7002894771325629988

/-!
# A378258: G.f. satisfies A(x) = B(x) + 5*A(x)^2 where B(A(x) - A(x)^2) = x.

The programs for A378258, there is no canonical definition to state claims against.
-/

/-! ## A378258.P16569180672493456960

`A022838(A034017(a(n-1)+2))` with `a(0)=1, a(1)=3`
-/

namespace A378258.P16569180672493456960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A022838 (A034017 (a (n - 1) + 2).toNat).toNat

end

end A378258.P16569180672493456960

/-!
# A378259: G.f. satisfies A(x) = Sum_{n>=1} A(x^(2*n))/A(x^n), with A(0) = 0 and A'(0) = 1.

The programs for A378259, there is no canonical definition to state claims against.
-/

/-! ## A378259.P17549503786938022296

`A154446(∑[A086331(n)])`
-/

namespace A378259.P17549503786938022296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378259.P17549503786938022296

/-!
# A378262: G.f. satisfies A(x) = Sum_{n>=1} 2^(n-1) * A(x^(2*n))/A(x^n), with A(0) = 0 and A'(0) = 1.

The programs for A378262, there is no canonical definition to state claims against.
-/

/-! ## A378262.P134600196952152110

`A357574(∑[A052547(n)])+1`
-/

namespace A378262.P134600196952152110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A378262.P134600196952152110

/-! ## A378262.P12934942339932456621

`A328596(A001405(n))+A185216(n)`
-/

namespace A378262.P12934942339932456621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (A001405 n).toNat + A185216 n

end

end A378262.P12934942339932456621

/-! ## A378262.P15614915053484619401

`A006951(n)-A174903(A078789(n))`
-/

namespace A378262.P15614915053484619401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006951 n - A174903 (A078789 n).toNat

end

end A378262.P15614915053484619401

/-! ## A378262.P4562124455889251774

`A006951(n)-A249421(A011782(n))`
-/

namespace A378262.P4562124455889251774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006951 n - A249421 (A011782 n).toNat

end

end A378262.P4562124455889251774

/-!
# A378263: G.f. A(x) satisfies A(x)^3 = A( x^3 + 3*x*A(x)^3 + 3*A(x)^5 ).

The programs for A378263, there is no canonical definition to state claims against.
-/

/-! ## A378263.P8896419254871651725

`A001003(n)-A201734(A309861(n))`
-/

namespace A378263.P8896419254871651725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - A201734 (A309861 n).toNat

end

end A378263.P8896419254871651725

/-! ## A378263.P10822435692214464133

`A335280(A001003(n))`
-/

namespace A378263.P10822435692214464133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335280 (A001003 n).toNat

end

end A378263.P10822435692214464133

/-! ## A378263.P15802069559279884799

`A194239(A006318(n))+1`
-/

namespace A378263.P15802069559279884799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194239 (A006318 n).toNat + 1

end

end A378263.P15802069559279884799

/-! ## A378263.P2475078622582126383

`A196438(A001003(n)+2)`
-/

namespace A378263.P2475078622582126383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196438 (A001003 n + 2).toNat

end

end A378263.P2475078622582126383

/-!
# A378264: G.f. A(x) satisfies 1/x = Sum_{n=-oo..+oo} A(x)^n * (1 + A(x)^n)^(n+1).

The programs for A378264, there is no canonical definition to state claims against.
-/

/-! ## A378264.P3091932666471564799

`A006013(A038106(n+1))+A001906(n)`
-/

namespace A378264.P3091932666471564799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 (A038106 (n + 1)).toNat + A001906 n

end

end A378264.P3091932666471564799

/-!
# A378266: Number of subgroups of S_n isomorphic to S_3 up to conjugacy, where S_n is the n-th symmetric group.

The programs for A378266, there is no canonical definition to state claims against.
-/

/-! ## A378266.P15889009397531011564

`∑[A025796(n+1)]-A004526(n+1)`
-/

namespace A378266.P15889009397531011564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 (n + 1)

end

end A378266.P15889009397531011564

/-! ## A378266.P14990208599027927680

`A353488(A185064(n+1))+A333601(n)`
-/

namespace A378266.P14990208599027927680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353488 (A185064 (n + 1)).toNat + A333601 n

end

end A378266.P14990208599027927680

/-! ## A378266.P8976185846771129220

`A086071(A034386(n))+ceil(C(n, 2)/3)`
-/

namespace A378266.P8976185846771129220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086071 (A034386 n).toNat + ⌈(Nat.choose n 2 : ℚ) / 3⌉

end

end A378266.P8976185846771129220

/-! ## A378266.P11016007117657642075

`A021913(A014378(n))+A007997(n+3)`
-/

namespace A378266.P11016007117657642075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A014378 n).toNat + A007997 (n + 3)

end

end A378266.P11016007117657642075

/-!
# A378267: Numbers k that have a record number of common divisors with sigma(k).

The programs for A378267, there is no canonical definition to state claims against.
-/

/-! ## A378267.P17668591200978127193

`filter[A216793(n+1), A359824(#)]`
-/

namespace A378267.P17668591200978127193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A378267.P17668591200978127193

/-! ## A378267.P2239941801993279435

`∩[A246454(n+1), A279894(n+1)]`
-/

namespace A378267.P2239941801993279435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378267.P2239941801993279435

/-!
# A378271: Number of partitions of 1 into {1/1^3, 1/2^3, 1/3^3, ..., 1/n^3}.

The programs for A378271, there is no canonical definition to state claims against.
-/

/-! ## A378271.P13471525136579407829

`∑[A078898(A363183(n))]`
-/

namespace A378271.P13471525136579407829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A363183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378271.P13471525136579407829

/-! ## A378271.P17697884381304578270

`A348256(A325105(n))`
-/

namespace A378271.P17697884381304578270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348256 (A325105 n).toNat

end

end A378271.P17697884381304578270

/-!
# A378272: The smallest number whose divisor set mod p has p elements with p = prime(n).

The programs for A378272, there is no canonical definition to state claims against.
-/

/-! ## A378272.P12520197970191297631

`A280171(A000040(n+1))`
-/

namespace A378272.P12520197970191297631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280171 (A000040 (n + 1)).toNat

end

end A378272.P12520197970191297631

/-! ## A378272.P15066115196845636454

`lcm(A000040(n+1), A140539(A006093(n+1)+1))`
-/

namespace A378272.P15066115196845636454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (n + 1)) (A140539 (A006093 (n + 1) + 1).toNat)

end

end A378272.P15066115196845636454

/-! ## A378272.P8245676857587102081

`lcm(A014692(n+1)+n, A140539(A000040(n+1)))`
-/

namespace A378272.P8245676857587102081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014692 (n + 1) + (n : ℤ)) (A140539 (A000040 (n + 1)).toNat)

end

end A378272.P8245676857587102081

/-! ## A378272.P15208182110424555344

`A001748(n+1)/3*A140539(A008864(n+1)-1)`
-/

namespace A378272.P15208182110424555344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 * (A140539 (A008864 (n + 1) - 1).toNat : ℚ)

end

end A378272.P15208182110424555344

/-! ## A378272.P15205085610273877938

`A001748(n+1)/3*A140539(A001748(n+1)/3)`
-/

namespace A378272.P15205085610273877938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 * (A140539 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat : ℚ)

end

end A378272.P15205085610273877938

/-!
# A378273: Number of subgroups of S_n isomorphic to S_4 up to conjugacy, where S_n is the n-th symmetric group.

The programs for A378273, there is no canonical definition to state claims against.
-/

/-! ## A378273.P1467429120098816374

`A379678(A004833(n+3))+A182699(n+1)`
-/

namespace A378273.P1467429120098816374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379678 (A004833 (n + 3)).toNat + A182699 (n + 1)

end

end A378273.P1467429120098816374

/-! ## A378273.P14382094003860624597

`A000837(n)-A325678(A325684(n))`
-/

namespace A378273.P14382094003860624597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n - A325678 (A325684 n).toNat

end

end A378273.P14382094003860624597

/-!
# A378278: Cogrowth sequence of the 20-element Frobenius group Frob20 = .

The programs for A378278, there is no canonical definition to state claims against.
-/

/-! ## A378278.P18040172563500548374

`A121262(n)+A002266(A038503(n))`
-/

namespace A378278.P18040172563500548374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + A002266 (A038503 n).toNat

end

end A378278.P18040172563500548374

/-!
# A378279: Number of subgroups of S_n isomorphic to S_3, where S_n is the n-th symmetric group.

The programs for A378279, there is no canonical definition to state claims against.
-/

/-! ## A378279.P2091805730295034740

`(A281097(n+1)-A000085(n+1))/6`
-/

namespace A378279.P2091805730295034740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281097 (n + 1) - A000085 (n + 1) : ℚ) / 6

end

end A378279.P2091805730295034740

/-! ## A378279.P3845508979188916922

`A373070((2*n-1)²)`
-/

namespace A378279.P3845508979188916922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373070 (((2 * n : ℤ) - 1) ^ 2).toNat

end

end A378279.P3845508979188916922

/-!
# A378280: Number of subgroups of S_n isomorphic to S_4, where S_n is the n-th symmetric group.

The programs for A378280, there is no canonical definition to state claims against.
-/

/-! ## A378280.P455835675073185908

`floor(A134264(n!)/3)`
-/

namespace A378280.P455835675073185908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134264 (Nat.factorial n) : ℚ) / 3⌋

end

end A378280.P455835675073185908

/-! ## A378280.P8762940325321280735

`A260316(A134264(n!))`
-/

namespace A378280.P8762940325321280735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 (A134264 (Nat.factorial n)).toNat

end

end A378280.P8762940325321280735

/-! ## A378280.P15450132672641137862

`A353279(A183088(n+1))`
-/

namespace A378280.P15450132672641137862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353279 (A183088 (n + 1)).toNat

end

end A378280.P15450132672641137862

/-!
# A378281: Number of subgroups of S_n isomorphic to S_5, where S_n is the n-th symmetric group.

The programs for A378281, there is no canonical definition to state claims against.
-/

/-! ## A378281.P1044048383145061718

`filter[A199891(2*n+1), A058840(#)]`
-/

namespace A378281.P1044048383145061718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199891 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A058840 (f1 j).toNat = 1) n)

end

end A378281.P1044048383145061718

/-! ## A378281.P8394840562322836662

`A276798(A337038(n))-A073941(n+1)`
-/

namespace A378281.P8394840562322836662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A337038 n).toNat - A073941 (n + 1)

end

end A378281.P8394840562322836662

/-!
# A378282: Irregular triangular T: (row 1) = (1); (row n+1) = inverse runlength sequence of row n, starting with 2 if r = 3k for some k, and 1 otherwise. See Comments.

The programs for A378282, there is no canonical definition to state claims against.
-/

/-! ## A378282.P11404303687326046965

`A026606(A161141(n+1))`
-/

namespace A378282.P11404303687326046965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026606 (A161141 (n + 1)).toNat

end

end A378282.P11404303687326046965

/-! ## A378282.P2049503017557004136

`A214211(or(A000217(n), A160420(2*n+3)))`
-/

namespace A378282.P2049503017557004136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214211 (Int.lor (A000217 n) (A160420 (2 * n + 3))).toNat

end

end A378282.P2049503017557004136

/-! ## A378282.P2504452115282781723

`A026465(lcm(A000005(n+1), A282032(3*n+4)))`
-/

namespace A378282.P2504452115282781723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (Int.lcm (A000005 (n + 1)) (A282032 (3 * n + 4)))

end

end A378282.P2504452115282781723

/-! ## A378282.P17809718087719662190

`gcd(2, A080577(A215052(n+6)))`
-/

namespace A378282.P17809718087719662190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A080577 (A215052 (n + 6)).toNat)

end

end A378282.P17809718087719662190

/-! ## A378282.P677646848139809561

`A000002(A078122(n)+A014473(2*n))`
-/

namespace A378282.P677646848139809561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078122 n + A014473 (2 * n)).toNat

end

end A378282.P677646848139809561

/-!
# A378283: Unique sequence s starting with 1,1,2,1 such that if r(r(r(s) = s and r(s) != s and r(r(s) != s, where r(#) denotes the runlength sequence of a sequence #.

The programs for A378283, there is no canonical definition to state claims against.
-/

/-! ## A378283.P2734586875594972652

`A025142(A096582(n+1)+49)`
-/

namespace A378283.P2734586875594972652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (A096582 (n + 1) + 49).toNat

end

end A378283.P2734586875594972652

/-!
# A378284: Unique sequence s starting with 1,2,1 such that if r(r(r(s) = s and r(s) != s and r(r(s) != s, where r(#) denotes the runlength sequence of a sequence #.

The programs for A378284, there is no canonical definition to state claims against.
-/

/-! ## A378284.P7829090991565951214

`gcd(A049710(n+5), A069843(A274843(n)))`
-/

namespace A378284.P7829090991565951214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049710 (n + 5)) (A069843 (A274843 n).toNat)

end

end A378284.P7829090991565951214

/-!
# A378285: Unique sequence s starting with 2,1 such that if r(r(r(s))) = s and r(s) != s and r(r(s)) != s, where r(#) denotes the runlength sequence of a sequence #.

The programs for A378285, there is no canonical definition to state claims against.
-/

/-! ## A378285.P12774347698834057469

`A025143(A089186(n+1))`
-/

namespace A378285.P12774347698834057469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025143 (A089186 (n + 1)).toNat

end

end A378285.P12774347698834057469

/-! ## A378285.P3135081828661843705

`A025143(A178914(n+1))`
-/

namespace A378285.P3135081828661843705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025143 (A178914 (n + 1)).toNat

end

end A378285.P3135081828661843705

/-! ## A378285.P13448624708257176072

`A270641(A135600(n+1)+4)`
-/

namespace A378285.P13448624708257176072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270641 (A135600 (n + 1) + 4).toNat

end

end A378285.P13448624708257176072

/-!
# A378286: a(n) = number of terms in row n of the array A378282.

The programs for A378286, there is no canonical definition to state claims against.
-/

/-! ## A378286.P9491743022426835544

`A178786(A349053(n)+A302835(n))`
-/

namespace A378286.P9491743022426835544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A349053 n + A302835 n).toNat

end

end A378286.P9491743022426835544

/-! ## A378286.P9175227780500555686

`A000196(A349053(n)+A071894(n+1))`
-/

namespace A378286.P9175227780500555686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A349053 n + A071894 (n + 1)).toNat

end

end A378286.P9175227780500555686

/-! ## A378286.P6924895890895418099

`A204562(A097117(n))`
-/

namespace A378286.P6924895890895418099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A097117 n).toNat

end

end A378286.P6924895890895418099

/-! ## A378286.P545868075173042546

`A204560(A291930(n))`
-/

namespace A378286.P545868075173042546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A291930 n).toNat

end

end A378286.P545868075173042546

/-! ## A378286.P2252511670459722407

`A204560(A189588(n+1))`
-/

namespace A378286.P2252511670459722407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A189588 (n + 1)).toNat

end

end A378286.P2252511670459722407

/-!
# A378290: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(n+2*r+k,r) * binomial(r,n-r)/(n+2*r+k) for k > 0.

The programs for A378290, there is no canonical definition to state claims against.
-/

/-! ## A378290.P1829843615875167658

`A123580(A385061(n))`
-/

namespace A378290.P1829843615875167658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A385061 n).toNat

end

end A378290.P1829843615875167658

/-! ## A378290.P15679486134727092871

`A123580(A397000(n+1))`
-/

namespace A378290.P15679486134727092871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A397000 (n + 1)).toNat

end

end A378290.P15679486134727092871

/-! ## A378290.P13021131221343135695

`or(A010815(A086885(n+3)), A378323(n))`
-/

namespace A378290.P13021131221343135695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 (A086885 (n + 3)).toNat) (A378323 n)

end

end A378290.P13021131221343135695

/-! ## A378290.P14807247547716013648

`A378323(n)+A025469(A379438(n))`
-/

namespace A378290.P14807247547716013648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378323 n + A025469 (A379438 n).toNat

end

end A378290.P14807247547716013648

/-! ## A378290.P17288991480906555326

`A378323(n)+A265246(A174504(n))`
-/

namespace A378290.P17288991480906555326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378323 n + A265246 (A174504 n).toNat

end

end A378290.P17288991480906555326

/-!
# A378292: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,0) = 0^n and T(n,k) = k * Sum_{r=0..n} binomial(2*n+k,r) * binomial(r,n-r)/(2*n+k) for k > 0.

The programs for A378292, there is no canonical definition to state claims against.
-/

/-! ## A378292.P10362996707206067930

`A362079(n)+A185274(A208814(n+1))`
-/

namespace A378292.P10362996707206067930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 n + A185274 (A208814 (n + 1)).toNat

end

end A378292.P10362996707206067930

/-! ## A378292.P3086687729431060645

`A353477(A301678(n))+A037916(2^A378289(n))`
-/

namespace A378292.P3086687729431060645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (A301678 n).toNat + A037916 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378289 n : ℤ))).toNat

end

end A378292.P3086687729431060645

/-! ## A378292.P15967473050418028068

`A353477(A182908(n+1))+A037916(2^A378289(n))`
-/

namespace A378292.P15967473050418028068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353477 (A182908 (n + 1)).toNat + A037916 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A378289 n : ℤ))).toNat

end

end A378292.P15967473050418028068

/-! ## A378292.P973847951879943926

`A060475(n)%A103324(A123384(n))`
-/

namespace A378292.P973847951879943926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060475 n) (A103324 (A123384 n).toNat)

end

end A378292.P973847951879943926

/-! ## A378292.P2282346766618006212

`and(A002145(A001405(n)), A394047(n))`
-/

namespace A378292.P2282346766618006212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002145 (A001405 n).toNat) (A394047 n)

end

end A378292.P2282346766618006212

/-!
# A378294: Nonnegative norms of ideals in Q(sqrt(10), sqrt(26)).

The programs for A378294, there is no canonical definition to state claims against.
-/

/-! ## A378294.P825144751399333635

`A001481(lt[A340953(n+8), A210000(n)])`
-/

namespace A378294.P825144751399333635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340953 (n + 8)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A378294.P825144751399333635

/-! ## A378294.P12719122699377608107

`lt[A002828(n), A002828(A058331(3*n+1))]`
-/

namespace A378294.P12719122699377608107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A058331 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378294.P12719122699377608107

/-!
# A378295: Prime norms of ideals in Q(sqrt(10), sqrt(26)).

The programs for A378295, there is no canonical definition to state claims against.
-/

/-! ## A378295.P10602120261665770109

`∩[A035262(n+1), A038879(n+1)]`
-/

namespace A378295.P10602120261665770109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378295.P10602120261665770109

/-! ## A378295.P6491934877778623110

`∩[A035262(n+1), A038945(n+1)]`
-/

namespace A378295.P6491934877778623110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378295.P6491934877778623110

/-! ## A378295.P12335091171126637559

`∩[A038879(n+1), A038899(n+1)]`
-/

namespace A378295.P12335091171126637559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378295.P12335091171126637559

/-! ## A378295.P11758054207520107510

`∩[A038879(n+1), A038945(n+1)]`
-/

namespace A378295.P11758054207520107510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378295.P11758054207520107510

/-! ## A378295.P8986685959833127360

`∩[A038899(n+1), A038945(n+1)]`
-/

namespace A378295.P8986685959833127360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378295.P8986685959833127360

/-! ## A378295.P16254182248586284988

`∩[A038899(n+1), A391367(n+1)]`
-/

namespace A378295.P16254182248586284988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378295.P16254182248586284988

/-! ## A378295.P12616980902744053635

`∩[A038945(n+1), A391367(n+1)]`
-/

namespace A378295.P12616980902744053635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378295.P12616980902744053635

/-!
# A378296: Number of cyclic edge cuts in the n-ladder graph.

The programs for A378296, there is no canonical definition to state claims against.
-/

/-! ## A378296.P10663640916624541487

`A130353(A326451(n²))`
-/

namespace A378296.P10663640916624541487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130353 (A326451 (n ^ 2)).toNat

end

end A378296.P10663640916624541487

/-! ## A378296.P16048626902164881927

`A079692(A305323(n)+3)`
-/

namespace A378296.P16048626902164881927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079692 (A305323 n + 3).toNat

end

end A378296.P16048626902164881927

/-!
# A378297: Squarefree semiprimes k that remain squarefree semiprimes for exactly two iterations of the map k -> 2*k+1.

The programs for A378297, there is no canonical definition to state claims against.
-/

/-! ## A378297.P6395140819178729339

`∩[A084997(n+1), A133123(n+1)]`
-/

namespace A378297.P6395140819178729339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378297.P6395140819178729339

/-! ## A378297.P14515044940054956788

`∩[A084997(n+1), A177222(n+1)]`
-/

namespace A378297.P14515044940054956788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378297.P14515044940054956788

/-!
# A378298: Number of solutions that satisfy the congruence: i^2 == j^2 (mod n) with 1 <= i < j <= n.

The programs for A378298, the canonical program `A378298.P155601813315861815` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378298 has offset 1).

The definition of A378298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378298.P155601813315861815

`(A062803(n+1)-(n+1))/2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A378298

/-- `(A062803(n+1)-(n+1))/2` -/
def P155601813315861815.Spec : Prop :=
  ∀ n, P155601813315861815.a n = (A378298 (n + 1) : ℚ)

end A378298

/-! ## A378298.P8672933856234995552

`A004526(A062803(n+1)-n)`
-/

namespace A378298.P8672933856234995552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A062803 (n + 1) - (n : ℤ)).toNat

end

end A378298.P8672933856234995552

namespace A378298

/-- `A004526(A062803(n+1)-n)` -/
def P8672933856234995552.Spec : Prop :=
  ∀ n, P8672933856234995552.a n = A378298 (n + 1)

end A378298

/-! ## A378298.P15981845921710097244

`A123108(A062803(n+1)-n)`
-/

namespace A378298.P15981845921710097244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A062803 (n + 1) - (n : ℤ)).toNat

end

end A378298.P15981845921710097244

namespace A378298

/-- `A123108(A062803(n+1)-n)` -/
def P15981845921710097244.Spec : Prop :=
  ∀ n, P15981845921710097244.a n = A378298 (n + 1)

end A378298

/-! ## A378298.P17109777014080127924

`A354280(A062803(n+1)-n)`
-/

namespace A378298.P17109777014080127924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354280 (A062803 (n + 1) - (n : ℤ)).toNat

end

end A378298.P17109777014080127924

namespace A378298

/-- `A354280(A062803(n+1)-n)` -/
def P17109777014080127924.Spec : Prop :=
  ∀ n, P17109777014080127924.a n = A378298 (n + 1)

end A378298

/-! ## A378298.P5612353214236450036

`A026741(A062803(n+1)-(n+1))`
-/

namespace A378298.P5612353214236450036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A062803 (n + 1) - (n + 1 : ℤ)).toNat

end

end A378298.P5612353214236450036

namespace A378298

/-- `A026741(A062803(n+1)-(n+1))` -/
def P5612353214236450036.Spec : Prop :=
  ∀ n, P5612353214236450036.a n = A378298 (n + 1)

end A378298

/-! ## A378298.P9999926931546478038

`A026741(A327767(n+1)*A332794(n+1)-(n+1))`
-/

namespace A378298.P9999926931546478038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A327767 (n + 1) * A332794 (n + 1) - (n + 1 : ℤ)).toNat

end

end A378298.P9999926931546478038

namespace A378298

/-- `A026741(A327767(n+1)*A332794(n+1)-(n+1))` -/
def P9999926931546478038.Spec : Prop :=
  ∀ n, P9999926931546478038.a n = A378298 (n + 1)

end A378298

/-! ## A378298.P14987519554700527447

`A026741(A366561(∑[n+1])-(n+1))`
-/

namespace A378298.P14987519554700527447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A366561 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)).toNat

end

end A378298.P14987519554700527447

namespace A378298

/-- `A026741(A366561(∑[n+1])-(n+1))` -/
def P14987519554700527447.Spec : Prop :=
  ∀ n, P14987519554700527447.a n = A378298 (n + 1)

end A378298

/-!
# A378299: Read the binary representation of n from the most to least significant bit then perform a cumulative XOR and store by reading from least to most significant bit.

The programs for A378299, the canonical program `A378299.P15957382925163367627` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378299 has offset 0).

The definition of A378299 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, A030101, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378299.P15957382925163367627

`A006068(A030101(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378299

/-- `A006068(A030101(n))` -/
def P15957382925163367627.Spec : Prop :=
  ∀ n, P15957382925163367627.a n = A378299 n

theorem P15957382925163367627.correct : P15957382925163367627.Spec := by
  intro n
  simp only [A378299]

end A378299

/-! ## A378299.P4030597128582149615

`A006068(n-A055945(n))`
-/

namespace A378299.P4030597128582149615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 ((n : ℤ) - A055945 n).toNat

end

end A378299.P4030597128582149615

namespace A378299

/-- `A006068(n-A055945(n))` -/
def P4030597128582149615.Spec : Prop :=
  ∀ n, P4030597128582149615.a n = A378299 n

end A378299

/-! ## A378299.P17413127016668774902

`A006068(A055944(n)-n)`
-/

namespace A378299.P17413127016668774902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A055944 n - (n : ℤ)).toNat

end

end A378299.P17413127016668774902

namespace A378299

/-- `A006068(A055944(n)-n)` -/
def P17413127016668774902.Spec : Prop :=
  ∀ n, P17413127016668774902.a n = A378299 n

theorem P17413127016668774902.correct : P17413127016668774902.Spec := by
  intro n
  simp only [A378299, Nat.add_sub_cancel, A378299.P17413127016668774902.a, A378299.P15957382925163367627.a, A006068, A006068.P16534033749009019403.a, A030101, A030101.P16184294017372777612.a, A055944, A055944.P9824612390251619605.a, A010060, A010060.P3080921269106500717.a, A055945, A055945.P5963763732554067333.a, A265263, A265263.P13560857298709796040.a, A377404, A377404.P15784403255783113757.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A038572, A038572.P9289042872142352092.a, A066194, A066194.P17197319264784136366.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378299

/-! ## A378299.P13749621577723388977

`A006068(xor(n, A175919(n)))`
-/

namespace A378299.P13749621577723388977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.xor (n : ℤ) (A175919 n)).toNat

end

end A378299.P13749621577723388977

namespace A378299

/-- `A006068(xor(n, A175919(n)))` -/
def P13749621577723388977.Spec : Prop :=
  ∀ n, P13749621577723388977.a n = A378299 n

end A378299

/-! ## A378299.P4707564745745717695

`A006068(and(A003817(n), A048701(n)))`
-/

namespace A378299.P4707564745745717695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.land (A003817 n) (A048701 n)).toNat

end

end A378299.P4707564745745717695

namespace A378299

/-- `A006068(and(A003817(n), A048701(n)))` -/
def P4707564745745717695.Spec : Prop :=
  ∀ n, P4707564745745717695.a n = A378299 n

end A378299

/-! ## A378299.P1954271958821877353

`A006068(A145341(n+1)-A062383(n))`
-/

namespace A378299.P1954271958821877353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A145341 (n + 1) - A062383 n).toNat

end

end A378299.P1954271958821877353

namespace A378299

/-- `A006068(A145341(n+1)-A062383(n))` -/
def P1954271958821877353.Spec : Prop :=
  ∀ n, P1954271958821877353.a n = A378299 n

end A378299

/-! ## A378299.P6062869809933577850

`A292600(2*A030101(n))`
-/

namespace A378299.P6062869809933577850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A030101 n).toNat

end

end A378299.P6062869809933577850

namespace A378299

/-- `A292600(2*A030101(n))` -/
def P6062869809933577850.Spec : Prop :=
  ∀ n, P6062869809933577850.a n = A378299 n

end A378299

/-! ## A378299.P4773947230356191931

`A006068(A059893(2*n+1)-A059894(2*n+1))`
-/

namespace A378299.P4773947230356191931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A059893 (2 * n + 1) - A059894 (2 * n + 1)).toNat

end

end A378299.P4773947230356191931

namespace A378299

/-- `A006068(A059893(2*n+1)-A059894(2*n+1))` -/
def P4773947230356191931.Spec : Prop :=
  ∀ n, P4773947230356191931.a n = A378299 n

end A378299

