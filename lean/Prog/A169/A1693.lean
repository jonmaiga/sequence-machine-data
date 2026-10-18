import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C012
import Seq.B001.C006
import Seq.B003.C000
import Seq.B007.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C017
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A169300: 

The programs for A169300, there is no canonical definition to state claims against.
-/

/-! ## A169300.P10093279691404114579

`46%A090365(3*n+1)*a(n-1)` with `a(0)=1, a(1)=47`
-/

namespace A169300.P10093279691404114579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 47] fun n a =>
  Int.tmod 46 (A090365 (3 * n + 1)) * a (n - 1)

end

end A169300.P10093279691404114579

/-!
# A169304: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^30 = I.

The programs for A169304, there is no canonical definition to state claims against.
-/

/-! ## A169304.P10444734852281578193

`A003945(n)-A082503(A185255(n))`
-/

namespace A169304.P10444734852281578193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A082503 (A185255 n).toNat

end

end A169304.P10444734852281578193

/-! ## A169304.P13546089073125631651

`A003945(n)-A326291(∑[A295666(n+1)])`
-/

namespace A169304.P13546089073125631651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A326291 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A169304.P13546089073125631651

/-!
# A169305: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^30 = I.

The programs for A169305, there is no canonical definition to state claims against.
-/

/-! ## A169305.P13442547068438259048

`xor(floor(4*3^(n-1)), A138234(A185255(n)))`
-/

namespace A169305.P13442547068438259048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A138234 (A185255 n).toNat)

end

end A169305.P13442547068438259048

/-! ## A169305.P14217704369832380165

`xor(floor(4*3^(n-1)), A185255(A201629(n)))`
-/

namespace A169305.P14217704369832380165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A185255 (A201629 n).toNat)

end

end A169305.P14217704369832380165

/-! ## A169305.P15768781109993867273

`xor(A003946(n), A326627(A185255(n)))`
-/

namespace A169305.P15768781109993867273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003946 n) (A326627 (A185255 n).toNat)

end

end A169305.P15768781109993867273

/-! ## A169305.P3613369635252060630

`A003946(n)-A220400(A185255(n+1))`
-/

namespace A169305.P3613369635252060630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A220400 (A185255 (n + 1)).toNat

end

end A169305.P3613369635252060630

/-! ## A169305.P8492661208637785161

`A169353(n)-A220400(A185255(n+1))`
-/

namespace A169305.P8492661208637785161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169353 n - A220400 (A185255 (n + 1)).toNat

end

end A169305.P8492661208637785161

/-!
# A169314: 

The programs for A169314, there is no canonical definition to state claims against.
-/

/-! ## A169314.P4922673849327028759

`A269175(A143967(n+1))+3*4*a(n-1)` with `a(0)=1`
-/

namespace A169314.P4922673849327028759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269175 (A143967 (n + 1)).toNat + 3 * (4 * a (n - 1))

end

end A169314.P4922673849327028759

/-!
# A169338: 

The programs for A169338, there is no canonical definition to state claims against.
-/

/-! ## A169338.P2776639733613129387

`A269175(A143967(n+1))+36*a(n-1)` with `a(0)=1`
-/

namespace A169338.P2776639733613129387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269175 (A143967 (n + 1)).toNat + 36 * a (n - 1)

end

end A169338.P2776639733613129387

/-!
# A169349: 

The programs for A169349, there is no canonical definition to state claims against.
-/

/-! ## A169349.P18113869016758357329

`(48-A052409(A339404(n)²+1))*a(n-1)` with `a(0)=1`
-/

namespace A169349.P18113869016758357329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (48 - A052409 (A339404 n ^ 2 + 1).toNat) * a (n - 1)

end

end A169349.P18113869016758357329

/-!
# A169353: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^31 = I.

The programs for A169353, there is no canonical definition to state claims against.
-/

/-! ## A169353.P16852675992568968750

`floor(4*3^(n-1))-A220400(A185255(n))`
-/

namespace A169353.P16852675992568968750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A220400 (A185255 n).toNat

end

end A169353.P16852675992568968750

/-! ## A169353.P3382906067905879030

`A079003(n+1)-(A220400(A185255(n))+2)`
-/

namespace A169353.P3382906067905879030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079003 (n + 1) - (A220400 (A185255 n).toNat + 2)

end

end A169353.P3382906067905879030

/-!
# A169378: 

The programs for A169378, there is no canonical definition to state claims against.
-/

/-! ## A169378.P6828651191141929978

`A010815(A001605(n+3))+28*a(n-1)` with `a(0)=1`
-/

namespace A169378.P6828651191141929978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010815 (A001605 (n + 3)).toNat + 28 * a (n - 1)

end

end A169378.P6828651191141929978

