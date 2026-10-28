import SequenceMachineLib.Basic
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C015
import Seq.B000.C025
import Seq.B000.C050
import Seq.B001.C013
import Seq.Opaque.C000
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C013
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A401306: Powerful numbers preceded and followed by 3 consecutive squarefree numbers.

The programs for A401306, there is no canonical definition to state claims against.
-/

/-! ## A401306.P17947192167194114379

`∩[A001694(n+1), A068088(n+1)]`
-/

namespace A401306.P17947192167194114379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P17947192167194114379

/-! ## A401306.P11347871149659827840

`∩[A068088(n+1), A140104(n+1)]`
-/

namespace A401306.P11347871149659827840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P11347871149659827840

/-! ## A401306.P7972910891726056463

`∩[A068088(n+1), A335851(n+1)]`
-/

namespace A401306.P7972910891726056463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P7972910891726056463

/-! ## A401306.P4142631352827685610

`∩[A068088(n+1), A359749(n+1)]`
-/

namespace A401306.P4142631352827685610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P4142631352827685610

/-! ## A401306.P10149008000527085903

`∩[A068088(n+1), A387528(n+1)]`
-/

namespace A401306.P10149008000527085903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P10149008000527085903

/-! ## A401306.P1389480701705491694

`∩[A068088(n+1), A390010(n+1)]`
-/

namespace A401306.P1389480701705491694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401306.P1389480701705491694

/-!
# A401323: Antidiagonal sums of the array A144048.

The programs for A401323, there is no canonical definition to state claims against.
-/

/-! ## A401323.P1040876652900646369

`A305759(A026010(n))`
-/

namespace A401323.P1040876652900646369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (A026010 n).toNat

end

end A401323.P1040876652900646369

/-!
# A401328: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals downwards, where A(n,k) is the number of distinct values of s_k(n+1), ..., s_k(n+k), and s_k(m) is the largest divisor of m with all prime factors less than k.

The programs for A401328, there is no canonical definition to state claims against.
-/

/-! ## A401328.P14378402412781186192

`A321476(A120258(n+1))`
-/

namespace A401328.P14378402412781186192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321476 (A120258 (n + 1)).toNat

end

end A401328.P14378402412781186192

/-! ## A401328.P10037648506321182462

`A232113(A084268(n+2))`
-/

namespace A401328.P10037648506321182462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232113 (A084268 (n + 2)).toNat

end

end A401328.P10037648506321182462

/-! ## A401328.P15039968750866570321

`A366563(A055106(n+3))`
-/

namespace A401328.P15039968750866570321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A055106 (n + 3)).toNat

end

end A401328.P15039968750866570321

/-!
# A401342: Expansion of g.f. x*(1 - 2*x + x^2 - x^3)/((1 - x - x^2)*(1 - 2*x)).

The programs for A401342, the canonical program `A401342.P18093636600124100267` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401342 has offset 0).

The definition of A401342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` (program `A401342.P18093636600124100267`, by `A401342.P18093636600124100267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A401342.P18093636600124100267

`ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401342

/-- `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` -/
def P18093636600124100267.Spec : Prop :=
  ∀ n, P18093636600124100267.a n = A401342 n

theorem P18093636600124100267.correct : P18093636600124100267.Spec := by
  intro n
  simp only [A401342]

end A401342

/-! ## A401342.P1133592228726139224

`A034008(n)-A152163(n)`
-/

namespace A401342.P1133592228726139224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n - A152163 n

end

end A401342.P1133592228726139224

namespace A401342

/-- `A034008(n)-A152163(n)` -/
def P1133592228726139224.Spec : Prop :=
  ∀ n, P1133592228726139224.a n = A401342 n

end A401342

/-! ## A401342.P4819659677815299819

`A085141(A149923(n))`
-/

namespace A401342.P4819659677815299819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A149923 n).toNat

end

end A401342.P4819659677815299819

namespace A401342

/-- `A085141(A149923(n))` -/
def P4819659677815299819.Spec : Prop :=
  ∀ n, P4819659677815299819.a n = A401342 n

end A401342

/-! ## A401342.P12161898999083819080

`A085141(A149925(n))`
-/

namespace A401342.P12161898999083819080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A149925 n).toNat

end

end A401342.P12161898999083819080

namespace A401342

/-- `A085141(A149925(n))` -/
def P12161898999083819080.Spec : Prop :=
  ∀ n, P12161898999083819080.a n = A401342 n

end A401342

/-! ## A401342.P8119566988677483458

`A085141(A149927(n))`
-/

namespace A401342.P8119566988677483458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A149927 n).toNat

end

end A401342.P8119566988677483458

namespace A401342

/-- `A085141(A149927(n))` -/
def P8119566988677483458.Spec : Prop :=
  ∀ n, P8119566988677483458.a n = A401342 n

end A401342

/-!
# A401365: Partial sums of A401407: a(n) = Sum_{k=1..n} lambda(k)*chi_{-4}(k), where lambda is Liouville's function A008836 and chi_{-4} = A101455 is the nonprincipal Dirichlet character modulo 4.

The programs for A401365, there is no canonical definition to state claims against.
-/

/-! ## A401365.P4691483582034418607

`A401408(n)-A401408(floor(n/2))`
-/

namespace A401365.P4691483582034418607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401408 n - A401408 ⌊(n : ℚ) / 2⌋.toNat

end

end A401365.P4691483582034418607

