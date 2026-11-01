import SequenceMachineLib.Basic
import Seq.B000.C001
import Seq.B000.C018
import Seq.B003.C002
import Seq.Opaque.C002
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C017
import Seq.Opaque.C022

/-!
# A170628: Number of reduced words of length n in Coxeter group on 43 generators S_i with relations (S_i)^2 = (S_i S_j)^48 = I.

The programs for A170628, there is no canonical definition to state claims against.
-/

/-! ## A170628.P4916103486768108188

`A170724(n)+A005044(A040076(n+1))`
-/

namespace A170628.P4916103486768108188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170724 n + A005044 (A040076 (n + 1)).toNat

end

end A170628.P4916103486768108188

/-! ## A170628.P2223575740129787967

`A170724(n)+A157228(A366651(n+1))`
-/

namespace A170628.P2223575740129787967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170724 n + A157228 (A366651 (n + 1)).toNat

end

end A170628.P2223575740129787967

/-! ## A170628.P3917843173184634899

`A219071(A366766(n+1))+A170762(n)`
-/

namespace A170628.P3917843173184634899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219071 (A366766 (n + 1)).toNat + A170762 n

end

end A170628.P3917843173184634899

/-! ## A170628.P1622190068878058263

`A362609(A292085(n+1))+A170762(n)`
-/

namespace A170628.P1622190068878058263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362609 (A292085 (n + 1)).toNat + A170762 n

end

end A170628.P1622190068878058263

/-! ## A170628.P1779630937094824437

`A153452(A153452(n+1))*A170724(n)`
-/

namespace A170628.P1779630937094824437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A153452 (n + 1)).toNat * A170724 n

end

end A170628.P1779630937094824437

/-!
# A170636: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^49 = I.

The programs for A170636, there is no canonical definition to state claims against.
-/

/-! ## A170636.P11988582128983782383

`A103204(n+1)-A196222(A196222(2*n+3))`
-/

namespace A170636.P11988582128983782383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - A196222 (A196222 (2 * n + 3)).toNat

end

end A170636.P11988582128983782383

/-!
# A170655: Number of reduced words of length n in Coxeter group on 22 generators S_i with relations (S_i)^2 = (S_i S_j)^49 = I.

The programs for A170655, there is no canonical definition to state claims against.
-/

/-! ## A170655.P13095412517436289489

`A170703(n+1)-Δ[A170741(n)]`
-/

namespace A170655.P13095412517436289489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170703 (n + 1) - (f1 (n + 1) - f1 n)

end

end A170655.P13095412517436289489

/-!
# A170671: Number of reduced words of length n in Coxeter group on 38 generators S_i with relations (S_i)^2 = (S_i S_j)^49 = I.

The programs for A170671, there is no canonical definition to state claims against.
-/

/-! ## A170671.P5740851793077247027

`A170719(n+1)-Δ[A170757(n)]`
-/

namespace A170671.P5740851793077247027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170719 (n + 1) - (f1 (n + 1) - f1 n)

end

end A170671.P5740851793077247027

/-!
# A170684: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^50 = I.

The programs for A170684, there is no canonical definition to state claims against.
-/

/-! ## A170684.P9879851584889537673

`A103204(n+1)-A196222(A196222(2*n))`
-/

namespace A170684.P9879851584889537673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - A196222 (A196222 (2 * n)).toNat

end

end A170684.P9879851584889537673

