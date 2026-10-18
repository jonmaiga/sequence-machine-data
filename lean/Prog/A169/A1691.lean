import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C008
import Seq.B003.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C011
import Seq.Opaque.C015

/-!
# A169114: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^26 = I.

The programs for A169114, there is no canonical definition to state claims against.
-/

/-! ## A169114.P2790817570687870447

`floor(5*4^(n-1))-A185255(A007843(n))`
-/

namespace A169114.P2790817570687870447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A007843 n).toNat

end

end A169114.P2790817570687870447

/-! ## A169114.P114696874608694120

`abs(A003947(n)-A185255(A007843(n)))`
-/

namespace A169114.P114696874608694120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003947 n - A185255 (A007843 n).toNat|

end

end A169114.P114696874608694120

/-! ## A169114.P14564259562845022945

`A185255(n)+A003947(n)-A185255(A007843(n))`
-/

namespace A169114.P14564259562845022945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + (A003947 n - A185255 (A007843 n).toNat)

end

end A169114.P14564259562845022945

/-!
# A169160: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^27 = I.

The programs for A169160, there is no canonical definition to state claims against.
-/

/-! ## A169160.P364517620789676767

`A003945(n)-A241469(A036370(n))`
-/

namespace A169160.P364517620789676767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A241469 (A036370 n).toNat

end

end A169160.P364517620789676767

/-! ## A169160.P5610986351483841605

`A003945(n)-A054899(A018843(n+1))`
-/

namespace A169160.P5610986351483841605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A054899 (A018843 (n + 1)).toNat

end

end A169160.P5610986351483841605

/-!
# A169161: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^27 = I.

The programs for A169161, there is no canonical definition to state claims against.
-/

/-! ## A169161.P1099368571983741312

`floor(4*3^(n-1))-A034432(A003105(n+1))`
-/

namespace A169161.P1099368571983741312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A003105 (n + 1)).toNat

end

end A169161.P1099368571983741312

/-!
# A169174: 

The programs for A169174, there is no canonical definition to state claims against.
-/

/-! ## A169174.P7427052073857091399

`∩[16*a(n-1), 2*a(n-1)]` with `a(0)=1, a(1)=17`
-/

namespace A169174.P7427052073857091399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  16 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f2 =>
  2 * f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A169174.P7427052073857091399

