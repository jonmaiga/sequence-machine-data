import SequenceMachineLib.Basic
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C030
import Seq.B001.C005
import Seq.Opaque.C000
import Seq.Opaque.C005
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A172729: Number of n X n 0..3 arrays with row sums 15 and column sums 15.

The programs for A172729, there is no canonical definition to state claims against.
-/

/-! ## A172729.P11788890086913303178

`floor(n/4)*A321725(A094611(n))`
-/

namespace A172729.P11788890086913303178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * A321725 (A094611 n).toNat

end

end A172729.P11788890086913303178

/-! ## A172729.P16586579899619277642

`floor((n²-n)/11)*A257493(A350354(n))`
-/

namespace A172729.P16586579899619277642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 11⌋ * A257493 (A350354 n).toNat

end

end A172729.P16586579899619277642

/-!
# A172732: Number of n X n 0..3 arrays with row sums 12 and column sums 12.

The programs for A172732, there is no canonical definition to state claims against.
-/

/-! ## A172732.P3810447918646290053

`A001500((n+1)*a(n-1))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A172732.P3810447918646290053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A001500 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A172732.P3810447918646290053

/-!
# A172737: Number of n X 7 0..3 arrays with row sums 7 and column sums n.

The programs for A172737, there is no canonical definition to state claims against.
-/

/-! ## A172737.P12847303019840105919

`A202685(n+1)/2-1`
-/

namespace A172737.P12847303019840105919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202685 (n + 1) : ℚ) / 2 - 1

end

end A172737.P12847303019840105919

/-!
# A172743: Number of n X 3 0..3 arrays with row sums 3 and column sums n.

The programs for A172743, there is no canonical definition to state claims against.
-/

/-! ## A172743.P415855535024945834

`A333901(Δ[A264443(n)])`
-/

namespace A172743.P415855535024945834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (f1 (n + 1) - f1 n).toNat

end

end A172743.P415855535024945834

/-! ## A172743.P10795923687352178354

`A333901(A046691(n+3))`
-/

namespace A172743.P10795923687352178354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A046691 (n + 3)).toNat

end

end A172743.P10795923687352178354

/-! ## A172743.P4118676074215300430

`A333901(A167614(n+3))`
-/

namespace A172743.P4118676074215300430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A167614 (n + 3)).toNat

end

end A172743.P4118676074215300430

/-! ## A172743.P4934919555844319151

`A333901(A056000(n)+13)`
-/

namespace A172743.P4934919555844319151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A056000 n + 13).toNat

end

end A172743.P4934919555844319151

/-! ## A172743.P877636460171323915

`A333901(Δ[A023545(n+1)])`
-/

namespace A172743.P877636460171323915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (f1 (n + 1) - f1 n).toNat

end

end A172743.P877636460171323915

