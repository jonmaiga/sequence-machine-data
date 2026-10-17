import SequenceMachineLib.Basic
import Seq.B000.C000

/-!
# A011455: Sum 2^Fibonacci(i), i=2..n.

The programs for A011455, there is no canonical definition to state claims against.
-/

/-! ## A011455.P8930029420913591285

`∑[a(n-1)*a(n-2)]` with `a(0)=2, a(1)=4`
-/

namespace A011455.P8930029420913591285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011455.P8930029420913591285

/-! ## A011455.P4240259462122387841

`∑[a(n-1)²/a(n-3)]` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A011455.P4240259462122387841
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 4, 8] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011455.P4240259462122387841

/-! ## A011455.P17668011166761716518

`∑[a(n-1)/a(n-2)^(-1)]` with `a(0)=2, a(1)=4`
-/

namespace A011455.P17668011166761716518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 1) / f1 (n - 2) ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011455.P17668011166761716518

/-! ## A011455.P6451234451352160732

`∑[2^∑[a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A011455.P6451234451352160732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011455.P6451234451352160732

/-! ## A011455.P1722158790274564572

`∑[A000301(n+2)]`
-/

namespace A011455.P1722158790274564572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011455.P1722158790274564572

