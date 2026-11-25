import SequenceMachineLib.Basic
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C021
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C010
import Seq.B006.C000
import Seq.B010.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C010
import Seq.Opaque.C019

/-!
# A019129: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite EUO = EU-1 Nan[AlnSi112-nO224] starting with a T10 atom.

The programs for A019129, there is no canonical definition to state claims against.
-/

/-! ## A019129.P6878021602202287609

`A019208(n+3)-A182635(A324088(n+1))`
-/

namespace A019129.P6878021602202287609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019208 (n + 3) - A182635 (A324088 (n + 1)).toNat

end

end A019129.P6878021602202287609

/-!
# A019138: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite HEU = Heulandite Ca4[Al8Si28O72].24H2O starting with a T1 atom.

The programs for A019138, there is no canonical definition to state claims against.
-/

/-! ## A019138.P4811506112238652386

`xor(A192188(n+1), A192262(A192151(n+1)))`
-/

namespace A019138.P4811506112238652386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A192188 (n + 1)) (A192262 (A192151 (n + 1)).toNat)

end

end A019138.P4811506112238652386

/-!
# A019153: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MEL = ZSM-11 Nan[AlnSi96-nO192] starting with a T5 atom.

The programs for A019153, there is no canonical definition to state claims against.
-/

/-! ## A019153.P2268582681032013541

`or(A061909(n+1), A259361(A214372(n+1)))`
-/

namespace A019153.P2268582681032013541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061909 (n + 1)) (A259361 (A214372 (n + 1)).toNat)

end

end A019153.P2268582681032013541

/-!
# A019159: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MFI = ZSM-5 Nan[AlnSi96-nO192] starting with a T2 atom.

The programs for A019159, there is no canonical definition to state claims against.
-/

/-! ## A019159.P11144744750398403412

`A178798(A128232(n))+A019250(n+3)`
-/

namespace A019159.P11144744750398403412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A128232 n).toNat + A019250 (n + 3)

end

end A019159.P11144744750398403412

/-! ## A019159.P2668371002644201926

`A019250(n+3)-A178798(A011782(n))`
-/

namespace A019159.P2668371002644201926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019250 (n + 3) - A178798 (A011782 n).toNat

end

end A019159.P2668371002644201926

/-!
# A019168: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MFI = ZSM-5 Nan[AlnSi96-nO192] starting with a T9 atom.

The programs for A019168, there is no canonical definition to state claims against.
-/

/-! ## A019168.P10695913977356219025

`A193045(n)+A028930(A193074(n))`
-/

namespace A019168.P10695913977356219025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193045 n + A028930 (A193074 n).toNat

end

end A019168.P10695913977356219025

/-!
# A019169: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MFI = ZSM-5 Nan[AlnSi96-nO192] starting with a T10 atom.

The programs for A019169, there is no canonical definition to state claims against.
-/

/-! ## A019169.P10313955376387083914

`xor(A007306(A053505(n)), A324839(n+1))`
-/

namespace A019169.P10313955376387083914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007306 (A053505 n).toNat) (A324839 (n + 1))

end

end A019169.P10313955376387083914

/-!
# A019186: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MTT = ZSM-23 Nan[AlnSi24-nO48] starting with a T1 atom.

The programs for A019186, there is no canonical definition to state claims against.
-/

/-! ## A019186.P14019050702313625128

`A019187(n+3)`
-/

namespace A019186.P14019050702313625128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019187 (n + 3)

end

end A019186.P14019050702313625128

/-! ## A019186.P2587389919141347275

`A019243(A024647(n)+3)`
-/

namespace A019186.P2587389919141347275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019243 (A024647 n + 3).toNat

end

end A019186.P2587389919141347275

/-!
# A019189: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MTT = ZSM-23 Nan[AlnSi24-nO48] starting with a T4 atom.

The programs for A019189, there is no canonical definition to state claims against.
-/

/-! ## A019189.P17276857798339501409

`A019244(n+3)`
-/

namespace A019189.P17276857798339501409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019244 (n + 3)

end

end A019189.P17276857798339501409

/-!
# A019192: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MTT = ZSM-23 Nan[AlnSi24-nO48] starting with a T7 atom.

The programs for A019192, there is no canonical definition to state claims against.
-/

/-! ## A019192.P629264887860485185

`A048484(A181061(n))+A019246(n+3)`
-/

namespace A019192.P629264887860485185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048484 (A181061 n).toNat + A019246 (n + 3)

end

end A019192.P629264887860485185

/-! ## A019192.P12122473093149595703

`A019246(n+3)`
-/

namespace A019192.P12122473093149595703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019246 (n + 3)

end

end A019192.P12122473093149595703

