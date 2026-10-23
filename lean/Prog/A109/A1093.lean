import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A109301: a(n) = rhig(n) = rote height in gammas of n, where the "rote" corresponding to a positive integer n is a graph derived from the primes factorization of n, as illustrated in the comments.

The programs for A109301, the canonical program `A109301.P8977426180802761860` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109301 has offset 1).

The definition of A109301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109301.P8977426180802761860

`a(A263323(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A109301

/-- `a(A263323(n+1)-1)+1` -/
def P8977426180802761860.Spec : Prop :=
  ∀ n, (P8977426180802761860.a n : ℤ) = A109301 (n + 1)

theorem P8977426180802761860.correct : P8977426180802761860.Spec := by
  intro n
  simp only [A109301, Nat.add_sub_cancel]

end A109301

/-! ## A109301.P3773860004904861605

`A005496(a(A263323(n+1)-1))` with `a(0)=0`
-/

namespace A109301.P3773860004904861605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a (A263323 (n + 1) - 1).toNat).toNat

end

end A109301.P3773860004904861605

namespace A109301

/-- `A005496(a(A263323(n+1)-1))` -/
def P3773860004904861605.Spec : Prop :=
  ∀ n, P3773860004904861605.a n = A109301 (n + 1)

end A109301

/-! ## A109301.P5365267146633778953

`A018059(a(A263323(n+1)-1))` with `a(0)=0`
-/

namespace A109301.P5365267146633778953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A018059 (a (A263323 (n + 1) - 1).toNat).toNat

end

end A109301.P5365267146633778953

namespace A109301

/-- `A018059(a(A263323(n+1)-1))` -/
def P5365267146633778953.Spec : Prop :=
  ∀ n, P5365267146633778953.a n = A109301 (n + 1)

end A109301

/-! ## A109301.P14452530513113985336

`A348553(a(A263323(n+1)-1))` with `a(0)=0`
-/

namespace A109301.P14452530513113985336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348553 (a (A263323 (n + 1) - 1).toNat).toNat

end

end A109301.P14452530513113985336

namespace A109301

/-- `A348553(a(A263323(n+1)-1))` -/
def P14452530513113985336.Spec : Prop :=
  ∀ n, P14452530513113985336.a n = A109301 (n + 1)

end A109301

/-! ## A109301.P1300333650453988105

`a(A263297(A304180(n+1))-1)+1` with `a(0)=0`
-/

namespace A109301.P1300333650453988105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A263297 (A304180 (n + 1)).toNat - 1).toNat + 1

end

end A109301.P1300333650453988105

namespace A109301

/-- `a(A263297(A304180(n+1))-1)+1` -/
def P1300333650453988105.Spec : Prop :=
  ∀ n, (P1300333650453988105.a n : ℤ) = A109301 (n + 1)

end A109301

/-! ## A109301.P9490861249617996443

`a(A061395((n+1)*A329601(n+1))-1)+1` with `a(0)=0`
-/

namespace A109301.P9490861249617996443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A061395 ((n + 1 : ℤ) * A329601 (n + 1)).toNat - 1).toNat + 1

end

end A109301.P9490861249617996443

namespace A109301

/-- `a(A061395((n+1)*A329601(n+1))-1)+1` -/
def P9490861249617996443.Spec : Prop :=
  ∀ n, (P9490861249617996443.a n : ℤ) = A109301 (n + 1)

end A109301

/-! ## A109301.P18425053155320405178

`a(A061395(lcm(n+1, A181819(n+1)))-1)+1` with `a(0)=0`
-/

namespace A109301.P18425053155320405178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A061395 (Int.lcm (n + 1 : ℤ) (A181819 (n + 1))) - 1).toNat + 1

end

end A109301.P18425053155320405178

namespace A109301

/-- `a(A061395(lcm(n+1, A181819(n+1)))-1)+1` -/
def P18425053155320405178.Spec : Prop :=
  ∀ n, (P18425053155320405178.a n : ℤ) = A109301 (n + 1)

end A109301

/-!
# A109303: Numbers k with at least one duplicate base-10 digit (A107846(k) > 0).

The programs for A109303, the canonical program `A109303.P4540766537819326846` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109303 has offset 1).

The definition of A109303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109303.P4540766537819326846

`comp[A010784(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109303

/-- `comp[A010784(n+1)]` -/
def P4540766537819326846.Spec : Prop :=
  ∀ n, (P4540766537819326846.a n : ℤ) = A109303 (n + 1)

theorem P4540766537819326846.correct : P4540766537819326846.Spec := by
  intro n
  simp only [A109303, Nat.add_sub_cancel]

end A109303

/-! ## A109303.P4083209459087807939

`comp[A333832(n+1)]`
-/

namespace A109303.P4083209459087807939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109303.P4083209459087807939

namespace A109303

/-- `comp[A333832(n+1)]` -/
def P4083209459087807939.Spec : Prop :=
  ∀ n, (P4083209459087807939.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P14453728833976020187

`eq[0, A178788(n)]`
-/

namespace A109303.P14453728833976020187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109303.P14453728833976020187

namespace A109303

/-- `eq[0, A178788(n)]` -/
def P14453728833976020187.Spec : Prop :=
  ∀ n, (P14453728833976020187.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P239826350164567882

`eq[0, A307651(n)]`
-/

namespace A109303.P239826350164567882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109303.P239826350164567882

namespace A109303

/-- `eq[0, A307651(n)]` -/
def P239826350164567882.Spec : Prop :=
  ∀ n, (P239826350164567882.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P6984836106958011181

`lt[0, A107846(n)]`
-/

namespace A109303.P6984836106958011181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A109303.P6984836106958011181

namespace A109303

/-- `lt[0, A107846(n)]` -/
def P6984836106958011181.Spec : Prop :=
  ∀ n, (P6984836106958011181.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P11845610248144048797

`lt[9, A332550(n)]`
-/

namespace A109303.P11845610248144048797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A109303.P11845610248144048797

namespace A109303

/-- `lt[9, A332550(n)]` -/
def P11845610248144048797.Spec : Prop :=
  ∀ n, (P11845610248144048797.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P6482077758157395043

`lt[A137564(n), n]`
-/

namespace A109303.P6482077758157395043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109303.P6482077758157395043

namespace A109303

/-- `lt[A137564(n), n]` -/
def P6482077758157395043.Spec : Prop :=
  ∀ n, (P6482077758157395043.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P1637726963202370865

`lt[A227362(n), n]`
-/

namespace A109303.P1637726963202370865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109303.P1637726963202370865

namespace A109303

/-- `lt[A227362(n), n]` -/
def P1637726963202370865.Spec : Prop :=
  ∀ n, (P1637726963202370865.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P16658468059799200179

`lt[A320485(n), n]`
-/

namespace A109303.P16658468059799200179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109303.P16658468059799200179

namespace A109303

/-- `lt[A320485(n), n]` -/
def P16658468059799200179.Spec : Prop :=
  ∀ n, (P16658468059799200179.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P3213807957105363090

`lt[A320486(n), n]`
-/

namespace A109303.P3213807957105363090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109303.P3213807957105363090

namespace A109303

/-- `lt[A320486(n), n]` -/
def P3213807957105363090.Spec : Prop :=
  ∀ n, (P3213807957105363090.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P11222121024659775654

`lt[0, A321800(n)+1]`
-/

namespace A109303.P11222121024659775654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A109303.P11222121024659775654

namespace A109303

/-- `lt[0, A321800(n)+1]` -/
def P11222121024659775654.Spec : Prop :=
  ∀ n, (P11222121024659775654.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P13413386043083812357

`eq[1, A337241(n+1)]+1`
-/

namespace A109303.P13413386043083812357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109303.P13413386043083812357

namespace A109303

/-- `eq[1, A337241(n+1)]+1` -/
def P13413386043083812357.Spec : Prop :=
  ∀ n, (P13413386043083812357.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P15611395020235001468

`eq[A321797(n), A321800(n)]`
-/

namespace A109303.P15611395020235001468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109303.P15611395020235001468

namespace A109303

/-- `eq[A321797(n), A321800(n)]` -/
def P15611395020235001468.Spec : Prop :=
  ∀ n, (P15611395020235001468.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P14235800153152133166

`lt[A178333(n)-1, A321800(n)]`
-/

namespace A109303.P14235800153152133166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109303.P14235800153152133166

namespace A109303

/-- `lt[A178333(n)-1, A321800(n)]` -/
def P14235800153152133166.Spec : Prop :=
  ∀ n, (P14235800153152133166.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P12730220537357792249

`lt[1, A054055(A139337(n))]`
-/

namespace A109303.P12730220537357792249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A109303.P12730220537357792249

namespace A109303

/-- `lt[1, A054055(A139337(n))]` -/
def P12730220537357792249.Spec : Prop :=
  ∀ n, (P12730220537357792249.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P1828038337728973867

`lt[A000007(n)-1, A321800(n)]`
-/

namespace A109303.P1828038337728973867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109303.P1828038337728973867

namespace A109303

/-- `lt[A000007(n)-1, A321800(n)]` -/
def P1828038337728973867.Spec : Prop :=
  ∀ n, (P1828038337728973867.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P9056330446888967116

`comp[A137564(n)]`
-/

namespace A109303.P9056330446888967116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109303.P9056330446888967116

namespace A109303

/-- `comp[A137564(n)]` -/
def P9056330446888967116.Spec : Prop :=
  ∀ n, (P9056330446888967116.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P15912748211842770140

`comp[A320485(n)]`
-/

namespace A109303.P15912748211842770140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109303.P15912748211842770140

namespace A109303

/-- `comp[A320485(n)]` -/
def P15912748211842770140.Spec : Prop :=
  ∀ n, (P15912748211842770140.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P7446298255011086505

`comp[A320486(n)]`
-/

namespace A109303.P7446298255011086505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109303.P7446298255011086505

namespace A109303

/-- `comp[A320486(n)]` -/
def P7446298255011086505.Spec : Prop :=
  ∀ n, (P7446298255011086505.a n : ℤ) = A109303 (n + 1)

end A109303

/-! ## A109303.P1122454268519271849

`comp[A276766(n)]`
-/

namespace A109303.P1122454268519271849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109303.P1122454268519271849

namespace A109303

/-- `comp[A276766(n)]` -/
def P1122454268519271849.Spec : Prop :=
  ∀ n, (P1122454268519271849.a n : ℤ) = A109303 (n + 1)

end A109303

/-!
# A109306: Numbers k such that k^2 + (k-1)^2 and k^2 + (k+1)^2 are both primes.

The programs for A109306, there is no canonical definition to state claims against.
-/

/-! ## A109306.P1421528112905717976

`sqrt(A075577(n+1))`
-/

namespace A109306.P1421528112905717976
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075577 (n + 1) : ℝ)

end

end A109306.P1421528112905717976

/-! ## A109306.P13002380937283659719

`root(A075577(n+1), 2%A333167(n))`
-/

namespace A109306.P13002380937283659719
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A075577 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A333167 n) : ℝ))

end

end A109306.P13002380937283659719

/-! ## A109306.P16227797509087149438

`root(A075577(n+1), A001316(A001316(n)))`
-/

namespace A109306.P16227797509087149438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A075577 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A109306.P16227797509087149438

/-! ## A109306.P15427840527245425398

`A000027(root(A075577(n+1), 2))`
-/

namespace A109306.P15427840527245425398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A075577 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A109306.P15427840527245425398

/-! ## A109306.P17950523129195312072

`A238222(n+1)+1`
-/

namespace A109306.P17950523129195312072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238222 (n + 1) + 1

end

end A109306.P17950523129195312072

/-! ## A109306.P5049702211614773114

`∩[A027861(n+1)+1, A027861(n+1)]`
-/

namespace A109306.P5049702211614773114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109306.P5049702211614773114

/-! ## A109306.P822224956929639097

`A020725(A238222(n+1))`
-/

namespace A109306.P822224956929639097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A238222 (n + 1)).toNat

end

end A109306.P822224956929639097

/-! ## A109306.P1274468796742640151

`A004524(∩[A002731(n+1)+2, A002731(n+1)])`
-/

namespace A109306.P1274468796742640151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A109306.P1274468796742640151

/-! ## A109306.P10605549264390590020

`A027861(A176796(n+1)+1)`
-/

namespace A109306.P10605549264390590020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (A176796 (n + 1) + 1).toNat

end

end A109306.P10605549264390590020

/-! ## A109306.P1285274806791059875

`A089489(A027861(A176796(n+1)))`
-/

namespace A109306.P1285274806791059875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089489 (A027861 (A176796 (n + 1)).toNat).toNat

end

end A109306.P1285274806791059875

/-!
# A109307: Numbers m such that m^2 + (m+/ -1)^2 are both semiprimes.

The programs for A109307, there is no canonical definition to state claims against.
-/

/-! ## A109307.P14017014724880886398

`∩[A108769(n+1)+1, A108769(n+1)]`
-/

namespace A109307.P14017014724880886398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108769 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109307.P14017014724880886398

/-! ## A109307.P7389045497200035191

`eq[A028949(n+1), A213821(A278244(n))]`
-/

namespace A109307.P7389045497200035191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213821 (A278244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109307.P7389045497200035191

/-! ## A109307.P11704745362626480036

`eq[A038125(A028949(n+1)+1), A278244(n)]`
-/

namespace A109307.P11704745362626480036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038125 (A028949 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109307.P11704745362626480036

/-! ## A109307.P17609614084490515435

`eq[A028940(A028949(n+1)), A028949(n+2)]`
-/

namespace A109307.P17609614084490515435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028940 (A028949 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109307.P17609614084490515435

/-!
# A109308: Lesser emirps (primes whose digit reversal is a larger prime).

The programs for A109308, there is no canonical definition to state claims against.
-/

/-! ## A109308.P2834756931519621249

`record[A007500(n+6)%A095180(n+6)]`
-/

namespace A109308.P2834756931519621249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007500 (n + 6)) (A095180 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109308.P2834756931519621249

/-! ## A109308.P649910143168552230

`∩[A006567(n+1), A141263(n+1)]`
-/

namespace A109308.P649910143168552230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P649910143168552230

/-! ## A109308.P14918518126716401874

`∩[A141263(n+1), A334321(n+1)]`
-/

namespace A109308.P14918518126716401874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P14918518126716401874

/-! ## A109308.P11919688301056130056

`∩[A141263(n+1), A000040(A156793(n+1))]`
-/

namespace A109308.P11919688301056130056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P11919688301056130056

/-! ## A109308.P6395719109200132859

`∩[A006005(A156793(n+1)), A141263(n+2)]`
-/

namespace A109308.P6395719109200132859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A156793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P6395719109200132859

/-! ## A109308.P6775428014118209825

`∩[A068893(n+1), A141263(n+1)]`
-/

namespace A109308.P6775428014118209825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P6775428014118209825

/-! ## A109308.P12736694571698563197

`∩[A109019(n+1), A141263(n+1)]`
-/

namespace A109308.P12736694571698563197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P12736694571698563197

/-! ## A109308.P15073703562771190292

`∩[A141263(n+1), A334391(n+1)]`
-/

namespace A109308.P15073703562771190292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P15073703562771190292

/-! ## A109308.P301193003674344019

`∩[A141263(n+1), A350867(n+1)]`
-/

namespace A109308.P301193003674344019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P301193003674344019

/-! ## A109308.P11572334466731502260

`∩[A006567(n+1), A071589(n+1)]`
-/

namespace A109308.P11572334466731502260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P11572334466731502260

/-! ## A109308.P7133466947666461694

`∩[A007500(n+1), A071589(n+1)]`
-/

namespace A109308.P7133466947666461694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P7133466947666461694

/-! ## A109308.P16919055489565041746

`∩[A006567(n+1), A131058(n+1)]`
-/

namespace A109308.P16919055489565041746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109308.P16919055489565041746

/-! ## A109308.P9993597583003379109

`record[A166681(n+1)%A209190(A166681(n+1))]`
-/

namespace A109308.P9993597583003379109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166681 (n + 1)) (A209190 (A166681 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109308.P9993597583003379109

/-! ## A109308.P10051353487909663917

`p?[record[A103168(A095180(n+1))]]`
-/

namespace A109308.P10051353487909663917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (A095180 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109308.P10051353487909663917

/-! ## A109308.P5435162732542159722

`p?[record[A103168(A209190(n+1))]]`
-/

namespace A109308.P5435162732542159722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (A209190 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109308.P5435162732542159722

/-! ## A109308.P16114603844191274996

`record[p?[A151765(n+1)%A209190(n+1)]]`
-/

namespace A109308.P16114603844191274996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151765 (n + 1)) (A209190 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109308.P16114603844191274996

/-!
# A109309: Larger emirps (primes whose digit reversal is a lesser prime).

The programs for A109309, there is no canonical definition to state claims against.
-/

/-! ## A109309.P13398096157435561392

`∩[A006567(n+1), A099180(n+1)]`
-/

namespace A109309.P13398096157435561392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P13398096157435561392

/-! ## A109309.P7046041466285944820

`∩[A007500(n+1), A099180(n+1)]`
-/

namespace A109309.P7046041466285944820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P7046041466285944820

/-! ## A109309.P15576130755296401157

`∩[A085869(n+1), A099180(n+1)]`
-/

namespace A109309.P15576130755296401157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P15576130755296401157

/-! ## A109309.P3580376847892001604

`∩[A095179(n+1), A099180(n+1)]`
-/

namespace A109309.P3580376847892001604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P3580376847892001604

/-! ## A109309.P14720484720127145986

`∩[A062895(n+1), A099180(n+1)]`
-/

namespace A109309.P14720484720127145986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P14720484720127145986

/-! ## A109309.P17057081636932884498

`∩[A068893(n+1), A099180(n+1)]`
-/

namespace A109309.P17057081636932884498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P17057081636932884498

/-! ## A109309.P13389660555439679079

`∩[A099180(n+1), A109019(n+1)]`
-/

namespace A109309.P13389660555439679079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P13389660555439679079

/-! ## A109309.P14119106503163329282

`∩[A099180(n+1), A350867(n+1)]`
-/

namespace A109309.P14119106503163329282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109309.P14119106503163329282

/-!
# A109310: Numbers n such that difference between n-th and (n+1)-st semiprimes is a semiprime (sp).

The programs for A109310, there is no canonical definition to state claims against.
-/

/-! ## A109310.P7144308944021338471

`A058933(A272307(n+1))`
-/

namespace A109310.P7144308944021338471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A272307 (n + 1)).toNat

end

end A109310.P7144308944021338471

/-! ## A109310.P6835538370026683775

`A072000(A272307(n+1)+1)`
-/

namespace A109310.P6835538370026683775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A272307 (n + 1) + 1).toNat

end

end A109310.P6835538370026683775

/-! ## A109310.P9778830092586472312

`∑{d}[A272307(n+1), A174956(#)]`
-/

namespace A109310.P9778830092586472312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174956 d

end

end A109310.P9778830092586472312

/-! ## A109310.P16326048743750845828

`eq[2, A001222(A065516(n+1))]+1`
-/

namespace A109310.P16326048743750845828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065516 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109310.P16326048743750845828

/-! ## A109310.P10109848369544238813

`A174956(A007318(∑[n])*A272307(n+1))`
-/

namespace A109310.P10109848369544238813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A272307 (n + 1)).toNat

end

end A109310.P10109848369544238813

/-! ## A109310.P1875539420345791564

`A174956(A272307(n+1)/A007318(∑[n]))`
-/

namespace A109310.P1875539420345791564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (SequenceMachineLib.roundAway ((A272307 (n + 1) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A109310.P1875539420345791564

/-! ## A109310.P15630199366784252930

`A174956(A272307(n+1))%A048111(n+1)`
-/

namespace A109310.P15630199366784252930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174956 (A272307 (n + 1)).toNat) (A048111 (n + 1))

end

end A109310.P15630199366784252930

/-! ## A109310.P17555926025986560656

`A174956(2*A272307(n+1)-A272307(n+1))`
-/

namespace A109310.P17555926025986560656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (2 * A272307 (n + 1) - A272307 (n + 1)).toNat

end

end A109310.P17555926025986560656

/-! ## A109310.P175426167196644694

`A174956(A272307(n+1))+A008683(4*(n+1))`
-/

namespace A109310.P175426167196644694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A272307 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A109310.P175426167196644694

/-!
# A109311: Numbers n such that sum of n-th and (n+1)-st semiprimes is a square=q^2.

The programs for A109311, there is no canonical definition to state claims against.
-/

/-! ## A109311.P9798129159955565799

`eq[2, A000122(A118717(n+1))]+1`
-/

namespace A109311.P9798129159955565799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A118717 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109311.P9798129159955565799

/-!
# A109312: Numbers q such that q^2 is a sum of n-th and (n+1)-st semiprimes for some n.

The programs for A109312, there is no canonical definition to state claims against.
-/

/-! ## A109312.P8788724025621249672

`sqrt(∩[A118717(n+1), n²])`
-/

namespace A109312.P8788724025621249672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A109312.P8788724025621249672

/-! ## A109312.P14753415270759934567

`sqrt(∩[A000290(n), A118717(n+1)])`
-/

namespace A109312.P14753415270759934567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A109312.P14753415270759934567

/-! ## A109312.P16128133284474446724

`sqrt(∩[A008794(2*n), A118717(n+1)])`
-/

namespace A109312.P16128133284474446724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A109312.P16128133284474446724

/-! ## A109312.P9945246962596510110

`A002024(A001358(A109311(n+1)+1))`
-/

namespace A109312.P9945246962596510110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A001358 (A109311 (n + 1) + 1).toNat).toNat

end

end A109312.P9945246962596510110

/-! ## A109312.P12323231315187873762

`A002024(A006881(A109311(n+1))-A006881(n+1))`
-/

namespace A109312.P12323231315187873762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A006881 (A109311 (n + 1)).toNat - A006881 (n + 1)).toNat

end

end A109312.P12323231315187873762

/-!
# A109313: Difference between prime factors of n-th semiprime.

The programs for A109313, the canonical program `A109313.P16359925325841850273` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109313 has offset 1).

The definition of A109313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109313.P1567415411983563764

`A100573(A001358(n+1))`
-/

namespace A109313.P1567415411983563764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100573 (A001358 (n + 1)).toNat

end

end A109313.P1567415411983563764

namespace A109313

/-- `A100573(A001358(n+1))` -/
def P1567415411983563764.Spec : Prop :=
  ∀ n, P1567415411983563764.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P16737473974484104750

`A049087(sqrt(A074985(n+1)))`
-/

namespace A109313.P16737473974484104750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A109313.P16737473974484104750

namespace A109313

/-- `A049087(sqrt(A074985(n+1)))` -/
def P16737473974484104750.Spec : Prop :=
  ∀ n, P16737473974484104750.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P16359925325841850273

`A084127(n+1)-A084126(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A109313

/-- `A084127(n+1)-A084126(n+1)` -/
def P16359925325841850273.Spec : Prop :=
  ∀ n, P16359925325841850273.a n = A109313 (n + 1)

theorem P16359925325841850273.correct : P16359925325841850273.Spec := by
  intro n
  simp only [A109313, Nat.add_sub_cancel]

end A109313

/-! ## A109313.P12382964618380383167

`A176347(n+1)%A084127(n+1)`
-/

namespace A109313.P12382964618380383167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176347 (n + 1)) (A084127 (n + 1))

end

end A109313.P12382964618380383167

namespace A109313

/-- `A176347(n+1)%A084127(n+1)` -/
def P12382964618380383167.Spec : Prop :=
  ∀ n, P12382964618380383167.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P4851406537460190551

`2*A084127(n+1)-A068318(n+1)`
-/

namespace A109313.P4851406537460190551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084127 (n + 1) - A068318 (n + 1)

end

end A109313.P4851406537460190551

namespace A109313

/-- `2*A084127(n+1)-A068318(n+1)` -/
def P4851406537460190551.Spec : Prop :=
  ∀ n, P4851406537460190551.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P2570319965724067968

`A068318(n+1)-2*A084126(n+1)`
-/

namespace A109313.P2570319965724067968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1) - 2 * A084126 (n + 1)

end

end A109313.P2570319965724067968

namespace A109313

/-- `A068318(n+1)-2*A084126(n+1)` -/
def P2570319965724067968.Spec : Prop :=
  ∀ n, P2570319965724067968.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P13788191529818789073

`A006530(A001358(n+1))-A084126(n+1)`
-/

namespace A109313.P13788191529818789073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001358 (n + 1)).toNat - A084126 (n + 1)

end

end A109313.P13788191529818789073

namespace A109313

/-- `A006530(A001358(n+1))-A084126(n+1)` -/
def P13788191529818789073.Spec : Prop :=
  ∀ n, P13788191529818789073.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P4407053856090714129

`A084127(n+1)-A020639(A001358(n+1))`
-/

namespace A109313.P4407053856090714129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) - A020639 (A001358 (n + 1)).toNat

end

end A109313.P4407053856090714129

namespace A109313

/-- `A084127(n+1)-A020639(A001358(n+1))` -/
def P4407053856090714129.Spec : Prop :=
  ∀ n, P4407053856090714129.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P16076012953136124768

`A006530(A075818(n+1))-A084126(n+1)`
-/

namespace A109313.P16076012953136124768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A075818 (n + 1)).toNat - A084126 (n + 1)

end

end A109313.P16076012953136124768

namespace A109313

/-- `A006530(A075818(n+1))-A084126(n+1)` -/
def P16076012953136124768.Spec : Prop :=
  ∀ n, P16076012953136124768.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P13502964308326463777

`A006530(A088707(n+1)-1)-A084126(n+1)`
-/

namespace A109313.P13502964308326463777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088707 (n + 1) - 1).toNat - A084126 (n + 1)

end

end A109313.P13502964308326463777

namespace A109313

/-- `A006530(A088707(n+1)-1)-A084126(n+1)` -/
def P13502964308326463777.Spec : Prop :=
  ∀ n, P13502964308326463777.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P16345066082583485482

`A084127(n+1)-A020639(A088707(n+1)-1)`
-/

namespace A109313.P16345066082583485482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) - A020639 (A088707 (n + 1) - 1).toNat

end

end A109313.P16345066082583485482

namespace A109313

/-- `A084127(n+1)-A020639(A088707(n+1)-1)` -/
def P16345066082583485482.Spec : Prop :=
  ∀ n, P16345066082583485482.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P9491013173182249034

`A084127(n+1)-A020639(A075818(n+1)/2)`
-/

namespace A109313.P9491013173182249034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) - A020639 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A109313.P9491013173182249034

namespace A109313

/-- `A084127(n+1)-A020639(A075818(n+1)/2)` -/
def P9491013173182249034.Spec : Prop :=
  ∀ n, P9491013173182249034.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P10268920173610353640

`A006530(eq[2, A001222(n+1)]+1)-A084126(n+1)`
-/

namespace A109313.P10268920173610353640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A084126 (n + 1)

end

end A109313.P10268920173610353640

namespace A109313

/-- `A006530(eq[2, A001222(n+1)]+1)-A084126(n+1)` -/
def P10268920173610353640.Spec : Prop :=
  ∀ n, P10268920173610353640.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P16388250201096121242

`A084127(n+1)-A020639(eq[2, A001222(n+1)]+1)`
-/

namespace A109313.P16388250201096121242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) - A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A109313.P16388250201096121242

namespace A109313

/-- `A084127(n+1)-A020639(eq[2, A001222(n+1)]+1)` -/
def P16388250201096121242.Spec : Prop :=
  ∀ n, P16388250201096121242.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P3536278560186686707

`A006530(A175708(n+1)+n+1)-A084126(n+1)`
-/

namespace A109313.P3536278560186686707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175708 (n + 1) + (n + 1 : ℤ)).toNat - A084126 (n + 1)

end

end A109313.P3536278560186686707

namespace A109313

/-- `A006530(A175708(n+1)+n+1)-A084126(n+1)` -/
def P3536278560186686707.Spec : Prop :=
  ∀ n, P3536278560186686707.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P2525306840239061508

`A084127(n+1)-A020639(A175708(n+1)+n+1)`
-/

namespace A109313.P2525306840239061508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (n + 1) - A020639 (A175708 (n + 1) + (n + 1 : ℤ)).toNat

end

end A109313.P2525306840239061508

namespace A109313

/-- `A084127(n+1)-A020639(A175708(n+1)+n+1)` -/
def P2525306840239061508.Spec : Prop :=
  ∀ n, P2525306840239061508.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P18009892750536531076

`A056737(eq[2, ∑{e}[n, #]])`
-/

namespace A109313.P18009892750536531076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A109313.P18009892750536531076

namespace A109313

/-- `A056737(eq[2, ∑{e}[n, #]])` -/
def P18009892750536531076.Spec : Prop :=
  ∀ n, P18009892750536531076.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P3014988975404591740

`A046665(A176540(n+2))`
-/

namespace A109313.P3014988975404591740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A176540 (n + 2)).toNat

end

end A109313.P3014988975404591740

namespace A109313

/-- `A046665(A176540(n+2))` -/
def P3014988975404591740.Spec : Prop :=
  ∀ n, P3014988975404591740.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P15196797365502092693

`A046665(eq[2, A001222(n+1)]+1)`
-/

namespace A109313.P15196797365502092693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A109313.P15196797365502092693

namespace A109313

/-- `A046665(eq[2, A001222(n+1)]+1)` -/
def P15196797365502092693.Spec : Prop :=
  ∀ n, P15196797365502092693.a n = A109313 (n + 1)

end A109313

/-! ## A109313.P12542258512115171314

`A049087(eq[2, A001055(n+1)]+1)`
-/

namespace A109313.P12542258512115171314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A109313.P12542258512115171314

namespace A109313

/-- `A049087(eq[2, A001055(n+1)]+1)` -/
def P12542258512115171314.Spec : Prop :=
  ∀ n, P12542258512115171314.a n = A109313 (n + 1)

end A109313

/-!
# A109314: Numbers n such that prime(n) + n is a prime power (A246547).

The programs for A109314, there is no canonical definition to state claims against.
-/

/-! ## A109314.P10199455006297223343

`eq[1, A304455(A014688(n+1))]+1`
-/

namespace A109314.P10199455006297223343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A014688 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109314.P10199455006297223343

/-! ## A109314.P17421644873787439898

`lt[A085818(A167136(n+1)), n]`
-/

namespace A109314.P17421644873787439898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085818 (A167136 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109314.P17421644873787439898

/-! ## A109314.P11061311801697193935

`eq[2, A182850(A000040(n+1)+n+1)]+1`
-/

namespace A109314.P11061311801697193935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A000040 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109314.P11061311801697193935

/-!
# A109315: Numbers n such that prime(n) - n is a prime power.

The programs for A109315, there is no canonical definition to state claims against.
-/

/-! ## A109315.P13384533234962019251

`A000720(A083240(n+1))`
-/

namespace A109315.P13384533234962019251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A083240 (n + 1)).toNat

end

end A109315.P13384533234962019251

/-! ## A109315.P3095109787626252157

`A061395(p?[A083240(n+1)])`
-/

namespace A109315.P3095109787626252157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A109315.P3095109787626252157

/-! ## A109315.P17530310323297419845

`A061395(or(1, A083240(n+1)))`
-/

namespace A109315.P17530310323297419845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A083240 (n + 1))).toNat

end

end A109315.P17530310323297419845

/-! ## A109315.P4904764316075604491

`∑{d}[A083240(n+1), A061395(#)]`
-/

namespace A109315.P4904764316075604491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A109315.P4904764316075604491

/-! ## A109315.P5840804147618982371

`A061395(∏{d}[A083240(n+1), #])`
-/

namespace A109315.P5840804147618982371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A109315.P5840804147618982371

/-!
# A109316: Triangle T, read by rows, where T(n,k) = [T^2](n-1,k) + [T^2](n-2,k-1) (n>k>0), with T(n,0) = [T^2](n-1,0) (n>0) and T(n,n) = 1 (n>=0), where T^2 is the matrix square of T.

The programs for A109316, there is no canonical definition to state claims against.
-/

/-! ## A109316.P13508576364657994540

`A004773(A055572(A114292(n)))`
-/

namespace A109316.P13508576364657994540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A055572 (A114292 n).toNat).toNat

end

end A109316.P13508576364657994540

/-! ## A109316.P16308484221287051166

`A003056(A005940(A114292(n))²)`
-/

namespace A109316.P16308484221287051166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005940 (A114292 n).toNat ^ 2).toNat

end

end A109316.P16308484221287051166

/-!
# A109317: Column 0 of triangle T=A109316 where T(n,k) = [T^2](n-1,k) + [T^2](n-2,k-1) and T^2 is the matrix square of T.

The programs for A109317, there is no canonical definition to state claims against.
-/

/-! ## A109317.P4914555096357287162

`A109316(∑[n])`
-/

namespace A109317.P4914555096357287162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109317.P4914555096357287162

/-! ## A109317.P2157982960653646082

`∏{p}[A109316(A000124(n)), #]`
-/

namespace A109317.P2157982960653646082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109317.P2157982960653646082

/-! ## A109317.P1772095214090001622

`∏{p}[A109316(A000217(n)), #]`
-/

namespace A109317.P1772095214090001622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109317.P1772095214090001622

/-! ## A109317.P3094753108869720528

`A000027(A109316(C(n+1, 2)))`
-/

namespace A109317.P3094753108869720528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A109316 (Nat.choose (n + 1) 2)).toNat

end

end A109317.P3094753108869720528

/-! ## A109317.P4700815215445254567

`∏{p}[A109316(A179865(n+1)), #]`
-/

namespace A109317.P4700815215445254567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109317.P4700815215445254567

/-!
# A109318: Column 2 of triangle T=A109316 where T(n,k) = [T^2](n-1,k) + [T^2](n-2,k-1) and T^2 is the matrix square of A109316.

The programs for A109318, there is no canonical definition to state claims against.
-/

/-! ## A109318.P15172657470529234509

`A109316(∑[n+2]+3)`
-/

namespace A109318.P15172657470529234509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A109318.P15172657470529234509

/-! ## A109318.P12406036660243205797

`record[A109316(A133263(n))]`
-/

namespace A109318.P12406036660243205797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109318.P12406036660243205797

/-! ## A109318.P3047466594139922657

`record[A109316(A238531(n))]`
-/

namespace A109318.P3047466594139922657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109318.P3047466594139922657

/-! ## A109318.P18217077767510165792

`record[A109316(A089071(n+1))]`
-/

namespace A109318.P18217077767510165792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109318.P18217077767510165792

/-! ## A109318.P15591012253363582845

`record[A109316(A000217(n)+2)]`
-/

namespace A109318.P15591012253363582845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109316 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109318.P15591012253363582845

/-!
# A109319: Row sums of triangle T=A109316 where T(n,k) = [T^2](n-1,k) + [T^2](n-2,k-1) and T^2 is the matrix square of A109316.

The programs for A109319, there is no canonical definition to state claims against.
-/

/-! ## A109319.P16765857827515386988

`A005001(n)+A004525(A130579(n))`
-/

namespace A109319.P16765857827515386988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n + A004525 (A130579 n).toNat

end

end A109319.P16765857827515386988

/-! ## A109319.P9848430211690892983

`A101044(a(n-1))+2` with `a(0)=1, a(1)=2`
-/

namespace A109319.P9848430211690892983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A101044 (a (n - 1)).toNat + 2

end

end A109319.P9848430211690892983

/-!
# A109321: Admirable numbers n such that the subtracted divisor is > sqrt(n).

The programs for A109321, there is no canonical definition to state claims against.
-/

/-! ## A109321.P9892312004666243996

`A100715(A370855(n+1))`
-/

namespace A109321.P9892312004666243996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100715 (A370855 (n + 1)).toNat

end

end A109321.P9892312004666243996

/-!
# A109322: a(n) is the minimum positive integer j such that [j, j+n-1] does not contain any values of sigma(k) (i.e., sum of all positive divisors of k).

The programs for A109322, there is no canonical definition to state claims against.
-/

/-! ## A109322.P17882152336093702546

`A109323(∑[A010054(n!)])`
-/

namespace A109322.P17882152336093702546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109323 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109322.P17882152336093702546

/-! ## A109322.P15192186291608935833

`A109323(lcm(A061017(n+1), A156888(n)))`
-/

namespace A109322.P15192186291608935833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109323 (Int.lcm (A061017 (n + 1)) (A156888 n))

end

end A109322.P15192186291608935833

/-! ## A109322.P13280916633541070471

`A109323(A059592(n)*A080513(n))`
-/

namespace A109322.P13280916633541070471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109323 (A059592 n * A080513 n).toNat

end

end A109322.P13280916633541070471

/-!
# A109323: A109322 with duplicates removed.

The programs for A109323, there is no canonical definition to state claims against.
-/

/-! ## A109323.P4377494117985388452

`record[A109322(n^(n%2))]`
-/

namespace A109323.P4377494117985388452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109322 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109323.P4377494117985388452

/-! ## A109323.P709055322336858081

`record[(-1)^n*A109322(n+1)]`
-/

namespace A109323.P709055322336858081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109323.P709055322336858081

/-! ## A109323.P15366791692294175775

`record[A109322(ceil((n-1)/gcd(2, n))+1)]`
-/

namespace A109323.P15366791692294175775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109322 (⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109323.P15366791692294175775

/-! ## A109323.P11471426728113534220

`record[A109322((n+1)/2^val(n+1, 2))]`
-/

namespace A109323.P11471426728113534220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109323.P11471426728113534220

/-! ## A109323.P15430882509730257772

`record[A109322(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A109323.P15430882509730257772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109322 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109323.P15430882509730257772

/-!
# A109324: Gap lengths associated with A109323.

The programs for A109324, there is no canonical definition to state claims against.
-/

/-! ## A109324.P2754786461868519938

`record[or(A059592(n), A123175(n))]`
-/

namespace A109324.P2754786461868519938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059592 n) (A123175 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109324.P2754786461868519938

/-! ## A109324.P10563837716351716253

`eq[A109322(n+1), A110875(n+1)]+1`
-/

namespace A109324.P10563837716351716253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109324.P10563837716351716253

/-! ## A109324.P8587283041486722167

`lt[A110875(n+1), A109322(n+2)]+1`
-/

namespace A109324.P8587283041486722167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109322 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A109324.P8587283041486722167

/-! ## A109324.P6202380214775805685

`∑[A046951(A104635(2*n+1)²)]`
-/

namespace A109324.P6202380214775805685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A104635 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109324.P6202380214775805685

/-!
# A109325: Zsigmondy numbers for a = 3, b = 2: Zs(n, 3, 2) is the greatest divisor of 3^n - 2^n (A001047) that is relatively prime to 3^m - 2^m for all positive integers m < n.

The programs for A109325, there is no canonical definition to state claims against.
-/

/-! ## A109325.P4655768195785443936

`gcd(A304973(2*n+3), A320528(A008277(3*n+4)))`
-/

namespace A109325.P4655768195785443936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304973 (2 * n + 3)) (A320528 (A008277 (3 * n + 4)).toNat)

end

end A109325.P4655768195785443936

/-!
# A109332: Integers with mutual residues of 7 or more.

The programs for A109332, there is no canonical definition to state claims against.
-/

/-! ## A109332.P4472474417942177874

`A109331(n+1)+A006530(A002110(n))`
-/

namespace A109332.P4472474417942177874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109331 (n + 1) + A006530 (A002110 n).toNat

end

end A109332.P4472474417942177874

/-! ## A109332.P8903162716113385962

`A109333(n+1)-record[A014963(A007318(n))]`
-/

namespace A109332.P8903162716113385962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109333 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109332.P8903162716113385962

/-! ## A109332.P6267535760621402300

`eq[A059126(A023175(n+1)), A070821(n+1)]`
-/

namespace A109332.P6267535760621402300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A023175 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109332.P6267535760621402300

/-!
# A109333: Integers with mutual residues of 8 or more.

The programs for A109333, there is no canonical definition to state claims against.
-/

/-! ## A109333.P1902075228965813841

`A109331(n+1)+2*A006530(A002110(n))`
-/

namespace A109333.P1902075228965813841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109331 (n + 1) + 2 * A006530 (A002110 n).toNat

end

end A109333.P1902075228965813841

/-! ## A109333.P16005332933930498140

`A005728(n)+A109331(n+1)+A006530(A002110(n))`
-/

namespace A109333.P16005332933930498140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n + (A109331 (n + 1) + A006530 (A002110 n).toNat)

end

end A109333.P16005332933930498140

/-!
# A109334: Integers with mutual residues of 9 or more.

The programs for A109334, there is no canonical definition to state claims against.
-/

/-! ## A109334.P8679745675600247403

`10*record[A006530(n+1)]-(A020639(A004304(n))-1)`
-/

namespace A109334.P8679745675600247403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A020639 (A004304 n).toNat - 1)

end

end A109334.P8679745675600247403

/-! ## A109334.P18283848859635194170

`eq[18, A326065(A267099(n+1))]-record[A259153(n+1)]`
-/

namespace A109334.P18283848859635194170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A267099 (n + 1)).toNat

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A109334.P18283848859635194170

/-! ## A109334.P9398266579924415452

`A358506(A211486(n+2))-1`
-/

namespace A109334.P9398266579924415452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (A211486 (n + 2)).toNat - 1

end

end A109334.P9398266579924415452

/-!
# A109335: Integers with mutual residues of 10 or more.

The programs for A109335, there is no canonical definition to state claims against.
-/

/-! ## A109335.P8252599899262525978

`A054404(3*A109334(n+1))`
-/

namespace A109335.P8252599899262525978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (3 * A109334 (n + 1)).toNat

end

end A109335.P8252599899262525978

/-! ## A109335.P11596117915707604543

`eq[18, A326065(A267099(n+1))]`
-/

namespace A109335.P11596117915707604543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A267099 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109335.P11596117915707604543

/-! ## A109335.P14930276700524394112

`A358506(A211486(n+2))+A002088(n)`
-/

namespace A109335.P14930276700524394112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358506 (A211486 (n + 2)).toNat + A002088 n

end

end A109335.P14930276700524394112

/-!
# A109337: Parse the Thue-Morse sequence (A010060) using the Ziv-Lempel encoding as described in A106182; sequence gives lengths of successive phrases.

The programs for A109337, there is no canonical definition to state claims against.
-/

/-! ## A109337.P13906124234943838755

`∑{e}[A047974(n)%A356020(3*n+5)+1, #]`
-/

namespace A109337.P13906124234943838755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047974 n) (A356020 (3 * n + 5)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A109337.P13906124234943838755

/-! ## A109337.P9711879870003369682

`A069010(A017317(∑[A038752(n)]))`
-/

namespace A109337.P9711879870003369682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A017317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A109337.P9711879870003369682

/-! ## A109337.P7730329868216129926

`A069010(A009955(∑[A065033(n)]))`
-/

namespace A109337.P7730329868216129926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A009955 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A109337.P7730329868216129926

/-! ## A109337.P146722205218765495

`A330167(A123346(n))+A000120(n)`
-/

namespace A109337.P146722205218765495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (A123346 n).toNat + A000120 n

end

end A109337.P146722205218765495

/-! ## A109337.P11635113045697703955

`A069010(A073576(3*n)-A101606(3*n+1))`
-/

namespace A109337.P11635113045697703955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A073576 (3 * n) - A101606 (3 * n + 1)).toNat

end

end A109337.P11635113045697703955

/-!
# A109339: Number of letters in 2n (in Spanish).

The programs for A109339, there is no canonical definition to state claims against.
-/

/-! ## A109339.P16363906646291133134

`A011762(2*n)`
-/

namespace A109339.P16363906646291133134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (2 * n)

end

end A109339.P16363906646291133134

/-! ## A109339.P6700029430065806017

`A000027(A011762(n+n))`
-/

namespace A109339.P6700029430065806017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A011762 (n + n)).toNat

end

end A109339.P6700029430065806017

/-! ## A109339.P15758475593225661383

`A033619(A011762(n+n)+1)`
-/

namespace A109339.P15758475593225661383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A011762 (n + n) + 1).toNat

end

end A109339.P15758475593225661383

/-! ## A109339.P7740911313254445841

`A011762(A004277(n))+C(2, n+2)`
-/

namespace A109339.P7740911313254445841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A004277 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A109339.P7740911313254445841

/-! ## A109339.P10113721290067509721

`A011762(n+n)+A000007(n+1)`
-/

namespace A109339.P10113721290067509721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (n + n) + A000007 (n + 1)

end

end A109339.P10113721290067509721

/-! ## A109339.P14664628499865238983

`lcm(A005117(C(2, n)+1), A011762(n+n))`
-/

namespace A109339.P14664628499865238983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005117 (Nat.choose 2 n + 1)) (A011762 (n + n))

end

end A109339.P14664628499865238983

/-! ## A109339.P18263277094221496862

`∑{d}[A011762(A005843(n)), A000010(#)]`
-/

namespace A109339.P18263277094221496862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A109339.P18263277094221496862

/-!
# A109340: Expansion of x^2*(1+x+4*x^2)/((1+x+x^2)*(1-x)^3).

The programs for A109340, the canonical program `A109340.P4405614712542137968` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109340 has offset 0).

The definition of A109340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^2+x^3+4x^4)/(1-2x+x^2-x^3+2x^4-x^5))` (program `A109340.P4405614712542137968`, by `A109340.P4405614712542137968.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109340.P4405614712542137968

`ogf((x^2+x^3+4x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109340

/-- `ogf((x^2+x^3+4x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P4405614712542137968.Spec : Prop :=
  ∀ n, P4405614712542137968.a n = A109340 n

theorem P4405614712542137968.correct : P4405614712542137968.Spec := by
  intro n
  simp only [A109340]

end A109340

/-! ## A109340.P6256902305866921634

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9`
-/

namespace A109340.P6256902305866921634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 9] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A109340.P6256902305866921634

namespace A109340

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P6256902305866921634.Spec : Prop :=
  ∀ n, P6256902305866921634.a n = A109340 n

end A109340

/-! ## A109340.P8882413813771397985

`(1-n)²-char[3*n]`
-/

namespace A109340.P8882413813771397985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109340.P8882413813771397985

namespace A109340

/-- `(1-n)²-char[3*n]` -/
def P8882413813771397985.Spec : Prop :=
  ∀ n, P8882413813771397985.a n = A109340 n

end A109340

/-! ## A109340.P4167958890903262663

`∑[a(n-3)+6]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A109340.P4167958890903262663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P4167958890903262663

namespace A109340

/-- `∑[a(n-3)+6]` -/
def P4167958890903262663.Spec : Prop :=
  ∀ n, (P4167958890903262663.a n : ℤ) = A109340 n

end A109340

/-! ## A109340.P17976640698116989818

`∑[∑[gcd(4, a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A109340.P17976640698116989818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f2 =>
  Nat.gcd 4 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P17976640698116989818

namespace A109340

/-- `∑[∑[gcd(4, a(n-3))]]` -/
def P17976640698116989818.Spec : Prop :=
  ∀ n, (P17976640698116989818.a n : ℤ) = A109340 n

end A109340

/-! ## A109340.P4792305021637697301

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A109340.P4792305021637697301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P4792305021637697301

namespace A109340

/-- `∑[∑[floor(a(n-3))]]` -/
def P4792305021637697301.Spec : Prop :=
  ∀ n, (P4792305021637697301.a n : ℤ) = A109340 n

end A109340

/-! ## A109340.P12755117162268013855

`abs(n²%3+n²-2*n)`
-/

namespace A109340.P12755117162268013855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2 % 3 + n ^ 2 : ℕ) : ℤ) - (2 * n : ℤ)|

end

end A109340.P12755117162268013855

namespace A109340

/-- `abs(n²%3+n²-2*n)` -/
def P12755117162268013855.Spec : Prop :=
  ∀ n, P12755117162268013855.a n = A109340 n

end A109340

/-! ## A109340.P13156735976051766179

`∑[∑[a(n-3)%5]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A109340.P13156735976051766179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 4] fun n f2 =>
  f2 (n - 3) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P13156735976051766179

namespace A109340

/-- `∑[∑[a(n-3)%5]]` -/
def P13156735976051766179.Spec : Prop :=
  ∀ n, (P13156735976051766179.a n : ℤ) = A109340 n

end A109340

/-! ## A109340.P4982660265096847071

`∑[∑[(2-a(n-3))²]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A109340.P4982660265096847071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f2 =>
  (2 - f2 (n - 3)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P4982660265096847071

namespace A109340

/-- `∑[∑[(2-a(n-3))²]]` -/
def P4982660265096847071.Spec : Prop :=
  ∀ n, P4982660265096847071.a n = A109340 n

end A109340

/-! ## A109340.P6519085640243198315

`∑[abs((n+2)%3-2*n)-2]`
-/

namespace A109340.P6519085640243198315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 2) % 3 : ℕ) : ℤ) - (2 * n : ℤ)| - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P6519085640243198315

namespace A109340

/-- `∑[abs((n+2)%3-2*n)-2]` -/
def P6519085640243198315.Spec : Prop :=
  ∀ n, P6519085640243198315.a n = A109340 n

end A109340

/-! ## A109340.P3441563141324581773

`∑[∑[a(n-3)^a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A109340.P3441563141324581773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 4] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P3441563141324581773

namespace A109340

/-- `∑[∑[a(n-3)^a(n-1)]]` -/
def P3441563141324581773.Spec : Prop :=
  ∀ n, (P3441563141324581773.a n : ℤ) = A109340 n

end A109340

/-! ## A109340.P17986096154299878042

`∑[A047240(comp[2*(n+1)]+1-n)]`
-/

namespace A109340.P17986096154299878042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109340.P17986096154299878042

namespace A109340

/-- `∑[A047240(comp[2*(n+1)]+1-n)]` -/
def P17986096154299878042.Spec : Prop :=
  ∀ n, P17986096154299878042.a n = A109340 n

end A109340

/-!
# A109342: Least k such that (k*M(n))^2+k*M(n)-1 is the first of a pair of twin primes, where M(n) = Mersenne primes.

The programs for A109342, there is no canonical definition to state claims against.
-/

/-! ## A109342.P3593375889393220052

`A153153(A018631(n+1)*A230951(n))`
-/

namespace A109342.P3593375889393220052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (A018631 (n + 1) * A230951 n).toNat

end

end A109342.P3593375889393220052

/-! ## A109342.P5950456460690493996

`A153153(lcm(A018631(n+1), A230951(n)))`
-/

namespace A109342.P5950456460690493996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (Int.lcm (A018631 (n + 1)) (A230951 n))

end

end A109342.P5950456460690493996

/-!
# A109344: a(n) consists of n 4's, n-1 8's and a single 9 (in that order).

The programs for A109344, the canonical program `A109344.P5452736082127484610` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109344 has offset 1).

The definition of A109344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109344.P5452736082127484610

`(2*10^(n+1)/3+1/3)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109344

/-- `(2*10^(n+1)/3+1/3)²` -/
def P5452736082127484610.Spec : Prop :=
  ∀ n, P5452736082127484610.a n = (A109344 (n + 1) : ℚ)

end A109344

/-! ## A109344.P8333888113495060347

`A098209(n+1)+1`
-/

namespace A109344.P8333888113495060347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098209 (n + 1) + 1

end

end A109344.P8333888113495060347

namespace A109344

/-- `A098209(n+1)+1` -/
def P8333888113495060347.Spec : Prop :=
  ∀ n, P8333888113495060347.a n = A109344 (n + 1)

end A109344

/-! ## A109344.P68132709018575692

`A067275(n+2)^2`
-/

namespace A109344.P68132709018575692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 2) ^ 2

end

end A109344.P68132709018575692

namespace A109344

/-- `A067275(n+2)^2` -/
def P68132709018575692.Spec : Prop :=
  ∀ n, P68132709018575692.a n = A109344 (n + 1)

end A109344

/-! ## A109344.P18044913107628538652

`record[(A308900(n+2)+1)²]`
-/

namespace A109344.P18044913107628538652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308900 (n + 2) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109344.P18044913107628538652

namespace A109344

/-- `record[(A308900(n+2)+1)²]` -/
def P18044913107628538652.Spec : Prop :=
  ∀ n, P18044913107628538652.a n = A109344 (n + 1)

end A109344

/-! ## A109344.P9594952037858373716

`floor(4*A074992(n+1)/3)`
-/

namespace A109344.P9594952037858373716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A074992 (n + 1) : ℚ) / 3)⌋

end

end A109344.P9594952037858373716

namespace A109344

/-- `floor(4*A074992(n+1)/3)` -/
def P9594952037858373716.Spec : Prop :=
  ∀ n, P9594952037858373716.a n = A109344 (n + 1)

end A109344

/-! ## A109344.P1228227015064746612

`A181718(n+1)+A074992(n+1)`
-/

namespace A109344.P1228227015064746612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181718 (n + 1) + A074992 (n + 1)

end

end A109344.P1228227015064746612

namespace A109344

/-- `A181718(n+1)+A074992(n+1)` -/
def P1228227015064746612.Spec : Prop :=
  ∀ n, P1228227015064746612.a n = A109344 (n + 1)

end A109344

/-!
# A109345: a(n) = 5^((n^2 - n)/2).

The programs for A109345, the canonical program `A109345.P8593648324681951526` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109345 has offset 0).

The definition of A109345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109345.P8593648324681951526

`5^C(n, 2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109345

/-- `5^C(n, 2)` -/
def P8593648324681951526.Spec : Prop :=
  ∀ n, (P8593648324681951526.a n : ℤ) = A109345 n

theorem P8593648324681951526.correct : P8593648324681951526.Spec := by
  intro n
  simp only [A109345]

end A109345

/-! ## A109345.P5981074518509295902

`5^((n²-n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109345.P5981074518509295902
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2 : ℝ)

end

end A109345.P5981074518509295902

namespace A109345

/-- `5^((n²-n)/2)` -/
def P5981074518509295902.Spec : Prop :=
  ∀ n, P5981074518509295902.a n = (A109345 n : ℝ)

end A109345

/-! ## A109345.P3375402656885279483

`∏[5*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A109345.P3375402656885279483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109345.P3375402656885279483

namespace A109345

/-- `∏[5*a(n-1)]` -/
def P3375402656885279483.Spec : Prop :=
  ∀ n, (P3375402656885279483.a n : ℤ) = A109345 n

end A109345

/-! ## A109345.P1703371689735188086

`∏[ceil(5^((n-1)%18))]`
-/

namespace A109345.P1703371689735188086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 18 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109345.P1703371689735188086

namespace A109345

/-- `∏[ceil(5^((n-1)%18))]` -/
def P1703371689735188086.Spec : Prop :=
  ∀ n, P1703371689735188086.a n = A109345 n

end A109345

/-! ## A109345.P14860976222548295628

`or(1, 5*∏[5^(n-1)])`
-/

namespace A109345.P14860976222548295628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (5 * (∏ j ∈ Finset.range (n + 1), f1 j)))

end

end A109345.P14860976222548295628

namespace A109345

/-- `or(1, 5*∏[5^(n-1)])` -/
def P14860976222548295628.Spec : Prop :=
  ∀ n, P14860976222548295628.a n = A109345 n

end A109345

/-!
# A109346: Primes p such that p + 2 is a brilliant number.

The programs for A109346, there is no canonical definition to state claims against.
-/

/-! ## A109346.P17879500685550123665

`p?[A078972(n+1)-2]`
-/

namespace A109346.P17879500685550123665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109346.P17879500685550123665

/-! ## A109346.P18017469640435199525

`∩[A000040(n+1), A078972(n+1)-2]`
-/

namespace A109346.P18017469640435199525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109346.P18017469640435199525

/-! ## A109346.P1738547164587513795

`record[A006530(A078972(n+1)-2)]`
-/

namespace A109346.P1738547164587513795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078972 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109346.P1738547164587513795

/-! ## A109346.P13452435534879361668

`record[A020639(A078972(n+1)-2)]`
-/

namespace A109346.P13452435534879361668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078972 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109346.P13452435534879361668

/-! ## A109346.P926021491502007819

`p?[A023444(A078972(n+1))]`
-/

namespace A109346.P926021491502007819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A078972 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A109346.P926021491502007819

/-!
# A109347: Zsigmondy numbers for a = 5, b = 3: Zs(n, 5, 3) is the greatest divisor of 5^n - 3^n (A005058) that is relatively prime to 5^m - 3^m for all positive integers m < n.

The programs for A109347, there is no canonical definition to state claims against.
-/

/-! ## A109347.P3785495173645493524

`A000265(A016173(n))+C(2, n+2)`
-/

namespace A109347.P3785495173645493524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A016173 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A109347.P3785495173645493524

/-!
# A109349: Zsigmondy numbers for a = 7, b = 5: Zs(n, 7, 5) is the greatest divisor of 7^n - 5^n that is relatively prime to 7^m - 5^m for all positive integers m < n.

The programs for A109349, there is no canonical definition to state claims against.
-/

/-! ## A109349.P12264817230593637131

`A006530(4*(7^(n+1)-5^(n+1))/2)`
-/

namespace A109349.P12264817230593637131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (4 * (((7 ^ (n + 1) : ℤ) - (5 ^ (n + 1) : ℤ) : ℚ) / 2))).toNat

end

end A109349.P12264817230593637131

/-!
# A109350: Numbers whose anti-divisors sum to a prime.

The programs for A109350, there is no canonical definition to state claims against.
-/

/-! ## A109350.P17893712620095628503

`eq[2, A077462(A066417(n+1))]+1`
-/

namespace A109350.P17893712620095628503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A066417 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109350.P17893712620095628503

/-!
# A109352: a(n) = sum of the prime divisors of the n-th squarefree composite number.

The programs for A109352, the canonical program `A109352.P15990870574483409187` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109352 has offset 1).

The definition of A109352 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A120944, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109352.P15990870574483409187

`A001414(A120944(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109352

/-- `A001414(A120944(n+1))` -/
def P15990870574483409187.Spec : Prop :=
  ∀ n, P15990870574483409187.a n = A109352 (n + 1)

theorem P15990870574483409187.correct : P15990870574483409187.Spec := by
  intro n
  simp only [A109352, Nat.add_sub_cancel]

end A109352

/-! ## A109352.P8750170916621145139

`A008472(sqrt(A177492(n+1)))`
-/

namespace A109352.P8750170916621145139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (A177492 (n + 1) : ℝ))).toNat

end

end A109352.P8750170916621145139

namespace A109352

/-- `A008472(sqrt(A177492(n+1)))` -/
def P8750170916621145139.Spec : Prop :=
  ∀ n, P8750170916621145139.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P7064188486898549854

`A008472(A120944(2*n+1-n))`
-/

namespace A109352.P7064188486898549854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A120944 (2 * n + 1 - n)).toNat

end

end A109352.P7064188486898549854

namespace A109352

/-- `A008472(A120944(2*n+1-n))` -/
def P7064188486898549854.Spec : Prop :=
  ∀ n, P7064188486898549854.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P15486562869825590320

`A008472(lcm((-1)^n, A120944(n+1)))`
-/

namespace A109352.P15486562869825590320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (Int.lcm ((-1) ^ n) (A120944 (n + 1)))

end

end A109352.P15486562869825590320

namespace A109352

/-- `A008472(lcm((-1)^n, A120944(n+1)))` -/
def P15486562869825590320.Spec : Prop :=
  ∀ n, P15486562869825590320.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P1427179987140461853

`A008472(A120944(n+1))%A000217(2*n+3)`
-/

namespace A109352.P1427179987140461853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008472 (A120944 (n + 1)).toNat) (A000217 (2 * n + 3))

end

end A109352.P1427179987140461853

namespace A109352

/-- `A008472(A120944(n+1))%A000217(2*n+3)` -/
def P1427179987140461853.Spec : Prop :=
  ∀ n, P1427179987140461853.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P14475595022339868141

`∑{p}[A000469(n+2), #]`
-/

namespace A109352.P14475595022339868141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109352.P14475595022339868141

namespace A109352

/-- `∑{p}[A000469(n+2), #]` -/
def P14475595022339868141.Spec : Prop :=
  ∀ n, (P14475595022339868141.a n : ℤ) = A109352 (n + 1)

end A109352

/-! ## A109352.P16005810750045844263

`A001414(A000469(n+2))`
-/

namespace A109352.P16005810750045844263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000469 (n + 2)).toNat

end

end A109352.P16005810750045844263

namespace A109352

/-- `A001414(A000469(n+2))` -/
def P16005810750045844263.Spec : Prop :=
  ∀ n, P16005810750045844263.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P5575647942820754872

`A001414(record[A084365(n+1)])`
-/

namespace A109352.P5575647942820754872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109352.P5575647942820754872

namespace A109352

/-- `A001414(record[A084365(n+1)])` -/
def P5575647942820754872.Spec : Prop :=
  ∀ n, P5575647942820754872.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P17392770024154145738

`∑{p}[A366807(n+1), #]`
-/

namespace A109352.P17392770024154145738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109352.P17392770024154145738

namespace A109352

/-- `∑{p}[A366807(n+1), #]` -/
def P17392770024154145738.Spec : Prop :=
  ∀ n, (P17392770024154145738.a n : ℤ) = A109352 (n + 1)

end A109352

/-! ## A109352.P1288139816558223412

`A008472(A366807(n+1))`
-/

namespace A109352.P1288139816558223412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A366807 (n + 1)).toNat

end

end A109352.P1288139816558223412

namespace A109352

/-- `A008472(A366807(n+1))` -/
def P1288139816558223412.Spec : Prop :=
  ∀ n, P1288139816558223412.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P11399020728632160734

`∑{p}[(eq[A008683(n+2)², A014963(n+2)]+2)², #]`
-/

namespace A109352.P11399020728632160734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A109352.P11399020728632160734

namespace A109352

/-- `∑{p}[(eq[A008683(n+2)², A014963(n+2)]+2)², #]` -/
def P11399020728632160734.Spec : Prop :=
  ∀ n, (P11399020728632160734.a n : ℤ) = A109352 (n + 1)

end A109352

/-! ## A109352.P6203568713014360210

`A008472(A177492(n+1))`
-/

namespace A109352.P6203568713014360210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A177492 (n + 1)).toNat

end

end A109352.P6203568713014360210

namespace A109352

/-- `A008472(A177492(n+1))` -/
def P6203568713014360210.Spec : Prop :=
  ∀ n, P6203568713014360210.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P12255299366090529242

`A008472(A120944(n+1)²)`
-/

namespace A109352.P12255299366090529242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A120944 (n + 1) ^ 2).toNat

end

end A109352.P12255299366090529242

namespace A109352

/-- `A008472(A120944(n+1)²)` -/
def P12255299366090529242.Spec : Prop :=
  ∀ n, P12255299366090529242.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P4800289188740752260

`A008472(A000469(n+2)²)`
-/

namespace A109352.P4800289188740752260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000469 (n + 2) ^ 2).toNat

end

end A109352.P4800289188740752260

namespace A109352

/-- `A008472(A000469(n+2)²)` -/
def P4800289188740752260.Spec : Prop :=
  ∀ n, P4800289188740752260.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P2087698681499300555

`A008472(A120944(n+1)*A120944(n+1))`
-/

namespace A109352.P2087698681499300555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A120944 (n + 1) * A120944 (n + 1)).toNat

end

end A109352.P2087698681499300555

namespace A109352

/-- `A008472(A120944(n+1)*A120944(n+1))` -/
def P2087698681499300555.Spec : Prop :=
  ∀ n, P2087698681499300555.a n = A109352 (n + 1)

end A109352

/-! ## A109352.P8863025468996603051

`A008472(A000469(n+2)*A000469(n+2))`
-/

namespace A109352.P8863025468996603051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000469 (n + 2) * A000469 (n + 2)).toNat

end

end A109352.P8863025468996603051

namespace A109352

/-- `A008472(A000469(n+2)*A000469(n+2))` -/
def P8863025468996603051.Spec : Prop :=
  ∀ n, P8863025468996603051.a n = A109352 (n + 1)

end A109352

/-!
# A109353: a(n) is the sum of the distinct prime divisors of A024619(n).

The programs for A109353, there is no canonical definition to state claims against.
-/

/-! ## A109353.P1528263977801735669

`∑{p}[A024619(n+1), #]`
-/

namespace A109353.P1528263977801735669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109353.P1528263977801735669

/-! ## A109353.P10658544939214116766

`∑{p}[A084365(n+1), #]`
-/

namespace A109353.P10658544939214116766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109353.P10658544939214116766

/-! ## A109353.P37646605681027599

`∑{p}[A360529(n+1), #]`
-/

namespace A109353.P37646605681027599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109353.P37646605681027599

/-! ## A109353.P8055067987741292781

`∑{p}[A361102(n+2), #]`
-/

namespace A109353.P8055067987741292781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A109353.P8055067987741292781

/-! ## A109353.P928249530156432854

`∑{p}[lt[1, A001221(n+1)]+1, #]`
-/

namespace A109353.P928249530156432854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A109353.P928249530156432854

/-! ## A109353.P12639447833614615786

`∑{p}[record[n^a(A001221(n))], #]` with `a(0)=6, a(1)=0`
-/

namespace A109353.P12639447833614615786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 0] fun n f2 =>
  n ^ f2 (A001221 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A109353.P12639447833614615786

/-! ## A109353.P10234048401526949166

`A008472(A024619(n+1))`
-/

namespace A109353.P10234048401526949166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A024619 (n + 1)).toNat

end

end A109353.P10234048401526949166

/-!
# A109354: a(n) = 6^((n^2 - n)/2).

The programs for A109354, the canonical program `A109354.P12705763929405664571` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109354 has offset 0).

The definition of A109354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109354.P12705763929405664571

`6^((n²-n)/2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109354

/-- `6^((n²-n)/2)` -/
def P12705763929405664571.Spec : Prop :=
  ∀ n, P12705763929405664571.a n = (A109354 n : ℝ)

end A109354

/-! ## A109354.P5650280543424587398

`∏[6*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A109354.P5650280543424587398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109354.P5650280543424587398

namespace A109354

/-- `∏[6*a(n-1)]` -/
def P5650280543424587398.Spec : Prop :=
  ∀ n, (P5650280543424587398.a n : ℤ) = A109354 n

end A109354

/-! ## A109354.P10943420852272603603

`∏[6^((2*n)%(n+1))]`
-/

namespace A109354.P10943420852272603603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (2 * n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109354.P10943420852272603603

namespace A109354

/-- `∏[6^((2*n)%(n+1))]` -/
def P10943420852272603603.Spec : Prop :=
  ∀ n, (P10943420852272603603.a n : ℤ) = A109354 n

end A109354

/-! ## A109354.P4410875128619833014

`6^(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A109354.P4410875128619833014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1)

end

end A109354.P4410875128619833014

namespace A109354

/-- `6^(n-1)*a(n-1)` -/
def P4410875128619833014.Spec : Prop :=
  ∀ n, P4410875128619833014.a n = (A109354 n : ℚ)

end A109354

/-! ## A109354.P3540214184618036156

`a(n-1)/6^(1-n)` with `a(0)=1`
-/

namespace A109354.P3540214184618036156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (6 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A109354.P3540214184618036156

namespace A109354

/-- `a(n-1)/6^(1-n)` -/
def P3540214184618036156.Spec : Prop :=
  ∀ n, P3540214184618036156.a n = (A109354 n : ℚ)

end A109354

/-!
# A109358: Square root of squares of form 2*p + 3, where p is prime.

The programs for A109358, there is no canonical definition to state claims against.
-/

/-! ## A109358.P14890639720497669255

`sqrt(A109367(n+1))`
-/

namespace A109358.P14890639720497669255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A109367 (n + 1) : ℝ)

end

end A109358.P14890639720497669255

/-! ## A109358.P18056781961302406163

`root(A109367(C(n+1, n)), 2)`
-/

namespace A109358.P18056781961302406163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A109367 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A109358.P18056781961302406163

/-! ## A109358.P342986644570163554

`sqrt(2*A098828(n+1)+3)`
-/

namespace A109358.P342986644570163554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A098828 (n + 1) + 3 : ℝ)

end

end A109358.P342986644570163554

/-! ## A109358.P11032578672765593537

`root(A109367(n+1), 2)%A046123(n+1)`
-/

namespace A109358.P11032578672765593537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A109367 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A046123 (n + 1))

end

end A109358.P11032578672765593537

/-! ## A109358.P4880361135061097374

`A000265(root(A109367(n+1), 2))`
-/

namespace A109358.P4880361135061097374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A109367 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A109358.P4880361135061097374

/-! ## A109358.P7478295173243621587

`A080512(root(A109367(n+1), 2))`
-/

namespace A109358.P7478295173243621587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (SequenceMachineLib.roundAway ((A109367 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A109358.P7478295173243621587

/-! ## A109358.P7893256530879449647

`A109613(root(A109367(n+1), 2))`
-/

namespace A109358.P7893256530879449647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((A109367 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A109358.P7893256530879449647

/-! ## A109358.P11523810764581869100

`sqrt(2*p?[A142463(n)]+3)`
-/

namespace A109358.P11523810764581869100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142463 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℝ)

end

end A109358.P11523810764581869100

/-! ## A109358.P3518696150771734246

`lt[A000005(A006370(n+1)+∑[n]+n), 3]+2`
-/

namespace A109358.P3518696150771734246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006370 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A109358.P3518696150771734246

/-!
# A109359: Expansion of x*(1+x^2+3*x^3+2*x^4+x^5+4*x^6) / ((x^2+1)*(x^2-x+1)*(x-1)^2*(x+1)^2).

The programs for A109359, the canonical program `A109359.P16151301352733728859` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109359 has offset 0).

The definition of A109359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^3+3x^4+2x^5+x^6+4x^7)/(1-x+x^3-2x^4+x^5-x^7+x^8))` (program `A109359.P16151301352733728859`, by `A109359.P16151301352733728859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109359.P16151301352733728859

`ogf((x+x^3+3x^4+2x^5+x^6+4x^7)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109359

/-- `ogf((x+x^3+3x^4+2x^5+x^6+4x^7)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P16151301352733728859.Spec : Prop :=
  ∀ n, P16151301352733728859.a n = A109359 n

theorem P16151301352733728859.correct : P16151301352733728859.Spec := by
  intro n
  simp only [A109359]

end A109359

/-! ## A109359.P2670657249862877400

`a(n-1)-a(n-3)+2*a(n-4)-a(n-5)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=7, a(6)=7, a(7)=10`
-/

namespace A109359.P2670657249862877400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 4, 7, 7, 10] fun n a =>
  a (n - 1) - a (n - 3) + 2 * a (n - 4) - a (n - 5) + a (n - 7) - a (n - 8)

end

end A109359.P2670657249862877400

namespace A109359

/-- `a(n-1)-a(n-3)+2*a(n-4)-a(n-5)+a(n-7)-a(n-8)` -/
def P2670657249862877400.Spec : Prop :=
  ∀ n, P2670657249862877400.a n = A109359 n

end A109359

/-!
# A109360: Expansion of x*(1+4*x+5*x^2-x^3+6*x^4+x^5-4*x^6) / ((x^2+1)*(x^2-x+1)*(x-1)^2*(x+1)^2).

The programs for A109360, the canonical program `A109360.P15301242767861430966` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109360 has offset 0).

The definition of A109360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+4x^2+5x^3-x^4+6x^5+x^6-4x^7)/(1-x+x^3-2x^4+x^5-x^7+x^8))` (program `A109360.P15301242767861430966`, by `A109360.P15301242767861430966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109360.P15301242767861430966

`ogf((x+4x^2+5x^3-x^4+6x^5+x^6-4x^7)/(1-x+x^3-2x^4+x^5-x^7+x^8))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109360

/-- `ogf((x+4x^2+5x^3-x^4+6x^5+x^6-4x^7)/(1-x+x^3-2x^4+x^5-x^7+x^8))` -/
def P15301242767861430966.Spec : Prop :=
  ∀ n, P15301242767861430966.a n = A109360 n

theorem P15301242767861430966.correct : P15301242767861430966.Spec := by
  intro n
  simp only [A109360]

end A109360

/-! ## A109360.P12400520985186037534

`a(n-1)-a(n-3)+2*a(n-4)-a(n-5)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=10, a(4)=8, a(5)=11, a(6)=11, a(7)=14`
-/

namespace A109360.P12400520985186037534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 10, 8, 11, 11, 14] fun n a =>
  a (n - 1) - a (n - 3) + 2 * a (n - 4) - a (n - 5) + a (n - 7) - a (n - 8)

end

end A109360.P12400520985186037534

namespace A109360

/-- `a(n-1)-a(n-3)+2*a(n-4)-a(n-5)+a(n-7)-a(n-8)` -/
def P12400520985186037534.Spec : Prop :=
  ∀ n, P12400520985186037534.a n = A109360 n

end A109360

/-!
# A109361: a(n) = Product_{k=1..n} sigma(k)/d(k), where sigma(k) = Sum_{j|k} j and d(k) = Sum_{j|k} 1. Set a(n) = 0 if the corresponding product is not an integer (e.g., for n=2 and n=10).

The programs for A109361, there is no canonical definition to state claims against.
-/

/-! ## A109361.P7926912285191671721

`A006530(A066780(n+1))*A343579(n)`
-/

namespace A109361.P7926912285191671721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066780 (n + 1)).toNat * A343579 n

end

end A109361.P7926912285191671721

/-!
# A109362: Period 6: repeat [0, 0, 1, 2, 0, 3].

The programs for A109362, the canonical program `A109362.P15447435921459116819` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109362 has offset 0).

The definition of A109362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109362.P15447435921459116819

`and(2*n+1, xor(2, (2*n)%3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109362

/-- `and(2*n+1, xor(2, (2*n)%3))` -/
def P15447435921459116819.Spec : Prop :=
  ∀ n, (P15447435921459116819.a n : ℤ) = A109362 n

theorem P15447435921459116819.correct : P15447435921459116819.Spec := by
  intro n
  simp only [A109362]

end A109362

/-!
# A109363: a(n) = 4*2^n - 3*n - 5.

The programs for A109363, the canonical program `A109363.P398444148463414969` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109363 has offset 0).

The definition of A109363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*2^n-3*n-5` (program `A109363.P398444148463414969`, by `A109363.P398444148463414969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109363.P398444148463414969

`4*2^n-3*n-5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109363

/-- `4*2^n-3*n-5` -/
def P398444148463414969.Spec : Prop :=
  ∀ n, P398444148463414969.a n = A109363 n

theorem P398444148463414969.correct : P398444148463414969.Spec := by
  intro n
  simp only [A109363]

end A109363

/-! ## A109363.P2716698445361811506

`∑[ogf((-1+4x)/(1-3x+2x^2))]`
-/

namespace A109363.P2716698445361811506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P2716698445361811506

namespace A109363

/-- `∑[ogf((-1+4x)/(1-3x+2x^2))]` -/
def P2716698445361811506.Spec : Prop :=
  ∀ n, P2716698445361811506.a n = A109363 n

end A109363

/-! ## A109363.P15012644364782429897

`ogf((-1+4x)/(1-4x+5x^2-2x^3))`
-/

namespace A109363.P15012644364782429897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -4, 5, -2] n

end

end A109363.P15012644364782429897

namespace A109363

/-- `ogf((-1+4x)/(1-4x+5x^2-2x^3))` -/
def P15012644364782429897.Spec : Prop :=
  ∀ n, P15012644364782429897.a n = A109363 n

end A109363

/-! ## A109363.P17760004315405319504

`∑[2*a(n-1)+3]` with `a(0)=-1`
-/

namespace A109363.P17760004315405319504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P17760004315405319504

namespace A109363

/-- `∑[2*a(n-1)+3]` -/
def P17760004315405319504.Spec : Prop :=
  ∀ n, P17760004315405319504.a n = A109363 n

end A109363

/-! ## A109363.P11175855969508966319

`∑[∑[2*a(n-1)]]` with `a(0)=-1, a(1)=2`
-/

namespace A109363.P11175855969508966319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P11175855969508966319

namespace A109363

/-- `∑[∑[2*a(n-1)]]` -/
def P11175855969508966319.Spec : Prop :=
  ∀ n, P11175855969508966319.a n = A109363 n

end A109363

/-! ## A109363.P3893900980488361600

`∑[a(n-1)+a(n-1)+3]` with `a(0)=-1`
-/

namespace A109363.P3893900980488361600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P3893900980488361600

namespace A109363

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P3893900980488361600.Spec : Prop :=
  ∀ n, P3893900980488361600.a n = A109363 n

end A109363

/-! ## A109363.P225258403018147914

`-∑[a(n-1)-(3-a(n-1))]` with `a(0)=1`
-/

namespace A109363.P225258403018147914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109363.P225258403018147914

namespace A109363

/-- `-∑[a(n-1)-(3-a(n-1))]` -/
def P225258403018147914.Spec : Prop :=
  ∀ n, P225258403018147914.a n = A109363 n

end A109363

/-! ## A109363.P13666292463074523597

`∑[∑[A171449(n)]]`
-/

namespace A109363.P13666292463074523597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P13666292463074523597

namespace A109363

/-- `∑[∑[A171449(n)]]` -/
def P13666292463074523597.Spec : Prop :=
  ∀ n, P13666292463074523597.a n = A109363 n

end A109363

/-! ## A109363.P11531362634454386916

`∑[A036563(n+1)]`
-/

namespace A109363.P11531362634454386916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P11531362634454386916

namespace A109363

/-- `∑[A036563(n+1)]` -/
def P11531362634454386916.Spec : Prop :=
  ∀ n, P11531362634454386916.a n = A109363 n

end A109363

/-! ## A109363.P8388094237874543511

`(A320661(n)-3)/2`
-/

namespace A109363.P8388094237874543511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320661 n - 3 : ℚ) / 2

end

end A109363.P8388094237874543511

namespace A109363

/-- `(A320661(n)-3)/2` -/
def P8388094237874543511.Spec : Prop :=
  ∀ n, P8388094237874543511.a n = (A109363 n : ℚ)

end A109363

/-! ## A109363.P714114723437512666

`Δ[A048492(n)-(n+1)²]`
-/

namespace A109363.P714114723437512666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048492 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109363.P714114723437512666

namespace A109363

/-- `Δ[A048492(n)-(n+1)²]` -/
def P714114723437512666.Spec : Prop :=
  ∀ n, P714114723437512666.a n = A109363 n

end A109363

/-! ## A109363.P9446921979255654795

`Δ[A084634(n+1)-(n+1)²]`
-/

namespace A109363.P9446921979255654795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084634 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109363.P9446921979255654795

namespace A109363

/-- `Δ[A084634(n+1)-(n+1)²]` -/
def P9446921979255654795.Spec : Prop :=
  ∀ n, P9446921979255654795.a n = A109363 n

end A109363

/-! ## A109363.P17500050296283758621

`∑[∑[a(n-1)²/a(n-2)]-2]` with `a(0)=1, a(1)=2`
-/

namespace A109363.P17500050296283758621
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) ^ 2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P17500050296283758621

namespace A109363

/-- `∑[∑[a(n-1)²/a(n-2)]-2]` -/
def P17500050296283758621.Spec : Prop :=
  ∀ n, P17500050296283758621.a n = (A109363 n : ℚ)

end A109363

/-! ## A109363.P5904647425226415357

`∑[2*A336996(n²)-3]`
-/

namespace A109363.P5904647425226415357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336996 (n ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P5904647425226415357

namespace A109363

/-- `∑[2*A336996(n²)-3]` -/
def P5904647425226415357.Spec : Prop :=
  ∀ n, P5904647425226415357.a n = A109363 n

end A109363

/-! ## A109363.P3634152022910190448

`∑[A336996((n+1)²)-3]`
-/

namespace A109363.P3634152022910190448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336996 ((n + 1) ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P3634152022910190448

namespace A109363

/-- `∑[A336996((n+1)²)-3]` -/
def P3634152022910190448.Spec : Prop :=
  ∀ n, P3634152022910190448.a n = A109363 n

end A109363

/-! ## A109363.P3874020372762146510

`∑[2*A139548(n²)-3]`
-/

namespace A109363.P3874020372762146510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139548 (n ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P3874020372762146510

namespace A109363

/-- `∑[2*A139548(n²)-3]` -/
def P3874020372762146510.Spec : Prop :=
  ∀ n, P3874020372762146510.a n = A109363 n

end A109363

/-! ## A109363.P14240164569981407934

`∑[2*A194356(n²)-3]`
-/

namespace A109363.P14240164569981407934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194356 (n ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P14240164569981407934

namespace A109363

/-- `∑[2*A194356(n²)-3]` -/
def P14240164569981407934.Spec : Prop :=
  ∀ n, P14240164569981407934.a n = A109363 n

end A109363

/-! ## A109363.P8168676640107708763

`∑[2*A194357(n²)-3]`
-/

namespace A109363.P8168676640107708763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194357 (n ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P8168676640107708763

namespace A109363

/-- `∑[2*A194357(n²)-3]` -/
def P8168676640107708763.Spec : Prop :=
  ∀ n, P8168676640107708763.a n = A109363 n

end A109363

/-! ## A109363.P10731414433827993158

`∑[A139548((n+1)²)-3]`
-/

namespace A109363.P10731414433827993158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139548 ((n + 1) ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P10731414433827993158

namespace A109363

/-- `∑[A139548((n+1)²)-3]` -/
def P10731414433827993158.Spec : Prop :=
  ∀ n, P10731414433827993158.a n = A109363 n

end A109363

/-! ## A109363.P3698892572569042404

`∑[A194356((n+1)²)-3]`
-/

namespace A109363.P3698892572569042404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194356 ((n + 1) ^ 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109363.P3698892572569042404

namespace A109363

/-- `∑[A194356((n+1)²)-3]` -/
def P3698892572569042404.Spec : Prop :=
  ∀ n, P3698892572569042404.a n = A109363 n

end A109363

/-!
# A109364: Least positive k such that 2^n + k is a Chen prime and 2^n + k + 2 is a brilliant number.

The programs for A109364, there is no canonical definition to state claims against.
-/

/-! ## A109364.P13519360716508560682

`xor(7, A268444(A330068(n+1)))`
-/

namespace A109364.P13519360716508560682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A268444 (A330068 (n + 1)).toNat)

end

end A109364.P13519360716508560682

/-! ## A109364.P11188853241966314010

`A131818(A077711(n+5)+1)+1`
-/

namespace A109364.P11188853241966314010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A077711 (n + 5) + 1).toNat + 1

end

end A109364.P11188853241966314010

/-!
# A109365: a(-1)=a(0)=1 and recursively a(n) = prime(n)*(a(n-1)+a(n-2)).

The programs for A109365, there is no canonical definition to state claims against.
-/

/-! ## A109365.P8506935412590392371

`(a(n-1)+a(n-2))*A000040(n)` with `a(0)=1, a(1)=4`
-/

namespace A109365.P8506935412590392371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) * A000040 n

end

end A109365.P8506935412590392371

/-! ## A109365.P15869933233488567360

`(a(n-2)+a(n-1))*A006005(n)` with `a(0)=1, a(1)=4`
-/

namespace A109365.P15869933233488567360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 2) + a (n - 1)) * A006005 n

end

end A109365.P15869933233488567360

/-! ## A109365.P16039151698019888392

`(a(n-1)+a(n-2))*A008578(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A109365.P16039151698019888392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) * A008578 (n + 1)

end

end A109365.P16039151698019888392

/-! ## A109365.P6899831393601821377

`(a(n-1)+a(n-2))*A015919(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A109365.P6899831393601821377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) * A015919 (n + 1)

end

end A109365.P6899831393601821377

/-! ## A109365.P9188829659460860078

`(a(n-1)+a(n-2))*comp[A018252(n+1)]` with `a(0)=1, a(1)=4`
-/

namespace A109365.P9188829659460860078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109365.P9188829659460860078

/-!
# A109366: a(-1)=0, a(0)=1 and recursively a(n) = prime(n)*(a(n-1)+a(n-2)).

The programs for A109366, there is no canonical definition to state claims against.
-/

/-! ## A109366.P17435691518103232371

`(a(n-1)+a(n-2))*A000040(n)` with `a(0)=1, a(1)=2`
-/

namespace A109366.P17435691518103232371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * A000040 n

end

end A109366.P17435691518103232371

/-! ## A109366.P17635113281851954381

`(a(n-2)+a(n-1))*A006005(n)` with `a(0)=1, a(1)=2`
-/

namespace A109366.P17635113281851954381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) + a (n - 1)) * A006005 n

end

end A109366.P17635113281851954381

/-! ## A109366.P4967118123245685432

`(a(n-1)+a(n-2))*A008578(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A109366.P4967118123245685432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * A008578 (n + 1)

end

end A109366.P4967118123245685432

/-! ## A109366.P11976757612688087452

`(a(n-1)+a(n-2))*A015919(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A109366.P11976757612688087452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * A015919 (n + 1)

end

end A109366.P11976757612688087452

/-! ## A109366.P16856559454408241990

`(a(n-1)+a(n-2))*comp[A018252(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A109366.P16856559454408241990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109366.P16856559454408241990

/-!
# A109367: Squares of the form 2*p + 3, where p is a prime.

The programs for A109367, there is no canonical definition to state claims against.
-/

/-! ## A109367.P10764634031422508911

`A109358(n+1)²`
-/

namespace A109367.P10764634031422508911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (n + 1) ^ 2

end

end A109367.P10764634031422508911

/-! ## A109367.P8097269141362878472

`2*A098828(n+1)+3`
-/

namespace A109367.P8097269141362878472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098828 (n + 1) + 3

end

end A109367.P8097269141362878472

/-! ## A109367.P15051000460623683098

`A109358(n+1)^A002322(7-(-1)^n)`
-/

namespace A109367.P15051000460623683098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A002322 (7 - (-1) ^ n).toNat : ℤ)

end

end A109367.P15051000460623683098

/-! ## A109367.P15402253326791704766

`A109358(n+1)^A251141(7-(-1)^n)`
-/

namespace A109367.P15402253326791704766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A251141 (7 - (-1) ^ n).toNat : ℤ)

end

end A109367.P15402253326791704766

/-! ## A109367.P16080995182062561444

`A109358(n+1)^A053669(8-(-1)^n)`
-/

namespace A109367.P16080995182062561444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A053669 (8 - (-1) ^ n).toNat : ℤ)

end

end A109367.P16080995182062561444

/-! ## A109367.P12244442367587981354

`A109358(n+1)^A359238(8-(-1)^n)`
-/

namespace A109367.P12244442367587981354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A359238 (8 - (-1) ^ n).toNat : ℤ)

end

end A109367.P12244442367587981354

/-! ## A109367.P16318423993590243228

`A109358(n+1)%A109358(n+2)*A109358(n+1)`
-/

namespace A109367.P16318423993590243228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109358 (n + 1)) (A109358 (n + 2)) * A109358 (n + 1)

end

end A109367.P16318423993590243228

/-! ## A109367.P2997007732274773811

`A109358(n+1)^A000005(A000040(n+1))`
-/

namespace A109367.P2997007732274773811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A109367.P2997007732274773811

/-! ## A109367.P14503116458662141234

`A109358(n+1)^A000005(A040976(n+1)+2)`
-/

namespace A109367.P14503116458662141234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A000005 (A040976 (n + 1) + 2).toNat : ℤ)

end

end A109367.P14503116458662141234

/-! ## A109367.P11192918584144386230

`A109358(A001057(2*n+1))*A109358(n+1)`
-/

namespace A109367.P11192918584144386230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109358 (A001057 (2 * n + 1)).toNat * A109358 (n + 1)

end

end A109367.P11192918584144386230

/-! ## A109367.P11492527224418380086

`A109358(n+1)^A000005(A110589(n+1))`
-/

namespace A109367.P11492527224418380086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A000005 (A110589 (n + 1)).toNat : ℤ)

end

end A109367.P11492527224418380086

/-! ## A109367.P8204271621489970129

`A109358(n+1)^A000005(A235482(n+1))`
-/

namespace A109367.P8204271621489970129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A000005 (A235482 (n + 1)).toNat : ℤ)

end

end A109367.P8204271621489970129

/-! ## A109367.P18263705704186636919

`A109358(n+1)^A000005(A048161(n+1))`
-/

namespace A109367.P18263705704186636919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A000005 (A048161 (n + 1)).toNat : ℤ)

end

end A109367.P18263705704186636919

/-! ## A109367.P3265117447005121712

`A109358(n+1)^A000005(A165637(n+1))`
-/

namespace A109367.P3265117447005121712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109358 (n + 1) : ℚ) ^ (A000005 (A165637 (n + 1)).toNat : ℤ)

end

end A109367.P3265117447005121712

/-! ## A109367.P11264880275864443803

`A000982(2*A109358(n+1))/2`
-/

namespace A109367.P11264880275864443803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000982 (2 * A109358 (n + 1)).toNat : ℚ) / 2

end

end A109367.P11264880275864443803

/-! ## A109367.P14500005111396712542

`2*p?[ceil(n²/2)-2]+3`
-/

namespace A109367.P14500005111396712542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A109367.P14500005111396712542

/-! ## A109367.P6088012638477832610

`2*(p?[∑[4*n]-1]+1)+1`
-/

namespace A109367.P6088012638477832610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) + 1

end

end A109367.P6088012638477832610

/-!
# A109369: Numbers n such that the string 33n is the decimal expansion of a prime number.

The programs for A109369, there is no canonical definition to state claims against.
-/

/-! ## A109369.P2311377202239240982

`p?[A327621(n+1)]%A327630(3*n+2)`
-/

namespace A109369.P2311377202239240982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A327630 (3 * n + 2))

end

end A109369.P2311377202239240982

/-! ## A109369.P5601682703881375644

`A094802(A320629(n+1)-A055953(n))`
-/

namespace A109369.P5601682703881375644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A320629 (n + 1) - A055953 n).toNat

end

end A109369.P5601682703881375644

/-! ## A109369.P14836089745821440523

`A231810(lt[A219038(n+3), A256890(2*(n+1))])`
-/

namespace A109369.P14836089745821440523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219038 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256890 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231810 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109369.P14836089745821440523

/-! ## A109369.P5503610291359307504

`A094802(A094820(3*n+5)-A094778(3*n+4))`
-/

namespace A109369.P5503610291359307504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A094820 (3 * n + 5) - A094778 (3 * n + 4)).toNat

end

end A109369.P5503610291359307504

/-! ## A109369.P14466830080495583264

`record[A144923(n+3)^(n²%3)]`
-/

namespace A109369.P14466830080495583264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144923 (n + 3) ^ (n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109369.P14466830080495583264

/-!
# A109370: Numbers n such that the string 22n is the decimal expansion of a prime number.

The programs for A109370, there is no canonical definition to state claims against.
-/

/-! ## A109370.P8335731688553901176

`∑[A000005(A067324(n)+n²+2)]`
-/

namespace A109370.P8335731688553901176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067324 n + (n ^ 2 + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109370.P8335731688553901176

/-!
# A109373: Semiprimes of the form semiprime + 1.

The programs for A109373, there is no canonical definition to state claims against.
-/

/-! ## A109373.P10332162428259411912

`A070552(n+1)+1`
-/

namespace A109373.P10332162428259411912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1) + 1

end

end A109373.P10332162428259411912

/-! ## A109373.P1444424398448680381

`∩[A001358(n+1)+1, A001358(n+1)]`
-/

namespace A109373.P1444424398448680381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P1444424398448680381

/-! ## A109373.P2967549619068459533

`∩[A001358(n+1), A278291(n+1)]`
-/

namespace A109373.P2967549619068459533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P2967549619068459533

/-! ## A109373.P11852132464379163218

`∩[A254923(n+1), A278291(n+1)]`
-/

namespace A109373.P11852132464379163218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P11852132464379163218

/-! ## A109373.P9777228329412389545

`∩[A045920(n+1), A108815(n+1)]+1`
-/

namespace A109373.P9777228329412389545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A109373.P9777228329412389545

/-! ## A109373.P10907396270863121533

`filter[A278291(n+1), A064911(#)]`
-/

namespace A109373.P10907396270863121533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A109373.P10907396270863121533

/-! ## A109373.P6449498465645026541

`filter[A278291(n+1), A280710(#)]`
-/

namespace A109373.P6449498465645026541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A109373.P6449498465645026541

/-! ## A109373.P17544087809095817738

`filter[A278291(n+2), A101040(#)]`
-/

namespace A109373.P17544087809095817738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A109373.P17544087809095817738

/-! ## A109373.P17164676816772402248

`filter[A278291(n+2), A353471(#)]`
-/

namespace A109373.P17164676816772402248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A109373.P17164676816772402248

/-! ## A109373.P7087167777587698836

`∩[A006881(n+1), A278291(n+1)]`
-/

namespace A109373.P7087167777587698836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P7087167777587698836

/-! ## A109373.P8475775007281584472

`∩[A068993(n+1), A278291(n+1)]`
-/

namespace A109373.P8475775007281584472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P8475775007281584472

/-! ## A109373.P6742149192312910693

`∩[A161918(n+1), A278291(n+1)]`
-/

namespace A109373.P6742149192312910693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P6742149192312910693

/-! ## A109373.P7912186857467878433

`∩[A006881(n+1), A045920(n+1)+1]`
-/

namespace A109373.P7912186857467878433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P7912186857467878433

/-! ## A109373.P11757141215762532126

`∩[A045920(n+1)+1, A068993(n+1)]`
-/

namespace A109373.P11757141215762532126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P11757141215762532126

/-! ## A109373.P2117140268804058614

`filter[A088707(n+1), A064911(#)]`
-/

namespace A109373.P2117140268804058614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A109373.P2117140268804058614

/-! ## A109373.P2319137984073865871

`filter[A088707(n+1), A280710(#)]`
-/

namespace A109373.P2319137984073865871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A109373.P2319137984073865871

/-! ## A109373.P5432440310678518459

`A001358(eq[1, A065516(n+1)]+2)`
-/

namespace A109373.P5432440310678518459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A109373.P5432440310678518459

/-! ## A109373.P7793816967031382875

`∩[A001358(n+1), A088707(n+1)]`
-/

namespace A109373.P7793816967031382875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P7793816967031382875

/-! ## A109373.P14174812239455860886

`∩[A006881(n+1), A088707(n+1)]`
-/

namespace A109373.P14174812239455860886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P14174812239455860886

/-! ## A109373.P13773132892682217444

`∩[A088707(n+1), A161918(n+1)]`
-/

namespace A109373.P13773132892682217444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109373.P13773132892682217444

/-!
# A109374: Irregular table read by rows: Row n is the terms of the continued fraction for prime(n+1)/prime(n).

The programs for A109374, there is no canonical definition to state claims against.
-/

/-! ## A109374.P1215980839615548370

`A141256(n)-A011558(A006054(n))`
-/

namespace A109374.P1215980839615548370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n - A011558 (A006054 n).toNat

end

end A109374.P1215980839615548370

/-! ## A109374.P7910573849369544085

`A066099(A247133(n+3)+A199296(n+4))`
-/

namespace A109374.P7910573849369544085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A247133 (n + 3) + A199296 (n + 4)).toNat

end

end A109374.P7910573849369544085

/-! ## A109374.P8185635622855103248

`A081165(gcd(A081146(n+1), A238617(n+1)))`
-/

namespace A109374.P8185635622855103248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081165 (Int.gcd (A081146 (n + 1)) (A238617 (n + 1)))

end

end A109374.P8185635622855103248

/-! ## A109374.P8757798673783820168

`A048793(A062401(n+1)^A049455(n+1))`
-/

namespace A109374.P8757798673783820168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.roundAway ((A062401 (n + 1) : ℚ) ^ (A049455 (n + 1) : ℤ))).toNat

end

end A109374.P8757798673783820168

/-! ## A109374.P4025791079516664135

`gcd(A066272(A316983(n)), A264059(n+1))`
-/

namespace A109374.P4025791079516664135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066272 (A316983 n).toNat) (A264059 (n + 1))

end

end A109374.P4025791079516664135

/-!
# A109375: Bisection of A093411.

The programs for A109375, there is no canonical definition to state claims against.
-/

/-! ## A109375.P14826590687826199797

`A093411(2*n)`
-/

namespace A109375.P14826590687826199797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * n)

end

end A109375.P14826590687826199797

/-! ## A109375.P2329657999166740861

`A093411(n+n)%(n+1)`
-/

namespace A109375.P2329657999166740861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093411 (n + n)) (n + 1 : ℤ)

end

end A109375.P2329657999166740861

/-! ## A109375.P6733621827761570365

`A093411(A008604(n))/11`
-/

namespace A109375.P6733621827761570365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093411 (A008604 n).toNat : ℚ) / 11

end

end A109375.P6733621827761570365

/-! ## A109375.P15507070194074484147

`A022998(A093411(n+n))`
-/

namespace A109375.P15507070194074484147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A093411 (n + n)).toNat

end

end A109375.P15507070194074484147

/-! ## A109375.P11076804836686857767

`gcd(n, A093411(A005843(n)))`
-/

namespace A109375.P11076804836686857767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A093411 (A005843 n).toNat)

end

end A109375.P11076804836686857767

/-! ## A109375.P729118768697461137

`A291179(A093411(n+n)+1)`
-/

namespace A109375.P729118768697461137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (A093411 (n + n) + 1).toNat

end

end A109375.P729118768697461137

/-! ## A109375.P14476228485391155164

`or(char[A007318(n)], A093411(n+n))`
-/

namespace A109375.P14476228485391155164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A093411 (n + n))

end

end A109375.P14476228485391155164

/-! ## A109375.P97677261925648407

`gcd(A000292(n), A093411(A022998(n)))`
-/

namespace A109375.P97677261925648407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 n) (A093411 (A022998 n).toNat)

end

end A109375.P97677261925648407

/-!
# A109377: Expansion of ( 2+x+2*x^2 ) / ( 1-2*x+x^2-x^3 ).

The programs for A109377, the canonical program `A109377.P6068945092510174121` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109377 has offset 0).

The definition of A109377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x+2x^2)/(1-2x+x^2-x^3))` (program `A109377.P6068945092510174121`, by `A109377.P6068945092510174121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109377.P6068945092510174121

`ogf((2+x+2x^2)/(1-2x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109377

/-- `ogf((2+x+2x^2)/(1-2x+x^2-x^3))` -/
def P6068945092510174121.Spec : Prop :=
  ∀ n, P6068945092510174121.a n = A109377 n

theorem P6068945092510174121.correct : P6068945092510174121.Spec := by
  intro n
  simp only [A109377]

end A109377

/-! ## A109377.P9206876582611163151

`record[Δ[a(n-2)-a(n-3)]]` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A109377.P9206876582611163151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n f2 =>
  f2 (n - 2) - f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109377.P9206876582611163151

namespace A109377

/-- `record[Δ[a(n-2)-a(n-3)]]` -/
def P9206876582611163151.Spec : Prop :=
  ∀ n, P9206876582611163151.a n = A109377 n

end A109377

/-! ## A109377.P11412549691147084331

`2*a(n-1)+a(n-3)-a(n-2)` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A109377.P11412549691147084331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 10] fun n a =>
  2 * a (n - 1) + (a (n - 3) - a (n - 2))

end

end A109377.P11412549691147084331

namespace A109377

/-- `2*a(n-1)+a(n-3)-a(n-2)` -/
def P11412549691147084331.Spec : Prop :=
  ∀ n, P11412549691147084331.a n = A109377 n

end A109377

/-! ## A109377.P6841135962581590786

`a(n-1)+a(n-1)+a(n-3)-a(n-2)` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A109377.P6841135962581590786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 10] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A109377.P6841135962581590786

namespace A109377

/-- `a(n-1)+a(n-1)+a(n-3)-a(n-2)` -/
def P6841135962581590786.Spec : Prop :=
  ∀ n, P6841135962581590786.a n = A109377 n

end A109377

/-! ## A109377.P8380669560416051927

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A109377.P8380669560416051927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 10] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A109377.P8380669560416051927

namespace A109377

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P8380669560416051927.Spec : Prop :=
  ∀ n, P8380669560416051927.a n = A109377 n

end A109377

/-! ## A109377.P11130564371827926919

`A259967(n+2)`
-/

namespace A109377.P11130564371827926919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259967 (n + 2)

end

end A109377.P11130564371827926919

namespace A109377

/-- `A259967(n+2)` -/
def P11130564371827926919.Spec : Prop :=
  ∀ n, P11130564371827926919.a n = A109377 n

end A109377

/-! ## A109377.P7937179203829242646

`A367644(n+2)-1`
-/

namespace A109377.P7937179203829242646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367644 (n + 2) - 1

end

end A109377.P7937179203829242646

namespace A109377

/-- `A367644(n+2)-1` -/
def P7937179203829242646.Spec : Prop :=
  ∀ n, P7937179203829242646.a n = A109377 n

end A109377

/-! ## A109377.P17194928311397400797

`A001608(2*(n+2))`
-/

namespace A109377.P17194928311397400797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (2 * (n + 2))

end

end A109377.P17194928311397400797

namespace A109377

/-- `A001608(2*(n+2))` -/
def P17194928311397400797.Spec : Prop :=
  ∀ n, P17194928311397400797.a n = A109377 n

end A109377

/-! ## A109377.P395474380491340277

`A007391(2*(n+2))+2`
-/

namespace A109377.P395474380491340277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007391 (2 * (n + 2)) + 2

end

end A109377.P395474380491340277

namespace A109377

/-- `A007391(2*(n+2))+2` -/
def P395474380491340277.Spec : Prop :=
  ∀ n, P395474380491340277.a n = A109377 n

end A109377

/-! ## A109377.P14965371379275502422

`A290612(2*n+5)-1`
-/

namespace A109377.P14965371379275502422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290612 (2 * n + 5) - 1

end

end A109377.P14965371379275502422

namespace A109377

/-- `A290612(2*n+5)-1` -/
def P14965371379275502422.Spec : Prop :=
  ∀ n, P14965371379275502422.a n = A109377 n

end A109377

/-! ## A109377.P6555119206043509206

`∑[A300738(2*n+1)]+2`
-/

namespace A109377.P6555119206043509206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300738 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A109377.P6555119206043509206

namespace A109377

/-- `∑[A300738(2*n+1)]+2` -/
def P6555119206043509206.Spec : Prop :=
  ∀ n, P6555119206043509206.a n = A109377 n

end A109377

/-! ## A109377.P13939905042126586941

`A164394(n+1)+A005314(n)`
-/

namespace A109377.P13939905042126586941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164394 (n + 1) + A005314 n

end

end A109377.P13939905042126586941

namespace A109377

/-- `A164394(n+1)+A005314(n)` -/
def P13939905042126586941.Spec : Prop :=
  ∀ n, P13939905042126586941.a n = A109377 n

end A109377

/-! ## A109377.P4617913138038095592

`A001641(n+2)-A033999(n)`
-/

namespace A109377.P4617913138038095592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 2) - A033999 n

end

end A109377.P4617913138038095592

namespace A109377

/-- `A001641(n+2)-A033999(n)` -/
def P4617913138038095592.Spec : Prop :=
  ∀ n, P4617913138038095592.a n = A109377 n

end A109377

/-! ## A109377.P12372720781093359672

`A033999(n+1)+A001641(n+2)`
-/

namespace A109377.P12372720781093359672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A001641 (n + 2)

end

end A109377.P12372720781093359672

namespace A109377

/-- `A033999(n+1)+A001641(n+2)` -/
def P12372720781093359672.Spec : Prop :=
  ∀ n, P12372720781093359672.a n = A109377 n

end A109377

/-! ## A109377.P2826014004083944728

`A001641(n+2)-A165326(n+1)`
-/

namespace A109377.P2826014004083944728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 2) - A165326 (n + 1)

end

end A109377.P2826014004083944728

namespace A109377

/-- `A001641(n+2)-A165326(n+1)` -/
def P2826014004083944728.Spec : Prop :=
  ∀ n, P2826014004083944728.a n = A109377 n

end A109377

/-! ## A109377.P6419384082217269847

`A049853(n+3)-A005251(n+1)`
-/

namespace A109377.P6419384082217269847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 3) - A005251 (n + 1)

end

end A109377.P6419384082217269847

namespace A109377

/-- `A049853(n+3)-A005251(n+1)` -/
def P6419384082217269847.Spec : Prop :=
  ∀ n, P6419384082217269847.a n = A109377 n

end A109377

/-! ## A109377.P3923452224084771675

`A259968(n+2)+A005251(n+3)`
-/

namespace A109377.P3923452224084771675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259968 (n + 2) + A005251 (n + 3)

end

end A109377.P3923452224084771675

namespace A109377

/-- `A259968(n+2)+A005251(n+3)` -/
def P3923452224084771675.Spec : Prop :=
  ∀ n, P3923452224084771675.a n = A109377 n

end A109377

/-! ## A109377.P6514118391507283190

`A001641(n+2)-A009001(2*n)`
-/

namespace A109377.P6514118391507283190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 2) - A009001 (2 * n)

end

end A109377.P6514118391507283190

namespace A109377

/-- `A001641(n+2)-A009001(2*n)` -/
def P6514118391507283190.Spec : Prop :=
  ∀ n, P6514118391507283190.a n = A109377 n

end A109377

/-! ## A109377.P5702408798370799266

`A001641(n+2)-A057077(2*n)`
-/

namespace A109377.P5702408798370799266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001641 (n + 2) - A057077 (2 * n)

end

end A109377.P5702408798370799266

namespace A109377

/-- `A001641(n+2)-A057077(2*n)` -/
def P5702408798370799266.Spec : Prop :=
  ∀ n, P5702408798370799266.a n = A109377 n

end A109377

/-! ## A109377.P18263802712077896899

`A049853(n+3)-A182097(2*n)`
-/

namespace A109377.P18263802712077896899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (n + 3) - A182097 (2 * n)

end

end A109377.P18263802712077896899

namespace A109377

/-- `A049853(n+3)-A182097(2*n)` -/
def P18263802712077896899.Spec : Prop :=
  ∀ n, P18263802712077896899.a n = A109377 n

end A109377

/-!
# A109378: Semiprimes at Levenshtein distance n from previous value when considered as a decimal string.

The programs for A109378, there is no canonical definition to state claims against.
-/

/-! ## A109378.P11952142579157562509

`lcm(A195871(n+2), A334861(A001867(2*n+3)))`
-/

namespace A109378.P11952142579157562509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A195871 (n + 2)) (A334861 (A001867 (2 * n + 3)).toNat)

end

end A109378.P11952142579157562509

/-!
# A109380: Levenshtein distance between successive factorials when considered as decimal strings.

The programs for A109380, there is no canonical definition to state claims against.
-/

/-! ## A109380.P6974483993251443608

`val(A000457(n), A174296(A097332(n)))`
-/

namespace A109380.P6974483993251443608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000457 n).toNat (A174296 (A097332 n).toNat).toNat

end

end A109380.P6974483993251443608

/-!
# A109381: Maximum digit of n^2 written in factorial base.

The programs for A109381, there is no canonical definition to state claims against.
-/

/-! ## A109381.P14857111027157402757

`val(A278236(n²), 2)`
-/

namespace A109381.P14857111027157402757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278236 (n ^ 2)).toNat 2

end

end A109381.P14857111027157402757

/-! ## A109381.P4096241097498829951

`A061395(A275735(n²))`
-/

namespace A109381.P4096241097498829951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A275735 (n ^ 2)).toNat

end

end A109381.P4096241097498829951

/-! ## A109381.P18009557740678437551

`log2(gcd(A140513(n), A278236(n²)))`
-/

namespace A109381.P18009557740678437551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A140513 n) (A278236 (n ^ 2)) : ℝ)

end

end A109381.P18009557740678437551

/-! ## A109381.P5531830702077668744

`A246359(n²)`
-/

namespace A109381.P5531830702077668744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (n ^ 2)

end

end A109381.P5531830702077668744

/-! ## A109381.P16139097154725921119

`dr(A246359(n*n))`
-/

namespace A109381.P16139097154725921119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A246359 (n * n))

end

end A109381.P16139097154725921119

/-! ## A109381.P3508925587713444619

`A246359(A000290(n))%7`
-/

namespace A109381.P3508925587713444619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246359 (A000290 n).toNat) 7

end

end A109381.P3508925587713444619

/-! ## A109381.P16770625909682369448

`A057427(n)*A246359(n*n)`
-/

namespace A109381.P16770625909682369448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A246359 (n * n)

end

end A109381.P16770625909682369448

/-! ## A109381.P3816884406548447764

`A246359(n*n)+A008683(4*(n+1))`
-/

namespace A109381.P3816884406548447764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (n * n) + A008683 (4 * (n + 1))

end

end A109381.P3816884406548447764

/-! ## A109381.P16490617561537494715

`A014963(4*n+2)*A246359(n*n)`
-/

namespace A109381.P16490617561537494715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A246359 (n * n)

end

end A109381.P16490617561537494715

/-! ## A109381.P5633375086423384905

`A000108(C(2, n+2))*A246359(n*n)`
-/

namespace A109381.P5633375086423384905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A246359 (n * n)

end

end A109381.P5633375086423384905

/-! ## A109381.P9425289200535403958

`A052126(A006530(n+1))*A246359(n*n)`
-/

namespace A109381.P9425289200535403958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A006530 (n + 1)).toNat * A246359 (n * n)

end

end A109381.P9425289200535403958

/-! ## A109381.P12180869169175293906

`A133707(A133707(n+1))*A246359(n*n)`
-/

namespace A109381.P12180869169175293906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (A133707 (n + 1)).toNat * A246359 (n * n)

end

end A109381.P12180869169175293906

/-!
# A109383: 5-almost primes of the form semiprime + 1.

The programs for A109383, the canonical program `A109383.P1230132344379255329` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109383 has offset 1).

The definition of A109383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109383.P1230132344379255329

`∩[A001358(n+1)+1, A014614(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A109383

/-- `∩[A001358(n+1)+1, A014614(n+1)]` -/
def P1230132344379255329.Spec : Prop :=
  ∀ n, (P1230132344379255329.a n : ℤ) = A109383 (n + 1)

theorem P1230132344379255329.correct : P1230132344379255329.Spec := by
  intro n
  simp only [A109383, Nat.add_sub_cancel]

end A109383

/-! ## A109383.P10192045571262557473

`∩[A014614(n+1), A088707(n+1)]`
-/

namespace A109383.P10192045571262557473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109383.P10192045571262557473

namespace A109383

/-- `∩[A014614(n+1), A088707(n+1)]` -/
def P10192045571262557473.Spec : Prop :=
  ∀ n, (P10192045571262557473.a n : ℤ) = A109383 (n + 1)

end A109383

/-! ## A109383.P8653299892777564390

`∩[A088707(n+1), A114966(n+1)-A114944(n+1)]`
-/

namespace A109383.P8653299892777564390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114966 (n + 1) - A114944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109383.P8653299892777564390

namespace A109383

/-- `∩[A088707(n+1), A114966(n+1)-A114944(n+1)]` -/
def P8653299892777564390.Spec : Prop :=
  ∀ n, (P8653299892777564390.a n : ℤ) = A109383 (n + 1)

end A109383

/-! ## A109383.P11065176569164310255

`∩[A065475(A001358(n+1)), A014614(n+1)]`
-/

namespace A109383.P11065176569164310255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A001358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109383.P11065176569164310255

namespace A109383

/-- `∩[A065475(A001358(n+1)), A014614(n+1)]` -/
def P11065176569164310255.Spec : Prop :=
  ∀ n, (P11065176569164310255.a n : ℤ) = A109383 (n + 1)

end A109383

/-! ## A109383.P17348181408686010077

`∩[A065475(A006881(n+1)), A014614(n+1)]`
-/

namespace A109383.P17348181408686010077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A006881 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109383.P17348181408686010077

namespace A109383

/-- `∩[A065475(A006881(n+1)), A014614(n+1)]` -/
def P17348181408686010077.Spec : Prop :=
  ∀ n, (P17348181408686010077.a n : ℤ) = A109383 (n + 1)

end A109383

/-!
# A109384: 

The programs for A109384, there is no canonical definition to state claims against.
-/

/-! ## A109384.P3216345050348478341

`2*16^2^n`
-/

namespace A109384.P3216345050348478341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 16 ^ 2 ^ n

end

end A109384.P3216345050348478341

/-! ## A109384.P991493968197489261

`a(n-1)²/2` with `a(0)=32`
-/

namespace A109384.P991493968197489261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [32] fun n a =>
  a (n - 1) ^ 2 / 2

end

end A109384.P991493968197489261

/-! ## A109384.P13981095625578859714

`∏[a(n-1)²]` with `a(0)=32, a(1)=16`
-/

namespace A109384.P13981095625578859714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32, 16] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A109384.P13981095625578859714

/-!
# A109385: Maximum number of prime implicants of a symmetric function of n Boolean variables.

The programs for A109385, there is no canonical definition to state claims against.
-/

/-! ## A109385.P12747625266678222489

`A108141(A382574(n+1))+A055941(A000110(n))`
-/

namespace A109385.P12747625266678222489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A382574 (n + 1)).toNat + A055941 (A000110 n).toNat

end

end A109385.P12747625266678222489

/-! ## A109385.P10568292593176213545

`A055941(A000110(n))+A032539(A050476(n)-n)`
-/

namespace A109385.P10568292593176213545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A000110 n).toNat + A032539 (A050476 n - (n : ℤ)).toNat

end

end A109385.P10568292593176213545

/-!
# A109386: G.f. is the logarithm of the g.f. of A107742: Sum_{n>=1} (a(n)/n)*x^n = log( Sum_{n>=0} A107742(n)*x^n ).

The programs for A109386, the canonical program `A109386.P5253081201004666906` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109386 has offset 1).

The definition of A109386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109386.P5253081201004666906

`∑{d}[n+1, A245579(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109386

/-- `∑{d}[n+1, A245579(#)]` -/
def P5253081201004666906.Spec : Prop :=
  ∀ n, P5253081201004666906.a n = A109386 (n + 1)

theorem P5253081201004666906.correct : P5253081201004666906.Spec := by
  intro n
  simp only [A109386, Nat.add_sub_cancel]

end A109386

/-! ## A109386.P10039130262025506916

`∑{d}[n+1, #*A001227(#)]`
-/

namespace A109386.P10039130262025506916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001227 d

end

end A109386.P10039130262025506916

namespace A109386

/-- `∑{d}[n+1, #*A001227(#)]` -/
def P10039130262025506916.Spec : Prop :=
  ∀ n, P10039130262025506916.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P9042273967381889945

`∑{d}[n+1, #*A000593((n+1)/#)]`
-/

namespace A109386.P9042273967381889945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P9042273967381889945

namespace A109386

/-- `∑{d}[n+1, #*A000593((n+1)/#)]` -/
def P9042273967381889945.Spec : Prop :=
  ∀ n, P9042273967381889945.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P11692611835847357715

`∑{d}[n+1, #*A000005(A000265(#))]`
-/

namespace A109386.P11692611835847357715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 (A000265 d).toNat

end

end A109386.P11692611835847357715

namespace A109386

/-- `∑{d}[n+1, #*A000005(A000265(#))]` -/
def P11692611835847357715.Spec : Prop :=
  ∀ n, P11692611835847357715.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P18185067094267521593

`∑{d}[n+1, A000265(#)*A002131((n+1)/#)]`
-/

namespace A109386.P18185067094267521593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A002131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P18185067094267521593

namespace A109386

/-- `∑{d}[n+1, A000265(#)*A002131((n+1)/#)]` -/
def P18185067094267521593.Spec : Prop :=
  ∀ n, P18185067094267521593.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P8244155687154207341

`∑{d}[n+1, A018804(#)*A048272((n+1)/#)]`
-/

namespace A109386.P8244155687154207341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P8244155687154207341

namespace A109386

/-- `∑{d}[n+1, A018804(#)*A048272((n+1)/#)]` -/
def P8244155687154207341.Spec : Prop :=
  ∀ n, P8244155687154207341.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P17553457951776324421

`∑{d}[n+1, A034718(#)*A117212((n+1)/#)]`
-/

namespace A109386.P17553457951776324421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P17553457951776324421

namespace A109386

/-- `∑{d}[n+1, A034718(#)*A117212((n+1)/#)]` -/
def P17553457951776324421.Spec : Prop :=
  ∀ n, P17553457951776324421.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P5513802053316818437

`∑{d}[n+1, A000203(#)*A193356((n+1)/#)]`
-/

namespace A109386.P5513802053316818437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P5513802053316818437

namespace A109386

/-- `∑{d}[n+1, A000203(#)*A193356((n+1)/#)]` -/
def P5513802053316818437.Spec : Prop :=
  ∀ n, P5513802053316818437.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P2233003390951517597

`∑{d}[n+1, A091512(#)*A115607((n+1)/#)]`
-/

namespace A109386.P2233003390951517597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A115607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P2233003390951517597

namespace A109386

/-- `∑{d}[n+1, A091512(#)*A115607((n+1)/#)]` -/
def P2233003390951517597.Spec : Prop :=
  ∀ n, P2233003390951517597.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P14224007754040207954

`∑{d}[n+1, A000005(#)*A255655((n+1)/#)]`
-/

namespace A109386.P14224007754040207954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A255655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P14224007754040207954

namespace A109386

/-- `∑{d}[n+1, A000005(#)*A255655((n+1)/#)]` -/
def P14224007754040207954.Spec : Prop :=
  ∀ n, P14224007754040207954.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P11106862543679876487

`∑{d}[n+1, A000010(#)*A288417((n+1)/#)]`
-/

namespace A109386.P11106862543679876487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P11106862543679876487

namespace A109386

/-- `∑{d}[n+1, A000010(#)*A288417((n+1)/#)]` -/
def P11106862543679876487.Spec : Prop :=
  ∀ n, P11106862543679876487.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P15769054131220764957

`∑{d}[n+1, A026741(#)*A264740((n+1)/#)]`
-/

namespace A109386.P15769054131220764957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A264740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P15769054131220764957

namespace A109386

/-- `∑{d}[n+1, A026741(#)*A264740((n+1)/#)]` -/
def P15769054131220764957.Spec : Prop :=
  ∀ n, P15769054131220764957.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P18080184944566217677

`∑{d}[n+1, A029935(#)*A288571((n+1)/#)]`
-/

namespace A109386.P18080184944566217677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A288571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P18080184944566217677

namespace A109386

/-- `∑{d}[n+1, A029935(#)*A288571((n+1)/#)]` -/
def P18080184944566217677.Spec : Prop :=
  ∀ n, P18080184944566217677.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P3256446190542229176

`∑{d}[n+1, A007429(#)*A319997((n+1)/#)]`
-/

namespace A109386.P3256446190542229176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P3256446190542229176

namespace A109386

/-- `∑{d}[n+1, A007429(#)*A319997((n+1)/#)]` -/
def P3256446190542229176.Spec : Prop :=
  ∀ n, P3256446190542229176.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P5218998068668860743

`∑{d}[n+1, A001615(#)*A328373((n+1)/#)]`
-/

namespace A109386.P5218998068668860743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A328373 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P5218998068668860743

namespace A109386

/-- `∑{d}[n+1, A001615(#)*A328373((n+1)/#)]` -/
def P5218998068668860743.Spec : Prop :=
  ∀ n, P5218998068668860743.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P8183655824583393804

`∑{d}[n+1, A006519(#)*A336475((n+1)/#)]`
-/

namespace A109386.P8183655824583393804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A336475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P8183655824583393804

namespace A109386

/-- `∑{d}[n+1, A006519(#)*A336475((n+1)/#)]` -/
def P8183655824583393804.Spec : Prop :=
  ∀ n, P8183655824583393804.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P10826995363753966703

`∑{d}[n+1, A067856(#)*A328487((n+1)/#)]`
-/

namespace A109386.P10826995363753966703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A328487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P10826995363753966703

namespace A109386

/-- `∑{d}[n+1, A067856(#)*A328487((n+1)/#)]` -/
def P10826995363753966703.Spec : Prop :=
  ∀ n, P10826995363753966703.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P9340133652448447670

`∑{d}[n+1, A121443(#)*A327625((n+1)/#)]`
-/

namespace A109386.P9340133652448447670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121443 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P9340133652448447670

namespace A109386

/-- `∑{d}[n+1, A121443(#)*A327625((n+1)/#)]` -/
def P9340133652448447670.Spec : Prop :=
  ∀ n, P9340133652448447670.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P8239634563579153384

`∑{d}[n+1, A206369(#)*A309324((n+1)/#)]`
-/

namespace A109386.P8239634563579153384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A309324 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P8239634563579153384

namespace A109386

/-- `∑{d}[n+1, A206369(#)*A309324((n+1)/#)]` -/
def P8239634563579153384.Spec : Prop :=
  ∀ n, P8239634563579153384.a n = A109386 (n + 1)

end A109386

/-! ## A109386.P5727842360551337725

`∑{d}[n+1, A317529(#)*A322577((n+1)/#)]`
-/

namespace A109386.P5727842360551337725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317529 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109386.P5727842360551337725

namespace A109386

/-- `∑{d}[n+1, A317529(#)*A322577((n+1)/#)]` -/
def P5727842360551337725.Spec : Prop :=
  ∀ n, P5727842360551337725.a n = A109386 (n + 1)

end A109386

/-!
# A109387: Numbers k such that 3^k - k^3 is prime.

The programs for A109387, there is no canonical definition to state claims against.
-/

/-! ## A109387.P16337113706795376524

`A001844(A054254(n))-A180632(n)`
-/

namespace A109387.P16337113706795376524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A054254 n).toNat - A180632 n

end

end A109387.P16337113706795376524

/-! ## A109387.P5500590620663515880

`A036453(A146874(Δ[n²]))*A327474(2*n)`
-/

namespace A109387.P5500590620663515880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A146874 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A327474 (2 * n)

end

end A109387.P5500590620663515880

/-!
# A109388: Maximum number of pairwise incomparable subcubes of the discrete n-cube. Largest antichain in partial ordering {0,1,*}^n where 0 and 1 are less than *. Maximum number of implicants in an irredundant disjunctive normal form for n Boolean variables.

The programs for A109388, the canonical program `A109388.P353464405026510289` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109388 has offset 0).

The definition of A109388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109388.P353464405026510289

`C(n, floor(n/3))*2^(n-floor(n/3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A109388

/-- `C(n, floor(n/3))*2^(n-floor(n/3))` -/
def P353464405026510289.Spec : Prop :=
  ∀ n, P353464405026510289.a n = (A109388 n : ℚ)

end A109388

/-! ## A109388.P13444210862877922639

`A038207(∑[A130481(n)])`
-/

namespace A109388.P13444210862877922639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109388.P13444210862877922639

namespace A109388

/-- `A038207(∑[A130481(n)])` -/
def P13444210862877922639.Spec : Prop :=
  ∀ n, P13444210862877922639.a n = A109388 n

end A109388

/-! ## A109388.P7555669339414308847

`A013609(A111097(n+1))`
-/

namespace A109388.P7555669339414308847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A111097 (n + 1)).toNat

end

end A109388.P7555669339414308847

namespace A109388

/-- `A013609(A111097(n+1))` -/
def P7555669339414308847.Spec : Prop :=
  ∀ n, P7555669339414308847.a n = A109388 n

end A109388

/-! ## A109388.P3288319190495506888

`A038207(A171452(n+1))`
-/

namespace A109388.P3288319190495506888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A171452 (n + 1)).toNat

end

end A109388.P3288319190495506888

namespace A109388

/-- `A038207(A171452(n+1))` -/
def P3288319190495506888.Spec : Prop :=
  ∀ n, P3288319190495506888.a n = A109388 n

end A109388

/-! ## A109388.P4245987896691323980

`A013609(A389142(n+1))`
-/

namespace A109388.P4245987896691323980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A389142 (n + 1)).toNat

end

end A109388.P4245987896691323980

namespace A109388

/-- `A013609(A389142(n+1))` -/
def P4245987896691323980.Spec : Prop :=
  ∀ n, P4245987896691323980.a n = A109388 n

end A109388

/-! ## A109388.P11119602124392361466

`A193789(A027916(n+2))`
-/

namespace A109388.P11119602124392361466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A027916 (n + 2)).toNat

end

end A109388.P11119602124392361466

namespace A109388

/-- `A193789(A027916(n+2))` -/
def P11119602124392361466.Spec : Prop :=
  ∀ n, P11119602124392361466.a n = A109388 n

end A109388

/-! ## A109388.P801720918571662902

`A193789(A111097(n+2))`
-/

namespace A109388.P801720918571662902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193789 (A111097 (n + 2)).toNat

end

end A109388.P801720918571662902

namespace A109388

/-- `A193789(A111097(n+2))` -/
def P801720918571662902.Spec : Prop :=
  ∀ n, P801720918571662902.a n = A109388 n

end A109388

/-! ## A109388.P11312996573997179825

`A188440(A240438(n+2))`
-/

namespace A109388.P11312996573997179825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A240438 (n + 2)).toNat

end

end A109388.P11312996573997179825

namespace A109388

/-- `A188440(A240438(n+2))` -/
def P11312996573997179825.Spec : Prop :=
  ∀ n, P11312996573997179825.a n = A109388 n

end A109388

/-!
# A109389: Expansion of q^(-1/12)eta(q)eta(q^6)/(eta(q^2)eta(q^3)) in powers of q.

The programs for A109389, there is no canonical definition to state claims against.
-/

/-! ## A109389.P5587396987637029015

`(-1)^n*A098884(n)`
-/

namespace A109389.P5587396987637029015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098884 n

end

end A109389.P5587396987637029015

/-! ## A109389.P13629635266796160842

`A339404(n)-A339405(n)`
-/

namespace A109389.P13629635266796160842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339404 n - A339405 n

end

end A109389.P13629635266796160842

/-! ## A109389.P15058150957495810916

`A098884(n)/A033999(n)`
-/

namespace A109389.P15058150957495810916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098884 n : ℚ) / (A033999 n : ℚ)

end

end A109389.P15058150957495810916

/-! ## A109389.P16832221806500534453

`2*A339404(n)-A000726(n)`
-/

namespace A109389.P16832221806500534453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339404 n - A000726 n

end

end A109389.P16832221806500534453

/-! ## A109389.P3959248512283175733

`A000726(n)-2*A339405(n)`
-/

namespace A109389.P3959248512283175733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n - 2 * A339405 n

end

end A109389.P3959248512283175733

/-! ## A109389.P10394353112598527280

`A003105(n)*A098884(n)/A227398(n)`
-/

namespace A109389.P10394353112598527280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003105 n * A098884 n : ℚ) / (A227398 n : ℚ)

end

end A109389.P10394353112598527280

/-! ## A109389.P12721179681445947597

`A035385(A005843(n))-2*A339405(n)`
-/

namespace A109389.P12721179681445947597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035385 (A005843 n).toNat - 2 * A339405 n

end

end A109389.P12721179681445947597

/-! ## A109389.P10779517571887253380

`A112208(6*n+1)`
-/

namespace A109389.P10779517571887253380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 (6 * n + 1)

end

end A109389.P10779517571887253380

/-! ## A109389.P6058856352265511731

`-A112207(5*n+n+1)`
-/

namespace A109389.P6058856352265511731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A112207 (5 * n + (n + 1))

end

end A109389.P6058856352265511731

/-! ## A109389.P18167292871722863770

`2*A339404(n)-A116633(A001840(n))`
-/

namespace A109389.P18167292871722863770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339404 n - A116633 (A001840 n).toNat

end

end A109389.P18167292871722863770

/-! ## A109389.P16488366523602697106

`A116633(A001840(n))-2*A339405(n)`
-/

namespace A109389.P16488366523602697106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116633 (A001840 n).toNat - 2 * A339405 n

end

end A109389.P16488366523602697106

/-!
# A109390: Entries in 3-dimensional solid related to Prouhet-Tarry problem.

The programs for A109390, there is no canonical definition to state claims against.
-/

/-! ## A109390.P6634771892031897160

`A130046(∏{p}[n+1, gcd((n+1)*(n+2), #²)]%A297840(n+1))`
-/

namespace A109390.P6634771892031897160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130046 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) : ℕ) : ℤ) (A297840 (n + 1))).toNat

end

end A109390.P6634771892031897160

/-! ## A109390.P9930947263551719557

`A130046(lt[A108906(n+1), A256525(n)])`
-/

namespace A109390.P9930947263551719557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130046 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109390.P9930947263551719557

/-! ## A109390.P2594169437358933662

`A130046((n+1)%A325851(n))`
-/

namespace A109390.P2594169437358933662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130046 (Int.tmod (n + 1 : ℤ) (A325851 n)).toNat

end

end A109390.P2594169437358933662

/-! ## A109390.P4684892481984617065

`A006530(A130046(n+1))%A297840(n+2)`
-/

namespace A109390.P4684892481984617065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A130046 (n + 1)).toNat) (A297840 (n + 2))

end

end A109390.P4684892481984617065

/-!
# A109391: a(n) = (n^(n+1))*(n + 1)/2 = A000217(n)*A000312(n).

The programs for A109391, the canonical program `A109391.P10591267924077398599` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109391 has offset 0).

The definition of A109391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000312(n)` (program `A109391.P10591267924077398599`, by `A109391.P10591267924077398599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109391.P12786446524802075076

`n^(n+1)*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109391.P12786446524802075076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ (n + 1) * (n + 1) : ℚ) / 2

end

end A109391.P12786446524802075076

namespace A109391

/-- `n^(n+1)*(n+1)/2` -/
def P12786446524802075076.Spec : Prop :=
  ∀ n, P12786446524802075076.a n = (A109391 n : ℚ)

end A109391

/-! ## A109391.P10591267924077398599

`A000217(n)*A000312(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109391

/-- `A000217(n)*A000312(n)` -/
def P10591267924077398599.Spec : Prop :=
  ∀ n, P10591267924077398599.a n = A109391 n

theorem P10591267924077398599.correct : P10591267924077398599.Spec := by
  intro n
  simp only [A109391]

end A109391

/-! ## A109391.P14622604236366986430

`round(∑[n]/acot(n^n))`
-/

namespace A109391.P14622604236366986430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (n ^ n : ℝ))

end

end A109391.P14622604236366986430

namespace A109391

/-- `round(∑[n]/acot(n^n))` -/
def P14622604236366986430.Spec : Prop :=
  ∀ n, P14622604236366986430.a n = A109391 n

end A109391

/-! ## A109391.P3630534316246519527

`record[n*A246609(n+1)]`
-/

namespace A109391.P3630534316246519527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A246609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109391.P3630534316246519527

namespace A109391

/-- `record[n*A246609(n+1)]` -/
def P3630534316246519527.Spec : Prop :=
  ∀ n, P3630534316246519527.a n = A109391 n

end A109391

/-! ## A109391.P15349174589119792346

`n/2*A055897(n+1)`
-/

namespace A109391.P15349174589119792346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A055897 (n + 1) : ℚ)

end

end A109391.P15349174589119792346

namespace A109391

/-- `n/2*A055897(n+1)` -/
def P15349174589119792346.Spec : Prop :=
  ∀ n, P15349174589119792346.a n = (A109391 n : ℚ)

end A109391

/-! ## A109391.P10470568712313562138

`A045943(n)/3*A000312(n)`
-/

namespace A109391.P10470568712313562138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045943 n : ℚ) / 3 * (A000312 n : ℚ)

end

end A109391.P10470568712313562138

namespace A109391

/-- `A045943(n)/3*A000312(n)` -/
def P10470568712313562138.Spec : Prop :=
  ∀ n, P10470568712313562138.a n = (A109391 n : ℚ)

end A109391

/-! ## A109391.P13609516206120697267

`(A046092(n)-A045943(n))*A000312(n)`
-/

namespace A109391.P13609516206120697267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046092 n - A045943 n) * A000312 n

end

end A109391.P13609516206120697267

namespace A109391

/-- `(A046092(n)-A045943(n))*A000312(n)` -/
def P13609516206120697267.Spec : Prop :=
  ∀ n, P13609516206120697267.a n = A109391 n

end A109391

/-! ## A109391.P11782726921353256783

`A000217(n)/A000217(n+1)*A081133(n)`
-/

namespace A109391.P11782726921353256783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / (A000217 (n + 1) : ℚ) * (A081133 n : ℚ)

end

end A109391.P11782726921353256783

namespace A109391

/-- `A000217(n)/A000217(n+1)*A081133(n)` -/
def P11782726921353256783.Spec : Prop :=
  ∀ n, P11782726921353256783.a n = (A109391 n : ℚ)

end A109391

/-!
# A109392: Partial sums of A109391.

The programs for A109392, there is no canonical definition to state claims against.
-/

/-! ## A109392.P15082966821655849216

`∑[n^n*∑[n]]`
-/

namespace A109392.P15082966821655849216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109392.P15082966821655849216

/-! ## A109392.P1719061406142377938

`∑[lcm(n+1, n^(n+1))]/2`
-/

namespace A109392.P1719061406142377938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A109392.P1719061406142377938

/-! ## A109392.P11625068153849712615

`a(n-1)+(n+1)/2*n^(n+1)` with `a(0)=0`
-/

namespace A109392.P11625068153849712615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / 2 * (n ^ (n + 1) : ℚ)

end

end A109392.P11625068153849712615

/-! ## A109392.P3673005865297500173

`∑[∑[2*n]*A000312(n)]/2`
-/

namespace A109392.P3673005865297500173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000312 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A109392.P3673005865297500173

/-! ## A109392.P18191323889674246381

`∑[A109391(n)]*A057427(n)`
-/

namespace A109392.P18191323889674246381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A109392.P18191323889674246381

/-! ## A109392.P17797590444394102548

`A007318(∑[n])*∑[A109391(n)]`
-/

namespace A109392.P17797590444394102548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A109392.P17797590444394102548

/-! ## A109392.P3585414479109651628

`abs(∑[A081133(n)-A055897(n+1)])`
-/

namespace A109392.P3585414479109651628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081133 n - A055897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A109392.P3585414479109651628

/-! ## A109392.P8317984375800540275

`A056594(2*n)²*∑[A109391(n)]`
-/

namespace A109392.P8317984375800540275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109392.P8317984375800540275

/-! ## A109392.P4708537809600146657

`record[A006530(n+2)]%2*∑[A109391(n)]`
-/

namespace A109392.P4708537809600146657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A109392.P4708537809600146657

/-! ## A109392.P4449298055826795090

`A000045(n²%(n+1))*∑[A109391(n)]`
-/

namespace A109392.P4449298055826795090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 % (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109392.P4449298055826795090

/-!
# A109394: A000934(A000934(n)).

The programs for A109394, the canonical program `A109394.P15748050402966565973` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109394 has offset 0).

The definition of A109394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109394.P4082508177157314411

`floor((7+sqrt(1+48*floor((7+sqrt(1+48*n))/2)))/2)`
-/

namespace A109394.P4082508177157314411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 + Real.sqrt (1 + 48 * ⌊(7 + Real.sqrt (1 + 48 * n : ℝ)) / 2⌋ : ℝ)) / 2⌋

end

end A109394.P4082508177157314411

namespace A109394

/-- `floor((7+sqrt(1+48*floor((7+sqrt(1+48*n))/2)))/2)` -/
def P4082508177157314411.Spec : Prop :=
  ∀ n, P4082508177157314411.a n = A109394 n

end A109394

/-! ## A109394.P15748050402966565973

`A000934(A000934(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A109394

/-- `A000934(A000934(n))` -/
def P15748050402966565973.Spec : Prop :=
  ∀ n, P15748050402966565973.a n = A109394 n

theorem P15748050402966565973.correct : P15748050402966565973.Spec := by
  intro n
  simp only [A109394]

end A109394

/-! ## A109394.P7617849832077045984

`A213443(round(sqrt(12*n+1))+3)`
-/

namespace A109394.P7617849832077045984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213443 (SequenceMachineLib.roundAway (Real.sqrt (12 * n + 1 : ℝ)) + 3).toNat

end

end A109394.P7617849832077045984

namespace A109394

/-- `A213443(round(sqrt(12*n+1))+3)` -/
def P7617849832077045984.Spec : Prop :=
  ∀ n, P7617849832077045984.a n = A109394 n

end A109394

/-! ## A109394.P363561906888507108

`A000703(2*(round(sqrt(12*n+1))+3))`
-/

namespace A109394.P363561906888507108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 (2 * (SequenceMachineLib.roundAway (Real.sqrt (12 * n + 1 : ℝ)) + 3)).toNat

end

end A109394.P363561906888507108

namespace A109394

/-- `A000703(2*(round(sqrt(12*n+1))+3))` -/
def P363561906888507108.Spec : Prop :=
  ∀ n, P363561906888507108.a n = A109394 n

end A109394

/-! ## A109394.P4854233319228165180

`A213443(A000703(2*n))%29`
-/

namespace A109394.P4854233319228165180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213443 (A000703 (2 * n)).toNat) 29

end

end A109394.P4854233319228165180

namespace A109394

/-- `A213443(A000703(2*n))%29` -/
def P4854233319228165180.Spec : Prop :=
  ∀ n, P4854233319228165180.a n = A109394 n

end A109394

/-! ## A109394.P9793691537093543186

`A213443(A350361(Δ[n²]+4*n))%29`
-/

namespace A109394.P9793691537093543186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213443 (A350361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (4 * n : ℤ)).toNat).toNat) 29

end

end A109394.P9793691537093543186

namespace A109394

/-- `A213443(A350361(Δ[n²]+4*n))%29` -/
def P9793691537093543186.Spec : Prop :=
  ∀ n, P9793691537093543186.a n = A109394 n

end A109394

/-! ## A109394.P14507014333607428777

`A213443(A213443(n))-A000007(n)`
-/

namespace A109394.P14507014333607428777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213443 (A213443 n).toNat - A000007 n

end

end A109394.P14507014333607428777

namespace A109394

/-- `A213443(A213443(n))-A000007(n)` -/
def P14507014333607428777.Spec : Prop :=
  ∀ n, P14507014333607428777.a n = A109394 n

end A109394

/-!
# A109395: Denominator of phi(n)/n = Product_{p|n} (1 - 1/p); phi(n)=A000010(n), the Euler totient function.

The programs for A109395, the canonical program `A109395.P12004804553665674898` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109395 has offset 1).

The definition of A109395 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009195, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109395.P12004804553665674898

`(n+1)/A009195(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A109395

/-- `(n+1)/A009195(n+1)` -/
def P12004804553665674898.Spec : Prop :=
  ∀ n, P12004804553665674898.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P14835799940071748221

`(n+1)/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])`
-/

namespace A109395.P14835799940071748221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)) : ℚ)

end

end A109395.P14835799940071748221

namespace A109395

/-- `(n+1)/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])` -/
def P14835799940071748221.Spec : Prop :=
  ∀ n, P14835799940071748221.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P7419912437392304403

`A294650(∏{p}[n+1, #])`
-/

namespace A109395.P7419912437392304403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A109395.P7419912437392304403

namespace A109395

/-- `A294650(∏{p}[n+1, #])` -/
def P7419912437392304403.Spec : Prop :=
  ∀ n, P7419912437392304403.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P8732976226357112748

`A295126(∏{p}[n+1, #])`
-/

namespace A109395.P8732976226357112748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A109395.P8732976226357112748

namespace A109395

/-- `A295126(∏{p}[n+1, #])` -/
def P8732976226357112748.Spec : Prop :=
  ∀ n, P8732976226357112748.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P16553961615253168072

`A319677(∏{p}[n+1, #])`
-/

namespace A109395.P16553961615253168072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A109395.P16553961615253168072

namespace A109395

/-- `A319677(∏{p}[n+1, #])` -/
def P16553961615253168072.Spec : Prop :=
  ∀ n, P16553961615253168072.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P3549841257025425684

`1-A331176(n+1)+n`
-/

namespace A109395.P3549841257025425684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A331176 (n + 1) + (n : ℤ)

end

end A109395.P3549841257025425684

namespace A109395

/-- `1-A331176(n+1)+n` -/
def P3549841257025425684.Spec : Prop :=
  ∀ n, P3549841257025425684.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P18143211096173980515

`A050399(n+1)/(n+1)`
-/

namespace A109395.P18143211096173980515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050399 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A109395.P18143211096173980515

namespace A109395

/-- `A050399(n+1)/(n+1)` -/
def P18143211096173980515.Spec : Prop :=
  ∀ n, P18143211096173980515.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P8748945176142472133

`(n+1)/gcd(n+1, A000010(n+1))`
-/

namespace A109395.P8748945176142472133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A109395.P8748945176142472133

namespace A109395

/-- `(n+1)/gcd(n+1, A000010(n+1))` -/
def P8748945176142472133.Spec : Prop :=
  ∀ n, P8748945176142472133.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P1119428617876427712

`A294650(A007947(n+1))`
-/

namespace A109395.P1119428617876427712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294650 (A007947 (n + 1)).toNat

end

end A109395.P1119428617876427712

namespace A109395

/-- `A294650(A007947(n+1))` -/
def P1119428617876427712.Spec : Prop :=
  ∀ n, P1119428617876427712.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P3977961904090059888

`A225680(A322590(n+1))`
-/

namespace A109395.P3977961904090059888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225680 (A322590 (n + 1)).toNat

end

end A109395.P3977961904090059888

namespace A109395

/-- `A225680(A322590(n+1))` -/
def P3977961904090059888.Spec : Prop :=
  ∀ n, P3977961904090059888.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P14078525435890560770

`A076511(n+1)+A076512(n+1)`
-/

namespace A109395.P14078525435890560770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (n + 1) + A076512 (n + 1)

end

end A109395.P14078525435890560770

namespace A109395

/-- `A076511(n+1)+A076512(n+1)` -/
def P14078525435890560770.Spec : Prop :=
  ∀ n, P14078525435890560770.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P9641969318835321970

`A107473(n+1)-A076512(n+1)`
-/

namespace A109395.P9641969318835321970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107473 (n + 1) - A076512 (n + 1)

end

end A109395.P9641969318835321970

namespace A109395

/-- `A107473(n+1)-A076512(n+1)` -/
def P9641969318835321970.Spec : Prop :=
  ∀ n, P9641969318835321970.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P17106104295631767044

`A009262(n+1)/A000010(n+1)`
-/

namespace A109395.P17106104295631767044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009262 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A109395.P17106104295631767044

namespace A109395

/-- `A009262(n+1)/A000010(n+1)` -/
def P17106104295631767044.Spec : Prop :=
  ∀ n, P17106104295631767044.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P16253726819577931968

`A295126((n+1)/A003557(n+1))`
-/

namespace A109395.P16253726819577931968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A109395.P16253726819577931968

namespace A109395

/-- `A295126((n+1)/A003557(n+1))` -/
def P16253726819577931968.Spec : Prop :=
  ∀ n, P16253726819577931968.a n = A109395 (n + 1)

end A109395

/-! ## A109395.P8175083310034237938

`gcd(A000027(n+1), A331176(n+1))`
-/

namespace A109395.P8175083310034237938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A331176 (n + 1))

end

end A109395.P8175083310034237938

namespace A109395

/-- `gcd(A000027(n+1), A331176(n+1))` -/
def P8175083310034237938.Spec : Prop :=
  ∀ n, (P8175083310034237938.a n : ℤ) = A109395 (n + 1)

end A109395

/-! ## A109395.P16188640260162236798

`lcm(n+1, A000010(2*n+1-n))/A000010(n+1)`
-/

namespace A109395.P16188640260162236798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000010 (2 * n + 1 - n)) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A109395.P16188640260162236798

namespace A109395

/-- `lcm(n+1, A000010(2*n+1-n))/A000010(n+1)` -/
def P16188640260162236798.Spec : Prop :=
  ∀ n, P16188640260162236798.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P1466081798489058323

`A007947(n+1)/A007947(A173751(n+1))`
-/

namespace A109395.P1466081798489058323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A173751 (n + 1)).toNat : ℚ)

end

end A109395.P1466081798489058323

namespace A109395

/-- `A007947(n+1)/A007947(A173751(n+1))` -/
def P1466081798489058323.Spec : Prop :=
  ∀ n, P1466081798489058323.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P7371285967041452301

`A009262(n+1)/(A003557(n+1)*A173557(n+1))`
-/

namespace A109395.P7371285967041452301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009262 (n + 1) : ℚ) / (A003557 (n + 1) * A173557 (n + 1) : ℚ)

end

end A109395.P7371285967041452301

namespace A109395

/-- `A009262(n+1)/(A003557(n+1)*A173557(n+1))` -/
def P7371285967041452301.Spec : Prop :=
  ∀ n, P7371285967041452301.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P14800755663195965734

`lcm(A000010(n+1), A000027(n+1))/A000010(n+1)`
-/

namespace A109395.P14800755663195965734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000010 (n + 1)) (A000027 (n + 1)) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A109395.P14800755663195965734

namespace A109395

/-- `lcm(A000010(n+1), A000027(n+1))/A000010(n+1)` -/
def P14800755663195965734.Spec : Prop :=
  ∀ n, P14800755663195965734.a n = (A109395 (n + 1) : ℚ)

end A109395

/-! ## A109395.P16986147216380685370

`A054531(A000010(n+1)+∑[n])`
-/

namespace A109395.P16986147216380685370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A000010 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A109395.P16986147216380685370

namespace A109395

/-- `A054531(A000010(n+1)+∑[n])` -/
def P16986147216380685370.Spec : Prop :=
  ∀ n, P16986147216380685370.a n = A109395 (n + 1)

end A109395

/-!
# A109396: Admirable Harshad numbers such that the subtracted divisor is also a Harshad number.

The programs for A109396, there is no canonical definition to state claims against.
-/

/-! ## A109396.P17115461573635831740

`∩[A111947(n+1), A375611(n+1)]`
-/

namespace A109396.P17115461573635831740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109396.P17115461573635831740

/-! ## A109396.P6396625676201431023

`∩[A111947(n+1), A331201(n+1)]`
-/

namespace A109396.P6396625676201431023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109396.P6396625676201431023

/-! ## A109396.P5421365639424649705

`∩[A111947(n+1), A370842(n+1)]`
-/

namespace A109396.P5421365639424649705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109396.P5421365639424649705

/-!
# A109397: Numbers k such that 22 * 10^k + 1 is prime.

The programs for A109397, there is no canonical definition to state claims against.
-/

/-! ## A109397.P2633262093657387673

`∑[A068527(A156095(n)-1)]`
-/

namespace A109397.P2633262093657387673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A156095 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109397.P2633262093657387673

/-!
# A109398: a(n) = (1/n!)*Sum_{k=0..n} (n+k)!.

The programs for A109398, there is no canonical definition to state claims against.
-/

/-! ## A109398.P5758333577399401268

`A123680(n+1)-A000407(n)`
-/

namespace A109398.P5758333577399401268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123680 (n + 1) - A000407 n

end

end A109398.P5758333577399401268

/-! ## A109398.P15398165594074629866

`A123680(n+1)-A001813(n+1)/2`
-/

namespace A109398.P15398165594074629866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123680 (n + 1) : ℚ) - (A001813 (n + 1) : ℚ) / 2

end

end A109398.P15398165594074629866

/-! ## A109398.P14608954348050376150

`A123680(n+1)-A124320(A000096(n+1))`
-/

namespace A109398.P14608954348050376150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123680 (n + 1) - A124320 (A000096 (n + 1)).toNat

end

end A109398.P14608954348050376150

/-! ## A109398.P5649955324579996375

`A348482(∑[4*n])`
-/

namespace A109398.P5649955324579996375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348482 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109398.P5649955324579996375

/-! ## A109398.P230677548451251083

`A374574(n)/A000142(n)`
-/

namespace A109398.P230677548451251083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374574 n : ℚ) / (A000142 n : ℚ)

end

end A109398.P230677548451251083

