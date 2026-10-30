import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077700: a(1) = 4; a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1) and is not a multiple of 10.

The programs for A077700, there is no canonical definition to state claims against.
-/

/-! ## A077700.P10323540299075054235

`a(n-1)*A077701(n)` with `a(0)=4`
-/

namespace A077700.P10323540299075054235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * A077701 n

end

end A077700.P10323540299075054235

/-!
# A077701: a(n) = A077700(n+1)/A077700(n).

The programs for A077701, there is no canonical definition to state claims against.
-/

/-! ## A077701.P9649486210134431375

`A077700(n+2)/A077700(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077701.P9649486210134431375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077700 (n + 2) : ℚ) / (A077700 (n + 1) : ℚ)

end

end A077701.P9649486210134431375

/-! ## A077701.P5220243406604836152

`ratio[A077700(n+1)]`
-/

namespace A077701.P5220243406604836152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077700 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077701.P5220243406604836152

/-! ## A077701.P3480724900403855799

`ratio[record[A077700(A133310(n))]]`
-/

namespace A077701.P3480724900403855799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077700 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077701.P3480724900403855799

/-! ## A077701.P6764630135009834956

`ratio[record[A077700(A193592(n))]]`
-/

namespace A077701.P6764630135009834956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077700 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077701.P6764630135009834956

/-! ## A077701.P15643691576343764243

`ratio[record[A077700(A246694(n))]]`
-/

namespace A077701.P15643691576343764243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077700 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077701.P15643691576343764243

/-!
# A077702: a(1) = 5; a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1) and is not a multiple of 10.

The programs for A077702, there is no canonical definition to state claims against.
-/

/-! ## A077702.P18217853718671797049

`a(n-1)*A077703(n)` with `a(0)=5`
-/

namespace A077702.P18217853718671797049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * A077703 n

end

end A077702.P18217853718671797049

/-! ## A077702.P15557910400130533507

`a(n-1)*A088419(n)` with `a(0)=5`
-/

namespace A077702.P15557910400130533507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * A088419 n

end

end A077702.P15557910400130533507

/-!
# A077703: a(n) = A077702(n+1)/A077702(n).

The programs for A077703, there is no canonical definition to state claims against.
-/

/-! ## A077703.P15932293774129089576

`A077702(n+2)/A077702(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077703.P15932293774129089576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077702 (n + 2) : ℚ) / (A077702 (n + 1) : ℚ)

end

end A077703.P15932293774129089576

/-! ## A077703.P9464991141962167687

`ratio[A077702(n+1)]`
-/

namespace A077703.P9464991141962167687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077702 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077703.P9464991141962167687

/-! ## A077703.P9294795099697293508

`ratio[record[A077702(A102885(n))]]`
-/

namespace A077703.P9294795099697293508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077702 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077703.P9294795099697293508

/-! ## A077703.P11889108524477908216

`ratio[record[A077702(A193592(n))]]`
-/

namespace A077703.P11889108524477908216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077702 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077703.P11889108524477908216

/-! ## A077703.P3399857999866296926

`A088418(n+2)/A088418(n+1)`
-/

namespace A077703.P3399857999866296926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088418 (n + 2) : ℚ) / (A088418 (n + 1) : ℚ)

end

end A077703.P3399857999866296926

/-!
# A077704: a(1) = 6; a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1) and is not a multiple of 10.

The programs for A077704, there is no canonical definition to state claims against.
-/

/-! ## A077704.P8084180551281835170

`a(n-1)*A077705(n)` with `a(0)=6`
-/

namespace A077704.P8084180551281835170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) * A077705 n

end

end A077704.P8084180551281835170

/-! ## A077704.P10232153358139327184

`∏[A077705(round(sqrt(n²+1)))]`
-/

namespace A077704.P10232153358139327184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077705 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A077704.P10232153358139327184

/-!
# A077705: a(n) = A077704(n+1)/A077704(n).

The programs for A077705, there is no canonical definition to state claims against.
-/

/-! ## A077705.P4691808394879250407

`A077704(n+2)/A077704(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077705.P4691808394879250407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077704 (n + 2) : ℚ) / (A077704 (n + 1) : ℚ)

end

end A077705.P4691808394879250407

/-! ## A077705.P6328699350583532211

`ratio[A077704(n+1)]`
-/

namespace A077705.P6328699350583532211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077704 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077705.P6328699350583532211

/-!
# A077706: a(1) = 7; a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1) and is not a multiple of 10.

The programs for A077706, there is no canonical definition to state claims against.
-/

/-! ## A077706.P2358402405214589428

`a(n-1)*A077707(n)` with `a(0)=7`
-/

namespace A077706.P2358402405214589428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) * A077707 n

end

end A077706.P2358402405214589428

/-!
# A077707: a(n) = A077706(n+1)/A077706(n).

The programs for A077707, there is no canonical definition to state claims against.
-/

/-! ## A077707.P8010996376133629516

`A077706(n+2)/A077706(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077707.P8010996376133629516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077706 (n + 2) : ℚ) / (A077706 (n + 1) : ℚ)

end

end A077707.P8010996376133629516

/-! ## A077707.P11460248535042910087

`ratio[A077706(n+1)]`
-/

namespace A077707.P11460248535042910087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077706 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077707.P11460248535042910087

/-!
# A077708: a(1) = 8; a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1) and is not a multiple of 10.

The programs for A077708, there is no canonical definition to state claims against.
-/

/-! ## A077708.P7188981692941530168

`a(n-1)*A077709(n)` with `a(0)=8`
-/

namespace A077708.P7188981692941530168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) * A077709 n

end

end A077708.P7188981692941530168

/-! ## A077708.P3616159481661638684

`∏[A077709(A000038(n)+n)]`
-/

namespace A077708.P3616159481661638684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077709 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A077708.P3616159481661638684

/-! ## A077708.P13139403939728953312

`∏[A077709(or(n, A000038(n)))]`
-/

namespace A077708.P13139403939728953312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077709 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A077708.P13139403939728953312

/-! ## A077708.P4498300510715928108

`∏[A077709(xor(n, A000038(n)))]`
-/

namespace A077708.P4498300510715928108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077709 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A077708.P4498300510715928108

/-!
# A077709: a(n) = A077708(n+1)/A077708(n).

The programs for A077709, there is no canonical definition to state claims against.
-/

/-! ## A077709.P12519415183579591075

`A077708(n+2)/A077708(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077709.P12519415183579591075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077708 (n + 2) : ℚ) / (A077708 (n + 1) : ℚ)

end

end A077709.P12519415183579591075

/-! ## A077709.P2565740394544018446

`ratio[A077708(n+1)]`
-/

namespace A077709.P2565740394544018446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077708 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077709.P2565740394544018446

/-! ## A077709.P12517993878616235662

`ratio[record[A077708(A128282(n))]]`
-/

namespace A077709.P12517993878616235662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077708 (A128282 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077709.P12517993878616235662

/-! ## A077709.P3362892644547888985

`ratio[record[A077708(A193592(n))]]`
-/

namespace A077709.P3362892644547888985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077708 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077709.P3362892644547888985

/-! ## A077709.P159480904567377648

`ratio[-A077708(A027656(2*n))]`
-/

namespace A077709.P159480904567377648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A077708 (A027656 (2 * n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077709.P159480904567377648

/-!
# A077710: a(1) = 9; a(n) is the smallest multiple of a(n-1) that contains all the digits of a(n-1) and is not a multiple of 10.

The programs for A077710, there is no canonical definition to state claims against.
-/

/-! ## A077710.P733451731437183448

`a(n-1)*A077711(n)` with `a(0)=9`
-/

namespace A077710.P733451731437183448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) * A077711 n

end

end A077710.P733451731437183448

/-!
# A077711: a(n) = A077710(n+1)/A077710(n).

The programs for A077711, there is no canonical definition to state claims against.
-/

/-! ## A077711.P7857445580163782578

`A077710(n+2)/A077710(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077711.P7857445580163782578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077710 (n + 2) : ℚ) / (A077710 (n + 1) : ℚ)

end

end A077711.P7857445580163782578

/-! ## A077711.P11707009681334852238

`ratio[A077710(n+1)]`
-/

namespace A077711.P11707009681334852238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077710 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077711.P11707009681334852238

/-! ## A077711.P7083852716989124848

`ratio[record[A077710(A102885(n))]]`
-/

namespace A077711.P7083852716989124848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077710 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077711.P7083852716989124848

/-! ## A077711.P12083442579103272051

`ratio[record[A077710(A137735(n))]]`
-/

namespace A077711.P12083442579103272051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077710 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077711.P12083442579103272051

/-! ## A077711.P1603685296492869162

`ratio[record[A077710(A193592(n))]]`
-/

namespace A077711.P1603685296492869162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077710 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A077711.P1603685296492869162

/-!
# A077712: a(1) = 1, a(n) = the smallest squarefree number > a(n-1) which contains all the digits of a(n-1).

The programs for A077712, there is no canonical definition to state claims against.
-/

/-! ## A077712.P8799481782750408242

`A007088(eq[A233971(n), A273126(n+1)])`
-/

namespace A077712.P8799481782750408242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A077712.P8799481782750408242

/-! ## A077712.P1109799830066120260

`A007088(A286759(n)+A228051(n+1))`
-/

namespace A077712.P1109799830066120260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286759 n + A228051 (n + 1)).toNat

end

end A077712.P1109799830066120260

/-!
# A077717: Primes which can be expressed as a sum of distinct powers of 3.

The programs for A077717, the canonical program `A077717.P9245729777420330135` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077717 has offset 1).

The definition of A077717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077717.P9815394366022052712

`∩[A145673(n+1), A074938(n)]`
-/

namespace A077717.P9815394366022052712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077717.P9815394366022052712

namespace A077717

/-- `∩[A145673(n+1), A074938(n)]` -/
def P9815394366022052712.Spec : Prop :=
  ∀ n, (P9815394366022052712.a n : ℤ) = A077717 (n + 1)

end A077717

/-! ## A077717.P15575749629274715451

`∩[A004793(n+1), A145673(n+1)]`
-/

namespace A077717.P15575749629274715451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077717.P15575749629274715451

namespace A077717

/-- `∩[A004793(n+1), A145673(n+1)]` -/
def P15575749629274715451.Spec : Prop :=
  ∀ n, (P15575749629274715451.a n : ℤ) = A077717 (n + 1)

end A077717

/-! ## A077717.P3041259350960109657

`∩[A005836(n+1), A145673(n+1)]`
-/

namespace A077717.P3041259350960109657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077717.P3041259350960109657

namespace A077717

/-- `∩[A005836(n+1), A145673(n+1)]` -/
def P3041259350960109657.Spec : Prop :=
  ∀ n, (P3041259350960109657.a n : ℤ) = A077717 (n + 1)

end A077717

/-! ## A077717.P9245729777420330135

`p?[3*a(floor(n/2))+n-2*floor(n/2)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077717

/-- `p?[3*a(floor(n/2))+n-2*floor(n/2)]` -/
def P9245729777420330135.Spec : Prop :=
  ∀ n, P9245729777420330135.a n = A077717 (n + 1)

theorem P9245729777420330135.correct : P9245729777420330135.Spec := by
  intro n
  simp only [A077717, Nat.add_sub_cancel]

end A077717

/-! ## A077717.P555981980220206394

`p?[A074938(n)]`
-/

namespace A077717.P555981980220206394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P555981980220206394

namespace A077717

/-- `p?[A074938(n)]` -/
def P555981980220206394.Spec : Prop :=
  ∀ n, P555981980220206394.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P14013466913520724560

`p?[A004793(n+1)]`
-/

namespace A077717.P14013466913520724560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P14013466913520724560

namespace A077717

/-- `p?[A004793(n+1)]` -/
def P14013466913520724560.Spec : Prop :=
  ∀ n, P14013466913520724560.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P1663802777678753468

`p?[A005836(n+1)]`
-/

namespace A077717.P1663802777678753468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P1663802777678753468

namespace A077717

/-- `p?[A005836(n+1)]` -/
def P1663802777678753468.Spec : Prop :=
  ∀ n, P1663802777678753468.a n = A077717 (n + 1)

theorem P1663802777678753468.correct : P1663802777678753468.Spec := by
  intro n
  simp only [A077717, Nat.add_sub_cancel, A077717.P1663802777678753468.f1, A077717.P1663802777678753468.a, A077717.P9245729777420330135.f1, A077717.P9245729777420330135.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077717

/-! ## A077717.P1962954926468881864

`p?[∑[A236313(n+1)]]`
-/

namespace A077717.P1962954926468881864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P1962954926468881864

namespace A077717

/-- `p?[∑[A236313(n+1)]]` -/
def P1962954926468881864.Spec : Prop :=
  ∀ n, P1962954926468881864.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P7948916830992335103

`p?[A186776(n+1)+1]`
-/

namespace A077717.P7948916830992335103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P7948916830992335103

namespace A077717

/-- `p?[A186776(n+1)+1]` -/
def P7948916830992335103.Spec : Prop :=
  ∀ n, P7948916830992335103.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P17243072370088536278

`p?[A003278(n+1)-1]`
-/

namespace A077717.P17243072370088536278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P17243072370088536278

namespace A077717

/-- `p?[A003278(n+1)-1]` -/
def P17243072370088536278.Spec : Prop :=
  ∀ n, P17243072370088536278.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P5046166061852551701

`p?[A033160(n+1)-1]`
-/

namespace A077717.P5046166061852551701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P5046166061852551701

namespace A077717

/-- `p?[A033160(n+1)-1]` -/
def P5046166061852551701.Spec : Prop :=
  ∀ n, P5046166061852551701.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P6398277120536539865

`p?[A111019(n+1)+2]`
-/

namespace A077717.P6398277120536539865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111019 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P6398277120536539865

namespace A077717

/-- `p?[A111019(n+1)+2]` -/
def P6398277120536539865.Spec : Prop :=
  ∀ n, P6398277120536539865.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P7089429403607015247

`p?[A033159(n+1)-2]`
-/

namespace A077717.P7089429403607015247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P7089429403607015247

namespace A077717

/-- `p?[A033159(n+1)-2]` -/
def P7089429403607015247.Spec : Prop :=
  ∀ n, P7089429403607015247.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P11187115389884131894

`p?[A033162(n+1)-3]`
-/

namespace A077717.P11187115389884131894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P11187115389884131894

namespace A077717

/-- `p?[A033162(n+1)-3]` -/
def P11187115389884131894.Spec : Prop :=
  ∀ n, P11187115389884131894.a n = A077717 (n + 1)

theorem P11187115389884131894.correct : P11187115389884131894.Spec := by
  intro n
  simp only [A077717, Nat.add_sub_cancel, A077717.P11187115389884131894.f1, A077717.P11187115389884131894.a, A077717.P9245729777420330135.f1, A077717.P9245729777420330135.a, A033162, A033162.P7238810650914516972.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A077717

/-! ## A077717.P17067624638801196817

`p?[A265746(A197911(n))]`
-/

namespace A077717.P17067624638801196817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265746 (A197911 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P17067624638801196817

namespace A077717

/-- `p?[A265746(A197911(n))]` -/
def P17067624638801196817.Spec : Prop :=
  ∀ n, P17067624638801196817.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P13668061768188068114

`p?[A125292(n+3)]`
-/

namespace A077717.P13668061768188068114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125292 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P13668061768188068114

namespace A077717

/-- `p?[A125292(n+3)]` -/
def P13668061768188068114.Spec : Prop :=
  ∀ n, P13668061768188068114.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P10761398679109786358

`p?[record[A107681(n+1)]]`
-/

namespace A077717.P10761398679109786358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077717.P10761398679109786358

namespace A077717

/-- `p?[record[A107681(n+1)]]` -/
def P10761398679109786358.Spec : Prop :=
  ∀ n, P10761398679109786358.a n = A077717 (n + 1)

end A077717

/-! ## A077717.P3954055430718478105

`∩[A007645(n+1), A074938(n)]`
-/

namespace A077717.P3954055430718478105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077717.P3954055430718478105

namespace A077717

/-- `∩[A007645(n+1), A074938(n)]` -/
def P3954055430718478105.Spec : Prop :=
  ∀ n, (P3954055430718478105.a n : ℤ) = A077717 (n + 1)

end A077717

/-! ## A077717.P4469723630919146215

`∩[A045331(n+1), A074938(n)]`
-/

namespace A077717.P4469723630919146215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077717.P4469723630919146215

namespace A077717

/-- `∩[A045331(n+1), A074938(n)]` -/
def P4469723630919146215.Spec : Prop :=
  ∀ n, (P4469723630919146215.a n : ℤ) = A077717 (n + 1)

end A077717

/-!
# A077718: Primes which can be expressed as sum of distinct powers of 4.

The programs for A077718, the canonical program `A077718.P6629925818268460121` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077718 has offset 1).

The definition of A077718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 583 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077718.P6629925818268460121

`∩[A247068(n+1), A000695(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A077718

/-- `∩[A247068(n+1), A000695(n)]` -/
def P6629925818268460121.Spec : Prop :=
  ∀ n, (P6629925818268460121.a n : ℤ) = A077718 (n + 1)

theorem P6629925818268460121.correct : P6629925818268460121.Spec := by
  intro n
  simp only [A077718, Nat.add_sub_cancel]

end A077718

/-! ## A077718.P11506274078692702636

`∩[A145818(n+1), A247068(n+1)]`
-/

namespace A077718.P11506274078692702636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077718.P11506274078692702636

namespace A077718

/-- `∩[A145818(n+1), A247068(n+1)]` -/
def P11506274078692702636.Spec : Prop :=
  ∀ n, (P11506274078692702636.a n : ℤ) = A077718 (n + 1)

end A077718

/-! ## A077718.P3050869981568577173

`∩[A247068(n+1), A393255(n+1)]`
-/

namespace A077718.P3050869981568577173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077718.P3050869981568577173

namespace A077718

/-- `∩[A247068(n+1), A393255(n+1)]` -/
def P3050869981568577173.Spec : Prop :=
  ∀ n, (P3050869981568577173.a n : ℤ) = A077718 (n + 1)

end A077718

/-! ## A077718.P14007204449282564840

`∩[A090725(n+1), A000695(n)]`
-/

namespace A077718.P14007204449282564840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077718.P14007204449282564840

namespace A077718

/-- `∩[A090725(n+1), A000695(n)]` -/
def P14007204449282564840.Spec : Prop :=
  ∀ n, (P14007204449282564840.a n : ℤ) = A077718 (n + 1)

end A077718

/-! ## A077718.P11226186893200724713

`∩[A090725(n+1), A145818(n+1)]`
-/

namespace A077718.P11226186893200724713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077718.P11226186893200724713

namespace A077718

/-- `∩[A090725(n+1), A145818(n+1)]` -/
def P11226186893200724713.Spec : Prop :=
  ∀ n, (P11226186893200724713.a n : ℤ) = A077718 (n + 1)

end A077718

/-! ## A077718.P4979927596413107708

`p?[a(and(n, n-1))+and(n, -n)²]` with `a(0)=0`
-/

namespace A077718.P4979927596413107708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P4979927596413107708

namespace A077718

/-- `p?[a(and(n, n-1))+and(n, -n)²]` -/
def P4979927596413107708.Spec : Prop :=
  ∀ n, P4979927596413107708.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P12805934237616528278

`p?[1-4*(1-(a(floor(n/2))+n%2))]` with `a(0)=1`
-/

namespace A077718.P12805934237616528278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - 4 * (1 - (f1 ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P12805934237616528278

namespace A077718

/-- `p?[1-4*(1-(a(floor(n/2))+n%2))]` -/
def P12805934237616528278.Spec : Prop :=
  ∀ n, P12805934237616528278.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P15370402144748000558

`p?[3*a(n-1)+1-2*a(and(n, n-1))]` with `a(0)=0`
-/

namespace A077718.P15370402144748000558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * f1 (n - 1) + 1 - 2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P15370402144748000558

namespace A077718

/-- `p?[3*a(n-1)+1-2*a(and(n, n-1))]` -/
def P15370402144748000558.Spec : Prop :=
  ∀ n, P15370402144748000558.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P4321696323492470541

`p?[A000695(n)]`
-/

namespace A077718.P4321696323492470541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P4321696323492470541

namespace A077718

/-- `p?[A000695(n)]` -/
def P4321696323492470541.Spec : Prop :=
  ∀ n, P4321696323492470541.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P5717861101122981539

`p?[A145818(n+1)]`
-/

namespace A077718.P5717861101122981539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P5717861101122981539

namespace A077718

/-- `p?[A145818(n+1)]` -/
def P5717861101122981539.Spec : Prop :=
  ∀ n, P5717861101122981539.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P4170063053916908175

`p?[A098871(n+2)]`
-/

namespace A077718.P4170063053916908175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P4170063053916908175

namespace A077718

/-- `p?[A098871(n+2)]` -/
def P4170063053916908175.Spec : Prop :=
  ∀ n, P4170063053916908175.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P10549955541815151647

`p?[A098871(n)-1]`
-/

namespace A077718.P10549955541815151647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098871 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P10549955541815151647

namespace A077718

/-- `p?[A098871(n)-1]` -/
def P10549955541815151647.Spec : Prop :=
  ∀ n, P10549955541815151647.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P6255642981221436201

`p?[A032937(n+3)]`
-/

namespace A077718.P6255642981221436201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P6255642981221436201

namespace A077718

/-- `p?[A032937(n+3)]` -/
def P6255642981221436201.Spec : Prop :=
  ∀ n, P6255642981221436201.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P5608122012377413475

`p?[∑[A276391(n+1)]]`
-/

namespace A077718.P5608122012377413475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276391 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P5608122012377413475

namespace A077718

/-- `p?[∑[A276391(n+1)]]` -/
def P5608122012377413475.Spec : Prop :=
  ∀ n, P5608122012377413475.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P15886922779405638194

`p?[A037409(n+2)+1]`
-/

namespace A077718.P15886922779405638194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037409 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P15886922779405638194

namespace A077718

/-- `p?[A037409(n+2)+1]` -/
def P15886922779405638194.Spec : Prop :=
  ∀ n, P15886922779405638194.a n = A077718 (n + 1)

end A077718

/-! ## A077718.P13416101063881672156

`p?[A126684(2*n+5)]`
-/

namespace A077718.P13416101063881672156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077718.P13416101063881672156

namespace A077718

/-- `p?[A126684(2*n+5)]` -/
def P13416101063881672156.Spec : Prop :=
  ∀ n, P13416101063881672156.a n = A077718 (n + 1)

end A077718

/-!
# A077719: Primes which can be expressed as sum of distinct powers of 5.

The programs for A077719, there is no canonical definition to state claims against.
-/

/-! ## A077719.P12480551217154448301

`p?[A033042(n)]`
-/

namespace A077719.P12480551217154448301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077719.P12480551217154448301

/-! ## A077719.P4816154680641554418

`p?[record[A318265(n+1)]]`
-/

namespace A077719.P4816154680641554418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077719.P4816154680641554418

/-! ## A077719.P12176997573496073311

`p?[A037453(A074938(n))]`
-/

namespace A077719.P12176997573496073311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A074938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077719.P12176997573496073311

/-! ## A077719.P4160834212724653113

`p?[A037453(A004793(n+1))]`
-/

namespace A077719.P4160834212724653113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A004793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077719.P4160834212724653113

/-!
# A077720: Primes which can be expressed as sum of distinct powers of 6.

The programs for A077720, there is no canonical definition to state claims against.
-/

/-! ## A077720.P15239309888171455812

`p?[n%2+6*a(floor(n/2))]` with `a(0)=0`
-/

namespace A077720.P15239309888171455812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n % 2 + 6 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A077720.P15239309888171455812

/-! ## A077720.P4422713625903568810

`p?[A033043(n)]`
-/

namespace A077720.P4422713625903568810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077720.P4422713625903568810

/-! ## A077720.P6474584899611406107

`p?[A037411(n+2)+1]`
-/

namespace A077720.P6474584899611406107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037411 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077720.P6474584899611406107

/-! ## A077720.P1065112407205518716

`p?[A037454(A004793(n+1))]`
-/

namespace A077720.P1065112407205518716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A004793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077720.P1065112407205518716

/-!
# A077721: Primes which can be expressed as sum of distinct powers of 7.

The programs for A077721, there is no canonical definition to state claims against.
-/

/-! ## A077721.P15803754212613555787

`p?[A033044(n+1)]`
-/

namespace A077721.P15803754212613555787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077721.P15803754212613555787

/-! ## A077721.P12751369235317876270

`record[p?[A033044(A291766(n))]]`
-/

namespace A077721.P12751369235317876270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077721.P12751369235317876270

/-! ## A077721.P1333158548227026422

`record[p?[A033044(A291769(n))]]`
-/

namespace A077721.P1333158548227026422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077721.P1333158548227026422

/-! ## A077721.P3200535382655068185

`record[p?[A033044(A324347(n))]]`
-/

namespace A077721.P3200535382655068185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077721.P3200535382655068185

/-!
# A077722: Primes which can be expressed as sums of distinct powers of 8.

The programs for A077722, there is no canonical definition to state claims against.
-/

/-! ## A077722.P13329717010476104243

`∩[A247068(n+1), A033045(n)]`
-/

namespace A077722.P13329717010476104243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077722.P13329717010476104243

/-! ## A077722.P8933388445173446217

`p?[A033045(n)]`
-/

namespace A077722.P8933388445173446217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077722.P8933388445173446217

/-! ## A077722.P9721406077632302764

`p?[A152111(n+4)]`
-/

namespace A077722.P9721406077632302764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152111 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077722.P9721406077632302764

/-! ## A077722.P12734838147148000256

`p?[A037413(n+2)+1]`
-/

namespace A077722.P12734838147148000256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037413 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077722.P12734838147148000256

/-! ## A077722.P100667421788396279

`lcm(A011605(A107663(n)), A235465(n+1))`
-/

namespace A077722.P100667421788396279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011605 (A107663 n).toNat) (A235465 (n + 1))

end

end A077722.P100667421788396279

/-!
# A077723: Primes which can be expressed as sum of distinct powers of 9.

The programs for A077723, there is no canonical definition to state claims against.
-/

/-! ## A077723.P18163816972470572457

`∩[A077717(n+1), A033046(n)]`
-/

namespace A077723.P18163816972470572457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077723.P18163816972470572457

/-! ## A077723.P8688651883138479612

`∩[A037414(n+1), A077717(n+1)]`
-/

namespace A077723.P8688651883138479612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077723.P8688651883138479612

/-! ## A077723.P7234961666886442277

`p?[A033046(n)]`
-/

namespace A077723.P7234961666886442277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077723.P7234961666886442277

/-! ## A077723.P2666863802440319291

`p?[A037414(n+1)]`
-/

namespace A077723.P2666863802440319291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A077723.P2666863802440319291

/-!
# A077725: a(n) = smallest square > 1 which can be expressed as a sum of distinct powers of n.

The programs for A077725, the canonical program `A077725.P13510070513711470878` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077725 has offset 2).

The definition of A077725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077725.P13510070513711470878

`A000463(A005843(n+2)+Δ[A010052(n+2)])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A077725

/-- `A000463(A005843(n+2)+Δ[A010052(n+2)])` -/
def P13510070513711470878.Spec : Prop :=
  ∀ n, P13510070513711470878.a n = A077725 (n + 2)

theorem P13510070513711470878.correct : P13510070513711470878.Spec := by
  intro n
  simp only [A077725, Nat.add_sub_cancel]

end A077725

/-! ## A077725.P10844264696188370303

`(A143053(n+4)%A000037(n+3))²`
-/

namespace A077725.P10844264696188370303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143053 (n + 4)) (A000037 (n + 3)) ^ 2

end

end A077725.P10844264696188370303

namespace A077725

/-- `(A143053(n+4)%A000037(n+3))²` -/
def P10844264696188370303.Spec : Prop :=
  ∀ n, P10844264696188370303.a n = A077725 (n + 2)

end A077725

/-! ## A077725.P5600789476308451668

`A053143(A276142(n+1)+A066882(n))`
-/

namespace A077725.P5600789476308451668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A276142 (n + 1) + A066882 n).toNat

end

end A077725.P5600789476308451668

namespace A077725

/-- `A053143(A276142(n+1)+A066882(n))` -/
def P5600789476308451668.Spec : Prop :=
  ∀ n, P5600789476308451668.a n = A077725 (n + 2)

end A077725

/-!
# A077726: Smallest number beginning with n and having a digit sum n.

The programs for A077726, there is no canonical definition to state claims against.
-/

/-! ## A077726.P4451755248559109991

`∑[A086862(Δ[A137507(n)])]`
-/

namespace A077726.P4451755248559109991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137507 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077726.P4451755248559109991

/-! ## A077726.P1971831693206052034

`A004151(eq[A033930(n), A054899(n)])`
-/

namespace A077726.P1971831693206052034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A077726.P1971831693206052034

/-! ## A077726.P16187531541545925150

`record[A118762(n+1)²+n]`
-/

namespace A077726.P16187531541545925150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118762 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077726.P16187531541545925150

/-! ## A077726.P16013043346247486371

`lt[A217657(A014187(n)^(1/3)), A225693(n)]`
-/

namespace A077726.P16013043346247486371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (SequenceMachineLib.roundAway ((A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077726.P16013043346247486371

/-! ## A077726.P8788823229504111970

`∑[A094635(∑[A230949(n+1)])]`
-/

namespace A077726.P8788823229504111970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230949 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094635 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077726.P8788823229504111970

/-!
# A077727: Smallest multiple of n beginning with n and having a digit sum n, or 0 if no such number exists.

The programs for A077727, there is no canonical definition to state claims against.
-/

/-! ## A077727.P16168892980866637700

`(1+n)*A077728(n+1)`
-/

namespace A077727.P16168892980866637700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A077728 (n + 1)

end

end A077727.P16168892980866637700

/-! ## A077727.P13871720665973168237

`A077728(A008619(2*n))*A080513(2*n)`
-/

namespace A077727.P13871720665973168237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077728 (A008619 (2 * n)).toNat * A080513 (2 * n)

end

end A077727.P13871720665973168237

/-! ## A077727.P6823644360378487283

`lcm(A077728(n+1), A171275(A000124(n)))`
-/

namespace A077727.P6823644360378487283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077728 (n + 1)) (A171275 (A000124 n).toNat)

end

end A077727.P6823644360378487283

/-! ## A077727.P15472944637604754536

`lcm(n+1, A077728(A077342(n+1)))`
-/

namespace A077727.P15472944637604754536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A077728 (A077342 (n + 1)).toNat)

end

end A077727.P15472944637604754536

/-! ## A077727.P11240947249826457926

`A258373(A032565(n+1))`
-/

namespace A077727.P11240947249826457926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258373 (A032565 (n + 1)).toNat

end

end A077727.P11240947249826457926

/-!
# A077728: a(n) = A077727(n)/n.

The programs for A077728, there is no canonical definition to state claims against.
-/

/-! ## A077728.P2782757863850465787

`A077727(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077728.P2782757863850465787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077727 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077728.P2782757863850465787

/-!
# A077729: Smallest square beginning with n copies of n.

The programs for A077729, there is no canonical definition to state claims against.
-/

/-! ## A077729.P5609926173579012948

`A077730(n+1)²`
-/

namespace A077729.P5609926173579012948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077730 (n + 1) ^ 2

end

end A077729.P5609926173579012948

/-! ## A077729.P657926017258423527

`A077730(n+1)^p?[A025449(n)]`
-/

namespace A077729.P657926017258423527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077730 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A077729.P657926017258423527

/-! ## A077729.P6363850011583504737

`A077730(n+1)*A077730(A000027(n+1))`
-/

namespace A077729.P6363850011583504737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077730 (n + 1) * A077730 (A000027 (n + 1)).toNat

end

end A077729.P6363850011583504737

/-! ## A077729.P9858565733920648460

`A077730(n+1)^A000005(A287638(n+1))`
-/

namespace A077729.P9858565733920648460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077730 (n + 1) : ℚ) ^ (A000005 (A287638 (n + 1)).toNat : ℤ)

end

end A077729.P9858565733920648460

/-! ## A077729.P5433630396536518434

`A077730(n+1)^A020639(A287629(n))`
-/

namespace A077729.P5433630396536518434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077730 (n + 1) : ℚ) ^ (A020639 (A287629 n).toNat : ℤ)

end

end A077729.P5433630396536518434

/-!
# A077730: a(n) = A077729(n)^(1/2).

The programs for A077730, there is no canonical definition to state claims against.
-/

/-! ## A077730.P13030566638723188467

`A077729(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077730.P13030566638723188467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077729 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A077730.P13030566638723188467

/-! ## A077730.P3601139713754671173

`sqrt(A077729(n+1))`
-/

namespace A077730.P3601139713754671173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077729 (n + 1) : ℝ)

end

end A077730.P3601139713754671173

/-! ## A077730.P9327508459580969618

`root(A077729(n+1), p?[A025449(n)])`
-/

namespace A077730.P9327508459580969618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077729 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A077730.P9327508459580969618

/-!
# A077731: Smallest square beginning with the reverse concatenation of first n natural numbers.

The programs for A077731, there is no canonical definition to state claims against.
-/

/-! ## A077731.P17893030821783661230

`A077732(n+1)²`
-/

namespace A077731.P17893030821783661230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077732 (n + 1) ^ 2

end

end A077731.P17893030821783661230

/-! ## A077731.P11386400127486196177

`A077732(n+1)^A000005(A187873(n))`
-/

namespace A077731.P11386400127486196177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077732 (n + 1) : ℚ) ^ (A000005 (A187873 n).toNat : ℤ)

end

end A077731.P11386400127486196177

/-! ## A077731.P9220748776102210005

`A077732(n+1)^A020639(A033484(n))`
-/

namespace A077731.P9220748776102210005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077732 (n + 1) : ℚ) ^ (A020639 (A033484 n).toNat : ℤ)

end

end A077731.P9220748776102210005

/-! ## A077731.P2284059651653625745

`A077732(n+1)^A014963(A158302(n))`
-/

namespace A077731.P2284059651653625745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077732 (n + 1) : ℚ) ^ (A014963 (A158302 n).toNat : ℤ)

end

end A077731.P2284059651653625745

/-! ## A077731.P10940919531859440

`A077732(A077727(n+1))^2`
-/

namespace A077731.P10940919531859440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077732 (A077727 (n + 1)).toNat ^ 2

end

end A077731.P10940919531859440

/-!
# A077732: a(n) = A077731(n)^(1/2).

The programs for A077732, there is no canonical definition to state claims against.
-/

/-! ## A077732.P4119402166159256196

`A077731(n+1)^(1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077732.P4119402166159256196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077731 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A077732.P4119402166159256196

/-! ## A077732.P8438679879006139594

`sqrt(A077731(n+1))`
-/

namespace A077732.P8438679879006139594
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A077731 (n + 1) : ℝ)

end

end A077732.P8438679879006139594

/-! ## A077732.P17149869596521520065

`root(A077731(n+1), p?[A055090(n)])`
-/

namespace A077732.P17149869596521520065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055090 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077731 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A077732.P17149869596521520065

/-!
# A077733: Smallest n-th power beginning with the reverse concatenation of first n natural numbers.

The programs for A077733, there is no canonical definition to state claims against.
-/

/-! ## A077733.P15015738280653200858

`A077734(n+1)^(n+1)`
-/

namespace A077733.P15015738280653200858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077734 (n + 1) ^ (n + 1)

end

end A077733.P15015738280653200858

/-!
# A077734: a(n) = A077733(n)^(1/n).

The programs for A077734, there is no canonical definition to state claims against.
-/

/-! ## A077734.P2018221801064040010

`root(A077733(n+1), n+1)`
-/

namespace A077734.P2018221801064040010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077733 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A077734.P2018221801064040010

/-!
# A077739: Smallest multiple of n beginning and ending in n and having a digit sum of n, or 0 if no such number exists.

The programs for A077739, there is no canonical definition to state claims against.
-/

/-! ## A077739.P2124984224001256422

`(n+1)*A077740(n+1)`
-/

namespace A077739.P2124984224001256422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077740 (n + 1)

end

end A077739.P2124984224001256422

/-! ## A077739.P14281779810637693837

`lcm(A077740(n+1), A078213(n+1))`
-/

namespace A077739.P14281779810637693837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077740 (n + 1)) (A078213 (n + 1))

end

end A077739.P14281779810637693837

/-! ## A077739.P15215000546150338562

`A078213(n+1)*A254377(A332833(n))`
-/

namespace A077739.P15215000546150338562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078213 (n + 1) * A254377 (A332833 n).toNat

end

end A077739.P15215000546150338562

/-! ## A077739.P10050890585420835294

`lcm(n+1, A077740(A187829(n+1)))`
-/

namespace A077739.P10050890585420835294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A077740 (A187829 (n + 1)).toNat)

end

end A077739.P10050890585420835294

/-! ## A077739.P5524859053068128251

`lcm(A008683(A105476(n)), A078213(n+1))`
-/

namespace A077739.P5524859053068128251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A105476 n).toNat) (A078213 (n + 1))

end

end A077739.P5524859053068128251

/-!
# A077740: a(n) = A077739(n)/n.

The programs for A077740, there is no canonical definition to state claims against.
-/

/-! ## A077740.P2568535736255875795

`A077739(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077740.P2568535736255875795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077739 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077740.P2568535736255875795

/-! ## A077740.P1349534627666470710

`A047999(A126465(n))*A078214(n+1)`
-/

namespace A077740.P1349534627666470710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A126465 n).toNat * A078214 (n + 1)

end

end A077740.P1349534627666470710

/-! ## A077740.P17427811505250254579

`A078214(n+1)%or(A078214(n+1), A306573(n+1))`
-/

namespace A077740.P17427811505250254579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078214 (n + 1)) (Int.lor (A078214 (n + 1)) (A306573 (n + 1)))

end

end A077740.P17427811505250254579

/-! ## A077740.P4238613487774975313

`A078214(n+1)^A227239(A027642(n))`
-/

namespace A077740.P4238613487774975313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078214 (n + 1) : ℚ) ^ (A227239 (A027642 n).toNat : ℤ)

end

end A077740.P4238613487774975313

/-! ## A077740.P3739998603930172747

`A078214(n+1)^A321547(A078200(n))`
-/

namespace A077740.P3739998603930172747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078214 (n + 1) : ℚ) ^ (A321547 (A078200 (n + 100)).toNat : ℤ)

end

end A077740.P3739998603930172747

/-!
# A077741: Smallest multiple of n which begins with R(n) and ends in n where R(n) (A004086) is the digit reversal of n. Suitable number of zeros are assumed to the left of the MSD if required.

The programs for A077741, there is no canonical definition to state claims against.
-/

/-! ## A077741.P9764599031215831752

`(n+1)*A077742(n+1)`
-/

namespace A077741.P9764599031215831752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A077742 (n + 1)

end

end A077741.P9764599031215831752

/-! ## A077741.P16227612544405054190

`A128198(A168291(n))+n`
-/

namespace A077741.P16227612544405054190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128198 (A168291 n).toNat + (n : ℤ)

end

end A077741.P16227612544405054190

/-! ## A077741.P16319917217841648586

`A283960(A309864(n))+n`
-/

namespace A077741.P16319917217841648586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283960 (A309864 n).toNat + (n : ℤ)

end

end A077741.P16319917217841648586

/-! ## A077741.P10665678572171070292

`A318263(A288549(n))+n`
-/

namespace A077741.P10665678572171070292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318263 (A288549 (n + 10)).toNat + (n : ℤ)

end

end A077741.P10665678572171070292

/-! ## A077741.P8281506060677865080

`A092709(A332639(n))+n+1`
-/

namespace A077741.P8281506060677865080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092709 (A332639 n).toNat + (n + 1 : ℤ)

end

end A077741.P8281506060677865080

/-!
# A077742: a(n) = A077741(n)/n.

The programs for A077742, there is no canonical definition to state claims against.
-/

/-! ## A077742.P11929218171848255202

`A077741(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077742.P11929218171848255202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077741 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A077742.P11929218171848255202

/-!
# A077743: Smallest cube ending in n, or 0 if no such cube exists.

The programs for A077743, there is no canonical definition to state claims against.
-/

/-! ## A077743.P7059019947022598267

`A077744(n+1)^3`
-/

namespace A077743.P7059019947022598267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077744 (n + 1) ^ 3

end

end A077743.P7059019947022598267

/-! ## A077743.P7330920033675478959

`A000578(A077744(1+n))`
-/

namespace A077743.P7330920033675478959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A077744 (1 + n)).toNat

end

end A077743.P7330920033675478959

/-! ## A077743.P10665389670712224416

`∑{d}[A077744(n+1), A059376(#)]`
-/

namespace A077743.P10665389670712224416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A077743.P10665389670712224416

/-! ## A077743.P17888638208292382340

`A008218(4*A077744(n+1))`
-/

namespace A077743.P17888638208292382340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008218 (4 * A077744 (n + 1)).toNat

end

end A077743.P17888638208292382340

/-! ## A077743.P15410862927352141488

`A002821(A077744(n+1)²)`
-/

namespace A077743.P15410862927352141488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A077744 (n + 1) ^ 2).toNat

end

end A077743.P15410862927352141488

/-! ## A077743.P13534518046494782213

`A185549(A077744(n+1)²)`
-/

namespace A077743.P13534518046494782213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A077744 (n + 1) ^ 2).toNat

end

end A077743.P13534518046494782213

/-!
# A077744: Smallest number whose cube ends in n, or 0 if no such number exists. a(n) = A077743(n)^(1/3).

The programs for A077744, there is no canonical definition to state claims against.
-/

/-! ## A077744.P5285320492622412341

`A077743(n+1)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077744.P5285320492622412341
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077743 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A077744.P5285320492622412341

/-!
# A077745: Numerator of integral_{x=1..2} (x^2-1)^n dx.

The programs for A077745, there is no canonical definition to state claims against.
-/

/-! ## A077745.P18222768717461998867

`A007310(A276724(2*n))-A071383(n+1)`
-/

namespace A077745.P18222768717461998867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A276724 (2 * n)).toNat - A071383 (n + 1)

end

end A077745.P18222768717461998867

/-!
# A077750: Least significant digit of A077749(n).

The programs for A077750, the canonical program `A077750.P16559744413785721479` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077750 has offset 0).

The definition of A077750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077750.P16559744413785721479

`ogf((2x+4x^2)/(1-x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A077750

/-- `ogf((2x+4x^2)/(1-x+x^2-x^3))` -/
def P16559744413785721479.Spec : Prop :=
  ∀ n, P16559744413785721479.a n = A077750 n

theorem P16559744413785721479.correct : P16559744413785721479.Spec := by
  intro n
  simp only [A077750]

end A077750

/-!
# A077751: Smallest cube that begins and ends in n, or 0 if no such cube exists.

The programs for A077751, there is no canonical definition to state claims against.
-/

/-! ## A077751.P8684429757742719766

`A077752(n)^3`
-/

namespace A077751.P8684429757742719766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n ^ 3

end

end A077751.P8684429757742719766

/-! ## A077751.P12352447019093258401

`A077752(n)²*A077752(n%(n+1))`
-/

namespace A077751.P12352447019093258401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 n ^ 2 * A077752 (n % (n + 1))

end

end A077751.P12352447019093258401

/-! ## A077751.P5754858930877576743

`A057427(n)*A077752(n)*A077752(n)*A077752(n)`
-/

namespace A077751.P5754858930877576743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A077752 n * A077752 n * A077752 n

end

end A077751.P5754858930877576743

/-! ## A077751.P17518807889659086362

`A000578(A077752(n))`
-/

namespace A077751.P17518807889659086362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A077752 n).toNat

end

end A077751.P17518807889659086362

/-! ## A077751.P6924587484954929390

`A034828(2*A077752(n))`
-/

namespace A077751.P6924587484954929390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A077752 n).toNat

end

end A077751.P6924587484954929390

/-!
# A077752: Smallest number whose cube begins and ends in n, or 0 if no such number exists.

The programs for A077752, there is no canonical definition to state claims against.
-/

/-! ## A077752.P4868362541271342836

`A077751(n)^(1/3)`
-/

namespace A077752.P4868362541271342836
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A077751 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A077752.P4868362541271342836

/-!
# A077755: Array in which the n-th row contains the multiples of n using nonzero digits and having a digit sum of n. Sequence contains the rows and a zero entry for rows with no terms (e.g. 10).

The programs for A077755, there is no canonical definition to state claims against.
-/

/-! ## A077755.P11277563337330237221

`or(n+1, floor(A018678(n+1)/8))`
-/

namespace A077755.P11277563337330237221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ⌊(A018678 (n + 1) : ℚ) / 8⌋

end

end A077755.P11277563337330237221

/-! ## A077755.P2692545943092838404

`A371968(A096361(n+1))`
-/

namespace A077755.P2692545943092838404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371968 (A096361 (n + 1)).toNat

end

end A077755.P2692545943092838404

/-!
# A077757: Smallest n-digit multiple of n with digit sum n.

The programs for A077757, there is no canonical definition to state claims against.
-/

/-! ## A077757.P9738040627669020402

`A084029(1+∑[n])`
-/

namespace A077757.P9738040627669020402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084029 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077757.P9738040627669020402

/-! ## A077757.P12082457112755098076

`record[(C(comp[∑[n]]-n, 2)-n)*A084033(n+1)]`
-/

namespace A077757.P12082457112755098076
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A084033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077757.P12082457112755098076

/-! ## A077757.P5059156904852046295

`record[A084029(A056536(n+1))]`
-/

namespace A077757.P5059156904852046295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084029 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077757.P5059156904852046295

/-! ## A077757.P16524406618358146228

`record[A084029(A276954(n+1))]`
-/

namespace A077757.P16524406618358146228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084029 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077757.P16524406618358146228

/-! ## A077757.P2262228913355658432

`record[A084029(n+1)/A209996(n+1)]`
-/

namespace A077757.P2262228913355658432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084029 (n + 1) : ℚ) / (A209996 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A077757.P2262228913355658432

/-!
# A077758: Largest n-digit multiple of n with digit sum n.

The programs for A077758, there is no canonical definition to state claims against.
-/

/-! ## A077758.P17588480403149549206

`A202270(A082216(n)+1)`
-/

namespace A077758.P17588480403149549206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202270 (A082216 n + 1).toNat

end

end A077758.P17588480403149549206

/-! ## A077758.P4443308756634481496

`A202270(A085908(n+1))`
-/

namespace A077758.P4443308756634481496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202270 (A085908 (n + 1)).toNat

end

end A077758.P4443308756634481496

/-! ## A077758.P4133402557719101954

`A202270(∑[A139337(n)²])`
-/

namespace A077758.P4133402557719101954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202270 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A077758.P4133402557719101954

/-! ## A077758.P11336788489270280420

`A202270(n+1)%A079013(n+1)`
-/

namespace A077758.P11336788489270280420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202270 (n + 1)) (A079013 (n + 1))

end

end A077758.P11336788489270280420

/-! ## A077758.P641402153168695076

`lcm(A202270(n+1), A334028(A045545(n)))`
-/

namespace A077758.P641402153168695076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A202270 (n + 1)) (A334028 (A045545 n).toNat)

end

end A077758.P641402153168695076

/-!
# A077759: Smaller of the two successive triangular numbers which differ in the use of only one digit.

The programs for A077759, there is no canonical definition to state claims against.
-/

/-! ## A077759.P9324226581180661221

`eq[A303242(n+1), A343030(A151800(n))]`
-/

namespace A077759.P9324226581180661221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077759.P9324226581180661221

/-! ## A077759.P10610833584977599805

`A000217(lt[A000217(n), A039678(n+2)])`
-/

namespace A077759.P10610833584977599805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039678 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A077759.P10610833584977599805

/-! ## A077759.P18050896933343722767

`eq[A279060(A002048(n+1)), A303242(n+1)]`
-/

namespace A077759.P18050896933343722767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A002048 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303242 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A077759.P18050896933343722767

/-! ## A077759.P12637351232855006858

`lt[A245826(n+1), A245821(A245816(n+4))]`
-/

namespace A077759.P12637351232855006858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245821 (A245816 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077759.P12637351232855006858

/-! ## A077759.P15884893474167163236

`C(A220355(A077739(n+1)), 2)`
-/

namespace A077759.P15884893474167163236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220355 (A077739 (n + 1)).toNat).toNat 2

end

end A077759.P15884893474167163236

/-!
# A077762: Number of ways of pairing the squares of the numbers 1 to n with the squares of the numbers n+1 to 2n such that each pair sums to a prime. Because an odd square must always be added to an even square to obtain a prime, this sequence is the product of A077763 and A077764.

The programs for A077762, there is no canonical definition to state claims against.
-/

/-! ## A077762.P7767897183207359884

`A077763(n+1)*A077764(n+1)`
-/

namespace A077762.P7767897183207359884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077763 (n + 1) * A077764 (n + 1)

end

end A077762.P7767897183207359884

/-! ## A077762.P15270664673260804960

`dr(A143841(record[A143865(n+1)]))`
-/

namespace A077762.P15270664673260804960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A143841 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A077762.P15270664673260804960

/-!
# A077763: Number of ways of pairing the odd squares of the numbers 1 to n with the even squares of the numbers n+1 to 2n such that each pair sums to a prime.

The programs for A077763, there is no canonical definition to state claims against.
-/

/-! ## A077763.P2654166473819802871

`A077762(n+1)/A077764(n+1)`
-/

namespace A077763.P2654166473819802871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077762 (n + 1) : ℚ) / (A077764 (n + 1) : ℚ)

end

end A077763.P2654166473819802871

/-!
# A077766: Number of primes of form 4k+1 between n^2 and (n+1)^2.

The programs for A077766, the canonical program `A077766.P11012053615394286176` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077766 has offset 1).

The definition of A077766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077766.P14611342568584765370

`A077767(n+1)-A348194(n+1)`
-/

namespace A077766.P14611342568584765370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1) - A348194 (n + 1)

end

end A077766.P14611342568584765370

namespace A077766

/-- `A077767(n+1)-A348194(n+1)` -/
def P14611342568584765370.Spec : Prop :=
  ∀ n, P14611342568584765370.a n = A077766 (n + 1)

theorem P14611342568584765370.correct : P14611342568584765370.Spec := by
  intro n
  simp only [A077766, Nat.add_sub_cancel, A077766.P14611342568584765370.a, A077766.P11012053615394286176.f1, A077766.P11012053615394286176.a, A077767, A077767.P13635593134705149289.f1, A077767.P13635593134705149289.a, A348194, A348194.P2542258842268044495.a, A348196, A348196.P10190356890292704948.a, A066339, A066339.P5957712968518338971.a, A348195, A348195.P17928408038197394109.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, A101264, A101264.P9977125953316836564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077766

/-! ## A077766.P11012053615394286176

`Δ[A348196(1+n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A077766

/-- `Δ[A348196(1+n)]` -/
def P11012053615394286176.Spec : Prop :=
  ∀ n, P11012053615394286176.a n = A077766 (n + 1)

theorem P11012053615394286176.correct : P11012053615394286176.Spec := by
  intro n
  simp only [A077766, Nat.add_sub_cancel]

end A077766

/-! ## A077766.P13737078676464274925

`A348196(n+2)-A348196(n+1)`
-/

namespace A077766.P13737078676464274925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 2) - A348196 (n + 1)

end

end A077766.P13737078676464274925

namespace A077766

/-- `A348196(n+2)-A348196(n+1)` -/
def P13737078676464274925.Spec : Prop :=
  ∀ n, P13737078676464274925.a n = A077766 (n + 1)

theorem P13737078676464274925.correct : P13737078676464274925.Spec := by
  intro n
  simp only [A077766, Nat.add_sub_cancel, A077766.P13737078676464274925.a, A077766.P11012053615394286176.f1, A077766.P11012053615394286176.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A077766

/-! ## A077766.P10389604886125361485

`Δ[A348195(n+1)-A348193(n+1)]`
-/

namespace A077766.P10389604886125361485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1) - A348193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P10389604886125361485

namespace A077766

/-- `Δ[A348195(n+1)-A348193(n+1)]` -/
def P10389604886125361485.Spec : Prop :=
  ∀ n, P10389604886125361485.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P4757914205101579676

`Δ[A348195(n+1)]-A348194(n+1)`
-/

namespace A077766.P4757914205101579676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348194 (n + 1)

end

end A077766.P4757914205101579676

namespace A077766

/-- `Δ[A348195(n+1)]-A348194(n+1)` -/
def P4757914205101579676.Spec : Prop :=
  ∀ n, P4757914205101579676.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P2518938265574301889

`A077767(n+1)+A348193(n+1)-A348193(n+2)`
-/

namespace A077766.P2518938265574301889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (n + 1) + (A348193 (n + 1) - A348193 (n + 2))

end

end A077766.P2518938265574301889

namespace A077766

/-- `A077767(n+1)+A348193(n+1)-A348193(n+2)` -/
def P2518938265574301889.Spec : Prop :=
  ∀ n, P2518938265574301889.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P6644639570809266092

`A348195(n+2)-(A348195(n+1)+A348194(n+1))`
-/

namespace A077766.P6644639570809266092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 2) - (A348195 (n + 1) + A348194 (n + 1))

end

end A077766.P6644639570809266092

namespace A077766

/-- `A348195(n+2)-(A348195(n+1)+A348194(n+1))` -/
def P6644639570809266092.Spec : Prop :=
  ∀ n, P6644639570809266092.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P14757111534808053235

`Δ[A228234(n+1)]%(n+1)`
-/

namespace A077766.P14757111534808053235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A077766.P14757111534808053235

namespace A077766

/-- `Δ[A228234(n+1)]%(n+1)` -/
def P14757111534808053235.Spec : Prop :=
  ∀ n, P14757111534808053235.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P14090590388392459768

`A004524(Δ[A228232(n+1)]+1)`
-/

namespace A077766.P14090590388392459768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n + 1).toNat

end

end A077766.P14090590388392459768

namespace A077766

/-- `A004524(Δ[A228232(n+1)]+1)` -/
def P14090590388392459768.Spec : Prop :=
  ∀ n, P14090590388392459768.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P2846965891922168800

`Δ[A062711(n+1)-A228235(n+1)]`
-/

namespace A077766.P2846965891922168800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062711 (n + 1) - A228235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P2846965891922168800

namespace A077766

/-- `Δ[A062711(n+1)-A228235(n+1)]` -/
def P2846965891922168800.Spec : Prop :=
  ∀ n, P2846965891922168800.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P123836836672534235

`Δ[A228232(n+1)-A228234(n+1)]`
-/

namespace A077766.P123836836672534235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) - A228234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P123836836672534235

namespace A077766

/-- `Δ[A228232(n+1)-A228234(n+1)]` -/
def P123836836672534235.Spec : Prop :=
  ∀ n, P123836836672534235.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P2628006840979387828

`Δ[A004524(A228232(n+1))]`
-/

namespace A077766.P2628006840979387828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A228232 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P2628006840979387828

namespace A077766

/-- `Δ[A004524(A228232(n+1))]` -/
def P2628006840979387828.Spec : Prop :=
  ∀ n, P2628006840979387828.a n = A077766 (n + 1)

end A077766

/-! ## A077766.P17528562479350109586

`Δ[A296021(A198442(n+1))]`
-/

namespace A077766.P17528562479350109586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (A198442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077766.P17528562479350109586

namespace A077766

/-- `Δ[A296021(A198442(n+1))]` -/
def P17528562479350109586.Spec : Prop :=
  ∀ n, P17528562479350109586.a n = A077766 (n + 1)

end A077766

/-!
# A077767: Number of primes of form 4k+3 between n^2 and (n+1)^2.

The programs for A077767, the canonical program `A077767.P13635593134705149289` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077767 has offset 1).

The definition of A077767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077767.P8220193078321653771

`A348194(n+1)+A077766(n+1)`
-/

namespace A077767.P8220193078321653771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348194 (n + 1) + A077766 (n + 1)

end

end A077767.P8220193078321653771

namespace A077767

/-- `A348194(n+1)+A077766(n+1)` -/
def P8220193078321653771.Spec : Prop :=
  ∀ n, P8220193078321653771.a n = A077767 (n + 1)

theorem P8220193078321653771.correct : P8220193078321653771.Spec := by
  intro n
  simp only [A077767, Nat.add_sub_cancel, A077767.P8220193078321653771.a, A077767.P13635593134705149289.f1, A077767.P13635593134705149289.a, A077766, A077766.P11012053615394286176.f1, A077766.P11012053615394286176.a, A348194, A348194.P2542258842268044495.a, A348195, A348195.P17928408038197394109.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A348196, A348196.P10190356890292704948.a, A066339, A066339.P5957712968518338971.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A077767

/-! ## A077767.P13635593134705149289

`Δ[A348195(1+n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A077767

/-- `Δ[A348195(1+n)]` -/
def P13635593134705149289.Spec : Prop :=
  ∀ n, P13635593134705149289.a n = A077767 (n + 1)

theorem P13635593134705149289.correct : P13635593134705149289.Spec := by
  intro n
  simp only [A077767, Nat.add_sub_cancel]

end A077767

/-! ## A077767.P3954317510456272636

`A348195(n+2)-A348195(n+1)`
-/

namespace A077767.P3954317510456272636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348195 (n + 2) - A348195 (n + 1)

end

end A077767.P3954317510456272636

namespace A077767

/-- `A348195(n+2)-A348195(n+1)` -/
def P3954317510456272636.Spec : Prop :=
  ∀ n, P3954317510456272636.a n = A077767 (n + 1)

theorem P3954317510456272636.correct : P3954317510456272636.Spec := by
  intro n
  simp only [A077767, Nat.add_sub_cancel, A077767.P3954317510456272636.a, A077767.P13635593134705149289.f1, A077767.P13635593134705149289.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A077767

/-! ## A077767.P16020733674737625295

`Δ[A348196(n+1)+A348193(n+1)]`
-/

namespace A077767.P16020733674737625295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1) + A348193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077767.P16020733674737625295

namespace A077767

/-- `Δ[A348196(n+1)+A348193(n+1)]` -/
def P16020733674737625295.Spec : Prop :=
  ∀ n, P16020733674737625295.a n = A077767 (n + 1)

end A077767

/-! ## A077767.P1033897160609193039

`A348194(n+1)+Δ[A348196(n+1)]`
-/

namespace A077767.P1033897160609193039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348194 (n + 1) + (f1 (n + 1) - f1 n)

end

end A077767.P1033897160609193039

namespace A077767

/-- `A348194(n+1)+Δ[A348196(n+1)]` -/
def P1033897160609193039.Spec : Prop :=
  ∀ n, P1033897160609193039.a n = A077767 (n + 1)

end A077767

/-! ## A077767.P12220145620506038537

`A077766(n+1)+A348193(n+2)-A348193(n+1)`
-/

namespace A077767.P12220145620506038537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077766 (n + 1) + (A348193 (n + 2) - A348193 (n + 1))

end

end A077767.P12220145620506038537

namespace A077767

/-- `A077766(n+1)+A348193(n+2)-A348193(n+1)` -/
def P12220145620506038537.Spec : Prop :=
  ∀ n, P12220145620506038537.a n = A077767 (n + 1)

end A077767

/-! ## A077767.P13886486634867900465

`A348194(n+1)+A348196(n+2)-A348196(n+1)`
-/

namespace A077767.P13886486634867900465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348194 (n + 1) + (A348196 (n + 2) - A348196 (n + 1))

end

end A077767.P13886486634867900465

namespace A077767

/-- `A348194(n+1)+A348196(n+2)-A348196(n+1)` -/
def P13886486634867900465.Spec : Prop :=
  ∀ n, P13886486634867900465.a n = A077767 (n + 1)

end A077767

/-! ## A077767.P5128350797966563552

`Δ[A066490((n+1)²)]`
-/

namespace A077767.P5128350797966563552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077767.P5128350797966563552

namespace A077767

/-- `Δ[A066490((n+1)²)]` -/
def P5128350797966563552.Spec : Prop :=
  ∀ n, P5128350797966563552.a n = A077767 (n + 1)

end A077767

/-!
# A077768: Number of times that the sum of two squares is an integer between n^2 and (n+1)^2; multiple representations are counted multiply.

The programs for A077768, the canonical program `A077768.P12280336567790467056` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077768 has offset 1).

The definition of A077768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077768.P12774598805758105166

`ceil(A138494(n+1)/2)`
-/

namespace A077768.P12774598805758105166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138494 (n + 1) : ℚ) / 2⌉

end

end A077768.P12774598805758105166

namespace A077768

/-- `ceil(A138494(n+1)/2)` -/
def P12774598805758105166.Spec : Prop :=
  ∀ n, P12774598805758105166.a n = A077768 (n + 1)

end A077768

/-! ## A077768.P12742985998481063872

`round(A138494(1+n)/2)`
-/

namespace A077768.P12742985998481063872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A138494 (1 + n) : ℚ) / 2)

end

end A077768.P12742985998481063872

namespace A077768

/-- `round(A138494(1+n)/2)` -/
def P12742985998481063872.Spec : Prop :=
  ∀ n, P12742985998481063872.a n = A077768 (n + 1)

end A077768

/-! ## A077768.P12280336567790467056

`A211340(n+2)-(A211340(n+1)+A046080(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A077768

/-- `A211340(n+2)-(A211340(n+1)+A046080(n+2))` -/
def P12280336567790467056.Spec : Prop :=
  ∀ n, P12280336567790467056.a n = A077768 (n + 1)

theorem P12280336567790467056.correct : P12280336567790467056.Spec := by
  intro n
  simp only [A077768, Nat.add_sub_cancel]

end A077768

/-! ## A077768.P13334467685354075307

`A065033(A138494(n+1))`
-/

namespace A077768.P13334467685354075307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A138494 (n + 1)).toNat

end

end A077768.P13334467685354075307

namespace A077768

/-- `A065033(A138494(n+1))` -/
def P13334467685354075307.Spec : Prop :=
  ∀ n, P13334467685354075307.a n = A077768 (n + 1)

end A077768

/-! ## A077768.P9646634648489123070

`ceil(A077770(n+1)/8)`
-/

namespace A077768.P9646634648489123070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077770 (n + 1) : ℚ) / 8⌉

end

end A077768.P9646634648489123070

namespace A077768

/-- `ceil(A077770(n+1)/8)` -/
def P9646634648489123070.Spec : Prop :=
  ∀ n, P9646634648489123070.a n = A077768 (n + 1)

end A077768

/-! ## A077768.P7619400053722358425

`round(A077770(char[1]+1+n)/8)`
-/

namespace A077768.P7619400053722358425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077770 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℚ) / 8)

end

end A077768.P7619400053722358425

namespace A077768

/-- `round(A077770(char[1]+1+n)/8)` -/
def P7619400053722358425.Spec : Prop :=
  ∀ n, P7619400053722358425.a n = A077768 (n + 1)

end A077768

/-! ## A077768.P10775716160970088933

`A110656(A077770(n+1))`
-/

namespace A077768.P10775716160970088933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A077770 (n + 1)).toNat

end

end A077768.P10775716160970088933

namespace A077768

/-- `A110656(A077770(n+1))` -/
def P10775716160970088933.Spec : Prop :=
  ∀ n, P10775716160970088933.a n = A077768 (n + 1)

end A077768

/-! ## A077768.P11538747551388361708

`A394684(n+2)-A036702(n+1)`
-/

namespace A077768.P11538747551388361708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394684 (n + 2) - A036702 (n + 1)

end

end A077768.P11538747551388361708

namespace A077768

/-- `A394684(n+2)-A036702(n+1)` -/
def P11538747551388361708.Spec : Prop :=
  ∀ n, P11538747551388361708.a n = A077768 (n + 1)

end A077768

/-!
# A077769: Number of times that the sum of two coprime squares of opposite parity is an integer between n^2 and (n+1)^2; multiple representations are counted multiply.

The programs for A077769, there is no canonical definition to state claims against.
-/

/-! ## A077769.P9122308508024175030

`Δ[A156685((n+1)²)-A156685(n+1)]`
-/

namespace A077769.P9122308508024175030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156685 ((n + 1) ^ 2) - A156685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077769.P9122308508024175030

/-! ## A077769.P4311168003579363535

`A304720(or(A101400(n), A276071(n)))`
-/

namespace A077769.P4311168003579363535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304720 (Int.lor (A101400 n) (A276071 n)).toNat

end

end A077769.P4311168003579363535

/-!
# A077770: Number of ordered pairs of integers (x,y) with n^2 < x^2 + y^2 < (n+1)^2; number of lattice points between circles of radii n and n+1.

The programs for A077770, the canonical program `A077770.P15877172202221039210` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077770 has offset 0).

The definition of A077770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A077770.P2680924714132572944

`A051132(n+1)-A000328(n)`
-/

namespace A077770.P2680924714132572944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - A000328 n

end

end A077770.P2680924714132572944

namespace A077770

/-- `A051132(n+1)-A000328(n)` -/
def P2680924714132572944.Spec : Prop :=
  ∀ n, P2680924714132572944.a n = A077770 n

end A077770

/-! ## A077770.P5132430329414561913

`Δ[A051132(n)]-A046109(n)`
-/

namespace A077770.P5132430329414561913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046109 n

end

end A077770.P5132430329414561913

namespace A077770

/-- `Δ[A051132(n)]-A046109(n)` -/
def P5132430329414561913.Spec : Prop :=
  ∀ n, P5132430329414561913.a n = A077770 n

end A077770

/-! ## A077770.P15877172202221039210

`Δ[A000328(n)-A349538(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A077770

/-- `Δ[A000328(n)-A349538(n)]` -/
def P15877172202221039210.Spec : Prop :=
  ∀ n, P15877172202221039210.a n = A077770 n

theorem P15877172202221039210.correct : P15877172202221039210.Spec := by
  intro n
  simp only [A077770]

end A077770

/-! ## A077770.P5207604185401263729

`∑[Δ[A051132(n)]-A036693(n)]`
-/

namespace A077770.P5207604185401263729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077770.P5207604185401263729

namespace A077770

/-- `∑[Δ[A051132(n)]-A036693(n)]` -/
def P5207604185401263729.Spec : Prop :=
  ∀ n, P5207604185401263729.a n = A077770 n

end A077770

/-! ## A077770.P8944491529182588301

`A051132(n+1)-∑[A036693(n)]`
-/

namespace A077770.P8944491529182588301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077770.P8944491529182588301

namespace A077770

/-- `A051132(n+1)-∑[A036693(n)]` -/
def P8944491529182588301.Spec : Prop :=
  ∀ n, P8944491529182588301.a n = A077770 n

end A077770

/-! ## A077770.P17905943161971377504

`Δ[A000328(n)]-A046109(n+1)`
-/

namespace A077770.P17905943161971377504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046109 (n + 1)

end

end A077770.P17905943161971377504

namespace A077770

/-- `Δ[A000328(n)]-A046109(n+1)` -/
def P17905943161971377504.Spec : Prop :=
  ∀ n, P17905943161971377504.a n = A077770 n

end A077770

/-! ## A077770.P17870854558743704082

`Δ[A053411(2*n)-A349538(n)]`
-/

namespace A077770.P17870854558743704082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n) - A349538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077770.P17870854558743704082

namespace A077770

/-- `Δ[A053411(2*n)-A349538(n)]` -/
def P17870854558743704082.Spec : Prop :=
  ∀ n, P17870854558743704082.a n = A077770 n

end A077770

/-! ## A077770.P5670183091325635641

`A036693(n+1)-A046109(n+1)`
-/

namespace A077770.P5670183091325635641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 (n + 1) - A046109 (n + 1)

end

end A077770.P5670183091325635641

namespace A077770

/-- `A036693(n+1)-A046109(n+1)` -/
def P5670183091325635641.Spec : Prop :=
  ∀ n, P5670183091325635641.a n = A077770 n

end A077770

/-! ## A077770.P14236737543088446212

`A053456(2*(n+1))-A000328(n)`
-/

namespace A077770.P14236737543088446212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * (n + 1)) - A000328 n

end

end A077770.P14236737543088446212

namespace A077770

/-- `A053456(2*(n+1))-A000328(n)` -/
def P14236737543088446212.Spec : Prop :=
  ∀ n, P14236737543088446212.a n = A077770 n

end A077770

/-! ## A077770.P12334334236948130854

`A051132(n+1)-A053411(2*n)`
-/

namespace A077770.P12334334236948130854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - A053411 (2 * n)

end

end A077770.P12334334236948130854

namespace A077770

/-- `A051132(n+1)-A053411(2*n)` -/
def P12334334236948130854.Spec : Prop :=
  ∀ n, P12334334236948130854.a n = A077770 n

end A077770

/-! ## A077770.P13699854052857390984

`A053456(2*(n+1))-A053411(2*n)`
-/

namespace A077770.P13699854052857390984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * (n + 1)) - A053411 (2 * n)

end

end A077770.P13699854052857390984

namespace A077770

/-- `A053456(2*(n+1))-A053411(2*n)` -/
def P13699854052857390984.Spec : Prop :=
  ∀ n, P13699854052857390984.a n = A077770 n

end A077770

/-! ## A077770.P2824439987433011848

`A232705(2*n+1)+A232705(2*(n+1))`
-/

namespace A077770.P2824439987433011848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232705 (2 * n + 1) + A232705 (2 * (n + 1))

end

end A077770.P2824439987433011848

namespace A077770

/-- `A232705(2*n+1)+A232705(2*(n+1))` -/
def P2824439987433011848.Spec : Prop :=
  ∀ n, P2824439987433011848.a n = A077770 n

end A077770

/-! ## A077770.P10865153415247786066

`Δ[A000328(n)-A046109(n)]-A046109(n)`
-/

namespace A077770.P10865153415247786066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 n - A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046109 n

end

end A077770.P10865153415247786066

namespace A077770

/-- `Δ[A000328(n)-A046109(n)]-A046109(n)` -/
def P10865153415247786066.Spec : Prop :=
  ∀ n, P10865153415247786066.a n = A077770 n

end A077770

/-! ## A077770.P18000444790087094339

`A047077(n)-(A046109(n+1)+A046109(n))`
-/

namespace A077770.P18000444790087094339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047077 n - (A046109 (n + 1) + A046109 n)

end

end A077770.P18000444790087094339

namespace A077770

/-- `A047077(n)-(A046109(n+1)+A046109(n))` -/
def P18000444790087094339.Spec : Prop :=
  ∀ n, P18000444790087094339.a n = A077770 n

end A077770

/-! ## A077770.P9372334643049900870

`A051132(n+1)-(A051132(n)+A046109(n))`
-/

namespace A077770.P9372334643049900870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - (A051132 n + A046109 n)

end

end A077770.P9372334643049900870

namespace A077770

/-- `A051132(n+1)-(A051132(n)+A046109(n))` -/
def P9372334643049900870.Spec : Prop :=
  ∀ n, P9372334643049900870.a n = A077770 n

end A077770

/-! ## A077770.P9582413219161773081

`A000328(n+1)-(A046109(n+1)+A000328(n))`
-/

namespace A077770.P9582413219161773081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000328 (n + 1) - (A046109 (n + 1) + A000328 n)

end

end A077770.P9582413219161773081

namespace A077770

/-- `A000328(n+1)-(A046109(n+1)+A000328(n))` -/
def P9582413219161773081.Spec : Prop :=
  ∀ n, P9582413219161773081.a n = A077770 n

end A077770

/-! ## A077770.P8014046789446759217

`Δ[A051132(n)]-A004018(n²)`
-/

namespace A077770.P8014046789446759217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004018 (n ^ 2)

end

end A077770.P8014046789446759217

namespace A077770

/-- `Δ[A051132(n)]-A004018(n²)` -/
def P8014046789446759217.Spec : Prop :=
  ∀ n, P8014046789446759217.a n = A077770 n

end A077770

/-!
# A077771: Decimal value of the ternary Champernowne constant.

The programs for A077771, there is no canonical definition to state claims against.
-/

/-! ## A077771.P7203145979255268154

`A353962(∑[n+1]+3)`
-/

namespace A077771.P7203145979255268154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353962 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A077771.P7203145979255268154

/-!
# A077772: Continued fraction expansion of the ternary Champernowne constant.

The programs for A077772, there is no canonical definition to state claims against.
-/

/-! ## A077772.P9794774542845648870

`A244757(A008443(n)-A345000(n))`
-/

namespace A077772.P9794774542845648870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244757 (A008443 n - A345000 n).toNat

end

end A077772.P9794774542845648870

/-! ## A077772.P12016586656242303936

`A244757(A213725(n)+A171275(n+1))`
-/

namespace A077772.P12016586656242303936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244757 (A213725 n + A171275 (n + 1)).toNat

end

end A077772.P12016586656242303936

/-!
# A077773: Number of integers between n^2 and (n+1)^2 that are the sum of two squares; multiple representations are counted once.

The programs for A077773, there is no canonical definition to state claims against.
-/

/-! ## A077773.P13846929105910249527

`Δ[A047808(n)]-1`
-/

namespace A077773.P13846929105910249527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077773.P13846929105910249527

/-! ## A077773.P7970601114538652922

`Δ[A047808(n)+A024000(n)]`
-/

namespace A077773.P7970601114538652922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047808 n + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077773.P7970601114538652922

/-! ## A077773.P16544013921666409777

`A047808(n+1)-(A047808(n)+1)`
-/

namespace A077773.P16544013921666409777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047808 (n + 1) - (A047808 n + 1)

end

end A077773.P16544013921666409777

/-! ## A077773.P14045451125040889707

`(A277192(n)-A277194(n))%(n+1)`
-/

namespace A077773.P14045451125040889707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277192 n - A277194 n) (n + 1 : ℤ)

end

end A077773.P14045451125040889707

/-! ## A077773.P10240095513327780916

`A277192(n)-(A277194(n)+A000007(n))`
-/

namespace A077773.P10240095513327780916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 n - (A277194 n + A000007 n)

end

end A077773.P10240095513327780916

/-! ## A077773.P9389158074459971164

`A277192(n)%Δ[A000290(n)]-A277194(n)`
-/

namespace A077773.P9389158074459971164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277192 n) (f1 (n + 1) - f1 n) - A277194 n

end

end A077773.P9389158074459971164

/-! ## A077773.P7594187335369546414

`Δ[A102548(n²+1)]-1`
-/

namespace A077773.P7594187335369546414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A077773.P7594187335369546414

/-! ## A077773.P16157413274000772551

`A364444(n)-A277193(n)`
-/

namespace A077773.P16157413274000772551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364444 n - A277193 n

end

end A077773.P16157413274000772551

/-!
# A077774: Number of integers between n^2 and (n+1)^2 that are the sum of two coprime squares of opposite parity; multiple representations are counted once.

The programs for A077774, there is no canonical definition to state claims against.
-/

/-! ## A077774.P12160803063461215873

`A280737(or(A037834(n+1), A248613(n+1)))`
-/

namespace A077774.P12160803063461215873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (Int.lor (A037834 (n + 1)) (A248613 (n + 1))).toNat

end

end A077774.P12160803063461215873

/-! ## A077774.P10119936626621115431

`A069010(xor(A038754(n), A099386(n)))`
-/

namespace A077774.P10119936626621115431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.xor (A038754 n) (A099386 n)).toNat

end

end A077774.P10119936626621115431

/-!
# A077775: Odd numbers k such that (10^k - 1)/3 - 2*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime) of the form 3...313...3.

The programs for A077775, there is no canonical definition to state claims against.
-/

/-! ## A077775.P3284814880527754000

`2*A183174(n+1)+1`
-/

namespace A077775.P3284814880527754000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183174 (n + 1) + 1

end

end A077775.P3284814880527754000

/-! ## A077775.P2435749167137986588

`1+2*A183174(n+1)`
-/

namespace A077775.P2435749167137986588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A183174 (n + 1)

end

end A077775.P2435749167137986588

/-! ## A077775.P354233476781604053

`A183174(A000027(n+1))+A183174(n+1)+1`
-/

namespace A077775.P354233476781604053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183174 (A000027 (n + 1)).toNat + (A183174 (n + 1) + 1)

end

end A077775.P354233476781604053

/-! ## A077775.P11983696051227752964

`A000265(A183174(n+1)+A183174(n+1)+1)`
-/

namespace A077775.P11983696051227752964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A183174 (n + 1) + (A183174 (n + 1) + 1)).toNat

end

end A077775.P11983696051227752964

/-! ## A077775.P982723450114617430

`A183174(n+1)+A183174(n+1)+A058348(n)!`
-/

namespace A077775.P982723450114617430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183174 (n + 1) + (A183174 (n + 1) + (Nat.factorial (A058348 n).toNat : ℤ))

end

end A077775.P982723450114617430

/-!
# A077776: Numbers k such that (10^k - 1) - 8*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077776, there is no canonical definition to state claims against.
-/

/-! ## A077776.P6571089713703415437

`2*A183184(n+1)+1`
-/

namespace A077776.P6571089713703415437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183184 (n + 1) + 1

end

end A077776.P6571089713703415437

/-! ## A077776.P1279508566032202922

`A183184(n+1)+A000027(A183184(n+1)+1)`
-/

namespace A077776.P1279508566032202922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183184 (n + 1) + A000027 (A183184 (n + 1) + 1).toNat

end

end A077776.P1279508566032202922

/-! ## A077776.P1628428440986546849

`A183184(n+1)+A183184(n+1)+A055642(n)`
-/

namespace A077776.P1628428440986546849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183184 (n + 1) + (A183184 (n + 1) + A055642 n)

end

end A077776.P1628428440986546849

/-! ## A077776.P17795530389113103003

`A183184(n+1)+A183184(n+1)+A119963(n)`
-/

namespace A077776.P17795530389113103003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183184 (n + 1) + (A183184 (n + 1) + A119963 n)

end

end A077776.P17795530389113103003

/-! ## A077776.P7632770304888523274

`A000010(C(2, n)!)+A183184(n+1)+A183184(n+1)`
-/

namespace A077776.P7632770304888523274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) + (A183184 (n + 1) + A183184 (n + 1))

end

end A077776.P7632770304888523274

/-!
# A077777: Numbers k such that 7*(10^k - 1)/9 - 5*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077777, there is no canonical definition to state claims against.
-/

/-! ## A077777.P5306666262958301602

`2*A183178(n+2)+1`
-/

namespace A077777.P5306666262958301602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183178 (n + 2) + 1

end

end A077777.P5306666262958301602

/-! ## A077777.P12238975707271699681

`A005408(A183178(n+2))`
-/

namespace A077777.P12238975707271699681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A183178 (n + 2)).toNat

end

end A077777.P12238975707271699681

/-! ## A077777.P2465206943498931927

`A317440(A225099(n)+A183178(n+2))+1`
-/

namespace A077777.P2465206943498931927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (A225099 n + A183178 (n + 2)).toNat + 1

end

end A077777.P2465206943498931927

/-! ## A077777.P11904878537899213506

`A317440(A299905(n)+A183178(n+2))+1`
-/

namespace A077777.P11904878537899213506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (A299905 n + A183178 (n + 2)).toNat + 1

end

end A077777.P11904878537899213506

/-! ## A077777.P1681577879293927829

`A144396(A183178(n+2)%A325886(n+1))`
-/

namespace A077777.P1681577879293927829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (Int.tmod (A183178 (n + 2)) (A325886 (n + 1))).toNat

end

end A077777.P1681577879293927829

/-!
# A077778: Numbers k such that (10^k - 1) - 7*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077778, there is no canonical definition to state claims against.
-/

/-! ## A077778.P3704558886050649781

`2*A115073(n+1)+1`
-/

namespace A077778.P3704558886050649781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115073 (n + 1) + 1

end

end A077778.P3704558886050649781

/-! ## A077778.P15749773157917333593

`A000027(A115073(n+1)+A115073(n+1)+1)`
-/

namespace A077778.P15749773157917333593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A115073 (n + 1) + (A115073 (n + 1) + 1)).toNat

end

end A077778.P15749773157917333593

/-! ## A077778.P13090709816945606040

`A115073(n+1)/2^A008683(A002148(n))+1`
-/

namespace A077778.P13090709816945606040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115073 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) + 1

end

end A077778.P13090709816945606040

/-! ## A077778.P17357662864021428853

`A115073(n+1)+A118107(n+1)+A115073(n+1)`
-/

namespace A077778.P17357662864021428853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115073 (n + 1) + (A118107 (n + 1) + A115073 (n + 1))

end

end A077778.P17357662864021428853

/-! ## A077778.P13260196923851794652

`A115073(n+1)+A194285(n+1)+A115073(n+1)`
-/

namespace A077778.P13260196923851794652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115073 (n + 1) + (A194285 (n + 1) + A115073 (n + 1))

end

end A077778.P13260196923851794652

/-!
# A077779: Numbers k such that (10^k - 1)/9 + 2*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077779, there is no canonical definition to state claims against.
-/

/-! ## A077779.P13273453003272099511

`2*A107123(n+2)+1`
-/

namespace A077779.P13273453003272099511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107123 (n + 2) + 1

end

end A077779.P13273453003272099511

/-!
# A077780: Numbers k such that (10^k - 1)/9 + 3*10^floor(k/2) is palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077780, there is no canonical definition to state claims against.
-/

/-! ## A077780.P3146878555465821032

`2*A107124(n+1)+1`
-/

namespace A077780.P3146878555465821032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107124 (n + 1) + 1

end

end A077780.P3146878555465821032

/-!
# A077781: Numbers k such that 7*(10^k - 1)/9 - 3*10^floor(k/2) is a palindromic wing prime (also known as near-repdigit palindromic prime).

The programs for A077781, there is no canonical definition to state claims against.
-/

/-! ## A077781.P13960379931507797658

`2*A183179(n+1)+1`
-/

namespace A077781.P13960379931507797658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183179 (n + 1) + 1

end

end A077781.P13960379931507797658

/-! ## A077781.P5377598644263742715

`A183179(n+1)+A183179(n+1)+A123927(A344180(n))`
-/

namespace A077781.P5377598644263742715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183179 (n + 1) + (A183179 (n + 1) + A123927 (A344180 n).toNat)

end

end A077781.P5377598644263742715

/-! ## A077781.P12856201502593895948

`A016825(A183179(n+1))/2`
-/

namespace A077781.P12856201502593895948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A183179 (n + 1)).toNat : ℚ) / 2

end

end A077781.P12856201502593895948

/-! ## A077781.P11833283810483802105

`A339913(4*A183179(n+1))`
-/

namespace A077781.P11833283810483802105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (4 * A183179 (n + 1)).toNat

end

end A077781.P11833283810483802105

/-! ## A077781.P468458632878752373

`A005408(A183179(n+1))`
-/

namespace A077781.P468458632878752373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A183179 (n + 1)).toNat

end

end A077781.P468458632878752373

/-!
# A077782: Numbers k such that (10^k - 1) - 5*10^floor(m/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077782, there is no canonical definition to state claims against.
-/

/-! ## A077782.P7156915663617089626

`2*A183185(n+1)+1`
-/

namespace A077782.P7156915663617089626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183185 (n + 1) + 1

end

end A077782.P7156915663617089626

/-! ## A077782.P6386951470274196040

`A016825(A183185(n+1)/2)-1`
-/

namespace A077782.P6386951470274196040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (SequenceMachineLib.roundAway ((A183185 (n + 1) : ℚ) / 2)).toNat - 1

end

end A077782.P6386951470274196040

/-! ## A077782.P13380707018222026603

`A183185(C(n+1, n))+A183185(n+1)+1`
-/

namespace A077782.P13380707018222026603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183185 (Nat.choose (n + 1) n) + (A183185 (n + 1) + 1)

end

end A077782.P13380707018222026603

/-!
# A077783: Numbers k such that (10^k-1)/9 + 4*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077783, there is no canonical definition to state claims against.
-/

/-! ## A077783.P8637835916736396551

`2*A107125(n+2)+1`
-/

namespace A077783.P8637835916736396551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107125 (n + 2) + 1

end

end A077783.P8637835916736396551

/-! ## A077783.P14523036637094102052

`filter[A331869(n+1), A324908(#)]`
-/

namespace A077783.P14523036637094102052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A077783.P14523036637094102052

/-! ## A077783.P2420120873704460119

`filter[A331869(n+1), A353638(#)]`
-/

namespace A077783.P2420120873704460119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A077783.P2420120873704460119

/-! ## A077783.P2515436129396531521

`filter[A331869(n+1), A374474(#)]`
-/

namespace A077783.P2515436129396531521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A077783.P2515436129396531521

/-! ## A077783.P8007121298854183908

`filter[A331869(n+1), A391240(#)]`
-/

namespace A077783.P8007121298854183908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A077783.P8007121298854183908

/-!
# A077784: Numbers k such that (10^k - 1)/3 + 2*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077784, there is no canonical definition to state claims against.
-/

/-! ## A077784.P2332988120030064534

`2*A183175(n+1)+1`
-/

namespace A077784.P2332988120030064534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183175 (n + 1) + 1

end

end A077784.P2332988120030064534

/-! ## A077784.P9160591959156454933

`A183175(n+1)+A000027(A183175(n+1)+1)`
-/

namespace A077784.P9160591959156454933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183175 (n + 1) + A000027 (A183175 (n + 1) + 1).toNat

end

end A077784.P9160591959156454933

/-! ## A077784.P1692703883187720095

`A005408(A183175(n+1))`
-/

namespace A077784.P1692703883187720095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A183175 (n + 1)).toNat

end

end A077784.P1692703883187720095

/-! ## A077784.P4740024210247940425

`A004273(A183175(n+1)+1)`
-/

namespace A077784.P4740024210247940425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A183175 (n + 1) + 1).toNat

end

end A077784.P4740024210247940425

/-! ## A077784.P17707014630290353337

`A060747(A183175(n+1)+1)`
-/

namespace A077784.P17707014630290353337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A183175 (n + 1) + 1).toNat

end

end A077784.P17707014630290353337

/-!
# A077785: Odd numbers k such that the palindromic wing number (a.k.a. near-repdigit palindrome) 7*(10^k - 1)/9 - 2*10^((k-1)/2) is prime.

The programs for A077785, there is no canonical definition to state claims against.
-/

/-! ## A077785.P9617683113807494246

`2*A183180(n+2)+1`
-/

namespace A077785.P9617683113807494246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183180 (n + 2) + 1

end

end A077785.P9617683113807494246

/-! ## A077785.P10982796081011231243

`A016825(A183180(n+2))/2`
-/

namespace A077785.P10982796081011231243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A183180 (n + 2)).toNat : ℚ) / 2

end

end A077785.P10982796081011231243

/-! ## A077785.P11101245606926325196

`A060747(A183180(n+2)+1)`
-/

namespace A077785.P11101245606926325196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A183180 (n + 2) + 1).toNat

end

end A077785.P11101245606926325196

/-!
# A077786: Numbers k such that (10^k - 1) - 4*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077786, there is no canonical definition to state claims against.
-/

/-! ## A077786.P12294819513096858045

`2*A183186(n+1)+1`
-/

namespace A077786.P12294819513096858045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183186 (n + 1) + 1

end

end A077786.P12294819513096858045

/-! ## A077786.P10103342414960491318

`lcm(2, A183186(n+1)+A165661(n))-1`
-/

namespace A077786.P10103342414960491318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A183186 (n + 1) + A165661 n) : ℤ) - 1

end

end A077786.P10103342414960491318

/-! ## A077786.P2750920846210636050

`A183186(n+1)+A000027(A183186(n+1)+1)`
-/

namespace A077786.P2750920846210636050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183186 (n + 1) + A000027 (A183186 (n + 1) + 1).toNat

end

end A077786.P2750920846210636050

/-!
# A077787: Numbers k such that (10^k - 1)/9 + 5*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077787, there is no canonical definition to state claims against.
-/

/-! ## A077787.P3531983904368873793

`2*A107126(n+1)+1`
-/

namespace A077787.P3531983904368873793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107126 (n + 1) + 1

end

end A077787.P3531983904368873793

/-! ## A077787.P10395829697000760549

`A005408(A107126(n+1))`
-/

namespace A077787.P10395829697000760549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A107126 (n + 1)).toNat

end

end A077787.P10395829697000760549

/-! ## A077787.P1476585756268402921

`A004273(A107126(n+1)+1)`
-/

namespace A077787.P1476585756268402921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A107126 (n + 1) + 1).toNat

end

end A077787.P1476585756268402921

/-! ## A077787.P9058637100730626434

`A047254(A107126(n+1)+1)`
-/

namespace A077787.P9058637100730626434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047254 (A107126 (n + 1) + 1).toNat

end

end A077787.P9058637100730626434

/-! ## A077787.P13736038309167599494

`A060747(A107126(n+1)+1)`
-/

namespace A077787.P13736038309167599494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A107126 (n + 1) + 1).toNat

end

end A077787.P13736038309167599494

/-!
# A077788: Numbers k such that 7*(10^k - 1)/9 - 10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077788, there is no canonical definition to state claims against.
-/

/-! ## A077788.P7435013394493788628

`2*A183181(n+1)+1`
-/

namespace A077788.P7435013394493788628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183181 (n + 1) + 1

end

end A077788.P7435013394493788628

/-! ## A077788.P11817870232688754035

`A183181(n+1)+A267621(A016754(n))+A183181(n+1)`
-/

namespace A077788.P11817870232688754035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183181 (n + 1) + (A267621 (A016754 n).toNat + A183181 (n + 1))

end

end A077788.P11817870232688754035

/-! ## A077788.P14409080724905206110

`A183181(n+1)+A183181(n+1)+A043537(A365383(n))`
-/

namespace A077788.P14409080724905206110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183181 (n + 1) + (A183181 (n + 1) + A043537 (A365383 n).toNat)

end

end A077788.P14409080724905206110

/-! ## A077788.P17461238393234730036

`A183181(n+1)+A183181(n+1)+A008477(A001227(n+1))`
-/

namespace A077788.P17461238393234730036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183181 (n + 1) + (A183181 (n + 1) + A008477 (A001227 (n + 1)).toNat)

end

end A077788.P17461238393234730036

/-! ## A077788.P9910231776133874588

`A183181(n+1)+A183181(n+1)+A043537(A008477(n+1))`
-/

namespace A077788.P9910231776133874588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183181 (n + 1) + (A183181 (n + 1) + A043537 (A008477 (n + 1)).toNat)

end

end A077788.P9910231776133874588

/-!
# A077789: Numbers k such that (10^k - 1)/9 + 6*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077789, there is no canonical definition to state claims against.
-/

/-! ## A077789.P1412900397042786506

`2*A107127(n+2)+1`
-/

namespace A077789.P1412900397042786506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107127 (n + 2) + 1

end

end A077789.P1412900397042786506

/-!
# A077790: Numbers k such that (10^k - 1)/3 + 4*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077790, there is no canonical definition to state claims against.
-/

/-! ## A077790.P12921720190123177051

`2*A183176(n+1)+1`
-/

namespace A077790.P12921720190123177051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183176 (n + 1) + 1

end

end A077790.P12921720190123177051

/-! ## A077790.P17957796337353728687

`1+2*A183176(n+1)`
-/

namespace A077790.P17957796337353728687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A183176 (n + 1)

end

end A077790.P17957796337353728687

/-! ## A077790.P1377145430292192084

`A183176(n+1)+A183176(n+1)+A001222(A062584(n))`
-/

namespace A077790.P1377145430292192084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183176 (n + 1) + (A183176 (n + 1) + A001222 (A062584 n).toNat)

end

end A077790.P1377145430292192084

/-! ## A077790.P17851387607842154481

`A016825(A183176(n+1))/2`
-/

namespace A077790.P17851387607842154481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A183176 (n + 1)).toNat : ℚ) / 2

end

end A077790.P17851387607842154481

/-! ## A077790.P6972246324924319684

`A103391(4*A183176(n+1))`
-/

namespace A077790.P6972246324924319684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (4 * A183176 (n + 1)).toNat

end

end A077790.P6972246324924319684

/-!
# A077791: Numbers k such that (10^k - 1)/9 + 7*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077791, there is no canonical definition to state claims against.
-/

/-! ## A077791.P11154218900621306541

`2*A107648(n+1)+1`
-/

namespace A077791.P11154218900621306541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107648 (n + 1) + 1

end

end A077791.P11154218900621306541

/-! ## A077791.P3971695980062856422

`A005408(A107648(n+1))`
-/

namespace A077791.P3971695980062856422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A107648 (n + 1)).toNat

end

end A077791.P3971695980062856422

/-! ## A077791.P17968199701617186572

`A004273(A107648(n+1)+1)`
-/

namespace A077791.P17968199701617186572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A107648 (n + 1) + 1).toNat

end

end A077791.P17968199701617186572

/-! ## A077791.P17689376195883418630

`A029739(A107648(n+1)+1)`
-/

namespace A077791.P17689376195883418630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029739 (A107648 (n + 1) + 1).toNat

end

end A077791.P17689376195883418630

/-!
# A077792: Numbers k such that (10^k - 1)/3 + 5*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077792, there is no canonical definition to state claims against.
-/

/-! ## A077792.P16425420065709495902

`2*A183177(n+1)+1`
-/

namespace A077792.P16425420065709495902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183177 (n + 1) + 1

end

end A077792.P16425420065709495902

/-! ## A077792.P12798259422830645836

`A183177(n+1)+A266227(n+1)+A183177(n+1)`
-/

namespace A077792.P12798259422830645836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183177 (n + 1) + (A266227 (n + 1) + A183177 (n + 1))

end

end A077792.P12798259422830645836

/-! ## A077792.P16261011317250967449

`A183177(n+1)+A183177(n+1)+A000041(C(n, n²))`
-/

namespace A077792.P16261011317250967449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183177 (n + 1) + (A183177 (n + 1) + A000041 (Nat.choose n (n ^ 2)))

end

end A077792.P16261011317250967449

/-! ## A077792.P12514217475104002005

`A183177(n+1)+A183177(n+1)+A000203(gcd(n, n+1))`
-/

namespace A077792.P12514217475104002005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183177 (n + 1) + (A183177 (n + 1) + A000203 (Nat.gcd n (n + 1)))

end

end A077792.P12514217475104002005

/-! ## A077792.P14853163562479068147

`A183177(n+1)+A183177(n+1)+A008683(A190272(n+1))`
-/

namespace A077792.P14853163562479068147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183177 (n + 1) + (A183177 (n + 1) + A008683 (A190272 (n + 1)).toNat)

end

end A077792.P14853163562479068147

/-!
# A077793: Numbers k such that 7*(10^k - 1)/9 + 10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077793, there is no canonical definition to state claims against.
-/

/-! ## A077793.P12806951345856539345

`2*A183182(n+1)+1`
-/

namespace A077793.P12806951345856539345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183182 (n + 1) + 1

end

end A077793.P12806951345856539345

/-! ## A077793.P5462136584429815723

`1+2*A183182(n+1)`
-/

namespace A077793.P5462136584429815723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A183182 (n + 1)

end

end A077793.P5462136584429815723

/-! ## A077793.P5075336387158129120

`A005408(A183182(n+1))`
-/

namespace A077793.P5075336387158129120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A183182 (n + 1)).toNat

end

end A077793.P5075336387158129120

/-! ## A077793.P4970322482771962058

`A004273(A183182(n+1)+1)`
-/

namespace A077793.P4970322482771962058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A183182 (n + 1) + 1).toNat

end

end A077793.P4970322482771962058

/-!
# A077794: Odd integers k such that 10^k - 1 - 10^((k-1)/2) is a prime of the form 9...989...9, called a palindromic wing prime or a near-repdigit palindromic prime.

The programs for A077794, there is no canonical definition to state claims against.
-/

/-! ## A077794.P5827664079651461619

`2*A183187(n+1)+1`
-/

namespace A077794.P5827664079651461619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183187 (n + 1) + 1

end

end A077794.P5827664079651461619

/-! ## A077794.P4829676492946078253

`1+2*A183187(n+1)`
-/

namespace A077794.P4829676492946078253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A183187 (n + 1)

end

end A077794.P4829676492946078253

/-! ## A077794.P6498787616095301354

`A183187(A000027(n+1))+A183187(n+1)+1`
-/

namespace A077794.P6498787616095301354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183187 (A000027 (n + 1)).toNat + (A183187 (n + 1) + 1)

end

end A077794.P6498787616095301354

/-! ## A077794.P1321918835581711349

`A183187(n+1)+A183187(n+1)+A016300(n)`
-/

namespace A077794.P1321918835581711349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183187 (n + 1) + (A183187 (n + 1) + A016300 n)

end

end A077794.P1321918835581711349

/-! ## A077794.P1343869753537889955

`A183187(n+1)+A183187(n+1)+A122762(n)`
-/

namespace A077794.P1343869753537889955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183187 (n + 1) + (A183187 (n + 1) + A122762 n)

end

end A077794.P1343869753537889955

/-!
# A077795: Numbers k such that (10^k - 1)/9 + 8*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077795, there is no canonical definition to state claims against.
-/

/-! ## A077795.P292693019296616916

`2*A107649(n+1)+1`
-/

namespace A077795.P292693019296616916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107649 (n + 1) + 1

end

end A077795.P292693019296616916

/-! ## A077795.P14728466527118947704

`1+2*A107649(n+1)`
-/

namespace A077795.P14728466527118947704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A107649 (n + 1)

end

end A077795.P14728466527118947704

/-! ## A077795.P8504311285646149869

`A000027(A107649(n+1)+A107649(n+1)+1)`
-/

namespace A077795.P8504311285646149869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A107649 (n + 1) + (A107649 (n + 1) + 1)).toNat

end

end A077795.P8504311285646149869

/-!
# A077796: Numbers k such that 7*(10^k - 1)/9 + 2*10^floor(k/2) is a palindromic wing prime (a.k.a. near-repdigit palindromic prime).

The programs for A077796, there is no canonical definition to state claims against.
-/

/-! ## A077796.P5222634919673112738

`2*A183183(n+1)+1`
-/

namespace A077796.P5222634919673112738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A183183 (n + 1) + 1

end

end A077796.P5222634919673112738

/-! ## A077796.P5862510204170117251

`A016825(A183183(n+1))/2`
-/

namespace A077796.P5862510204170117251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A183183 (n + 1)).toNat : ℚ) / 2

end

end A077796.P5862510204170117251

/-! ## A077796.P9939464439516648795

`A103391(4*A183183(n+1))`
-/

namespace A077796.P9939464439516648795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (4 * A183183 (n + 1)).toNat

end

end A077796.P9939464439516648795

/-! ## A077796.P6459165574576616637

`A183183(n+1)+A183183(n+1)+A009194(A158604(n))`
-/

namespace A077796.P6459165574576616637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183183 (n + 1) + (A183183 (n + 1) + A009194 (A158604 n).toNat)

end

end A077796.P6459165574576616637

/-! ## A077796.P17210090362440710198

`A183183(n+1)+A183183(n+1)+A065941(A178334(n))`
-/

namespace A077796.P17210090362440710198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183183 (n + 1) + (A183183 (n + 1) + A065941 (A178334 n).toNat)

end

end A077796.P17210090362440710198

/-!
# A077797: Numbers k for which there exist k-digit palindromic wing primes (a.k.a. near-repdigit palindromic primes) of the general form r*(10^k - 1)/9 + (m-r)*10^floor(k/2) where k is the number of digits (an odd number > 1), r is the repeated digit, and m (different from r) is the middle digit.

The programs for A077797, there is no canonical definition to state claims against.
-/

/-! ## A077797.P17848551181622685395

`lt[A286221(n), Δ[A000010(n+1)]]`
-/

namespace A077797.P17848551181622685395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286221 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077797.P17848551181622685395

/-! ## A077797.P13424341121305160081

`lt[A286221(n), Δ[A039649(n+1)]]`
-/

namespace A077797.P13424341121305160081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286221 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077797.P13424341121305160081

/-! ## A077797.P3802876571137205599

`lt[A286221(n)+Δ[A062830(n+1)], 1]`
-/

namespace A077797.P3802876571137205599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286221 n + (f2 (n + 1) - f2 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A077797.P3802876571137205599

/-! ## A077797.P14704142045996044877

`lt[A035382(n+4), Δ[A023896(n+1)]]`
-/

namespace A077797.P14704142045996044877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A077797.P14704142045996044877

/-! ## A077797.P18107173334110221779

`lt[A200778(A200777(n+1)), n^(n%2)]`
-/

namespace A077797.P18107173334110221779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200778 (A200777 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A077797.P18107173334110221779

/-!
# A077798: Palindromic wing primes (a.k.a. near-repdigit palindromic primes) of the general form r*(10^d - 1)/9 + (m-r)*10^floor(d/2) where d is the number of digits (an odd number > 1), r is the repeated digit, and m (different from r) is the middle digit.

The programs for A077798, there is no canonical definition to state claims against.
-/

/-! ## A077798.P12004143467672288243

`∩[A164937(n+1), A261453(n+1)]`
-/

namespace A077798.P12004143467672288243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077798.P12004143467672288243

/-! ## A077798.P5754361134056356015

`∩[A088562(n+1), A164937(n+1)]`
-/

namespace A077798.P5754361134056356015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077798.P5754361134056356015

/-! ## A077798.P7265546666332871230

`∩[A088562(n+1), A261453(n+1)]`
-/

namespace A077798.P7265546666332871230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077798.P7265546666332871230

/-! ## A077798.P12732818103239992112

`∩[A056730(n+1), A164937(n+1)]`
-/

namespace A077798.P12732818103239992112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077798.P12732818103239992112

/-! ## A077798.P13259427856945031178

`∩[A056730(n+1), A261453(n+1)]`
-/

namespace A077798.P13259427856945031178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077798.P13259427856945031178

/-! ## A077798.P2782152210081837883

`∩[A164937(n+1), A335779(n+1)]`
-/

namespace A077798.P2782152210081837883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A077798.P2782152210081837883

/-!
# A077799: Numbers m such that a smoothly undulating palindromic prime of the form (rs*10^m-sr)/99 exists, where r and s are two distinct digits and rs and sr denote concatenations of those digits.

The programs for A077799, there is no canonical definition to state claims against.
-/

/-! ## A077799.P6655657204163755435

`∑[A006464(9^A053735(n))]`
-/

namespace A077799.P6655657204163755435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A053735 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077799.P6655657204163755435

/-! ## A077799.P3052594366500516399

`∑[A260123(A109193(n)+1)]+1`
-/

namespace A077799.P3052594366500516399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260123 (A109193 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A077799.P3052594366500516399

/-! ## A077799.P73764559469750952

`∑[A214212(abs(A244124(2*n)-(n+1)))]+1`
-/

namespace A077799.P73764559469750952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214212 |A244124 (2 * n) - (n + 1 : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A077799.P73764559469750952

/-! ## A077799.P6776830960333267127

`∑[A267376(A150317(A053735(n)))]`
-/

namespace A077799.P6776830960333267127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267376 (A150317 (A053735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077799.P6776830960333267127

/-! ## A077799.P12484796451582500910

`or(A057427(A232149(n+1)), A329548(3*n+2))`
-/

namespace A077799.P12484796451582500910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A232149 (n + 1)).toNat) (A329548 (3 * n + 2))

end

end A077799.P12484796451582500910

