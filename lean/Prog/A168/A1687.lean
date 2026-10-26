import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C020
import Seq.B001.C001
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A168728: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^18 = I.

The programs for A168728, there is no canonical definition to state claims against.
-/

/-! ## A168728.P12976505026728167803

`A000027(Δ[Δ[A168824(n)]])`
-/

namespace A168728.P12976505026728167803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A168728.P12976505026728167803

/-! ## A168728.P10606310723741397597

`A000027(A003945(n)-A067169(n))`
-/

namespace A168728.P10606310723741397597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003945 n - A067169 (n + 11)).toNat

end

end A168728.P10606310723741397597

/-! ## A168728.P5736004646172047577

`A003945(n)-A185238(A030103(n))`
-/

namespace A168728.P5736004646172047577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A185238 (A030103 n).toNat

end

end A168728.P5736004646172047577

/-! ## A168728.P7489889178253706561

`A004119(n)-A369935(A133585(n+1))`
-/

namespace A168728.P7489889178253706561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n - A369935 (A133585 (n + 1)).toNat

end

end A168728.P7489889178253706561

/-! ## A168728.P9925689845339111824

`A003945(n)-A141169(A185284(2*n))`
-/

namespace A168728.P9925689845339111824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A141169 (A185284 (2 * n)).toNat

end

end A168728.P9925689845339111824

/-!
# A168729: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^18 = I.

The programs for A168729, there is no canonical definition to state claims against.
-/

/-! ## A168729.P415095645210192073

`floor(4*3^(n-1))-A151755(A293724(n))`
-/

namespace A168729.P415095645210192073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A151755 (A293724 n).toNat

end

end A168729.P415095645210192073

/-! ## A168729.P15459773572821627993

`floor(4*3^(n-1))-A034432(A163213(n+1))`
-/

namespace A168729.P15459773572821627993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A163213 (n + 1)).toNat

end

end A168729.P15459773572821627993

/-! ## A168729.P841273098093893052

`floor(4*3^(n-1))-A034432(A352336(n+1))`
-/

namespace A168729.P841273098093893052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A352336 (n + 1)).toNat

end

end A168729.P841273098093893052

/-! ## A168729.P13561909588351129833

`floor(4*3^(n-1))-A034432(A138234(2*n+3))`
-/

namespace A168729.P13561909588351129833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A138234 (2 * n + 3)).toNat

end

end A168729.P13561909588351129833

/-! ## A168729.P1359718802289365395

`A003946(n)-A034432(A034442(n+2))`
-/

namespace A168729.P1359718802289365395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A034432 (A034442 (n + 2)).toNat

end

end A168729.P1359718802289365395

/-!
# A168730: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^18 = I.

The programs for A168730, there is no canonical definition to state claims against.
-/

/-! ## A168730.P1107685276720561047

`or(4^n, floor(4^(n-1)))-A010894(A166935(n+1))`
-/

namespace A168730.P1107685276720561047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A010894 ((A166935 (n + 1)).toNat + 21)

end

end A168730.P1107685276720561047

/-! ## A168730.P5804289175117236692

`A003947(n)-A185255(A052383(n+1))`
-/

namespace A168730.P5804289175117236692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A052383 (n + 1)).toNat

end

end A168730.P5804289175117236692

/-! ## A168730.P5776602806824141347

`A003947(n)-A185255(A111808(n+1))`
-/

namespace A168730.P5776602806824141347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A111808 (n + 1)).toNat

end

end A168730.P5776602806824141347

/-! ## A168730.P18221452154210033380

`A003947(n)-A185255(A059559(n+2))`
-/

namespace A168730.P18221452154210033380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A059559 (n + 2)).toNat

end

end A168730.P18221452154210033380

/-!
# A168776: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^19 = I.

The programs for A168776, there is no canonical definition to state claims against.
-/

/-! ## A168776.P5693156438706602561

`A003945(n)-A006927(A014376(n))`
-/

namespace A168776.P5693156438706602561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A006927 (A014376 n).toNat

end

end A168776.P5693156438706602561

/-! ## A168776.P1222025903541244564

`A003945(n)-A070176(A080953(n))`
-/

namespace A168776.P1222025903541244564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A070176 (A080953 n).toNat

end

end A168776.P1222025903541244564

/-! ## A168776.P16605064310730324439

`A169544(n)-A014082(A184964(n))`
-/

namespace A168776.P16605064310730324439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169544 n - A014082 (A184964 n).toNat

end

end A168776.P16605064310730324439

/-! ## A168776.P13841228211485873127

`A003945(n)-A261424(∑[A134975(n)])`
-/

namespace A168776.P13841228211485873127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A261424 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168776.P13841228211485873127

/-! ## A168776.P6730808328073980356

`Δ[A083329(n)-A137734(A185294(n))]`
-/

namespace A168776.P6730808328073980356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n - A137734 (A185294 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168776.P6730808328073980356

/-!
# A168777: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^19 = I.

The programs for A168777, there is no canonical definition to state claims against.
-/

/-! ## A168777.P476802406388210164

`3*a(n-1)-A034432(A034442(n+1))` with `a(0)=1, a(1)=4`
-/

namespace A168777.P476802406388210164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * a (n - 1) - A034432 (A034442 (n + 1)).toNat

end

end A168777.P476802406388210164

/-! ## A168777.P7821927579361241275

`record[3*(a(n-1)-A010894(A000069(n+2)))]` with `a(0)=1, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A168777.P7821927579361241275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 4] fun n f1 =>
  3 * (f1 (n - 1) - A010894 ((A000069 (n + 2)).toNat + 21))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168777.P7821927579361241275

/-! ## A168777.P15042683715491550211

`A003946(n)-A034432(A034442(n+1))`
-/

namespace A168777.P15042683715491550211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A034432 (A034442 (n + 1)).toNat

end

end A168777.P15042683715491550211

/-! ## A168777.P2950797864740013286

`A003946(n)-A244606(A052265(n+3))`
-/

namespace A168777.P2950797864740013286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A244606 (A052265 (n + 3)).toNat

end

end A168777.P2950797864740013286

/-! ## A168777.P4777116520929661318

`A168921(n)-A244606(A052265(n+3))`
-/

namespace A168777.P4777116520929661318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168921 n - A244606 (A052265 (n + 3)).toNat

end

end A168777.P4777116520929661318

/-!
# A168778: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^19 = I.

The programs for A168778, there is no canonical definition to state claims against.
-/

/-! ## A168778.P444956573407499431

`Δ[A168826(n)-A340498(n)]`
-/

namespace A168778.P444956573407499431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168826 n - A340498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168778.P444956573407499431

/-! ## A168778.P3259088429064483496

`floor(5*4^(n-1))-A185255(A059559(n+1))`
-/

namespace A168778.P3259088429064483496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A059559 (n + 1)).toNat

end

end A168778.P3259088429064483496

/-! ## A168778.P4439172293211658486

`or(4^n, floor(4^(n-1)))-A185255(A083920(2*n))`
-/

namespace A168778.P4439172293211658486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 ^ n : ℤ) ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A083920 (2 * n)).toNat

end

end A168778.P4439172293211658486

/-! ## A168778.P17830351811973156653

`A003947(n)-A010894(A028260(n+1))`
-/

namespace A168778.P17830351811973156653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A010894 ((A028260 (n + 1)).toNat + 21)

end

end A168778.P17830351811973156653

/-! ## A168778.P3996824491874079055

`A003947(n)-A010894(A274157(n+1))`
-/

namespace A168778.P3996824491874079055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A010894 ((A274157 (n + 1)).toNat + 21)

end

end A168778.P3996824491874079055

