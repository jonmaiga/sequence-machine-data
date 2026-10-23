import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C006
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C036
import Seq.B004.C000
import Seq.B006.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A168920: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^22 = I.

The programs for A168920, there is no canonical definition to state claims against.
-/

/-! ## A168920.P14809711198173187841

`A170012(n)-A180760(A208183(n))`
-/

namespace A168920.P14809711198173187841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170012 n - A180760 (A208183 n).toNat

end

end A168920.P14809711198173187841

/-! ## A168920.P10286842113047385696

`A003945(n)-A051584(A252075(n+1))`
-/

namespace A168920.P10286842113047385696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A051584 (A252075 (n + 1)).toNat

end

end A168920.P10286842113047385696

/-! ## A168920.P11877945649299023742

`A003945(n)-A335520(A013609(n+1))`
-/

namespace A168920.P11877945649299023742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A335520 (A013609 (n + 1)).toNat

end

end A168920.P11877945649299023742

/-! ## A168920.P8726233566925362411

`A003945(n)-A350959(A089458(n+1))`
-/

namespace A168920.P8726233566925362411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A350959 (A089458 (n + 1)).toNat

end

end A168920.P8726233566925362411

/-! ## A168920.P15496229864082343425

`A003945(n)-A335520(A273903(n+2))`
-/

namespace A168920.P15496229864082343425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A335520 (A273903 (n + 2)).toNat

end

end A168920.P15496229864082343425

/-!
# A168921: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^22 = I.

The programs for A168921, there is no canonical definition to state claims against.
-/

/-! ## A168921.P10990155571031306251

`floor(4*3^(n-1))-A244606(A052265(n))`
-/

namespace A168921.P10990155571031306251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A244606 (A052265 n).toNat

end

end A168921.P10990155571031306251

/-! ## A168921.P4761230402587270437

`Δ[3*(a(n-1)-A004198(A185044(n)))]` with `a(0)=1, a(1)=2`
-/

namespace A168921.P4761230402587270437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * (f1 (n - 1) - A004198 (A185044 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168921.P4761230402587270437

/-! ## A168921.P12675020071557261337

`xor(floor(4*3^(n-1)), A010894(A029042(n+2)))`
-/

namespace A168921.P12675020071557261337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A010894 ((A029042 (n + 2)).toNat + 21))

end

end A168921.P12675020071557261337

/-! ## A168921.P3224717153965069879

`floor(4*3^(n-1))-A138234(A034432(2*n+3))`
-/

namespace A168921.P3224717153965069879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A138234 (A034432 (2 * n + 3)).toNat

end

end A168921.P3224717153965069879

/-! ## A168921.P9925655764997478827

`xor(A010894(A029042(n+2)), A169017(n))`
-/

namespace A168921.P9925655764997478827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010894 ((A029042 (n + 2)).toNat + 21)) (A169017 n)

end

end A168921.P9925655764997478827

/-!
# A168922: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^22 = I.

The programs for A168922, there is no canonical definition to state claims against.
-/

/-! ## A168922.P2018709806434590008

`A003947(n)-A185255(A209415(n+2))`
-/

namespace A168922.P2018709806434590008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A209415 (n + 2)).toNat

end

end A168922.P2018709806434590008

/-! ## A168922.P8749202282132392244

`A084215(2*n)-A268584(A225910(n+1))`
-/

namespace A168922.P8749202282132392244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (2 * n) - A268584 (A225910 (n + 1)).toNat

end

end A168922.P8749202282132392244

/-!
# A168968: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^23 = I.

The programs for A168968, there is no canonical definition to state claims against.
-/

/-! ## A168968.P11435196082054344586

`floor(3*2^(n-1))-A335520(A013609(n))`
-/

namespace A168968.P11435196082054344586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A335520 (A013609 n).toNat

end

end A168968.P11435196082054344586

/-! ## A168968.P8577615389420622290

`floor(3*2^(n-1))-A185238(A307847(n))`
-/

namespace A168968.P8577615389420622290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185238 (A307847 n).toNat

end

end A168968.P8577615389420622290

/-! ## A168968.P17461560335689079279

`floor(3*2^(n-1))-A025442(A194794(n+1))`
-/

namespace A168968.P17461560335689079279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A025442 (A194794 (n + 1)).toNat

end

end A168968.P17461560335689079279

/-! ## A168968.P5234286740049804094

`abs(A003945(n)-A335520(A013609(n)))`
-/

namespace A168968.P5234286740049804094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003945 n - A335520 (A013609 n).toNat|

end

end A168968.P5234286740049804094

/-!
# A168969: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^23 = I.

The programs for A168969, there is no canonical definition to state claims against.
-/

/-! ## A168969.P18108979773170974921

`3*(a(n-1)-A004198(A185044(n)))` with `a(0)=1, a(1)=4`
-/

namespace A168969.P18108979773170974921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - A004198 (A185044 n).toNat)

end

end A168969.P18108979773170974921

/-! ## A168969.P3832396460102362540

`3*(a(n-1)-A309785(A331562(n)))` with `a(0)=1, a(1)=4`
-/

namespace A168969.P3832396460102362540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - A309785 (A331562 n).toNat)

end

end A168969.P3832396460102362540

/-! ## A168969.P682989274928809565

`A003946(n)-A241065(A034432(2*(n+1)))`
-/

namespace A168969.P682989274928809565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A241065 (A034432 (2 * (n + 1))).toNat

end

end A168969.P682989274928809565

/-! ## A168969.P982302943545736405

`∑[A080923(n)]-A241065(A034432(2*(n+1)))`
-/

namespace A168969.P982302943545736405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241065 (A034432 (2 * (n + 1))).toNat

end

end A168969.P982302943545736405

/-! ## A168969.P6132697106113933714

`A326339(n+2)-A241065(A034432(2*(n+1)))`
-/

namespace A168969.P6132697106113933714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 2) - A241065 (A034432 (2 * (n + 1))).toNat

end

end A168969.P6132697106113933714

/-!
# A168970: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^23 = I.

The programs for A168970, there is no canonical definition to state claims against.
-/

/-! ## A168970.P12204365225703458603

`floor(5*4^(n-1))-A185255(A209415(n+1))`
-/

namespace A168970.P12204365225703458603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A209415 (n + 1)).toNat

end

end A168970.P12204365225703458603

/-! ## A168970.P11384627252512784006

`or(4^n, floor(4^(n-1)))-A268584(A225910(n))`
-/

namespace A168970.P11384627252512784006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A268584 (A225910 n).toNat

end

end A168970.P11384627252512784006

/-! ## A168970.P1210440094557764651

`A003947(n)-A268584(A225910(n))`
-/

namespace A168970.P1210440094557764651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A268584 (A225910 n).toNat

end

end A168970.P1210440094557764651

/-! ## A168970.P13438883574522945737

`A084215(2*n)-A268584(A225910(n))`
-/

namespace A168970.P13438883574522945737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (2 * n) - A268584 (A225910 n).toNat

end

end A168970.P13438883574522945737

/-! ## A168970.P13444573221868175443

`A084215(Δ[n²])/2-A268584(A225910(n))`
-/

namespace A168970.P13444573221868175443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084215 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 - (A268584 (A225910 n).toNat : ℚ)

end

end A168970.P13444573221868175443

