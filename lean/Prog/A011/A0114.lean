import SequenceMachineLib.Basic
import SequenceMachineLib.Triangle

/-!
# A011455: Sum 2^Fibonacci(i), i=2..n.

The programs for A011455, there is no canonical definition to state claims against.
-/

/-! ## A011455.P6763358297674820854

`∑[record[T(n-2,k)*T(n-1,k)]]` with `a(0)=2, a(1)=1`
-/

namespace A011455.P6763358297674820854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  SequenceMachineLib.triUp2 f2 n * SequenceMachineLib.triUp f2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011455.P6763358297674820854

/-! ## A011455.P15394844665055394147

`∑[record[(T(n-1,k)+T(n-1,k-1))*T(n-2,k-1)]]` with `a(0)=2, a(1)=2`
-/

namespace A011455.P15394844665055394147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  (SequenceMachineLib.triUp f2 n + SequenceMachineLib.triUpLeft f2 n) * SequenceMachineLib.triUp2Left f2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011455.P15394844665055394147

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

