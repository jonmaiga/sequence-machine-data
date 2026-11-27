import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C020

/-!
# A172802: Number of n X n 0..4 arrays with row sums 16 and column sums 16.

The programs for A172802, there is no canonical definition to state claims against.
-/

/-! ## A172802.P14649531587453357922

`floor(n/3)*A257493(A000254(n))`
-/

namespace A172802.P14649531587453357922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ * A257493 (A000254 n).toNat

end

end A172802.P14649531587453357922

/-!
# A172806: Number of n X n of nonnegative integers with all row and column sums equal to 4.

The programs for A172806, there is no canonical definition to state claims against.
-/

/-! ## A172806.P15510604330568211586

`A257493(A052905(2+n))`
-/

namespace A172806.P15510604330568211586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A052905 (2 + n)).toNat

end

end A172806.P15510604330568211586

/-!
# A172816: Number of n X 4 0..4 arrays with row sums 4 and column sums n.

The programs for A172816, there is no canonical definition to state claims against.
-/

/-! ## A172816.P3419780943031817998

`A333901(A052905(n+3))`
-/

namespace A172816.P3419780943031817998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A052905 (n + 3)).toNat

end

end A172816.P3419780943031817998

/-!
# A172862: Number of n X n 0..5 arrays with row sums 5 and column sums 5.

The programs for A172862, there is no canonical definition to state claims against.
-/

/-! ## A172862.P7450597164253781854

`A257493(A055999(n+3))`
-/

namespace A172862.P7450597164253781854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A055999 (n + 3)).toNat

end

end A172862.P7450597164253781854

/-!
# A172867: Number of n X 10 0..5 arrays with row sums 10 and column sums n.

The programs for A172867, there is no canonical definition to state claims against.
-/

/-! ## A172867.P16703279258719987375

`A172930(∑[A288580(n)²])`
-/

namespace A172867.P16703279258719987375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288580 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172867.P16703279258719987375

/-!
# A172868: Number of n X 5 0..5 arrays with row sums 5 and column sums n.

The programs for A172868, there is no canonical definition to state claims against.
-/

/-! ## A172868.P14994031539256486310

`A333901(A055999(n+4))`
-/

namespace A172868.P14994031539256486310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333901 (A055999 (n + 4)).toNat

end

end A172868.P14994031539256486310

/-!
# A172869: Number of n X 11 0..5 arrays with row sums 11 and column sums n.

The programs for A172869, there is no canonical definition to state claims against.
-/

/-! ## A172869.P6784661491570401503

`A172902((n+1)^∑{p}[n+1, A001222(#)])`
-/

namespace A172869.P6784661491570401503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172902 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A001222 p : ℤ))).toNat

end

end A172869.P6784661491570401503

/-!
# A172870: Number of n X 12 0..5 arrays with row sums 12 and column sums n.

The programs for A172870, there is no canonical definition to state claims against.
-/

/-! ## A172870.P14152671847207075812

`A172949(A245910(n)+n)`
-/

namespace A172870.P14152671847207075812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172949 (A245910 n + (n : ℤ)).toNat

end

end A172870.P14152671847207075812

/-!
# A172873: Number of n X n 0..5 arrays with row sums n and column sums n.

The programs for A172873, there is no canonical definition to state claims against.
-/

/-! ## A172873.P1536157469704590710

`A110058(n*gcd(5, n)+1)`
-/

namespace A172873.P1536157469704590710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110058 (n * Nat.gcd 5 n + 1)

end

end A172873.P1536157469704590710

/-!
# A172894: Number of n X n 0..6 arrays with row sums 6 and column sums 6.

The programs for A172894, there is no canonical definition to state claims against.
-/

/-! ## A172894.P5983384549907240630

`A257493(eq[6, A025581(n)])`
-/

namespace A172894.P5983384549907240630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172894.P5983384549907240630

