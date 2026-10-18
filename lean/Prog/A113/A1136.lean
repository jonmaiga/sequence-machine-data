import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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

/-!
# A113601: Intersection of A002144 and A005098.

The programs for A113601, the canonical program `A113601.P12275914542053684162` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113601 has offset 1).

The definition of A113601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113601.P12275914542053684162

`p?[floor(A142399(n+1)/4)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113601

/-- `p?[floor(A142399(n+1)/4)]` -/
def P12275914542053684162.Spec : Prop :=
  ∀ n, P12275914542053684162.a n = A113601 (n + 1)

theorem P12275914542053684162.correct : P12275914542053684162.Spec := by
  intro n
  simp only [A113601, Nat.add_sub_cancel]

end A113601

/-! ## A113601.P3836360511544115604

`∩[A023212(n+1), A068228(n+1)]`
-/

namespace A113601.P3836360511544115604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P3836360511544115604

namespace A113601

/-- `∩[A023212(n+1), A068228(n+1)]` -/
def P3836360511544115604.Spec : Prop :=
  ∀ n, (P3836360511544115604.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P11229334094516047312

`∩[A068228(n+1), A075521(n+1)]`
-/

namespace A113601.P11229334094516047312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P11229334094516047312

namespace A113601

/-- `∩[A068228(n+1), A075521(n+1)]` -/
def P11229334094516047312.Spec : Prop :=
  ∀ n, (P11229334094516047312.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P16597275179807093341

`4*A112559(n+1)+1`
-/

namespace A113601.P16597275179807093341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A112559 (n + 1) + 1

end

end A113601.P16597275179807093341

namespace A113601

/-- `4*A112559(n+1)+1` -/
def P16597275179807093341.Spec : Prop :=
  ∀ n, P16597275179807093341.a n = A113601 (n + 1)

end A113601

/-! ## A113601.P5930778107078850762

`∩[A023212(n+1), A351537(n+1)]`
-/

namespace A113601.P5930778107078850762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P5930778107078850762

namespace A113601

/-- `∩[A023212(n+1), A351537(n+1)]` -/
def P5930778107078850762.Spec : Prop :=
  ∀ n, (P5930778107078850762.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P13350171048024622486

`∩[A075521(n+1), A351537(n+1)]`
-/

namespace A113601.P13350171048024622486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P13350171048024622486

namespace A113601

/-- `∩[A075521(n+1), A351537(n+1)]` -/
def P13350171048024622486.Spec : Prop :=
  ∀ n, (P13350171048024622486.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P10091694555142644036

`∩[A023212(n+1), A354467(n+1)]`
-/

namespace A113601.P10091694555142644036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P10091694555142644036

namespace A113601

/-- `∩[A023212(n+1), A354467(n+1)]` -/
def P10091694555142644036.Spec : Prop :=
  ∀ n, (P10091694555142644036.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P13448219921039722424

`∩[A075521(n+1), A354467(n+1)]`
-/

namespace A113601.P13448219921039722424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P13448219921039722424

namespace A113601

/-- `∩[A075521(n+1), A354467(n+1)]` -/
def P13448219921039722424.Spec : Prop :=
  ∀ n, (P13448219921039722424.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P4821369735115107376

`p?[floor(A127589(n+1)/4)]`
-/

namespace A113601.P4821369735115107376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127589 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113601.P4821369735115107376

namespace A113601

/-- `p?[floor(A127589(n+1)/4)]` -/
def P4821369735115107376.Spec : Prop :=
  ∀ n, P4821369735115107376.a n = A113601 (n + 1)

end A113601

/-! ## A113601.P7466951437042744789

`∩[A023212(n+1), A097933(n+1)]`
-/

namespace A113601.P7466951437042744789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P7466951437042744789

namespace A113601

/-- `∩[A023212(n+1), A097933(n+1)]` -/
def P7466951437042744789.Spec : Prop :=
  ∀ n, (P7466951437042744789.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P11995307086133624076

`∩[A002144(n+1), A023212(n+1)]`
-/

namespace A113601.P11995307086133624076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P11995307086133624076

namespace A113601

/-- `∩[A002144(n+1), A023212(n+1)]` -/
def P11995307086133624076.Spec : Prop :=
  ∀ n, (P11995307086133624076.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P6003289560710925894

`∩[A002144(n+1), A075521(n+1)]`
-/

namespace A113601.P6003289560710925894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P6003289560710925894

namespace A113601

/-- `∩[A002144(n+1), A075521(n+1)]` -/
def P6003289560710925894.Spec : Prop :=
  ∀ n, (P6003289560710925894.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P16432570270680084291

`∩[A002313(n+1), A023212(n+1)]`
-/

namespace A113601.P16432570270680084291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P16432570270680084291

namespace A113601

/-- `∩[A002313(n+1), A023212(n+1)]` -/
def P16432570270680084291.Spec : Prop :=
  ∀ n, (P16432570270680084291.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P11340194703555913893

`∩[A002313(n+1), A075521(n+1)]`
-/

namespace A113601.P11340194703555913893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P11340194703555913893

namespace A113601

/-- `∩[A002313(n+1), A075521(n+1)]` -/
def P11340194703555913893.Spec : Prop :=
  ∀ n, (P11340194703555913893.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P12722327292505769412

`∩[A023212(n+1), A280084(n+1)]`
-/

namespace A113601.P12722327292505769412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P12722327292505769412

namespace A113601

/-- `∩[A023212(n+1), A280084(n+1)]` -/
def P12722327292505769412.Spec : Prop :=
  ∀ n, (P12722327292505769412.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P14620197021247957538

`∩[A075521(n+1), A280084(n+1)]`
-/

namespace A113601.P14620197021247957538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P14620197021247957538

namespace A113601

/-- `∩[A075521(n+1), A280084(n+1)]` -/
def P14620197021247957538.Spec : Prop :=
  ∀ n, (P14620197021247957538.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P5072309429801161588

`∩[A023212(n+1), A055025(n+1)]`
-/

namespace A113601.P5072309429801161588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P5072309429801161588

namespace A113601

/-- `∩[A023212(n+1), A055025(n+1)]` -/
def P5072309429801161588.Spec : Prop :=
  ∀ n, (P5072309429801161588.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P15856478302260208199

`∩[A055025(n+1), A075521(n+1)]`
-/

namespace A113601.P15856478302260208199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P15856478302260208199

namespace A113601

/-- `∩[A055025(n+1), A075521(n+1)]` -/
def P15856478302260208199.Spec : Prop :=
  ∀ n, (P15856478302260208199.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P10579495534062761550

`∩[A023212(n+1), A120960(n+1)]`
-/

namespace A113601.P10579495534062761550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P10579495534062761550

namespace A113601

/-- `∩[A023212(n+1), A120960(n+1)]` -/
def P10579495534062761550.Spec : Prop :=
  ∀ n, (P10579495534062761550.a n : ℤ) = A113601 (n + 1)

end A113601

/-! ## A113601.P5532993514028501629

`∩[A075521(n+1), A120960(n+1)]`
-/

namespace A113601.P5532993514028501629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113601.P5532993514028501629

namespace A113601

/-- `∩[A075521(n+1), A120960(n+1)]` -/
def P5532993514028501629.Spec : Prop :=
  ∀ n, (P5532993514028501629.a n : ℤ) = A113601 (n + 1)

end A113601

/-!
# A113602: Palindromes obtained as the absolute difference of corresponding digits of n and its digit reversal.

The programs for A113602, there is no canonical definition to state claims against.
-/

/-! ## A113602.P3293237437371892095

`A261424(A321536(n^A054899(n)))`
-/

namespace A113602.P3293237437371892095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A321536 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A054899 n : ℤ))).toNat).toNat

end

end A113602.P3293237437371892095

/-! ## A113602.P467430236724837523

`A261424(A321536(n^A059995(n)))`
-/

namespace A113602.P467430236724837523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A321536 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A059995 n : ℤ))).toNat).toNat

end

end A113602.P467430236724837523

/-! ## A113602.P14651291960721544921

`A261424(A338754(n))%A245520(n+1)`
-/

namespace A113602.P14651291960721544921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261424 (A338754 n).toNat) (A245520 (n + 1))

end

end A113602.P14651291960721544921

/-! ## A113602.P4171053809683739625

`A302801(A007954(A108773(n)-n))`
-/

namespace A113602.P4171053809683739625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (A007954 (A108773 n - (n : ℤ)).toNat).toNat

end

end A113602.P4171053809683739625

/-!
# A113603: Numbers obtained as the sum mod 10 of corresponding digits of n and its digit reversal.

The programs for A113603, there is no canonical definition to state claims against.
-/

/-! ## A113603.P14981963500879235624

`A056964(n+1)%A190771(A190783(n))`
-/

namespace A113603.P14981963500879235624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056964 (n + 1)) (A190771 (A190783 n).toNat)

end

end A113603.P14981963500879235624

/-! ## A113603.P658586962480578804

`A059707(A187829(n+1)+A121760(n+1))`
-/

namespace A113603.P658586962480578804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (A187829 (n + 1) + A121760 (n + 1)).toNat

end

end A113603.P658586962480578804

/-!
# A113605: a(1) = a(2) = a(3) = 1; a(n) = a(n-3) + gcd(a(n-1), a(n-2)).

The programs for A113605, the canonical program `A113605.P4791580281746213432` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113605 has offset 1).

The definition of A113605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113605.P4791580281746213432

`a(n-3)+gcd(a(n-1), a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113605

/-- `a(n-3)+gcd(a(n-1), a(n-2))` -/
def P4791580281746213432.Spec : Prop :=
  ∀ n, (P4791580281746213432.a n : ℤ) = A113605 (n + 1)

theorem P4791580281746213432.correct : P4791580281746213432.Spec := by
  intro n
  simp only [A113605, Nat.add_sub_cancel]

end A113605

/-!
# A113606: Binary power sequence: a(n) = a(n-1) + 2^a(n-2).

The programs for A113606, the canonical program `A113606.P5924623537925790216` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113606 has offset 1).

The definition of A113606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2^a(n-2)` (program `A113606.P5924623537925790216`, by `A113606.P5924623537925790216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113606.P5924623537925790216

`a(n-1)+2^a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113606

/-- `a(n-1)+2^a(n-2)` -/
def P5924623537925790216.Spec : Prop :=
  ∀ n, (P5924623537925790216.a n : ℤ) = A113606 (n + 1)

theorem P5924623537925790216.correct : P5924623537925790216.Spec := by
  intro n
  simp only [A113606, Nat.add_sub_cancel]

end A113606

/-! ## A113606.P18020849516284358282

`floor(a(n-1))-(-2)^a(n-2)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A113606.P18020849516284358282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (⌊a (n - 1)⌋ : ℝ) - (-2 : ℝ) ^ (a (n - 2))

end

end A113606.P18020849516284358282

namespace A113606

/-- `floor(a(n-1))-(-2)^a(n-2)` -/
def P18020849516284358282.Spec : Prop :=
  ∀ n, P18020849516284358282.a n = (A113606 (n + 1) : ℝ)

end A113606

/-! ## A113606.P17610445766565444627

`∑[2^a(n-2)*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A113606.P17610445766565444627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  2 ^ f1 (n - 2) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113606.P17610445766565444627

namespace A113606

/-- `∑[2^a(n-2)*a(n-1)]` -/
def P17610445766565444627.Spec : Prop :=
  ∀ n, (P17610445766565444627.a n : ℤ) = A113606 (n + 1)

end A113606

/-! ## A113606.P2591005427581790640

`2^a(n-2)-ceil(-a(n-1))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A113606.P2591005427581790640
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 : ℝ) ^ (a (n - 2)) - (⌈-a (n - 1)⌉ : ℝ)

end

end A113606.P2591005427581790640

namespace A113606

/-- `2^a(n-2)-ceil(-a(n-1))` -/
def P2591005427581790640.Spec : Prop :=
  ∀ n, P2591005427581790640.a n = (A113606 (n + 1) : ℝ)

end A113606

/-!
# A113607: An extended triangle of Eulerian coefficients A123125: f(x,n)=x^(n+1)+1+A123125(x,n).

The programs for A113607, there is no canonical definition to state claims against.
-/

/-! ## A113607.P18074578341089815205

`A123125(A083920(n))+a(A318274(n))-1` with `a(0)=1, a(1)=2`
-/

namespace A113607.P18074578341089815205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A123125 (A083920 n).toNat + a (A318274 n).toNat - 1

end

end A113607.P18074578341089815205

/-!
# A113608: Apply the map k -> A040115(k) repeatedly to n until a single digit is reached.

The programs for A113608, there is no canonical definition to state claims against.
-/

/-! ## A113608.P8918682001580501987

`A064834(n+10)%A106902(A278484(n)+1-n)`
-/

namespace A113608.P8918682001580501987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064834 (n + 10)) (A106902 (A278484 n + (1 - (n : ℤ))).toNat)

end

end A113608.P8918682001580501987

/-! ## A113608.P4308977332771249122

`A064834(n+10)%p?[A002522(n)]`
-/

namespace A113608.P4308977332771249122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064834 (n + 10)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A113608.P4308977332771249122

/-! ## A113608.P5305726482554102898

`A064834(n+10)+A000035(A278484(n))`
-/

namespace A113608.P5305726482554102898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (n + 10) + A000035 (A278484 n).toNat

end

end A113608.P5305726482554102898

/-! ## A113608.P8946015390338337694

`A064834(n+10)+A000007(A278484(n)+1)`
-/

namespace A113608.P8946015390338337694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (n + 10) + A000007 (A278484 n + 1).toNat

end

end A113608.P8946015390338337694

/-! ## A113608.P8810099983609565204

`A064834(n+10)^A062157(A278484(n)+1)`
-/

namespace A113608.P8810099983609565204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064834 (n + 10) : ℚ) ^ (A062157 (A278484 n + 1).toNat : ℤ)

end

end A113608.P8810099983609565204

/-! ## A113608.P14954382943751627761

`A007953(A064834(n+10))+A000038(A014430(n))`
-/

namespace A113608.P14954382943751627761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A064834 (n + 10)).toNat + A000038 (A014430 n).toNat

end

end A113608.P14954382943751627761

/-! ## A113608.P7777605707363353987

`A000035(A044726(n+1))*A064834(n+10)`
-/

namespace A113608.P7777605707363353987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A044726 (n + 1)).toNat * A064834 (n + 10)

end

end A113608.P7777605707363353987

/-! ## A113608.P17342137558320936736

`A057427(A044345(n+1))+A007953(A064834(n+10))-1`
-/

namespace A113608.P17342137558320936736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A044345 (n + 1)).toNat + (A007953 (A064834 (n + 10)).toNat - 1)

end

end A113608.P17342137558320936736

/-! ## A113608.P14767258874131887017

`dr(A080465(A118759(n))%11)`
-/

namespace A113608.P14767258874131887017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A080465 ((A118759 n).toNat + 10)) 11)

end

end A113608.P14767258874131887017

/-! ## A113608.P13489135666792919174

`A007953(A064834(n+10))*A010052(n²)`
-/

namespace A113608.P13489135666792919174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A064834 (n + 10)).toNat * A010052 (n ^ 2)

end

end A113608.P13489135666792919174

/-! ## A113608.P1903478967302274676

`abs(A008683(A007918(n²))*A064834(n+10))`
-/

namespace A113608.P1903478967302274676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A007918 (n ^ 2)).toNat * A064834 (n + 10)|

end

end A113608.P1903478967302274676

/-! ## A113608.P12474968877448086540

`A064834(A000196(A002378(n))+10)`
-/

namespace A113608.P12474968877448086540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A000196 (A002378 n).toNat + 10).toNat

end

end A113608.P12474968877448086540

/-!
# A113609: Number of prime powers q<=n such that also q+2 is a prime power.

The programs for A113609, there is no canonical definition to state claims against.
-/

/-! ## A113609.P14043181390613104273

`∑[char[A120431(n+1)-1]]`
-/

namespace A113609.P14043181390613104273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113609.P14043181390613104273

/-! ## A113609.P15232502246412479317

`∑[char[A120432(n+1)-2]]`
-/

namespace A113609.P15232502246412479317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113609.P15232502246412479317

/-! ## A113609.P6542714779044793065

`a(n-1)+C(n+1, A120431(a(n-1)+1))` with `a(0)=1`
-/

namespace A113609.P6542714779044793065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 1) (A120431 (a (n - 1) + 1)).toNat

end

end A113609.P6542714779044793065

/-! ## A113609.P3984591357531750298

`∑[char[A023443(A120431(n+1))]]`
-/

namespace A113609.P3984591357531750298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A120431 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113609.P3984591357531750298

/-! ## A113609.P12565930366336121174

`∑[A010055(n+1)*A010055(n+3)]`
-/

namespace A113609.P12565930366336121174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A010055 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113609.P12565930366336121174

/-! ## A113609.P8425374020307963532

`∑[A345950(n+1)*A345950(n+3)]`
-/

namespace A113609.P8425374020307963532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (n + 1) * A345950 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113609.P8425374020307963532

/-! ## A113609.P8172191824694722145

`∑[and(A010055(n+1), A069513(n+3))]`
-/

namespace A113609.P8172191824694722145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010055 (n + 1)) (A069513 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113609.P8172191824694722145

/-! ## A113609.P14440678927289699437

`∑[A080339(A000005(A060648(n+1)))]`
-/

namespace A113609.P14440678927289699437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A000005 (A060648 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113609.P14440678927289699437

/-!
# A113610: Sum of digits of all composite numbers between prime(n) and prime(n+1).

The programs for A113610, there is no canonical definition to state claims against.
-/

/-! ## A113610.P8070772424128498045

`Δ[A051350(A131733(n+1)+n)]`
-/

namespace A113610.P8070772424128498045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051350 (A131733 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113610.P8070772424128498045

/-! ## A113610.P813520982557911862

`Δ[A037123(A006093(n+1))-A051351(n)]`
-/

namespace A113610.P813520982557911862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A006093 (n + 1)).toNat - A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113610.P813520982557911862

/-! ## A113610.P1118956525809120441

`Δ[A037123(A006093(n+1))]-A007605(n+1)`
-/

namespace A113610.P1118956525809120441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007605 (n + 1)

end

end A113610.P1118956525809120441

/-! ## A113610.P17655165216291764152

`Δ[A037123(A000040(n+1))-A051351(n+1)]`
-/

namespace A113610.P17655165216291764152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A000040 (n + 1)).toNat - A051351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113610.P17655165216291764152

/-! ## A113610.P4062598300426941706

`Δ[A037123(A000040(n+1)-1)]-A007605(n+1)`
-/

namespace A113610.P4062598300426941706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007605 (n + 1)

end

end A113610.P4062598300426941706

/-!
# A113611: Primes in increasing order with most significant digit following the cyclic pattern 2,3,5,7,2,3,5,7,2,3,5,7,...

The programs for A113611, there is no canonical definition to state claims against.
-/

/-! ## A113611.P2329251922749798542

`A126762(eq[A004151(n+1), A085563(n+1)])`
-/

namespace A113611.P2329251922749798542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A113611.P2329251922749798542

/-! ## A113611.P3746967209048963354

`∩[A175584(n+1), A320584(n+1)]`
-/

namespace A113611.P3746967209048963354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113611.P3746967209048963354

/-!
# A113615: Primes in which the frequency of every digit is also prime.

The programs for A113615, there is no canonical definition to state claims against.
-/

/-! ## A113615.P8071088136423332984

`p?[A115853(n+1)]`
-/

namespace A113615.P8071088136423332984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113615.P8071088136423332984

/-! ## A113615.P8703575900965513634

`record[p?[A115853(A291766(n))]]`
-/

namespace A113615.P8703575900965513634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113615.P8703575900965513634

/-! ## A113615.P8731108711928828541

`record[p?[A115853(A328395(n))]]`
-/

namespace A113615.P8731108711928828541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113615.P8731108711928828541

/-! ## A113615.P5857836074498681834

`∩[A115853(n+1), A000040(n+1)]`
-/

namespace A113615.P5857836074498681834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113615.P5857836074498681834

/-! ## A113615.P2027154269855899458

`∩[A115853(n+1), A039915(n+2)+1]`
-/

namespace A113615.P2027154269855899458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113615.P2027154269855899458

/-!
# A113617: Primes in the sums of the first 2^n primes or primes in A099825.

The programs for A113617, there is no canonical definition to state claims against.
-/

/-! ## A113617.P12105184097633889969

`A099825(A121248(n+1))`
-/

namespace A113617.P12105184097633889969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099825 (A121248 (n + 1)).toNat

end

end A113617.P12105184097633889969

/-! ## A113617.P975682306045255911

`A007504(A060815(n+1)/2)`
-/

namespace A113617.P975682306045255911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.roundAway ((A060815 (n + 1) : ℚ) / 2)).toNat

end

end A113617.P975682306045255911

/-!
# A113618: a(n) = 1 + 2*n + 3*n^2 + 4*n^3 + 5*n^4 + 6*n^5 + 7*n^6 + 8*n^7.

The programs for A113618, there is no canonical definition to state claims against.
-/

/-! ## A113618.P8437748813787406317

`ceil(A209267(n)/A028310(n))`
-/

namespace A113618.P8437748813787406317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209267 n : ℚ) / (A028310 n : ℚ)⌉

end

end A113618.P8437748813787406317

/-! ## A113618.P6202877739344027706

`ceil(A209267(n)/A123108(2*n))`
-/

namespace A113618.P6202877739344027706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209267 n : ℚ) / (A123108 (2 * n) : ℚ)⌉

end

end A113618.P6202877739344027706

/-! ## A113618.P10298944315026117476

`A059045(eq[6, A264391(n)])`
-/

namespace A113618.P10298944315026117476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113618.P10298944315026117476

/-! ## A113618.P1388011262038702451

`A059045(eq[8, A025581(n)])`
-/

namespace A113618.P1388011262038702451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113618.P1388011262038702451

/-! ## A113618.P4768908233519202256

`A059045(eq[6, A219347(n+1)])`
-/

namespace A113618.P4768908233519202256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113618.P4768908233519202256

/-!
# A113619: Heptagon-free numbers: numbers k such that no divisor of k is a heptagonal number > 1.

The programs for A113619, there is no canonical definition to state claims against.
-/

/-! ## A113619.P3091618894141914802

`comp[A061395(n+1)*A358380(n+1)]`
-/

namespace A113619.P3091618894141914802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A358380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A113619.P3091618894141914802

/-! ## A113619.P18166339350899761926

`A020658(∑[A043283(A339512(n))])`
-/

namespace A113619.P18166339350899761926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043283 (A339512 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113619.P18166339350899761926

/-! ## A113619.P9916004790662313407

`∑[A279495(A294082(n+2))]`
-/

namespace A113619.P9916004790662313407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279495 (A294082 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113619.P9916004790662313407

/-! ## A113619.P763188818758249528

`lt[A245196(3*n+2), A000695(n)%7]`
-/

namespace A113619.P763188818758249528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245196 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000695 n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113619.P763188818758249528

/-! ## A113619.P4548628769454352418

`lt[val(A334133(n+1)+A101211(n+1), 2), 2]`
-/

namespace A113619.P4548628769454352418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334133 (n + 1) + A101211 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113619.P4548628769454352418

/-!
# A113620: Numbers whose 3 prime powers are a permutation of each other. Numbers with 3 distinct prime factors whose 3 exponents are a permutation of the 3 bases.

The programs for A113620, there is no canonical definition to state claims against.
-/

/-! ## A113620.P8142450666398845121

`∩[A054412(n+1), A393708(n+1)]`
-/

namespace A113620.P8142450666398845121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113620.P8142450666398845121

/-! ## A113620.P16560620530695209077

`∩[A054412(n+1), A395197(n+1)]`
-/

namespace A113620.P16560620530695209077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113620.P16560620530695209077

/-! ## A113620.P453363406456328343

`∩[A054412(n+1), A389297(n+1)]`
-/

namespace A113620.P453363406456328343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113620.P453363406456328343

/-! ## A113620.P7889730452483813197

`∩[A122406(n+1), A378769(n+1)]`
-/

namespace A113620.P7889730452483813197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113620.P7889730452483813197

/-! ## A113620.P10538331345926219536

`∩[A272818(n+1), A378769(n+1)]`
-/

namespace A113620.P10538331345926219536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113620.P10538331345926219536

/-!
# A113623: 7-smooth numbers containing only noncomposite digits (1,2,3,5,7).

The programs for A113623, there is no canonical definition to state claims against.
-/

/-! ## A113623.P954308535973603997

`∩[A001742(n+1), A002473(n+1)]`
-/

namespace A113623.P954308535973603997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113623.P954308535973603997

/-! ## A113623.P12018905389530309843

`∩[A001742(n+1), A238985(n+1)]`
-/

namespace A113623.P12018905389530309843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113623.P12018905389530309843

/-! ## A113623.P11630694236922754496

`∩[A001742(n+1), A342950(n+1)]`
-/

namespace A113623.P11630694236922754496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113623.P11630694236922754496

/-! ## A113623.P6353530328655006212

`∩[A202267(n+1), A238985(n+1)]`
-/

namespace A113623.P6353530328655006212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113623.P6353530328655006212

/-! ## A113623.P7759384092067392420

`record[A262401(A001742(n+1))]`
-/

namespace A113623.P7759384092067392420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (A001742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113623.P7759384092067392420

/-!
# A113624: 7-smooth numbers containing only composite digits (0,4,6,8,9).

The programs for A113624, there is no canonical definition to state claims against.
-/

/-! ## A113624.P7027649480512647692

`∩[A001744(n+1), A002473(n+1)]`
-/

namespace A113624.P7027649480512647692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113624.P7027649480512647692

/-! ## A113624.P16114025255482402566

`∩[A001744(n+1), A086247(n)+a(n-1)]` with `a(0)=1`
-/

namespace A113624.P16114025255482402566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A086247 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113624.P16114025255482402566

/-! ## A113624.P7496044048691315277

`∩[A001744(n+1), A085131(n+1)-A080194(n+1)]`
-/

namespace A113624.P7496044048691315277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) - A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113624.P7496044048691315277

/-! ## A113624.P14715557373205285616

`record[A262401(A001744(n+2))]`
-/

namespace A113624.P14715557373205285616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (A001744 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113624.P14715557373205285616

/-! ## A113624.P4534770907416654043

`filter[A001744(n+2), A086299(#)]`
-/

namespace A113624.P4534770907416654043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A113624.P4534770907416654043

/-!
# A113625: Irregular triangle in which the n-th row contains all primes having digit sum n (not containing the digit '0') in increasing order.

The programs for A113625, there is no canonical definition to state claims against.
-/

/-! ## A113625.P4903416407984120291

`p?[A069800(n+1)%A000141(n)]`
-/

namespace A113625.P4903416407984120291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069800 (n + 1)) (A000141 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113625.P4903416407984120291

/-! ## A113625.P11585316175243814318

`p?[A069800(n+2)%A069833(n+1)]`
-/

namespace A113625.P11585316175243814318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069800 (n + 2)) (A069833 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113625.P11585316175243814318

/-! ## A113625.P5034513418141172322

`p?[A275536(A209862(n+1))%A036689(n+1)]`
-/

namespace A113625.P5034513418141172322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275536 (A209862 (n + 1)).toNat) (A036689 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113625.P5034513418141172322

/-! ## A113625.P15266360557040296806

`p?[A069800(n+1)]`
-/

namespace A113625.P15266360557040296806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113625.P15266360557040296806

/-! ## A113625.P12321996096763452229

`p?[A275536(A209862(n+1))]`
-/

namespace A113625.P12321996096763452229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A209862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113625.P12321996096763452229

/-!
# A113626: Numbers simultaneously heptagon-free, pentagon-free, squarefree and triangle-free.

The programs for A113626, there is no canonical definition to state claims against.
-/

/-! ## A113626.P13203280560002311432

`∩[A113544(n+1), A113619(n+1)]`
-/

namespace A113626.P13203280560002311432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113626.P13203280560002311432

/-! ## A113626.P17994079356036630102

`eq[A242627(n), A265331(A206578(n))]`
-/

namespace A113626.P17994079356036630102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265331 (A206578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113626.P17994079356036630102

/-! ## A113626.P6199917502317970780

`lt[(n+1)², A351928(A351926(n+1)+1)]+1`
-/

namespace A113626.P6199917502317970780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351928 (A351926 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A113626.P6199917502317970780

/-! ## A113626.P4665200620957295768

`eq[A242627(n), A269303(A020639(n+1))]`
-/

namespace A113626.P4665200620957295768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113626.P4665200620957295768

/-! ## A113626.P8224092204179211846

`eq[A242627(n), A269303(A284694(n+1))]`
-/

namespace A113626.P8224092204179211846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269303 (A284694 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113626.P8224092204179211846

/-!
# A113627: a(n) is the smallest number k such that k and 2^k have the same last n digits. Here k may have fewer than n digits and can be padded with leading zeros (cf. A121319).

The programs for A113627, there is no canonical definition to state claims against.
-/

/-! ## A113627.P4950049516548844829

`A206636(n+1)+4*A000038(n)`
-/

namespace A113627.P4950049516548844829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206636 (n + 1) + 4 * A000038 n

end

end A113627.P4950049516548844829

/-! ## A113627.P3278105405393661963

`A206636(n+1)+8*A000007(n)`
-/

namespace A113627.P3278105405393661963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206636 (n + 1) + 8 * A000007 n

end

end A113627.P3278105405393661963

/-! ## A113627.P16878843957988843858

`xor(A206636(n+1)+A133615(n), A133615(n))`
-/

namespace A113627.P16878843957988843858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A206636 (n + 1) + A133615 n) (A133615 n)

end

end A113627.P16878843957988843858

/-! ## A113627.P16008791656690403166

`A121319(n+1)+A050453(A000079(n))`
-/

namespace A113627.P16008791656690403166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121319 (n + 1) + A050453 (A000079 n).toNat

end

end A113627.P16008791656690403166

/-!
# A113628: Primes of the form 10 followed by a string of 1's.

The programs for A113628, there is no canonical definition to state claims against.
-/

/-! ## A113628.P13052007364428062637

`record[A077805(Δ[A077802(n+1)])]`
-/

namespace A113628.P13052007364428062637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077802 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113628.P13052007364428062637

/-!
# A113629: Primes of the form 10 followed by a string of 3's.

The programs for A113629, there is no canonical definition to state claims against.
-/

/-! ## A113629.P5390001080443536671

`A201965(A201982(2*n+3)+A001221(n+1))`
-/

namespace A113629.P5390001080443536671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201965 (A201982 (2 * n + 3) + A001221 (n + 1)).toNat

end

end A113629.P5390001080443536671

/-!
# A113630: a(n) = 1 + 2*n + 3*n^2 + 4*n^3 + 5*n^4 + 6*n^5 + 7*n^6 + 8*n^7 + 9*n^8.

The programs for A113630, there is no canonical definition to state claims against.
-/

/-! ## A113630.P5224877230382521503

`ceil(A209275(n)/A028310(n))`
-/

namespace A113630.P5224877230382521503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209275 n : ℚ) / (A028310 n : ℚ)⌉

end

end A113630.P5224877230382521503

/-! ## A113630.P5153287905630709629

`ceil(A209275(n)/A123108(2*n))`
-/

namespace A113630.P5153287905630709629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209275 n : ℚ) / (A123108 (2 * n) : ℚ)⌉

end

end A113630.P5153287905630709629

/-! ## A113630.P8844277645888515661

`A059045(eq[9, A025581(n)])`
-/

namespace A113630.P8844277645888515661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113630.P8844277645888515661

/-! ## A113630.P1421553858110010076

`A059045(eq[10, A193739(n)])`
-/

namespace A113630.P1421553858110010076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113630.P1421553858110010076

/-!
# A113631: Number of distinct representations of (2n)^2 as the sum of two primes.

The programs for A113631, there is no canonical definition to state claims against.
-/

/-! ## A113631.P6142504185761318198

`A061357(record[2*A000463(n+1)])`
-/

namespace A113631.P6142504185761318198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113631.P6142504185761318198

/-! ## A113631.P10509445289102952729

`A061357(round(acot(n)+n)*A004277(n))`
-/

namespace A113631.P10509445289102952729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) * A004277 n).toNat

end

end A113631.P10509445289102952729

/-! ## A113631.P8327117423387390646

`A061357(record[n*A003602(n+1)+n+1]+1)`
-/

namespace A113631.P8327117423387390646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003602 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A113631.P8327117423387390646

/-! ## A113631.P3040533712691854215

`A061357(record[n*A250028(n+1)+n+1]+1)`
-/

namespace A113631.P3040533712691854215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A250028 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A113631.P3040533712691854215

/-! ## A113631.P18147698183023592774

`A061357(record[n*A302032(n+2)+n+1]+1)`
-/

namespace A113631.P18147698183023592774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302032 (n + 2) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A113631.P18147698183023592774

/-! ## A113631.P2082291560516901258

`A061357(A005449(n)+∑[n-1]+C(3, n²)+1)`
-/

namespace A113631.P2082291560516901258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A005449 n + (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 3 (n ^ 2) : ℤ)) + 1).toNat

end

end A113631.P2082291560516901258

/-! ## A113631.P11410933049417000224

`A061357(A082562(n)+A002522(n))`
-/

namespace A113631.P11410933049417000224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A082562 n + A002522 n).toNat

end

end A113631.P11410933049417000224

/-! ## A113631.P18340618221823646566

`A045917(A004277(n²))`
-/

namespace A113631.P18340618221823646566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A004277 (n ^ 2)).toNat

end

end A113631.P18340618221823646566

/-! ## A113631.P9131557062685129389

`A045917(A004273(n²)+1)`
-/

namespace A113631.P9131557062685129389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A004273 (n ^ 2) + 1).toNat

end

end A113631.P9131557062685129389

/-! ## A113631.P2265609705008487654

`A045917(A115881(Δ[A005893(n)]))`
-/

namespace A113631.P2265609705008487654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A115881 (f1 (n + 1) - f1 n).toNat).toNat

end

end A113631.P2265609705008487654

/-! ## A113631.P1636018699087722360

`A045917(A000982(record[A124625(n)]))`
-/

namespace A113631.P1636018699087722360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A000982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A113631.P1636018699087722360

/-! ## A113631.P15487631725839794272

`A002375(A266074(record[A029579(n)]))`
-/

namespace A113631.P15487631725839794272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A266074 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A113631.P15487631725839794272

/-! ## A113631.P398476775297421160

`A045917(A001105(n)+A000007(n))`
-/

namespace A113631.P398476775297421160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A001105 n + A000007 n).toNat

end

end A113631.P398476775297421160

/-! ## A113631.P5064054894487625246

`A045917(A001105(n)^A178334(n))`
-/

namespace A113631.P5064054894487625246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway ((A001105 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A113631.P5064054894487625246

/-! ## A113631.P4133611191761067556

`A045917(or(A000007(n), A001105(n)))`
-/

namespace A113631.P4133611191761067556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (Int.lor (A000007 n) (A001105 n)).toNat

end

end A113631.P4133611191761067556

/-! ## A113631.P12299394499084082840

`A045917(A001105(n)+1-A178334(n))`
-/

namespace A113631.P12299394499084082840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A001105 n + (1 - A178334 n)).toNat

end

end A113631.P12299394499084082840

/-! ## A113631.P9570195969954991232

`A045917(1-(A178334(n)-A001105(n)))`
-/

namespace A113631.P9570195969954991232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (1 - (A178334 n - A001105 n)).toNat

end

end A113631.P9570195969954991232

/-! ## A113631.P2290199787531574437

`A045917((A004277(n)-n)*A004277(n))`
-/

namespace A113631.P2290199787531574437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 ((A004277 n - (n : ℤ)) * A004277 n).toNat

end

end A113631.P2290199787531574437

/-! ## A113631.P12216978136263478001

`A045917(A004275(n²+1))`
-/

namespace A113631.P12216978136263478001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A004275 (n ^ 2 + 1)).toNat

end

end A113631.P12216978136263478001

/-! ## A113631.P11749328279121404520

`A045917(A287374(n²+1)-1)`
-/

namespace A113631.P11749328279121404520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A287374 (n ^ 2 + 1) - 1).toNat

end

end A113631.P11749328279121404520

/-!
# A113632: a(n) = 1 + 2*n + 3*n^2 + 4*n^3 + 5*n^4 + 6*n^5 + 7*n^6 + 8*n^7 + 9*n^8 + 10*n^9.

The programs for A113632, there is no canonical definition to state claims against.
-/

/-! ## A113632.P9868117094145857104

`A059045(eq[10, A025581(n)])`
-/

namespace A113632.P9868117094145857104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113632.P9868117094145857104

/-! ## A113632.P1616062546216439931

`A059045(A052905(n+8)-6)`
-/

namespace A113632.P1616062546216439931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059045 (A052905 (n + 8) - 6).toNat

end

end A113632.P1616062546216439931

/-!
# A113633: Sum of the first 5^n primes.

The programs for A113633, the canonical program `A113633.P1089532878435800945` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113633 has offset 0).

The definition of A113633 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113633.P1089532878435800945

`A007504(A000351(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113633

/-- `A007504(A000351(n))` -/
def P1089532878435800945.Spec : Prop :=
  ∀ n, P1089532878435800945.a n = A113633 n

theorem P1089532878435800945.correct : P1089532878435800945.Spec := by
  intro n
  simp only [A113633]

end A113633

/-! ## A113633.P12166060636482380453

`A007504(5^n)`
-/

namespace A113633.P12166060636482380453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (5 ^ n)

end

end A113633.P12166060636482380453

namespace A113633

/-- `A007504(5^n)` -/
def P12166060636482380453.Spec : Prop :=
  ∀ n, P12166060636482380453.a n = A113633 n

end A113633

/-! ## A113633.P14637887809084950952

`record[A007504(A193797(n))]`
-/

namespace A113633.P14637887809084950952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A193797 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113633.P14637887809084950952

namespace A113633

/-- `record[A007504(A193797(n))]` -/
def P14637887809084950952.Spec : Prop :=
  ∀ n, P14637887809084950952.a n = A113633 n

end A113633

/-! ## A113633.P2068136739276671294

`record[A007504(A193799(n))]`
-/

namespace A113633.P2068136739276671294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A193799 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113633.P2068136739276671294

namespace A113633

/-- `record[A007504(A193799(n))]` -/
def P2068136739276671294.Spec : Prop :=
  ∀ n, P2068136739276671294.a n = A113633 n

end A113633

/-!
# A113634: Sum of the first 6^n primes.

The programs for A113634, the canonical program `A113634.P14854653620757727462` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113634 has offset 0).

The definition of A113634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113634.P14854653620757727462

`A007504(6^n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113634

/-- `A007504(6^n)` -/
def P14854653620757727462.Spec : Prop :=
  ∀ n, P14854653620757727462.a n = A113634 n

theorem P14854653620757727462.correct : P14854653620757727462.Spec := by
  intro n
  simp only [A113634]

end A113634

/-! ## A113634.P17862353688447709854

`record[A007504(A038255(n))]`
-/

namespace A113634.P17862353688447709854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A038255 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113634.P17862353688447709854

namespace A113634

/-- `record[A007504(A038255(n))]` -/
def P17862353688447709854.Spec : Prop :=
  ∀ n, P17862353688447709854.a n = A113634 n

end A113634

/-! ## A113634.P17786924428429121031

`record[A007504(A256136(n))]`
-/

namespace A113634.P17786924428429121031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A256136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113634.P17786924428429121031

namespace A113634

/-- `record[A007504(A256136(n))]` -/
def P17786924428429121031.Spec : Prop :=
  ∀ n, P17786924428429121031.a n = A113634 n

end A113634

/-!
# A113635: Sum of the first 7^n primes.

The programs for A113635, the canonical program `A113635.P8258085166908120649` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113635 has offset 0).

The definition of A113635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113635.P8258085166908120649

`A007504(A000420(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113635

/-- `A007504(A000420(n))` -/
def P8258085166908120649.Spec : Prop :=
  ∀ n, P8258085166908120649.a n = A113635 n

theorem P8258085166908120649.correct : P8258085166908120649.Spec := by
  intro n
  simp only [A113635]

end A113635

/-! ## A113635.P8605224941049869800

`A007504(7^n)`
-/

namespace A113635.P8605224941049869800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (7 ^ n)

end

end A113635.P8605224941049869800

namespace A113635

/-- `A007504(7^n)` -/
def P8605224941049869800.Spec : Prop :=
  ∀ n, P8605224941049869800.a n = A113635 n

end A113635

/-!
# A113636: In the sequence of positive integers add 1 to each nonprime number.

The programs for A113636, the canonical program `A113636.P387307132510664875` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113636 has offset 1).

The definition of A113636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014684, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113636.P387307132510664875

`A014684(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A113636

/-- `A014684(n+1)+1` -/
def P387307132510664875.Spec : Prop :=
  ∀ n, P387307132510664875.a n = A113636 (n + 1)

theorem P387307132510664875.correct : P387307132510664875.Spec := by
  intro n
  simp only [A113636, Nat.add_sub_cancel]

end A113636

/-! ## A113636.P35924967261726438

`n+3-C(2, ∑{e}[n+1, #])!`
-/

namespace A113636.P35924967261726438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A113636.P35924967261726438

namespace A113636

/-- `n+3-C(2, ∑{e}[n+1, #])!` -/
def P35924967261726438.Spec : Prop :=
  ∀ n, P35924967261726438.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P17193324411546115967

`floor(n+3-∏{p}[n+1, #/n])`
-/

namespace A113636.P17193324411546115967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) - ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n : ℚ)⌋

end

end A113636.P17193324411546115967

namespace A113636

/-- `floor(n+3-∏{p}[n+1, #/n])` -/
def P17193324411546115967.Spec : Prop :=
  ∀ n, P17193324411546115967.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P6369623912806393952

`n+3-∏{p}[n+1, ceil(#/n)]`
-/

namespace A113636.P6369623912806393952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉

end

end A113636.P6369623912806393952

namespace A113636

/-- `n+3-∏{p}[n+1, ceil(#/n)]` -/
def P6369623912806393952.Spec : Prop :=
  ∀ n, P6369623912806393952.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P7552339402351227307

`n+2-∑{p}[n+1, val(#, n+1)]`
-/

namespace A113636.P7552339402351227307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1) : ℕ) : ℤ)

end

end A113636.P7552339402351227307

namespace A113636

/-- `n+2-∑{p}[n+1, val(#, n+1)]` -/
def P7552339402351227307.Spec : Prop :=
  ∀ n, P7552339402351227307.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P13220428847640133050

`n+2-∑{p}[n+1, C(#, n+1)]`
-/

namespace A113636.P13220428847640133050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1) : ℕ) : ℤ)

end

end A113636.P13220428847640133050

namespace A113636

/-- `n+2-∑{p}[n+1, C(#, n+1)]` -/
def P13220428847640133050.Spec : Prop :=
  ∀ n, P13220428847640133050.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P8964014747668015298

`n+2-∑{p}[n+1, floor(#/(n+1))]`
-/

namespace A113636.P8964014747668015298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A113636.P8964014747668015298

namespace A113636

/-- `n+2-∑{p}[n+1, floor(#/(n+1))]` -/
def P8964014747668015298.Spec : Prop :=
  ∀ n, P8964014747668015298.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P10027047902833232508

`ceil(n+2-∑{p}[n+1, #/(n+1)])`
-/

namespace A113636.P10027047902833232508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ)⌉

end

end A113636.P10027047902833232508

namespace A113636

/-- `ceil(n+2-∑{p}[n+1, #/(n+1)])` -/
def P10027047902833232508.Spec : Prop :=
  ∀ n, P10027047902833232508.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P1960400945353885185

`round(n+2-∑{p}[n+1, #/(2*n)])`
-/

namespace A113636.P1960400945353885185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n : ℚ))

end

end A113636.P1960400945353885185

namespace A113636

/-- `round(n+2-∑{p}[n+1, #/(2*n)])` -/
def P1960400945353885185.Spec : Prop :=
  ∀ n, P1960400945353885185.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P2765112619074721967

`ceil(atan(A013632(n))+n)`
-/

namespace A113636.P2765112619074721967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A013632 n : ℝ) + (n : ℝ)⌉

end

end A113636.P2765112619074721967

namespace A113636

/-- `ceil(atan(A013632(n))+n)` -/
def P2765112619074721967.Spec : Prop :=
  ∀ n, P2765112619074721967.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P4818614469057812786

`A005171(n+1)+1+n`
-/

namespace A113636.P4818614469057812786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + 1 + (n : ℤ)

end

end A113636.P4818614469057812786

namespace A113636

/-- `A005171(n+1)+1+n` -/
def P4818614469057812786.Spec : Prop :=
  ∀ n, P4818614469057812786.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P12001759156901107044

`2-A010051(n+1)+n`
-/

namespace A113636.P12001759156901107044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010051 (n + 1) + (n : ℤ)

end

end A113636.P12001759156901107044

namespace A113636

/-- `2-A010051(n+1)+n` -/
def P12001759156901107044.Spec : Prop :=
  ∀ n, P12001759156901107044.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P4097901194112505170

`gcd(2, A035026(n+1))+n`
-/

namespace A113636.P4097901194112505170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A035026 (n + 1)) + n

end

end A113636.P4097901194112505170

namespace A113636

/-- `gcd(2, A035026(n+1))+n` -/
def P4097901194112505170.Spec : Prop :=
  ∀ n, (P4097901194112505170.a n : ℤ) = A113636 (n + 1)

end A113636

/-! ## A113636.P12656539663737256179

`2*(n+1)-A113637(n+1)`
-/

namespace A113636.P12656539663737256179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A113637 (n + 1)

end

end A113636.P12656539663737256179

namespace A113636

/-- `2*(n+1)-A113637(n+1)` -/
def P12656539663737256179.Spec : Prop :=
  ∀ n, P12656539663737256179.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P5734853427308111017

`2*n+3-A014683(n+1)`
-/

namespace A113636.P5734853427308111017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A014683 (n + 1)

end

end A113636.P5734853427308111017

namespace A113636

/-- `2*n+3-A014683(n+1)` -/
def P5734853427308111017.Spec : Prop :=
  ∀ n, P5734853427308111017.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P10849122717369884180

`2-char[record[A000010(n+1)]]+n`
-/

namespace A113636.P10849122717369884180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A113636.P10849122717369884180

namespace A113636

/-- `2-char[record[A000010(n+1)]]+n` -/
def P10849122717369884180.Spec : Prop :=
  ∀ n, P10849122717369884180.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P8970990403166759906

`char[A018252(n+1)-1]+1+n`
-/

namespace A113636.P8970990403166759906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 + n

end

end A113636.P8970990403166759906

namespace A113636

/-- `char[A018252(n+1)-1]+1+n` -/
def P8970990403166759906.Spec : Prop :=
  ∀ n, (P8970990403166759906.a n : ℤ) = A113636 (n + 1)

end A113636

/-! ## A113636.P8462681330057577484

`2-char[A000040(n+1)-1]+n`
-/

namespace A113636.P8462681330057577484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A113636.P8462681330057577484

namespace A113636

/-- `2-char[A000040(n+1)-1]+n` -/
def P8462681330057577484.Spec : Prop :=
  ∀ n, P8462681330057577484.a n = A113636 (n + 1)

end A113636

/-! ## A113636.P2679689476351815365

`A191558(n+1)/(n+1)+n+1`
-/

namespace A113636.P2679689476351815365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A113636.P2679689476351815365

namespace A113636

/-- `A191558(n+1)/(n+1)+n+1` -/
def P2679689476351815365.Spec : Prop :=
  ∀ n, P2679689476351815365.a n = (A113636 (n + 1) : ℚ)

end A113636

/-! ## A113636.P16297788769026621718

`n+2-floor(n/(A000203(n+1)-2))`
-/

namespace A113636.P16297788769026621718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌊(n : ℚ) / (A000203 (n + 1) - 2 : ℚ)⌋

end

end A113636.P16297788769026621718

namespace A113636

/-- `n+2-floor(n/(A000203(n+1)-2))` -/
def P16297788769026621718.Spec : Prop :=
  ∀ n, P16297788769026621718.a n = A113636 (n + 1)

end A113636

/-!
# A113637: In the sequence of positive integers subtract 1 from each nonprime number.

The programs for A113637, the canonical program `A113637.P4283208789368655225` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113637 has offset 1).

The definition of A113637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113637.P5875307583196547529

`char[p?[xor(1, n)]-1]+n`
-/

namespace A113637.P5875307583196547529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A113637.P5875307583196547529

namespace A113637

/-- `char[p?[xor(1, n)]-1]+n` -/
def P5875307583196547529.Spec : Prop :=
  ∀ n, (P5875307583196547529.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P3124562311781790945

`char[record[∑{p}[n, #]]-1]+n`
-/

namespace A113637.P3124562311781790945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A113637.P3124562311781790945

namespace A113637

/-- `char[record[∑{p}[n, #]]-1]+n` -/
def P3124562311781790945.Spec : Prop :=
  ∀ n, (P3124562311781790945.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P2215320691402088351

`char[record[∏{p}[n, #-1]]]+n`
-/

namespace A113637.P2215320691402088351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A113637.P2215320691402088351

namespace A113637

/-- `char[record[∏{p}[n, #-1]]]+n` -/
def P2215320691402088351.Spec : Prop :=
  ∀ n, (P2215320691402088351.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P12013001213515477579

`char[p?[∏{p}[n, #]]-1]+n`
-/

namespace A113637.P12013001213515477579
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A113637.P12013001213515477579

namespace A113637

/-- `char[p?[∏{p}[n, #]]-1]+n` -/
def P12013001213515477579.Spec : Prop :=
  ∀ n, (P12013001213515477579.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P6096919161525199390

`char[p?[comp[n²]]-1]+n`
-/

namespace A113637.P6096919161525199390
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A113637.P6096919161525199390

namespace A113637

/-- `char[p?[comp[n²]]-1]+n` -/
def P6096919161525199390.Spec : Prop :=
  ∀ n, (P6096919161525199390.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P18044690531564872638

`char[eq[1, ∑{e}[n+1, #]]]+n`
-/

namespace A113637.P18044690531564872638
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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A113637.P18044690531564872638

namespace A113637

/-- `char[eq[1, ∑{e}[n+1, #]]]+n` -/
def P18044690531564872638.Spec : Prop :=
  ∀ n, (P18044690531564872638.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P9851859066460370495

`char[lt[n, ∑{p}[n+1, #]]]+n`
-/

namespace A113637.P9851859066460370495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A113637.P9851859066460370495

namespace A113637

/-- `char[lt[n, ∑{p}[n+1, #]]]+n` -/
def P9851859066460370495.Spec : Prop :=
  ∀ n, (P9851859066460370495.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P4283208789368655225

`∑{p}[n+1, val(#, n+1)]+n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113637

/-- `∑{p}[n+1, val(#, n+1)]+n` -/
def P4283208789368655225.Spec : Prop :=
  ∀ n, (P4283208789368655225.a n : ℤ) = A113637 (n + 1)

theorem P4283208789368655225.correct : P4283208789368655225.Spec := by
  intro n
  simp only [A113637, Nat.add_sub_cancel]

end A113637

/-! ## A113637.P11677518162183673035

`∑{p}[n+1, C(#, n+1)]+n`
-/

namespace A113637.P11677518162183673035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1) + n

end

end A113637.P11677518162183673035

namespace A113637

/-- `∑{p}[n+1, C(#, n+1)]+n` -/
def P11677518162183673035.Spec : Prop :=
  ∀ n, (P11677518162183673035.a n : ℤ) = A113637 (n + 1)

end A113637

/-! ## A113637.P14189067135433682648

`C(2, ∑{e}[n+1, #])!+n-1`
-/

namespace A113637.P14189067135433682648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ) + ((n : ℤ) - 1)

end

end A113637.P14189067135433682648

namespace A113637

/-- `C(2, ∑{e}[n+1, #])!+n-1` -/
def P14189067135433682648.Spec : Prop :=
  ∀ n, P14189067135433682648.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P17315606595806816244

`∑{p}[n+1, floor(#/(n+1))]+n`
-/

namespace A113637.P17315606595806816244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)

end

end A113637.P17315606595806816244

namespace A113637

/-- `∑{p}[n+1, floor(#/(n+1))]+n` -/
def P17315606595806816244.Spec : Prop :=
  ∀ n, P17315606595806816244.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P16886386189566177710

`∏{p}[n+1, ceil(#/n)]+n-1`
-/

namespace A113637.P16886386189566177710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / (n : ℚ)⌉ + ((n : ℤ) - 1)

end

end A113637.P16886386189566177710

namespace A113637

/-- `∏{p}[n+1, ceil(#/n)]+n-1` -/
def P16886386189566177710.Spec : Prop :=
  ∀ n, P16886386189566177710.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P8486773302306490790

`round(∑{p}[n+1, #/(2*n+1)]+n)`
-/

namespace A113637.P8486773302306490790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n + 1 : ℚ) + (n : ℚ))

end

end A113637.P8486773302306490790

namespace A113637

/-- `round(∑{p}[n+1, #/(2*n+1)]+n)` -/
def P8486773302306490790.Spec : Prop :=
  ∀ n, P8486773302306490790.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P17132604567900038096

`A014683(n+1)-1`
-/

namespace A113637.P17132604567900038096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - 1

end

end A113637.P17132604567900038096

namespace A113637

/-- `A014683(n+1)-1` -/
def P17132604567900038096.Spec : Prop :=
  ∀ n, P17132604567900038096.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P17644768902187264264

`A010051(n+1)+n`
-/

namespace A113637.P17644768902187264264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (n : ℤ)

end

end A113637.P17644768902187264264

namespace A113637

/-- `A010051(n+1)+n` -/
def P17644768902187264264.Spec : Prop :=
  ∀ n, P17644768902187264264.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P18048515216006891803

`A129950(n+1)²+n`
-/

namespace A113637.P18048515216006891803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129950 (n + 1) ^ 2 + (n : ℤ)

end

end A113637.P18048515216006891803

namespace A113637

/-- `A129950(n+1)²+n` -/
def P18048515216006891803.Spec : Prop :=
  ∀ n, P18048515216006891803.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P7024727871949912194

`1-A005171(n+1)+n`
-/

namespace A113637.P7024727871949912194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (n + 1) + (n : ℤ)

end

end A113637.P7024727871949912194

namespace A113637

/-- `1-A005171(n+1)+n` -/
def P7024727871949912194.Spec : Prop :=
  ∀ n, P7024727871949912194.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P15617638448701413403

`A064911(2*(n+1))+n`
-/

namespace A113637.P15617638448701413403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (n + 1)) + (n : ℤ)

end

end A113637.P15617638448701413403

namespace A113637

/-- `A064911(2*(n+1))+n` -/
def P15617638448701413403.Spec : Prop :=
  ∀ n, P15617638448701413403.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P10806615971424697412

`A353478(2*(n+1))+n`
-/

namespace A113637.P10806615971424697412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (2 * (n + 1)) + (n : ℤ)

end

end A113637.P10806615971424697412

namespace A113637

/-- `A353478(2*(n+1))+n` -/
def P10806615971424697412.Spec : Prop :=
  ∀ n, P10806615971424697412.a n = A113637 (n + 1)

end A113637

/-! ## A113637.P14527555403185162015

`(A175028(n+1)+n)/2`
-/

namespace A113637.P14527555403185162015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175028 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A113637.P14527555403185162015

namespace A113637

/-- `(A175028(n+1)+n)/2` -/
def P14527555403185162015.Spec : Prop :=
  ∀ n, P14527555403185162015.a n = (A113637 (n + 1) : ℚ)

end A113637

/-!
# A113638: In the sequence of nonnegative integers subtract 1 from each prime number.

The programs for A113638, the canonical program `A113638.P15518003784063987187` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113638 has offset 0).

The definition of A113638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113638.P13549906943408869295

`n-char[p?[xor(1, n)]]`
-/

namespace A113638.P13549906943408869295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113638.P13549906943408869295

namespace A113638

/-- `n-char[p?[xor(1, n)]]` -/
def P13549906943408869295.Spec : Prop :=
  ∀ n, P13549906943408869295.a n = A113638 n

end A113638

/-! ## A113638.P15518003784063987187

`n-∑{p}[n, val(#, n)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113638

/-- `n-∑{p}[n, val(#, n)]` -/
def P15518003784063987187.Spec : Prop :=
  ∀ n, P15518003784063987187.a n = A113638 n

theorem P15518003784063987187.correct : P15518003784063987187.Spec := by
  intro n
  simp only [A113638]

end A113638

/-! ## A113638.P8026220955722085758

`n-∑{p}[n, C(#, n)]`
-/

namespace A113638.P8026220955722085758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ)

end

end A113638.P8026220955722085758

namespace A113638

/-- `n-∑{p}[n, C(#, n)]` -/
def P8026220955722085758.Spec : Prop :=
  ∀ n, P8026220955722085758.a n = A113638 n

end A113638

/-! ## A113638.P7118886929393981455

`n-char[p?[comp[n²]]]`
-/

namespace A113638.P7118886929393981455
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113638.P7118886929393981455

namespace A113638

/-- `n-char[p?[comp[n²]]]` -/
def P7118886929393981455.Spec : Prop :=
  ∀ n, P7118886929393981455.a n = A113638 n

end A113638

/-! ## A113638.P5261638019501226721

`n-char[eq[1, ∑{e}[n, #]]]`
-/

namespace A113638.P5261638019501226721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113638.P5261638019501226721

namespace A113638

/-- `n-char[eq[1, ∑{e}[n, #]]]` -/
def P5261638019501226721.Spec : Prop :=
  ∀ n, P5261638019501226721.a n = A113638 n

end A113638

/-! ## A113638.P3465997957192644527

`n-∑{p}[n, floor(#/n)]`
-/

namespace A113638.P3465997957192644527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n : ℚ)⌋

end

end A113638.P3465997957192644527

namespace A113638

/-- `n-∑{p}[n, floor(#/n)]` -/
def P3465997957192644527.Spec : Prop :=
  ∀ n, P3465997957192644527.a n = A113638 n

end A113638

/-! ## A113638.P11966343031638209868

`ceil(n-∑{p}[n, #/n])`
-/

namespace A113638.P11966343031638209868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n : ℚ)⌉

end

end A113638.P11966343031638209868

namespace A113638

/-- `ceil(n-∑{p}[n, #/n])` -/
def P11966343031638209868.Spec : Prop :=
  ∀ n, P11966343031638209868.a n = A113638 n

end A113638

/-! ## A113638.P5241260999573701439

`n+1-C(2, ∑{e}[n, #])!`
-/

namespace A113638.P5241260999573701439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A113638.P5241260999573701439

namespace A113638

/-- `n+1-C(2, ∑{e}[n, #])!` -/
def P5241260999573701439.Spec : Prop :=
  ∀ n, P5241260999573701439.a n = A113638 n

end A113638

/-! ## A113638.P3785227551196418000

`n-round(∑{p}[n, #/(2*n)])`
-/

namespace A113638.P3785227551196418000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n : ℚ))

end

end A113638.P3785227551196418000

namespace A113638

/-- `n-round(∑{p}[n, #/(2*n)])` -/
def P3785227551196418000.Spec : Prop :=
  ∀ n, P3785227551196418000.a n = A113638 n

end A113638

/-! ## A113638.P4165094218064628079

`floor(n+1-∏{p}[n, #/(n-1)])`
-/

namespace A113638.P4165094218064628079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) - ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / ((n : ℤ) - 1 : ℚ)⌋

end

end A113638.P4165094218064628079

namespace A113638

/-- `floor(n+1-∏{p}[n, #/(n-1)])` -/
def P4165094218064628079.Spec : Prop :=
  ∀ n, P4165094218064628079.a n = A113638 n

end A113638

/-! ## A113638.P6840208141087110206

`n+1-∏{p}[n, ceil(#/(n-1))]`
-/

namespace A113638.P6840208141087110206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), ⌈(p : ℚ) / ((n : ℤ) - 1 : ℚ)⌉

end

end A113638.P6840208141087110206

namespace A113638

/-- `n+1-∏{p}[n, ceil(#/(n-1))]` -/
def P6840208141087110206.Spec : Prop :=
  ∀ n, P6840208141087110206.a n = A113638 n

end A113638

/-! ## A113638.P6616427565993488267

`n-char[A007918(n)]`
-/

namespace A113638.P6616427565993488267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P6616427565993488267

namespace A113638

/-- `n-char[A007918(n)]` -/
def P6616427565993488267.Spec : Prop :=
  ∀ n, P6616427565993488267.a n = A113638 n

end A113638

/-! ## A113638.P4878006512932561730

`n-char[A051697(n)]`
-/

namespace A113638.P4878006512932561730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P4878006512932561730

namespace A113638

/-- `n-char[A051697(n)]` -/
def P4878006512932561730.Spec : Prop :=
  ∀ n, P4878006512932561730.a n = A113638 n

end A113638

/-! ## A113638.P4349098871731943387

`n-char[A051698(n)]`
-/

namespace A113638.P4349098871731943387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P4349098871731943387

namespace A113638

/-- `n-char[A051698(n)]` -/
def P4349098871731943387.Spec : Prop :=
  ∀ n, P4349098871731943387.a n = A113638 n

end A113638

/-! ## A113638.P17314170727074969070

`n-char[A060264(n)]`
-/

namespace A113638.P17314170727074969070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P17314170727074969070

namespace A113638

/-- `n-char[A060264(n)]` -/
def P17314170727074969070.Spec : Prop :=
  ∀ n, P17314170727074969070.a n = A113638 n

end A113638

/-! ## A113638.P18262138591491623445

`n-char[A062584(n)]`
-/

namespace A113638.P18262138591491623445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P18262138591491623445

namespace A113638

/-- `n-char[A062584(n)]` -/
def P18262138591491623445.Spec : Prop :=
  ∀ n, P18262138591491623445.a n = A113638 n

end A113638

/-! ## A113638.P1753540960806605851

`n-char[A088732(n)]`
-/

namespace A113638.P1753540960806605851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P1753540960806605851

namespace A113638

/-- `n-char[A088732(n)]` -/
def P1753540960806605851.Spec : Prop :=
  ∀ n, P1753540960806605851.a n = A113638 n

end A113638

/-! ## A113638.P11786001767073739437

`n-char[A134204(n)]`
-/

namespace A113638.P11786001767073739437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P11786001767073739437

namespace A113638

/-- `n-char[A134204(n)]` -/
def P11786001767073739437.Spec : Prop :=
  ∀ n, P11786001767073739437.a n = A113638 n

end A113638

/-! ## A113638.P15700703325933594806

`n-char[A151800(n)]`
-/

namespace A113638.P15700703325933594806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P15700703325933594806

namespace A113638

/-- `n-char[A151800(n)]` -/
def P15700703325933594806.Spec : Prop :=
  ∀ n, P15700703325933594806.a n = A113638 n

end A113638

/-! ## A113638.P1511789175208503870

`n-char[A162753(n)]`
-/

namespace A113638.P1511789175208503870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113638.P1511789175208503870

namespace A113638

/-- `n-char[A162753(n)]` -/
def P1511789175208503870.Spec : Prop :=
  ∀ n, P1511789175208503870.a n = A113638 n

end A113638

/-!
# A113645: Numbers k such that sum of exponents in prime factorization of k (i.e., A001222(k)) is >= each prime divisor of k.

The programs for A113645, the canonical program `A113645.P10726598197332604057` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113645 has offset 1).

The definition of A113645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113645.P10726598197332604057

`lt[A006530(n+1), A001222(n+1)+1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A113645

/-- `lt[A006530(n+1), A001222(n+1)+1]+1` -/
def P10726598197332604057.Spec : Prop :=
  ∀ n, (P10726598197332604057.a n : ℤ) = A113645 (n + 1)

theorem P10726598197332604057.correct : P10726598197332604057.Spec := by
  intro n
  simp only [A113645, Nat.add_sub_cancel]

end A113645

/-! ## A113645.P670690548762360150

`lt[A111089(n+1), A001222(n+1)+1]+1`
-/

namespace A113645.P670690548762360150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A113645.P670690548762360150

namespace A113645

/-- `lt[A111089(n+1), A001222(n+1)+1]+1` -/
def P670690548762360150.Spec : Prop :=
  ∀ n, (P670690548762360150.a n : ℤ) = A113645 (n + 1)

end A113645

/-! ## A113645.P13903137634476187082

`lt[A085392(2*(n+1)), A001222(2*(n+1))]+1`
-/

namespace A113645.P13903137634476187082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A113645.P13903137634476187082

namespace A113645

/-- `lt[A085392(2*(n+1)), A001222(2*(n+1))]+1` -/
def P13903137634476187082.Spec : Prop :=
  ∀ n, (P13903137634476187082.a n : ℤ) = A113645 (n + 1)

end A113645

/-! ## A113645.P5171349784221848771

`lt[A006530(2*(n+1)), A086436(2*(n+1))]+1`
-/

namespace A113645.P5171349784221848771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A113645.P5171349784221848771

namespace A113645

/-- `lt[A006530(2*(n+1)), A086436(2*(n+1))]+1` -/
def P5171349784221848771.Spec : Prop :=
  ∀ n, (P5171349784221848771.a n : ℤ) = A113645 (n + 1)

end A113645

/-! ## A113645.P14643003525623778714

`record[A025480(A144566(n+1))]`
-/

namespace A113645.P14643003525623778714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A144566 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113645.P14643003525623778714

namespace A113645

/-- `record[A025480(A144566(n+1))]` -/
def P14643003525623778714.Spec : Prop :=
  ∀ n, P14643003525623778714.a n = A113645 (n + 1)

end A113645

/-!
# A113646: a(n) is the smallest composite integer which is >= n.

The programs for A113646, the canonical program `A113646.P14709912826224621284` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113646 has offset 1).

The definition of A113646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113646.P14709912826224621284

`A014683(n+1)%a(n-3)²` with `a(0)=4, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113646

/-- `A014683(n+1)%a(n-3)²` -/
def P14709912826224621284.Spec : Prop :=
  ∀ n, P14709912826224621284.a n = A113646 (n + 1)

theorem P14709912826224621284.correct : P14709912826224621284.Spec := by
  intro n
  simp only [A113646, Nat.add_sub_cancel]

end A113646

/-! ## A113646.P18012356790958382350

`floor(C(n+3, A000203(n+1))/(n+1)+n+1)`
-/

namespace A113646.P18012356790958382350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 3) (A000203 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌋

end

end A113646.P18012356790958382350

namespace A113646

/-- `floor(C(n+3, A000203(n+1))/(n+1)+n+1)` -/
def P18012356790958382350.Spec : Prop :=
  ∀ n, P18012356790958382350.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P12359809414691323825

`A002808(A171511(n+1)-n)`
-/

namespace A113646.P12359809414691323825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A171511 (n + 1) - (n : ℤ)).toNat

end

end A113646.P12359809414691323825

namespace A113646

/-- `A002808(A171511(n+1)-n)` -/
def P12359809414691323825.Spec : Prop :=
  ∀ n, P12359809414691323825.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P10030868750364003932

`A267883(A097272(n+1))+1+n`
-/

namespace A113646.P10030868750364003932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 (A097272 (n + 1)).toNat + 1 + (n : ℤ)

end

end A113646.P10030868750364003932

namespace A113646

/-- `A267883(A097272(n+1))+1+n` -/
def P10030868750364003932.Spec : Prop :=
  ∀ n, P10030868750364003932.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P12674796020659836510

`A018252(A171511(n+1)+1-n)`
-/

namespace A113646.P12674796020659836510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A171511 (n + 1) + (1 - (n : ℤ))).toNat

end

end A113646.P12674796020659836510

namespace A113646

/-- `A018252(A171511(n+1)+1-n)` -/
def P12674796020659836510.Spec : Prop :=
  ∀ n, P12674796020659836510.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P8744275495269294743

`A014683(A014683(C(2, n)+n+1))`
-/

namespace A113646.P8744275495269294743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A014683 (Nat.choose 2 n + (n + 1))).toNat

end

end A113646.P8744275495269294743

namespace A113646

/-- `A014683(A014683(C(2, n)+n+1))` -/
def P8744275495269294743.Spec : Prop :=
  ∀ n, P8744275495269294743.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P15085853722386403868

`A002808(∑[char[A002808(n+1)]]+1)`
-/

namespace A113646.P15085853722386403868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113646.P15085853722386403868

namespace A113646

/-- `A002808(∑[char[A002808(n+1)]]+1)` -/
def P15085853722386403868.Spec : Prop :=
  ∀ n, P15085853722386403868.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P10735356281411449041

`A018252(∑[char[A018252(n+2)]]+2)`
-/

namespace A113646.P10735356281411449041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A113646.P10735356281411449041

namespace A113646

/-- `A018252(∑[char[A018252(n+2)]]+2)` -/
def P10735356281411449041.Spec : Prop :=
  ∀ n, P10735356281411449041.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P12246650241413416487

`A066560(gcd(n, A066560(n+1))+n)`
-/

namespace A113646.P12246650241413416487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066560 (Int.gcd (n : ℤ) (A066560 (n + 1)) + n)

end

end A113646.P12246650241413416487

namespace A113646

/-- `A066560(gcd(n, A066560(n+1))+n)` -/
def P12246650241413416487.Spec : Prop :=
  ∀ n, P12246650241413416487.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P4109694509225518581

`A002808(A062298(A000007(n)+n))`
-/

namespace A113646.P4109694509225518581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A062298 (A000007 n + (n : ℤ)).toNat).toNat

end

end A113646.P4109694509225518581

namespace A113646

/-- `A002808(A062298(A000007(n)+n))` -/
def P4109694509225518581.Spec : Prop :=
  ∀ n, P4109694509225518581.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P13716720169517356545

`A014683(A014683(n+1)+A000038(n))`
-/

namespace A113646.P13716720169517356545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A014683 (n + 1) + A000038 n).toNat

end

end A113646.P13716720169517356545

namespace A113646

/-- `A014683(A014683(n+1)+A000038(n))` -/
def P13716720169517356545.Spec : Prop :=
  ∀ n, P13716720169517356545.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P14081506625213207972

`A002808(A062298(n+1-A066247(n+1)))`
-/

namespace A113646.P14081506625213207972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A062298 ((n + 1 : ℤ) - A066247 (n + 1)).toNat).toNat

end

end A113646.P14081506625213207972

namespace A113646

/-- `A002808(A062298(n+1-A066247(n+1)))` -/
def P14081506625213207972.Spec : Prop :=
  ∀ n, P14081506625213207972.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P13795248900925403399

`A014683(A014683(A014681(A014683(A014681(n+1)))))`
-/

namespace A113646.P13795248900925403399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A014683 (A014681 (A014683 (A014681 (n + 1)).toNat).toNat).toNat).toNat

end

end A113646.P13795248900925403399

namespace A113646

/-- `A014683(A014683(A014681(A014683(A014681(n+1)))))` -/
def P13795248900925403399.Spec : Prop :=
  ∀ n, P13795248900925403399.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P13981259831405235255

`A002808(A062298(A062298(A065090(n+1))))`
-/

namespace A113646.P13981259831405235255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A062298 (A062298 (A065090 (n + 1)).toNat).toNat).toNat

end

end A113646.P13981259831405235255

namespace A113646

/-- `A002808(A062298(A062298(A065090(n+1))))` -/
def P13981259831405235255.Spec : Prop :=
  ∀ n, P13981259831405235255.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P1478847367518520277

`floor((n+3)/∏{d}[n+1, #]+n+1)`
-/

namespace A113646.P1478847367518520277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + (n + 1 : ℚ)⌋

end

end A113646.P1478847367518520277

namespace A113646

/-- `floor((n+3)/∏{d}[n+1, #]+n+1)` -/
def P1478847367518520277.Spec : Prop :=
  ∀ n, P1478847367518520277.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P9945110806886234396

`A113484(A080545(n+1)+n)`
-/

namespace A113646.P9945110806886234396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A080545 (n + 1) + (n : ℤ)).toNat

end

end A113646.P9945110806886234396

namespace A113646

/-- `A113484(A080545(n+1)+n)` -/
def P9945110806886234396.Spec : Prop :=
  ∀ n, P9945110806886234396.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P394746910417460684

`A014683(A233583(n+1)+1)`
-/

namespace A113646.P394746910417460684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A233583 (n + 1) + 1).toNat

end

end A113646.P394746910417460684

namespace A113646

/-- `A014683(A233583(n+1)+1)` -/
def P394746910417460684.Spec : Prop :=
  ∀ n, P394746910417460684.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P16546881162651766228

`ceil(A233583(n+1)+2/A048671(n+1))`
-/

namespace A113646.P16546881162651766228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A233583 (n + 1) : ℚ) + 2 / (A048671 (n + 1) : ℚ)⌉

end

end A113646.P16546881162651766228

namespace A113646

/-- `ceil(A233583(n+1)+2/A048671(n+1))` -/
def P16546881162651766228.Spec : Prop :=
  ∀ n, P16546881162651766228.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P10994336490117577022

`A002808(n+1-A000720(A159477(n+1)))`
-/

namespace A113646.P10994336490117577022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 ((n + 1 : ℤ) - A000720 (A159477 (n + 1)).toNat).toNat

end

end A113646.P10994336490117577022

namespace A113646

/-- `A002808(n+1-A000720(A159477(n+1)))` -/
def P10994336490117577022.Spec : Prop :=
  ∀ n, P10994336490117577022.a n = A113646 (n + 1)

end A113646

/-! ## A113646.P11087243774023526052

`A233583(A233583(n+1)+A010051(n+1))+2`
-/

namespace A113646.P11087243774023526052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A233583 (n + 1) + A010051 (n + 1)).toNat + 2

end

end A113646.P11087243774023526052

namespace A113646

/-- `A233583(A233583(n+1)+A010051(n+1))+2` -/
def P11087243774023526052.Spec : Prop :=
  ∀ n, P11087243774023526052.a n = A113646 (n + 1)

end A113646

/-!
# A113647: Triangle of numbers related to the generalized Catalan sequence C(2;n+1)=A064062(n+1), n>=0.

The programs for A113647, there is no canonical definition to state claims against.
-/

/-! ## A113647.P3194916511131040341

`A194966(A370381(n))`
-/

namespace A113647.P3194916511131040341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194966 (A370381 n).toNat

end

end A113647.P3194916511131040341

/-! ## A113647.P9985882617986468355

`∑{d}[A120458(n), A338555(#)]`
-/

namespace A113647.P9985882617986468355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A338555 d

end

end A113647.P9985882617986468355

/-!
# A113648: A variant of Josephus Problem in which 2 persons are to be eliminated at the same time.

The programs for A113648, there is no canonical definition to state claims against.
-/

/-! ## A113648.P12267217353201962212

`∑[ceil(log2(Δ[n²]))]%(2*(n+1))+1`
-/

namespace A113648.P12267217353201962212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * (n + 1) : ℤ) + 1

end

end A113648.P12267217353201962212

/-! ## A113648.P8292780679335375794

`((2*n+1)*A000225(∑[A036987(n)]))%(3*(n+1))`
-/

namespace A113648.P8292780679335375794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) * A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (3 * (n + 1) : ℤ)

end

end A113648.P8292780679335375794

/-! ## A113648.P6835757993852359244

`A008619(A033156(2*(n+1))%A008574(n+1))`
-/

namespace A113648.P6835757993852359244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A033156 (2 * (n + 1))) (A008574 (n + 1))).toNat

end

end A113648.P6835757993852359244

/-! ## A113648.P12509261143754735065

`A008486(n+1)-A253608(n+1)%A008486(n+1)`
-/

namespace A113648.P12509261143754735065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) - Int.tmod (A253608 (n + 1)) (A008486 (n + 1))

end

end A113648.P12509261143754735065

/-!
# A113650: Fibonacci(p-J(p,5)) mod p^2, where p is the n-th prime and J is the Jacobi symbol.

The programs for A113650, there is no canonical definition to state claims against.
-/

/-! ## A113650.P1612142124106779976

`A000040(n+1)*A244801(n+1)`
-/

namespace A113650.P1612142124106779976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A244801 (n + 1)

end

end A113650.P1612142124106779976

/-! ## A113650.P15104944338164684128

`A351989(n+1)%A001248(n+1)`
-/

namespace A113650.P15104944338164684128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351989 (n + 1)) (A001248 (n + 1))

end

end A113650.P15104944338164684128

/-! ## A113650.P10375760269695799980

`(eq[2, A000005(n+1)]+1)*A244801(n+1)`
-/

namespace A113650.P10375760269695799980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A244801 (n + 1)

end

end A113650.P10375760269695799980

/-! ## A113650.P10641538403666489303

`(lt[A001222(n+2), 2]+2)*A244801(n+1)`
-/

namespace A113650.P10641538403666489303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) * A244801 (n + 1)

end

end A113650.P10641538403666489303

/-! ## A113650.P12093382544993829428

`(lt[A000005(n+2), 3]+2)*A244801(n+1)`
-/

namespace A113650.P12093382544993829428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) * A244801 (n + 1)

end

end A113650.P12093382544993829428

/-! ## A113650.P3627466803150719106

`A020639(lt[n, A020639(n+2)]+2)*A244801(n+1)`
-/

namespace A113650.P3627466803150719106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) * A244801 (n + 1)

end

end A113650.P3627466803150719106

/-! ## A113650.P2444743440269130888

`A113649(A000040(n+1))`
-/

namespace A113650.P2444743440269130888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A000040 (n + 1)).toNat

end

end A113650.P2444743440269130888

/-! ## A113650.P14858067820365487669

`A113649(A008578(n+2))`
-/

namespace A113650.P14858067820365487669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A008578 (n + 2)).toNat

end

end A113650.P14858067820365487669

/-! ## A113650.P17258558468828410588

`A113649(A182986(n+2))`
-/

namespace A113650.P17258558468828410588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (A182986 (n + 2)).toNat

end

end A113650.P17258558468828410588

/-! ## A113650.P8765682426442230399

`A113649(record[A006530(n+2)])`
-/

namespace A113650.P8765682426442230399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113650.P8765682426442230399

/-! ## A113650.P14867270467520587266

`A113649(record[A014963(n+2)])`
-/

namespace A113650.P14867270467520587266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113650.P14867270467520587266

/-! ## A113650.P14178774039897710690

`A113649(record[A020639(n+2)])`
-/

namespace A113650.P14178774039897710690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113650.P14178774039897710690

/-!
# A113651: 2*JacobiSymbol(p,5) mod p^2 for p=prime(n).

The programs for A113651, the canonical program `A113651.P7839326436900621094` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113651 has offset 1).

The definition of A113651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113651.P7839326436900621094

`A004273(A051831(n+1))+A051831(n+1)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113651

/-- `A004273(A051831(n+1))+A051831(n+1)²` -/
def P7839326436900621094.Spec : Prop :=
  ∀ n, P7839326436900621094.a n = A113651 (n + 1)

theorem P7839326436900621094.correct : P7839326436900621094.Spec := by
  intro n
  simp only [A113651, Nat.add_sub_cancel]

end A113651

/-! ## A113651.P7950767460765291288

`A315832(A001248(n+1))%A001248(n+1)`
-/

namespace A113651.P7950767460765291288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315832 (A001248 (n + 1)).toNat) (A001248 (n + 1))

end

end A113651.P7950767460765291288

namespace A113651

/-- `A315832(A001248(n+1))%A001248(n+1)` -/
def P7950767460765291288.Spec : Prop :=
  ∀ n, P7950767460765291288.a n = A113651 (n + 1)

end A113651

/-!
# A113652: Expansion of (1 - theta_4(q)^2) / 4 in powers of q.

The programs for A113652, the canonical program `A113652.P8497104966869689107` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113652 has offset 1).

The definition of A113652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113652.P8497104966869689107

`(-1)^n*A002654(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113652

/-- `(-1)^n*A002654(n+1)` -/
def P8497104966869689107.Spec : Prop :=
  ∀ n, P8497104966869689107.a n = A113652 (n + 1)

theorem P8497104966869689107.correct : P8497104966869689107.Spec := by
  intro n
  simp only [A113652, Nat.add_sub_cancel]

end A113652

/-! ## A113652.P553304929479716657

`char[and(n, n+1)+n]*A132004(n+1)`
-/

namespace A113652.P553304929479716657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A132004 (n + 1)

end

end A113652.P553304929479716657

namespace A113652

/-- `char[and(n, n+1)+n]*A132004(n+1)` -/
def P553304929479716657.Spec : Prop :=
  ∀ n, P553304929479716657.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P2931923786355031008

`A002654(n+1)*A033999(n)`
-/

namespace A113652.P2931923786355031008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (n + 1) * A033999 n

end

end A113652.P2931923786355031008

namespace A113652

/-- `A002654(n+1)*A033999(n)` -/
def P2931923786355031008.Spec : Prop :=
  ∀ n, P2931923786355031008.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P4225109888941342902

`A014577(n)*A121450(n+1)`
-/

namespace A113652.P4225109888941342902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A121450 (n + 1)

end

end A113652.P4225109888941342902

namespace A113652

/-- `A014577(n)*A121450(n+1)` -/
def P4225109888941342902.Spec : Prop :=
  ∀ n, P4225109888941342902.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P13558824270216196424

`A014577(n)*A132004(n+1)`
-/

namespace A113652.P13558824270216196424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A132004 (n + 1)

end

end A113652.P13558824270216196424

namespace A113652

/-- `A014577(n)*A132004(n+1)` -/
def P13558824270216196424.Spec : Prop :=
  ∀ n, P13558824270216196424.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P13202966785908427197

`A014577(n)*A138746(n+1)`
-/

namespace A113652.P13202966785908427197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A138746 (n + 1)

end

end A113652.P13202966785908427197

namespace A113652

/-- `A014577(n)*A138746(n+1)` -/
def P13202966785908427197.Spec : Prop :=
  ∀ n, P13202966785908427197.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P8546282734609547066

`A014577(n)*A138952(n+1)`
-/

namespace A113652.P8546282734609547066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n * A138952 (n + 1)

end

end A113652.P8546282734609547066

namespace A113652

/-- `A014577(n)*A138952(n+1)` -/
def P8546282734609547066.Spec : Prop :=
  ∀ n, P8546282734609547066.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P17333139782408487552

`A257900(n+1)/A107751(n)`
-/

namespace A113652.P17333139782408487552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257900 (n + 1) : ℚ) / (A107751 n : ℚ)

end

end A113652.P17333139782408487552

namespace A113652

/-- `A257900(n+1)/A107751(n)` -/
def P17333139782408487552.Spec : Prop :=
  ∀ n, P17333139782408487552.a n = (A113652 (n + 1) : ℚ)

end A113652

/-! ## A113652.P13882056522813145556

`A257900(n+1)/A177702(n)`
-/

namespace A113652.P13882056522813145556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257900 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A113652.P13882056522813145556

namespace A113652

/-- `A257900(n+1)/A177702(n)` -/
def P13882056522813145556.Spec : Prop :=
  ∀ n, P13882056522813145556.a n = (A113652 (n + 1) : ℚ)

end A113652

/-! ## A113652.P18094713884032076608

`A055457(n+1)*A094247(n+1)`
-/

namespace A113652.P18094713884032076608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1) * A094247 (n + 1)

end

end A113652.P18094713884032076608

namespace A113652

/-- `A055457(n+1)*A094247(n+1)` -/
def P18094713884032076608.Spec : Prop :=
  ∀ n, P18094713884032076608.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P10543927963953924344

`A257900(n+1)/(2-A010892(n)²)`
-/

namespace A113652.P10543927963953924344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257900 (n + 1) : ℚ) / (2 - A010892 n ^ 2 : ℚ)

end

end A113652.P10543927963953924344

namespace A113652

/-- `A257900(n+1)/(2-A010892(n)²)` -/
def P10543927963953924344.Spec : Prop :=
  ∀ n, P10543927963953924344.a n = (A113652 (n + 1) : ℚ)

end A113652

/-! ## A113652.P17409393438768720589

`(A038189(n+1)-1)*A138745(n+1)`
-/

namespace A113652.P17409393438768720589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038189 (n + 1) - 1) * A138745 (n + 1)

end

end A113652.P17409393438768720589

namespace A113652

/-- `(A038189(n+1)-1)*A138745(n+1)` -/
def P17409393438768720589.Spec : Prop :=
  ∀ n, P17409393438768720589.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P11001233984708045140

`2*A008442(n+1)-A002654(n+1)`
-/

namespace A113652.P11001233984708045140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008442 (n + 1) - A002654 (n + 1)

end

end A113652.P11001233984708045140

namespace A113652

/-- `2*A008442(n+1)-A002654(n+1)` -/
def P11001233984708045140.Spec : Prop :=
  ∀ n, P11001233984708045140.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P14253455226263981149

`(A134015(n+1)+A112301(n+1))/2`
-/

namespace A113652.P14253455226263981149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134015 (n + 1) + A112301 (n + 1) : ℚ) / 2

end

end A113652.P14253455226263981149

namespace A113652

/-- `(A134015(n+1)+A112301(n+1))/2` -/
def P14253455226263981149.Spec : Prop :=
  ∀ n, P14253455226263981149.a n = (A113652 (n + 1) : ℚ)

end A113652

/-! ## A113652.P12556260785827754656

`(A132004(n+1)+A121450(n+1))/2`
-/

namespace A113652.P12556260785827754656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132004 (n + 1) + A121450 (n + 1) : ℚ) / 2

end

end A113652.P12556260785827754656

namespace A113652

/-- `(A132004(n+1)+A121450(n+1))/2` -/
def P12556260785827754656.Spec : Prop :=
  ∀ n, P12556260785827754656.a n = (A113652 (n + 1) : ℚ)

end A113652

/-! ## A113652.P17988599053221739655

`∑{d}[n+1, A050469(#)*A117212((n+1)/#)]`
-/

namespace A113652.P17988599053221739655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050469 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113652.P17988599053221739655

namespace A113652

/-- `∑{d}[n+1, A050469(#)*A117212((n+1)/#)]` -/
def P17988599053221739655.Spec : Prop :=
  ∀ n, P17988599053221739655.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P4502189493717676766

`∑{d}[n+1, A034947(#)*A230074((n+1)/#)]`
-/

namespace A113652.P4502189493717676766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A230074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113652.P4502189493717676766

namespace A113652

/-- `∑{d}[n+1, A034947(#)*A230074((n+1)/#)]` -/
def P4502189493717676766.Spec : Prop :=
  ∀ n, P4502189493717676766.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P10358825927177308233

`∑{d}[n+1, A132004(#)*A154271((n+1)/#)]`
-/

namespace A113652.P10358825927177308233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A132004 d * A154271 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113652.P10358825927177308233

namespace A113652

/-- `∑{d}[n+1, A132004(#)*A154271((n+1)/#)]` -/
def P10358825927177308233.Spec : Prop :=
  ∀ n, P10358825927177308233.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P4353452224214504877

`∑{d}[n+1, A134015(#)*A154269((n+1)/#)]`
-/

namespace A113652.P4353452224214504877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A134015 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113652.P4353452224214504877

namespace A113652

/-- `∑{d}[n+1, A134015(#)*A154269((n+1)/#)]` -/
def P4353452224214504877.Spec : Prop :=
  ∀ n, P4353452224214504877.a n = A113652 (n + 1)

end A113652

/-! ## A113652.P3028859795388545959

`∑{d}[n+1, A048272(#)*A275966((n+1)/#)]`
-/

namespace A113652.P3028859795388545959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113652.P3028859795388545959

namespace A113652

/-- `∑{d}[n+1, A048272(#)*A275966((n+1)/#)]` -/
def P3028859795388545959.Spec : Prop :=
  ∀ n, P3028859795388545959.a n = A113652 (n + 1)

end A113652

/-!
# A113654: Numbers k such that the square of k contains sigma(k) as a substring, in base 10.

The programs for A113654, there is no canonical definition to state claims against.
-/

/-! ## A113654.P454961746549686222

`A318919(A395607(n))`
-/

namespace A113654.P454961746549686222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318919 (A395607 n).toNat

end

end A113654.P454961746549686222

/-!
# A113655: Reverse blocks of three in the sequence of natural numbers.

The programs for A113655, the canonical program `A113655.P5792220034522090374` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113655 has offset 1).

The definition of A113655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113655.P5792220034522090374

`a(n-3)+3` with `a(0)=3, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113655

/-- `a(n-3)+3` -/
def P5792220034522090374.Spec : Prop :=
  ∀ n, (P5792220034522090374.a n : ℤ) = A113655 (n + 1)

theorem P5792220034522090374.correct : P5792220034522090374.Spec := by
  intro n
  simp only [A113655, Nat.add_sub_cancel]

end A113655

/-! ## A113655.P12931222254457419753

`A000027(n+1)+2*A057078(n)`
-/

namespace A113655.P12931222254457419753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + 2 * A057078 n

end

end A113655.P12931222254457419753

namespace A113655

/-- `A000027(n+1)+2*A057078(n)` -/
def P12931222254457419753.Spec : Prop :=
  ∀ n, P12931222254457419753.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P5412842630473793860

`n+1-2*A049347(n+1)`
-/

namespace A113655.P5412842630473793860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A049347 (n + 1)

end

end A113655.P5412842630473793860

namespace A113655

/-- `n+1-2*A049347(n+1)` -/
def P5412842630473793860.Spec : Prop :=
  ∀ n, P5412842630473793860.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P3704085526165688963

`n+1+2*A057078(n+3)`
-/

namespace A113655.P3704085526165688963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 2 * A057078 (n + 3)

end

end A113655.P3704085526165688963

namespace A113655

/-- `n+1+2*A057078(n+3)` -/
def P3704085526165688963.Spec : Prop :=
  ∀ n, P3704085526165688963.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P7150766126758256530

`Δ[n-gcd(3, n)]+n`
-/

namespace A113655.P7150766126758256530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A113655.P7150766126758256530

namespace A113655

/-- `Δ[n-gcd(3, n)]+n` -/
def P7150766126758256530.Spec : Prop :=
  ∀ n, P7150766126758256530.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P5339793488013524507

`3-2*n%3+n`
-/

namespace A113655.P5339793488013524507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((2 * (n % 3) : ℕ) : ℤ) + (n : ℤ)

end

end A113655.P5339793488013524507

namespace A113655

/-- `3-2*n%3+n` -/
def P5339793488013524507.Spec : Prop :=
  ∀ n, P5339793488013524507.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P7212046243249474996

`3-((2*n)%6-n)`
-/

namespace A113655.P7212046243249474996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((2 * n % 6 : ℕ) : ℤ) - (n : ℤ))

end

end A113655.P7212046243249474996

namespace A113655

/-- `3-((2*n)%6-n)` -/
def P7212046243249474996.Spec : Prop :=
  ∀ n, P7212046243249474996.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P16594983743024401850

`4-Δ[n²]%6+n`
-/

namespace A113655.P16594983743024401850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 6 + (n : ℤ)

end

end A113655.P16594983743024401850

namespace A113655

/-- `4-Δ[n²]%6+n` -/
def P16594983743024401850.Spec : Prop :=
  ∀ n, P16594983743024401850.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P8814090039422356109

`-2*n%6+n+3`
-/

namespace A113655.P8814090039422356109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(2 * n : ℤ)) 6 + (n + 3 : ℤ)

end

end A113655.P8814090039422356109

namespace A113655

/-- `-2*n%6+n+3` -/
def P8814090039422356109.Spec : Prop :=
  ∀ n, P8814090039422356109.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P2965342412851981645

`3*Δ[ceil(n²/3)]-n`
-/

namespace A113655.P2965342412851981645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) - (n : ℤ)

end

end A113655.P2965342412851981645

namespace A113655

/-- `3*Δ[ceil(n²/3)]-n` -/
def P2965342412851981645.Spec : Prop :=
  ∀ n, P2965342412851981645.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P5277693372581415875

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=-1, a(2)=-1, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A113655.P5277693372581415875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113655.P5277693372581415875

namespace A113655

/-- `∑[floor(a(n-3))]` -/
def P5277693372581415875.Spec : Prop :=
  ∀ n, P5277693372581415875.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P3066625128878569

`floor(n+1-tan((n+2)%3))`
-/

namespace A113655.P3066625128878569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) - Real.tan (((n + 2) % 3 : ℕ) : ℝ)⌋

end

end A113655.P3066625128878569

namespace A113655

/-- `floor(n+1-tan((n+2)%3))` -/
def P3066625128878569.Spec : Prop :=
  ∀ n, P3066625128878569.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P8758267115288544264

`round(n+1-tan((n-1)%3))`
-/

namespace A113655.P8758267115288544264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.tan (Int.tmod ((n : ℤ) - 1) 3 : ℝ))

end

end A113655.P8758267115288544264

namespace A113655

/-- `round(n+1-tan((n-1)%3))` -/
def P8758267115288544264.Spec : Prop :=
  ∀ n, P8758267115288544264.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P2851321163800495668

`floor(n+3-sinh((n+3)%3))`
-/

namespace A113655.P2851321163800495668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) - Real.sinh (((n + 3) % 3 : ℕ) : ℝ)⌋

end

end A113655.P2851321163800495668

namespace A113655

/-- `floor(n+3-sinh((n+3)%3))` -/
def P2851321163800495668.Spec : Prop :=
  ∀ n, P2851321163800495668.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P16092740026149760182

`ogf((3-x-x^2+2x^3)/(1-x-x^3+x^4))`
-/

namespace A113655.P16092740026149760182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, -1, 2] [1, -1, 0, -1, 1] n

end

end A113655.P16092740026149760182

namespace A113655

/-- `ogf((3-x-x^2+2x^3)/(1-x-x^3+x^4))` -/
def P16092740026149760182.Spec : Prop :=
  ∀ n, P16092740026149760182.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P5725956344973598172

`ceil(tan((2*n+1)%3)+n+1)`
-/

namespace A113655.P5725956344973598172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (((2 * n + 1) % 3 : ℕ) : ℝ) + (n + 1 : ℝ)⌉

end

end A113655.P5725956344973598172

namespace A113655

/-- `ceil(tan((2*n+1)%3)+n+1)` -/
def P5725956344973598172.Spec : Prop :=
  ∀ n, P5725956344973598172.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P17810086307028115707

`∑[3-a(n-1)-a(n-2)]` with `a(0)=3, a(1)=-1, a(2)=-1`
-/

namespace A113655.P17810086307028115707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, -1] fun n f1 =>
  3 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113655.P17810086307028115707

namespace A113655

/-- `∑[3-a(n-1)-a(n-2)]` -/
def P17810086307028115707.Spec : Prop :=
  ∀ n, P17810086307028115707.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P14467004113398673379

`∑[2*A099837(n)+1]`
-/

namespace A113655.P14467004113398673379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099837 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113655.P14467004113398673379

namespace A113655

/-- `∑[2*A099837(n)+1]` -/
def P14467004113398673379.Spec : Prop :=
  ∀ n, P14467004113398673379.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P18413346038215839891

`A130509(A080782(n+1))`
-/

namespace A113655.P18413346038215839891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130509 (A080782 (n + 1)).toNat

end

end A113655.P18413346038215839891

namespace A113655

/-- `A130509(A080782(n+1))` -/
def P18413346038215839891.Spec : Prop :=
  ∀ n, P18413346038215839891.a n = A113655 (n + 1)

end A113655

/-! ## A113655.P3378339370356753282

`floor(A004482(n)+2/A130784(n))`
-/

namespace A113655.P3378339370356753282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004482 n : ℚ) + 2 / (A130784 n : ℚ)⌋

end

end A113655.P3378339370356753282

namespace A113655

/-- `floor(A004482(n)+2/A130784(n))` -/
def P3378339370356753282.Spec : Prop :=
  ∀ n, P3378339370356753282.a n = A113655 (n + 1)

end A113655

/-!
# A113656: Digits of successive exponents of Mersenne primes (see A000043).

The programs for A113656, there is no canonical definition to state claims against.
-/

/-! ## A113656.P14818374348185677698

`p?[A348553(A005496(n))]%10`
-/

namespace A113656.P14818374348185677698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A005496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 10

end

end A113656.P14818374348185677698

/-!
# A113658: Where n appears in A111273.

The programs for A113658, there is no canonical definition to state claims against.
-/

/-! ## A113658.P16795081549449631516

`floor(sqrt(2*A073872(n+1)))`
-/

namespace A113658.P16795081549449631516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A073872 (n + 1))

end

end A113658.P16795081549449631516

/-! ## A113658.P16767392077656949664

`floor(sqrt(Δ[n²]*A073874(n+1)))`
-/

namespace A113658.P16767392077656949664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A073874 (n + 1))

end

end A113658.P16767392077656949664

/-! ## A113658.P1321809365501130576

`floor(sqrt(A073874(n+1)*A103517(n)))`
-/

namespace A113658.P1321809365501130576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A073874 (n + 1) * A103517 n)

end

end A113658.P1321809365501130576

/-! ## A113658.P16249914186909438057

`A080098((n+1)*A073874(n+1))`
-/

namespace A113658.P16249914186909438057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 ((n + 1 : ℤ) * A073874 (n + 1)).toNat

end

end A113658.P16249914186909438057

/-! ## A113658.P2112932121464504781

`A283681(A073872(n+1))`
-/

namespace A113658.P2112932121464504781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283681 (A073872 (n + 1)).toNat

end

end A113658.P2112932121464504781

/-! ## A113658.P9137517188304296143

`A172471((n+1)*A073874(n+1))`
-/

namespace A113658.P9137517188304296143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((n + 1 : ℤ) * A073874 (n + 1)).toNat

end

end A113658.P9137517188304296143

/-! ## A113658.P9788447452155677308

`A000267(A073874(n+1)*A110654(n))`
-/

namespace A113658.P9788447452155677308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A073874 (n + 1) * A110654 n).toNat

end

end A113658.P9788447452155677308

/-! ## A113658.P3252188234507978961

`A011772((n+1)*A073874(n+1))`
-/

namespace A113658.P3252188234507978961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 ((n + 1 : ℤ) * A073874 (n + 1)).toNat

end

end A113658.P3252188234507978961

/-! ## A113658.P13895043083154440577

`A002260((n+1)*A073874(n+1))`
-/

namespace A113658.P13895043083154440577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((n + 1 : ℤ) * A073874 (n + 1)).toNat

end

end A113658.P13895043083154440577

/-! ## A113658.P3420775101437942125

`A074712((n+1)*A073874(n+1))`
-/

namespace A113658.P3420775101437942125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 ((n + 1 : ℤ) * A073874 (n + 1)).toNat

end

end A113658.P3420775101437942125

/-!
# A113659: Numbers n such that A111273(n) = n.

The programs for A113659, there is no canonical definition to state claims against.
-/

/-! ## A113659.P6115224510955583177

`eq[n+1, A111273(n+1)]+1`
-/

namespace A113659.P6115224510955583177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A113659.P6115224510955583177

/-! ## A113659.P15027140664286666704

`record[gcd(2*n+1, A113658(2*n+1))]`
-/

namespace A113659.P15027140664286666704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A113658 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113659.P15027140664286666704

/-! ## A113659.P1600002399020182177

`eq[n, A113658(A028310(n))]`
-/

namespace A113659.P1600002399020182177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113659.P1600002399020182177

/-! ## A113659.P6143494504759887558

`record[A009001(A113658(n+1))]`
-/

namespace A113659.P6143494504759887558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A113658 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113659.P6143494504759887558

/-! ## A113659.P4516507463943307205

`eq[n, A113658(A004442(n)+1)]`
-/

namespace A113659.P4516507463943307205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (A004442 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113659.P4516507463943307205

/-! ## A113659.P7739952594457357666

`eq[n, A111273(A004277(n)-n)]`
-/

namespace A113659.P7739952594457357666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113659.P7739952594457357666

/-! ## A113659.P13563850848571968002

`A079097(eq[n+1, A113658(n+1)])`
-/

namespace A113659.P13563850848571968002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113659.P13563850848571968002

/-! ## A113659.P16899672427140816861

`A109613(eq[n+1, A113658(n+1)])`
-/

namespace A113659.P16899672427140816861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113659.P16899672427140816861

/-! ## A113659.P7019161047045377340

`record[gcd(A113658(2*n+1), A133310(3*n))]`
-/

namespace A113659.P7019161047045377340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113658 (2 * n + 1)) (A133310 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113659.P7019161047045377340

/-! ## A113659.P17507657115585589134

`eq[A026225(n+1), A026225(A113658(n+1))]+1`
-/

namespace A113659.P17507657115585589134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (A113658 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A113659.P17507657115585589134

/-!
# A113660: Expansion of phi(x)^3 / phi(x^3) where phi() is a Ramanujan theta function.

The programs for A113660, there is no canonical definition to state claims against.
-/

/-! ## A113660.P16948317552539885987

`A033999(n)*A122859(n)`
-/

namespace A113660.P16948317552539885987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122859 n

end

end A113660.P16948317552539885987

/-! ## A113660.P13227632755247974140

`(1-A010673(n))*A122859(n)`
-/

namespace A113660.P13227632755247974140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A122859 n

end

end A113660.P13227632755247974140

/-! ## A113660.P1469336496655996900

`2*A253623(n)-A033716(n)`
-/

namespace A113660.P1469336496655996900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253623 n - A033716 n

end

end A113660.P1469336496655996900

/-! ## A113660.P11992820041057817554

`2*A004016(A026741(n))-A004016(n)`
-/

namespace A113660.P11992820041057817554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004016 (A026741 n).toNat - A004016 n

end

end A113660.P11992820041057817554

/-! ## A113660.P2677730199454078100

`A114006(A317322(n+1)/(n+1))*A122859(n)`
-/

namespace A113660.P2677730199454078100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (SequenceMachineLib.roundAway ((A317322 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat * A122859 n

end

end A113660.P2677730199454078100

/-! ## A113660.P4408875726925368480

`2*A180318(2*n)-A180318(n)`
-/

namespace A113660.P4408875726925368480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180318 (2 * n) - A180318 n

end

end A113660.P4408875726925368480

/-! ## A113660.P6584347237307422124

`A131946(n)/A205971(n)*A205972(n)`
-/

namespace A113660.P6584347237307422124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131946 n : ℚ) / (A205971 n : ℚ) * (A205972 n : ℚ)

end

end A113660.P6584347237307422124

/-!
# A113661: Expansion of (phi(x)^3/phi(x^3) - 1)/6 where phi() is a Ramanujan theta function.

The programs for A113661, the canonical program `A113661.P7577629174354355755` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113661 has offset 1).

The definition of A113661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113661.P7577629174354355755

`A033999(n)*A122860(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113661

/-- `A033999(n)*A122860(n+1)` -/
def P7577629174354355755.Spec : Prop :=
  ∀ n, P7577629174354355755.a n = A113661 (n + 1)

theorem P7577629174354355755.correct : P7577629174354355755.Spec := by
  intro n
  simp only [A113661, Nat.add_sub_cancel]

end A113661

/-! ## A113661.P16585411849327571399

`A035178(n+1)*A105931(n+1)`
-/

namespace A113661.P16585411849327571399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A105931 (n + 1)

end

end A113661.P16585411849327571399

namespace A113661

/-- `A035178(n+1)*A105931(n+1)` -/
def P16585411849327571399.Spec : Prop :=
  ∀ n, P16585411849327571399.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P15011940982652531434

`A056832(n+1)*A113447(n+1)`
-/

namespace A113661.P15011940982652531434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A113447 (n + 1)

end

end A113661.P15011940982652531434

namespace A113661

/-- `A056832(n+1)*A113447(n+1)` -/
def P15011940982652531434.Spec : Prop :=
  ∀ n, P15011940982652531434.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P3994655888742116411

`A060236(n+1)*A113447(n+1)`
-/

namespace A113661.P3994655888742116411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (n + 1) * A113447 (n + 1)

end

end A113661.P3994655888742116411

namespace A113661

/-- `A060236(n+1)*A113447(n+1)` -/
def P3994655888742116411.Spec : Prop :=
  ∀ n, P3994655888742116411.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P4059053442073651009

`A113447(n+1)*A390692(n+1)`
-/

namespace A113661.P4059053442073651009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (n + 1) * A390692 (n + 1)

end

end A113661.P4059053442073651009

namespace A113661

/-- `A113447(n+1)*A390692(n+1)` -/
def P4059053442073651009.Spec : Prop :=
  ∀ n, P4059053442073651009.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P2006574834581185394

`(2-A056832(n+1)²)*A137608(n+1)`
-/

namespace A113661.P2006574834581185394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A056832 (n + 1) ^ 2) * A137608 (n + 1)

end

end A113661.P2006574834581185394

namespace A113661

/-- `(2-A056832(n+1)²)*A137608(n+1)` -/
def P2006574834581185394.Spec : Prop :=
  ∀ n, P2006574834581185394.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P16140722882296849287

`(2-A060236(n+1)²)*A137608(n+1)`
-/

namespace A113661.P16140722882296849287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A060236 (n + 1) ^ 2) * A137608 (n + 1)

end

end A113661.P16140722882296849287

namespace A113661

/-- `(2-A060236(n+1)²)*A137608(n+1)` -/
def P16140722882296849287.Spec : Prop :=
  ∀ n, P16140722882296849287.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P2917506363263718591

`(2-A105931(n+1)²)*A137608(n+1)`
-/

namespace A113661.P2917506363263718591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A105931 (n + 1) ^ 2) * A137608 (n + 1)

end

end A113661.P2917506363263718591

namespace A113661

/-- `(2-A105931(n+1)²)*A137608(n+1)` -/
def P2917506363263718591.Spec : Prop :=
  ∀ n, P2917506363263718591.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P16292325985851895293

`∑{d}[n+1, A112300(#)*A195986((n+1)/#)]`
-/

namespace A113661.P16292325985851895293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112300 d * A195986 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113661.P16292325985851895293

namespace A113661

/-- `∑{d}[n+1, A112300(#)*A195986((n+1)/#)]` -/
def P16292325985851895293.Spec : Prop :=
  ∀ n, P16292325985851895293.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P12875841908497613089

`A113660(n+1)/6`
-/

namespace A113661.P12875841908497613089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113660 (n + 1) : ℚ) / 6

end

end A113661.P12875841908497613089

namespace A113661

/-- `A113660(n+1)/6` -/
def P12875841908497613089.Spec : Prop :=
  ∀ n, P12875841908497613089.a n = (A113661 (n + 1) : ℚ)

end A113661

/-! ## A113661.P3911078055857747650

`A113447(n+1)+A002324(2*(n+1))`
-/

namespace A113661.P3911078055857747650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (n + 1) + A002324 (2 * (n + 1))

end

end A113661.P3911078055857747650

namespace A113661

/-- `A113447(n+1)+A002324(2*(n+1))` -/
def P3911078055857747650.Spec : Prop :=
  ∀ n, P3911078055857747650.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P17516972591204954759

`A113974(n+1)*A309873(n+1)`
-/

namespace A113661.P17516972591204954759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113974 (n + 1) * A309873 (n + 1)

end

end A113661.P17516972591204954759

namespace A113661

/-- `A113974(n+1)*A309873(n+1)` -/
def P17516972591204954759.Spec : Prop :=
  ∀ n, P17516972591204954759.a n = A113661 (n + 1)

end A113661

/-! ## A113661.P1080253486500516071

`A113974(n+1)*A343785(n+1)`
-/

namespace A113661.P1080253486500516071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113974 (n + 1) * A343785 (n + 1)

end

end A113661.P1080253486500516071

namespace A113661

/-- `A113974(n+1)*A343785(n+1)` -/
def P1080253486500516071.Spec : Prop :=
  ∀ n, P1080253486500516071.a n = A113661 (n + 1)

end A113661

/-!
# A113662: G.f. satisfies: A(x) = (1 + x*(d/dx x*A(x)) )^2.

The programs for A113662, there is no canonical definition to state claims against.
-/

/-! ## A113662.P13773665082534024001

`record[A172395(n)]/(n+1)`
-/

namespace A113662.P13773665082534024001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172395 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A113662.P13773665082534024001

/-! ## A113662.P3435899682515161257

`A000699(n+2)/(n+1)`
-/

namespace A113662.P3435899682515161257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000699 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A113662.P3435899682515161257

/-! ## A113662.P8809621315518852647

`A286796(∑[n+1])/(n+1)`
-/

namespace A113662.P8809621315518852647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286796 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A113662.P8809621315518852647

/-! ## A113662.P12794667356561370103

`Δ[A174432(n+1)]/(n+1)`
-/

namespace A113662.P12794667356561370103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174432 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A113662.P12794667356561370103

/-! ## A113662.P1327554730530659276

`record[A286796(n)/A209761(n+1)]`
-/

namespace A113662.P1327554730530659276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286796 n : ℚ) / (A209761 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113662.P1327554730530659276

/-!
# A113663: Self-convolution cube of A113669, where a(n) = A113669(n+1)/(n+1).

The programs for A113663, there is no canonical definition to state claims against.
-/

/-! ## A113663.P3462206433088890224

`A113669(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113663.P3462206433088890224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113669 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A113663.P3462206433088890224

/-!
# A113664: Self-convolution 4th power of A113670, where a(n) = A113670(n+1)/(n+1).

The programs for A113664, there is no canonical definition to state claims against.
-/

/-! ## A113664.P10125705008909719160

`A113670(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113664.P10125705008909719160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113670 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A113664.P10125705008909719160

/-!
# A113665: Self-convolution 5th power of A113671, where a(n) = A113671(n+1)/(n+1).

The programs for A113665, there is no canonical definition to state claims against.
-/

/-! ## A113665.P125032777342984032

`A113671(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113665.P125032777342984032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113671 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A113665.P125032777342984032

/-!
# A113666: Self-convolution 6th power of A113672, where a(n) = A113672(n+1)/(n+1).

The programs for A113666, there is no canonical definition to state claims against.
-/

/-! ## A113666.P11557319826529306111

`A113672(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113666.P11557319826529306111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113672 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A113666.P11557319826529306111

/-!
# A113667: Self-convolution 7th power of A113673, where a(n) = A113673(n+1)/(n+1).

The programs for A113667, there is no canonical definition to state claims against.
-/

/-! ## A113667.P18091041237004978987

`A113673(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113667.P18091041237004978987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113673 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A113667.P18091041237004978987

/-!
# A113668: Self-convolution 8th power of A113674, where a(n) = A113674(n+1)/(n+1).

The programs for A113668, there is no canonical definition to state claims against.
-/

/-! ## A113668.P13542379823391857483

`A113674(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113668.P13542379823391857483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113674 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A113668.P13542379823391857483

/-!
# A113669: Self-convolution cube equals A113663, where a(n) = n*A113663(n-1) for n>=1, with a(0)=1.

The programs for A113669, there is no canonical definition to state claims against.
-/

/-! ## A113669.P6002195702277585509

`A004001(n!*C(2*n, n)-n)`
-/

namespace A113669.P6002195702277585509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Nat.factorial n * Nat.choose (2 * n) n - n)

end

end A113669.P6002195702277585509

/-!
# A113670: Self-convolution 4th power equals A113664, where a(n) = n*A113664(n-1) for n>=1, with a(0)=1.

The programs for A113670, there is no canonical definition to state claims against.
-/

/-! ## A113670.P6329916891819269834

`A337511((2*(n+1))^n)`
-/

namespace A113670.P6329916891819269834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337511 ((2 * (n + 1)) ^ n)

end

end A113670.P6329916891819269834

/-!
# A113671: Self-convolution 5th power equals A113665, where a(n) = n*A113665(n-1) for n>=1, with a(0)=1.

The programs for A113671, there is no canonical definition to state claims against.
-/

/-! ## A113671.P11395674878142458952

`A216627(A272391(n))`
-/

namespace A113671.P11395674878142458952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216627 (A272391 n).toNat

end

end A113671.P11395674878142458952

/-!
# A113673: Self-convolution 7th power equals A113667, where a(n) = n*A113667(n-1) for n>=1, with a(0)=1.

The programs for A113673, there is no canonical definition to state claims against.
-/

/-! ## A113673.P1663812875085630580

`7*n*A047201(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A113673.P1663812875085630580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (7 * n : ℤ) * A047201 (a (n - 1)).toNat

end

end A113673.P1663812875085630580

/-!
# A113675: Decimal expansion of 1/8991.

The programs for A113675, the canonical program `A113675.P1239578147488036574` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113675 has offset 0).

The definition of A113675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113675.P1239578147488036574

`floor(log(sqrt(2))*n%27)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113675

/-- `floor(log(sqrt(2))*n%27)` -/
def P1239578147488036574.Spec : Prop :=
  ∀ n, P1239578147488036574.a n = A113675 n

theorem P1239578147488036574.correct : P1239578147488036574.Spec := by
  intro n
  simp only [A113675]

end A113675

/-!
# A113676: Number of elements of rows of Golomb's sequence A001462, with one less 2, interpreted as triangle: Start with first row 1. The row sum of row n-1 gives the number of elements taken from A001642 (one less 2) of row n.

The programs for A113676, there is no canonical definition to state claims against.
-/

/-! ## A113676.P10788352448862766746

`Δ[A014644(comp[2*n^3])]`
-/

namespace A113676.P10788352448862766746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014644 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113676.P10788352448862766746

/-! ## A113676.P9560454020085839110

`Δ[record[A014644(n+1)+1-char[2]]]`
-/

namespace A113676.P9560454020085839110
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014644 (n + 1) + (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113676.P9560454020085839110

/-! ## A113676.P14144788938840386112

`Δ[record[A014644(A028920(n))]]`
-/

namespace A113676.P14144788938840386112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014644 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113676.P14144788938840386112

/-! ## A113676.P7750433853403430051

`Δ[record[A014644(A038569(n))]]`
-/

namespace A113676.P7750433853403430051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014644 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113676.P7750433853403430051

/-!
# A113677: a(n) = (2*n+1)!*(2*n-2)!/(2*((n-1)!)*(n!)^2), n=1,2,... .

The programs for A113677, the canonical program `A113677.P15528777115034239228` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113677 has offset 1).

The definition of A113677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113677.P15528777115034239228

`(2*(n+1)+1)!*(2*(n+1)-2)!/(2*n!*(n+1)!²)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113677

/-- `(2*(n+1)+1)!*(2*(n+1)-2)!/(2*n!*(n+1)!²)` -/
def P15528777115034239228.Spec : Prop :=
  ∀ n, P15528777115034239228.a n = (A113677 (n + 1) : ℚ)

end A113677

/-! ## A113677.P9052207678341642805

`3*A157713(n+1)`
-/

namespace A113677.P9052207678341642805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A157713 (n + 1)

end

end A113677.P9052207678341642805

namespace A113677

/-- `3*A157713(n+1)` -/
def P9052207678341642805.Spec : Prop :=
  ∀ n, P9052207678341642805.a n = A113677 (n + 1)

end A113677

/-! ## A113677.P5611270808532074646

`A001147(n+2)*A151374(n)`
-/

namespace A113677.P5611270808532074646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 2) * A151374 n

end

end A113677.P5611270808532074646

namespace A113677

/-- `A001147(n+2)*A151374(n)` -/
def P5611270808532074646.Spec : Prop :=
  ∀ n, P5611270808532074646.a n = A113677 (n + 1)

end A113677

/-! ## A113677.P2582670244872320151

`∏[A111284(n+1)]*A033876(n)`
-/

namespace A113677.P2582670244872320151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A033876 n

end

end A113677.P2582670244872320151

namespace A113677

/-- `∏[A111284(n+1)]*A033876(n)` -/
def P2582670244872320151.Spec : Prop :=
  ∀ n, P2582670244872320151.a n = A113677 (n + 1)

end A113677

/-! ## A113677.P3335741647788128026

`comp[A116389(n)]*A248045(n+1)`
-/

namespace A113677.P3335741647788128026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116389 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A248045 (n + 1)

end

end A113677.P3335741647788128026

namespace A113677

/-- `comp[A116389(n)]*A248045(n+1)` -/
def P3335741647788128026.Spec : Prop :=
  ∀ n, P3335741647788128026.a n = A113677 (n + 1)

end A113677

/-!
# A113678: Sequence array for A078008.

The programs for A113678, the canonical program `A113678.P6435561091149394357` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113678 has offset 0).

The definition of A113678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113678.P5758257192957815357

`A078008(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A113678.P5758257192957815357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A113678.P5758257192957815357

namespace A113678

/-- `A078008(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P5758257192957815357.Spec : Prop :=
  ∀ n, P5758257192957815357.a n = A113678 n

end A113678

/-! ## A113678.P6435561091149394357

`A078008(A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113678

/-- `A078008(A025581(n))` -/
def P6435561091149394357.Spec : Prop :=
  ∀ n, P6435561091149394357.a n = A113678 n

theorem P6435561091149394357.correct : P6435561091149394357.Spec := by
  intro n
  simp only [A113678]

end A113678

/-! ## A113678.P11447839034765815333

`A133684(A099375(n))`
-/

namespace A113678.P11447839034765815333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A099375 n).toNat

end

end A113678.P11447839034765815333

namespace A113678

/-- `A133684(A099375(n))` -/
def P11447839034765815333.Spec : Prop :=
  ∀ n, P11447839034765815333.a n = A113678 n

end A113678

/-! ## A113678.P2281401357998715233

`A078008(log2(A130321(n)))`
-/

namespace A113678.P2281401357998715233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A113678.P2281401357998715233

namespace A113678

/-- `A078008(log2(A130321(n)))` -/
def P2281401357998715233.Spec : Prop :=
  ∀ n, P2281401357998715233.a n = A113678 n

end A113678

/-! ## A113678.P4859814589350715170

`A078008(val(A054582(n), 2))`
-/

namespace A113678.P4859814589350715170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (SequenceMachineLib.valuation (A054582 n).toNat 2)

end

end A113678.P4859814589350715170

namespace A113678

/-- `A078008(val(A054582(n), 2))` -/
def P4859814589350715170.Spec : Prop :=
  ∀ n, P4859814589350715170.a n = A113678 n

end A113678

/-! ## A113678.P17291522411432086754

`A078008(A004736(n+1)-1)`
-/

namespace A113678.P17291522411432086754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A004736 (n + 1) - 1).toNat

end

end A113678.P17291522411432086754

namespace A113678

/-- `A078008(A004736(n+1)-1)` -/
def P17291522411432086754.Spec : Prop :=
  ∀ n, P17291522411432086754.a n = A113678 n

end A113678

/-! ## A113678.P12035075343688744814

`A078008((A004736(n+1)+n)%(n+1))`
-/

namespace A113678.P12035075343688744814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (Int.tmod (A004736 (n + 1) + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A113678.P12035075343688744814

namespace A113678

/-- `A078008((A004736(n+1)+n)%(n+1))` -/
def P12035075343688744814.Spec : Prop :=
  ∀ n, P12035075343688744814.a n = A113678 n

end A113678

/-! ## A113678.P7260817172688656984

`A078008(A057555(2*(n+1))-1)`
-/

namespace A113678.P7260817172688656984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A057555 (2 * (n + 1)) - 1).toNat

end

end A113678.P7260817172688656984

namespace A113678

/-- `A078008(A057555(2*(n+1))-1)` -/
def P7260817172688656984.Spec : Prop :=
  ∀ n, P7260817172688656984.a n = A113678 n

end A113678

/-! ## A113678.P6863651278117056173

`A068639(A130321(n))`
-/

namespace A113678.P6863651278117056173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (A130321 n).toNat

end

end A113678.P6863651278117056173

namespace A113678

/-- `A068639(A130321(n))` -/
def P6863651278117056173.Spec : Prop :=
  ∀ n, P6863651278117056173.a n = A113678 n

end A113678

/-! ## A113678.P12199755061912529786

`A102395(A173787(n))`
-/

namespace A113678.P12199755061912529786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102395 (A173787 n).toNat

end

end A113678.P12199755061912529786

namespace A113678

/-- `A102395(A173787(n))` -/
def P12199755061912529786.Spec : Prop :=
  ∀ n, P12199755061912529786.a n = A113678 n

end A113678

/-! ## A113678.P4601221252653671676

`A008611(A130321(n)-1)`
-/

namespace A113678.P4601221252653671676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A130321 n - 1).toNat

end

end A113678.P4601221252653671676

namespace A113678

/-- `A008611(A130321(n)-1)` -/
def P4601221252653671676.Spec : Prop :=
  ∀ n, P4601221252653671676.a n = A113678 n

end A113678

/-! ## A113678.P11990801955063476704

`A074722(2^A025581(n))`
-/

namespace A113678.P11990801955063476704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074722 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))).toNat

end

end A113678.P11990801955063476704

namespace A113678

/-- `A074722(2^A025581(n))` -/
def P11990801955063476704.Spec : Prop :=
  ∀ n, P11990801955063476704.a n = A113678 n

end A113678

/-! ## A113678.P13025815224123237381

`A008611(2^A025581(n)-1)`
-/

namespace A113678.P13025815224123237381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ) - 1)).toNat

end

end A113678.P13025815224123237381

namespace A113678

/-- `A008611(2^A025581(n)-1)` -/
def P13025815224123237381.Spec : Prop :=
  ∀ n, P13025815224123237381.a n = A113678 n

end A113678

/-! ## A113678.P6296310008749374109

`A008611(A038207(n)/A007318(n)-1)`
-/

namespace A113678.P6296310008749374109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (A007318 n : ℚ) - 1)).toNat

end

end A113678.P6296310008749374109

namespace A113678

/-- `A008611(A038207(n)/A007318(n)-1)` -/
def P6296310008749374109.Spec : Prop :=
  ∀ n, P6296310008749374109.a n = A113678 n

end A113678

/-!
# A113679: Expansion of (1-x-2x^2)/(1-x).

The programs for A113679, the canonical program `A113679.P17482766796265330838` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113679 has offset 0).

The definition of A113679 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-x))` (program `A113679.P17482766796265330838`, by `A113679.P17482766796265330838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113679.P17482766796265330838

`ogf((1-x-2x^2)/(1-x))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113679

/-- `ogf((1-x-2x^2)/(1-x))` -/
def P17482766796265330838.Spec : Prop :=
  ∀ n, P17482766796265330838.a n = A113679 n

theorem P17482766796265330838.correct : P17482766796265330838.Spec := by
  intro n
  simp only [A113679]

end A113679

/-!
# A113680: Riordan array ((1-x-2x^2)/(1-x),x).

The programs for A113680, the canonical program `A113680.P4202360044323169764` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113680 has offset 0).

The definition of A113680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113680.P1398189032445830290

`1-3%A114283(n)`
-/

namespace A113680.P1398189032445830290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod 3 (A114283 n)

end

end A113680.P1398189032445830290

namespace A113680

/-- `1-3%A114283(n)` -/
def P1398189032445830290.Spec : Prop :=
  ∀ n, P1398189032445830290.a n = A113680 n

end A113680

/-! ## A113680.P1963099343933693870

`(2-A123486(n))%4`
-/

namespace A113680.P1963099343933693870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - A123486 n) 4

end

end A113680.P1963099343933693870

namespace A113680

/-- `(2-A123486(n))%4` -/
def P1963099343933693870.Spec : Prop :=
  ∀ n, P1963099343933693870.a n = A113680 n

end A113680

/-! ## A113680.P4202360044323169764

`2-gcd(4, A036561(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A113680

/-- `2-gcd(4, A036561(n))` -/
def P4202360044323169764.Spec : Prop :=
  ∀ n, P4202360044323169764.a n = A113680 n

theorem P4202360044323169764.correct : P4202360044323169764.Spec := by
  intro n
  simp only [A113680]

end A113680

/-! ## A113680.P11270596593292562788

`floor(atan(3-A099375(n)))`
-/

namespace A113680.P11270596593292562788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (3 - A099375 n : ℝ)⌋

end

end A113680.P11270596593292562788

namespace A113680

/-- `floor(atan(3-A099375(n)))` -/
def P11270596593292562788.Spec : Prop :=
  ∀ n, P11270596593292562788.a n = A113680 n

end A113680

/-! ## A113680.P5817310565031304944

`A175332(n+1)%4-2`
-/

namespace A113680.P5817310565031304944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175332 (n + 1)) 4 - 2

end

end A113680.P5817310565031304944

namespace A113680

/-- `A175332(n+1)%4-2` -/
def P5817310565031304944.Spec : Prop :=
  ∀ n, P5817310565031304944.a n = A113680 n

end A113680

/-! ## A113680.P3455739893474331429

`xor(1, A156319(n+1)-1)`
-/

namespace A113680.P3455739893474331429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A156319 (n + 1) - 1)

end

end A113680.P3455739893474331429

namespace A113680

/-- `xor(1, A156319(n+1)-1)` -/
def P3455739893474331429.Spec : Prop :=
  ∀ n, P3455739893474331429.a n = A113680 n

end A113680

/-! ## A113680.P13715746830564553992

`floor(atan(4-2*A004736(n+1)))`
-/

namespace A113680.P13715746830564553992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (4 - 2 * A004736 (n + 1) : ℝ)⌋

end

end A113680.P13715746830564553992

namespace A113680

/-- `floor(atan(4-2*A004736(n+1)))` -/
def P13715746830564553992.Spec : Prop :=
  ∀ n, P13715746830564553992.a n = A113680 n

end A113680

/-! ## A113680.P8258230082903834292

`A113679(A025581(n))`
-/

namespace A113680.P8258230082903834292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (A025581 n).toNat

end

end A113680.P8258230082903834292

namespace A113680

/-- `A113679(A025581(n))` -/
def P8258230082903834292.Spec : Prop :=
  ∀ n, P8258230082903834292.a n = A113680 n

end A113680

/-! ## A113680.P18186757919656813704

`A113679(A071417(n))`
-/

namespace A113680.P18186757919656813704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (A071417 n).toNat

end

end A113680.P18186757919656813704

namespace A113680

/-- `A113679(A071417(n))` -/
def P18186757919656813704.Spec : Prop :=
  ∀ n, P18186757919656813704.a n = A113680 n

end A113680

/-! ## A113680.P8980422796232161628

`A122958(A004736(n+1))%4`
-/

namespace A113680.P8980422796232161628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122958 (A004736 (n + 1)).toNat) 4

end

end A113680.P8980422796232161628

namespace A113680

/-- `A122958(A004736(n+1))%4` -/
def P8980422796232161628.Spec : Prop :=
  ∀ n, P8980422796232161628.a n = A113680 n

end A113680

/-! ## A113680.P6912558150166711155

`A114284(n)+and(2, A167374(n))`
-/

namespace A113680.P6912558150166711155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 n + Int.land 2 (A167374 n)

end

end A113680.P6912558150166711155

namespace A113680

/-- `A114284(n)+and(2, A167374(n))` -/
def P6912558150166711155.Spec : Prop :=
  ∀ n, P6912558150166711155.a n = A113680 n

end A113680

/-! ## A113680.P1126407466509577915

`A114284(n)+and(2, A185018(n))`
-/

namespace A113680.P1126407466509577915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114284 n + Int.land 2 (A185018 n)

end

end A113680.P1126407466509577915

namespace A113680

/-- `A114284(n)+and(2, A185018(n))` -/
def P1126407466509577915.Spec : Prop :=
  ∀ n, P1126407466509577915.a n = A113680 n

end A113680

/-! ## A113680.P1470153932084725993

`A135387(n+1)-A129765(n+1)`
-/

namespace A113680.P1470153932084725993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135387 (n + 1) - A129765 (n + 1)

end

end A113680.P1470153932084725993

namespace A113680

/-- `A135387(n+1)-A129765(n+1)` -/
def P1470153932084725993.Spec : Prop :=
  ∀ n, P1470153932084725993.a n = A113680 n

end A113680

/-! ## A113680.P6873652121413340421

`A023532(n+1)*A114284(n)`
-/

namespace A113680.P6873652121413340421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (n + 1) * A114284 n

end

end A113680.P6873652121413340421

namespace A113680

/-- `A023532(n+1)*A114284(n)` -/
def P6873652121413340421.Spec : Prop :=
  ∀ n, P6873652121413340421.a n = A113680 n

end A113680

/-! ## A113680.P3368035849870151911

`A274689(Δ[A023532(n)]+2)-1`
-/

namespace A113680.P3368035849870151911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274689 (f1 (n + 1) - f1 n + 2).toNat - 1

end

end A113680.P3368035849870151911

namespace A113680

/-- `A274689(Δ[A023532(n)]+2)-1` -/
def P3368035849870151911.Spec : Prop :=
  ∀ n, P3368035849870151911.a n = A113680 n

end A113680

/-! ## A113680.P85845218456209041

`A132749(n+1)-A173740(n+1)`
-/

namespace A113680.P85845218456209041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (n + 1) - A173740 (n + 1)

end

end A113680.P85845218456209041

namespace A113680

/-- `A132749(n+1)-A173740(n+1)` -/
def P85845218456209041.Spec : Prop :=
  ∀ n, P85845218456209041.a n = A113680 n

end A113680

/-! ## A113680.P11099355102193563511

`A029618(n+1)*A103451(n+1)-2`
-/

namespace A113680.P11099355102193563511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (n + 1) * A103451 (n + 1) - 2

end

end A113680.P11099355102193563511

namespace A113680

/-- `A029618(n+1)*A103451(n+1)-2` -/
def P11099355102193563511.Spec : Prop :=
  ∀ n, P11099355102193563511.a n = A113680 n

end A113680

/-! ## A113680.P10796837127689224095

`A154325(A014132(n+2))-A154325(n+1)²`
-/

namespace A113680.P10796837127689224095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 (A014132 (n + 2)).toNat - A154325 (n + 1) ^ 2

end

end A113680.P10796837127689224095

namespace A113680

/-- `A154325(A014132(n+2))-A154325(n+1)²` -/
def P10796837127689224095.Spec : Prop :=
  ∀ n, P10796837127689224095.a n = A113680 n

end A113680

/-! ## A113680.P13747457208627856289

`A113679(A095831(n+1))`
-/

namespace A113680.P13747457208627856289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (A095831 (n + 1)).toNat

end

end A113680.P13747457208627856289

namespace A113680

/-- `A113679(A095831(n+1))` -/
def P13747457208627856289.Spec : Prop :=
  ∀ n, P13747457208627856289.a n = A113680 n

end A113680

/-!
# A113681: Expansion of f(-x^2, -x^3)^2 / f(-x, -x^2) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A113681, the canonical program `A113681.P4096137213470006319` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113681 has offset 0).

The definition of A113681 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113681.P4096137213470006319

`A010815(5*n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113681

/-- `A010815(5*n)` -/
def P4096137213470006319.Spec : Prop :=
  ∀ n, P4096137213470006319.a n = A113681 n

theorem P4096137213470006319.correct : P4096137213470006319.Spec := by
  intro n
  simp only [A113681]

end A113681

/-! ## A113681.P11460798879024830132

`A274719(10*n)`
-/

namespace A113681.P11460798879024830132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (10 * n)

end

end A113681.P11460798879024830132

namespace A113681

/-- `A274719(10*n)` -/
def P11460798879024830132.Spec : Prop :=
  ∀ n, P11460798879024830132.a n = A113681 n

end A113681

/-! ## A113681.P16175691830550768288

`A207735(n)/(xor(1, n)-n)`
-/

namespace A113681.P16175691830550768288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207735 n : ℚ) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)

end

end A113681.P16175691830550768288

namespace A113681

/-- `A207735(n)/(xor(1, n)-n)` -/
def P16175691830550768288.Spec : Prop :=
  ∀ n, P16175691830550768288.a n = (A113681 n : ℚ)

end A113681

/-! ## A113681.P2060793902489224499

`A033999(n)*A207735(n)`
-/

namespace A113681.P2060793902489224499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A207735 n

end

end A113681.P2060793902489224499

namespace A113681

/-- `A033999(n)*A207735(n)` -/
def P2060793902489224499.Spec : Prop :=
  ∀ n, P2060793902489224499.a n = A113681 n

end A113681

/-! ## A113681.P15673108306625809078

`A113430(n)*A207710(n)*A207735(n)`
-/

namespace A113681.P15673108306625809078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 n * A207710 n * A207735 n

end

end A113681.P15673108306625809078

namespace A113681

/-- `A113430(n)*A207710(n)*A207735(n)` -/
def P15673108306625809078.Spec : Prop :=
  ∀ n, P15673108306625809078.a n = A113681 n

end A113681

/-! ## A113681.P6053398358508709475

`A113428(3*n)*A113430(n)`
-/

namespace A113681.P6053398358508709475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113428 (3 * n) * A113430 n

end

end A113681.P6053398358508709475

namespace A113681

/-- `A113428(3*n)*A113430(n)` -/
def P6053398358508709475.Spec : Prop :=
  ∀ n, P6053398358508709475.a n = A113681 n

end A113681

/-! ## A113681.P4923508456050155714

`A010815(A008587(n))^3`
-/

namespace A113681.P4923508456050155714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A008587 n).toNat ^ 3

end

end A113681.P4923508456050155714

namespace A113681

/-- `A010815(A008587(n))^3` -/
def P4923508456050155714.Spec : Prop :=
  ∀ n, P4923508456050155714.a n = A113681 n

end A113681

/-! ## A113681.P13053294745703654665

`A010815(Δ[A082450(n)])%2`
-/

namespace A113681.P13053294745703654665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010815 (f1 (n + 1) - f1 n).toNat) 2

end

end A113681.P13053294745703654665

namespace A113681

/-- `A010815(Δ[A082450(n)])%2` -/
def P13053294745703654665.Spec : Prop :=
  ∀ n, P13053294745703654665.a n = A113681 n

end A113681

/-! ## A113681.P5406675301081791784

`A000007(n)-A257628(5*n)`
-/

namespace A113681.P5406675301081791784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A257628 (5 * n)

end

end A113681.P5406675301081791784

namespace A113681

/-- `A000007(n)-A257628(5*n)` -/
def P5406675301081791784.Spec : Prop :=
  ∀ n, P5406675301081791784.a n = A113681 n

end A113681

/-! ## A113681.P5538057080254594953

`A010815(A008588(n)-n)%2`
-/

namespace A113681.P5538057080254594953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010815 (A008588 n - (n : ℤ)).toNat) 2

end

end A113681.P5538057080254594953

namespace A113681

/-- `A010815(A008588(n)-n)%2` -/
def P5538057080254594953.Spec : Prop :=
  ∀ n, P5538057080254594953.a n = A113681 n

end A113681

/-! ## A113681.P1663878958023336260

`A010815(A008706(n))+A000038(n)`
-/

namespace A113681.P1663878958023336260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A008706 n).toNat + A000038 n

end

end A113681.P1663878958023336260

namespace A113681

/-- `A010815(A008706(n))+A000038(n)` -/
def P1663878958023336260.Spec : Prop :=
  ∀ n, P1663878958023336260.a n = A113681 n

end A113681

/-! ## A113681.P1131320816934979646

`or(A000007(n), A010815(A008587(n)))`
-/

namespace A113681.P1131320816934979646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A010815 (A008587 n).toNat)

end

end A113681.P1131320816934979646

namespace A113681

/-- `or(A000007(n), A010815(A008587(n)))` -/
def P1131320816934979646.Spec : Prop :=
  ∀ n, P1131320816934979646.a n = A113681 n

end A113681

/-! ## A113681.P14671003535928165455

`A121373(5*n)/A057077(A005408(n))`
-/

namespace A113681.P14671003535928165455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (5 * n) : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A113681.P14671003535928165455

namespace A113681

/-- `A121373(5*n)/A057077(A005408(n))` -/
def P14671003535928165455.Spec : Prop :=
  ∀ n, P14671003535928165455.a n = (A113681 n : ℚ)

end A113681

/-! ## A113681.P5876987679141443868

`A057077(n)*A206958(5*n)`
-/

namespace A113681.P5876987679141443868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A206958 (5 * n)

end

end A113681.P5876987679141443868

namespace A113681

/-- `A057077(n)*A206958(5*n)` -/
def P5876987679141443868.Spec : Prop :=
  ∀ n, P5876987679141443868.a n = A113681 n

end A113681

/-! ## A113681.P16445773396631810895

`A134756(5*n)%2`
-/

namespace A113681.P16445773396631810895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134756 (5 * n)) 2

end

end A113681.P16445773396631810895

namespace A113681

/-- `A134756(5*n)%2` -/
def P16445773396631810895.Spec : Prop :=
  ∀ n, P16445773396631810895.a n = A113681 n

end A113681

/-! ## A113681.P16682787647013248450

`A286956(5*n)-5*n`
-/

namespace A113681.P16682787647013248450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286956 (5 * n) - (5 * n : ℤ)

end

end A113681.P16682787647013248450

namespace A113681

/-- `A286956(5*n)-5*n` -/
def P16682787647013248450.Spec : Prop :=
  ∀ n, P16682787647013248450.a n = A113681 n

end A113681

/-! ## A113681.P7587902259872478833

`A007706(5*n)-1`
-/

namespace A113681.P7587902259872478833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007706 (5 * n) - 1

end

end A113681.P7587902259872478833

namespace A113681

/-- `A007706(5*n)-1` -/
def P7587902259872478833.Spec : Prop :=
  ∀ n, P7587902259872478833.a n = A113681 n

end A113681

/-! ## A113681.P6900064960141390635

`A185124(A317095(n))`
-/

namespace A113681.P6900064960141390635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (A317095 n).toNat

end

end A113681.P6900064960141390635

namespace A113681

/-- `A185124(A317095(n))` -/
def P6900064960141390635.Spec : Prop :=
  ∀ n, P6900064960141390635.a n = A113681 n

end A113681

/-!
# A113682: Expansion of 2/(sqrt(1-2*x-3*x^2)*(1+x+sqrt(1-2*x-3*x^2))).

The programs for A113682, the canonical program `A113682.P13320769274093065264` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113682 has offset 0).

The definition of A113682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113682.P3429509759824161813

`(-1)^n+A246437(n+1)`
-/

namespace A113682.P3429509759824161813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A246437 (n + 1)

end

end A113682.P3429509759824161813

namespace A113682

/-- `(-1)^n+A246437(n+1)` -/
def P3429509759824161813.Spec : Prop :=
  ∀ n, P3429509759824161813.a n = A113682 n

end A113682

/-! ## A113682.P13320769274093065264

`(A002426(n+1)+(-1)^n)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113682

/-- `(A002426(n+1)+(-1)^n)/2` -/
def P13320769274093065264.Spec : Prop :=
  ∀ n, P13320769274093065264.a n = (A113682 n : ℚ)

end A113682

/-! ## A113682.P4199693239576381353

`A257520(n+1)-and(1, n)`
-/

namespace A113682.P4199693239576381353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1) - (Nat.land 1 n : ℤ)

end

end A113682.P4199693239576381353

namespace A113682

/-- `A257520(n+1)-and(1, n)` -/
def P4199693239576381353.Spec : Prop :=
  ∀ n, P4199693239576381353.a n = A113682 n

end A113682

/-! ## A113682.P12952822814610443736

`∑[Δ[A097861(n)]+(-1)^n]`
-/

namespace A113682.P12952822814610443736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113682.P12952822814610443736

namespace A113682

/-- `∑[Δ[A097861(n)]+(-1)^n]` -/
def P12952822814610443736.Spec : Prop :=
  ∀ n, P12952822814610443736.a n = A113682 n

end A113682

/-! ## A113682.P15978015434707375792

`A097861(n+1)+(n+1)%2`
-/

namespace A113682.P15978015434707375792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ)

end

end A113682.P15978015434707375792

namespace A113682

/-- `A097861(n+1)+(n+1)%2` -/
def P15978015434707375792.Spec : Prop :=
  ∀ n, P15978015434707375792.a n = A113682 n

end A113682

/-! ## A113682.P393541671020044708

`A005773(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A113682.P393541671020044708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005773 (n + 1) - a (n - 1)

end

end A113682.P393541671020044708

namespace A113682

/-- `A005773(n+1)-a(n-1)` -/
def P393541671020044708.Spec : Prop :=
  ∀ n, P393541671020044708.a n = A113682 n

end A113682

/-! ## A113682.P17903974940862042605

`A129703(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A113682.P17903974940862042605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A129703 n - (a (n - 1) + 1)

end

end A113682.P17903974940862042605

namespace A113682

/-- `A129703(n)-(a(n-1)+1)` -/
def P17903974940862042605.Spec : Prop :=
  ∀ n, P17903974940862042605.a n = A113682 n

end A113682

/-! ## A113682.P5720557724243874274

`A307789(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A113682.P5720557724243874274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307789 (n + 2) - a (n - 1)

end

end A113682.P5720557724243874274

namespace A113682

/-- `A307789(n+2)-a(n-1)` -/
def P5720557724243874274.Spec : Prop :=
  ∀ n, P5720557724243874274.a n = A113682 n

end A113682

/-! ## A113682.P10177927347659082428

`A309303(n)+A278646(n)`
-/

namespace A113682.P10177927347659082428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309303 n + A278646 n

end

end A113682.P10177927347659082428

namespace A113682

/-- `A309303(n)+A278646(n)` -/
def P10177927347659082428.Spec : Prop :=
  ∀ n, P10177927347659082428.a n = A113682 n

end A113682

/-! ## A113682.P16397610262031924719

`A246437(n)+Δ[A097861(n)]`
-/

namespace A113682.P16397610262031924719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n + (f1 (n + 1) - f1 n)

end

end A113682.P16397610262031924719

namespace A113682

/-- `A246437(n)+Δ[A097861(n)]` -/
def P16397610262031924719.Spec : Prop :=
  ∀ n, P16397610262031924719.a n = A113682 n

end A113682

/-! ## A113682.P14504061506527598736

`A246437(n)+Δ[A257520(n)]`
-/

namespace A113682.P14504061506527598736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n + (f1 (n + 1) - f1 n)

end

end A113682.P14504061506527598736

namespace A113682

/-- `A246437(n)+Δ[A257520(n)]` -/
def P14504061506527598736.Spec : Prop :=
  ∀ n, P14504061506527598736.a n = A113682 n

end A113682

/-! ## A113682.P16401594913270603848

`A097861(n+1)+A059841(n)`
-/

namespace A113682.P16401594913270603848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + A059841 n

end

end A113682.P16401594913270603848

namespace A113682

/-- `A097861(n+1)+A059841(n)` -/
def P16401594913270603848.Spec : Prop :=
  ∀ n, P16401594913270603848.a n = A113682 n

end A113682

/-! ## A113682.P11493884386458247439

`A257520(n+1)-A000035(n)`
-/

namespace A113682.P11493884386458247439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1) - A000035 n

end

end A113682.P11493884386458247439

namespace A113682

/-- `A257520(n+1)-A000035(n)` -/
def P11493884386458247439.Spec : Prop :=
  ∀ n, P11493884386458247439.a n = A113682 n

end A113682

/-! ## A113682.P16250071877838033344

`A097861(n+1)+abs(A056594(n))`
-/

namespace A113682.P16250071877838033344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + |A056594 n|

end

end A113682.P16250071877838033344

namespace A113682

/-- `A097861(n+1)+abs(A056594(n))` -/
def P16250071877838033344.Spec : Prop :=
  ∀ n, P16250071877838033344.a n = A113682 n

end A113682

/-! ## A113682.P3687156581204037345

`A097861(n+1)+Δ[A110654(n)]`
-/

namespace A113682.P3687156581204037345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + (f1 (n + 1) - f1 n)

end

end A113682.P3687156581204037345

namespace A113682

/-- `A097861(n+1)+Δ[A110654(n)]` -/
def P3687156581204037345.Spec : Prop :=
  ∀ n, P3687156581204037345.a n = A113682 n

end A113682

/-! ## A113682.P8599757395810921579

`A257520(n+1)-Δ[A004526(n)]`
-/

namespace A113682.P8599757395810921579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1) - (f1 (n + 1) - f1 n)

end

end A113682.P8599757395810921579

namespace A113682

/-- `A257520(n+1)-Δ[A004526(n)]` -/
def P8599757395810921579.Spec : Prop :=
  ∀ n, P8599757395810921579.a n = A113682 n

end A113682

/-! ## A113682.P209183964893552699

`A257520(n+1)-Δ[A008619(n)]`
-/

namespace A113682.P209183964893552699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1) - (f1 (n + 1) - f1 n)

end

end A113682.P209183964893552699

namespace A113682

/-- `A257520(n+1)-Δ[A008619(n)]` -/
def P209183964893552699.Spec : Prop :=
  ∀ n, P209183964893552699.a n = A113682 n

end A113682

/-! ## A113682.P3736977725296208169

`A097861(n+1)+char[A005843(n)]`
-/

namespace A113682.P3736977725296208169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113682.P3736977725296208169

namespace A113682

/-- `A097861(n+1)+char[A005843(n)]` -/
def P3736977725296208169.Spec : Prop :=
  ∀ n, P3736977725296208169.a n = A113682 n

end A113682

/-! ## A113682.P1501324844069075400

`A097861(n+1)+A000035(n+1)`
-/

namespace A113682.P1501324844069075400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + A000035 (n + 1)

end

end A113682.P1501324844069075400

namespace A113682

/-- `A097861(n+1)+A000035(n+1)` -/
def P1501324844069075400.Spec : Prop :=
  ∀ n, P1501324844069075400.a n = A113682 n

end A113682

/-! ## A113682.P6379926077012488219

`A372342(n+1)+A194589(n+1)`
-/

namespace A113682.P6379926077012488219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372342 (n + 1) + A194589 (n + 1)

end

end A113682.P6379926077012488219

namespace A113682

/-- `A372342(n+1)+A194589(n+1)` -/
def P6379926077012488219.Spec : Prop :=
  ∀ n, P6379926077012488219.a n = A113682 n

end A113682

/-!
# A113684: Expansion of x(1-x^2-x^3)/((1-x)(1-x-x^2))^2.

The programs for A113684, the canonical program `A113684.P14353842515037934572` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113684 has offset 0).

The definition of A113684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3-x^4)/(1-4x+4x^2+2x^3-4x^4+x^6))` (program `A113684.P14353842515037934572`, by `A113684.P14353842515037934572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113684.P14353842515037934572

`ogf((x-x^3-x^4)/(1-4x+4x^2+2x^3-4x^4+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A113684

/-- `ogf((x-x^3-x^4)/(1-4x+4x^2+2x^3-4x^4+x^6))` -/
def P14353842515037934572.Spec : Prop :=
  ∀ n, P14353842515037934572.a n = A113684 n

theorem P14353842515037934572.correct : P14353842515037934572.Spec := by
  intro n
  simp only [A113684]

end A113684

/-! ## A113684.P137164570923279669

`4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=25, a(5)=52`
-/

namespace A113684.P137164570923279669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 11, 25, 52] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) - 2 * a (n - 3) + 4 * a (n - 4) - a (n - 6)

end

end A113684.P137164570923279669

namespace A113684

/-- `4*a(n-1)-4*a(n-2)-2*a(n-3)+4*a(n-4)-a(n-6)` -/
def P137164570923279669.Spec : Prop :=
  ∀ n, P137164570923279669.a n = A113684 n

end A113684

/-! ## A113684.P11048220128227992965

`A023610(n)-(n+1)`
-/

namespace A113684.P11048220128227992965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n - (n + 1 : ℤ)

end

end A113684.P11048220128227992965

namespace A113684

/-- `A023610(n)-(n+1)` -/
def P11048220128227992965.Spec : Prop :=
  ∀ n, P11048220128227992965.a n = A113684 n

end A113684

/-! ## A113684.P6304389426246919270

`∑[∑[A208354(n)]-1]`
-/

namespace A113684.P6304389426246919270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P6304389426246919270

namespace A113684

/-- `∑[∑[A208354(n)]-1]` -/
def P6304389426246919270.Spec : Prop :=
  ∀ n, P6304389426246919270.a n = A113684 n

end A113684

/-! ## A113684.P13753504834183550621

`∑[A029907(n+1)-1]`
-/

namespace A113684.P13753504834183550621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P13753504834183550621

namespace A113684

/-- `∑[A029907(n+1)-1]` -/
def P13753504834183550621.Spec : Prop :=
  ∀ n, P13753504834183550621.a n = A113684 n

end A113684

/-! ## A113684.P1169388055202617110

`∑[A211228(2*n+1)-1]`
-/

namespace A113684.P1169388055202617110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P1169388055202617110

namespace A113684

/-- `∑[A211228(2*n+1)-1]` -/
def P1169388055202617110.Spec : Prop :=
  ∀ n, P1169388055202617110.a n = A113684 n

end A113684

/-! ## A113684.P378986875348685937

`∑[A000045(n)+a(n-2)+a(n-1)]-(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A113684.P378986875348685937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000045 n + (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A113684.P378986875348685937

namespace A113684

/-- `∑[A000045(n)+a(n-2)+a(n-1)]-(n+1)` -/
def P378986875348685937.Spec : Prop :=
  ∀ n, P378986875348685937.a n = A113684 n

end A113684

/-! ## A113684.P10560703352888832526

`A118425(n)+A001891(n)`
-/

namespace A113684.P10560703352888832526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118425 n + A001891 n

end

end A113684.P10560703352888832526

namespace A113684

/-- `A118425(n)+A001891(n)` -/
def P10560703352888832526.Spec : Prop :=
  ∀ n, P10560703352888832526.a n = A113684 n

end A113684

/-! ## A113684.P7082110954363159034

`A001891(n)+∑[A006478(n)]`
-/

namespace A113684.P7082110954363159034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P7082110954363159034

namespace A113684

/-- `A001891(n)+∑[A006478(n)]` -/
def P7082110954363159034.Spec : Prop :=
  ∀ n, P7082110954363159034.a n = A113684 n

end A113684

/-! ## A113684.P7967555166287373412

`∑[A000045(n)+A055244(n)-1]`
-/

namespace A113684.P7967555166287373412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A055244 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P7967555166287373412

namespace A113684

/-- `∑[A000045(n)+A055244(n)-1]` -/
def P7967555166287373412.Spec : Prop :=
  ∀ n, P7967555166287373412.a n = A113684 n

end A113684

/-! ## A113684.P3986799556994207329

`A131913(n)+A001629(n)-(n+1)`
-/

namespace A113684.P3986799556994207329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n + A001629 n - (n + 1 : ℤ)

end

end A113684.P3986799556994207329

namespace A113684

/-- `A131913(n)+A001629(n)-(n+1)` -/
def P3986799556994207329.Spec : Prop :=
  ∀ n, P3986799556994207329.a n = A113684 n

end A113684

/-! ## A113684.P10615801864729283188

`∑[A000071(n+1)+∑[A010049(n)]]`
-/

namespace A113684.P10615801864729283188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P10615801864729283188

namespace A113684

/-- `∑[A000071(n+1)+∑[A010049(n)]]` -/
def P10615801864729283188.Spec : Prop :=
  ∀ n, P10615801864729283188.a n = A113684 n

end A113684

/-! ## A113684.P7079515491174709017

`∑[A001629(n+1)+A000071(n+1)]`
-/

namespace A113684.P7079515491174709017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P7079515491174709017

namespace A113684

/-- `∑[A001629(n+1)+A000071(n+1)]` -/
def P7079515491174709017.Spec : Prop :=
  ∀ n, P7079515491174709017.a n = A113684 n

end A113684

/-! ## A113684.P16454014768064015320

`∑[∑[A006367(n+1)]-A212804(n+1)]`
-/

namespace A113684.P16454014768064015320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006367 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P16454014768064015320

namespace A113684

/-- `∑[∑[A006367(n+1)]-A212804(n+1)]` -/
def P16454014768064015320.Spec : Prop :=
  ∀ n, P16454014768064015320.a n = A113684 n

end A113684

/-! ## A113684.P3986883758677364284

`A179023(n)-A006478(n)`
-/

namespace A113684.P3986883758677364284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179023 n - A006478 n

end

end A113684.P3986883758677364284

namespace A113684

/-- `A179023(n)-A006478(n)` -/
def P3986883758677364284.Spec : Prop :=
  ∀ n, P3986883758677364284.a n = A113684 n

end A113684

/-! ## A113684.P13602309323741982029

`∑[A054453(∑[n])-1]`
-/

namespace A113684.P13602309323741982029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054453 (∑ j ∈ Finset.range (n + 1), f2 j) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113684.P13602309323741982029

namespace A113684

/-- `∑[A054453(∑[n])-1]` -/
def P13602309323741982029.Spec : Prop :=
  ∀ n, P13602309323741982029.a n = A113684 n

end A113684

/-! ## A113684.P14346319906797287900

`record[A213777(n+1)]-(n+1)`
-/

namespace A113684.P14346319906797287900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A113684.P14346319906797287900

namespace A113684

/-- `record[A213777(n+1)]-(n+1)` -/
def P14346319906797287900.Spec : Prop :=
  ∀ n, P14346319906797287900.a n = A113684 n

end A113684

/-! ## A113684.P17533325324210583144

`A067418(A000124(n+1))-(n+1)`
-/

namespace A113684.P17533325324210583144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 (A000124 (n + 1)).toNat - (n + 1 : ℤ)

end

end A113684.P17533325324210583144

namespace A113684

/-- `A067418(A000124(n+1))-(n+1)` -/
def P17533325324210583144.Spec : Prop :=
  ∀ n, P17533325324210583144.a n = A113684 n

end A113684

/-! ## A113684.P15510287125429123134

`A208337(∑[n+2])-(n+1)`
-/

namespace A113684.P15510287125429123134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208337 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A113684.P15510287125429123134

namespace A113684

/-- `A208337(∑[n+2])-(n+1)` -/
def P15510287125429123134.Spec : Prop :=
  ∀ n, P15510287125429123134.a n = A113684 n

end A113684

/-!
# A113685: Triangular array read by rows: T(n,k) is the number of partitions of n in which sum of odd parts is k, for k=0,1,...,n; n>=0.

The programs for A113685, there is no canonical definition to state claims against.
-/

/-! ## A113685.P17340729819180132157

`A000009(A002262(n))*A035363(A025581(n))`
-/

namespace A113685.P17340729819180132157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002262 n).toNat * A035363 (A025581 n).toNat

end

end A113685.P17340729819180132157

/-! ## A113685.P1143828302399983330

`A113686(∑[2*n]%comp[∑[n]])`
-/

namespace A113685.P1143828302399983330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113686 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A113685.P1143828302399983330

/-! ## A113685.P16164295544153257111

`A113686(∑[char[∑[n]]]²-n-1)`
-/

namespace A113685.P16164295544153257111
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113686 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A113685.P16164295544153257111

/-! ## A113685.P17514551025213012092

`A113686(A061579(n))%18`
-/

namespace A113685.P17514551025213012092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113686 (A061579 n).toNat) 18

end

end A113685.P17514551025213012092

/-! ## A113685.P9581046188702603899

`A060576(n)*A113686(A061579(n))`
-/

namespace A113685.P9581046188702603899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A113686 (A061579 n).toNat

end

end A113685.P9581046188702603899

/-! ## A113685.P4988929303087607364

`or(A000007(n), A113686(A061579(n)))`
-/

namespace A113685.P4988929303087607364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A113686 (A061579 n).toNat)

end

end A113685.P4988929303087607364

/-!
# A113686: Triangular array T(n,k)=number of partitions of n in which sum of even parts is k, for k=0,1,...n; n>=0.

The programs for A113686, there is no canonical definition to state claims against.
-/

/-! ## A113686.P9061006537411315729

`A000009(A025581(n))*A035363(A002262(n))`
-/

namespace A113686.P9061006537411315729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A025581 n).toNat * A035363 (A002262 n).toNat

end

end A113686.P9061006537411315729

/-! ## A113686.P12223433389412637213

`A113685(∑[2*n]%comp[∑[n]])`
-/

namespace A113686.P12223433389412637213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A113686.P12223433389412637213

/-! ## A113686.P816748101951323764

`A113685(∑[char[∑[n]]]²-n-1)`
-/

namespace A113686.P816748101951323764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A113686.P816748101951323764

/-! ## A113686.P2073862677963847994

`A113685(A061579(n))%17`
-/

namespace A113686.P2073862677963847994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113685 (A061579 n).toNat) 17

end

end A113686.P2073862677963847994

/-! ## A113686.P11326183332117328243

`and(A112714(n+1), A113685(A061579(n)))`
-/

namespace A113686.P11326183332117328243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112714 (n + 1)) (A113685 (A061579 n).toNat)

end

end A113686.P11326183332117328243

/-! ## A113686.P13197838379912918531

`and(A112715(n+1), A113685(A061579(n)))`
-/

namespace A113686.P13197838379912918531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112715 (n + 1)) (A113685 (A061579 n).toNat)

end

end A113686.P13197838379912918531

/-! ## A113686.P11298434657626054178

`A113685(A061579(n))+A035363(2*n+3)`
-/

namespace A113686.P11298434657626054178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113685 (A061579 n).toNat + A035363 (2 * n + 3)

end

end A113686.P11298434657626054178

/-!
# A113687: Expansion of q^(-7/12)eta(q)eta(q^6)^3/(eta(q^2)eta(q^3)) in powers of q.

The programs for A113687, there is no canonical definition to state claims against.
-/

/-! ## A113687.P8318923765389642095

`A062246(2*n)%A000034(A005898(n))`
-/

namespace A113687.P8318923765389642095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062246 (2 * n)) (A000034 (A005898 n).toNat)

end

end A113687.P8318923765389642095

/-! ## A113687.P13298771579294648464

`A324672(A003105(n)*A028920(n)*A098884(n))`
-/

namespace A113687.P13298771579294648464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (A003105 n * A028920 n * A098884 n).toNat

end

end A113687.P13298771579294648464

/-! ## A113687.P3007896593242496039

`A102283(A029863(n))`
-/

namespace A113687.P3007896593242496039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A029863 n).toNat

end

end A113687.P3007896593242496039

/-! ## A113687.P18371530281964606312

`A049347(A029863(n)-1)`
-/

namespace A113687.P18371530281964606312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A029863 n - 1).toNat

end

end A113687.P18371530281964606312

/-! ## A113687.P12249642664197636646

`A049347(A166311(n+1)+A029863(n))`
-/

namespace A113687.P12249642664197636646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A166311 (n + 1) + A029863 n).toNat

end

end A113687.P12249642664197636646

/-!
# A113690: Semiprimes in A054552.

The programs for A113690, there is no canonical definition to state claims against.
-/

/-! ## A113690.P12131642626198938182

`filter[A054552(n+1), A354927(#)]`
-/

namespace A113690.P12131642626198938182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A113690.P12131642626198938182

/-! ## A113690.P2541457799730627094

`filter[A093918(2*n+1), A354927(#)]`
-/

namespace A113690.P2541457799730627094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093918 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A113690.P2541457799730627094

/-! ## A113690.P16384495387488485730

`A054552(eq[2, A001222(A054552(n))])`
-/

namespace A113690.P16384495387488485730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113690.P16384495387488485730

/-! ## A113690.P15141022830882479557

`A054552(eq[4, A000005(A054552(n))])`
-/

namespace A113690.P15141022830882479557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113690.P15141022830882479557

/-! ## A113690.P428982949950168288

`filter[A054552(n), A064911(#)]`
-/

namespace A113690.P428982949950168288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113690.P428982949950168288

/-!
# A113691: Semiprimes in A033951.

The programs for A113691, there is no canonical definition to state claims against.
-/

/-! ## A113691.P16528124743604145522

`filter[A033951(n+2), A354927(#)]`
-/

namespace A113691.P16528124743604145522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A113691.P16528124743604145522

/-! ## A113691.P1551248772096528735

`filter[A033951(n+2), A373481(#)]`
-/

namespace A113691.P1551248772096528735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A113691.P1551248772096528735

/-! ## A113691.P8208314223215148225

`A033951(eq[2, A001222(A033951(n))])`
-/

namespace A113691.P8208314223215148225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113691.P8208314223215148225

/-! ## A113691.P3223514897808449747

`filter[A033951(n), A064911(#)]`
-/

namespace A113691.P3223514897808449747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113691.P3223514897808449747

/-! ## A113691.P7322941943249621002

`filter[A033951(n), A280710(#)]`
-/

namespace A113691.P7322941943249621002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A113691.P7322941943249621002

/-!
# A113692: Semiprimes in A054567.

The programs for A113692, there is no canonical definition to state claims against.
-/

/-! ## A113692.P6227518291996552939

`filter[A054567(n+2), A354927(#)]`
-/

namespace A113692.P6227518291996552939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A113692.P6227518291996552939

/-! ## A113692.P8921009473241884654

`filter[A054567(n+1), A064911(#)]`
-/

namespace A113692.P8921009473241884654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113692.P8921009473241884654

/-! ## A113692.P12039469507543200086

`filter[A054567(n+1), A280710(#)]`
-/

namespace A113692.P12039469507543200086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A113692.P12039469507543200086

/-! ## A113692.P1260986683538832877

`filter[A263511(2*n), A064911(#)]`
-/

namespace A113692.P1260986683538832877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263511 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113692.P1260986683538832877

/-! ## A113692.P10901335796497407630

`filter[A266883(2*n), A064911(#)]`
-/

namespace A113692.P10901335796497407630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113692.P10901335796497407630

/-!
# A113693: Semiprimes in A054556.

The programs for A113693, there is no canonical definition to state claims against.
-/

/-! ## A113693.P9708355538071354659

`filter[A054556(n+1), A064911(#)]`
-/

namespace A113693.P9708355538071354659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113693.P9708355538071354659

/-! ## A113693.P7467741586138481830

`filter[A267682(2*n), A064911(#)]`
-/

namespace A113693.P7467741586138481830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113693.P7467741586138481830

/-! ## A113693.P3862225537337958700

`filter[A266883(2*n+1), A064911(#)]`
-/

namespace A113693.P3862225537337958700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113693.P3862225537337958700

/-! ## A113693.P16107577887505157352

`∩[A001358(n+1), A054556(n+1)]`
-/

namespace A113693.P16107577887505157352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113693.P16107577887505157352

/-!
# A113695: a(1) = 1, a(2) = 2 then the least number starting with n so that every term divides the concatenation of its neighbors.

The programs for A113695, there is no canonical definition to state claims against.
-/

/-! ## A113695.P14951848940956973189

`A002322(xor(A015461(n), A245376(n)))`
-/

namespace A113695.P14951848940956973189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (Int.xor (A015461 n) (A245376 n)).toNat

end

end A113695.P14951848940956973189

/-!
# A113697: Floor[n concatenated with n+2 divided by n+1].

The programs for A113697, there is no canonical definition to state claims against.
-/

/-! ## A113697.P8951298962785350853

`floor(A032607(n+1)/(n+2))`
-/

namespace A113697.P8951298962785350853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032607 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A113697.P8951298962785350853

/-! ## A113697.P11522747118122688786

`floor(A084855(A034856(n+2))/(n+2))`
-/

namespace A113697.P11522747118122688786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084855 (A034856 (n + 2)).toNat : ℚ) / (n + 2 : ℚ)⌋

end

end A113697.P11522747118122688786

/-!
# A113698: Combinatorial sequence. Begin with 1 then 2 then 12 then 3 then all concatenations of all sizes of 1,2 and 3, then 4, then all concatenations of all sizes of 1,2,3,4 not included earlier etc.

The programs for A113698, there is no canonical definition to state claims against.
-/

/-! ## A113698.P6619518872322429656

`A048794(A209862(n+1))`
-/

namespace A113698.P6619518872322429656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A209862 (n + 1)).toNat

end

end A113698.P6619518872322429656

/-! ## A113698.P783860336579859987

`A082185(∑[A266640(n+1)])`
-/

namespace A113698.P783860336579859987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082185 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113698.P783860336579859987

/-! ## A113698.P16447451650748944360

`A065039(A069800(n+1))`
-/

namespace A113698.P16447451650748944360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A069800 (n + 1)).toNat

end

end A113698.P16447451650748944360

/-! ## A113698.P2077080885205494270

`A048794(A187829(n+1)+Δ[A107846(n)])`
-/

namespace A113698.P2077080885205494270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A187829 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A113698.P2077080885205494270

/-! ## A113698.P6981390280485262814

`A329025(A339195(n+1))`
-/

namespace A113698.P6981390280485262814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329025 (A339195 (n + 1)).toNat

end

end A113698.P6981390280485262814

/-!
# A113699: Index of the occurrence of n in A113698.

The programs for A113699, there is no canonical definition to state claims against.
-/

/-! ## A113699.P6093659734280045662

`A064458(n)+2^A053831(n)`
-/

namespace A113699.P6093659734280045662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064458 n : ℚ) + (2 : ℚ) ^ (A053831 n : ℤ)

end

end A113699.P6093659734280045662

/-! ## A113699.P15373962194105643789

`A344420(n)+2^A053831(n)`
-/

namespace A113699.P15373962194105643789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344420 n : ℚ) + (2 : ℚ) ^ (A053831 n : ℤ)

end

end A113699.P15373962194105643789

/-! ## A113699.P16689831196638593879

`A064458(n)+A000079(A053831(n))`
-/

namespace A113699.P16689831196638593879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 n + A000079 (A053831 n).toNat

end

end A113699.P16689831196638593879

/-! ## A113699.P16855261034567453040

`A344420(n)+A000079(A053831(n))`
-/

namespace A113699.P16855261034567453040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 n + A000079 (A053831 n).toNat

end

end A113699.P16855261034567453040

/-! ## A113699.P9429386163313242796

`A329562(A098488(n))+A064458(n)`
-/

namespace A113699.P9429386163313242796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A098488 n).toNat + A064458 n

end

end A113699.P9429386163313242796

/-! ## A113699.P8233793140665629052

`A000079(A053831(n))+∑[A107846(n)]`
-/

namespace A113699.P8233793140665629052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053831 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113699.P8233793140665629052

/-! ## A113699.P12358415551245058384

`A329562(A098488(n))+∑[A107846(n)]`
-/

namespace A113699.P12358415551245058384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 (A098488 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113699.P12358415551245058384

