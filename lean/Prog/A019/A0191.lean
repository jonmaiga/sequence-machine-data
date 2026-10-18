import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C021

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

/-! ## A019186.P1012360318387739373

`A019187(A054760(∑[n]))`
-/

namespace A019186.P1012360318387739373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019187 (A054760 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A019186.P1012360318387739373

/-! ## A019186.P12755948199438592118

`A019187(A024647(n)+3)`
-/

namespace A019186.P12755948199438592118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019187 (A024647 n + 3).toNat

end

end A019186.P12755948199438592118

/-! ## A019186.P2587389919141347275

`A019243(A024647(n)+3)`
-/

namespace A019186.P2587389919141347275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019243 (A024647 n + 3).toNat

end

end A019186.P2587389919141347275

/-! ## A019186.P1609865235497228526

`A019243(n+3)+A000007(A149054(n))`
-/

namespace A019186.P1609865235497228526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019243 (n + 3) + A000007 (A149054 n).toNat

end

end A019186.P1609865235497228526

/-!
# A019189: Cycle class sequence c(n) (the number of true cycles of length n in which a certain node is included) for zeolite MTT = ZSM-23 Nan[AlnSi24-nO48] starting with a T4 atom.

The programs for A019189, there is no canonical definition to state claims against.
-/

/-! ## A019189.P334519048024909156

`A019244(A024658(n)+3)`
-/

namespace A019189.P334519048024909156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019244 (A024658 n + 3).toNat

end

end A019189.P334519048024909156

/-! ## A019189.P1172101720900021906

`A019244(A046469(n)+3)`
-/

namespace A019189.P1172101720900021906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019244 (A046469 n + 3).toNat

end

end A019189.P1172101720900021906

/-! ## A019189.P1172165081246372470

`A130891(A019244(n+3))`
-/

namespace A019189.P1172165081246372470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130891 (A019244 (n + 3)).toNat

end

end A019189.P1172165081246372470

/-! ## A019189.P8618657338907118156

`A019244(A085908(n+1)+2)`
-/

namespace A019189.P8618657338907118156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019244 (A085908 (n + 1) + 2).toNat

end

end A019189.P8618657338907118156

/-! ## A019189.P16088607192314932022

`filter[A019244(n+3), A228710(#)]`
-/

namespace A019189.P16088607192314932022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019244 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A019189.P16088607192314932022

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

/-! ## A019192.P5002917458653577519

`A019246(A024647(n)+3)`
-/

namespace A019192.P5002917458653577519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019246 (A024647 n + 3).toNat

end

end A019192.P5002917458653577519

/-! ## A019192.P11000338872506882922

`A094716(A019246(n+3))`
-/

namespace A019192.P11000338872506882922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094716 (A019246 (n + 3)).toNat

end

end A019192.P11000338872506882922

/-! ## A019192.P13697747618838192110

`filter[A019246(n+3), A373834(#)]`
-/

namespace A019192.P13697747618838192110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019246 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373834 (f1 j).toNat = 1) n)

end

end A019192.P13697747618838192110

