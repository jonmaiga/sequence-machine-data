import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A389802: The number of irreducible balanced subsets of [n].

The programs for A389802, there is no canonical definition to state claims against.
-/

/-! ## A389802.P15602858171579983805

`A341534(A274017(n))`
-/

namespace A389802.P15602858171579983805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341534 (A274017 n).toNat

end

end A389802.P15602858171579983805

/-!
# A389803: a(n) = A389802(2n+1).

The programs for A389803, there is no canonical definition to state claims against.
-/

/-! ## A389803.P627420929151917362

`A389802(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389803.P627420929151917362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389802 (2 * n + 1)

end

end A389803.P627420929151917362

/-! ## A389803.P4902797946331343983

`a(n-1)+1+2*A390082(n)` with `a(0)=1`
-/

namespace A389803.P4902797946331343983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 + 2 * A390082 n)

end

end A389803.P4902797946331343983

/-! ## A389803.P16749331053795276808

`or(floor(1/(n+1)), A389802((n+1)²-n²))`
-/

namespace A389803.P16749331053795276808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊1 / (n + 1 : ℚ)⌋ (A389802 ((n + 1) ^ 2 - n ^ 2))

end

end A389803.P16749331053795276808

/-! ## A389803.P14455818144573950612

`record[A389802(A086112(n+1))]`
-/

namespace A389803.P14455818144573950612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389802 (A086112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389803.P14455818144573950612

/-! ## A389803.P8569339280012202662

`record[A389802(n+1)/A287197(n)]`
-/

namespace A389803.P8569339280012202662
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389802 (n + 1) : ℚ) / (A287197 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389803.P8569339280012202662

/-!
# A389804: a(n) = A389802(2*n).

The programs for A389804, there is no canonical definition to state claims against.
-/

/-! ## A389804.P13546303859632164399

`A389802(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389804.P13546303859632164399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389802 (2 * (n + 1))

end

end A389804.P13546303859632164399

/-! ## A389804.P11775743377935949435

`a(n-1)+1+2*A390083(n+1)` with `a(0)=1`
-/

namespace A389804.P11775743377935949435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 + 2 * A390083 (n + 1))

end

end A389804.P11775743377935949435

/-! ## A389804.P6131818683163992464

`record[A389802(A114112(n+1))]`
-/

namespace A389804.P6131818683163992464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389802 (A114112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389804.P6131818683163992464

/-! ## A389804.P5797722673995529261

`record[A389802(A348717(n+1))]`
-/

namespace A389804.P5797722673995529261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389802 (A348717 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389804.P5797722673995529261

/-!
# A389806: a(n) = A389805(2*n+1).

The programs for A389806, there is no canonical definition to state claims against.
-/

/-! ## A389806.P17948251774686371215

`A389805(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389806.P17948251774686371215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389805 (2 * n + 1)

end

end A389806.P17948251774686371215

/-! ## A389806.P12412359458750939372

`A389805(Δ[n²])%A102591(n+3)`
-/

namespace A389806.P12412359458750939372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A102591 (n + 3))

end

end A389806.P12412359458750939372

/-!
# A389807: a(n) = A389805(2*n).

The programs for A389807, there is no canonical definition to state claims against.
-/

/-! ## A389807.P4875681043850878366

`A389805(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389807.P4875681043850878366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389805 (2 * (n + 1))

end

end A389807.P4875681043850878366

/-!
# A389809: Sequence containing k-1 occurrences of prime(k) ordered by k.

The programs for A389809, the canonical program `A389809.P18305442377972474179` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389809 has offset 1).

The definition of A389809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389809.P16467724107523621993

`A065091(round(sqrt(2*n+1)))`
-/

namespace A389809.P16467724107523621993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A389809.P16467724107523621993

namespace A389809

/-- `A065091(round(sqrt(2*n+1)))` -/
def P16467724107523621993.Spec : Prop :=
  ∀ n, P16467724107523621993.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P7819756744528425623

`A003961(A005145(n+1))`
-/

namespace A389809.P7819756744528425623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A005145 (n + 1)).toNat

end

end A389809.P7819756744528425623

namespace A389809

/-- `A003961(A005145(n+1))` -/
def P7819756744528425623.Spec : Prop :=
  ∀ n, P7819756744528425623.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P15772223550134616712

`A026234(A111653(n+1))`
-/

namespace A389809.P15772223550134616712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A111653 (n + 1)).toNat

end

end A389809.P15772223550134616712

namespace A389809

/-- `A026234(A111653(n+1))` -/
def P15772223550134616712.Spec : Prop :=
  ∀ n, P15772223550134616712.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P4053051504908167269

`A063934(A111650(n+1))`
-/

namespace A389809.P4053051504908167269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (A111650 (n + 1)).toNat

end

end A389809.P4053051504908167269

namespace A389809

/-- `A063934(A111650(n+1))` -/
def P4053051504908167269.Spec : Prop :=
  ∀ n, P4053051504908167269.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P18305442377972474179

`A000040(A003057(n+2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A389809

/-- `A000040(A003057(n+2))` -/
def P18305442377972474179.Spec : Prop :=
  ∀ n, P18305442377972474179.a n = A389809 (n + 1)

theorem P18305442377972474179.correct : P18305442377972474179.Spec := by
  intro n
  simp only [A389809, Nat.add_sub_cancel]

end A389809

/-! ## A389809.P4225341823676204886

`A000040(A003056(n)+2)`
-/

namespace A389809.P4225341823676204886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003056 n + 2).toNat

end

end A389809.P4225341823676204886

namespace A389809

/-- `A000040(A003056(n)+2)` -/
def P4225341823676204886.Spec : Prop :=
  ∀ n, P4225341823676204886.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P9836579019576889716

`A000040(A002024(n+1)+1)`
-/

namespace A389809.P9836579019576889716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002024 (n + 1) + 1).toNat

end

end A389809.P9836579019576889716

namespace A389809

/-- `A000040(A002024(n+1)+1)` -/
def P9836579019576889716.Spec : Prop :=
  ∀ n, P9836579019576889716.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P16557007972712788604

`A008578(A002024(n+1)+2)`
-/

namespace A389809.P16557007972712788604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A002024 (n + 1) + 2).toNat

end

end A389809.P16557007972712788604

namespace A389809

/-- `A008578(A002024(n+1)+2)` -/
def P16557007972712788604.Spec : Prop :=
  ∀ n, P16557007972712788604.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P9918253703124203493

`A000040(A014132(n+1)-n)`
-/

namespace A389809.P9918253703124203493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A014132 (n + 1) - (n : ℤ)).toNat

end

end A389809.P9918253703124203493

namespace A389809

/-- `A000040(A014132(n+1)-n)` -/
def P9918253703124203493.Spec : Prop :=
  ∀ n, P9918253703124203493.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P2090206126985853814

`A104887(n+1)+A090321(n+1)`
-/

namespace A389809.P2090206126985853814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1) + A090321 (n + 1)

end

end A389809.P2090206126985853814

namespace A389809

/-- `A104887(n+1)+A090321(n+1)` -/
def P2090206126985853814.Spec : Prop :=
  ∀ n, P2090206126985853814.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P14677765064870219520

`A204890(n+1)+A037126(n+1)`
-/

namespace A389809.P14677765064870219520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (n + 1) + A037126 (n + 1)

end

end A389809.P14677765064870219520

namespace A389809

/-- `A204890(n+1)+A037126(n+1)` -/
def P14677765064870219520.Spec : Prop :=
  ∀ n, P14677765064870219520.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P4447419838856101908

`A391357(n+1)-A037126(n+1)`
-/

namespace A389809.P4447419838856101908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391357 (n + 1) - A037126 (n + 1)

end

end A389809.P4447419838856101908

namespace A389809

/-- `A391357(n+1)-A037126(n+1)` -/
def P4447419838856101908.Spec : Prop :=
  ∀ n, P4447419838856101908.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P201207096245290319

`A391358(n+1)-A104887(n+1)`
-/

namespace A389809.P201207096245290319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391358 (n + 1) - A104887 (n + 1)

end

end A389809.P201207096245290319

namespace A389809

/-- `A391358(n+1)-A104887(n+1)` -/
def P201207096245290319.Spec : Prop :=
  ∀ n, P201207096245290319.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P842173597445621608

`A051599(A127739(n+1))`
-/

namespace A389809.P842173597445621608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051599 (A127739 (n + 1)).toNat

end

end A389809.P842173597445621608

namespace A389809

/-- `A051599(A127739(n+1))` -/
def P842173597445621608.Spec : Prop :=
  ∀ n, P842173597445621608.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P7838104137447345577

`A104887(A004736(n+1)+n+1)`
-/

namespace A389809.P7838104137447345577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (A004736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A389809.P7838104137447345577

namespace A389809

/-- `A104887(A004736(n+1)+n+1)` -/
def P7838104137447345577.Spec : Prop :=
  ∀ n, P7838104137447345577.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P363535916666524346

`A083140(A004736(n+1)+n+2)`
-/

namespace A389809.P363535916666524346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A004736 (n + 1) + (n + 2 : ℤ)).toNat

end

end A389809.P363535916666524346

namespace A389809

/-- `A083140(A004736(n+1)+n+2)` -/
def P363535916666524346.Spec : Prop :=
  ∀ n, P363535916666524346.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P16801504484534520033

`A005145(A014132(n+1))`
-/

namespace A389809.P16801504484534520033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A014132 (n + 1)).toNat

end

end A389809.P16801504484534520033

namespace A389809

/-- `A005145(A014132(n+1))` -/
def P16801504484534520033.Spec : Prop :=
  ∀ n, P16801504484534520033.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P16562735162864570305

`A005145(A002024(n+1)+n+1)`
-/

namespace A389809.P16562735162864570305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A002024 (n + 1) + (n + 1 : ℤ)).toNat

end

end A389809.P16562735162864570305

namespace A389809

/-- `A005145(A002024(n+1)+n+1)` -/
def P16562735162864570305.Spec : Prop :=
  ∀ n, P16562735162864570305.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P3656858438455402221

`p?[Δ[A077320(n+1)]]`
-/

namespace A389809.P3656858438455402221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077320 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389809.P3656858438455402221

namespace A389809

/-- `p?[Δ[A077320(n+1)]]` -/
def P3656858438455402221.Spec : Prop :=
  ∀ n, P3656858438455402221.a n = A389809 (n + 1)

end A389809

/-! ## A389809.P2099123421688664811

`A005145(A080036(n+1))`
-/

namespace A389809.P2099123421688664811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A080036 (n + 1)).toNat

end

end A389809.P2099123421688664811

namespace A389809

/-- `A005145(A080036(n+1))` -/
def P2099123421688664811.Spec : Prop :=
  ∀ n, P2099123421688664811.a n = A389809 (n + 1)

end A389809

/-!
# A389810: Prime(k)-1 copies of prime(k) ordered by increasing k.

The programs for A389810, the canonical program `A389810.P16776173714572326767` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389810 has offset 1).

The definition of A389810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389810.P13026898758250884961

`p?[ceil(sqrt(2*(n+2)))]`
-/

namespace A389810.P13026898758250884961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * (n + 2) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389810.P13026898758250884961

namespace A389810

/-- `p?[ceil(sqrt(2*(n+2)))]` -/
def P13026898758250884961.Spec : Prop :=
  ∀ n, P13026898758250884961.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P16776173714572326767

`A008578(A175969(n+1)-n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A389810

/-- `A008578(A175969(n+1)-n)` -/
def P16776173714572326767.Spec : Prop :=
  ∀ n, P16776173714572326767.a n = A389810 (n + 1)

theorem P16776173714572326767.correct : P16776173714572326767.Spec := by
  intro n
  simp only [A389810, Nat.add_sub_cancel]

end A389810

/-! ## A389810.P16687871267233897096

`A000040(A175969(n+1)-(n+1))`
-/

namespace A389810.P16687871267233897096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A175969 (n + 1) - (n + 1 : ℤ)).toNat

end

end A389810.P16687871267233897096

namespace A389810

/-- `A000040(A175969(n+1)-(n+1))` -/
def P16687871267233897096.Spec : Prop :=
  ∀ n, P16687871267233897096.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P17351219878252526185

`A063905(A175969(n+1))`
-/

namespace A389810.P17351219878252526185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A175969 (n + 1)).toNat

end

end A389810.P17351219878252526185

namespace A389810

/-- `A063905(A175969(n+1))` -/
def P17351219878252526185.Spec : Prop :=
  ∀ n, P17351219878252526185.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P18148031029381600761

`A063905(A000720(A063905(n+1))+n+1)`
-/

namespace A389810.P18148031029381600761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A000720 (A063905 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A389810.P18148031029381600761

namespace A389810

/-- `A063905(A000720(A063905(n+1))+n+1)` -/
def P18148031029381600761.Spec : Prop :=
  ∀ n, P18148031029381600761.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P2686950782630770141

`A000040(A083375(A083375(n+1)+n+1))`
-/

namespace A389810.P2686950782630770141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A083375 (A083375 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A389810.P2686950782630770141

namespace A389810

/-- `A000040(A083375(A083375(n+1)+n+1))` -/
def P2686950782630770141.Spec : Prop :=
  ∀ n, P2686950782630770141.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P687172805060625308

`A063905(A049084(A063905(n+1))+n+1)`
-/

namespace A389810.P687172805060625308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A049084 (A063905 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A389810.P687172805060625308

namespace A389810

/-- `A063905(A049084(A063905(n+1))+n+1)` -/
def P687172805060625308.Spec : Prop :=
  ∀ n, P687172805060625308.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P9997690413216255588

`A008578(A162988(A162988(n+1)+n+1))`
-/

namespace A389810.P9997690413216255588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A162988 (A162988 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A389810.P9997690413216255588

namespace A389810

/-- `A008578(A162988(A162988(n+1)+n+1))` -/
def P9997690413216255588.Spec : Prop :=
  ∀ n, P9997690413216255588.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P13046267363993405376

`A151800(A006530(A291577(n)))`
-/

namespace A389810.P13046267363993405376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006530 (A291577 n).toNat).toNat

end

end A389810.P13046267363993405376

namespace A389810

/-- `A151800(A006530(A291577(n)))` -/
def P13046267363993405376.Spec : Prop :=
  ∀ n, P13046267363993405376.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P13898863036767804043

`filter[A185195(n+1), A010051(#)]`
-/

namespace A389810.P13898863036767804043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A389810.P13898863036767804043

namespace A389810

/-- `filter[A185195(n+1), A010051(#)]` -/
def P13898863036767804043.Spec : Prop :=
  ∀ n, P13898863036767804043.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P4079597660380630032

`filter[A185195(n+2), A080339(#)]`
-/

namespace A389810.P4079597660380630032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A389810.P4079597660380630032

namespace A389810

/-- `filter[A185195(n+2), A080339(#)]` -/
def P4079597660380630032.Spec : Prop :=
  ∀ n, P4079597660380630032.a n = A389810 (n + 1)

end A389810

/-! ## A389810.P4091007063386556021

`A117366(A291577(n))`
-/

namespace A389810.P4091007063386556021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A291577 n).toNat

end

end A389810.P4091007063386556021

namespace A389810

/-- `A117366(A291577(n))` -/
def P4091007063386556021.Spec : Prop :=
  ∀ n, P4091007063386556021.a n = A389810 (n + 1)

end A389810

/-!
# A389811: Number of integer partitions of n whose parts are not in arithmetic progression.

The programs for A389811, there is no canonical definition to state claims against.
-/

/-! ## A389811.P1105328416195708118

`A000041(n)-A049988(n)`
-/

namespace A389811.P1105328416195708118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A049988 n

end

end A389811.P1105328416195708118

/-! ## A389811.P2332058719358463915

`A213598(n)-A049988(n)`
-/

namespace A389811.P2332058719358463915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A049988 n

end

end A389811.P2332058719358463915

/-! ## A389811.P14995768988727237735

`∑[A002865(n)]-A049988(n)`
-/

namespace A389811.P14995768988727237735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049988 n

end

end A389811.P14995768988727237735

/-! ## A389811.P9134718820914731606

`A000065(n)+1-A049988(n)`
-/

namespace A389811.P9134718820914731606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - A049988 n

end

end A389811.P9134718820914731606

/-! ## A389811.P6081622356380241053

`A035363(2*n)-A049988(n)`
-/

namespace A389811.P6081622356380241053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A049988 n

end

end A389811.P6081622356380241053

/-!
# A389812: Numbers whose prime indices are not in arithmetic progression.

The programs for A389812, there is no canonical definition to state claims against.
-/

/-! ## A389812.P11348766276090569155

`lt[1, A355523(n+1)]+1`
-/

namespace A389812.P11348766276090569155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389812.P11348766276090569155

/-! ## A389812.P4149974235442465504

`∪[A065201(n+1), A359890(n+1)]`
-/

namespace A389812.P4149974235442465504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P4149974235442465504

/-! ## A389812.P14470349717749079159

`∪[A087245(n+1), A359890(n+1)]`
-/

namespace A389812.P14470349717749079159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P14470349717749079159

/-! ## A389812.P407096501962229560

`∪[A087967(n+1), A359890(n+1)]`
-/

namespace A389812.P407096501962229560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P407096501962229560

/-! ## A389812.P17284961775681954688

`∪[A091192(n+1), A359890(n+1)]`
-/

namespace A389812.P17284961775681954688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P17284961775681954688

/-! ## A389812.P14078627679581143008

`∪[A126706(n+1), A359890(n+1)]`
-/

namespace A389812.P14078627679581143008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P14078627679581143008

/-! ## A389812.P9253788217091813047

`∪[A126706(n+1), A359892(n+1)]`
-/

namespace A389812.P9253788217091813047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P9253788217091813047

/-! ## A389812.P11360500311102938886

`∪[A126706(n+1), A363730(n+1)]`
-/

namespace A389812.P11360500311102938886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P11360500311102938886

/-! ## A389812.P11987771054886355727

`∪[A281925(n+1), A359890(n+1)]`
-/

namespace A389812.P11987771054886355727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P11987771054886355727

/-! ## A389812.P16324722441800669534

`∪[A284342(n+1), A359890(n+1)]`
-/

namespace A389812.P16324722441800669534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389812.P16324722441800669534

/-!
# A389813: Number of subsets of {1..n} not forming a finite arithmetic progression.

The programs for A389813, there is no canonical definition to state claims against.
-/

/-! ## A389813.P8335739904546470153

`∑[A389921(n)]`
-/

namespace A389813.P8335739904546470153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389813.P8335739904546470153

/-! ## A389813.P7990556433212635183

`2^n-A389737(n)`
-/

namespace A389813.P7990556433212635183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A389737 n

end

end A389813.P7990556433212635183

/-! ## A389813.P856645331526350871

`A006127(n)-A350104(n)`
-/

namespace A389813.P856645331526350871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - A350104 n

end

end A389813.P856645331526350871

/-! ## A389813.P150272640153788933

`abs(A000079(n)-A389737(n))`
-/

namespace A389813.P150272640153788933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A389737 n|

end

end A389813.P150272640153788933

/-! ## A389813.P9811786351307380190

`A175342(n+1)+A389741(n+1)-A389737(n)`
-/

namespace A389813.P9811786351307380190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175342 (n + 1) + (A389741 (n + 1) - A389737 n)

end

end A389813.P9811786351307380190

/-!
# A389814: Powers k^m, m > 1, where k is an Achilles number that is not a product of primorials.

The programs for A389814, there is no canonical definition to state claims against.
-/

/-! ## A389814.P14169171568266300923

`∪[A389341(n+1), A389374(n+1)]`
-/

namespace A389814.P14169171568266300923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389814.P14169171568266300923

/-! ## A389814.P3861272175702209530

`A387958(n+1)^A011248(A119879(3*n+2))`
-/

namespace A389814.P3861272175702209530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387958 (n + 1) : ℚ) ^ (A011248 (A119879 (3 * n + 2)).toNat : ℤ)

end

end A389814.P3861272175702209530

/-!
# A389815: Number of vertex-transitive graphs with n vertices that are not circulant.

The programs for A389815, there is no canonical definition to state claims against.
-/

/-! ## A389815.P6689048181632989174

`A006799(n+1)-A049287(n+1)`
-/

namespace A389815.P6689048181632989174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006799 (n + 1) - A049287 (n + 1)

end

end A389815.P6689048181632989174

/-!
# A389817: E.g.f. A(x) satisfies A(x) = (1+x) * exp(x^2 * A(x)).

The programs for A389817, there is no canonical definition to state claims against.
-/

/-! ## A389817.P2645707211633621008

`A134170(A022916(n))`
-/

namespace A389817.P2645707211633621008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134170 (A022916 n).toNat

end

end A389817.P2645707211633621008

/-! ## A389817.P2458570027761590145

`A055034(A300736(n+1)+2)`
-/

namespace A389817.P2458570027761590145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A300736 (n + 1) + 2).toNat

end

end A389817.P2458570027761590145

/-!
# A389818: E.g.f. A(x) satisfies A(x) = (1+x) * exp(x^2 * (1+x) * A(x)).

The programs for A389818, there is no canonical definition to state claims against.
-/

/-! ## A389818.P15283557612852359007

`A006389(n)*A196169(A006389(n))`
-/

namespace A389818.P15283557612852359007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006389 n * A196169 (A006389 n).toNat

end

end A389818.P15283557612852359007

/-! ## A389818.P14367119324388739546

`A003418(n)*A218426(A057992(n))`
-/

namespace A389818.P14367119324388739546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A218426 (A057992 n).toNat

end

end A389818.P14367119324388739546

/-!
# A389819: E.g.f. A(x) satisfies A(x) = (1+x) * exp(x^2 * (1+x)^2 * A(x)).

The programs for A389819, there is no canonical definition to state claims against.
-/

/-! ## A389819.P2131534046602257057

`∏{p}[(2*n)!, n+2-and(3, #)]`
-/

namespace A389819.P2131534046602257057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((n + 2 : ℤ) - (Nat.land 3 p : ℤ))

end

end A389819.P2131534046602257057

/-!
# A389820: E.g.f. A(x) satisfies A(x) = (1+x) * exp(x^3 * A(x)).

The programs for A389820, there is no canonical definition to state claims against.
-/

/-! ## A389820.P14542991218090055259

`A389787(n)+A010052(A007865(3*n+2))`
-/

namespace A389820.P14542991218090055259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389787 n + A010052 (A007865 (3 * n + 2)).toNat

end

end A389820.P14542991218090055259

/-! ## A389820.P13809002935562389551

`n!*A287341(∑[n^n])`
-/

namespace A389820.P13809002935562389551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A287341 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389820.P13809002935562389551

/-!
# A389821: E.g.f. A(x) satisfies A(x) = (1+x) * exp(x^3 * (1+x) * A(x)).

The programs for A389821, there is no canonical definition to state claims against.
-/

/-! ## A389821.P11931672762914172849

`abs((A025143(abs((A025473(3*n+4)-n)*n!))-n)*n!)`
-/

namespace A389821.P11931672762914172849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((A025143 |(A025473 (3 * n + 4) - (n : ℤ)) * (Nat.factorial n : ℤ)|.toNat - (n : ℤ)) * (Nat.factorial n : ℤ))|

end

end A389821.P11931672762914172849

/-! ## A389821.P4002017614342886777

`A000142(n)*A139351(A125815(n))`
-/

namespace A389821.P4002017614342886777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A139351 (A125815 n).toNat

end

end A389821.P4002017614342886777

/-!
# A389822: E.g.f. A(x) satisfies A(x) = (1+x) * exp(x^3 * (1+x)^2 * A(x)).

The programs for A389822, there is no canonical definition to state claims against.
-/

/-! ## A389822.P17130504064748821375

`A000142(n)*A023416(A006820(2*n+1))`
-/

namespace A389822.P17130504064748821375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A023416 (A006820 (2 * n + 1)).toNat

end

end A389822.P17130504064748821375

/-!
# A389823: Indices k such that the product of the first k prime gaps plus 1 is prime.

The programs for A389823, there is no canonical definition to state claims against.
-/

/-! ## A389823.P8681993493994394838

`eq[A025841(n), A055087(n)]`
-/

namespace A389823.P8681993493994394838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389823.P8681993493994394838

/-! ## A389823.P6528147614130812685

`eq[A025685(n+1), A025841(n)]`
-/

namespace A389823.P6528147614130812685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389823.P6528147614130812685

/-!
# A389825: a(1) = 2; for n > 1, a(n) is the smallest unused prime number that can be created by either removing or adding a single digit anywhere in the value of a(n-1).

The programs for A389825, there is no canonical definition to state claims against.
-/

/-! ## A389825.P8153246140963351409

`A107810(A008472(n+2)^A136102(n+1))`
-/

namespace A389825.P8153246140963351409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107810 (SequenceMachineLib.roundAway ((A008472 (n + 2) : ℚ) ^ (A136102 (n + 1) : ℤ))).toNat

end

end A389825.P8153246140963351409

/-!
# A389826: a(n) = floor(n*A030101(n)/(n + A030101(n))).

The programs for A389826, the canonical program `A389826.P9330026923282160192` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389826 has offset 1).

The definition of A389826 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389826.P9330026923282160192

`floor((n+1)*A030101(n+1)/(n+1+A030101(n+1)))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A389826

/-- `floor((n+1)*A030101(n+1)/(n+1+A030101(n+1)))` -/
def P9330026923282160192.Spec : Prop :=
  ∀ n, P9330026923282160192.a n = A389826 (n + 1)

theorem P9330026923282160192.correct : P9330026923282160192.Spec := by
  intro n
  simp only [A389826, Nat.add_sub_cancel]

end A389826

/-! ## A389826.P17858488282581883397

`A336469(A100431(n))`
-/

namespace A389826.P17858488282581883397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (A100431 n).toNat

end

end A389826.P17858488282581883397

namespace A389826

/-- `A336469(A100431(n))` -/
def P17858488282581883397.Spec : Prop :=
  ∀ n, P17858488282581883397.a n = A389826 (n + 1)

end A389826

/-! ## A389826.P11805231011205942672

`A286378(n+1)-A014675(A319405(n))`
-/

namespace A389826.P11805231011205942672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286378 (n + 1) - A014675 (A319405 n).toNat

end

end A389826.P11805231011205942672

namespace A389826

/-- `A286378(n+1)-A014675(A319405(n))` -/
def P11805231011205942672.Spec : Prop :=
  ∀ n, P11805231011205942672.a n = A389826 (n + 1)

end A389826

/-! ## A389826.P11381020818900143786

`A328958(A106680(n+3))+A231204(2*(n+1))`
-/

namespace A389826.P11381020818900143786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (A106680 (n + 3)).toNat + A231204 (2 * (n + 1))

end

end A389826.P11381020818900143786

namespace A389826

/-- `A328958(A106680(n+3))+A231204(2*(n+1))` -/
def P11381020818900143786.Spec : Prop :=
  ∀ n, P11381020818900143786.a n = A389826 (n + 1)

end A389826

/-!
# A389831: Multiplicative sequence a(n) with a(p^e) = 2 + e^2 for prime p and e > 0.

The programs for A389831, the canonical program `A389831.P17950296721468507002` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389831 has offset 1).

The definition of A389831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389831.P17950296721468507002

`∏{e}[n+1, #²+2]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A389831

/-- `∏{e}[n+1, #²+2]` -/
def P17950296721468507002.Spec : Prop :=
  ∀ n, (P17950296721468507002.a n : ℤ) = A389831 (n + 1)

theorem P17950296721468507002.correct : P17950296721468507002.Spec := by
  intro n
  simp only [A389831, Nat.add_sub_cancel]

end A389831

/-! ## A389831.P9606728701628142580

`∏{p}[n+1, val(n+1, #)²+2]`
-/

namespace A389831.P9606728701628142580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p ^ 2 + 2)

end

end A389831.P9606728701628142580

namespace A389831

/-- `∏{p}[n+1, val(n+1, #)²+2]` -/
def P9606728701628142580.Spec : Prop :=
  ∀ n, (P9606728701628142580.a n : ℤ) = A389831 (n + 1)

end A389831

/-! ## A389831.P3531060755455798903

`∑{d}[n+1, A005361(#)*A034444((n+1)/#)]`
-/

namespace A389831.P3531060755455798903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005361 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389831.P3531060755455798903

namespace A389831

/-- `∑{d}[n+1, A005361(#)*A034444((n+1)/#)]` -/
def P3531060755455798903.Spec : Prop :=
  ∀ n, P3531060755455798903.a n = A389831 (n + 1)

end A389831

/-! ## A389831.P9032566972064989667

`∑{d}[n+1, A048691(#)*A112526((n+1)/#)]`
-/

namespace A389831.P9032566972064989667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389831.P9032566972064989667

namespace A389831

/-- `∑{d}[n+1, A048691(#)*A112526((n+1)/#)]` -/
def P9032566972064989667.Spec : Prop :=
  ∀ n, P9032566972064989667.a n = A389831 (n + 1)

end A389831

/-! ## A389831.P9528823097477731971

`∑{d}[n+1, A000005(#)*A368248((n+1)/#)]`
-/

namespace A389831.P9528823097477731971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A368248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389831.P9528823097477731971

namespace A389831

/-- `∑{d}[n+1, A000005(#)*A368248((n+1)/#)]` -/
def P9528823097477731971.Spec : Prop :=
  ∀ n, P9528823097477731971.a n = A389831 (n + 1)

end A389831

/-! ## A389831.P11571572602949442350

`∑{d}[n+1, A035116(#)*A363551((n+1)/#)]`
-/

namespace A389831.P11571572602949442350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389831.P11571572602949442350

namespace A389831

/-- `∑{d}[n+1, A035116(#)*A363551((n+1)/#)]` -/
def P11571572602949442350.Spec : Prop :=
  ∀ n, P11571572602949442350.a n = A389831 (n + 1)

end A389831

/-!
# A389832: Multiplicative sequence a(n) with a(p^e) = abs(2 - (e mod 4)) for prime p and e > 0.

The programs for A389832, the canonical program `A389832.P16160485029740737369` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389832 has offset 1).

The definition of A389832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389832.P16160485029740737369

`∏{e}[n+1, A098178(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A389832

/-- `∏{e}[n+1, A098178(#)]` -/
def P16160485029740737369.Spec : Prop :=
  ∀ n, P16160485029740737369.a n = A389832 (n + 1)

theorem P16160485029740737369.correct : P16160485029740737369.Spec := by
  intro n
  simp only [A389832, Nat.add_sub_cancel]

end A389832

/-! ## A389832.P18300117567691309409

`∏{e}[n+1, A056594(#)+1]`
-/

namespace A389832.P18300117567691309409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A056594 (Nat.factorization (f1 n) p) + 1)

end

end A389832.P18300117567691309409

namespace A389832

/-- `∏{e}[n+1, A056594(#)+1]` -/
def P18300117567691309409.Spec : Prop :=
  ∀ n, P18300117567691309409.a n = A389832 (n + 1)

end A389832

/-! ## A389832.P10657620397942902449

`and(A056624(n+1), A343443(n+1))`
-/

namespace A389832.P10657620397942902449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056624 (n + 1)) (A343443 (n + 1))

end

end A389832.P10657620397942902449

namespace A389832

/-- `and(A056624(n+1), A343443(n+1))` -/
def P10657620397942902449.Spec : Prop :=
  ∀ n, P10657620397942902449.a n = A389832 (n + 1)

end A389832

/-! ## A389832.P14214558955701743527

`∑{d}[n+1, A355837(#)*A389831((n+1)/#)]`
-/

namespace A389832.P14214558955701743527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355837 d * A389831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389832.P14214558955701743527

namespace A389832

/-- `∑{d}[n+1, A355837(#)*A389831((n+1)/#)]` -/
def P14214558955701743527.Spec : Prop :=
  ∀ n, P14214558955701743527.a n = A389832 (n + 1)

end A389832

/-! ## A389832.P678946937682336946

`A030363(A127707(n+1))`
-/

namespace A389832.P678946937682336946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030363 (A127707 (n + 1)).toNat

end

end A389832.P678946937682336946

namespace A389832

/-- `A030363(A127707(n+1))` -/
def P678946937682336946.Spec : Prop :=
  ∀ n, P678946937682336946.a n = A389832 (n + 1)

end A389832

/-!
# A389833: a(n) = n! * [x^n] exp(x*(1 + n*exp(x))).

The programs for A389833, there is no canonical definition to state claims against.
-/

/-! ## A389833.P7238825126538148501

`A129256(n)+A124762(A104602(n))`
-/

namespace A389833.P7238825126538148501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129256 n + A124762 (A104602 n).toNat

end

end A389833.P7238825126538148501

/-!
# A389835: Numbers k such that wt(Fibonacci(k)) * e > k, where wt(x) is the binary weight of x (A000120), and e is the natural logarithm base.

The programs for A389835, there is no canonical definition to state claims against.
-/

/-! ## A389835.P5280306197605472439

`or(A098852(A000009(n)), A343108(n+1))`
-/

namespace A389835.P5280306197605472439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098852 (A000009 n).toNat) (A343108 (n + 1))

end

end A389835.P5280306197605472439

/-!
# A389836: a(n) = log_2(A278908(n)).

The programs for A389836, the canonical program `A389836.P17345097124898425646` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389836 has offset 1).

The definition of A389836 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389836.P17345097124898425646

`log2(A278908(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389836

/-- `log2(A278908(n+1))` -/
def P17345097124898425646.Spec : Prop :=
  ∀ n, P17345097124898425646.a n = (A389836 (n + 1) : ℝ)

end A389836

/-! ## A389836.P8028728320352338933

`∑{e}[n+1, A001221(#)]`
-/

namespace A389836.P8028728320352338933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 (Nat.factorization (f1 n) p)

end

end A389836.P8028728320352338933

namespace A389836

/-- `∑{e}[n+1, A001221(#)]` -/
def P8028728320352338933.Spec : Prop :=
  ∀ n, P8028728320352338933.a n = A389836 (n + 1)

end A389836

/-! ## A389836.P11620133407078567809

`∑{e}[A360721(n+1), #]`
-/

namespace A389836.P11620133407078567809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360721 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A389836.P11620133407078567809

namespace A389836

/-- `∑{e}[A360721(n+1), #]` -/
def P11620133407078567809.Spec : Prop :=
  ∀ n, (P11620133407078567809.a n : ℤ) = A389836 (n + 1)

end A389836

/-! ## A389836.P9849302530741205568

`∑{e}[(n+1)/∏{p}[n+1, #], A124766(#)]`
-/

namespace A389836.P9849302530741205568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A124766 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A389836.P9849302530741205568

namespace A389836

/-- `∑{e}[(n+1)/∏{p}[n+1, #], A124766(#)]` -/
def P9849302530741205568.Spec : Prop :=
  ∀ n, P9849302530741205568.a n = A389836 (n + 1)

end A389836

/-! ## A389836.P16958887517066153530

`A305264(n)%A344417(n+1)`
-/

namespace A389836.P16958887517066153530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305264 n) (A344417 (n + 1))

end

end A389836.P16958887517066153530

namespace A389836

/-- `A305264(n)%A344417(n+1)` -/
def P16958887517066153530.Spec : Prop :=
  ∀ n, P16958887517066153530.a n = A389836 (n + 1)

end A389836

/-!
# A389838: Numbers of the form j*k or j*k + (j-1)*(k-1) with j, k > 1.

The programs for A389838, the canonical program `A389838.P12199354101649347898` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389838 has offset 1).

The definition of A389838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389838.P10406139634866045081

`lt[A101264(n), A001222(n+1)]+1`
-/

namespace A389838.P10406139634866045081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389838.P10406139634866045081

namespace A389838

/-- `lt[A101264(n), A001222(n+1)]+1` -/
def P10406139634866045081.Spec : Prop :=
  ∀ n, (P10406139634866045081.a n : ℤ) = A389838 (n + 1)

end A389838

/-! ## A389838.P12199354101649347898

`∪[A002808(n+1), A053726(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389838

/-- `∪[A002808(n+1), A053726(n+1)]` -/
def P12199354101649347898.Spec : Prop :=
  ∀ n, (P12199354101649347898.a n : ℤ) = A389838 (n + 1)

theorem P12199354101649347898.correct : P12199354101649347898.Spec := by
  intro n
  simp only [A389838, Nat.add_sub_cancel]

end A389838

/-! ## A389838.P11671544711269338922

`∪[A053726(n+1), A174166(n+1)]`
-/

namespace A389838.P11671544711269338922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389838.P11671544711269338922

namespace A389838

/-- `∪[A053726(n+1), A174166(n+1)]` -/
def P11671544711269338922.Spec : Prop :=
  ∀ n, (P11671544711269338922.a n : ℤ) = A389838 (n + 1)

end A389838

/-! ## A389838.P8022175047179897772

`∪[A002808(n+1), A307390(n+1)]`
-/

namespace A389838.P8022175047179897772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389838.P8022175047179897772

namespace A389838

/-- `∪[A002808(n+1), A307390(n+1)]` -/
def P8022175047179897772.Spec : Prop :=
  ∀ n, (P8022175047179897772.a n : ℤ) = A389838 (n + 1)

end A389838

/-! ## A389838.P13976071525692610328

`lt[8, A286257(n+1)]+1`
-/

namespace A389838.P13976071525692610328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A389838.P13976071525692610328

namespace A389838

/-- `lt[8, A286257(n+1)]+1` -/
def P13976071525692610328.Spec : Prop :=
  ∀ n, (P13976071525692610328.a n : ℤ) = A389838 (n + 1)

end A389838

/-! ## A389838.P5677146238909209312

`lt[3, ∑{e}[2*n-(2*n)², #]]`
-/

namespace A389838.P5677146238909209312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((2 * n) ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389838.P5677146238909209312

namespace A389838

/-- `lt[3, ∑{e}[2*n-(2*n)², #]]` -/
def P5677146238909209312.Spec : Prop :=
  ∀ n, (P5677146238909209312.a n : ℤ) = A389838 (n + 1)

end A389838

/-! ## A389838.P7729631358669725052

`lt[A175249(n+1), A003415(A000384(n))]`
-/

namespace A389838.P7729631358669725052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000384 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389838.P7729631358669725052

namespace A389838

/-- `lt[A175249(n+1), A003415(A000384(n))]` -/
def P7729631358669725052.Spec : Prop :=
  ∀ n, (P7729631358669725052.a n : ℤ) = A389838 (n + 1)

end A389838

/-! ## A389838.P3261901710260513194

`lt[A286474(n+1), A166093(n)]`
-/

namespace A389838.P3261901710260513194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389838.P3261901710260513194

namespace A389838

/-- `lt[A286474(n+1), A166093(n)]` -/
def P3261901710260513194.Spec : Prop :=
  ∀ n, (P3261901710260513194.a n : ℤ) = A389838 (n + 1)

end A389838

/-!
# A389840: Number of (edge) 5-critical graphs on n vertices.

The programs for A389840, there is no canonical definition to state claims against.
-/

/-! ## A389840.P11855589321278756973

`A389841(∑[n+1]+5)`
-/

namespace A389840.P11855589321278756973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389841 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A389840.P11855589321278756973

/-! ## A389840.P9709392401458558800

`A159255(A027155(n))`
-/

namespace A389840.P9709392401458558800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159255 (A027155 n).toNat

end

end A389840.P9709392401458558800

/-!
# A389841: Triangle read by rows: T(n,k) is the number of k-critical graphs with n vertices and degree k, (4 <= k <= n).

The programs for A389841, there is no canonical definition to state claims against.
-/

/-! ## A389841.P7772768982313867944

`A083747(A110169(n))`
-/

namespace A389841.P7772768982313867944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083747 (A110169 n).toNat

end

end A389841.P7772768982313867944

/-! ## A389841.P1455789184816116324

`A271315(A060136(n))`
-/

namespace A389841.P1455789184816116324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (A060136 n).toNat

end

end A389841.P1455789184816116324

/-! ## A389841.P4184545133516380515

`A139351(A217580(n))`
-/

namespace A389841.P4184545133516380515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A217580 n).toNat

end

end A389841.P4184545133516380515

/-! ## A389841.P14650167679310439576

`A337084(A039806(n))`
-/

namespace A389841.P14650167679310439576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337084 (A039806 n).toNat

end

end A389841.P14650167679310439576

/-! ## A389841.P15857860175148266826

`A326625(A101371(n))`
-/

namespace A389841.P15857860175148266826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A101371 n).toNat

end

end A389841.P15857860175148266826

/-!
# A389843: E.g.f. A(x) satisfies A(x) = exp(x^2 * A(x) / (1-x)^2).

The programs for A389843, there is no canonical definition to state claims against.
-/

/-! ## A389843.P2069987322835028211

`A004526(A004526(2*(n+2))^A345163(2*n))`
-/

namespace A389843.P2069987322835028211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A004526 (2 * (n + 2)) : ℚ) ^ (A345163 (2 * n) : ℤ))).toNat

end

end A389843.P2069987322835028211

/-!
# A389844: E.g.f. A(x) satisfies A(x) = exp(x^2 * A(x) / (1-x)^3).

The programs for A389844, there is no canonical definition to state claims against.
-/

/-! ## A389844.P10858589356945076483

`A133564(A026646(n))`
-/

namespace A389844.P10858589356945076483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133564 (A026646 n).toNat

end

end A389844.P10858589356945076483

/-!
# A389853: Numbers k such that both 2^k-1 and 2^k+1 are sphenic.

The programs for A389853, there is no canonical definition to state claims against.
-/

/-! ## A389853.P2684253469737176600

`∩[A294729(n+1), A389854(n+1)]`
-/

namespace A389853.P2684253469737176600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389853.P2684253469737176600

/-! ## A389853.P7142061777503531673

`∩[A283930(n+1), A294729(n+1)]`
-/

namespace A389853.P7142061777503531673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389853.P7142061777503531673

/-! ## A389853.P14139088474584706162

`∩[A283930(n+1), A363837(n+1)]`
-/

namespace A389853.P14139088474584706162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389853.P14139088474584706162

/-! ## A389853.P6527723855975653810

`∩[A363837(n+1), A389854(n+1)]`
-/

namespace A389853.P6527723855975653810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389853.P6527723855975653810

/-!
# A389854: Numbers k such that both 2^k-1 and 2^k+1 are squarefree with the same number of distinct prime factors.

The programs for A389854, there is no canonical definition to state claims against.
-/

/-! ## A389854.P4329449025424129793

`filter[A283930(n+1), A011655(#)]`
-/

namespace A389854.P4329449025424129793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A389854.P4329449025424129793

/-! ## A389854.P17540005424226414905

`filter[A283930(n+1), A267208(#)]`
-/

namespace A389854.P17540005424226414905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A389854.P17540005424226414905

/-! ## A389854.P8273327391705623379

`filter[A283930(n+1), A360120(#)]`
-/

namespace A389854.P8273327391705623379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360120 (f1 j).toNat = 1) n)

end

end A389854.P8273327391705623379

/-! ## A389854.P8205222836684943847

`filter[A309942(n+1), A360120(#)]`
-/

namespace A389854.P8205222836684943847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360120 (f1 j).toNat = 1) n)

end

end A389854.P8205222836684943847

/-! ## A389854.P6577337358761364034

`∩[A067886(n+1), A112886(n+1)]`
-/

namespace A389854.P6577337358761364034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389854.P6577337358761364034

/-!
# A389862: Numbers k such that k + sopfr(k) is a cube.

The programs for A389862, there is no canonical definition to state claims against.
-/

/-! ## A389862.P10950826793272921780

`A159798(A127063(n+2))`
-/

namespace A389862.P10950826793272921780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159798 (A127063 (n + 2)).toNat

end

end A389862.P10950826793272921780

/-!
# A389864: Powers k^m, m > 1, such that k is neither squarefree nor perfect power.

The programs for A389864, there is no canonical definition to state claims against.
-/

/-! ## A389864.P6108439603740287107

`∪[A383394(n+1), A386762(n+1)]`
-/

namespace A389864.P6108439603740287107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P6108439603740287107

/-! ## A389864.P10132706045853710835

`∪[A386762(n+1), A387257(n+1)]`
-/

namespace A389864.P10132706045853710835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P10132706045853710835

/-! ## A389864.P12104709900945236886

`∪[A387257(n+1), A389947(n+1)]`
-/

namespace A389864.P12104709900945236886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P12104709900945236886

/-! ## A389864.P5871902686466314934

`∪[A387257(n+1), A390379(n+1)]`
-/

namespace A389864.P5871902686466314934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P5871902686466314934

/-! ## A389864.P11908341078294519970

`∪[A389312(n+1), A390180(n+1)]`
-/

namespace A389864.P11908341078294519970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P11908341078294519970

/-! ## A389864.P10010371640302247887

`∩[A001597(n+1), A359280(n+1)]`
-/

namespace A389864.P10010371640302247887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P10010371640302247887

/-! ## A389864.P18389326548333615072

`∩[A131605(n+1), A359280(n+1)]`
-/

namespace A389864.P18389326548333615072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P18389326548333615072

/-! ## A389864.P14631649933386968445

`∩[A359280(n+1), A366854(n+1)]`
-/

namespace A389864.P14631649933386968445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P14631649933386968445

/-! ## A389864.P10313916428566478805

`∩[A359280(n+1), A391416(n+1)]`
-/

namespace A389864.P10313916428566478805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P10313916428566478805

/-! ## A389864.P6918143323587336258

`∩[A001597(n+1), A389752(n+1)]`
-/

namespace A389864.P6918143323587336258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P6918143323587336258

/-! ## A389864.P13671514180493990081

`∩[A131605(n+1), A389752(n+1)]`
-/

namespace A389864.P13671514180493990081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P13671514180493990081

/-! ## A389864.P15258203423767275681

`∩[A366854(n+1), A389752(n+1)]`
-/

namespace A389864.P15258203423767275681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P15258203423767275681

/-! ## A389864.P2344849976432724271

`∩[A389752(n+1), A391416(n+1)]`
-/

namespace A389864.P2344849976432724271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389864.P2344849976432724271

/-!
# A389866: E.g.f. A(x) satisfies A(x) = exp( x * A(x) / (1-x)^3 ) / (1-x).

The programs for A389866, there is no canonical definition to state claims against.
-/

/-! ## A389866.P2418112543845427979

`A249642(n)+A000612(A119798(n+1))`
-/

namespace A389866.P2418112543845427979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249642 n + A000612 (A119798 (n + 1)).toNat

end

end A389866.P2418112543845427979

/-!
# A389867: E.g.f. A(x) satisfies A(x) = exp( x^2 * A(x) / (1-x)^2 ) / (1-x).

The programs for A389867, there is no canonical definition to state claims against.
-/

/-! ## A389867.P3266799605484431641

`A332276(A387507(n+1))`
-/

namespace A389867.P3266799605484431641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (A387507 (n + 1)).toNat

end

end A389867.P3266799605484431641

/-! ## A389867.P2910464949427008023

`A055034(A008549(n)+A000169(n+1))`
-/

namespace A389867.P2910464949427008023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A008549 n + A000169 (n + 1)).toNat

end

end A389867.P2910464949427008023

/-!
# A389868: E.g.f. A(x) satisfies A(x) = exp( x^2 * A(x) / (1-x)^3 ) / (1-x).

The programs for A389868, there is no canonical definition to state claims against.
-/

/-! ## A389868.P10207573819295599843

`A168619(n*2^((n-1)%(n+1)))`
-/

namespace A389868.P10207573819295599843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168619 (SequenceMachineLib.roundAway ((n : ℚ) * (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat

end

end A389868.P10207573819295599843

/-!
# A389869: E.g.f. A(x) satisfies A(x) = exp( x^3 * A(x) / (1-x) ) / (1-x).

The programs for A389869, there is no canonical definition to state claims against.
-/

/-! ## A389869.P11652468079455776980

`A093006(A036766(n))`
-/

namespace A389869.P11652468079455776980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093006 (A036766 n).toNat

end

end A389869.P11652468079455776980

/-! ## A389869.P13974396734078598635

`A305117(A000108(n)²)`
-/

namespace A389869.P13974396734078598635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (A000108 n ^ 2).toNat

end

end A389869.P13974396734078598635

/-!
# A389870: E.g.f. A(x) satisfies A(x) = exp( x^3 * A(x) / (1-x)^3 ) / (1-x).

The programs for A389870, there is no canonical definition to state claims against.
-/

/-! ## A389870.P12661594319462742428

`A002868(n)*A352745(A344743(n))`
-/

namespace A389870.P12661594319462742428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002868 n * A352745 (A344743 n).toNat

end

end A389870.P12661594319462742428

/-! ## A389870.P834206793412520647

`A123664(A123151(n))`
-/

namespace A389870.P834206793412520647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123664 (A123151 n).toNat

end

end A389870.P834206793412520647

/-!
# A389871: G.f. A(x) satisfies A(x) = 1 + x*(1+x^2)^2*A(x)^2.

The programs for A389871, there is no canonical definition to state claims against.
-/

/-! ## A389871.P7808016639363550809

`A215576(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A389871.P7808016639363550809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A215576 n - a (n - 2)

end

end A389871.P7808016639363550809

/-!
# A389873: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^2*A(x)^2.

The programs for A389873, there is no canonical definition to state claims against.
-/

/-! ## A389873.P1757405516307025846

`A390103(n)-A058343(A085370(n+1))`
-/

namespace A389873.P1757405516307025846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390103 n - A058343 (A085370 (n + 1)).toNat

end

end A389873.P1757405516307025846

/-!
# A389874: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^3*A(x)^2.

The programs for A389874, there is no canonical definition to state claims against.
-/

/-! ## A389874.P6612876269716394786

`A350396(A148150(n))`
-/

namespace A389874.P6612876269716394786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350396 (A148150 n).toNat

end

end A389874.P6612876269716394786

/-! ## A389874.P18350286589297277269

`A390104(A004879(n+1))`
-/

namespace A389874.P18350286589297277269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390104 (A004879 (n + 1)).toNat

end

end A389874.P18350286589297277269

/-! ## A389874.P5757917201308283913

`A390104(A004890(n+1))`
-/

namespace A389874.P5757917201308283913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390104 (A004890 (n + 1)).toNat

end

end A389874.P5757917201308283913

/-!
# A389879: A005117(k) - 1 where k is the least k such that A389412(k) = n.

The programs for A389879, there is no canonical definition to state claims against.
-/

/-! ## A389879.P9975886938745674581

`A225729(A050535(n))^(1-char[1])`
-/

namespace A389879.P9975886938745674581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225729 (A050535 n).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A389879.P9975886938745674581

/-! ## A389879.P10457795495332233061

`A035363(n)+A034448(A045846(n))`
-/

namespace A389879.P10457795495332233061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + A034448 (A045846 n).toNat

end

end A389879.P10457795495332233061

/-!
# A389882: Row sums of A389420 and A389875.

The programs for A389882, the canonical program `A389882.P1417654939235969709` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389882 has offset 0).

The definition of A389882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389882.P1417654939235969709

`(10^A055642(n)-1)/9*A007953(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A389882

/-- `(10^A055642(n)-1)/9*A007953(n)` -/
def P1417654939235969709.Spec : Prop :=
  ∀ n, P1417654939235969709.a n = (A389882 n : ℚ)

end A389882

/-! ## A389882.P1181167868014484317

`A331472(n)*A351653(n)`
-/

namespace A389882.P1181167868014484317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n * A351653 n

end

end A389882.P1181167868014484317

namespace A389882

/-- `A331472(n)*A351653(n)` -/
def P1181167868014484317.Spec : Prop :=
  ∀ n, P1181167868014484317.a n = A389882 n

end A389882

/-! ## A389882.P2149761804952254802

`A351653(n)*A364362(n)`
-/

namespace A389882.P2149761804952254802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351653 n * A364362 n

end

end A389882.P2149761804952254802

namespace A389882

/-- `A351653(n)*A364362(n)` -/
def P2149761804952254802.Spec : Prop :=
  ∀ n, P2149761804952254802.a n = A389882 n

end A389882

/-! ## A389882.P2610528893103369358

`eq[A064459(n), A297231(n+1)]`
-/

namespace A389882.P2610528893103369358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064459 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389882.P2610528893103369358

namespace A389882

/-- `eq[A064459(n), A297231(n+1)]` -/
def P2610528893103369358.Spec : Prop :=
  ∀ n, (P2610528893103369358.a n : ℤ) = A389882 n

end A389882

/-! ## A389882.P2090200863232977855

`eq[A297231(n+1), A342696(n)]`
-/

namespace A389882.P2090200863232977855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389882.P2090200863232977855

namespace A389882

/-- `eq[A297231(n+1), A342696(n)]` -/
def P2090200863232977855.Spec : Prop :=
  ∀ n, (P2090200863232977855.a n : ℤ) = A389882 n

end A389882

/-!
# A389884: Numbers k such that k^2 + 1 is a Sophie Germain prime.

The programs for A389884, there is no canonical definition to state claims against.
-/

/-! ## A389884.P4751620665815998520

`∩[A005574(n+1), A390986(n+1)]`
-/

namespace A389884.P4751620665815998520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389884.P4751620665815998520

/-! ## A389884.P15295543141949233106

`∩[A005574(n+1), A216968(n+1)]`
-/

namespace A389884.P15295543141949233106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389884.P15295543141949233106

/-! ## A389884.P18226183157633273675

`filter[A390986(n+1), A295405(#)]`
-/

namespace A389884.P18226183157633273675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A389884.P18226183157633273675

/-! ## A389884.P2366539365480070610

`filter[A216968(n+2), A295405(#)]`
-/

namespace A389884.P2366539365480070610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216968 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A389884.P2366539365480070610

/-!
# A389886: Number of proper 3-partitions of the vertices of the fan graph on n vertices such that every triangle uses exactly 2 colors.

The programs for A389886, the canonical program `A389886.P7524365829226021367` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389886 has offset 3).

The definition of A389886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389886.P7524365829226021367

`A007283(n)-A020701(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A389886

/-- `A007283(n)-A020701(n)` -/
def P7524365829226021367.Spec : Prop :=
  ∀ n, P7524365829226021367.a n = A389886 (n + 3)

theorem P7524365829226021367.correct : P7524365829226021367.Spec := by
  intro n
  simp only [A389886, Nat.add_sub_cancel]

end A389886

/-! ## A389886.P10200799076223625502

`A095151(n)-A001924(n)`
-/

namespace A389886.P10200799076223625502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095151 n - A001924 n

end

end A389886.P10200799076223625502

namespace A389886

/-- `A095151(n)-A001924(n)` -/
def P10200799076223625502.Spec : Prop :=
  ∀ n, P10200799076223625502.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P7106876724860877162

`A027973(n)-A117591(n)`
-/

namespace A389886.P7106876724860877162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n - A117591 n

end

end A389886.P7106876724860877162

namespace A389886

/-- `A027973(n)-A117591(n)` -/
def P7106876724860877162.Spec : Prop :=
  ∀ n, P7106876724860877162.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P8945858925486378157

`A181565(n)-A020706(n)`
-/

namespace A389886.P8945858925486378157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n - A020706 n

end

end A389886.P8945858925486378157

namespace A389886

/-- `A181565(n)-A020706(n)` -/
def P8945858925486378157.Spec : Prop :=
  ∀ n, P8945858925486378157.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P12745953404739208234

`A164094(n)-A048584(n)`
-/

namespace A389886.P12745953404739208234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n - A048584 n

end

end A389886.P12745953404739208234

namespace A389886

/-- `A164094(n)-A048584(n)` -/
def P12745953404739208234.Spec : Prop :=
  ∀ n, P12745953404739208234.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P11656693166680955804

`A175660(n)-A099036(n)`
-/

namespace A389886.P11656693166680955804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175660 n - A099036 n

end

end A389886.P11656693166680955804

namespace A389886

/-- `A175660(n)-A099036(n)` -/
def P11656693166680955804.Spec : Prop :=
  ∀ n, P11656693166680955804.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P17756259335539224766

`A008466(n+1)+A008466(n)`
-/

namespace A389886.P17756259335539224766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 1) + A008466 n

end

end A389886.P17756259335539224766

namespace A389886

/-- `A008466(n+1)+A008466(n)` -/
def P17756259335539224766.Spec : Prop :=
  ∀ n, P17756259335539224766.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P10328852674932986960

`A167821(n+1)+A027934(n)`
-/

namespace A389886.P10328852674932986960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167821 (n + 1) + A027934 n

end

end A389886.P10328852674932986960

namespace A389886

/-- `A167821(n+1)+A027934(n)` -/
def P10328852674932986960.Spec : Prop :=
  ∀ n, P10328852674932986960.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P6412093143769545793

`A232580(n+1)+A000225(n)`
-/

namespace A389886.P6412093143769545793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 (n + 1) + A000225 n

end

end A389886.P6412093143769545793

namespace A389886

/-- `A232580(n+1)+A000225(n)` -/
def P6412093143769545793.Spec : Prop :=
  ∀ n, P6412093143769545793.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P1097474385080460787

`A004119(n+1)-A020706(n)`
-/

namespace A389886.P1097474385080460787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 1) - A020706 n

end

end A389886.P1097474385080460787

namespace A389886

/-- `A004119(n+1)-A020706(n)` -/
def P1097474385080460787.Spec : Prop :=
  ∀ n, P1097474385080460787.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P8590044383728070398

`A033484(n)-A001911(n+1)`
-/

namespace A389886.P8590044383728070398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - A001911 (n + 1)

end

end A389886.P8590044383728070398

namespace A389886

/-- `A033484(n)-A001911(n+1)` -/
def P8590044383728070398.Spec : Prop :=
  ∀ n, P8590044383728070398.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P13008368311013424764

`A079583(n)-A000126(n+1)`
-/

namespace A389886.P13008368311013424764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079583 n - A000126 (n + 1)

end

end A389886.P13008368311013424764

namespace A389886

/-- `A079583(n)-A000126(n+1)` -/
def P13008368311013424764.Spec : Prop :=
  ∀ n, P13008368311013424764.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P11044068469826981003

`A175657(n)-A000204(n+1)`
-/

namespace A389886.P11044068469826981003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175657 n - A000204 (n + 1)

end

end A389886.P11044068469826981003

namespace A389886

/-- `A175657(n)-A000204(n+1)` -/
def P11044068469826981003.Spec : Prop :=
  ∀ n, P11044068469826981003.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P8072805269113543765

`A104004(n)-A000045(n+2)`
-/

namespace A389886.P8072805269113543765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n - A000045 (n + 2)

end

end A389886.P8072805269113543765

namespace A389886

/-- `A104004(n)-A000045(n+2)` -/
def P8072805269113543765.Spec : Prop :=
  ∀ n, P8072805269113543765.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P14795349774721600099

`A232580(n+2)-A232580(n)`
-/

namespace A389886.P14795349774721600099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 (n + 2) - A232580 n

end

end A389886.P14795349774721600099

namespace A389886

/-- `A232580(n+2)-A232580(n)` -/
def P14795349774721600099.Spec : Prop :=
  ∀ n, P14795349774721600099.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P1910841301413601318

`A074878(n+1)-A000045(n+1)`
-/

namespace A389886.P1910841301413601318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074878 (n + 1) - A000045 (n + 1)

end

end A389886.P1910841301413601318

namespace A389886

/-- `A074878(n+1)-A000045(n+1)` -/
def P1910841301413601318.Spec : Prop :=
  ∀ n, P1910841301413601318.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P10176356575311727528

`A027383(2*n)-A001911(n+1)`
-/

namespace A389886.P10176356575311727528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n) - A001911 (n + 1)

end

end A389886.P10176356575311727528

namespace A389886

/-- `A027383(2*n)-A001911(n+1)` -/
def P10176356575311727528.Spec : Prop :=
  ∀ n, P10176356575311727528.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P10721895844470901160

`A232580(n+1)+A232580(n)+A001911(n)`
-/

namespace A389886.P10721895844470901160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232580 (n + 1) + (A232580 n + A001911 n)

end

end A389886.P10721895844470901160

namespace A389886

/-- `A232580(n+1)+A232580(n)+A001911(n)` -/
def P10721895844470901160.Spec : Prop :=
  ∀ n, P10721895844470901160.a n = A389886 (n + 3)

end A389886

/-! ## A389886.P16007993123683172167

`A000079(n+1)+A000079(n)-A020701(n)`
-/

namespace A389886.P16007993123683172167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A000079 n - A020701 n)

end

end A389886.P16007993123683172167

namespace A389886

/-- `A000079(n+1)+A000079(n)-A020701(n)` -/
def P16007993123683172167.Spec : Prop :=
  ∀ n, P16007993123683172167.a n = A389886 (n + 3)

end A389886

/-!
# A389887: Multiplicative sequence a(n) with a(p^e) = (3 + (-1)^e * (2*e+1)) / 4 for prime p and e >= 0.

The programs for A389887, the canonical program `A389887.P17353469086998159465` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389887 has offset 1).

The definition of A389887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389887.P17353469086998159465

`∑{d}[n+1, A303915(#)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A389887

/-- `∑{d}[n+1, A303915(#)]` -/
def P17353469086998159465.Spec : Prop :=
  ∀ n, P17353469086998159465.a n = A389887 (n + 1)

theorem P17353469086998159465.correct : P17353469086998159465.Spec := by
  intro n
  simp only [A389887, Nat.add_sub_cancel]

end A389887

/-! ## A389887.P18109134022624744770

`A008836(n+1)*A332712(n+1)`
-/

namespace A389887.P18109134022624744770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A332712 (n + 1)

end

end A389887.P18109134022624744770

namespace A389887

/-- `A008836(n+1)*A332712(n+1)` -/
def P18109134022624744770.Spec : Prop :=
  ∀ n, P18109134022624744770.a n = A389887 (n + 1)

end A389887

/-! ## A389887.P16502319080526408692

`A307423(n+1)*A332712(n+1)`
-/

namespace A389887.P16502319080526408692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307423 (n + 1) * A332712 (n + 1)

end

end A389887.P16502319080526408692

namespace A389887

/-- `A307423(n+1)*A332712(n+1)` -/
def P16502319080526408692.Spec : Prop :=
  ∀ n, P16502319080526408692.a n = A389887 (n + 1)

end A389887

/-! ## A389887.P13447230023985335467

`∑{d}[n+1, A008836(#)*A056624((n+1)/#)]`
-/

namespace A389887.P13447230023985335467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A056624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389887.P13447230023985335467

namespace A389887

/-- `∑{d}[n+1, A008836(#)*A056624((n+1)/#)]` -/
def P13447230023985335467.Spec : Prop :=
  ∀ n, P13447230023985335467.a n = A389887 (n + 1)

end A389887

/-! ## A389887.P12798847342093202399

`∑{d}[n+1, A092520(#)*A158522((n+1)/#)]`
-/

namespace A389887.P12798847342093202399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389887.P12798847342093202399

namespace A389887

/-- `∑{d}[n+1, A092520(#)*A158522((n+1)/#)]` -/
def P12798847342093202399.Spec : Prop :=
  ∀ n, P12798847342093202399.a n = A389887 (n + 1)

end A389887

/-! ## A389887.P3960982950308292298

`∑{d}[n+1, A046951(#)*A307428((n+1)/#)]`
-/

namespace A389887.P3960982950308292298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A307428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389887.P3960982950308292298

namespace A389887

/-- `∑{d}[n+1, A046951(#)*A307428((n+1)/#)]` -/
def P3960982950308292298.Spec : Prop :=
  ∀ n, P3960982950308292298.a n = A389887 (n + 1)

end A389887

/-! ## A389887.P7477776287921939566

`∑{d}[n+1, A073184(#)*A329484((n+1)/#)]`
-/

namespace A389887.P7477776287921939566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073184 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A389887.P7477776287921939566

namespace A389887

/-- `∑{d}[n+1, A073184(#)*A329484((n+1)/#)]` -/
def P7477776287921939566.Spec : Prop :=
  ∀ n, P7477776287921939566.a n = A389887 (n + 1)

end A389887

/-!
# A389888: Discriminants of real quadratic fields in which every additively indecomposable element is a unit.

The programs for A389888, the canonical program `A389888.P10709983666780608653` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389888 has offset 1).

The definition of A389888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389888.P10709983666780608653

`record[A007913(n+1)*A007913(n+5)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A389888

/-- `record[A007913(n+1)*A007913(n+5)]` -/
def P10709983666780608653.Spec : Prop :=
  ∀ n, P10709983666780608653.a n = A389888 (n + 1)

theorem P10709983666780608653.correct : P10709983666780608653.Spec := by
  intro n
  simp only [A389888, Nat.add_sub_cancel]

end A389888

/-! ## A389888.P13756279703182508976

`record[A007947(n+1)*A007947(n+5)]`
-/

namespace A389888.P13756279703182508976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007947 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P13756279703182508976

namespace A389888

/-- `record[A007947(n+1)*A007947(n+5)]` -/
def P13756279703182508976.Spec : Prop :=
  ∀ n, P13756279703182508976.a n = A389888 (n + 1)

end A389888

/-! ## A389888.P14802101779026238022

`record[A055231(n+1)*A055231(n+5)]`
-/

namespace A389888.P14802101779026238022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A055231 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P14802101779026238022

namespace A389888

/-- `record[A055231(n+1)*A055231(n+5)]` -/
def P14802101779026238022.Spec : Prop :=
  ∀ n, P14802101779026238022.a n = A389888 (n + 1)

end A389888

/-! ## A389888.P11490544349988174411

`record[A259913(n+1)]`
-/

namespace A389888.P11490544349988174411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P11490544349988174411

namespace A389888

/-- `record[A259913(n+1)]` -/
def P11490544349988174411.Spec : Prop :=
  ∀ n, P11490544349988174411.a n = A389888 (n + 1)

end A389888

/-! ## A389888.P13594355584501039190

`record[A019554(n+1)*A019554(n+5)]`
-/

namespace A389888.P13594355584501039190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A019554 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P13594355584501039190

namespace A389888

/-- `record[A019554(n+1)*A019554(n+5)]` -/
def P13594355584501039190.Spec : Prop :=
  ∀ n, P13594355584501039190.a n = A389888 (n + 1)

end A389888

/-! ## A389888.P8291319218232228636

`record[A053166(n+1)*A053166(n+5)]`
-/

namespace A389888.P8291319218232228636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1) * A053166 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P8291319218232228636

namespace A389888

/-- `record[A053166(n+1)*A053166(n+5)]` -/
def P8291319218232228636.Spec : Prop :=
  ∀ n, P8291319218232228636.a n = A389888 (n + 1)

end A389888

/-! ## A389888.P2186934922355568846

`filter[A028347(n+3), A359592(#)]`
-/

namespace A389888.P2186934922355568846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A389888.P2186934922355568846

namespace A389888

/-- `filter[A028347(n+3), A359592(#)]` -/
def P2186934922355568846.Spec : Prop :=
  ∀ n, P2186934922355568846.a n = A389888 (n + 1)

end A389888

/-! ## A389888.P9454130078831550614

`filter[A028347(n+3), A290098(#)]`
-/

namespace A389888.P9454130078831550614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A389888.P9454130078831550614

namespace A389888

/-- `filter[A028347(n+3), A290098(#)]` -/
def P9454130078831550614.Spec : Prop :=
  ∀ n, P9454130078831550614.a n = A389888 (n + 1)

end A389888

/-! ## A389888.P10884997041484884221

`∩[A003658(n+1), A028347(n+2)]`
-/

namespace A389888.P10884997041484884221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389888.P10884997041484884221

namespace A389888

/-- `∩[A003658(n+1), A028347(n+2)]` -/
def P10884997041484884221.Spec : Prop :=
  ∀ n, (P10884997041484884221.a n : ℤ) = A389888 (n + 1)

end A389888

/-! ## A389888.P7207856360872091503

`∩[A091428(n+1), A028347(n+2)]`
-/

namespace A389888.P7207856360872091503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389888.P7207856360872091503

namespace A389888

/-- `∩[A091428(n+1), A028347(n+2)]` -/
def P7207856360872091503.Spec : Prop :=
  ∀ n, (P7207856360872091503.a n : ℤ) = A389888 (n + 1)

end A389888

/-!
# A389889: Numbers k such that k - sopfr(k) is a positive cube.

The programs for A389889, there is no canonical definition to state claims against.
-/

/-! ## A389889.P17858193050575330540

`A370725(A099515(n))`
-/

namespace A389889.P17858193050575330540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370725 (A099515 n).toNat

end

end A389889.P17858193050575330540

/-!
# A389890: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^2*A(x)^3.

The programs for A389890, there is no canonical definition to state claims against.
-/

/-! ## A389890.P12171749745372659506

`filter[A389286(n), A023960(#)]`
-/

namespace A389890.P12171749745372659506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023960 (f1 j).toNat = 1) n)

end

end A389890.P12171749745372659506

/-! ## A389890.P7163101173822469887

`filter[A389286(n), A050073(#)]`
-/

namespace A389890.P7163101173822469887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A050073 (f1 j).toNat = 1) n)

end

end A389890.P7163101173822469887

/-! ## A389890.P5479459751257554786

`filter[A389286(n), A071027(#)]`
-/

namespace A389890.P5479459751257554786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071027 (f1 j).toNat = 1) n)

end

end A389890.P5479459751257554786

/-!
# A389891: G.f. A(x) satisfies A(x) = 1 + x*(1+x^3)^3*A(x)^3.

The programs for A389891, there is no canonical definition to state claims against.
-/

/-! ## A389891.P4023340577256068680

`A341257(A001372(n))`
-/

namespace A389891.P4023340577256068680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341257 (A001372 n).toNat

end

end A389891.P4023340577256068680

/-! ## A389891.P6170043476279632490

`A391062(n)-A064873(A084262(n))`
-/

namespace A389891.P6170043476279632490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391062 n - A064873 (A084262 n).toNat

end

end A389891.P6170043476279632490

/-!
# A389894: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^2*A(x)^2.

The programs for A389894, there is no canonical definition to state claims against.
-/

/-! ## A389894.P15489554519828543583

`A156562(A293744(n))`
-/

namespace A389894.P15489554519828543583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A293744 n).toNat

end

end A389894.P15489554519828543583

/-! ## A389894.P7128892750585680141

`A157271(A148083(n+1))`
-/

namespace A389894.P7128892750585680141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148083 (n + 1)).toNat

end

end A389894.P7128892750585680141

/-! ## A389894.P10962979408791813499

`A264749(A189177(n+1))`
-/

namespace A389894.P10962979408791813499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A189177 (n + 1)).toNat

end

end A389894.P10962979408791813499

/-! ## A389894.P16833191619062001353

`A210357(A365244(n+1))`
-/

namespace A389894.P16833191619062001353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A365244 (n + 1)).toNat

end

end A389894.P16833191619062001353

/-!
# A389895: G.f. A(x) satisfies A(x) = 1 + x*(1-x^3)^3*A(x)^2.

The programs for A389895, there is no canonical definition to state claims against.
-/

/-! ## A389895.P10456784534928995540

`A023193(A148332(n+1))`
-/

namespace A389895.P10456784534928995540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148332 (n + 1)).toNat

end

end A389895.P10456784534928995540

/-!
# A389899: Lexicographically earliest infinite sequence such that a(i) = a(j) => A343029(A126760(i)) = A343029(A126760(j)) and A343030(A126760(i)) = A343030(A126760(j)) for all i, j >= 0.

The programs for A389899, there is no canonical definition to state claims against.
-/

/-! ## A389899.P11602582875960094268

`A361020(A126760(n))`
-/

namespace A389899.P11602582875960094268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (A126760 n).toNat

end

end A389899.P11602582875960094268

/-! ## A389899.P5614602114564743202

`A389902(2*A126760(n))`
-/

namespace A389899.P5614602114564743202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389902 (2 * A126760 n).toNat

end

end A389899.P5614602114564743202

/-! ## A389899.P9674769526119281513

`A304118(n+1)+A066099(A364522(n))`
-/

namespace A389899.P9674769526119281513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (n + 1) + A066099 (A364522 n).toNat

end

end A389899.P9674769526119281513

