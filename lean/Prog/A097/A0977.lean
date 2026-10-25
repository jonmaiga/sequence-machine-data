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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
# A097700: Numbers not of form x^2 + 2y^2.

The programs for A097700, the canonical program `A097700.P16427070202235837695` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097700 has offset 1).

The definition of A097700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097700.P10089772986680169537

`comp[A002479(n+1)]`
-/

namespace A097700.P10089772986680169537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097700.P10089772986680169537

namespace A097700

/-- `comp[A002479(n+1)]` -/
def P10089772986680169537.Spec : Prop :=
  ∀ n, (P10089772986680169537.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P16427070202235837695

`lt[A216282(n+1), 1]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A097700

/-- `lt[A216282(n+1), 1]+1` -/
def P16427070202235837695.Spec : Prop :=
  ∀ n, (P16427070202235837695.a n : ℤ) = A097700 (n + 1)

theorem P16427070202235837695.correct : P16427070202235837695.Spec := by
  intro n
  simp only [A097700, Nat.add_sub_cancel]

end A097700

/-! ## A097700.P5729517968752465685

`eq[0, A033715(n)]`
-/

namespace A097700.P5729517968752465685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P5729517968752465685

namespace A097700

/-- `eq[0, A033715(n)]` -/
def P5729517968752465685.Spec : Prop :=
  ∀ n, (P5729517968752465685.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P3324862907134789509

`eq[0, A082564(n)]`
-/

namespace A097700.P3324862907134789509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P3324862907134789509

namespace A097700

/-- `eq[0, A082564(n)]` -/
def P3324862907134789509.Spec : Prop :=
  ∀ n, (P3324862907134789509.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P3446813755018111024

`eq[0, A124452(n)]`
-/

namespace A097700.P3446813755018111024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P3446813755018111024

namespace A097700

/-- `eq[0, A124452(n)]` -/
def P3446813755018111024.Spec : Prop :=
  ∀ n, (P3446813755018111024.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P16637454784132806943

`eq[0, A133692(n)]`
-/

namespace A097700.P16637454784132806943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P16637454784132806943

namespace A097700

/-- `eq[0, A133692(n)]` -/
def P16637454784132806943.Spec : Prop :=
  ∀ n, (P16637454784132806943.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P12293074782708260803

`eq[0, A139093(n)]`
-/

namespace A097700.P12293074782708260803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P12293074782708260803

namespace A097700

/-- `eq[0, A139093(n)]` -/
def P12293074782708260803.Spec : Prop :=
  ∀ n, (P12293074782708260803.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P2641361675467527678

`eq[0, A245572(n)]`
-/

namespace A097700.P2641361675467527678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245572 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P2641361675467527678

namespace A097700

/-- `eq[0, A245572(n)]` -/
def P2641361675467527678.Spec : Prop :=
  ∀ n, (P2641361675467527678.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P15343643678542623676

`eq[0, A391183(n)]`
-/

namespace A097700.P15343643678542623676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P15343643678542623676

namespace A097700

/-- `eq[0, A391183(n)]` -/
def P15343643678542623676.Spec : Prop :=
  ∀ n, (P15343643678542623676.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P2627484191373255389

`lt[A002325(n+1), 1]+1`
-/

namespace A097700.P2627484191373255389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097700.P2627484191373255389

namespace A097700

/-- `lt[A002325(n+1), 1]+1` -/
def P2627484191373255389.Spec : Prop :=
  ∀ n, (P2627484191373255389.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P4412548876887424594

`lt[A352564(n+1), 1]+1`
-/

namespace A097700.P4412548876887424594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352564 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097700.P4412548876887424594

namespace A097700

/-- `lt[A352564(n+1), 1]+1` -/
def P4412548876887424594.Spec : Prop :=
  ∀ n, (P4412548876887424594.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P16196291421434229596

`lt[A133693(n+1)², 1]+1`
-/

namespace A097700.P16196291421434229596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097700.P16196291421434229596

namespace A097700

/-- `lt[A133693(n+1)², 1]+1` -/
def P16196291421434229596.Spec : Prop :=
  ∀ n, (P16196291421434229596.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P15740405547717774889

`eq[A000164(n), A025436(n)]`
-/

namespace A097700.P15740405547717774889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097700.P15740405547717774889

namespace A097700

/-- `eq[A000164(n), A025436(n)]` -/
def P15740405547717774889.Spec : Prop :=
  ∀ n, (P15740405547717774889.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P15036604839499905487

`lt[A216282(A022144(n)), 1]`
-/

namespace A097700.P15036604839499905487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097700.P15036604839499905487

namespace A097700

/-- `lt[A216282(A022144(n)), 1]` -/
def P15036604839499905487.Spec : Prop :=
  ∀ n, (P15036604839499905487.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P1619685209769412938

`lt[A133692(2*n), 1]`
-/

namespace A097700.P1619685209769412938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133692 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097700.P1619685209769412938

namespace A097700

/-- `lt[A133692(2*n), 1]` -/
def P1619685209769412938.Spec : Prop :=
  ∀ n, (P1619685209769412938.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P9673692112189280821

`lt[A082564(2*n)², 1]`
-/

namespace A097700.P9673692112189280821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097700.P9673692112189280821

namespace A097700

/-- `lt[A082564(2*n)², 1]` -/
def P9673692112189280821.Spec : Prop :=
  ∀ n, (P9673692112189280821.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P10273742707991454864

`lt[A139093(2*n)², 1]`
-/

namespace A097700.P10273742707991454864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097700.P10273742707991454864

namespace A097700

/-- `lt[A139093(2*n)², 1]` -/
def P10273742707991454864.Spec : Prop :=
  ∀ n, (P10273742707991454864.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P4762826046668435298

`lt[A129134(n+1)², 1]+1`
-/

namespace A097700.P4762826046668435298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097700.P4762826046668435298

namespace A097700

/-- `lt[A129134(n+1)², 1]+1` -/
def P4762826046668435298.Spec : Prop :=
  ∀ n, (P4762826046668435298.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P7679955760948538147

`eq[0, A028572(4*n)]`
-/

namespace A097700.P7679955760948538147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P7679955760948538147

namespace A097700

/-- `eq[0, A028572(4*n)]` -/
def P7679955760948538147.Spec : Prop :=
  ∀ n, (P7679955760948538147.a n : ℤ) = A097700 (n + 1)

end A097700

/-! ## A097700.P18359023127507338608

`eq[0, A008586(A129438(n))-A129438(A008586(n))]`
-/

namespace A097700.P18359023127507338608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A129438 n).toNat - A129438 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097700.P18359023127507338608

namespace A097700

/-- `eq[0, A008586(A129438(n))-A129438(A008586(n))]` -/
def P18359023127507338608.Spec : Prop :=
  ∀ n, (P18359023127507338608.a n : ℤ) = A097700 (n + 1)

end A097700

/-!
# A097701: Expansion of 1/((1-x)^2*(1-x^2)^2*(1-x^3)).

The programs for A097701, the canonical program `A097701.P14415916281379211129` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097701 has offset 0).

The definition of A097701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))` (program `A097701.P14415916281379211129`, by `A097701.P14415916281379211129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097701.P14415916281379211129

`ogf(1/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097701

/-- `ogf(1/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))` -/
def P14415916281379211129.Spec : Prop :=
  ∀ n, P14415916281379211129.a n = A097701 n

theorem P14415916281379211129.correct : P14415916281379211129.Spec := by
  intro n
  simp only [A097701]

end A097701

/-! ## A097701.P16622886852286743589

`round((n+1)*(9*(-1)^n+n^3+17*n²+95*n+184)/288)`
-/

namespace A097701.P16622886852286743589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * (9 * (-1) ^ n + (n ^ 3 : ℤ) + (17 * n ^ 2 : ℤ) + (95 * n : ℤ) + 184) : ℚ) / 288)

end

end A097701.P16622886852286743589

namespace A097701

/-- `round((n+1)*(9*(-1)^n+n^3+17*n²+95*n+184)/288)` -/
def P16622886852286743589.Spec : Prop :=
  ∀ n, P16622886852286743589.a n = A097701 n

end A097701

/-! ## A097701.P4749608212443293775

`∑[∑[round((n+3)²/12)-a(n-1)]]` with `a(0)=1`
-/

namespace A097701.P4749608212443293775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P4749608212443293775

namespace A097701

/-- `∑[∑[round((n+3)²/12)-a(n-1)]]` -/
def P4749608212443293775.Spec : Prop :=
  ∀ n, P4749608212443293775.a n = A097701 n

end A097701

/-! ## A097701.P931050560667301617

`round(((n+2)*(n+6)/12)²)-a(n-1)` with `a(0)=1`
-/

namespace A097701.P931050560667301617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((n + 2 : ℚ) * ((n + 6 : ℚ) / 12)) ^ 2) - a (n - 1)

end

end A097701.P931050560667301617

namespace A097701

/-- `round(((n+2)*(n+6)/12)²)-a(n-1)` -/
def P931050560667301617.Spec : Prop :=
  ∀ n, P931050560667301617.a n = A097701 n

end A097701

/-! ## A097701.P14329690779804769633

`∑[A266769(n)]`
-/

namespace A097701.P14329690779804769633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P14329690779804769633

namespace A097701

/-- `∑[A266769(n)]` -/
def P14329690779804769633.Spec : Prop :=
  ∀ n, P14329690779804769633.a n = A097701 n

end A097701

/-! ## A097701.P3573665650749562315

`∑[∑[A008731(n)]]`
-/

namespace A097701.P3573665650749562315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P3573665650749562315

namespace A097701

/-- `∑[∑[A008731(n)]]` -/
def P3573665650749562315.Spec : Prop :=
  ∀ n, P3573665650749562315.a n = A097701 n

end A097701

/-! ## A097701.P5373393016612852404

`∑[A000601(n)-a(n-1)]` with `a(0)=1`
-/

namespace A097701.P5373393016612852404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000601 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P5373393016612852404

namespace A097701

/-- `∑[A000601(n)-a(n-1)]` -/
def P5373393016612852404.Spec : Prop :=
  ∀ n, P5373393016612852404.a n = A097701 n

end A097701

/-! ## A097701.P16455536317568231271

`∑[∑[A001840(A028242(n))]]`
-/

namespace A097701.P16455536317568231271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P16455536317568231271

namespace A097701

/-- `∑[∑[A001840(A028242(n))]]` -/
def P16455536317568231271.Spec : Prop :=
  ∀ n, P16455536317568231271.a n = A097701 n

end A097701

/-! ## A097701.P2732617110642471421

`∑[A008769(n)+A001971(n)]`
-/

namespace A097701.P2732617110642471421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 n + A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P2732617110642471421

namespace A097701

/-- `∑[A008769(n)+A001971(n)]` -/
def P2732617110642471421.Spec : Prop :=
  ∀ n, P2732617110642471421.a n = A097701 n

end A097701

/-! ## A097701.P12783946909577996397

`∑[A014126(n)-A006918(n)]`
-/

namespace A097701.P12783946909577996397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 n - A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P12783946909577996397

namespace A097701

/-- `∑[A014126(n)-A006918(n)]` -/
def P12783946909577996397.Spec : Prop :=
  ∀ n, P12783946909577996397.a n = A097701 n

end A097701

/-! ## A097701.P12610707773456313539

`∑[A008627(n)+∑[A008615(n)]]`
-/

namespace A097701.P12610707773456313539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P12610707773456313539

namespace A097701

/-- `∑[A008627(n)+∑[A008615(n)]]` -/
def P12610707773456313539.Spec : Prop :=
  ∀ n, P12610707773456313539.a n = A097701 n

end A097701

/-! ## A097701.P15741426651014986496

`∑[∑[A008733(n)]-A026810(n)]`
-/

namespace A097701.P15741426651014986496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P15741426651014986496

namespace A097701

/-- `∑[∑[A008733(n)]-A026810(n)]` -/
def P15741426651014986496.Spec : Prop :=
  ∀ n, P15741426651014986496.a n = A097701 n

end A097701

/-! ## A097701.P14275747078659098356

`∑[2*A165188(n+1)]-A165188(n+1)`
-/

namespace A097701.P14275747078659098356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A165188 (n + 1)

end

end A097701.P14275747078659098356

namespace A097701

/-- `∑[2*A165188(n+1)]-A165188(n+1)` -/
def P14275747078659098356.Spec : Prop :=
  ∀ n, P14275747078659098356.a n = A097701 n

end A097701

/-! ## A097701.P1186325133608855746

`∑[∑[A114209(n+2)]]`
-/

namespace A097701.P1186325133608855746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P1186325133608855746

namespace A097701

/-- `∑[∑[A114209(n+2)]]` -/
def P1186325133608855746.Spec : Prop :=
  ∀ n, P1186325133608855746.a n = A097701 n

end A097701

/-! ## A097701.P2306319495026252592

`∑[A026810(n+2)+A001400(n)]`
-/

namespace A097701.P2306319495026252592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 2) + A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P2306319495026252592

namespace A097701

/-- `∑[A026810(n+2)+A001400(n)]` -/
def P2306319495026252592.Spec : Prop :=
  ∀ n, P2306319495026252592.a n = A097701 n

end A097701

/-! ## A097701.P7395007216018515883

`A002624(n+2)-A057524(n+2)`
-/

namespace A097701.P7395007216018515883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (n + 2) - A057524 (n + 2)

end

end A097701.P7395007216018515883

namespace A097701

/-- `A002624(n+2)-A057524(n+2)` -/
def P7395007216018515883.Spec : Prop :=
  ∀ n, P7395007216018515883.a n = A097701 n

end A097701

/-! ## A097701.P8917181745858470858

`∑[∑[A008799(A165754(n+1))]]`
-/

namespace A097701.P8917181745858470858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 (A165754 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P8917181745858470858

namespace A097701

/-- `∑[∑[A008799(A165754(n+1))]]` -/
def P8917181745858470858.Spec : Prop :=
  ∀ n, P8917181745858470858.a n = A097701 n

end A097701

/-! ## A097701.P6078049408770064956

`∑[A008763(n+4)]`
-/

namespace A097701.P6078049408770064956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097701.P6078049408770064956

namespace A097701

/-- `∑[A008763(n+4)]` -/
def P6078049408770064956.Spec : Prop :=
  ∀ n, P6078049408770064956.a n = A097701 n

end A097701

/-!
# A097702: a(n) = (A063880(n) - 108)/216.

The programs for A097702, the canonical program `A097702.P334235475160007035` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097702 has offset 1).

The definition of A097702 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063880, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097702.P334235475160007035

`(A063880(n+1)-108)/216`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A097702

/-- `(A063880(n+1)-108)/216` -/
def P334235475160007035.Spec : Prop :=
  ∀ n, P334235475160007035.a n = (A097702 (n + 1) : ℚ)

end A097702

/-! ## A097702.P12232302654843385018

`comp[A097703(n+1)]`
-/

namespace A097702.P12232302654843385018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097702.P12232302654843385018

namespace A097702

/-- `comp[A097703(n+1)]` -/
def P12232302654843385018.Spec : Prop :=
  ∀ n, (P12232302654843385018.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P6506468880135631371

`floor(A276378(n+1)/2)`
-/

namespace A097702.P6506468880135631371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276378 (n + 1) : ℚ) / 2⌋

end

end A097702.P6506468880135631371

namespace A097702

/-- `floor(A276378(n+1)/2)` -/
def P6506468880135631371.Spec : Prop :=
  ∀ n, P6506468880135631371.a n = A097702 (n + 1)

end A097702

/-! ## A097702.P10900045037532782193

`eq[1, A359377(2*n+1)]`
-/

namespace A097702.P10900045037532782193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P10900045037532782193

namespace A097702

/-- `eq[1, A359377(2*n+1)]` -/
def P10900045037532782193.Spec : Prop :=
  ∀ n, (P10900045037532782193.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P341063159648484710

`eq[1, A364250(2*n+1)]`
-/

namespace A097702.P341063159648484710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364250 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P341063159648484710

namespace A097702

/-- `eq[1, A364250(2*n+1)]` -/
def P341063159648484710.Spec : Prop :=
  ∀ n, (P341063159648484710.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P13349749971578722131

`eq[1, A373154(2*n+1)]`
-/

namespace A097702.P13349749971578722131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373154 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P13349749971578722131

namespace A097702

/-- `eq[1, A373154(2*n+1)]` -/
def P13349749971578722131.Spec : Prop :=
  ∀ n, (P13349749971578722131.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P13926820833151273369

`eq[1, A373154(n+1)]/2`
-/

namespace A097702.P13926820833151273369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373154 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A097702.P13926820833151273369

namespace A097702

/-- `eq[1, A373154(n+1)]/2` -/
def P13926820833151273369.Spec : Prop :=
  ∀ n, P13926820833151273369.a n = (A097702 (n + 1) : ℚ)

end A097702

/-! ## A097702.P17109554012715111758

`eq[1, A085097(2*n+1)²]`
-/

namespace A097702.P17109554012715111758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085097 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P17109554012715111758

namespace A097702

/-- `eq[1, A085097(2*n+1)²]` -/
def P17109554012715111758.Spec : Prop :=
  ∀ n, (P17109554012715111758.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P8268666601399121875

`eq[1, A085906(2*n+1)²]`
-/

namespace A097702.P8268666601399121875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085906 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P8268666601399121875

namespace A097702

/-- `eq[1, A085906(2*n+1)²]` -/
def P8268666601399121875.Spec : Prop :=
  ∀ n, (P8268666601399121875.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P13623662047414090578

`eq[1, A156277(2*n+1)²]`
-/

namespace A097702.P13623662047414090578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156277 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P13623662047414090578

namespace A097702

/-- `eq[1, A156277(2*n+1)²]` -/
def P13623662047414090578.Spec : Prop :=
  ∀ n, (P13623662047414090578.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P9190937448043896508

`eq[1, A355688(2*n+1)²]`
-/

namespace A097702.P9190937448043896508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P9190937448043896508

namespace A097702

/-- `eq[1, A355688(2*n+1)²]` -/
def P9190937448043896508.Spec : Prop :=
  ∀ n, (P9190937448043896508.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P13082515919441276052

`eq[1, A359422(2*n+1)²]`
-/

namespace A097702.P13082515919441276052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359422 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P13082515919441276052

namespace A097702

/-- `eq[1, A359422(2*n+1)²]` -/
def P13082515919441276052.Spec : Prop :=
  ∀ n, (P13082515919441276052.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P3258501081302106950

`eq[1, A365428(2*n+1)²]`
-/

namespace A097702.P3258501081302106950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097702.P3258501081302106950

namespace A097702

/-- `eq[1, A365428(2*n+1)²]` -/
def P3258501081302106950.Spec : Prop :=
  ∀ n, (P3258501081302106950.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P5020478639419393838

`eq[1, A355688(n+1)²]/2`
-/

namespace A097702.P5020478639419393838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A097702.P5020478639419393838

namespace A097702

/-- `eq[1, A355688(n+1)²]/2` -/
def P5020478639419393838.Spec : Prop :=
  ∀ n, P5020478639419393838.a n = (A097702 (n + 1) : ℚ)

end A097702

/-! ## A097702.P9252434125958250780

`lt[0, A008683(6*n+3)²]`
-/

namespace A097702.P9252434125958250780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (6 * n + 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097702.P9252434125958250780

namespace A097702

/-- `lt[0, A008683(6*n+3)²]` -/
def P9252434125958250780.Spec : Prop :=
  ∀ n, (P9252434125958250780.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P5846328763919885407

`eq[A008683(2*n+1)², gcd(n+2, n-1)]`
-/

namespace A097702.P5846328763919885407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A097702.P5846328763919885407

namespace A097702

/-- `eq[A008683(2*n+1)², gcd(n+2, n-1)]` -/
def P5846328763919885407.Spec : Prop :=
  ∀ n, (P5846328763919885407.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P8705500244362428175

`∩[A264387(n+1), A007494(n)]`
-/

namespace A097702.P8705500244362428175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097702.P8705500244362428175

namespace A097702

/-- `∩[A264387(n+1), A007494(n)]` -/
def P8705500244362428175.Spec : Prop :=
  ∀ n, (P8705500244362428175.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P3555016694444993358

`eq[1, ∏{e}[6*n+3, #]]`
-/

namespace A097702.P3555016694444993358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097702.P3555016694444993358

namespace A097702

/-- `eq[1, ∏{e}[6*n+3, #]]` -/
def P3555016694444993358.Spec : Prop :=
  ∀ n, (P3555016694444993358.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P14526748568102111331

`lt[∏{e}[6*n+3, #], 2]`
-/

namespace A097702.P14526748568102111331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A097702.P14526748568102111331

namespace A097702

/-- `lt[∏{e}[6*n+3, #], 2]` -/
def P14526748568102111331.Spec : Prop :=
  ∀ n, (P14526748568102111331.a n : ℤ) = A097702 (n + 1)

end A097702

/-! ## A097702.P14645042296314513989

`lt[2*n+1, ∏{p}[6*n+3, #]]`
-/

namespace A097702.P14645042296314513989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097702.P14645042296314513989

namespace A097702

/-- `lt[2*n+1, ∏{p}[6*n+3, #]]` -/
def P14645042296314513989.Spec : Prop :=
  ∀ n, (P14645042296314513989.a n : ℤ) = A097702 (n + 1)

end A097702

/-!
# A097703: Numbers j such that m = 216*j + 108 satisfies sigma(m) != 2*usigma(m).

The programs for A097703, the canonical program `A097703.P2355678231752813967` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097703 has offset 1).

The definition of A097703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097703.P2355678231752813967

`eq[0, A156277(2*n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A097703

/-- `eq[0, A156277(2*n+1)]` -/
def P2355678231752813967.Spec : Prop :=
  ∀ n, (P2355678231752813967.a n : ℤ) = A097703 (n + 1)

theorem P2355678231752813967.correct : P2355678231752813967.Spec := by
  intro n
  simp only [A097703, Nat.add_sub_cancel]

end A097703

/-! ## A097703.P6179286559447100664

`eq[0, A355688(2*n+1)]`
-/

namespace A097703.P6179286559447100664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P6179286559447100664

namespace A097703

/-- `eq[0, A355688(2*n+1)]` -/
def P6179286559447100664.Spec : Prop :=
  ∀ n, (P6179286559447100664.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P7795430004490957690

`eq[0, A359377(2*n+1)]`
-/

namespace A097703.P7795430004490957690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359377 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P7795430004490957690

namespace A097703

/-- `eq[0, A359377(2*n+1)]` -/
def P7795430004490957690.Spec : Prop :=
  ∀ n, (P7795430004490957690.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P363128067232110013

`eq[0, A359422(2*n+1)]`
-/

namespace A097703.P363128067232110013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359422 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P363128067232110013

namespace A097703

/-- `eq[0, A359422(2*n+1)]` -/
def P363128067232110013.Spec : Prop :=
  ∀ n, (P363128067232110013.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P11081911734546786248

`eq[0, A364250(2*n+1)]`
-/

namespace A097703.P11081911734546786248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364250 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P11081911734546786248

namespace A097703

/-- `eq[0, A364250(2*n+1)]` -/
def P11081911734546786248.Spec : Prop :=
  ∀ n, (P11081911734546786248.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P1136770282576388622

`eq[0, A365428(2*n+1)]`
-/

namespace A097703.P1136770282576388622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365428 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P1136770282576388622

namespace A097703

/-- `eq[0, A365428(2*n+1)]` -/
def P1136770282576388622.Spec : Prop :=
  ∀ n, (P1136770282576388622.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P14634018253799070211

`eq[0, A373154(2*n+1)]`
-/

namespace A097703.P14634018253799070211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373154 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P14634018253799070211

namespace A097703

/-- `eq[0, A373154(2*n+1)]` -/
def P14634018253799070211.Spec : Prop :=
  ∀ n, (P14634018253799070211.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P12816818935100320129

`∪[A097704(n+1), A016777(n)]`
-/

namespace A097703.P12816818935100320129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097703.P12816818935100320129

namespace A097703

/-- `∪[A097704(n+1), A016777(n)]` -/
def P12816818935100320129.Spec : Prop :=
  ∀ n, (P12816818935100320129.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P4413161674967007767

`comp[A097702(n+1)]`
-/

namespace A097703.P4413161674967007767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097703.P4413161674967007767

namespace A097703

/-- `comp[A097702(n+1)]` -/
def P4413161674967007767.Spec : Prop :=
  ∀ n, (P4413161674967007767.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P1786478841323916615

`lt[1, ∏{e}[6*n+3, #]]`
-/

namespace A097703.P1786478841323916615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097703.P1786478841323916615

namespace A097703

/-- `lt[1, ∏{e}[6*n+3, #]]` -/
def P1786478841323916615.Spec : Prop :=
  ∀ n, (P1786478841323916615.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P2596878752892807360

`lt[∏{p}[12*n+6, #], 12*n+6]`
-/

namespace A097703.P2596878752892807360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A097703.P2596878752892807360

namespace A097703

/-- `lt[∏{p}[12*n+6, #], 12*n+6]` -/
def P2596878752892807360.Spec : Prop :=
  ∀ n, (P2596878752892807360.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P12881735060374007047

`eq[0, A364249(2*n+1)]`
-/

namespace A097703.P12881735060374007047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364249 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P12881735060374007047

namespace A097703

/-- `eq[0, A364249(2*n+1)]` -/
def P12881735060374007047.Spec : Prop :=
  ∀ n, (P12881735060374007047.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P5793961909924064275

`eq[0, A319448(2*n+1)]`
-/

namespace A097703.P5793961909924064275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319448 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097703.P5793961909924064275

namespace A097703

/-- `eq[0, A319448(2*n+1)]` -/
def P5793961909924064275.Spec : Prop :=
  ∀ n, (P5793961909924064275.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P2855038615467754525

`eq[A008486(2*n+1), A105570(A008486(2*n+1))]`
-/

namespace A097703.P2855038615467754525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A008486 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097703.P2855038615467754525

namespace A097703

/-- `eq[A008486(2*n+1), A105570(A008486(2*n+1))]` -/
def P2855038615467754525.Spec : Prop :=
  ∀ n, (P2855038615467754525.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P1424591424685604031

`eq[A079978(2*n+1), A079978(A105570(2*n+1))]`
-/

namespace A097703.P1424591424685604031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A105570 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097703.P1424591424685604031

namespace A097703

/-- `eq[A079978(2*n+1), A079978(A105570(2*n+1))]` -/
def P1424591424685604031.Spec : Prop :=
  ∀ n, (P1424591424685604031.a n : ℤ) = A097703 (n + 1)

end A097703

/-! ## A097703.P1463213412876990291

`lt[1, A249739(A016945(n))]`
-/

namespace A097703.P1463213412876990291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (A016945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097703.P1463213412876990291

namespace A097703

/-- `lt[1, A249739(A016945(n))]` -/
def P1463213412876990291.Spec : Prop :=
  ∀ n, (P1463213412876990291.a n : ℤ) = A097703 (n + 1)

end A097703

/-!
# A097704: Terms of A097703 that are not of the form 3*k + 1.

The programs for A097704, the canonical program `A097704.P2139242256301224581` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097704 has offset 1).

The definition of A097704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097704.P2139242256301224581

`eq[-a(n-3), A008683(2*n+1)]` with `a(0)=0, a(1)=2, a(2)=0`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A097704

/-- `eq[-a(n-3), A008683(2*n+1)]` -/
def P2139242256301224581.Spec : Prop :=
  ∀ n, (P2139242256301224581.a n : ℤ) = A097704 (n + 1)

theorem P2139242256301224581.correct : P2139242256301224581.Spec := by
  intro n
  simp only [A097704, Nat.add_sub_cancel]

end A097704

/-! ## A097704.P12612759650514440357

`∩[A097703(n+1), A007494(n)]`
-/

namespace A097704.P12612759650514440357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097704.P12612759650514440357

namespace A097704

/-- `∩[A097703(n+1), A007494(n)]` -/
def P12612759650514440357.Spec : Prop :=
  ∀ n, (P12612759650514440357.a n : ℤ) = A097704 (n + 1)

end A097704

/-! ## A097704.P2792964540786861065

`∩[A097703(n+1), A049636(n)]`
-/

namespace A097704.P2792964540786861065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097704.P2792964540786861065

namespace A097704

/-- `∩[A097703(n+1), A049636(n)]` -/
def P2792964540786861065.Spec : Prop :=
  ∀ n, (P2792964540786861065.a n : ℤ) = A097704 (n + 1)

end A097704

/-! ## A097704.P11951433317850979553

`eq[1, A323884(2*n+1)]`
-/

namespace A097704.P11951433317850979553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097704.P11951433317850979553

namespace A097704

/-- `eq[1, A323884(2*n+1)]` -/
def P11951433317850979553.Spec : Prop :=
  ∀ n, (P11951433317850979553.a n : ℤ) = A097704 (n + 1)

end A097704

/-! ## A097704.P8965164220262252881

`eq[1, A323884(n+1)]/2`
-/

namespace A097704.P8965164220262252881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A097704.P8965164220262252881

namespace A097704

/-- `eq[1, A323884(n+1)]/2` -/
def P8965164220262252881.Spec : Prop :=
  ∀ n, P8965164220262252881.a n = (A097704 (n + 1) : ℚ)

end A097704

/-! ## A097704.P12584851891192775882

`eq[0, A349348(A064216(n+1))]`
-/

namespace A097704.P12584851891192775882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349348 (A064216 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097704.P12584851891192775882

namespace A097704

/-- `eq[0, A349348(A064216(n+1))]` -/
def P12584851891192775882.Spec : Prop :=
  ∀ n, (P12584851891192775882.a n : ℤ) = A097704 (n + 1)

end A097704

/-! ## A097704.P516632520449731852

`filter[A097703(n+1), A204418(#)]`
-/

namespace A097704.P516632520449731852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204418 (f1 j).toNat = 1) n)

end

end A097704.P516632520449731852

namespace A097704

/-- `filter[A097703(n+1), A204418(#)]` -/
def P516632520449731852.Spec : Prop :=
  ∀ n, P516632520449731852.a n = A097704 (n + 1)

end A097704

/-! ## A097704.P9738182973660490361

`filter[A097703(n+2), A329682(#)]`
-/

namespace A097704.P9738182973660490361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097703 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329682 (f1 j).toNat = 1) n)

end

end A097704.P9738182973660490361

namespace A097704

/-- `filter[A097703(n+2), A329682(#)]` -/
def P9738182973660490361.Spec : Prop :=
  ∀ n, P9738182973660490361.a n = A097704 (n + 1)

end A097704

/-! ## A097704.P10125443486402821741

`eq[A099990(n), A154037(n+3)]`
-/

namespace A097704.P10125443486402821741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154037 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097704.P10125443486402821741

namespace A097704

/-- `eq[A099990(n), A154037(n+3)]` -/
def P10125443486402821741.Spec : Prop :=
  ∀ n, (P10125443486402821741.a n : ℤ) = A097704 (n + 1)

end A097704

/-! ## A097704.P5366185531137334254

`eq[A099990(n), A154043(n+3)]`
-/

namespace A097704.P5366185531137334254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154043 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097704.P5366185531137334254

namespace A097704

/-- `eq[A099990(n), A154043(n+3)]` -/
def P5366185531137334254.Spec : Prop :=
  ∀ n, (P5366185531137334254.a n : ℤ) = A097704 (n + 1)

end A097704

/-! ## A097704.P1561910066132779025

`eq[2, A010140(2*n+1)+A008683(2*n+1)]`
-/

namespace A097704.P1561910066132779025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010140 (2 * n + 1) + A008683 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097704.P1561910066132779025

namespace A097704

/-- `eq[2, A010140(2*n+1)+A008683(2*n+1)]` -/
def P1561910066132779025.Spec : Prop :=
  ∀ n, (P1561910066132779025.a n : ℤ) = A097704 (n + 1)

end A097704

/-! ## A097704.P14377871539579982663

`eq[2, A348039(A073762(n+1))]`
-/

namespace A097704.P14377871539579982663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348039 (A073762 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097704.P14377871539579982663

namespace A097704

/-- `eq[2, A348039(A073762(n+1))]` -/
def P14377871539579982663.Spec : Prop :=
  ∀ n, (P14377871539579982663.a n : ℤ) = A097704 (n + 1)

end A097704

/-!
# A097705: a(n) = 4*a(n-1) + 17*a(n-2), a(1)=1, a(2)=4.

The programs for A097705, the canonical program `A097705.P14195827055806222561` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097705 has offset 1).

The definition of A097705 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+17*a(n-2)` (program `A097705.P14195827055806222561`, by `A097705.P14195827055806222561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097705.P14195827055806222561

`4*a(n-1)+17*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097705

/-- `4*a(n-1)+17*a(n-2)` -/
def P14195827055806222561.Spec : Prop :=
  ∀ n, (P14195827055806222561.a n : ℤ) = A097705 (n + 1)

theorem P14195827055806222561.correct : P14195827055806222561.Spec := by
  intro n
  simp only [A097705, Nat.add_sub_cancel]

end A097705

/-! ## A097705.P18329955938076674331

`ogf(1/(1-4x-17x^2))`
-/

namespace A097705.P18329955938076674331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -17] n

end

end A097705.P18329955938076674331

namespace A097705

/-- `ogf(1/(1-4x-17x^2))` -/
def P18329955938076674331.Spec : Prop :=
  ∀ n, P18329955938076674331.a n = A097705 (n + 1)

end A097705

/-! ## A097705.P2273751857277858747

`A231280(n+2)/2`
-/

namespace A097705.P2273751857277858747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231280 (n + 2) : ℚ) / 2

end

end A097705.P2273751857277858747

namespace A097705

/-- `A231280(n+2)/2` -/
def P2273751857277858747.Spec : Prop :=
  ∀ n, P2273751857277858747.a n = (A097705 (n + 1) : ℚ)

end A097705

/-! ## A097705.P11607646454235992849

`2^A008683(A020484(n))*A231280(n+2)`
-/

namespace A097705.P11607646454235992849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A231280 (n + 2) : ℚ)

end

end A097705.P11607646454235992849

namespace A097705

/-- `2^A008683(A020484(n))*A231280(n+2)` -/
def P11607646454235992849.Spec : Prop :=
  ∀ n, P11607646454235992849.a n = (A097705 (n + 1) : ℚ)

end A097705

/-!
# A097706: Part of n composed of prime factors of form 4k+3.

The programs for A097706, the canonical program `A097706.P6722181687817241685` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097706 has offset 1).

The definition of A097706 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072436, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097706.P6722181687817241685

`(n+1)/A072436(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A097706

/-- `(n+1)/A072436(n+1)` -/
def P6722181687817241685.Spec : Prop :=
  ∀ n, P6722181687817241685.a n = (A097706 (n + 1) : ℚ)

end A097706

/-! ## A097706.P4720233579985216099

`A000265(n+1)/A170818(n+1)`
-/

namespace A097706.P4720233579985216099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A170818 (n + 1) : ℚ)

end

end A097706.P4720233579985216099

namespace A097706

/-- `A000265(n+1)/A170818(n+1)` -/
def P4720233579985216099.Spec : Prop :=
  ∀ n, P4720233579985216099.a n = (A097706 (n + 1) : ℚ)

end A097706

/-! ## A097706.P9633468710195769328

`gcd(n+1, A170819(n+1)^8)`
-/

namespace A097706.P9633468710195769328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A170819 (n + 1) ^ 8)

end

end A097706.P9633468710195769328

namespace A097706

/-- `gcd(n+1, A170819(n+1)^8)` -/
def P9633468710195769328.Spec : Prop :=
  ∀ n, (P9633468710195769328.a n : ℤ) = A097706 (n + 1)

end A097706

/-! ## A097706.P4887359580531203507

`A072438(A000265(n+1))`
-/

namespace A097706.P4887359580531203507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A000265 (n + 1)).toNat

end

end A097706.P4887359580531203507

namespace A097706

/-- `A072438(A000265(n+1))` -/
def P4887359580531203507.Spec : Prop :=
  ∀ n, P4887359580531203507.a n = A097706 (n + 1)

end A097706

/-! ## A097706.P4965877434822410851

`A132740(A072438(n+1))`
-/

namespace A097706.P4965877434822410851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (A072438 (n + 1)).toNat

end

end A097706.P4965877434822410851

namespace A097706

/-- `A132740(A072438(n+1))` -/
def P4965877434822410851.Spec : Prop :=
  ∀ n, P4965877434822410851.a n = A097706 (n + 1)

end A097706

/-! ## A097706.P6080732801614663501

`A072438(A153733(n)+1)`
-/

namespace A097706.P6080732801614663501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A153733 n + 1).toNat

end

end A097706.P6080732801614663501

namespace A097706

/-- `A072438(A153733(n)+1)` -/
def P6080732801614663501.Spec : Prop :=
  ∀ n, P6080732801614663501.a n = A097706 (n + 1)

end A097706

/-! ## A097706.P12403004097866488

`A072438((n+1)/A006519(n+1))`
-/

namespace A097706.P12403004097866488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A097706.P12403004097866488

namespace A097706

/-- `A072438((n+1)/A006519(n+1))` -/
def P12403004097866488.Spec : Prop :=
  ∀ n, P12403004097866488.a n = A097706 (n + 1)

end A097706

/-! ## A097706.P12180515621153317043

`A028234(2*(n+1))/A170818(n+1)`
-/

namespace A097706.P12180515621153317043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (2 * (n + 1)) : ℚ) / (A170818 (n + 1) : ℚ)

end

end A097706.P12180515621153317043

namespace A097706

/-- `A028234(2*(n+1))/A170818(n+1)` -/
def P12180515621153317043.Spec : Prop :=
  ∀ n, P12180515621153317043.a n = (A097706 (n + 1) : ℚ)

end A097706

/-! ## A097706.P5568277662354978618

`A072438(2*(n+1))/A028233(2*(n+1))`
-/

namespace A097706.P5568277662354978618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072438 (2 * (n + 1)) : ℚ) / (A028233 (2 * (n + 1)) : ℚ)

end

end A097706.P5568277662354978618

namespace A097706

/-- `A072438(2*(n+1))/A028233(2*(n+1))` -/
def P5568277662354978618.Spec : Prop :=
  ∀ n, P5568277662354978618.a n = (A097706 (n + 1) : ℚ)

end A097706

/-! ## A097706.P4363374648045569530

`A267099(A170818(A267099(n+1)))`
-/

namespace A097706.P4363374648045569530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A170818 (A267099 (n + 1)).toNat).toNat

end

end A097706.P4363374648045569530

namespace A097706

/-- `A267099(A170818(A267099(n+1)))` -/
def P4363374648045569530.Spec : Prop :=
  ∀ n, P4363374648045569530.a n = A097706 (n + 1)

end A097706

/-! ## A097706.P12888562956806414288

`gcd(A072438(n+1), A396748(n))`
-/

namespace A097706.P12888562956806414288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072438 (n + 1)) (A396748 n)

end

end A097706.P12888562956806414288

namespace A097706

/-- `gcd(A072438(n+1), A396748(n))` -/
def P12888562956806414288.Spec : Prop :=
  ∀ n, (P12888562956806414288.a n : ℤ) = A097706 (n + 1)

end A097706

/-! ## A097706.P3365377955802766265

`A072438(gcd(n+1, A261274(n)))`
-/

namespace A097706.P3365377955802766265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (Int.gcd (n + 1 : ℤ) (A261274 n))

end

end A097706.P3365377955802766265

namespace A097706

/-- `A072438(gcd(n+1, A261274(n)))` -/
def P3365377955802766265.Spec : Prop :=
  ∀ n, P3365377955802766265.a n = A097706 (n + 1)

end A097706

/-! ## A097706.P5365641901619805771

`gcd(A027849(n), A326313(2*n+1))`
-/

namespace A097706.P5365641901619805771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027849 n) (A326313 (2 * n + 1))

end

end A097706.P5365641901619805771

namespace A097706

/-- `gcd(A027849(n), A326313(2*n+1))` -/
def P5365641901619805771.Spec : Prop :=
  ∀ n, (P5365641901619805771.a n : ℤ) = A097706 (n + 1)

end A097706

/-! ## A097706.P1052041657842964359

`gcd(A326313(2*(n+1))*A326313(n+2), A014964(2*(n+1)))`
-/

namespace A097706.P1052041657842964359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326313 (2 * (n + 1)) * A326313 (n + 2)) (A014964 (2 * (n + 1)))

end

end A097706.P1052041657842964359

namespace A097706

/-- `gcd(A326313(2*(n+1))*A326313(n+2), A014964(2*(n+1)))` -/
def P1052041657842964359.Spec : Prop :=
  ∀ n, (P1052041657842964359.a n : ℤ) = A097706 (n + 1)

end A097706

/-!
# A097707: Part of n! composed of prime factors of form 4k+3.

The programs for A097707, there is no canonical definition to state claims against.
-/

/-! ## A097707.P7563057165065135134

`∏[A097706(n+1)]`
-/

namespace A097707.P7563057165065135134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097707.P7563057165065135134

/-! ## A097707.P5080825142276305958

`∏[(n+1)/A072436(n+1)]`
-/

namespace A097707.P5080825142276305958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072436 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097707.P5080825142276305958

/-! ## A097707.P7736301116736437842

`∏[gcd(n+1, A102074(n+1))]`
-/

namespace A097707.P7736301116736437842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A102074 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097707.P7736301116736437842

/-! ## A097707.P9295263729011080216

`∏[gcd(xor(n, -1), A326313(n+1))]`
-/

namespace A097707.P9295263729011080216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A326313 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097707.P9295263729011080216

/-! ## A097707.P15555728213079941252

`a(n-2)*A097706(∑[n])` with `a(0)=1, a(1)=1`
-/

namespace A097707.P15555728213079941252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A097706 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097707.P15555728213079941252

/-!
# A097708: Sum of prime-length repunits: Sum_{k=1..n} r(prime(k)), where r()=A002275.

The programs for A097708, there is no canonical definition to state claims against.
-/

/-! ## A097708.P1895989611550901334

`∑[record[A063671(n)]]-10`
-/

namespace A097708.P1895989611550901334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063671 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 10

end

end A097708.P1895989611550901334

/-! ## A097708.P14512334518026853311

`∑[record[A063672(n+1)]]-1`
-/

namespace A097708.P14512334518026853311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063672 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097708.P14512334518026853311

/-! ## A097708.P4124013053280464797

`∑[record[A019328(n+1)]]-9`
-/

namespace A097708.P4124013053280464797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019328 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 9

end

end A097708.P4124013053280464797

/-! ## A097708.P7915782674793172277

`∑[A002275(record[A047814(n)])]`
-/

namespace A097708.P7915782674793172277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097708.P7915782674793172277

/-! ## A097708.P6127356439084757752

`∑[A002275(record[A008472(n+1)])]`
-/

namespace A097708.P6127356439084757752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097708.P6127356439084757752

/-!
# A097710: Lower triangular matrix T, read by rows, such that row (n) is formed from the sums of adjacent terms in row (n-1) of the matrix square T^2, with T(0,0)=1.

The programs for A097710, there is no canonical definition to state claims against.
-/

/-! ## A097710.P13176170826205313820

`A227394(A096294(n)+1)`
-/

namespace A097710.P13176170826205313820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A096294 n + 1).toNat

end

end A097710.P13176170826205313820

/-! ## A097710.P6252087072117473761

`A325400(round(A380119(n)/A005117(n+1)))`
-/

namespace A097710.P6252087072117473761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (SequenceMachineLib.roundAway ((A380119 n : ℚ) / (A005117 (n + 1) : ℚ))).toNat

end

end A097710.P6252087072117473761

/-!
# A097711: Column 1 of triangle A097710, in which row (n) is formed from the sums of the adjacent terms in row (n-1) of the matrix square of A097710.

The programs for A097711, there is no canonical definition to state claims against.
-/

/-! ## A097711.P3414526219188438378

`A097710(∑[n+1]+1)`
-/

namespace A097711.P3414526219188438378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097710 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097711.P3414526219188438378

/-! ## A097711.P12598410438235057121

`record[A097710(A286235(n+1))]`
-/

namespace A097711.P12598410438235057121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097710 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097711.P12598410438235057121

/-! ## A097711.P12805687306033436307

`record[A097710(gcd(n, A098825(n)))]`
-/

namespace A097711.P12805687306033436307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097710 (Int.gcd (n : ℤ) (A098825 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097711.P12805687306033436307

/-! ## A097711.P2363025625713639861

`record[gcd(A097710(n), A298645(n+1))]`
-/

namespace A097711.P2363025625713639861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097710 n) (A298645 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097711.P2363025625713639861

/-! ## A097711.P3409738336363538315

`gcd(A000038(n), A097710(A134869(n+1)))`
-/

namespace A097711.P3409738336363538315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A097710 (A134869 (n + 1)).toNat)

end

end A097711.P3409738336363538315

/-!
# A097713: Column 1 of triangle A097712.

The programs for A097713, there is no canonical definition to state claims against.
-/

/-! ## A097713.P7008040294402011716

`∑[A016121(n)]`
-/

namespace A097713.P7008040294402011716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097713.P7008040294402011716

/-! ## A097713.P7233076175178290785

`record[ratio[A097712(n)]]`
-/

namespace A097713.P7233076175178290785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097712 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097713.P7233076175178290785

/-! ## A097713.P1420492339656369668

`A097712(∑[n+1]+1)`
-/

namespace A097713.P1420492339656369668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097712 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A097713.P1420492339656369668

/-! ## A097713.P6748157221722095694

`a(n-1)+A016121(A000007(n)+n)` with `a(0)=1`
-/

namespace A097713.P6748157221722095694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A016121 (A000007 n + (n : ℤ)).toNat

end

end A097713.P6748157221722095694

/-! ## A097713.P11095870152234461730

`∑[∑[A125862(abs(1-n))]-2]`
-/

namespace A097713.P11095870152234461730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125862 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097713.P11095870152234461730

/-!
# A097714: Repeatedly convert from sexagesimal to centesimal, starting with 60.

The programs for A097714, the canonical program `A097714.P15878728032069178247` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097714 has offset 1).

The definition of A097714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097714.P15878728032069178247

`100*floor(a(n-1)/60)+a(n-1)%60` with `a(0)=60`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097714

/-- `100*floor(a(n-1)/60)+a(n-1)%60` -/
def P15878728032069178247.Spec : Prop :=
  ∀ n, P15878728032069178247.a n = A097714 (n + 1)

theorem P15878728032069178247.correct : P15878728032069178247.Spec := by
  intro n
  simp only [A097714, Nat.add_sub_cancel]

end A097714

/-! ## A097714.P5995595785865683964

`20*A309424(A283587(n))`
-/

namespace A097714.P5995595785865683964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A309424 (A283587 n).toNat

end

end A097714.P5995595785865683964

namespace A097714

/-- `20*A309424(A283587(n))` -/
def P5995595785865683964.Spec : Prop :=
  ∀ n, P5995595785865683964.a n = A097714 (n + 1)

end A097714

/-!
# A097716: Left-hand edge of triangle in A097474.

The programs for A097716, there is no canonical definition to state claims against.
-/

/-! ## A097716.P7740331540294925214

`A097474(∑[n])`
-/

namespace A097716.P7740331540294925214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097474 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097716.P7740331540294925214

/-! ## A097716.P15689161207144880984

`A097474(A000217(n))^A178334(n)`
-/

namespace A097716.P15689161207144880984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097474 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A097716.P15689161207144880984

/-! ## A097716.P19025475031524016

`or(A000007(n), A097474(A000217(n)))`
-/

namespace A097716.P19025475031524016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A097474 (A000217 n).toNat)

end

end A097716.P19025475031524016

/-! ## A097716.P18255240306243666024

`or(A097474(A000217(n)), A097479(n))`
-/

namespace A097716.P18255240306243666024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097474 (A000217 n).toNat) (A097479 n)

end

end A097716.P18255240306243666024

/-! ## A097716.P5527416128799791489

`A097474(A000217(n))*A161618(n+1)`
-/

namespace A097716.P5527416128799791489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097474 (A000217 n).toNat * A161618 (n + 1)

end

end A097716.P5527416128799791489

/-!
# A097722: Greatest prime that differs from prime(n) in decimal representation by exactly one editing operation: deletion, insertion, or substitution.

The programs for A097722, there is no canonical definition to state claims against.
-/

/-! ## A097722.P5427923303428818237

`A389720(A000040(n+1))`
-/

namespace A097722.P5427923303428818237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389720 (A000040 (n + 1)).toNat

end

end A097722.P5427923303428818237

/-! ## A097722.P16306762030955479469

`A389720(A095320(n+1))`
-/

namespace A097722.P16306762030955479469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389720 (A095320 (n + 1)).toNat

end

end A097722.P16306762030955479469

/-! ## A097722.P10294060437294040445

`A389720(A216883(n+1))`
-/

namespace A097722.P10294060437294040445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389720 (A216883 (n + 1)).toNat

end

end A097722.P10294060437294040445

/-! ## A097722.P16909070467444314197

`A389720(A216884(n+1))`
-/

namespace A097722.P16909070467444314197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389720 (A216884 (n + 1)).toNat

end

end A097722.P16909070467444314197

/-! ## A097722.P3405694311317935618

`A389720(A216885(n+1))`
-/

namespace A097722.P3405694311317935618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389720 (A216885 (n + 1)).toNat

end

end A097722.P3405694311317935618

/-!
# A097723: One fourth of sum of divisors of 4n+3.

The programs for A097723, the canonical program `A097723.P13563129184217168417` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097723 has offset 0).

The definition of A097723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097723.P13563129184217168417

`A000203(4*n+3)/4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097723

/-- `A000203(4*n+3)/4` -/
def P13563129184217168417.Spec : Prop :=
  ∀ n, P13563129184217168417.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P4628745054644035112

`∑{d}[4*n+3, #/4]`
-/

namespace A097723.P4628745054644035112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 4

end

end A097723.P4628745054644035112

namespace A097723

/-- `∑{d}[4*n+3, #/4]` -/
def P4628745054644035112.Spec : Prop :=
  ∀ n, P4628745054644035112.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P4230853111274475619

`A239053(n+1)/4`
-/

namespace A097723.P4230853111274475619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239053 (n + 1) : ℚ) / 4

end

end A097723.P4230853111274475619

namespace A097723

/-- `A239053(n+1)/4` -/
def P4230853111274475619.Spec : Prop :=
  ∀ n, P4230853111274475619.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P9244759505164322477

`A008438(Δ[n²])/4`
-/

namespace A097723.P9244759505164322477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008438 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4

end

end A097723.P9244759505164322477

namespace A097723

/-- `A008438(Δ[n²])/4` -/
def P9244759505164322477.Spec : Prop :=
  ∀ n, P9244759505164322477.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P12237694044999919389

`A364082(n+1)+A364085(n+1)-A078703(n+1)`
-/

namespace A097723.P12237694044999919389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (n + 1) + (A364085 (n + 1) - A078703 (n + 1))

end

end A097723.P12237694044999919389

namespace A097723

/-- `A364082(n+1)+A364085(n+1)-A078703(n+1)` -/
def P12237694044999919389.Spec : Prop :=
  ∀ n, P12237694044999919389.a n = A097723 n

end A097723

/-! ## A097723.P5944938895833977227

`A005880(2*n+1)/8`
-/

namespace A097723.P5944938895833977227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005880 (2 * n + 1) : ℚ) / 8

end

end A097723.P5944938895833977227

namespace A097723

/-- `A005880(2*n+1)/8` -/
def P5944938895833977227.Spec : Prop :=
  ∀ n, P5944938895833977227.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P2329695594676335928

`A121613(2*n+1)/(A174971(2*n+1)-1)`
-/

namespace A097723.P2329695594676335928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121613 (2 * n + 1) : ℚ) / (A174971 (2 * n + 1) - 1 : ℚ)

end

end A097723.P2329695594676335928

namespace A097723

/-- `A121613(2*n+1)/(A174971(2*n+1)-1)` -/
def P2329695594676335928.Spec : Prop :=
  ∀ n, P2329695594676335928.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P14756067438259824608

`A005879(2*n+1)/A005879(A340346(2*n+1))`
-/

namespace A097723.P14756067438259824608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005879 (2 * n + 1) : ℚ) / (A005879 (A340346 (2 * n + 1)).toNat : ℚ)

end

end A097723.P14756067438259824608

namespace A097723

/-- `A005879(2*n+1)/A005879(A340346(2*n+1))` -/
def P14756067438259824608.Spec : Prop :=
  ∀ n, P14756067438259824608.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P12083586367377595166

`A025480(A008438(2*n+1)/2)`
-/

namespace A097723.P12083586367377595166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((A008438 (2 * n + 1) : ℚ) / 2)).toNat

end

end A097723.P12083586367377595166

namespace A097723

/-- `A025480(A008438(2*n+1)/2)` -/
def P12083586367377595166.Spec : Prop :=
  ∀ n, P12083586367377595166.a n = A097723 n

end A097723

/-! ## A097723.P16489308960280218297

`A026741(A008438(2*n+1)/2)`
-/

namespace A097723.P16489308960280218297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A008438 (2 * n + 1) : ℚ) / 2)).toNat

end

end A097723.P16489308960280218297

namespace A097723

/-- `A026741(A008438(2*n+1)/2)` -/
def P16489308960280218297.Spec : Prop :=
  ∀ n, P16489308960280218297.a n = A097723 n

end A097723

/-! ## A097723.P13795299011466392761

`A132882(3*n+n+3)/4`
-/

namespace A097723.P13795299011466392761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132882 (3 * n + (n + 3)) : ℚ) / 4

end

end A097723.P13795299011466392761

namespace A097723

/-- `A132882(3*n+n+3)/4` -/
def P13795299011466392761.Spec : Prop :=
  ∀ n, P13795299011466392761.a n = (A097723 n : ℚ)

end A097723

/-! ## A097723.P18410602786259714962

`A002265(A239053(n+1))`
-/

namespace A097723.P18410602786259714962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A239053 (n + 1)).toNat

end

end A097723.P18410602786259714962

namespace A097723

/-- `A002265(A239053(n+1))` -/
def P18410602786259714962.Spec : Prop :=
  ∀ n, P18410602786259714962.a n = A097723 n

end A097723

/-! ## A097723.P16328217405582631090

`A316631(A008438(2*n+1))`
-/

namespace A097723.P16328217405582631090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (A008438 (2 * n + 1)).toNat

end

end A097723.P16328217405582631090

namespace A097723

/-- `A316631(A008438(2*n+1))` -/
def P16328217405582631090.Spec : Prop :=
  ∀ n, P16328217405582631090.a n = A097723 n

end A097723

/-! ## A097723.P8861984440238220586

`A002265(A000203(4*n+3))`
-/

namespace A097723.P8861984440238220586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000203 (4 * n + 3)).toNat

end

end A097723.P8861984440238220586

namespace A097723

/-- `A002265(A000203(4*n+3))` -/
def P8861984440238220586.Spec : Prop :=
  ∀ n, P8861984440238220586.a n = A097723 n

end A097723

/-! ## A097723.P12135886028345340738

`A025480(A008438(2*n+1)+1)`
-/

namespace A097723.P12135886028345340738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A008438 (2 * n + 1) + 1).toNat

end

end A097723.P12135886028345340738

namespace A097723

/-- `A025480(A008438(2*n+1)+1)` -/
def P12135886028345340738.Spec : Prop :=
  ∀ n, P12135886028345340738.a n = A097723 n

end A097723

/-! ## A097723.P16774598529528028393

`A060819(A000203(A014601(2*n+1)))`
-/

namespace A097723.P16774598529528028393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A000203 (A014601 (2 * n + 1)).toNat).toNat

end

end A097723.P16774598529528028393

namespace A097723

/-- `A060819(A000203(A014601(2*n+1)))` -/
def P16774598529528028393.Spec : Prop :=
  ∀ n, P16774598529528028393.a n = A097723 n

end A097723

/-! ## A097723.P1861816716284226045

`A075884(A000203(A123167(2*(n+1))))`
-/

namespace A097723.P1861816716284226045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075884 (A000203 (A123167 (2 * (n + 1))).toNat).toNat

end

end A097723.P1861816716284226045

namespace A097723

/-- `A075884(A000203(A123167(2*(n+1))))` -/
def P1861816716284226045.Spec : Prop :=
  ∀ n, P1861816716284226045.a n = A097723 n

end A097723

/-! ## A097723.P10426364009629711768

`A026741(A026741(A008438(A026741(2*n+1))))`
-/

namespace A097723.P10426364009629711768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A008438 (A026741 (2 * n + 1)).toNat).toNat).toNat

end

end A097723.P10426364009629711768

namespace A097723

/-- `A026741(A026741(A008438(A026741(2*n+1))))` -/
def P10426364009629711768.Spec : Prop :=
  ∀ n, P10426364009629711768.a n = A097723 n

end A097723

/-! ## A097723.P16672387226903859942

`A051724(A000203(8*n+6))`
-/

namespace A097723.P16672387226903859942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A000203 (8 * n + 6)).toNat

end

end A097723.P16672387226903859942

namespace A097723

/-- `A051724(A000203(8*n+6))` -/
def P16672387226903859942.Spec : Prop :=
  ∀ n, P16672387226903859942.a n = A097723 n

end A097723

/-!
# A097725: Chebyshev U(n,x) polynomial evaluated at x=51.

The programs for A097725, the canonical program `A097725.P11119606442903150929` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097725 has offset 0).

The definition of A097725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097725.P11119606442903150929

`102*a(n-1)-a(n-2)` with `a(0)=1, a(1)=102`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097725

/-- `102*a(n-1)-a(n-2)` -/
def P11119606442903150929.Spec : Prop :=
  ∀ n, P11119606442903150929.a n = A097725 n

theorem P11119606442903150929.correct : P11119606442903150929.Spec := by
  intro n
  simp only [A097725]

end A097725

/-! ## A097725.P4575640310604555479

`((51+10*sqrt(26))^(n+1)-(51-10*sqrt(26))^(n+1))/(20*sqrt(26))`
-/

namespace A097725.P4575640310604555479
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((51 + 10 * Real.sqrt (26 : ℝ)) ^ (n + 1) - (51 - 10 * Real.sqrt (26 : ℝ)) ^ (n + 1)) / (20 * Real.sqrt (26 : ℝ))

end

end A097725.P4575640310604555479

namespace A097725

/-- `((51+10*sqrt(26))^(n+1)-(51-10*sqrt(26))^(n+1))/(20*sqrt(26))` -/
def P4575640310604555479.Spec : Prop :=
  ∀ n, P4575640310604555479.a n = (A097725 n : ℝ)

theorem P4575640310604555479.correct : P4575640310604555479.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A097725, Nat.add_sub_cancel, A097725.P4575640310604555479.a, A097725.P11119606442903150929.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A097725, Nat.add_sub_cancel, A097725.P4575640310604555479.a, A097725.P11119606442903150929.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097725

/-! ## A097725.P2167821485139996745

`∑[A097727(n)]`
-/

namespace A097725.P2167821485139996745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097725.P2167821485139996745

namespace A097725

/-- `∑[A097727(n)]` -/
def P2167821485139996745.Spec : Prop :=
  ∀ n, P2167821485139996745.a n = A097725 n

end A097725

/-! ## A097725.P9235385159415494505

`∑[A041041(2*n)]`
-/

namespace A097725.P9235385159415494505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097725.P9235385159415494505

namespace A097725

/-- `∑[A041041(2*n)]` -/
def P9235385159415494505.Spec : Prop :=
  ∀ n, P9235385159415494505.a n = A097725 n

end A097725

/-! ## A097725.P16181890098870854792

`∑[A041187(2*n)]`
-/

namespace A097725.P16181890098870854792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041187 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097725.P16181890098870854792

namespace A097725

/-- `∑[A041187(2*n)]` -/
def P16181890098870854792.Spec : Prop :=
  ∀ n, P16181890098870854792.a n = A097725 n

end A097725

/-! ## A097725.P12322518688207816447

`∑[A042249(2*n)]`
-/

namespace A097725.P12322518688207816447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042249 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097725.P12322518688207816447

namespace A097725

/-- `∑[A042249(2*n)]` -/
def P12322518688207816447.Spec : Prop :=
  ∀ n, P12322518688207816447.a n = A097725 n

end A097725

/-! ## A097725.P136920232732318814

`A162671(2*(n+1))`
-/

namespace A097725.P136920232732318814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162671 (2 * (n + 1))

end

end A097725.P136920232732318814

namespace A097725

/-- `A162671(2*(n+1))` -/
def P136920232732318814.Spec : Prop :=
  ∀ n, P136920232732318814.a n = A097725 n

end A097725

/-! ## A097725.P7114504410287186743

`∑[A109107(2*n)/2]`
-/

namespace A097725.P7114504410287186743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109107 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097725.P7114504410287186743

namespace A097725

/-- `∑[A109107(2*n)/2]` -/
def P7114504410287186743.Spec : Prop :=
  ∀ n, P7114504410287186743.a n = (A097725 n : ℚ)

end A097725

/-! ## A097725.P11046756468878994786

`A097726(n)-a(n-1)` with `a(0)=1`
-/

namespace A097725.P11046756468878994786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097726 n - a (n - 1)

end

end A097725.P11046756468878994786

namespace A097725

/-- `A097726(n)-a(n-1)` -/
def P11046756468878994786.Spec : Prop :=
  ∀ n, P11046756468878994786.a n = A097725 n

end A097725

/-!
# A097726: Pell equation solutions (5*a(n))^2 - 26*b(n)^2 = -1 with b(n):=A097727(n), n >= 0.

The programs for A097726, the canonical program `A097726.P12214426166626198805` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097726 has offset 0).

The definition of A097726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097726.P12214426166626198805

`102*a(n-1)-a(n-2)` with `a(0)=1, a(1)=103`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097726

/-- `102*a(n-1)-a(n-2)` -/
def P12214426166626198805.Spec : Prop :=
  ∀ n, P12214426166626198805.a n = A097726 n

theorem P12214426166626198805.correct : P12214426166626198805.Spec := by
  intro n
  simp only [A097726]

end A097726

/-! ## A097726.P4925857120970227220

`A041040(2*n)/5`
-/

namespace A097726.P4925857120970227220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041040 (2 * n) : ℚ) / 5

end

end A097726.P4925857120970227220

namespace A097726

/-- `A041040(2*n)/5` -/
def P4925857120970227220.Spec : Prop :=
  ∀ n, P4925857120970227220.a n = (A097726 n : ℚ)

end A097726

/-! ## A097726.P8233429447344118863

`∑[A086927(2*n)]-1`
-/

namespace A097726.P8233429447344118863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086927 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097726.P8233429447344118863

namespace A097726

/-- `∑[A086927(2*n)]-1` -/
def P8233429447344118863.Spec : Prop :=
  ∀ n, P8233429447344118863.a n = A097726 n

end A097726

/-! ## A097726.P18048493329440139395

`A088320(2*n+1)/5`
-/

namespace A097726.P18048493329440139395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088320 (2 * n + 1) : ℚ) / 5

end

end A097726.P18048493329440139395

namespace A097726

/-- `A088320(2*n+1)/5` -/
def P18048493329440139395.Spec : Prop :=
  ∀ n, P18048493329440139395.a n = (A097726 n : ℚ)

end A097726

/-! ## A097726.P12339201452381043749

`2*A097725(n)-A097727(n)`
-/

namespace A097726.P12339201452381043749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097725 n - A097727 n

end

end A097726.P12339201452381043749

namespace A097726

/-- `2*A097725(n)-A097727(n)` -/
def P12339201452381043749.Spec : Prop :=
  ∀ n, P12339201452381043749.a n = A097726 n

end A097726

/-! ## A097726.P8628324491297867363

`A042249(2*n+1)-A042249(2*n)`
-/

namespace A097726.P8628324491297867363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042249 (2 * n + 1) - A042249 (2 * n)

end

end A097726.P8628324491297867363

namespace A097726

/-- `A042249(2*n+1)-A042249(2*n)` -/
def P8628324491297867363.Spec : Prop :=
  ∀ n, P8628324491297867363.a n = A097726 n

end A097726

/-!
# A097727: Pell equation solutions (5*b(n))^2 - 26*a(n)^2 = -1 with b(n) = A097726(n), n >= 0.

The programs for A097727, the canonical program `A097727.P11759565097320254249` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097727 has offset 0).

The definition of A097727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097727.P11759565097320254249

`102*a(n-1)-a(n-2)` with `a(0)=1, a(1)=101`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097727

/-- `102*a(n-1)-a(n-2)` -/
def P11759565097320254249.Spec : Prop :=
  ∀ n, P11759565097320254249.a n = A097727 n

theorem P11759565097320254249.correct : P11759565097320254249.Spec := by
  intro n
  simp only [A097727]

end A097727

/-! ## A097727.P4217397001457388177

`A041041(2*n)`
-/

namespace A097727.P4217397001457388177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 (2 * n)

end

end A097727.P4217397001457388177

namespace A097727

/-- `A041041(2*n)` -/
def P4217397001457388177.Spec : Prop :=
  ∀ n, P4217397001457388177.a n = A097727 n

end A097727

/-! ## A097727.P13099770820333895041

`A041187(2*n)`
-/

namespace A097727.P13099770820333895041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041187 (2 * n)

end

end A097727.P13099770820333895041

namespace A097727

/-- `A041187(2*n)` -/
def P13099770820333895041.Spec : Prop :=
  ∀ n, P13099770820333895041.a n = A097727 n

end A097727

/-! ## A097727.P14629737270843624043

`A042249(2*n)`
-/

namespace A097727.P14629737270843624043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042249 (2 * n)

end

end A097727.P14629737270843624043

namespace A097727

/-- `A042249(2*n)` -/
def P14629737270843624043.Spec : Prop :=
  ∀ n, P14629737270843624043.a n = A097727 n

end A097727

/-! ## A097727.P13199093859903961569

`A162671(Δ[n²])`
-/

namespace A097727.P13199093859903961569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162671 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A097727.P13199093859903961569

namespace A097727

/-- `A162671(Δ[n²])` -/
def P13199093859903961569.Spec : Prop :=
  ∀ n, P13199093859903961569.a n = A097727 n

end A097727

/-! ## A097727.P2240393283772704369

`Δ[A162671(2*n)]`
-/

namespace A097727.P2240393283772704369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162671 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097727.P2240393283772704369

namespace A097727

/-- `Δ[A162671(2*n)]` -/
def P2240393283772704369.Spec : Prop :=
  ∀ n, P2240393283772704369.a n = A097727 n

end A097727

/-! ## A097727.P7832310853148078078

`A195573(3*n+1)`
-/

namespace A097727.P7832310853148078078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195573 (3 * n + 1)

end

end A097727.P7832310853148078078

namespace A097727

/-- `A195573(3*n+1)` -/
def P7832310853148078078.Spec : Prop :=
  ∀ n, P7832310853148078078.a n = A097727 n

end A097727

/-! ## A097727.P12676816901608564507

`A109107(2*n)/2`
-/

namespace A097727.P12676816901608564507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109107 (2 * n) : ℚ) / 2

end

end A097727.P12676816901608564507

namespace A097727

/-- `A109107(2*n)/2` -/
def P12676816901608564507.Spec : Prop :=
  ∀ n, P12676816901608564507.a n = (A097727 n : ℚ)

end A097727

/-! ## A097727.P9092786642842567418

`A155199(2*n+1)/9`
-/

namespace A097727.P9092786642842567418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155199 (2 * n + 1) : ℚ) / 9

end

end A097727.P9092786642842567418

namespace A097727

/-- `A155199(2*n+1)/9` -/
def P9092786642842567418.Spec : Prop :=
  ∀ n, P9092786642842567418.a n = (A097727 n : ℚ)

end A097727

/-! ## A097727.P11436217722093363009

`record[gcd(val(n+1, 2), A041041(n))]`
-/

namespace A097727.P11436217722093363009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A041041 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097727.P11436217722093363009

namespace A097727

/-- `record[gcd(val(n+1, 2), A041041(n))]` -/
def P11436217722093363009.Spec : Prop :=
  ∀ n, (P11436217722093363009.a n : ℤ) = A097727 n

end A097727

/-!
# A097728: Chebyshev U(n,x) polynomial evaluated at x=73 = 2*6^2+1.

The programs for A097728, the canonical program `A097728.P9245491669389556260` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097728 has offset 0).

The definition of A097728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097728.P9245491669389556260

`((73+12*sqrt(37))^(n+1)-(73-12*sqrt(37))^(n+1))/(24*sqrt(37))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097728

/-- `((73+12*sqrt(37))^(n+1)-(73-12*sqrt(37))^(n+1))/(24*sqrt(37))` -/
def P9245491669389556260.Spec : Prop :=
  ∀ n, P9245491669389556260.a n = (A097728 n : ℝ)

end A097728

/-! ## A097728.P13187707763006519022

`2*73*a(n-1)-a(n-2)` with `a(0)=1, a(1)=146`
-/

namespace A097728.P13187707763006519022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 146] fun n a =>
  2 * (73 * a (n - 1)) - a (n - 2)

end

end A097728.P13187707763006519022

namespace A097728

/-- `2*73*a(n-1)-a(n-2)` -/
def P13187707763006519022.Spec : Prop :=
  ∀ n, P13187707763006519022.a n = A097728 n

end A097728

/-! ## A097728.P833745162620999535

`∑[A097730(n)]`
-/

namespace A097728.P833745162620999535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097728.P833745162620999535

namespace A097728

/-- `∑[A097730(n)]` -/
def P833745162620999535.Spec : Prop :=
  ∀ n, P833745162620999535.a n = A097728 n

end A097728

/-! ## A097728.P12209719560157932357

`∑[A041061(2*n)]`
-/

namespace A097728.P12209719560157932357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041061 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097728.P12209719560157932357

namespace A097728

/-- `∑[A041061(2*n)]` -/
def P12209719560157932357.Spec : Prop :=
  ∀ n, P12209719560157932357.a n = A097728 n

end A097728

/-! ## A097728.P12464601566493816520

`∑[A041271(2*n)]`
-/

namespace A097728.P12464601566493816520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041271 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097728.P12464601566493816520

namespace A097728

/-- `∑[A041271(2*n)]` -/
def P12464601566493816520.Spec : Prop :=
  ∀ n, P12464601566493816520.a n = A097728 n

end A097728

/-!
# A097729: Pell equation solutions (6*a(n))^2 - 37*b(n)^2 = -1 with b(n):=A097730(n), n >= 0.

The programs for A097729, the canonical program `A097729.P18330606790113630625` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097729 has offset 0).

The definition of A097729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097729.P18330606790113630625

`146*a(n-1)-a(n-2)` with `a(0)=1, a(1)=147`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097729

/-- `146*a(n-1)-a(n-2)` -/
def P18330606790113630625.Spec : Prop :=
  ∀ n, P18330606790113630625.a n = A097729 n

theorem P18330606790113630625.correct : P18330606790113630625.Spec := by
  intro n
  simp only [A097729]

end A097729

/-! ## A097729.P6034725947520014719

`∑[A086928(2*n)]-1`
-/

namespace A097729.P6034725947520014719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086928 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097729.P6034725947520014719

namespace A097729

/-- `∑[A086928(2*n)]-1` -/
def P6034725947520014719.Spec : Prop :=
  ∀ n, P6034725947520014719.a n = A097729 n

end A097729

/-! ## A097729.P8701970490934213061

`2*A097728(n)-A097730(n)`
-/

namespace A097729.P8701970490934213061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097728 n - A097730 n

end

end A097729.P8701970490934213061

namespace A097729

/-- `2*A097728(n)-A097730(n)` -/
def P8701970490934213061.Spec : Prop :=
  ∀ n, P8701970490934213061.a n = A097729 n

end A097729

/-! ## A097729.P17038625960219350529

`A041060(2*n)/6`
-/

namespace A097729.P17038625960219350529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041060 (2 * n) : ℚ) / 6

end

end A097729.P17038625960219350529

namespace A097729

/-- `A041060(2*n)/6` -/
def P17038625960219350529.Spec : Prop :=
  ∀ n, P17038625960219350529.a n = (A097729 n : ℚ)

end A097729

/-! ## A097729.P8198852380019060743

`A086928(Δ[n²])/12`
-/

namespace A097729.P8198852380019060743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 12

end

end A097729.P8198852380019060743

namespace A097729

/-- `A086928(Δ[n²])/12` -/
def P8198852380019060743.Spec : Prop :=
  ∀ n, P8198852380019060743.a n = (A097729 n : ℚ)

end A097729

/-!
# A097730: Pell equation solutions (6*b(n))^2 - 37*a(n)^2 = -1 with b(n) = A097729(n), n >= 0.

The programs for A097730, the canonical program `A097730.P5868567193047876682` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097730 has offset 0).

The definition of A097730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097730.P5868567193047876682

`146*a(n-1)-a(n-2)` with `a(0)=1, a(1)=145`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097730

/-- `146*a(n-1)-a(n-2)` -/
def P5868567193047876682.Spec : Prop :=
  ∀ n, P5868567193047876682.a n = A097730 n

theorem P5868567193047876682.correct : P5868567193047876682.Spec := by
  intro n
  simp only [A097730]

end A097730

/-! ## A097730.P12587453687936154574

`A041061(2*n)`
-/

namespace A097730.P12587453687936154574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041061 (2 * n)

end

end A097730.P12587453687936154574

namespace A097730

/-- `A041061(2*n)` -/
def P12587453687936154574.Spec : Prop :=
  ∀ n, P12587453687936154574.a n = A097730 n

end A097730

/-! ## A097730.P9718592078640178718

`A041271(2*n)`
-/

namespace A097730.P9718592078640178718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041271 (2 * n)

end

end A097730.P9718592078640178718

namespace A097730

/-- `A041271(2*n)` -/
def P9718592078640178718.Spec : Prop :=
  ∀ n, P9718592078640178718.a n = A097730 n

end A097730

/-! ## A097730.P16549451445142801604

`A041629(2*n)`
-/

namespace A097730.P16549451445142801604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041629 (2 * n)

end

end A097730.P16549451445142801604

namespace A097730

/-- `A041629(2*n)` -/
def P16549451445142801604.Spec : Prop :=
  ∀ n, P16549451445142801604.a n = A097730 n

end A097730

/-! ## A097730.P1663242247207281753

`A042135(2*n)`
-/

namespace A097730.P1663242247207281753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042135 (2 * n)

end

end A097730.P1663242247207281753

namespace A097730

/-- `A042135(2*n)` -/
def P1663242247207281753.Spec : Prop :=
  ∀ n, P1663242247207281753.a n = A097730 n

end A097730

/-!
# A097731: Chebyshev U(n,x) polynomial evaluated at x=99 gives 2*7^2+1.

The programs for A097731, the canonical program `A097731.P2724338107668955682` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097731 has offset 0).

The definition of A097731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097731.P2724338107668955682

`((99+70*sqrt(2))^(n+1)-(99-70*sqrt(2))^(n+1))/(140*sqrt(2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097731

/-- `((99+70*sqrt(2))^(n+1)-(99-70*sqrt(2))^(n+1))/(140*sqrt(2))` -/
def P2724338107668955682.Spec : Prop :=
  ∀ n, P2724338107668955682.a n = (A097731 n : ℝ)

end A097731

/-! ## A097731.P11834956430525248854

`2*99*a(n-1)-a(n-2)` with `a(0)=1, a(1)=198`
-/

namespace A097731.P11834956430525248854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 198] fun n a =>
  2 * (99 * a (n - 1)) - a (n - 2)

end

end A097731.P11834956430525248854

namespace A097731

/-- `2*99*a(n-1)-a(n-2)` -/
def P11834956430525248854.Spec : Prop :=
  ∀ n, P11834956430525248854.a n = A097731 n

end A097731

/-! ## A097731.P8128441863725097190

`∑[A097733(n)]`
-/

namespace A097731.P8128441863725097190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097731.P8128441863725097190

namespace A097731

/-- `∑[A097733(n)]` -/
def P8128441863725097190.Spec : Prop :=
  ∀ n, P8128441863725097190.a n = A097731 n

end A097731

/-! ## A097731.P3663130095618342998

`∑[A041085(2*n)]`
-/

namespace A097731.P3663130095618342998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041085 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097731.P3663130095618342998

namespace A097731

/-- `∑[A041085(2*n)]` -/
def P3663130095618342998.Spec : Prop :=
  ∀ n, P3663130095618342998.a n = A097731 n

end A097731

/-! ## A097731.P5387205198586808560

`∑[A041371(2*n)]`
-/

namespace A097731.P5387205198586808560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097731.P5387205198586808560

namespace A097731

/-- `∑[A041371(2*n)]` -/
def P5387205198586808560.Spec : Prop :=
  ∀ n, P5387205198586808560.a n = A097731 n

end A097731

/-!
# A097732: Pell equation solutions (7*a(n))^2 - 2*(5*b(n))^2 = -1 with b(n):=A097733(n), n >= 0. Note that D=50=2*5^2 is not squarefree.

The programs for A097732, the canonical program `A097732.P5095835172382865306` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097732 has offset 0).

The definition of A097732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097732.P5095835172382865306

`198*a(n-1)-a(n-2)` with `a(0)=1, a(1)=199`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097732

/-- `198*a(n-1)-a(n-2)` -/
def P5095835172382865306.Spec : Prop :=
  ∀ n, P5095835172382865306.a n = A097732 n

theorem P5095835172382865306.correct : P5095835172382865306.Spec := by
  intro n
  simp only [A097732]

end A097732

/-! ## A097732.P17471333417715592474

`∑[A099425(6*n)]`
-/

namespace A097732.P17471333417715592474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097732.P17471333417715592474

namespace A097732

/-- `∑[A099425(6*n)]` -/
def P17471333417715592474.Spec : Prop :=
  ∀ n, P17471333417715592474.a n = A097732 n

end A097732

/-! ## A097732.P3223181054024037229

`A041745(4*n+1)`
-/

namespace A097732.P3223181054024037229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041745 (4 * n + 1)

end

end A097732.P3223181054024037229

namespace A097732

/-- `A041745(4*n+1)` -/
def P3223181054024037229.Spec : Prop :=
  ∀ n, P3223181054024037229.a n = A097732 n

end A097732

/-! ## A097732.P17147054623201521887

`A041084(2*n)/7`
-/

namespace A097732.P17147054623201521887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041084 (2 * n) : ℚ) / 7

end

end A097732.P17147054623201521887

namespace A097732

/-- `A041084(2*n)/7` -/
def P17147054623201521887.Spec : Prop :=
  ∀ n, P17147054623201521887.a n = (A097732 n : ℚ)

end A097732

/-! ## A097732.P8743991765978867726

`∑[A090300(2*n)]-1`
-/

namespace A097732.P8743991765978867726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090300 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097732.P8743991765978867726

namespace A097732

/-- `∑[A090300(2*n)]-1` -/
def P8743991765978867726.Spec : Prop :=
  ∀ n, P8743991765978867726.a n = A097732 n

end A097732

/-!
# A097733: Pell equation solutions (7*b(n))^2 - 2*(5*a(n))^2 = -1 with b(n) = A097732(n), n >= 0. Note that D = 50 = 2*5^2 is not squarefree.

The programs for A097733, the canonical program `A097733.P6831716205488381978` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097733 has offset 0).

The definition of A097733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097733.P6831716205488381978

`198*a(n-1)-a(n-2)` with `a(0)=1, a(1)=197`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097733

/-- `198*a(n-1)-a(n-2)` -/
def P6831716205488381978.Spec : Prop :=
  ∀ n, P6831716205488381978.a n = A097733 n

theorem P6831716205488381978.correct : P6831716205488381978.Spec := by
  intro n
  simp only [A097733]

end A097733

/-! ## A097733.P11875830108429177860

`A003499(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A097733.P11875830108429177860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003499 (3 * n) - a (n - 1)

end

end A097733.P11875830108429177860

namespace A097733

/-- `A003499(3*n)-a(n-1)` -/
def P11875830108429177860.Spec : Prop :=
  ∀ n, P11875830108429177860.a n = A097733 n

end A097733

/-! ## A097733.P13733500810655904598

`A041085(2*n)`
-/

namespace A097733.P13733500810655904598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041085 (2 * n)

end

end A097733.P13733500810655904598

namespace A097733

/-- `A041085(2*n)` -/
def P13733500810655904598.Spec : Prop :=
  ∀ n, P13733500810655904598.a n = A097733 n

end A097733

/-! ## A097733.P11150872833417779548

`A041371(2*n)`
-/

namespace A097733.P11150872833417779548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041371 (2 * n)

end

end A097733.P11150872833417779548

namespace A097733

/-- `A041371(2*n)` -/
def P11150872833417779548.Spec : Prop :=
  ∀ n, P11150872833417779548.a n = A097733 n

end A097733

/-! ## A097733.P16033811861409917205

`A142588(2*n+1)/5`
-/

namespace A097733.P16033811861409917205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142588 (2 * n + 1) : ℚ) / 5

end

end A097733.P16033811861409917205

namespace A097733

/-- `A142588(2*n+1)/5` -/
def P16033811861409917205.Spec : Prop :=
  ∀ n, P16033811861409917205.a n = (A097733 n : ℚ)

end A097733

/-!
# A097734: Chebyshev U(n,x) polynomial evaluated at x=129 = 3*43.

The programs for A097734, the canonical program `A097734.P12621331912932687346` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097734 has offset 0).

The definition of A097734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097734.P12621331912932687346

`((129+16*sqrt(65))^(n+1)-(129-16*sqrt(65))^(n+1))/(32*sqrt(65))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097734

/-- `((129+16*sqrt(65))^(n+1)-(129-16*sqrt(65))^(n+1))/(32*sqrt(65))` -/
def P12621331912932687346.Spec : Prop :=
  ∀ n, P12621331912932687346.a n = (A097734 n : ℝ)

end A097734

/-! ## A097734.P16360343560500516691

`2*129*a(n-1)-a(n-2)` with `a(0)=1, a(1)=258`
-/

namespace A097734.P16360343560500516691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 258] fun n a =>
  2 * (129 * a (n - 1)) - a (n - 2)

end

end A097734.P16360343560500516691

namespace A097734

/-- `2*129*a(n-1)-a(n-2)` -/
def P16360343560500516691.Spec : Prop :=
  ∀ n, P16360343560500516691.a n = A097734 n

end A097734

/-! ## A097734.P12472451508851848809

`∑[A097736(n)]`
-/

namespace A097734.P12472451508851848809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097734.P12472451508851848809

namespace A097734

/-- `∑[A097736(n)]` -/
def P12472451508851848809.Spec : Prop :=
  ∀ n, P12472451508851848809.a n = A097734 n

end A097734

/-! ## A097734.P9851957099789718577

`∑[A041113(2*n)]`
-/

namespace A097734.P9851957099789718577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041113 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097734.P9851957099789718577

namespace A097734

/-- `∑[A041113(2*n)]` -/
def P9851957099789718577.Spec : Prop :=
  ∀ n, P9851957099789718577.a n = A097734 n

end A097734

/-! ## A097734.P1802252685999963192

`∑[A041487(2*n)]`
-/

namespace A097734.P1802252685999963192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041487 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097734.P1802252685999963192

namespace A097734

/-- `∑[A041487(2*n)]` -/
def P1802252685999963192.Spec : Prop :=
  ∀ n, P1802252685999963192.a n = A097734 n

end A097734

/-!
# A097735: Pell equation solutions (8*a(n))^2 - 65*b(n)^2 = -1 with b(n):=A097736(n), n >= 0.

The programs for A097735, the canonical program `A097735.P9663649999008401181` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097735 has offset 0).

The definition of A097735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097735.P9663649999008401181

`258*a(n-1)-a(n-2)` with `a(0)=1, a(1)=259`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097735

/-- `258*a(n-1)-a(n-2)` -/
def P9663649999008401181.Spec : Prop :=
  ∀ n, P9663649999008401181.a n = A097735 n

theorem P9663649999008401181.correct : P9663649999008401181.Spec := by
  intro n
  simp only [A097735]

end A097735

/-! ## A097735.P5033547214384238894

`A041112(2*n)/8`
-/

namespace A097735.P5033547214384238894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041112 (2 * n) : ℚ) / 8

end

end A097735.P5033547214384238894

namespace A097735

/-- `A041112(2*n)/8` -/
def P5033547214384238894.Spec : Prop :=
  ∀ n, P5033547214384238894.a n = (A097735 n : ℚ)

end A097735

/-! ## A097735.P4439543988637213837

`∑[A090305(2*n)]-1`
-/

namespace A097735.P4439543988637213837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090305 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097735.P4439543988637213837

namespace A097735

/-- `∑[A090305(2*n)]-1` -/
def P4439543988637213837.Spec : Prop :=
  ∀ n, P4439543988637213837.a n = A097735 n

end A097735

/-! ## A097735.P2243588381720074609

`2*A097734(n)-A097736(n)`
-/

namespace A097735.P2243588381720074609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097734 n - A097736 n

end

end A097735.P2243588381720074609

namespace A097735

/-- `2*A097734(n)-A097736(n)` -/
def P2243588381720074609.Spec : Prop :=
  ∀ n, P2243588381720074609.a n = A097735 n

end A097735

/-! ## A097735.P9756010636643248576

`A090305(A005408(n))/16`
-/

namespace A097735.P9756010636643248576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090305 (A005408 n).toNat : ℚ) / 16

end

end A097735.P9756010636643248576

namespace A097735

/-- `A090305(A005408(n))/16` -/
def P9756010636643248576.Spec : Prop :=
  ∀ n, P9756010636643248576.a n = (A097735 n : ℚ)

end A097735

/-!
# A097736: Pell equation solutions (8*b(n))^2 - 65*a(n)^2 = -1 with b(n) = A097735(n), n >= 0.

The programs for A097736, the canonical program `A097736.P1023776133720185312` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097736 has offset 0).

The definition of A097736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097736.P1023776133720185312

`258*a(n-1)-a(n-2)` with `a(0)=1, a(1)=257`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097736

/-- `258*a(n-1)-a(n-2)` -/
def P1023776133720185312.Spec : Prop :=
  ∀ n, P1023776133720185312.a n = A097736 n

theorem P1023776133720185312.correct : P1023776133720185312.Spec := by
  intro n
  simp only [A097736]

end A097736

/-! ## A097736.P10191297845863856886

`A041113(2*n)`
-/

namespace A097736.P10191297845863856886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041113 (2 * n)

end

end A097736.P10191297845863856886

namespace A097736

/-- `A041113(2*n)` -/
def P10191297845863856886.Spec : Prop :=
  ∀ n, P10191297845863856886.a n = A097736 n

end A097736

/-! ## A097736.P1054995005858533428

`A041487(2*n)`
-/

namespace A097736.P1054995005858533428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041487 (2 * n)

end

end A097736.P1054995005858533428

namespace A097736

/-- `A041487(2*n)` -/
def P1054995005858533428.Spec : Prop :=
  ∀ n, P1054995005858533428.a n = A097736 n

end A097736

/-! ## A097736.P18357427487408303476

`A042121(A047451(n+1))`
-/

namespace A097736.P18357427487408303476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042121 (A047451 (n + 1)).toNat

end

end A097736.P18357427487408303476

namespace A097736

/-- `A042121(A047451(n+1))` -/
def P18357427487408303476.Spec : Prop :=
  ∀ n, P18357427487408303476.a n = A097736 n

end A097736

/-! ## A097736.P1746943934249469606

`record[A041487(n)/A033999(n)]`
-/

namespace A097736.P1746943934249469606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041487 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097736.P1746943934249469606

namespace A097736

/-- `record[A041487(n)/A033999(n)]` -/
def P1746943934249469606.Spec : Prop :=
  ∀ n, P1746943934249469606.a n = (A097736 n : ℚ)

end A097736

/-!
# A097737: Chebyshev U(n,x) polynomial evaluated at x=163.

The programs for A097737, the canonical program `A097737.P3078568699673142782` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097737 has offset 0).

The definition of A097737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097737.P3078568699673142782

`((163+18*sqrt(82))^(n+1)-(163-18*sqrt(82))^(n+1))/(36*sqrt(82))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097737

/-- `((163+18*sqrt(82))^(n+1)-(163-18*sqrt(82))^(n+1))/(36*sqrt(82))` -/
def P3078568699673142782.Spec : Prop :=
  ∀ n, P3078568699673142782.a n = (A097737 n : ℝ)

end A097737

/-! ## A097737.P3598999891656047480

`2*163*a(n-1)-a(n-2)` with `a(0)=1, a(1)=326`
-/

namespace A097737.P3598999891656047480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 326] fun n a =>
  2 * (163 * a (n - 1)) - a (n - 2)

end

end A097737.P3598999891656047480

namespace A097737

/-- `2*163*a(n-1)-a(n-2)` -/
def P3598999891656047480.Spec : Prop :=
  ∀ n, P3598999891656047480.a n = A097737 n

end A097737

/-! ## A097737.P16665437236419982477

`∑[A097739(n)]`
-/

namespace A097737.P16665437236419982477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097737.P16665437236419982477

namespace A097737

/-- `∑[A097739(n)]` -/
def P16665437236419982477.Spec : Prop :=
  ∀ n, P16665437236419982477.a n = A097737 n

end A097737

/-! ## A097737.P9961236589625962776

`∑[A041145(2*n)]`
-/

namespace A097737.P9961236589625962776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041145 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097737.P9961236589625962776

namespace A097737

/-- `∑[A041145(2*n)]` -/
def P9961236589625962776.Spec : Prop :=
  ∀ n, P9961236589625962776.a n = A097737 n

end A097737

/-! ## A097737.P3147330910247709922

`∑[A041619(2*n)]`
-/

namespace A097737.P3147330910247709922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097737.P3147330910247709922

namespace A097737

/-- `∑[A041619(2*n)]` -/
def P3147330910247709922.Spec : Prop :=
  ∀ n, P3147330910247709922.a n = A097737 n

end A097737

/-!
# A097738: Pell equation solutions (9*a(n))^2 - 82*b(n)^2 = -1 with b(n):=A097739(n), n >= 0.

The programs for A097738, the canonical program `A097738.P13531765774211978018` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097738 has offset 0).

The definition of A097738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097738.P13531765774211978018

`326*a(n-1)-a(n-2)` with `a(0)=1, a(1)=327`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097738

/-- `326*a(n-1)-a(n-2)` -/
def P13531765774211978018.Spec : Prop :=
  ∀ n, P13531765774211978018.a n = A097738 n

theorem P13531765774211978018.correct : P13531765774211978018.Spec := by
  intro n
  simp only [A097738]

end A097738

/-! ## A097738.P9146603138284000904

`A041144(2*n)/9`
-/

namespace A097738.P9146603138284000904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041144 (2 * n) : ℚ) / 9

end

end A097738.P9146603138284000904

namespace A097738

/-- `A041144(2*n)/9` -/
def P9146603138284000904.Spec : Prop :=
  ∀ n, P9146603138284000904.a n = (A097738 n : ℚ)

end A097738

/-! ## A097738.P7302971911076795390

`∑[A090307(2*n)]-1`
-/

namespace A097738.P7302971911076795390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090307 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097738.P7302971911076795390

namespace A097738

/-- `∑[A090307(2*n)]-1` -/
def P7302971911076795390.Spec : Prop :=
  ∀ n, P7302971911076795390.a n = A097738 n

end A097738

/-! ## A097738.P9092188324484317350

`A090307(A005408(n))/18`
-/

namespace A097738.P9092188324484317350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090307 (A005408 n).toNat : ℚ) / 18

end

end A097738.P9092188324484317350

namespace A097738

/-- `A090307(A005408(n))/18` -/
def P9092188324484317350.Spec : Prop :=
  ∀ n, P9092188324484317350.a n = (A097738 n : ℚ)

end A097738

/-! ## A097738.P8727038141051243533

`2*A097737(n)-A097739(n)`
-/

namespace A097738.P8727038141051243533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097737 n - A097739 n

end

end A097738.P8727038141051243533

namespace A097738

/-- `2*A097737(n)-A097739(n)` -/
def P8727038141051243533.Spec : Prop :=
  ∀ n, P8727038141051243533.a n = A097738 n

end A097738

/-!
# A097739: Pell equation solutions (9*b(n))^2 - 82*a(n)^2 = -1 with b(n) = A097738(n), n >= 0.

The programs for A097739, the canonical program `A097739.P15598569974325785591` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097739 has offset 0).

The definition of A097739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097739.P15598569974325785591

`326*a(n-1)-a(n-2)` with `a(0)=1, a(1)=325`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097739

/-- `326*a(n-1)-a(n-2)` -/
def P15598569974325785591.Spec : Prop :=
  ∀ n, P15598569974325785591.a n = A097739 n

theorem P15598569974325785591.correct : P15598569974325785591.Spec := by
  intro n
  simp only [A097739]

end A097739

/-! ## A097739.P15116542361417626570

`A041145(2*n)`
-/

namespace A097739.P15116542361417626570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041145 (2 * n)

end

end A097739.P15116542361417626570

namespace A097739

/-- `A041145(2*n)` -/
def P15116542361417626570.Spec : Prop :=
  ∀ n, P15116542361417626570.a n = A097739 n

end A097739

/-! ## A097739.P9914661225426453917

`A041619(2*n)`
-/

namespace A097739.P9914661225426453917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041619 (2 * n)

end

end A097739.P9914661225426453917

namespace A097739

/-- `A041619(2*n)` -/
def P9914661225426453917.Spec : Prop :=
  ∀ n, P9914661225426453917.a n = A097739 n

end A097739

/-! ## A097739.P11249226016336444470

`A042421(2*n)`
-/

namespace A097739.P11249226016336444470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042421 (2 * n)

end

end A097739.P11249226016336444470

namespace A097739

/-- `A042421(2*n)` -/
def P11249226016336444470.Spec : Prop :=
  ∀ n, P11249226016336444470.a n = A097739 n

end A097739

/-! ## A097739.P3579493607869468820

`or(1, A041619(A005843(n)))`
-/

namespace A097739.P3579493607869468820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041619 (A005843 n).toNat)

end

end A097739.P3579493607869468820

namespace A097739

/-- `or(1, A041619(A005843(n)))` -/
def P3579493607869468820.Spec : Prop :=
  ∀ n, P3579493607869468820.a n = A097739 n

end A097739

/-!
# A097740: Chebyshev U(n,x) polynomial evaluated at x=201.

The programs for A097740, the canonical program `A097740.P12186856770766722063` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097740 has offset 0).

The definition of A097740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097740.P12186856770766722063

`((201+20*sqrt(101))^(n+1)-(201-20*sqrt(101))^(n+1))/(40*sqrt(101))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097740

/-- `((201+20*sqrt(101))^(n+1)-(201-20*sqrt(101))^(n+1))/(40*sqrt(101))` -/
def P12186856770766722063.Spec : Prop :=
  ∀ n, P12186856770766722063.a n = (A097740 n : ℝ)

end A097740

/-! ## A097740.P9485778539835199811

`2*201*a(n-1)-a(n-2)` with `a(0)=1, a(1)=402`
-/

namespace A097740.P9485778539835199811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 402] fun n a =>
  2 * (201 * a (n - 1)) - a (n - 2)

end

end A097740.P9485778539835199811

namespace A097740

/-- `2*201*a(n-1)-a(n-2)` -/
def P9485778539835199811.Spec : Prop :=
  ∀ n, P9485778539835199811.a n = A097740 n

end A097740

/-! ## A097740.P5626147654983646713

`∑[A097742(n)]`
-/

namespace A097740.P5626147654983646713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097740.P5626147654983646713

namespace A097740

/-- `∑[A097742(n)]` -/
def P5626147654983646713.Spec : Prop :=
  ∀ n, P5626147654983646713.a n = A097740 n

end A097740

/-! ## A097740.P12636255926921655658

`∑[A041181(2*n)]`
-/

namespace A097740.P12636255926921655658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041181 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097740.P12636255926921655658

namespace A097740

/-- `∑[A041181(2*n)]` -/
def P12636255926921655658.Spec : Prop :=
  ∀ n, P12636255926921655658.a n = A097740 n

end A097740

/-! ## A097740.P303578681528129304

`∑[A041767(2*n)]`
-/

namespace A097740.P303578681528129304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041767 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097740.P303578681528129304

namespace A097740

/-- `∑[A041767(2*n)]` -/
def P303578681528129304.Spec : Prop :=
  ∀ n, P303578681528129304.a n = A097740 n

end A097740

/-!
# A097741: Pell equation solutions (10*a(n))^2 - 101*b(n)^2 = -1 with b(n) = A097742(n), n >= 0.

The programs for A097741, the canonical program `A097741.P11054282542357330925` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097741 has offset 0).

The definition of A097741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097741.P11054282542357330925

`402*a(n-1)-a(n-2)` with `a(0)=1, a(1)=403`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097741

/-- `402*a(n-1)-a(n-2)` -/
def P11054282542357330925.Spec : Prop :=
  ∀ n, P11054282542357330925.a n = A097741 n

theorem P11054282542357330925.correct : P11054282542357330925.Spec := by
  intro n
  simp only [A097741]

end A097741

/-! ## A097741.P7317768835128193699

`∑[A090309(2*n)]-1`
-/

namespace A097741.P7317768835128193699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090309 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097741.P7317768835128193699

namespace A097741

/-- `∑[A090309(2*n)]-1` -/
def P7317768835128193699.Spec : Prop :=
  ∀ n, P7317768835128193699.a n = A097741 n

end A097741

/-! ## A097741.P8207479927204518235

`∑[2*A227152(n)]-1`
-/

namespace A097741.P8207479927204518235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A227152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097741.P8207479927204518235

namespace A097741

/-- `∑[2*A227152(n)]-1` -/
def P8207479927204518235.Spec : Prop :=
  ∀ n, P8207479927204518235.a n = A097741 n

end A097741

/-! ## A097741.P13562210174569791974

`A041180(A005843(n))/10`
-/

namespace A097741.P13562210174569791974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041180 (A005843 n).toNat : ℚ) / 10

end

end A097741.P13562210174569791974

namespace A097741

/-- `A041180(A005843(n))/10` -/
def P13562210174569791974.Spec : Prop :=
  ∀ n, P13562210174569791974.a n = (A097741 n : ℚ)

end A097741

/-! ## A097741.P15505227289282176479

`record[ratio[A041180(A237420(n))]]`
-/

namespace A097741.P15505227289282176479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041180 (A237420 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097741.P15505227289282176479

namespace A097741

/-- `record[ratio[A041180(A237420(n))]]` -/
def P15505227289282176479.Spec : Prop :=
  ∀ n, P15505227289282176479.a n = (A097741 n : ℚ)

end A097741

/-!
# A097742: Pell equation solutions (10*b(n))^2 - 101*a(n)^2 = -1 with b(n) = A097741(n), n >= 0.

The programs for A097742, the canonical program `A097742.P415954717977772531` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097742 has offset 0).

The definition of A097742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097742.P415954717977772531

`402*a(n-1)-a(n-2)` with `a(0)=1, a(1)=401`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097742

/-- `402*a(n-1)-a(n-2)` -/
def P415954717977772531.Spec : Prop :=
  ∀ n, P415954717977772531.a n = A097742 n

theorem P415954717977772531.correct : P415954717977772531.Spec := by
  intro n
  simp only [A097742]

end A097742

/-! ## A097742.P7642893923503083930

`A041181(2*n)`
-/

namespace A097742.P7642893923503083930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041181 (2 * n)

end

end A097742.P7642893923503083930

namespace A097742

/-- `A041181(2*n)` -/
def P7642893923503083930.Spec : Prop :=
  ∀ n, P7642893923503083930.a n = A097742 n

end A097742

/-! ## A097742.P7161785411743798219

`A041767(2*n)`
-/

namespace A097742.P7161785411743798219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041767 (2 * n)

end

end A097742.P7161785411743798219

namespace A097742

/-- `A041767(2*n)` -/
def P7161785411743798219.Spec : Prop :=
  ∀ n, P7161785411743798219.a n = A097742 n

end A097742

/-! ## A097742.P12349480289257303756

`A042757(A047451(n+1))`
-/

namespace A097742.P12349480289257303756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042757 (A047451 (n + 1)).toNat

end

end A097742.P12349480289257303756

namespace A097742

/-- `A042757(A047451(n+1))` -/
def P12349480289257303756.Spec : Prop :=
  ∀ n, P12349480289257303756.a n = A097742 n

end A097742

/-! ## A097742.P17921631662873660170

`or(1, A041181(A005843(n)))`
-/

namespace A097742.P17921631662873660170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041181 (A005843 n).toNat)

end

end A097742.P17921631662873660170

namespace A097742

/-- `or(1, A041181(A005843(n)))` -/
def P17921631662873660170.Spec : Prop :=
  ∀ n, P17921631662873660170.a n = A097742 n

end A097742

/-!
# A097743: Numbers of the form 3*2^(p - 1) - 1 where p is prime.

The programs for A097743, the canonical program `A097743.P1935338259299383222` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097743 has offset 1).

The definition of A097743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097743.P1935338259299383222

`A001348(n+1)+A061286(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097743

/-- `A001348(n+1)+A061286(n+1)` -/
def P1935338259299383222.Spec : Prop :=
  ∀ n, P1935338259299383222.a n = A097743 (n + 1)

theorem P1935338259299383222.correct : P1935338259299383222.Spec := by
  intro n
  simp only [A097743, Nat.add_sub_cancel]

end A097743

/-! ## A097743.P16911336160522771589

`A290195(p?[comp[n²]])`
-/

namespace A097743.P16911336160522771589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290195 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097743.P16911336160522771589

namespace A097743

/-- `A290195(p?[comp[n²]])` -/
def P16911336160522771589.Spec : Prop :=
  ∀ n, P16911336160522771589.a n = A097743 (n + 1)

end A097743

/-! ## A097743.P12101967402695259072

`3*A061286(n+1)-1`
-/

namespace A097743.P12101967402695259072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061286 (n + 1) - 1

end

end A097743.P12101967402695259072

namespace A097743

/-- `3*A061286(n+1)-1` -/
def P12101967402695259072.Spec : Prop :=
  ∀ n, P12101967402695259072.a n = A097743 (n + 1)

end A097743

/-! ## A097743.P10882831910212982571

`3*A098102(n+1)+2`
-/

namespace A097743.P10882831910212982571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A098102 (n + 1) + 2

end

end A097743.P10882831910212982571

namespace A097743

/-- `3*A098102(n+1)+2` -/
def P10882831910212982571.Spec : Prop :=
  ∀ n, P10882831910212982571.a n = A097743 (n + 1)

end A097743

/-! ## A097743.P3777650494970522365

`3*A278741(n+1)-4`
-/

namespace A097743.P3777650494970522365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A278741 (n + 1) - 4

end

end A097743.P3777650494970522365

namespace A097743

/-- `3*A278741(n+1)-4` -/
def P3777650494970522365.Spec : Prop :=
  ∀ n, P3777650494970522365.a n = A097743 (n + 1)

end A097743

/-! ## A097743.P17232035322051989073

`3*record[2^A000010(n+1)]-1`
-/

namespace A097743.P17232035322051989073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A097743.P17232035322051989073

namespace A097743

/-- `3*record[2^A000010(n+1)]-1` -/
def P17232035322051989073.Spec : Prop :=
  ∀ n, P17232035322051989073.a n = (A097743 (n + 1) : ℚ)

end A097743

/-! ## A097743.P10754870135039684810

`A003073(A001748(n+1))`
-/

namespace A097743.P10754870135039684810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003073 (A001748 (n + 1)).toNat

end

end A097743.P10754870135039684810

namespace A097743

/-- `A003073(A001748(n+1))` -/
def P10754870135039684810.Spec : Prop :=
  ∀ n, P10754870135039684810.a n = A097743 (n + 1)

end A097743

/-! ## A097743.P4109824898951467623

`A055010(A000040(n+1))`
-/

namespace A097743.P4109824898951467623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (A000040 (n + 1)).toNat

end

end A097743.P4109824898951467623

namespace A097743

/-- `A055010(A000040(n+1))` -/
def P4109824898951467623.Spec : Prop :=
  ∀ n, P4109824898951467623.a n = A097743 (n + 1)

end A097743

/-! ## A097743.P14107612883404216131

`A052940(A006093(n+1))`
-/

namespace A097743.P14107612883404216131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 (A006093 (n + 1)).toNat

end

end A097743.P14107612883404216131

namespace A097743

/-- `A052940(A006093(n+1))` -/
def P14107612883404216131.Spec : Prop :=
  ∀ n, P14107612883404216131.a n = A097743 (n + 1)

end A097743

/-! ## A097743.P1186391195904997603

`A052940(record[A000010(n+1)])`
-/

namespace A097743.P1186391195904997603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097743.P1186391195904997603

namespace A097743

/-- `A052940(record[A000010(n+1)])` -/
def P1186391195904997603.Spec : Prop :=
  ∀ n, P1186391195904997603.a n = A097743 (n + 1)

end A097743

/-!
# A097744: Number of ways n can be written as difference of two distinct partition numbers.

The programs for A097744, there is no canonical definition to state claims against.
-/

/-! ## A097744.P14770007135782594033

`A088569(ceil(2^(n-1)))+∏{p}[n+1, val(#², 2)]`
-/

namespace A097744.P14770007135782594033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p ^ 2) 2 : ℕ) : ℤ)

end

end A097744.P14770007135782594033

/-! ## A097744.P16735684286810299044

`A088569(A011782(n))+A069517(n+1)`
-/

namespace A097744.P16735684286810299044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A011782 n).toNat + A069517 (n + 1)

end

end A097744.P16735684286810299044

/-! ## A097744.P232374374196212610

`gcd(A001222(A068610(n)), A058775(n+1))`
-/

namespace A097744.P232374374196212610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A068610 n).toNat) (A058775 (n + 1))

end

end A097744.P232374374196212610

/-! ## A097744.P4179688988995886660

`A088569(abs(A123344(n)))+A069517(n+1)`
-/

namespace A097744.P4179688988995886660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 |A123344 n|.toNat + A069517 (n + 1)

end

end A097744.P4179688988995886660

/-! ## A097744.P17668147027128131534

`A055874(A336601(n+1)+A055874(n+1))`
-/

namespace A097744.P17668147027128131534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A336601 (n + 1) + A055874 (n + 1)).toNat

end

end A097744.P17668147027128131534

/-!
# A097745: Differences of two distinct partition numbers.

The programs for A097745, there is no canonical definition to state claims against.
-/

/-! ## A097745.P13619294610599181614

`eq[1, char[A027300(n+2)]]`
-/

namespace A097745.P13619294610599181614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097745.P13619294610599181614

/-! ## A097745.P12118271066427817696

`lt[A000007(n), char[A027300(n+1)]]`
-/

namespace A097745.P12118271066427817696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097745.P12118271066427817696

/-! ## A097745.P18159026589240193901

`record[char[A027300(n+1)]*A028310(n)]`
-/

namespace A097745.P18159026589240193901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097745.P18159026589240193901

/-! ## A097745.P11050222117747490380

`comp[A097746(n+1)-1]+1`
-/

namespace A097745.P11050222117747490380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097746 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A097745.P11050222117747490380

/-! ## A097745.P8760080267244429146

`lt[1, A097744(n+1)+1]+1`
-/

namespace A097745.P8760080267244429146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097744 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097745.P8760080267244429146

/-!
# A097746: Numbers that cannot be written as differences of two distinct partition numbers.

The programs for A097746, there is no canonical definition to state claims against.
-/

/-! ## A097746.P954350873945161595

`comp[A027300(n+1)]`
-/

namespace A097746.P954350873945161595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097746.P954350873945161595

/-! ## A097746.P6714062986269566155

`comp[A097745(n+1)-1]+1`
-/

namespace A097746.P6714062986269566155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A097746.P6714062986269566155

/-! ## A097746.P9192548432670041

`comp[A175788(n)%A140207(n)]`
-/

namespace A097746.P9192548432670041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175788 n) (A140207 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097746.P9192548432670041

/-! ## A097746.P17195332859224006297

`comp[A023443(A097745(n+1))]+1`
-/

namespace A097746.P17195332859224006297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A097745 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A097746.P17195332859224006297

/-! ## A097746.P2953737389611541796

`A020725(comp[A097745(n+1)-1])`
-/

namespace A097746.P2953737389611541796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A097746.P2953737389611541796

/-! ## A097746.P14590199166832756078

`A065475(comp[A097745(n+1)-1])`
-/

namespace A097746.P14590199166832756078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A097746.P14590199166832756078

/-! ## A097746.P14855998186809282459

`eq[char[A027300(n+2)], A000007(n)]`
-/

namespace A097746.P14855998186809282459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A097746.P14855998186809282459

/-! ## A097746.P2810442745134399977

`comp[A000041(A002024(n+1))-A140207(n)]`
-/

namespace A097746.P2810442745134399977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002024 (n + 1)).toNat - A140207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097746.P2810442745134399977

/-!
# A097747: a(n) = a(n mod a(n-1)) + floor(n/a(n-1)), a(0) = 1.

The programs for A097747, the canonical program `A097747.P862697393058188418` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097747 has offset 0).

The definition of A097747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097747.P862697393058188418

`floor(a(n%a(n-1))+n/a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097747

/-- `floor(a(n%a(n-1))+n/a(n-1))` -/
def P862697393058188418.Spec : Prop :=
  ∀ n, P862697393058188418.a n = A097747 n

theorem P862697393058188418.correct : P862697393058188418.Spec := by
  intro n
  simp only [A097747]

end A097747

/-! ## A097747.P3264285527196832094

`A330808(A064424(n+2))`
-/

namespace A097747.P3264285527196832094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (A064424 (n + 2)).toNat

end

end A097747.P3264285527196832094

namespace A097747

/-- `A330808(A064424(n+2))` -/
def P3264285527196832094.Spec : Prop :=
  ∀ n, P3264285527196832094.a n = A097747 n

end A097747

/-! ## A097747.P5199674856523140831

`A330808(record[A064413(n+2)])`
-/

namespace A097747.P5199674856523140831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097747.P5199674856523140831

namespace A097747

/-- `A330808(record[A064413(n+2)])` -/
def P5199674856523140831.Spec : Prop :=
  ∀ n, P5199674856523140831.a n = A097747 n

end A097747

/-! ## A097747.P6604526387927690070

`A276439(A000120(A087581(n+1)))`
-/

namespace A097747.P6604526387927690070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276439 (A000120 (A087581 (n + 1)).toNat).toNat

end

end A097747.P6604526387927690070

namespace A097747

/-- `A276439(A000120(A087581(n+1)))` -/
def P6604526387927690070.Spec : Prop :=
  ∀ n, P6604526387927690070.a n = A097747 n

end A097747

/-! ## A097747.P381065243615260950

`A285351(n+1)+A260999(A020753(n+1))`
-/

namespace A097747.P381065243615260950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285351 (n + 1) + A260999 (A020753 (n + 1)).toNat

end

end A097747.P381065243615260950

namespace A097747

/-- `A285351(n+1)+A260999(A020753(n+1))` -/
def P381065243615260950.Spec : Prop :=
  ∀ n, P381065243615260950.a n = A097747 n

end A097747

/-!
# A097750: Reversal of the binomial transform of the Whitney triangle A004070 (see A131250), triangle read by rows, T(n,k) for 0 <= k <= n.

The programs for A097750, there is no canonical definition to state claims against.
-/

/-! ## A097750.P16220770182022592649

`A131250(A002378(n)%A080036(n))`
-/

namespace A097750.P16220770182022592649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A097750.P16220770182022592649

/-! ## A097750.P10321407740230479004

`A131250(A061579(n))`
-/

namespace A097750.P10321407740230479004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A061579 n).toNat

end

end A097750.P10321407740230479004

/-! ## A097750.P10413719977307559176

`A131250(A114327(n)+n)`
-/

namespace A097750.P10413719977307559176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131250 (A114327 n + (n : ℤ)).toNat

end

end A097750.P10413719977307559176

/-! ## A097750.P2396559023094718518

`A052509(A292564(n))`
-/

namespace A097750.P2396559023094718518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A292564 n).toNat

end

end A097750.P2396559023094718518

/-! ## A097750.P6506861556726496807

`A052509(A185868(n+1)-A002260(n+1))`
-/

namespace A097750.P6506861556726496807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A185868 (n + 1) - A002260 (n + 1)).toNat

end

end A097750.P6506861556726496807

/-! ## A097750.P14581672692805767016

`A052509(eq[A130595(n), A307047(n)])`
-/

namespace A097750.P14581672692805767016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A097750.P14581672692805767016

/-! ## A097750.P8604336080336477113

`A054123(A093995(n+1)+A061885(n))`
-/

namespace A097750.P8604336080336477113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A093995 (n + 1) + A061885 n).toNat

end

end A097750.P8604336080336477113

/-! ## A097750.P7385851625882097486

`A054123(A185869(n+1)-A002260(n+1))`
-/

namespace A097750.P7385851625882097486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 (A185869 (n + 1) - A002260 (n + 1)).toNat

end

end A097750.P7385851625882097486

/-! ## A097750.P3173645551617607451

`A141905(A292564(n))/A062344(n)`
-/

namespace A097750.P3173645551617607451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141905 (A292564 n).toNat : ℚ) / (A062344 n : ℚ)

end

end A097750.P3173645551617607451

/-!
# A097751: Least integer with same "mod 4 prime signature" as n.

The programs for A097751, there is no canonical definition to state claims against.
-/

/-! ## A097751.P4942267167907633965

`(n+1)%A205675(A325264(3*n+1))`
-/

namespace A097751.P4942267167907633965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A205675 (A325264 (3 * n + 1)).toNat)

end

end A097751.P4942267167907633965

/-! ## A097751.P5692569765910244248

`A366742(A259939(n))`
-/

namespace A097751.P5692569765910244248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366742 (A259939 n).toNat

end

end A097751.P5692569765910244248

/-! ## A097751.P3758276473160610308

`A366742(A037019(n+1))`
-/

namespace A097751.P3758276473160610308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366742 (A037019 (n + 1)).toNat

end

end A097751.P3758276473160610308

/-! ## A097751.P4438919192603879111

`∏{e}[A348199(n+1), A260218(#)]`
-/

namespace A097751.P4438919192603879111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A260218 (Nat.factorization (f1 n).natAbs p)

end

end A097751.P4438919192603879111

/-! ## A097751.P5833905748993374094

`and(n+1, A163617(A325709(n+1)))`
-/

namespace A097751.P5833905748993374094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A163617 (A325709 (n + 1)).toNat)

end

end A097751.P5833905748993374094

/-!
# A097752: Least integer with each "mod 4 prime signature".

The programs for A097752, there is no canonical definition to state claims against.
-/

/-! ## A097752.P3407560080600484495

`record[A097751(n+1)]`
-/

namespace A097752.P3407560080600484495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097752.P3407560080600484495

/-! ## A097752.P6468586501950740871

`eq[n, A097751(abs(1-n)+1)]`
-/

namespace A097752.P6468586501950740871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097752.P6468586501950740871

/-! ## A097752.P3772488045191316908

`A097751(lt[n, A097751(n+1)]+1)`
-/

namespace A097752.P3772488045191316908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A097752.P3772488045191316908

/-! ## A097752.P9283920154105361186

`eq[A000027(n+1), A097751(n+1)]+1`
-/

namespace A097752.P9283920154105361186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A097752.P9283920154105361186

/-! ## A097752.P13095816209290764267

`A028310(eq[n+1, A097751(n+1)]+1)`
-/

namespace A097752.P13095816209290764267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A097752.P13095816209290764267

/-!
# A097753: Table read by antidiagonals of least integer "mod 4 prime signatures" k ordered by number of Pythagorean triples with hypotenuse = k.

The programs for A097753, there is no canonical definition to state claims against.
-/

/-! ## A097753.P13299036060444840593

`A191702(A038722(n+1)%A210979(3*n+1))`
-/

namespace A097753.P13299036060444840593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (Int.tmod (A038722 (n + 1)) (A210979 (3 * n + 1))).toNat

end

end A097753.P13299036060444840593

/-! ## A097753.P13833127845331853845

`A191702(A038722(n+1)%A185240(n+1))`
-/

namespace A097753.P13833127845331853845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (Int.tmod (A038722 (n + 1)) (A185240 (n + 1))).toNat

end

end A097753.P13833127845331853845

/-! ## A097753.P9397364356502136551

`A004736(n+1)*A060904(A045172(n+1))`
-/

namespace A097753.P9397364356502136551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A060904 (A045172 (n + 1)).toNat

end

end A097753.P9397364356502136551

/-! ## A097753.P11870975379988243323

`∑{d}[A003593(n+1), A175290(#)]`
-/

namespace A097753.P11870975379988243323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A175290 d

end

end A097753.P11870975379988243323

/-!
# A097755: Least integer "mod 4 prime signature" values that are the hypotenuse of no Pythagorean triples.

The programs for A097755, there is no canonical definition to state claims against.
-/

/-! ## A097755.P9648776038651468517

`record[A072438(A097752(n+1))]`
-/

namespace A097755.P9648776038651468517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A097752 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097755.P9648776038651468517

/-! ## A097755.P9830238908419843975

`filter[A097752(n+1), A011558(#)]`
-/

namespace A097755.P9830238908419843975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A097755.P9830238908419843975

/-! ## A097755.P12833774915168989097

`∩[A004144(n+1), A097752(n+1)]`
-/

namespace A097755.P12833774915168989097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097755.P12833774915168989097

/-! ## A097755.P6088254234998587407

`∩[A047201(n+1), A097752(n+1)]`
-/

namespace A097755.P6088254234998587407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097755.P6088254234998587407

/-! ## A097755.P8951968439520384863

`∩[A097752(n+1), A200381(n+1)]`
-/

namespace A097755.P8951968439520384863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097755.P8951968439520384863

/-! ## A097755.P6723906376501586060

`∩[A097752(n+1), A201010(n+1)]`
-/

namespace A097755.P6723906376501586060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097755.P6723906376501586060

/-! ## A097755.P15484663781665009483

`∩[A097752(n+1), A225496(n+1)]`
-/

namespace A097755.P15484663781665009483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097755.P15484663781665009483

/-! ## A097755.P14755657178850935571

`∩[A097752(n+1), A236860(n+1)]`
-/

namespace A097755.P14755657178850935571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097755.P14755657178850935571

/-!
# A097756: Table read by rows of A054994 ordered by A046080.

The programs for A097756, there is no canonical definition to state claims against.
-/

/-! ## A097756.P18223150421241127777

`A109613(A166652(record[(n+1)/∏{p}[n+1, #]]))`
-/

namespace A097756.P18223150421241127777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A166652 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A097756.P18223150421241127777

/-! ## A097756.P7998007716287761384

`A347123(A057845(n+1))`
-/

namespace A097756.P7998007716287761384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347123 (A057845 (n + 1)).toNat

end

end A097756.P7998007716287761384

/-!
# A097758: Greatest integer that can be written as a sum of distinct squares in exactly n ways, or -1 if no such number exists.

The programs for A097758, there is no canonical definition to state claims against.
-/

/-! ## A097758.P16975776229424568687

`lt[A328964(A033461(n)), A178334(n)]`
-/

namespace A097758.P16975776229424568687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328964 (A033461 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097758.P16975776229424568687

/-!
# A097760: Index of zero values in A097759; also index of -1 values in A097563 and A097758.

The programs for A097760, there is no canonical definition to state claims against.
-/

/-! ## A097760.P4781883008634660125

`comp[A033461(n)]`
-/

namespace A097760.P4781883008634660125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097760.P4781883008634660125

/-! ## A097760.P9892386982497628951

`lt[A097563(n), 0]`
-/

namespace A097760.P9892386982497628951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097563 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097760.P9892386982497628951

/-! ## A097760.P5129708731351625683

`eq[1, -A097563(n+1)]+1`
-/

namespace A097760.P5129708731351625683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097760.P5129708731351625683

/-! ## A097760.P16144525343183669099

`eq[1, -A097563(2*n-n)]`
-/

namespace A097760.P16144525343183669099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A097563 (2 * n - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097760.P16144525343183669099

/-! ## A097760.P17611357896931687870

`eq[A057428(n), A097563(n)]`
-/

namespace A097760.P17611357896931687870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097760.P17611357896931687870

/-! ## A097760.P6790374714979737013

`eq[A060376(n), A097563(n)]`
-/

namespace A097760.P6790374714979737013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097760.P6790374714979737013

/-! ## A097760.P11438399397229783135

`eq[A077594(n), A097563(n)]`
-/

namespace A097760.P11438399397229783135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097760.P11438399397229783135

/-! ## A097760.P6382140239531429637

`eq[A097563(n), A134824(n)]`
-/

namespace A097760.P6382140239531429637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097760.P6382140239531429637

/-! ## A097760.P17624986931114725059

`eq[A097563(n), A260196(n)]`
-/

namespace A097760.P17624986931114725059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097760.P17624986931114725059

/-! ## A097760.P1894032300468222734

`eq[1, A006530(A097563(n)+2)]`
-/

namespace A097760.P1894032300468222734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A097563 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097760.P1894032300468222734

/-!
# A097762: Number of different partitions of the set {1, 2, ..., n} into an odd number of blocks such that each block contains at least 2 elements.

The programs for A097762, there is no canonical definition to state claims against.
-/

/-! ## A097762.P10404084632722974300

`Δ[A160181(n)]-A097763(n+1)`
-/

namespace A097762.P10404084632722974300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A097763 (n + 1)

end

end A097762.P10404084632722974300

/-! ## A097762.P16033870593163667613

`A000296(n+1)-A097763(n+1)`
-/

namespace A097762.P16033870593163667613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) - A097763 (n + 1)

end

end A097762.P16033870593163667613

/-! ## A097762.P18215618675774059329

`A097763(n+1)-A293037(n+1)`
-/

namespace A097762.P18215618675774059329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097763 (n + 1) - A293037 (n + 1)

end

end A097762.P18215618675774059329

/-! ## A097762.P14078006587969573922

`A124323(∑[n+1])-A097763(n+1)`
-/

namespace A097762.P14078006587969573922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (∑ j ∈ Finset.range (n + 1), f1 j) - A097763 (n + 1)

end

end A097762.P14078006587969573922

/-! ## A097762.P7060690838223707546

`A182930(A000217(n+2))-A097763(n+1)`
-/

namespace A097762.P7060690838223707546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A000217 (n + 2)).toNat - A097763 (n + 1)

end

end A097762.P7060690838223707546

/-!
# A097763: Number of different partitions of the set {1, 2, ..., n} into an even number of blocks such that each block contains at least 2 elements.

The programs for A097763, there is no canonical definition to state claims against.
-/

/-! ## A097763.P9783333805435205479

`Δ[A160181(n)]-A097762(n+1)`
-/

namespace A097763.P9783333805435205479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A097762 (n + 1)

end

end A097763.P9783333805435205479

/-! ## A097763.P15692989790753196863

`A293037(n+1)+A097762(n+1)`
-/

namespace A097763.P15692989790753196863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293037 (n + 1) + A097762 (n + 1)

end

end A097763.P15692989790753196863

/-! ## A097763.P7246788050226911880

`A000296(n+1)-A097762(n+1)`
-/

namespace A097763.P7246788050226911880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) - A097762 (n + 1)

end

end A097763.P7246788050226911880

/-! ## A097763.P5849182704742566505

`A182930(A000217(n+2))-A097762(n+1)`
-/

namespace A097763.P5849182704742566505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A000217 (n + 2)).toNat - A097762 (n + 1)

end

end A097763.P5849182704742566505

/-!
# A097764: Numbers of the form (kp)^p for prime p and k=1,2,3,....

The programs for A097764, there is no canonical definition to state claims against.
-/

/-! ## A097764.P16440616306303094740

`filter[A378253(n+1), A369070(#)]`
-/

namespace A097764.P16440616306303094740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369070 (f1 j).toNat = 1) n)

end

end A097764.P16440616306303094740

/-! ## A097764.P18103105604662737553

`∩[A137257(n+1), A378253(n+1)]`
-/

namespace A097764.P18103105604662737553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097764.P18103105604662737553

/-! ## A097764.P15369318029314187467

`∩[A342090(n+1), A378253(n+1)]`
-/

namespace A097764.P15369318029314187467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097764.P15369318029314187467

/-! ## A097764.P11196881706109488609

`∩[A368715(n+1), A378253(n+1)]`
-/

namespace A097764.P11196881706109488609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097764.P11196881706109488609

/-! ## A097764.P9291596853272735201

`eq[0, A281141(n+1)]+1`
-/

namespace A097764.P9291596853272735201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281141 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097764.P9291596853272735201

/-!
# A097765: Chebyshev U(n,x) polynomial evaluated at x=243=2*11^2+1.

The programs for A097765, the canonical program `A097765.P11534334597949122413` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097765 has offset 0).

The definition of A097765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097765.P11534334597949122413

`((243+22*sqrt(122))^(n+1)-(243-22*sqrt(122))^(n+1))/(44*sqrt(122))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097765

/-- `((243+22*sqrt(122))^(n+1)-(243-22*sqrt(122))^(n+1))/(44*sqrt(122))` -/
def P11534334597949122413.Spec : Prop :=
  ∀ n, P11534334597949122413.a n = (A097765 n : ℝ)

end A097765

/-! ## A097765.P15939223287822877627

`2*243*a(n-1)-a(n-2)` with `a(0)=1, a(1)=486`
-/

namespace A097765.P15939223287822877627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 486] fun n a =>
  2 * (243 * a (n - 1)) - a (n - 2)

end

end A097765.P15939223287822877627

namespace A097765

/-- `2*243*a(n-1)-a(n-2)` -/
def P15939223287822877627.Spec : Prop :=
  ∀ n, P15939223287822877627.a n = A097765 n

end A097765

/-! ## A097765.P15034989104560518851

`∑[A097767(n)]`
-/

namespace A097765.P15034989104560518851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097765.P15034989104560518851

namespace A097765

/-- `∑[A097767(n)]` -/
def P15034989104560518851.Spec : Prop :=
  ∀ n, P15034989104560518851.a n = A097765 n

end A097765

/-! ## A097765.P7840428476072361306

`∑[A041221(2*n)]`
-/

namespace A097765.P7840428476072361306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097765.P7840428476072361306

namespace A097765

/-- `∑[A041221(2*n)]` -/
def P7840428476072361306.Spec : Prop :=
  ∀ n, P7840428476072361306.a n = A097765 n

end A097765

/-! ## A097765.P17683925359668129766

`∑[A041931(2*n)]`
-/

namespace A097765.P17683925359668129766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097765.P17683925359668129766

namespace A097765

/-- `∑[A041931(2*n)]` -/
def P17683925359668129766.Spec : Prop :=
  ∀ n, P17683925359668129766.a n = A097765 n

end A097765

/-!
# A097766: Pell equation solutions (11*a(n))^2 - 122*b(n)^2 = -1 with b(n):=A097767(n), n >= 0.

The programs for A097766, the canonical program `A097766.P1605530055707959289` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097766 has offset 0).

The definition of A097766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097766.P1605530055707959289

`486*a(n-1)-a(n-2)` with `a(0)=1, a(1)=487`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097766

/-- `486*a(n-1)-a(n-2)` -/
def P1605530055707959289.Spec : Prop :=
  ∀ n, P1605530055707959289.a n = A097766 n

theorem P1605530055707959289.correct : P1605530055707959289.Spec := by
  intro n
  simp only [A097766]

end A097766

/-! ## A097766.P6547608568070066489

`∑[A090313(2*n)]-1`
-/

namespace A097766.P6547608568070066489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090313 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097766.P6547608568070066489

namespace A097766

/-- `∑[A090313(2*n)]-1` -/
def P6547608568070066489.Spec : Prop :=
  ∀ n, P6547608568070066489.a n = A097766 n

end A097766

/-! ## A097766.P14540442347766584608

`∑[2*A097767(n)]-A097767(n)`
-/

namespace A097766.P14540442347766584608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097767 n

end

end A097766.P14540442347766584608

namespace A097766

/-- `∑[2*A097767(n)]-A097767(n)` -/
def P14540442347766584608.Spec : Prop :=
  ∀ n, P14540442347766584608.a n = A097766 n

end A097766

/-! ## A097766.P3525908338547036209

`A041220(2*n)/11`
-/

namespace A097766.P3525908338547036209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041220 (2 * n) : ℚ) / 11

end

end A097766.P3525908338547036209

namespace A097766

/-- `A041220(2*n)/11` -/
def P3525908338547036209.Spec : Prop :=
  ∀ n, P3525908338547036209.a n = (A097766 n : ℚ)

end A097766

/-! ## A097766.P1650622326571330544

`A090313(A005408(n))/22`
-/

namespace A097766.P1650622326571330544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090313 (A005408 n).toNat : ℚ) / 22

end

end A097766.P1650622326571330544

namespace A097766

/-- `A090313(A005408(n))/22` -/
def P1650622326571330544.Spec : Prop :=
  ∀ n, P1650622326571330544.a n = (A097766 n : ℚ)

end A097766

/-!
# A097767: Pell equation solutions (11*b(n))^2 - 122*a(n)^2 = -1 with b(n) = A097766(n), n >= 0.

The programs for A097767, the canonical program `A097767.P12072038196201516734` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097767 has offset 0).

The definition of A097767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097767.P12072038196201516734

`486*a(n-1)-a(n-2)` with `a(0)=1, a(1)=485`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097767

/-- `486*a(n-1)-a(n-2)` -/
def P12072038196201516734.Spec : Prop :=
  ∀ n, P12072038196201516734.a n = A097767 n

theorem P12072038196201516734.correct : P12072038196201516734.Spec := by
  intro n
  simp only [A097767]

end A097767

/-! ## A097767.P11846914437213994816

`A041221(2*n)`
-/

namespace A097767.P11846914437213994816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041221 (2 * n)

end

end A097767.P11846914437213994816

namespace A097767

/-- `A041221(2*n)` -/
def P11846914437213994816.Spec : Prop :=
  ∀ n, P11846914437213994816.a n = A097767 n

end A097767

/-! ## A097767.P11056153126110006803

`A041931(2*n)`
-/

namespace A097767.P11056153126110006803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041931 (2 * n)

end

end A097767.P11056153126110006803

namespace A097767

/-- `A041931(2*n)` -/
def P11056153126110006803.Spec : Prop :=
  ∀ n, P11056153126110006803.a n = A097767 n

end A097767

/-! ## A097767.P13594027334363080056

`or(1, A041931(A005843(n)))`
-/

namespace A097767.P13594027334363080056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041931 (A005843 n).toNat)

end

end A097767.P13594027334363080056

namespace A097767

/-- `or(1, A041931(A005843(n)))` -/
def P13594027334363080056.Spec : Prop :=
  ∀ n, P13594027334363080056.a n = A097767 n

end A097767

/-! ## A097767.P15562508306265399259

`record[A041931(n)/A033999(n)]`
-/

namespace A097767.P15562508306265399259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041931 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097767.P15562508306265399259

namespace A097767

/-- `record[A041931(n)/A033999(n)]` -/
def P15562508306265399259.Spec : Prop :=
  ∀ n, P15562508306265399259.a n = (A097767 n : ℚ)

end A097767

/-!
# A097768: Chebyshev U(n,x) polynomial evaluated at x=289=2*12^2+1.

The programs for A097768, the canonical program `A097768.P7539002469741625261` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097768 has offset 0).

The definition of A097768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097768.P7539002469741625261

`((289+24*sqrt(145))^(n+1)-(289-24*sqrt(145))^(n+1))/(48*sqrt(145))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097768

/-- `((289+24*sqrt(145))^(n+1)-(289-24*sqrt(145))^(n+1))/(48*sqrt(145))` -/
def P7539002469741625261.Spec : Prop :=
  ∀ n, P7539002469741625261.a n = (A097768 n : ℝ)

end A097768

/-! ## A097768.P14675022288242747833

`2*289*a(n-1)-a(n-2)` with `a(0)=1, a(1)=578`
-/

namespace A097768.P14675022288242747833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 578] fun n a =>
  2 * (289 * a (n - 1)) - a (n - 2)

end

end A097768.P14675022288242747833

namespace A097768

/-- `2*289*a(n-1)-a(n-2)` -/
def P14675022288242747833.Spec : Prop :=
  ∀ n, P14675022288242747833.a n = A097768 n

end A097768

/-! ## A097768.P8971204530858917082

`∑[A097770(n)]`
-/

namespace A097768.P8971204530858917082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097768.P8971204530858917082

namespace A097768

/-- `∑[A097770(n)]` -/
def P8971204530858917082.Spec : Prop :=
  ∀ n, P8971204530858917082.a n = A097768 n

end A097768

/-! ## A097768.P15665596945919578647

`∑[A041265(2*n)]`
-/

namespace A097768.P15665596945919578647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097768.P15665596945919578647

namespace A097768

/-- `∑[A041265(2*n)]` -/
def P15665596945919578647.Spec : Prop :=
  ∀ n, P15665596945919578647.a n = A097768 n

end A097768

/-! ## A097768.P14401389436842408877

`∑[A042111(2*n)]`
-/

namespace A097768.P14401389436842408877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042111 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097768.P14401389436842408877

namespace A097768

/-- `∑[A042111(2*n)]` -/
def P14401389436842408877.Spec : Prop :=
  ∀ n, P14401389436842408877.a n = A097768 n

end A097768

/-!
# A097769: Pell equation solutions (12*a(n))^2 - 145*b(n)^2 = -1 with b(n):=A097770(n), n >= 0.

The programs for A097769, the canonical program `A097769.P6453294385598319929` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097769 has offset 0).

The definition of A097769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097769.P6453294385598319929

`578*a(n-1)-a(n-2)` with `a(0)=1, a(1)=579`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097769

/-- `578*a(n-1)-a(n-2)` -/
def P6453294385598319929.Spec : Prop :=
  ∀ n, P6453294385598319929.a n = A097769 n

theorem P6453294385598319929.correct : P6453294385598319929.Spec := by
  intro n
  simp only [A097769]

end A097769

/-! ## A097769.P36517338489945542

`∑[A090316(2*n)]-1`
-/

namespace A097769.P36517338489945542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090316 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097769.P36517338489945542

namespace A097769

/-- `∑[A090316(2*n)]-1` -/
def P36517338489945542.Spec : Prop :=
  ∀ n, P36517338489945542.a n = A097769 n

end A097769

/-! ## A097769.P6563305131902535643

`∑[2*A097770(n)]-A097770(n)`
-/

namespace A097769.P6563305131902535643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097770 n

end

end A097769.P6563305131902535643

namespace A097769

/-- `∑[2*A097770(n)]-A097770(n)` -/
def P6563305131902535643.Spec : Prop :=
  ∀ n, P6563305131902535643.a n = A097769 n

end A097769

/-!
# A097770: Pell equation solutions (12*b(n))^2 - 145*a(n)^2 = -1 with b(n) = A097769(n), n >= 0.

The programs for A097770, the canonical program `A097770.P6397111499226596180` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097770 has offset 0).

The definition of A097770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097770.P6397111499226596180

`578*a(n-1)-a(n-2)` with `a(0)=1, a(1)=577`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097770

/-- `578*a(n-1)-a(n-2)` -/
def P6397111499226596180.Spec : Prop :=
  ∀ n, P6397111499226596180.a n = A097770 n

theorem P6397111499226596180.correct : P6397111499226596180.Spec := by
  intro n
  simp only [A097770]

end A097770

/-! ## A097770.P15580161204920892241

`A041265(2*n)`
-/

namespace A097770.P15580161204920892241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041265 (2 * n)

end

end A097770.P15580161204920892241

namespace A097770

/-- `A041265(2*n)` -/
def P15580161204920892241.Spec : Prop :=
  ∀ n, P15580161204920892241.a n = A097770 n

end A097770

/-! ## A097770.P13237158524639606471

`A042111(2*n)`
-/

namespace A097770.P13237158524639606471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042111 (2 * n)

end

end A097770.P13237158524639606471

namespace A097770

/-- `A042111(2*n)` -/
def P13237158524639606471.Spec : Prop :=
  ∀ n, P13237158524639606471.a n = A097770 n

end A097770

/-! ## A097770.P15503186061978928935

`record[A042111(n)/A033999(n)]`
-/

namespace A097770.P15503186061978928935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042111 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097770.P15503186061978928935

namespace A097770

/-- `record[A042111(n)/A033999(n)]` -/
def P15503186061978928935.Spec : Prop :=
  ∀ n, P15503186061978928935.a n = (A097770 n : ℚ)

end A097770

/-! ## A097770.P5397895003229230023

`Δ[A097769(n)-A097768(n)]`
-/

namespace A097770.P5397895003229230023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097769 n - A097768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097770.P5397895003229230023

namespace A097770

/-- `Δ[A097769(n)-A097768(n)]` -/
def P5397895003229230023.Spec : Prop :=
  ∀ n, P5397895003229230023.a n = A097770 n

end A097770

/-!
# A097771: Chebyshev U(n,x) polynomial evaluated at x=339=2*13^2+1.

The programs for A097771, the canonical program `A097771.P1078036527913781275` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097771 has offset 0).

The definition of A097771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097771.P1078036527913781275

`((339+26*sqrt(170))^(n+1)-(339-26*sqrt(170))^(n+1))/(52*sqrt(170))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097771

/-- `((339+26*sqrt(170))^(n+1)-(339-26*sqrt(170))^(n+1))/(52*sqrt(170))` -/
def P1078036527913781275.Spec : Prop :=
  ∀ n, P1078036527913781275.a n = (A097771 n : ℝ)

end A097771

/-! ## A097771.P16549817375031949856

`2*339*a(n-1)-a(n-2)` with `a(0)=1, a(1)=678`
-/

namespace A097771.P16549817375031949856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 678] fun n a =>
  2 * (339 * a (n - 1)) - a (n - 2)

end

end A097771.P16549817375031949856

namespace A097771

/-- `2*339*a(n-1)-a(n-2)` -/
def P16549817375031949856.Spec : Prop :=
  ∀ n, P16549817375031949856.a n = A097771 n

end A097771

/-! ## A097771.P2041067187806855686

`∑[A097773(n)]`
-/

namespace A097771.P2041067187806855686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097771.P2041067187806855686

namespace A097771

/-- `∑[A097773(n)]` -/
def P2041067187806855686.Spec : Prop :=
  ∀ n, P2041067187806855686.a n = A097771 n

end A097771

/-! ## A097771.P13750335840646329298

`∑[A041313(2*n)]`
-/

namespace A097771.P13750335840646329298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041313 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097771.P13750335840646329298

namespace A097771

/-- `∑[A041313(2*n)]` -/
def P13750335840646329298.Spec : Prop :=
  ∀ n, P13750335840646329298.a n = A097771 n

end A097771

/-! ## A097771.P11564846279984501570

`∑[A042307(2*n)]`
-/

namespace A097771.P11564846279984501570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042307 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097771.P11564846279984501570

namespace A097771

/-- `∑[A042307(2*n)]` -/
def P11564846279984501570.Spec : Prop :=
  ∀ n, P11564846279984501570.a n = A097771 n

end A097771

/-!
# A097772: Pell equation solutions (13*a(n))^2 - 170*b(n)^2 = -1 with b(n):=A097771(n), n >= 0.

The programs for A097772, the canonical program `A097772.P15769960260279538871` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097772 has offset 0).

The definition of A097772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097772.P15769960260279538871

`678*a(n-1)-a(n-2)` with `a(0)=1, a(1)=679`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097772

/-- `678*a(n-1)-a(n-2)` -/
def P15769960260279538871.Spec : Prop :=
  ∀ n, P15769960260279538871.a n = A097772 n

theorem P15769960260279538871.correct : P15769960260279538871.Spec := by
  intro n
  simp only [A097772]

end A097772

/-! ## A097772.P2438946723903615143

`∑[2*A097773(n)]-A097773(n)`
-/

namespace A097772.P2438946723903615143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097773 n

end

end A097772.P2438946723903615143

namespace A097772

/-- `∑[2*A097773(n)]-A097773(n)` -/
def P2438946723903615143.Spec : Prop :=
  ∀ n, P2438946723903615143.a n = A097772 n

end A097772

/-! ## A097772.P3520263286661017988

`A041312(2*n)/A040653(2*n+1)`
-/

namespace A097772.P3520263286661017988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041312 (2 * n) : ℚ) / (A040653 (2 * n + 1) : ℚ)

end

end A097772.P3520263286661017988

namespace A097772

/-- `A041312(2*n)/A040653(2*n+1)` -/
def P3520263286661017988.Spec : Prop :=
  ∀ n, P3520263286661017988.a n = (A097772 n : ℚ)

end A097772

/-!
# A097773: Pell equation solutions (13*b(n))^2 - 170*a(n)^2 = -1 with b(n) = A097772(n), n >= 0.

The programs for A097773, the canonical program `A097773.P14754512322918726644` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097773 has offset 0).

The definition of A097773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097773.P14754512322918726644

`678*a(n-1)-a(n-2)` with `a(0)=1, a(1)=677`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097773

/-- `678*a(n-1)-a(n-2)` -/
def P14754512322918726644.Spec : Prop :=
  ∀ n, P14754512322918726644.a n = A097773 n

theorem P14754512322918726644.correct : P14754512322918726644.Spec := by
  intro n
  simp only [A097773]

end A097773

/-! ## A097773.P17707279575566835019

`A041313(2*n)`
-/

namespace A097773.P17707279575566835019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041313 (2 * n)

end

end A097773.P17707279575566835019

namespace A097773

/-- `A041313(2*n)` -/
def P17707279575566835019.Spec : Prop :=
  ∀ n, P17707279575566835019.a n = A097773 n

end A097773

/-! ## A097773.P946453525848837006

`A042307(2*n)`
-/

namespace A097773.P946453525848837006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042307 (2 * n)

end

end A097773.P946453525848837006

namespace A097773

/-- `A042307(2*n)` -/
def P946453525848837006.Spec : Prop :=
  ∀ n, P946453525848837006.a n = A097773 n

end A097773

/-! ## A097773.P747830673864548406

`record[A042307(n)/A033999(n)]`
-/

namespace A097773.P747830673864548406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042307 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097773.P747830673864548406

namespace A097773

/-- `record[A042307(n)/A033999(n)]` -/
def P747830673864548406.Spec : Prop :=
  ∀ n, P747830673864548406.a n = (A097773 n : ℚ)

end A097773

/-! ## A097773.P18142312402564676784

`record[lcm(A042307(n), A056594(n))]`
-/

namespace A097773.P18142312402564676784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A042307 n) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097773.P18142312402564676784

namespace A097773

/-- `record[lcm(A042307(n), A056594(n))]` -/
def P18142312402564676784.Spec : Prop :=
  ∀ n, (P18142312402564676784.a n : ℤ) = A097773 n

end A097773

/-!
# A097774: Chebyshev U(n,x) polynomial evaluated at x=393=2*14^2+1.

The programs for A097774, the canonical program `A097774.P17440746090982572063` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097774 has offset 0).

The definition of A097774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097774.P17440746090982572063

`((393+28*sqrt(197))^(n+1)-(393-28*sqrt(197))^(n+1))/(56*sqrt(197))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097774

/-- `((393+28*sqrt(197))^(n+1)-(393-28*sqrt(197))^(n+1))/(56*sqrt(197))` -/
def P17440746090982572063.Spec : Prop :=
  ∀ n, P17440746090982572063.a n = (A097774 n : ℝ)

end A097774

/-! ## A097774.P11858930317983651598

`2*393*a(n-1)-a(n-2)` with `a(0)=1, a(1)=786`
-/

namespace A097774.P11858930317983651598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 786] fun n a =>
  2 * (393 * a (n - 1)) - a (n - 2)

end

end A097774.P11858930317983651598

namespace A097774

/-- `2*393*a(n-1)-a(n-2)` -/
def P11858930317983651598.Spec : Prop :=
  ∀ n, P11858930317983651598.a n = A097774 n

end A097774

/-! ## A097774.P9781544887943287114

`∑[A097776(n)]`
-/

namespace A097774.P9781544887943287114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097774.P9781544887943287114

namespace A097774

/-- `∑[A097776(n)]` -/
def P9781544887943287114.Spec : Prop :=
  ∀ n, P9781544887943287114.a n = A097774 n

end A097774

/-! ## A097774.P16146029100802864725

`∑[A041365(2*n)]`
-/

namespace A097774.P16146029100802864725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041365 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097774.P16146029100802864725

namespace A097774

/-- `∑[A041365(2*n)]` -/
def P16146029100802864725.Spec : Prop :=
  ∀ n, P16146029100802864725.a n = A097774 n

end A097774

/-! ## A097774.P5314311655052613175

`∑[A042519(2*n)]`
-/

namespace A097774.P5314311655052613175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042519 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097774.P5314311655052613175

namespace A097774

/-- `∑[A042519(2*n)]` -/
def P5314311655052613175.Spec : Prop :=
  ∀ n, P5314311655052613175.a n = A097774 n

end A097774

/-!
# A097775: Pell equation solutions (14*a(n))^2 - 197*b(n)^2 = -1 with b(n) = A097776(n), n >= 0.

The programs for A097775, the canonical program `A097775.P3167698831318172712` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097775 has offset 0).

The definition of A097775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097775.P3167698831318172712

`786*a(n-1)-a(n-2)` with `a(0)=1, a(1)=787`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097775

/-- `786*a(n-1)-a(n-2)` -/
def P3167698831318172712.Spec : Prop :=
  ∀ n, P3167698831318172712.a n = A097775 n

theorem P3167698831318172712.correct : P3167698831318172712.Spec := by
  intro n
  simp only [A097775]

end A097775

/-! ## A097775.P2086824074275984946

`∑[2*A097776(n)]-A097776(n)`
-/

namespace A097775.P2086824074275984946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097776 n

end

end A097775.P2086824074275984946

namespace A097775

/-- `∑[2*A097776(n)]-A097776(n)` -/
def P2086824074275984946.Spec : Prop :=
  ∀ n, P2086824074275984946.a n = A097775 n

end A097775

/-! ## A097775.P17720564887643979214

`A041364(2*n)/A040042(n+1)`
-/

namespace A097775.P17720564887643979214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041364 (2 * n) : ℚ) / (A040042 (n + 1) : ℚ)

end

end A097775.P17720564887643979214

namespace A097775

/-- `A041364(2*n)/A040042(n+1)` -/
def P17720564887643979214.Spec : Prop :=
  ∀ n, P17720564887643979214.a n = (A097775 n : ℚ)

end A097775

/-!
# A097776: Pell equation solutions (14*b(n))^2 - 197*a(n)^2 = -1 with b(n) = A097775(n), n >= 0.

The programs for A097776, the canonical program `A097776.P1930780529449098621` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097776 has offset 0).

The definition of A097776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097776.P1930780529449098621

`786*a(n-1)-a(n-2)` with `a(0)=1, a(1)=785`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097776

/-- `786*a(n-1)-a(n-2)` -/
def P1930780529449098621.Spec : Prop :=
  ∀ n, P1930780529449098621.a n = A097776 n

theorem P1930780529449098621.correct : P1930780529449098621.Spec := by
  intro n
  simp only [A097776]

end A097776

/-! ## A097776.P2324492810028593429

`A041365(2*n)`
-/

namespace A097776.P2324492810028593429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041365 (2 * n)

end

end A097776.P2324492810028593429

namespace A097776

/-- `A041365(2*n)` -/
def P2324492810028593429.Spec : Prop :=
  ∀ n, P2324492810028593429.a n = A097776 n

end A097776

/-! ## A097776.P4253752662883198283

`A042519(2*n)`
-/

namespace A097776.P4253752662883198283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042519 (2 * n)

end

end A097776.P4253752662883198283

namespace A097776

/-- `A042519(2*n)` -/
def P4253752662883198283.Spec : Prop :=
  ∀ n, P4253752662883198283.a n = A097776 n

end A097776

/-! ## A097776.P15543653432720704481

`record[A041365(A008611(A000265(n+1)))]`
-/

namespace A097776.P15543653432720704481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041365 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097776.P15543653432720704481

namespace A097776

/-- `record[A041365(A008611(A000265(n+1)))]` -/
def P15543653432720704481.Spec : Prop :=
  ∀ n, P15543653432720704481.a n = A097776 n

end A097776

/-! ## A097776.P4192471425061057046

`record[A041365(A057918(A111284(n+1)))]`
-/

namespace A097776.P4192471425061057046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041365 (A057918 (A111284 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097776.P4192471425061057046

namespace A097776

/-- `record[A041365(A057918(A111284(n+1)))]` -/
def P4192471425061057046.Spec : Prop :=
  ∀ n, P4192471425061057046.a n = A097776 n

end A097776

/-!
# A097777: Triangle read by rows: T(n,k) = number of peakless Motzkin paths of length n containing k U H^j Us for some j>0, where U=(1,1) and H=(1,0) (can be easily expressed using RNA secondary structure terminology).

The programs for A097777, there is no canonical definition to state claims against.
-/

/-! ## A097777.P16291139299952912390

`A054526(2^ceil(ϕ*n))`
-/

namespace A097777.P16291139299952912390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.goldenRatio * (n : ℝ)⌉ : ℤ))).toNat

end

end A097777.P16291139299952912390

/-! ## A097777.P765258313667566777

`A105154(A090867(∑[n]))`
-/

namespace A097777.P765258313667566777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A090867 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A097777.P765258313667566777

/-! ## A097777.P10165720531324545120

`A155971(A034776(n+1))`
-/

namespace A097777.P10165720531324545120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155971 (A034776 (n + 1)).toNat

end

end A097777.P10165720531324545120

/-! ## A097777.P17518489476051123084

`A201159(A362081(n+1))`
-/

namespace A097777.P17518489476051123084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201159 (A362081 (n + 1)).toNat

end

end A097777.P17518489476051123084

/-! ## A097777.P12158112411284378272

`A110333(n)-A165877(A342002(n))`
-/

namespace A097777.P12158112411284378272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110333 n - A165877 (A342002 n).toNat

end

end A097777.P12158112411284378272

/-!
# A097778: Chebyshev polynomials S(n,23) with Diophantine property.

The programs for A097778, the canonical program `A097778.P9108256962550112587` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097778 has offset 0).

The definition of A097778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097778.P9108256962550112587

`23*a(n-1)-a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097778

/-- `23*a(n-1)-a(n-2)` -/
def P9108256962550112587.Spec : Prop :=
  ∀ n, P9108256962550112587.a n = A097778 n

theorem P9108256962550112587.correct : P9108256962550112587.Spec := by
  intro n
  simp only [A097778]

end A097778

/-! ## A097778.P7358875779750742142

`ogf(1/(1-23x+x^2))`
-/

namespace A097778.P7358875779750742142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -23, 1] n

end

end A097778.P7358875779750742142

namespace A097778

/-- `ogf(1/(1-23x+x^2))` -/
def P7358875779750742142.Spec : Prop :=
  ∀ n, P7358875779750742142.a n = A097778 n

end A097778

/-! ## A097778.P6570121362043428222

`Δ[A334673(n)]`
-/

namespace A097778.P6570121362043428222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097778.P6570121362043428222

namespace A097778

/-- `Δ[A334673(n)]` -/
def P6570121362043428222.Spec : Prop :=
  ∀ n, P6570121362043428222.a n = A097778 n

end A097778

/-! ## A097778.P829783201501652567

`A290902(2*n)/3-a(n-1)` with `a(0)=1`
-/

namespace A097778.P829783201501652567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A290902 (2 * n) : ℚ) / 3 - a (n - 1)

end

end A097778.P829783201501652567

namespace A097778

/-- `A290902(2*n)/3-a(n-1)` -/
def P829783201501652567.Spec : Prop :=
  ∀ n, P829783201501652567.a n = (A097778 n : ℚ)

end A097778

/-! ## A097778.P3940649952519320318

`A334673(n+1)-A334673(n)`
-/

namespace A097778.P3940649952519320318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334673 (n + 1) - A334673 n

end

end A097778.P3940649952519320318

namespace A097778

/-- `A334673(n+1)-A334673(n)` -/
def P3940649952519320318.Spec : Prop :=
  ∀ n, P3940649952519320318.a n = A097778 n

end A097778

/-! ## A097778.P13016235483622106669

`Δ[A160695(n+1)/5]`
-/

namespace A097778.P13016235483622106669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160695 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097778.P13016235483622106669

namespace A097778

/-- `Δ[A160695(n+1)/5]` -/
def P13016235483622106669.Spec : Prop :=
  ∀ n, P13016235483622106669.a n = (A097778 n : ℚ)

end A097778

/-! ## A097778.P14893968331598780067

`A004254(2*(n+1))/5`
-/

namespace A097778.P14893968331598780067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 (2 * (n + 1)) : ℚ) / 5

end

end A097778.P14893968331598780067

namespace A097778

/-- `A004254(2*(n+1))/5` -/
def P14893968331598780067.Spec : Prop :=
  ∀ n, P14893968331598780067.a n = (A097778 n : ℚ)

end A097778

/-! ## A097778.P5195483625251739532

`A144109(2*n+1)/9`
-/

namespace A097778.P5195483625251739532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144109 (2 * n + 1) : ℚ) / 9

end

end A097778.P5195483625251739532

namespace A097778

/-- `A144109(2*n+1)/9` -/
def P5195483625251739532.Spec : Prop :=
  ∀ n, P5195483625251739532.a n = (A097778 n : ℚ)

end A097778

/-!
# A097779: Number of Motzkin paths of length n, starting with an up step, ending with a down step and having no peaks (can be easily expressed using RNA secondary structure terminology).

The programs for A097779, there is no canonical definition to state claims against.
-/

/-! ## A097779.P7473741865070158806

`char[1]+Δ[Δ[A203019(n)]]`
-/

namespace A097779.P7473741865070158806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A097779.P7473741865070158806

/-! ## A097779.P10034048216202361759

`Δ[Δ[A203019(n)+A004275(n)]]`
-/

namespace A097779.P10034048216202361759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 n + A004275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097779.P10034048216202361759

/-! ## A097779.P17579269154528307814

`Δ[Δ[A203019(n)+A004280(n+1)]]`
-/

namespace A097779.P17579269154528307814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 n + A004280 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097779.P17579269154528307814

/-! ## A097779.P2178461259673565519

`Δ[Δ[A203019(n)]-A019590(n+1)]`
-/

namespace A097779.P2178461259673565519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A019590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097779.P2178461259673565519

/-! ## A097779.P9896403164353187400

`Δ[Δ[A203019(n)]]%A001254(n)`
-/

namespace A097779.P9896403164353187400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001254 n)

end

end A097779.P9896403164353187400

/-!
# A097780: Chebyshev polynomials S(n,25) with Diophantine property.

The programs for A097780, the canonical program `A097780.P4974519717100866427` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097780 has offset 0).

The definition of A097780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097780.P4974519717100866427

`25*a(n-1)-a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097780

/-- `25*a(n-1)-a(n-2)` -/
def P4974519717100866427.Spec : Prop :=
  ∀ n, P4974519717100866427.a n = A097780 n

theorem P4974519717100866427.correct : P4974519717100866427.Spec := by
  intro n
  simp only [A097780]

end A097780

/-! ## A097780.P10984156602438641044

`ogf(1/(1-25x+x^2))`
-/

namespace A097780.P10984156602438641044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -25, 1] n

end

end A097780.P10984156602438641044

namespace A097780

/-- `ogf(1/(1-25x+x^2))` -/
def P10984156602438641044.Spec : Prop :=
  ∀ n, P10984156602438641044.a n = A097780 n

end A097780

/-! ## A097780.P5121145600116092346

`A154022(n+2)/5`
-/

namespace A097780.P5121145600116092346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154022 (n + 2) : ℚ) / 5

end

end A097780.P5121145600116092346

namespace A097780

/-- `A154022(n+2)/5` -/
def P5121145600116092346.Spec : Prop :=
  ∀ n, P5121145600116092346.a n = (A097780 n : ℚ)

end A097780

/-! ## A097780.P14106207818831133099

`A090733(n)+a(n-2)` with `a(0)=1, a(1)=25`
-/

namespace A097780.P14106207818831133099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  A090733 n + a (n - 2)

end

end A097780.P14106207818831133099

namespace A097780

/-- `A090733(n)+a(n-2)` -/
def P14106207818831133099.Spec : Prop :=
  ∀ n, P14106207818831133099.a n = A097780 n

end A097780

/-! ## A097780.P8836979346849132712

`(a(n-1)²-1)/a(n-2)` with `a(0)=1, a(1)=25`
-/

namespace A097780.P8836979346849132712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 25] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A097780.P8836979346849132712

namespace A097780

/-- `(a(n-1)²-1)/a(n-2)` -/
def P8836979346849132712.Spec : Prop :=
  ∀ n, P8836979346849132712.a n = (A097780 n : ℚ)

end A097780

/-!
# A097781: Chebyshev polynomials S(n,27) with Diophantine property.

The programs for A097781, the canonical program `A097781.P18246602483177827412` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097781 has offset 0).

The definition of A097781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097781.P18246602483177827412

`27*a(n-1)-a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097781

/-- `27*a(n-1)-a(n-2)` -/
def P18246602483177827412.Spec : Prop :=
  ∀ n, P18246602483177827412.a n = A097781 n

theorem P18246602483177827412.correct : P18246602483177827412.Spec := by
  intro n
  simp only [A097781]

end A097781

/-! ## A097781.P17323807132949714712

`ogf(1/(1-27x+x^2))`
-/

namespace A097781.P17323807132949714712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -27, 1] n

end

end A097781.P17323807132949714712

namespace A097781

/-- `ogf(1/(1-27x+x^2))` -/
def P17323807132949714712.Spec : Prop :=
  ∀ n, P17323807132949714712.a n = A097781 n

end A097781

/-! ## A097781.P16026161764989441885

`∑[A097835(n)]`
-/

namespace A097781.P16026161764989441885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097781.P16026161764989441885

namespace A097781

/-- `∑[A097835(n)]` -/
def P16026161764989441885.Spec : Prop :=
  ∀ n, P16026161764989441885.a n = A097781 n

end A097781

/-! ## A097781.P9874992793653634555

`∑[A052918(2*n)]`
-/

namespace A097781.P9874992793653634555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097781.P9874992793653634555

namespace A097781

/-- `∑[A052918(2*n)]` -/
def P9874992793653634555.Spec : Prop :=
  ∀ n, P9874992793653634555.a n = A097781 n

end A097781

/-! ## A097781.P8694508363351514623

`A052918(2*n+1)/5`
-/

namespace A097781.P8694508363351514623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052918 (2 * n + 1) : ℚ) / 5

end

end A097781.P8694508363351514623

namespace A097781

/-- `A052918(2*n+1)/5` -/
def P8694508363351514623.Spec : Prop :=
  ∀ n, P8694508363351514623.a n = (A097781 n : ℚ)

end A097781

/-! ## A097781.P3168249187611757230

`A097834(n)-a(n-1)` with `a(0)=1`
-/

namespace A097781.P3168249187611757230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097834 n - a (n - 1)

end

end A097781.P3168249187611757230

namespace A097781

/-- `A097834(n)-a(n-1)` -/
def P3168249187611757230.Spec : Prop :=
  ∀ n, P3168249187611757230.a n = A097781 n

end A097781

/-! ## A097781.P1189588917233461617

`A052918(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A097781.P1189588917233461617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052918 (n + n) + a (n - 1)

end

end A097781.P1189588917233461617

namespace A097781

/-- `A052918(n+n)+a(n-1)` -/
def P1189588917233461617.Spec : Prop :=
  ∀ n, P1189588917233461617.a n = A097781 n

end A097781

/-! ## A097781.P15760935735887799960

`∑[A099365(n+1)+A099365(n)]`
-/

namespace A097781.P15760935735887799960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099365 (n + 1) + A099365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097781.P15760935735887799960

namespace A097781

/-- `∑[A099365(n+1)+A099365(n)]` -/
def P15760935735887799960.Spec : Prop :=
  ∀ n, P15760935735887799960.a n = A097781 n

end A097781

/-!
# A097782: Chebyshev polynomials S(n,29) with Diophantine property.

The programs for A097782, the canonical program `A097782.P13109860274637230573` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097782 has offset 0).

The definition of A097782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097782.P13109860274637230573

`29*a(n-1)-a(n-2)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097782

/-- `29*a(n-1)-a(n-2)` -/
def P13109860274637230573.Spec : Prop :=
  ∀ n, P13109860274637230573.a n = A097782 n

theorem P13109860274637230573.correct : P13109860274637230573.Spec := by
  intro n
  simp only [A097782]

end A097782

/-! ## A097782.P17709160339751151740

`ogf(1/(1-29x+x^2))`
-/

namespace A097782.P17709160339751151740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -29, 1] n

end

end A097782.P17709160339751151740

namespace A097782

/-- `ogf(1/(1-29x+x^2))` -/
def P17709160339751151740.Spec : Prop :=
  ∀ n, P17709160339751151740.a n = A097782 n

end A097782

/-! ## A097782.P13456104456256172265

`gcd(2, A042617(2*n+1))*A042617(2*n+1)`
-/

namespace A097782.P13456104456256172265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A042617 (2 * n + 1)) : ℤ) * A042617 (2 * n + 1)

end

end A097782.P13456104456256172265

namespace A097782

/-- `gcd(2, A042617(2*n+1))*A042617(2*n+1)` -/
def P13456104456256172265.Spec : Prop :=
  ∀ n, P13456104456256172265.a n = A097782 n

end A097782

/-! ## A097782.P1495575552780752129

`(a(n-1)²-1)/a(n-2)` with `a(0)=1, a(1)=29`
-/

namespace A097782.P1495575552780752129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 29] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A097782.P1495575552780752129

namespace A097782

/-- `(a(n-1)²-1)/a(n-2)` -/
def P1495575552780752129.Spec : Prop :=
  ∀ n, P1495575552780752129.a n = (A097782 n : ℚ)

end A097782

/-! ## A097782.P4948411990592267836

`∑[A090251(2*n)]/A090251(n)`
-/

namespace A097782.P4948411990592267836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090251 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A090251 n : ℚ)

end

end A097782.P4948411990592267836

namespace A097782

/-- `∑[A090251(2*n)]/A090251(n)` -/
def P4948411990592267836.Spec : Prop :=
  ∀ n, P4948411990592267836.a n = (A097782 n : ℚ)

end A097782

/-!
# A097783: Chebyshev polynomials S(n,11) + S(n-1,11) with Diophantine property.

The programs for A097783, the canonical program `A097783.P1298231055740217349` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097783 has offset 0).

The definition of A097783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097783.P1298231055740217349

`11*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097783

/-- `11*a(n-1)-a(n-2)` -/
def P1298231055740217349.Spec : Prop :=
  ∀ n, P1298231055740217349.a n = A097783 n

theorem P1298231055740217349.correct : P1298231055740217349.Spec := by
  intro n
  simp only [A097783]

end A097783

/-! ## A097783.P7589635046823634949

`A006497(2*n+1)/3`
-/

namespace A097783.P7589635046823634949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006497 (2 * n + 1) : ℚ) / 3

end

end A097783.P7589635046823634949

namespace A097783

/-- `A006497(2*n+1)/3` -/
def P7589635046823634949.Spec : Prop :=
  ∀ n, P7589635046823634949.a n = (A097783 n : ℚ)

end A097783

/-! ## A097783.P5841858246524643753

`ogf((1+x)/(1-11x+x^2))`
-/

namespace A097783.P5841858246524643753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -11, 1] n

end

end A097783.P5841858246524643753

namespace A097783

/-- `ogf((1+x)/(1-11x+x^2))` -/
def P5841858246524643753.Spec : Prop :=
  ∀ n, P5841858246524643753.a n = A097783 n

end A097783

/-! ## A097783.P18022056937814293283

`Δ[A098298(n)]`
-/

namespace A097783.P18022056937814293283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097783.P18022056937814293283

namespace A097783

/-- `Δ[A098298(n)]` -/
def P18022056937814293283.Spec : Prop :=
  ∀ n, P18022056937814293283.a n = A097783 n

end A097783

/-! ## A097783.P6721542028346424880

`∑[A057076(n)]-1`
-/

namespace A097783.P6721542028346424880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097783.P6721542028346424880

namespace A097783

/-- `∑[A057076(n)]-1` -/
def P6721542028346424880.Spec : Prop :=
  ∀ n, P6721542028346424880.a n = A097783 n

end A097783

/-! ## A097783.P5082304159724348580

`∑[A212962(2*n)+1]`
-/

namespace A097783.P5082304159724348580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212962 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097783.P5082304159724348580

namespace A097783

/-- `∑[A212962(2*n)+1]` -/
def P5082304159724348580.Spec : Prop :=
  ∀ n, P5082304159724348580.a n = A097783 n

end A097783

/-! ## A097783.P4340264309508443798

`∑[A006497(2*n)]-1`
-/

namespace A097783.P4340264309508443798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097783.P4340264309508443798

namespace A097783

/-- `∑[A006497(2*n)]-1` -/
def P4340264309508443798.Spec : Prop :=
  ∀ n, P4340264309508443798.a n = A097783 n

end A097783

/-! ## A097783.P10089173447685030276

`∑[A100230(2*n)]+n`
-/

namespace A097783.P10089173447685030276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100230 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A097783.P10089173447685030276

namespace A097783

/-- `∑[A100230(2*n)]+n` -/
def P10089173447685030276.Spec : Prop :=
  ∀ n, P10089173447685030276.a n = A097783 n

end A097783

/-! ## A097783.P2683385283374569620

`A098298(n+1)-A098298(n)`
-/

namespace A097783.P2683385283374569620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098298 (n + 1) - A098298 n

end

end A097783.P2683385283374569620

namespace A097783

/-- `A098298(n+1)-A098298(n)` -/
def P2683385283374569620.Spec : Prop :=
  ∀ n, P2683385283374569620.a n = A097783 n

end A097783

/-! ## A097783.P10409710043889338484

`A052924(2*n+1)-A004190(n)`
-/

namespace A097783.P10409710043889338484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 (2 * n + 1) - A004190 n

end

end A097783.P10409710043889338484

namespace A097783

/-- `A052924(2*n+1)-A004190(n)` -/
def P10409710043889338484.Spec : Prop :=
  ∀ n, P10409710043889338484.a n = A097783 n

end A097783

/-!
# A097784: Partial sums of Chebyshev sequence S(n,10) = U(n,5) = A004189(n+1).

The programs for A097784, the canonical program `A097784.P16042574278890088814` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097784 has offset 0).

The definition of A097784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097784.P16042574278890088814

`10*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097784

/-- `10*a(n-1)-a(n-2)+1` -/
def P16042574278890088814.Spec : Prop :=
  ∀ n, P16042574278890088814.a n = A097784 n

theorem P16042574278890088814.correct : P16042574278890088814.Spec := by
  intro n
  simp only [A097784]

end A097784

/-! ## A097784.P7451249995582423014

`∑[ogf(1/(1-10x+x^2))]`
-/

namespace A097784.P7451249995582423014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P7451249995582423014

namespace A097784

/-- `∑[ogf(1/(1-10x+x^2))]` -/
def P7451249995582423014.Spec : Prop :=
  ∀ n, P7451249995582423014.a n = A097784 n

end A097784

/-! ## A097784.P16019431689869191636

`ogf(1/(1-11x+11x^2-x^3))`
-/

namespace A097784.P16019431689869191636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -11, 11, -1] n

end

end A097784.P16019431689869191636

namespace A097784

/-- `ogf(1/(1-11x+11x^2-x^3))` -/
def P16019431689869191636.Spec : Prop :=
  ∀ n, P16019431689869191636.a n = A097784 n

end A097784

/-! ## A097784.P17503654335916801485

`∑[10*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=10`
-/

namespace A097784.P17503654335916801485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P17503654335916801485

namespace A097784

/-- `∑[10*a(n-1)-a(n-2)]` -/
def P17503654335916801485.Spec : Prop :=
  ∀ n, P17503654335916801485.a n = A097784 n

end A097784

/-! ## A097784.P5229459578976287316

`10*a(n-1)-(a(n-2)-1)` with `a(0)=1, a(1)=11`
-/

namespace A097784.P5229459578976287316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  10 * a (n - 1) - (a (n - 2) - 1)

end

end A097784.P5229459578976287316

namespace A097784

/-- `10*a(n-1)-(a(n-2)-1)` -/
def P5229459578976287316.Spec : Prop :=
  ∀ n, P5229459578976287316.a n = A097784 n

theorem P5229459578976287316.correct : P5229459578976287316.Spec := by
  intro n
  simp only [A097784, Nat.add_sub_cancel, A097784.P5229459578976287316.a, A097784.P16042574278890088814.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097784

/-! ## A097784.P3269718216045689318

`∑[∑[A138288(n)]]`
-/

namespace A097784.P3269718216045689318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P3269718216045689318

namespace A097784

/-- `∑[∑[A138288(n)]]` -/
def P3269718216045689318.Spec : Prop :=
  ∀ n, P3269718216045689318.a n = A097784 n

end A097784

/-! ## A097784.P5779706258284685751

`∑[A004189(n+1)]`
-/

namespace A097784.P5779706258284685751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P5779706258284685751

namespace A097784

/-- `∑[A004189(n+1)]` -/
def P5779706258284685751.Spec : Prop :=
  ∀ n, P5779706258284685751.a n = A097784 n

end A097784

/-! ## A097784.P15775095998845069342

`∑[∑[A072256(n+1)]]`
-/

namespace A097784.P15775095998845069342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P15775095998845069342

namespace A097784

/-- `∑[∑[A072256(n+1)]]` -/
def P15775095998845069342.Spec : Prop :=
  ∀ n, P15775095998845069342.a n = A097784 n

end A097784

/-! ## A097784.P11210313210941340934

`∑[∑[A041007(2*n)]]`
-/

namespace A097784.P11210313210941340934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P11210313210941340934

namespace A097784

/-- `∑[∑[A041007(2*n)]]` -/
def P11210313210941340934.Spec : Prop :=
  ∀ n, P11210313210941340934.a n = A097784 n

end A097784

/-! ## A097784.P7654537849660291546

`∑[∑[A041039(2*n)]]`
-/

namespace A097784.P7654537849660291546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P7654537849660291546

namespace A097784

/-- `∑[∑[A041039(2*n)]]` -/
def P7654537849660291546.Spec : Prop :=
  ∀ n, P7654537849660291546.a n = A097784 n

end A097784

/-! ## A097784.P4050688957805938762

`∑[∑[A142239(2*n)]]`
-/

namespace A097784.P4050688957805938762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142239 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P4050688957805938762

namespace A097784

/-- `∑[∑[A142239(2*n)]]` -/
def P4050688957805938762.Spec : Prop :=
  ∀ n, P4050688957805938762.a n = A097784 n

end A097784

/-! ## A097784.P3068085305994910226

`∑[A001078(n+1)/2]`
-/

namespace A097784.P3068085305994910226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P3068085305994910226

namespace A097784

/-- `∑[A001078(n+1)/2]` -/
def P3068085305994910226.Spec : Prop :=
  ∀ n, P3068085305994910226.a n = (A097784 n : ℚ)

end A097784

/-! ## A097784.P8346849096215298999

`∑[∑[A080872(2*n+1)]]`
-/

namespace A097784.P8346849096215298999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P8346849096215298999

namespace A097784

/-- `∑[∑[A080872(2*n+1)]]` -/
def P8346849096215298999.Spec : Prop :=
  ∀ n, P8346849096215298999.a n = A097784 n

end A097784

/-! ## A097784.P8389330544931151123

`A054320(n)+a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A097784.P8389330544931151123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A054320 n + a (n - 2)

end

end A097784.P8389330544931151123

namespace A097784

/-- `A054320(n)+a(n-2)` -/
def P8389330544931151123.Spec : Prop :=
  ∀ n, P8389330544931151123.a n = A097784 n

end A097784

/-! ## A097784.P12800743446812624429

`A098297(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A097784.P12800743446812624429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098297 (n + 1) - a (n - 1)

end

end A097784.P12800743446812624429

namespace A097784

/-- `A098297(n+1)-a(n-1)` -/
def P12800743446812624429.Spec : Prop :=
  ∀ n, P12800743446812624429.a n = A097784 n

end A097784

/-! ## A097784.P4155343300285368431

`∑[∑[2*A054318(n+1)-1]]`
-/

namespace A097784.P4155343300285368431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054318 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P4155343300285368431

namespace A097784

/-- `∑[∑[2*A054318(n+1)-1]]` -/
def P4155343300285368431.Spec : Prop :=
  ∀ n, P4155343300285368431.a n = A097784 n

end A097784

/-! ## A097784.P7555241468820506277

`∑[∑[A054320(n)-A001078(n)]]`
-/

namespace A097784.P7555241468820506277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - A001078 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P7555241468820506277

namespace A097784

/-- `∑[∑[A054320(n)-A001078(n)]]` -/
def P7555241468820506277.Spec : Prop :=
  ∀ n, P7555241468820506277.a n = A097784 n

end A097784

/-! ## A097784.P1518242581137856216

`(A098297(n+1)+A004189(n+1))/2`
-/

namespace A097784.P1518242581137856216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098297 (n + 1) + A004189 (n + 1) : ℚ) / 2

end

end A097784.P1518242581137856216

namespace A097784

/-- `(A098297(n+1)+A004189(n+1))/2` -/
def P1518242581137856216.Spec : Prop :=
  ∀ n, P1518242581137856216.a n = (A097784 n : ℚ)

end A097784

/-! ## A097784.P4493874083324538108

`∑[∑[A001078(n+1)]-A098297(n+1)]`
-/

namespace A097784.P4493874083324538108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A098297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P4493874083324538108

namespace A097784

/-- `∑[∑[A001078(n+1)]-A098297(n+1)]` -/
def P4493874083324538108.Spec : Prop :=
  ∀ n, P4493874083324538108.a n = A097784 n

end A097784

/-! ## A097784.P3824136149507440303

`∑[∑[A077410(2*n+1)-A077410(2*n)]]`
-/

namespace A097784.P3824136149507440303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077410 (2 * n + 1) - A077410 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097784.P3824136149507440303

namespace A097784

/-- `∑[∑[A077410(2*n+1)-A077410(2*n)]]` -/
def P3824136149507440303.Spec : Prop :=
  ∀ n, P3824136149507440303.a n = A097784 n

end A097784

/-!
# A097786: a(n) = 3*a(n-1) + C(n+3,3) for n > 0; a(0)=1.

The programs for A097786, the canonical program `A097786.P442545853659600230` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097786 has offset 0).

The definition of A097786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+C(n+3, 3)` (program `A097786.P442545853659600230`, by `A097786.P442545853659600230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097786.P442545853659600230

`3*a(n-1)+C(n+3, 3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097786

/-- `3*a(n-1)+C(n+3, 3)` -/
def P442545853659600230.Spec : Prop :=
  ∀ n, (P442545853659600230.a n : ℤ) = A097786 n

theorem P442545853659600230.correct : P442545853659600230.Spec := by
  intro n
  simp only [A097786]

end A097786

/-! ## A097786.P11932831234501777596

`3^(n+4)/16-(4*n^3+42*n²+152*n+195)/48`
-/

namespace A097786.P11932831234501777596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 4) : ℚ) / 16 - (4 * n ^ 3 + 42 * n ^ 2 + 152 * n + 195 : ℚ) / 48

end

end A097786.P11932831234501777596

namespace A097786

/-- `3^(n+4)/16-(4*n^3+42*n²+152*n+195)/48` -/
def P11932831234501777596.Spec : Prop :=
  ∀ n, P11932831234501777596.a n = (A097786 n : ℚ)

end A097786

/-! ## A097786.P10946870959695648877

`∑[∑[∑[ogf(1/(1-4x+3x^2))]]]`
-/

namespace A097786.P10946870959695648877
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 3] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097786.P10946870959695648877

namespace A097786

/-- `∑[∑[∑[ogf(1/(1-4x+3x^2))]]]` -/
def P10946870959695648877.Spec : Prop :=
  ∀ n, P10946870959695648877.a n = A097786 n

end A097786

/-! ## A097786.P11331540823531617747

`∑[∑[∑[∑[3*a(n-1)]]]]` with `a(0)=1`
-/

namespace A097786.P11331540823531617747
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  3 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097786.P11331540823531617747

namespace A097786

/-- `∑[∑[∑[∑[3*a(n-1)]]]]` -/
def P11331540823531617747.Spec : Prop :=
  ∀ n, (P11331540823531617747.a n : ℤ) = A097786 n

end A097786

/-! ## A097786.P18262253698257429543

`∑[A052150(n)]`
-/

namespace A097786.P18262253698257429543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097786.P18262253698257429543

namespace A097786

/-- `∑[A052150(n)]` -/
def P18262253698257429543.Spec : Prop :=
  ∀ n, P18262253698257429543.a n = A097786 n

end A097786

/-! ## A097786.P13653571680512432315

`∑[∑[A000340(n)]]`
-/

namespace A097786.P13653571680512432315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097786.P13653571680512432315

namespace A097786

/-- `∑[∑[A000340(n)]]` -/
def P13653571680512432315.Spec : Prop :=
  ∀ n, P13653571680512432315.a n = A097786 n

end A097786

/-! ## A097786.P7685913094401365195

`∑[∑[∑[∑[a(n-1)²/a(n-2)]]]]` with `a(0)=1, a(1)=3`
-/

namespace A097786.P7685913094401365195
noncomputable section

def f4 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f4 =>
  f4 (n - 1) ^ 2 / f4 (n - 2)

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097786.P7685913094401365195

namespace A097786

/-- `∑[∑[∑[∑[a(n-1)²/a(n-2)]]]]` -/
def P7685913094401365195.Spec : Prop :=
  ∀ n, P7685913094401365195.a n = (A097786 n : ℚ)

end A097786

/-!
# A097787: a(n)=3a(n-1)+C(n+4,4),n>0, a(0)=1.

The programs for A097787, the canonical program `A097787.P4299699430944808233` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097787 has offset 0).

The definition of A097787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+C(n+4, 4)` (program `A097787.P4299699430944808233`, by `A097787.P4299699430944808233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097787.P4299699430944808233

`3*a(n-1)+C(n+4, 4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097787

/-- `3*a(n-1)+C(n+4, 4)` -/
def P4299699430944808233.Spec : Prop :=
  ∀ n, (P4299699430944808233.a n : ℤ) = A097787 n

theorem P4299699430944808233.correct : P4299699430944808233.Spec := by
  intro n
  simp only [A097787]

end A097787

/-! ## A097787.P1813395676821130566

`3^(n+5)/32-(2*n^4+32*n^3+196*n²+556*n+633)/96`
-/

namespace A097787.P1813395676821130566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 5) : ℚ) / 32 - (2 * n ^ 4 + 32 * n ^ 3 + 196 * n ^ 2 + 556 * n + 633 : ℚ) / 96

end

end A097787.P1813395676821130566

namespace A097787

/-- `3^(n+5)/32-(2*n^4+32*n^3+196*n²+556*n+633)/96` -/
def P1813395676821130566.Spec : Prop :=
  ∀ n, P1813395676821130566.a n = (A097787 n : ℚ)

end A097787

/-! ## A097787.P15361951725625377715

`∑[∑[∑[∑[ogf(1/(1-4x+3x^2))]]]]`
-/

namespace A097787.P15361951725625377715
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 3] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097787.P15361951725625377715

namespace A097787

/-- `∑[∑[∑[∑[ogf(1/(1-4x+3x^2))]]]]` -/
def P15361951725625377715.Spec : Prop :=
  ∀ n, P15361951725625377715.a n = A097787 n

end A097787

/-! ## A097787.P8004600340927114685

`∑[∑[∑[∑[∑[3*a(n-1)]]]]]` with `a(0)=1`
-/

namespace A097787.P8004600340927114685
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  3 * f5 (n - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097787.P8004600340927114685

namespace A097787

/-- `∑[∑[∑[∑[∑[3*a(n-1)]]]]]` -/
def P8004600340927114685.Spec : Prop :=
  ∀ n, (P8004600340927114685.a n : ℤ) = A097787 n

end A097787

/-! ## A097787.P11044813642840096534

`∑[A097786(n)]`
-/

namespace A097787.P11044813642840096534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097787.P11044813642840096534

namespace A097787

/-- `∑[A097786(n)]` -/
def P11044813642840096534.Spec : Prop :=
  ∀ n, P11044813642840096534.a n = A097787 n

end A097787

/-! ## A097787.P2325427027601478151

`∑[∑[A052150(n)]]`
-/

namespace A097787.P2325427027601478151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097787.P2325427027601478151

namespace A097787

/-- `∑[∑[A052150(n)]]` -/
def P2325427027601478151.Spec : Prop :=
  ∀ n, P2325427027601478151.a n = A097787 n

end A097787

/-! ## A097787.P13480261115940040951

`∑[∑[∑[A000340(n)]]]`
-/

namespace A097787.P13480261115940040951
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097787.P13480261115940040951

namespace A097787

/-- `∑[∑[∑[A000340(n)]]]` -/
def P13480261115940040951.Spec : Prop :=
  ∀ n, P13480261115940040951.a n = A097787 n

end A097787

/-!
# A097788: a(n)=4a(n-1)+C(n+3,3),n>0, a(0)=1.

The programs for A097788, the canonical program `A097788.P12485463002306697112` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097788 has offset 0).

The definition of A097788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+C(n+3, 3)` (program `A097788.P12485463002306697112`, by `A097788.P12485463002306697112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097788.P12485463002306697112

`4*a(n-1)+C(n+3, 3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097788

/-- `4*a(n-1)+C(n+3, 3)` -/
def P12485463002306697112.Spec : Prop :=
  ∀ n, (P12485463002306697112.a n : ℤ) = A097788 n

theorem P12485463002306697112.correct : P12485463002306697112.Spec := by
  intro n
  simp only [A097788]

end A097788

/-! ## A097788.P4412047201663933653

`4^(n+4)/81-(9*n^3+90*n²+303*n+350)/162`
-/

namespace A097788.P4412047201663933653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 4) : ℚ) / 81 - (9 * n ^ 3 + 90 * n ^ 2 + 303 * n + 350 : ℚ) / 162

end

end A097788.P4412047201663933653

namespace A097788

/-- `4^(n+4)/81-(9*n^3+90*n²+303*n+350)/162` -/
def P4412047201663933653.Spec : Prop :=
  ∀ n, P4412047201663933653.a n = (A097788 n : ℚ)

end A097788

/-! ## A097788.P5927938748965095311

`∑[∑[∑[ogf(1/(1-5x+4x^2))]]]`
-/

namespace A097788.P5927938748965095311
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 4] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P5927938748965095311

namespace A097788

/-- `∑[∑[∑[ogf(1/(1-5x+4x^2))]]]` -/
def P5927938748965095311.Spec : Prop :=
  ∀ n, P5927938748965095311.a n = A097788 n

end A097788

/-! ## A097788.P11496690973475964987

`∑[∑[∑[∑[4*a(n-1)]]]]` with `a(0)=1`
-/

namespace A097788.P11496690973475964987
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  4 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P11496690973475964987

namespace A097788

/-- `∑[∑[∑[∑[4*a(n-1)]]]]` -/
def P11496690973475964987.Spec : Prop :=
  ∀ n, (P11496690973475964987.a n : ℤ) = A097788 n

end A097788

/-! ## A097788.P9385431393201233959

`∑[A052161(n)]`
-/

namespace A097788.P9385431393201233959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P9385431393201233959

namespace A097788

/-- `∑[A052161(n)]` -/
def P9385431393201233959.Spec : Prop :=
  ∀ n, P9385431393201233959.a n = A097788 n

end A097788

/-! ## A097788.P16997232761695821632

`∑[∑[A014825(n+1)]]`
-/

namespace A097788.P16997232761695821632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014825 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P16997232761695821632

namespace A097788

/-- `∑[∑[A014825(n+1)]]` -/
def P16997232761695821632.Spec : Prop :=
  ∀ n, P16997232761695821632.a n = A097788 n

end A097788

/-! ## A097788.P4260180816643124982

`∑[∑[A091919(2*n)]]`
-/

namespace A097788.P4260180816643124982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091919 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P4260180816643124982

namespace A097788

/-- `∑[∑[A091919(2*n)]]` -/
def P4260180816643124982.Spec : Prop :=
  ∀ n, P4260180816643124982.a n = A097788 n

end A097788

/-! ## A097788.P585756658500582927

`∑[A389373(2*n+1)]`
-/

namespace A097788.P585756658500582927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389373 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P585756658500582927

namespace A097788

/-- `∑[A389373(2*n+1)]` -/
def P585756658500582927.Spec : Prop :=
  ∀ n, P585756658500582927.a n = A097788 n

end A097788

/-! ## A097788.P17637922463584900076

`∑[∑[A034299(2*n+1)]]`
-/

namespace A097788.P17637922463584900076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034299 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P17637922463584900076

namespace A097788

/-- `∑[∑[A034299(2*n+1)]]` -/
def P17637922463584900076.Spec : Prop :=
  ∀ n, P17637922463584900076.a n = A097788 n

end A097788

/-! ## A097788.P6730590733139002998

`∑[∑[∑[A001045(2*(n+1))]]]`
-/

namespace A097788.P6730590733139002998
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097788.P6730590733139002998

namespace A097788

/-- `∑[∑[∑[A001045(2*(n+1))]]]` -/
def P6730590733139002998.Spec : Prop :=
  ∀ n, P6730590733139002998.a n = A097788 n

end A097788

/-! ## A097788.P2847547611324220708

`∑[∑[A145766(n+1)]]/2`
-/

namespace A097788.P2847547611324220708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145766 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A097788.P2847547611324220708

namespace A097788

/-- `∑[∑[A145766(n+1)]]/2` -/
def P2847547611324220708.Spec : Prop :=
  ∀ n, P2847547611324220708.a n = (A097788 n : ℚ)

end A097788

/-!
# A097789: a(n)=4a(n-1)+C(n+4,4),n>0, a(0)=1.

The programs for A097789, the canonical program `A097789.P11376852224211784031` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097789 has offset 0).

The definition of A097789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+C(n+4, 4)` (program `A097789.P11376852224211784031`, by `A097789.P11376852224211784031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097789.P11376852224211784031

`4*a(n-1)+C(n+4, 4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097789

/-- `4*a(n-1)+C(n+4, 4)` -/
def P11376852224211784031.Spec : Prop :=
  ∀ n, (P11376852224211784031.a n : ℤ) = A097789 n

theorem P11376852224211784031.correct : P11376852224211784031.Spec := by
  intro n
  simp only [A097789]

end A097789

/-! ## A097789.P7623318740172279585

`∑[∑[∑[∑[∑[4^n]]]]]`
-/

namespace A097789.P7623318740172279585
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097789.P7623318740172279585

namespace A097789

/-- `∑[∑[∑[∑[∑[4^n]]]]]` -/
def P7623318740172279585.Spec : Prop :=
  ∀ n, (P7623318740172279585.a n : ℤ) = A097789 n

end A097789

/-! ## A097789.P16444213921672487756

`floor(∑[∑[∑[∑[∑[4*a(n-1)]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097789.P16444213921672487756
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  4 * f5 (n - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097789.P16444213921672487756

namespace A097789

/-- `floor(∑[∑[∑[∑[∑[4*a(n-1)]]]]])` -/
def P16444213921672487756.Spec : Prop :=
  ∀ n, (P16444213921672487756.a n : ℤ) = A097789 n

end A097789

/-! ## A097789.P2411260635561982936

`∑[∑[∑[n+1]]]+4*a(n-1)` with `a(0)=1`
-/

namespace A097789.P2411260635561982936
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A097789.P2411260635561982936

namespace A097789

/-- `∑[∑[∑[n+1]]]+4*a(n-1)` -/
def P2411260635561982936.Spec : Prop :=
  ∀ n, (P2411260635561982936.a n : ℤ) = A097789 n

end A097789

/-! ## A097789.P14028074077080340875

`or(∑[A097788(n)], char[1])`
-/

namespace A097789.P14028074077080340875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097788 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A097789.P14028074077080340875

namespace A097789

/-- `or(∑[A097788(n)], char[1])` -/
def P14028074077080340875.Spec : Prop :=
  ∀ n, P14028074077080340875.a n = A097789 n

end A097789

/-! ## A097789.P1580992719604544170

`gcd(∑[A097788(n)], A000038(n))`
-/

namespace A097789.P1580992719604544170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A097789.P1580992719604544170

namespace A097789

/-- `gcd(∑[A097788(n)], A000038(n))` -/
def P1580992719604544170.Spec : Prop :=
  ∀ n, (P1580992719604544170.a n : ℤ) = A097789 n

end A097789

/-! ## A097789.P11437251757912850362

`∑[∑[∑[A145766(n+1)]]]/2`
-/

namespace A097789.P11437251757912850362
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A097789.P11437251757912850362

namespace A097789

/-- `∑[∑[∑[A145766(n+1)]]]/2` -/
def P11437251757912850362.Spec : Prop :=
  ∀ n, P11437251757912850362.a n = (A097789 n : ℚ)

end A097789

/-! ## A097789.P2362510202119012065

`∑[A097788(n)]%A097804(n)`
-/

namespace A097789.P2362510202119012065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A097804 n)

end

end A097789.P2362510202119012065

namespace A097789

/-- `∑[A097788(n)]%A097804(n)` -/
def P2362510202119012065.Spec : Prop :=
  ∀ n, P2362510202119012065.a n = A097789 n

end A097789

/-!
# A097790: a(n)=5a(n-1)+C(n+3,3),n>0, a(0)=1.

The programs for A097790, the canonical program `A097790.P8626132845727294602` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097790 has offset 0).

The definition of A097790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+C(n+3, 3)` (program `A097790.P8626132845727294602`, by `A097790.P8626132845727294602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097790.P8626132845727294602

`5*a(n-1)+C(n+3, 3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097790

/-- `5*a(n-1)+C(n+3, 3)` -/
def P8626132845727294602.Spec : Prop :=
  ∀ n, (P8626132845727294602.a n : ℤ) = A097790 n

theorem P8626132845727294602.correct : P8626132845727294602.Spec := by
  intro n
  simp only [A097790]

end A097790

/-! ## A097790.P7846951199942775188

`∑[∑[∑[∑[5^n]]]]`
-/

namespace A097790.P7846951199942775188
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097790.P7846951199942775188

namespace A097790

/-- `∑[∑[∑[∑[5^n]]]]` -/
def P7846951199942775188.Spec : Prop :=
  ∀ n, (P7846951199942775188.a n : ℤ) = A097790 n

end A097790

/-! ## A097790.P9727797763302785702

`floor(∑[∑[∑[∑[5*a(n-1)]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097790.P9727797763302785702
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  5 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097790.P9727797763302785702

namespace A097790

/-- `floor(∑[∑[∑[∑[5*a(n-1)]]]])` -/
def P9727797763302785702.Spec : Prop :=
  ∀ n, (P9727797763302785702.a n : ℤ) = A097790 n

end A097790

/-! ## A097790.P10679938873794479892

`∑[∑[n+1]]+5*a(n-1)` with `a(0)=1`
-/

namespace A097790.P10679938873794479892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A097790.P10679938873794479892

namespace A097790

/-- `∑[∑[n+1]]+5*a(n-1)` -/
def P10679938873794479892.Spec : Prop :=
  ∀ n, (P10679938873794479892.a n : ℤ) = A097790 n

end A097790

/-! ## A097790.P12835552811507200690

`∑[∑[∑[∑[5*a(n-1)]]]]/2` with `a(0)=2`
-/

namespace A097790.P12835552811507200690
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f4 =>
  5 * f4 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A097790.P12835552811507200690

namespace A097790

/-- `∑[∑[∑[∑[5*a(n-1)]]]]/2` -/
def P12835552811507200690.Spec : Prop :=
  ∀ n, P12835552811507200690.a n = (A097790 n : ℚ)

end A097790

/-! ## A097790.P10661429879963295749

`∑[2*A052244(n)]/2`
-/

namespace A097790.P10661429879963295749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052244 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A097790.P10661429879963295749

namespace A097790

/-- `∑[2*A052244(n)]/2` -/
def P10661429879963295749.Spec : Prop :=
  ∀ n, P10661429879963295749.a n = (A097790 n : ℚ)

end A097790

/-! ## A097790.P17148484021256590882

`lcm(∑[A052244(n)], A033999(n))`
-/

namespace A097790.P17148484021256590882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A097790.P17148484021256590882

namespace A097790

/-- `lcm(∑[A052244(n)], A033999(n))` -/
def P17148484021256590882.Spec : Prop :=
  ∀ n, (P17148484021256590882.a n : ℤ) = A097790 n

end A097790

/-! ## A097790.P3792999619362632655

`or(∑[A052244(n)], A000007(n))`
-/

namespace A097790.P3792999619362632655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A097790.P3792999619362632655

namespace A097790

/-- `or(∑[A052244(n)], A000007(n))` -/
def P3792999619362632655.Spec : Prop :=
  ∀ n, P3792999619362632655.a n = A097790 n

end A097790

/-! ## A097790.P14646970577843085227

`∑[A052244(n)]*A059268(∑[n])`
-/

namespace A097790.P14646970577843085227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059268 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A097790.P14646970577843085227

namespace A097790

/-- `∑[A052244(n)]*A059268(∑[n])` -/
def P14646970577843085227.Spec : Prop :=
  ∀ n, P14646970577843085227.a n = A097790 n

end A097790

/-! ## A097790.P1565447328174752063

`A001222(A002476(n+1))*∑[A052244(n)]`
-/

namespace A097790.P1565447328174752063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097790.P1565447328174752063

namespace A097790

/-- `A001222(A002476(n+1))*∑[A052244(n)]` -/
def P1565447328174752063.Spec : Prop :=
  ∀ n, P1565447328174752063.a n = A097790 n

end A097790

/-! ## A097790.P18342995011046849729

`A001222(A052247(n+1))*∑[A052244(n)]`
-/

namespace A097790.P18342995011046849729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052247 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097790.P18342995011046849729

namespace A097790

/-- `A001222(A052247(n+1))*∑[A052244(n)]` -/
def P18342995011046849729.Spec : Prop :=
  ∀ n, P18342995011046849729.a n = A097790 n

end A097790

/-! ## A097790.P11253683818347653405

`A001222(A008578(n+2))*∑[A052244(n)]`
-/

namespace A097790.P11253683818347653405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 2)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097790.P11253683818347653405

namespace A097790

/-- `A001222(A008578(n+2))*∑[A052244(n)]` -/
def P11253683818347653405.Spec : Prop :=
  ∀ n, P11253683818347653405.a n = A097790 n

end A097790

/-! ## A097790.P4058858221929997067

`∑[A052244(n)]%A202391(n+1)`
-/

namespace A097790.P4058858221929997067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A202391 (n + 1))

end

end A097790.P4058858221929997067

namespace A097790

/-- `∑[A052244(n)]%A202391(n+1)` -/
def P4058858221929997067.Spec : Prop :=
  ∀ n, P4058858221929997067.a n = A097790 n

end A097790

/-! ## A097790.P3099650048684461283

`A001222(A069488(n+1))*∑[A052244(n)]`
-/

namespace A097790.P3099650048684461283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A069488 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097790.P3099650048684461283

namespace A097790

/-- `A001222(A069488(n+1))*∑[A052244(n)]` -/
def P3099650048684461283.Spec : Prop :=
  ∀ n, P3099650048684461283.a n = A097790 n

end A097790

/-!
# A097791: a(n)=5a(n-1)+C(n+4,4),n>0, a(0)=1.

The programs for A097791, the canonical program `A097791.P2869256278946483897` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097791 has offset 0).

The definition of A097791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+C(n+4, 4)` (program `A097791.P2869256278946483897`, by `A097791.P2869256278946483897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097791.P2869256278946483897

`5*a(n-1)+C(n+4, 4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097791

/-- `5*a(n-1)+C(n+4, 4)` -/
def P2869256278946483897.Spec : Prop :=
  ∀ n, (P2869256278946483897.a n : ℤ) = A097791 n

theorem P2869256278946483897.correct : P2869256278946483897.Spec := by
  intro n
  simp only [A097791]

end A097791

/-! ## A097791.P8967746649108415754

`∑[∑[∑[∑[∑[5^n]]]]]`
-/

namespace A097791.P8967746649108415754
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097791.P8967746649108415754

namespace A097791

/-- `∑[∑[∑[∑[∑[5^n]]]]]` -/
def P8967746649108415754.Spec : Prop :=
  ∀ n, (P8967746649108415754.a n : ℤ) = A097791 n

end A097791

/-! ## A097791.P16012116081064655589

`floor(∑[∑[∑[∑[∑[5*a(n-1)]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097791.P16012116081064655589
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f5 =>
  5 * f5 (n - 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097791.P16012116081064655589

namespace A097791

/-- `floor(∑[∑[∑[∑[∑[5*a(n-1)]]]]])` -/
def P16012116081064655589.Spec : Prop :=
  ∀ n, (P16012116081064655589.a n : ℤ) = A097791 n

end A097791

/-! ## A097791.P4207567583662816804

`∑[∑[∑[n+1]]]+5*a(n-1)` with `a(0)=1`
-/

namespace A097791.P4207567583662816804
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5 * a (n - 1)

end

end A097791.P4207567583662816804

namespace A097791

/-- `∑[∑[∑[n+1]]]+5*a(n-1)` -/
def P4207567583662816804.Spec : Prop :=
  ∀ n, (P4207567583662816804.a n : ℤ) = A097791 n

end A097791

/-! ## A097791.P17632076213829666317

`A097790(n)+a(n-1)` with `a(0)=1`
-/

namespace A097791.P17632076213829666317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097790 n + a (n - 1)

end

end A097791.P17632076213829666317

namespace A097791

/-- `A097790(n)+a(n-1)` -/
def P17632076213829666317.Spec : Prop :=
  ∀ n, P17632076213829666317.a n = A097791 n

end A097791

/-! ## A097791.P7812464134456815778

`gcd(2, A001844(n))*∑[A097790(n)]`
-/

namespace A097791.P7812464134456815778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001844 n) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097791.P7812464134456815778

namespace A097791

/-- `gcd(2, A001844(n))*∑[A097790(n)]` -/
def P7812464134456815778.Spec : Prop :=
  ∀ n, P7812464134456815778.a n = A097791 n

end A097791

/-! ## A097791.P2518230965838487989

`∑[2*A097790(n)]/2`
-/

namespace A097791.P2518230965838487989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097790 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A097791.P2518230965838487989

namespace A097791

/-- `∑[2*A097790(n)]/2` -/
def P2518230965838487989.Spec : Prop :=
  ∀ n, P2518230965838487989.a n = (A097791 n : ℚ)

end A097791

/-! ## A097791.P151016582046865814

`∑[A097790(n)]%A097804(n)`
-/

namespace A097791.P151016582046865814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A097804 n)

end

end A097791.P151016582046865814

namespace A097791

/-- `∑[A097790(n)]%A097804(n)` -/
def P151016582046865814.Spec : Prop :=
  ∀ n, P151016582046865814.a n = A097791 n

end A097791

/-! ## A097791.P17606718184124424323

`A007318(A000217(n))*∑[A097790(n)]`
-/

namespace A097791.P17606718184124424323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097791.P17606718184124424323

namespace A097791

/-- `A007318(A000217(n))*∑[A097790(n)]` -/
def P17606718184124424323.Spec : Prop :=
  ∀ n, P17606718184124424323.a n = A097791 n

end A097791

/-! ## A097791.P9343927972388277883

`A014707(n²)+∑[A097790(n)]`
-/

namespace A097791.P9343927972388277883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097791.P9343927972388277883

namespace A097791

/-- `A014707(n²)+∑[A097790(n)]` -/
def P9343927972388277883.Spec : Prop :=
  ∀ n, P9343927972388277883.a n = A097791 n

end A097791

/-!
# A097792: Numbers of the form 4k^4 or (kp)^p for prime p > 2 and k = 1, 2, 3, ....

The programs for A097792, there is no canonical definition to state claims against.
-/

/-! ## A097792.P1683050356573449738

`filter[A097764(2*n+1), A377988(#)]`
-/

namespace A097792.P1683050356573449738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097764 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A097792.P1683050356573449738

/-!
# A097793: McKay-Thompson series of class 56B for the Monster group.

The programs for A097793, there is no canonical definition to state claims against.
-/

/-! ## A097793.P4383445520256746808

`A112197(2*n)`
-/

namespace A097793.P4383445520256746808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112197 (2 * n)

end

end A097793.P4383445520256746808

/-! ## A097793.P13400024459937352367

`A112198(2*n)`
-/

namespace A097793.P13400024459937352367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112198 (2 * n)

end

end A097793.P13400024459937352367

/-! ## A097793.P12749558576090702056

`abs(A112198(n+n))`
-/

namespace A097793.P12749558576090702056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112198 (n + n)|

end

end A097793.P12749558576090702056

/-! ## A097793.P6594927464319438811

`abs(A112197(A005843(n)))`
-/

namespace A097793.P6594927464319438811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112197 (A005843 n).toNat|

end

end A097793.P6594927464319438811

/-! ## A097793.P18082738194333629252

`A112197(A005843(n))+A000007(n+1)`
-/

namespace A097793.P18082738194333629252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112197 (A005843 n).toNat + A000007 (n + 1)

end

end A097793.P18082738194333629252

/-! ## A097793.P2103312955050057283

`A112197(n+n)^A090996(A292593(n))`
-/

namespace A097793.P2103312955050057283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112197 (n + n) : ℚ) ^ (A090996 (A292593 n).toNat : ℤ)

end

end A097793.P2103312955050057283

/-! ## A097793.P8092190821852412955

`A112197(A005843(n))/A031245(A038573(n)+1)`
-/

namespace A097793.P8092190821852412955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112197 (A005843 n).toNat : ℚ) / (A031245 (A038573 n + 1).toNat : ℚ)

end

end A097793.P8092190821852412955

/-! ## A097793.P5054766694987452566

`gcd(A016053(n+1+n), A112197(A005843(n)))`
-/

namespace A097793.P5054766694987452566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016053 (n + 1 + n)) (A112197 (A005843 n).toNat)

end

end A097793.P5054766694987452566

/-! ## A097793.P316692271062235122

`A112197(n+n)%A282986(n+1)`
-/

namespace A097793.P316692271062235122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112197 (n + n)) (A282986 (n + 1))

end

end A097793.P316692271062235122

/-! ## A097793.P1415654393641340833

`A290307(A000217(n+7)-7)`
-/

namespace A097793.P1415654393641340833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A000217 (n + 7) - 7).toNat

end

end A097793.P1415654393641340833

/-! ## A097793.P8518392883264236439

`A290307(A167499(n+6)-12)`
-/

namespace A097793.P8518392883264236439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (A167499 (n + 6) - 12).toNat

end

end A097793.P8518392883264236439

/-! ## A097793.P455056147984970950

`A290307(Δ[A023551(n+2)]-1)`
-/

namespace A097793.P455056147984970950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (f1 (n + 1) - f1 n - 1).toNat

end

end A097793.P455056147984970950

/-! ## A097793.P10594807441938603290

`A290307(Δ[A026054(n+4)]-1)`
-/

namespace A097793.P10594807441938603290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 (f1 (n + 1) - f1 n - 1).toNat

end

end A097793.P10594807441938603290

/-! ## A097793.P7900351208863016455

`A290307(n+5+A000124(n+5)+n)`
-/

namespace A097793.P7900351208863016455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290307 ((n + 5 : ℤ) + (A000124 (n + 5) + (n : ℤ))).toNat

end

end A097793.P7900351208863016455

/-!
# A097794: Least k such that the absolute value of k^n-n is prime or zero if no such k exists.

The programs for A097794, there is no canonical definition to state claims against.
-/

/-! ## A097794.P15022796725071598806

`A239474(n+1)^(A000040(A240235(n+1))%2)`
-/

namespace A097794.P15022796725071598806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239474 (n + 1) : ℚ) ^ (Int.tmod (A000040 (A240235 (n + 1)).toNat) 2 : ℤ)

end

end A097794.P15022796725071598806

/-!
# A097795: Number of partitions of 2*n into perfect numbers.

The programs for A097795, the canonical program `A097795.P9943624970562147583` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097795 has offset 1).

The definition of A097795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097795.P9943624970562147583

`a(n-3)+val(n+1, 14)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097795

/-- `a(n-3)+val(n+1, 14)` -/
def P9943624970562147583.Spec : Prop :=
  ∀ n, (P9943624970562147583.a n : ℤ) = A097795 (n + 1)

theorem P9943624970562147583.correct : P9943624970562147583.Spec := by
  intro n
  simp only [A097795, Nat.add_sub_cancel]

end A097795

/-! ## A097795.P6677049214756079766

`A097796(2*(n+1))`
-/

namespace A097795.P6677049214756079766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097796 (2 * (n + 1))

end

end A097795.P6677049214756079766

namespace A097795

/-- `A097796(2*(n+1))` -/
def P6677049214756079766.Spec : Prop :=
  ∀ n, P6677049214756079766.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P37167941618197276

`dr(A097796(n+2+n))`
-/

namespace A097795.P37167941618197276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A097796 (n + 2 + n))

end

end A097795.P37167941618197276

namespace A097795

/-- `dr(A097796(n+2+n))` -/
def P37167941618197276.Spec : Prop :=
  ∀ n, (P37167941618197276.a n : ℤ) = A097795 (n + 1)

end A097795

/-! ## A097795.P10244987360907744534

`A097796(record[2-xor(1, -n)])%4`
-/

namespace A097795.P10244987360907744534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 4

end

end A097795.P10244987360907744534

namespace A097795

/-- `A097796(record[2-xor(1, -n)])%4` -/
def P10244987360907744534.Spec : Prop :=
  ∀ n, P10244987360907744534.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P8633157790111675247

`and(3, A097796(A103517(n)))`
-/

namespace A097795.P8633157790111675247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A097796 (A103517 n).toNat)

end

end A097795.P8633157790111675247

namespace A097795

/-- `and(3, A097796(A103517(n)))` -/
def P8633157790111675247.Spec : Prop :=
  ∀ n, P8633157790111675247.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P10015130542928851297

`A007953(A097796(Δ[n²]+1))`
-/

namespace A097795.P10015130542928851297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A097796 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A097795.P10015130542928851297

namespace A097795

/-- `A007953(A097796(Δ[n²]+1))` -/
def P10015130542928851297.Spec : Prop :=
  ∀ n, P10015130542928851297.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P13047787665885209954

`A000196(A097796(n+2+n)²)`
-/

namespace A097795.P13047787665885209954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A097796 (n + 2 + n) ^ 2).toNat

end

end A097795.P13047787665885209954

namespace A097795

/-- `A000196(A097796(n+2+n)²)` -/
def P13047787665885209954.Spec : Prop :=
  ∀ n, P13047787665885209954.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P564050770068642634

`A001222(2^A097796(n+2+n))`
-/

namespace A097795.P564050770068642634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A097796 (n + 2 + n) : ℤ))).toNat

end

end A097795.P564050770068642634

namespace A097795

/-- `A001222(2^A097796(n+2+n))` -/
def P564050770068642634.Spec : Prop :=
  ∀ n, P564050770068642634.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P3623906072096845056

`A097796(n+2+n)%A000041(n)`
-/

namespace A097795.P3623906072096845056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097796 (n + 2 + n)) (A000041 n)

end

end A097795.P3623906072096845056

namespace A097795

/-- `A097796(n+2+n)%A000041(n)` -/
def P3623906072096845056.Spec : Prop :=
  ∀ n, P3623906072096845056.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P4402532348336621708

`∑{d}[A097796(n+2+n), A000010(#)]`
-/

namespace A097795.P4402532348336621708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097796 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A097795.P4402532348336621708

namespace A097795

/-- `∑{d}[A097796(n+2+n), A000010(#)]` -/
def P4402532348336621708.Spec : Prop :=
  ∀ n, P4402532348336621708.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P345721407512237515

`A097796(n+2+n)/A014963(∑[n+1])`
-/

namespace A097795.P345721407512237515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097796 (n + 2 + n) : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A097795.P345721407512237515

namespace A097795

/-- `A097796(n+2+n)/A014963(∑[n+1])` -/
def P345721407512237515.Spec : Prop :=
  ∀ n, P345721407512237515.a n = (A097795 (n + 1) : ℚ)

end A097795

/-! ## A097795.P17055734684537809512

`or(char[A000108(n+2)], A097796(n+2+n))`
-/

namespace A097795.P17055734684537809512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A097796 (n + 2 + n))

end

end A097795.P17055734684537809512

namespace A097795

/-- `or(char[A000108(n+2)], A097796(n+2+n))` -/
def P17055734684537809512.Spec : Prop :=
  ∀ n, P17055734684537809512.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P18243318980842629625

`A004526(A057359(n+1))-A002264(n)`
-/

namespace A097795.P18243318980842629625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057359 (n + 1)).toNat - A002264 n

end

end A097795.P18243318980842629625

namespace A097795

/-- `A004526(A057359(n+1))-A002264(n)` -/
def P18243318980842629625.Spec : Prop :=
  ∀ n, P18243318980842629625.a n = A097795 (n + 1)

end A097795

/-! ## A097795.P16577162849014241047

`A097796(n+2+n)/A007318(A004736(n+1)+n)`
-/

namespace A097795.P16577162849014241047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097796 (n + 2 + n) : ℚ) / (A007318 (A004736 (n + 1) + (n : ℤ)).toNat : ℚ)

end

end A097795.P16577162849014241047

namespace A097795

/-- `A097796(n+2+n)/A007318(A004736(n+1)+n)` -/
def P16577162849014241047.Spec : Prop :=
  ∀ n, P16577162849014241047.a n = (A097795 (n + 1) : ℚ)

end A097795

/-!
# A097796: Number of partitions of n into perfect numbers.

The programs for A097796, the canonical program `A097796.P11790072631369088763` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097796 has offset 1).

The definition of A097796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097796.P11790072631369088763

`A097795(gcd(xor(1, n²), ∑[n]))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097796

/-- `A097795(gcd(xor(1, n²), ∑[n]))` -/
def P11790072631369088763.Spec : Prop :=
  ∀ n, P11790072631369088763.a n = A097796 (n + 1)

theorem P11790072631369088763.correct : P11790072631369088763.Spec := by
  intro n
  simp only [A097796, Nat.add_sub_cancel]

end A097796

/-! ## A097796.P6633171102015760294

`A097795(gcd(n+1, ceil(n/2)))`
-/

namespace A097796.P6633171102015760294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉)

end

end A097796.P6633171102015760294

namespace A097796

/-- `A097795(gcd(n+1, ceil(n/2)))` -/
def P6633171102015760294.Spec : Prop :=
  ∀ n, P6633171102015760294.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P14719002904004852828

`A097795((n^(n%2)+1)/2)`
-/

namespace A097796.P14719002904004852828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (SequenceMachineLib.roundAway ((n ^ (n % 2) + 1 : ℚ) / 2)).toNat

end

end A097796.P14719002904004852828

namespace A097796

/-- `A097795((n^(n%2)+1)/2)` -/
def P14719002904004852828.Spec : Prop :=
  ∀ n, P14719002904004852828.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P7302975700860646483

`A097795(C(ceil(n/2), floor(n/2)))`
-/

namespace A097796.P7302975700860646483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌊(n : ℚ) / 2⌋.toNat)

end

end A097796.P7302975700860646483

namespace A097796

/-- `A097795(C(ceil(n/2), floor(n/2)))` -/
def P7302975700860646483.Spec : Prop :=
  ∀ n, P7302975700860646483.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P8729452851066926753

`A097795(gcd(1-n, floor(n/2))+1)`
-/

namespace A097796.P8729452851066926753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + 1)

end

end A097796.P8729452851066926753

namespace A097796

/-- `A097795(gcd(1-n, floor(n/2))+1)` -/
def P8729452851066926753.Spec : Prop :=
  ∀ n, P8729452851066926753.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P493418784231321311

`xor(a(n-1), A097795(ceil(n/2)))` with `a(0)=0`
-/

namespace A097796.P493418784231321311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A097795 ⌈(n : ℚ) / 2⌉.toNat)

end

end A097796.P493418784231321311

namespace A097796

/-- `xor(a(n-1), A097795(ceil(n/2)))` -/
def P493418784231321311.Spec : Prop :=
  ∀ n, P493418784231321311.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P5000011194698677819

`A097795(A152271(n))`
-/

namespace A097796.P5000011194698677819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A152271 n).toNat

end

end A097796.P5000011194698677819

namespace A097796

/-- `A097795(A152271(n))` -/
def P5000011194698677819.Spec : Prop :=
  ∀ n, P5000011194698677819.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P16682574991267700556

`A097795(A057979(n)+1)`
-/

namespace A097796.P16682574991267700556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A057979 n + 1).toNat

end

end A097796.P16682574991267700556

namespace A097796

/-- `A097795(A057979(n)+1)` -/
def P16682574991267700556.Spec : Prop :=
  ∀ n, P16682574991267700556.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P7038890753115079937

`A097795(A133265(n)/2)`
-/

namespace A097796.P7038890753115079937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A097796.P7038890753115079937

namespace A097796

/-- `A097795(A133265(n)/2)` -/
def P7038890753115079937.Spec : Prop :=
  ∀ n, P7038890753115079937.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P2865807911632035260

`A097795(A008619(n*and(1, n)))`
-/

namespace A097796.P2865807911632035260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A008619 (n * Nat.land 1 n)).toNat

end

end A097796.P2865807911632035260

namespace A097796

/-- `A097795(A008619(n*and(1, n)))` -/
def P2865807911632035260.Spec : Prop :=
  ∀ n, P2865807911632035260.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P492997716714167851

`A097795(A008619(n)^and(1, n))`
-/

namespace A097796.P492997716714167851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A008619 n ^ Nat.land 1 n).toNat

end

end A097796.P492997716714167851

namespace A097796

/-- `A097795(A008619(n)^and(1, n))` -/
def P492997716714167851.Spec : Prop :=
  ∀ n, P492997716714167851.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P13835452500988298545

`A097795(A029579(n)-A004526(n))`
-/

namespace A097796.P13835452500988298545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A029579 n - A004526 n).toNat

end

end A097796.P13835452500988298545

namespace A097796

/-- `A097795(A029579(n)-A004526(n))` -/
def P13835452500988298545.Spec : Prop :=
  ∀ n, P13835452500988298545.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P284702990339565565

`A097795(A008619(n)-A142150(n))`
-/

namespace A097796.P284702990339565565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A008619 n - A142150 n).toNat

end

end A097796.P284702990339565565

namespace A097796

/-- `A097795(A008619(n)-A142150(n))` -/
def P284702990339565565.Spec : Prop :=
  ∀ n, P284702990339565565.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P14600534833843731116

`A097795(A008619(n*A000035(n)))`
-/

namespace A097796.P14600534833843731116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A008619 ((n : ℤ) * A000035 n).toNat).toNat

end

end A097796.P14600534833843731116

namespace A097796

/-- `A097795(A008619(n*A000035(n)))` -/
def P14600534833843731116.Spec : Prop :=
  ∀ n, P14600534833843731116.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P1450176672998512493

`A097795(A004526(n*A000035(n))+1)`
-/

namespace A097796.P1450176672998512493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A004526 ((n : ℤ) * A000035 n).toNat + 1).toNat

end

end A097796.P1450176672998512493

namespace A097796

/-- `A097795(A004526(n*A000035(n))+1)` -/
def P1450176672998512493.Spec : Prop :=
  ∀ n, P1450176672998512493.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P4749640218858716857

`A097795(A000463(n+1)/A008619(n))`
-/

namespace A097796.P4749640218858716857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (SequenceMachineLib.roundAway ((A000463 (n + 1) : ℚ) / (A008619 n : ℚ))).toNat

end

end A097796.P4749640218858716857

namespace A097796

/-- `A097795(A000463(n+1)/A008619(n))` -/
def P4749640218858716857.Spec : Prop :=
  ∀ n, P4749640218858716857.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P5937626283610960468

`A097795(A008619(n)/(A142150(n)+1))`
-/

namespace A097796.P5937626283610960468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (SequenceMachineLib.roundAway ((A008619 n : ℚ) / (A142150 n + 1 : ℚ))).toNat

end

end A097796.P5937626283610960468

namespace A097796

/-- `A097795(A008619(n)/(A142150(n)+1))` -/
def P5937626283610960468.Spec : Prop :=
  ∀ n, P5937626283610960468.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P3598856719686992990

`∑{d}[n+1, A084928(#)*A097795((n+1)/#)]`
-/

namespace A097796.P3598856719686992990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084928 d * A097795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A097796.P3598856719686992990

namespace A097796

/-- `∑{d}[n+1, A084928(#)*A097795((n+1)/#)]` -/
def P3598856719686992990.Spec : Prop :=
  ∀ n, P3598856719686992990.a n = A097796 (n + 1)

end A097796

/-! ## A097796.P6390796411494353540

`∑{d}[n+1, A063524(#-1)*A097795((n+1)/#)]`
-/

namespace A097796.P6390796411494353540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A097795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A097796.P6390796411494353540

namespace A097796

/-- `∑{d}[n+1, A063524(#-1)*A097795((n+1)/#)]` -/
def P6390796411494353540.Spec : Prop :=
  ∀ n, P6390796411494353540.a n = A097796 (n + 1)

end A097796

/-!
# A097797: Number of partitions of n into deficient numbers.

The programs for A097797, there is no canonical definition to state claims against.
-/

/-! ## A097797.P4655589548717809333

`record[A219601(A163352(n))]`
-/

namespace A097797.P4655589548717809333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219601 (A163352 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097797.P4655589548717809333

/-! ## A097797.P4267374554768137607

`record[A219601(A273005(n))]`
-/

namespace A097797.P4267374554768137607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219601 (A273005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097797.P4267374554768137607

/-! ## A097797.P8190570558689658391

`record[A219601(A328003(n))]`
-/

namespace A097797.P8190570558689658391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219601 (A328003 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097797.P8190570558689658391

/-! ## A097797.P13089496100490364551

`∏{e}[A016116(2*n+3), A219601(#)]`
-/

namespace A097797.P13089496100490364551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A219601 (Nat.factorization (f1 n).natAbs p)

end

end A097797.P13089496100490364551

/-! ## A097797.P9883453253698383880

`A219601(n+1)%A333827(3*n+4)`
-/

namespace A097797.P9883453253698383880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219601 (n + 1)) (A333827 (3 * n + 4))

end

end A097797.P9883453253698383880

/-!
# A097798: Number of partitions of n into abundant numbers.

The programs for A097798, there is no canonical definition to state claims against.
-/

/-! ## A097798.P4061343540319229262

`A000999(A050932(n)+C(2, n+1))`
-/

namespace A097798.P4061343540319229262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 (A050932 n + (Nat.choose 2 (n + 1) : ℤ)).toNat

end

end A097798.P4061343540319229262

/-! ## A097798.P18255473826923766322

`A000999(A050932(n)+A000038(n))`
-/

namespace A097798.P18255473826923766322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 (A050932 n + A000038 n).toNat

end

end A097798.P18255473826923766322

/-! ## A097798.P17943497016572694916

`A055640(A050932(n))-A057427(n)`
-/

namespace A097798.P17943497016572694916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A050932 n).toNat - A057427 n

end

end A097798.P17943497016572694916

/-! ## A097798.P4243834704460581465

`A000999(A050932(n))^A001221(n+1)`
-/

namespace A097798.P4243834704460581465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000999 (A050932 n).toNat : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A097798.P4243834704460581465

/-! ## A097798.P13252964773302094770

`A000999(A050932(n))+C(A000999(n), n)`
-/

namespace A097798.P13252964773302094770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000999 (A050932 n).toNat + (Nat.choose (A000999 n).toNat n : ℤ)

end

end A097798.P13252964773302094770

/-!
# A097799: Number of partitions of the n-th deficient number into deficient numbers.

The programs for A097799, there is no canonical definition to state claims against.
-/

/-! ## A097799.P3594636666466801524

`A097797(A005100(n+1))`
-/

namespace A097799.P3594636666466801524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097797 (A005100 (n + 1)).toNat

end

end A097799.P3594636666466801524

/-! ## A097799.P5167062545894386149

`A097797(record[A125746(n+1)])`
-/

namespace A097799.P5167062545894386149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097799.P5167062545894386149

/-! ## A097799.P16597021758834511605

`A097797(record[n-A082551(n+1)])`
-/

namespace A097799.P16597021758834511605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097799.P16597021758834511605

/-! ## A097799.P1704530676969895150

`record[A097797(n+1)*A294934(n+1)]`
-/

namespace A097799.P1704530676969895150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097797 (n + 1) * A294934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097799.P1704530676969895150

/-! ## A097799.P98416373843594429

`record[A097797(n+1)/A108775(n+1)]`
-/

namespace A097799.P98416373843594429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097797 (n + 1) : ℚ) / (A108775 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097799.P98416373843594429

/-! ## A097799.P8630131080711421734

`record[and(A082551(n+1), A097797(n+1))]`
-/

namespace A097799.P8630131080711421734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082551 (n + 1)) (A097797 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097799.P8630131080711421734

