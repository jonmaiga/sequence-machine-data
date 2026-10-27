import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A281302: Largest nonnegative k such that binomial(2*c-1, c-1) == 1 (mod c^k), where c is the n-th composite number.

The programs for A281302, there is no canonical definition to state claims against.
-/

/-! ## A281302.P7908418519207198342

`val(A073813(n+1)!, A085273(n+1))`
-/

namespace A281302.P7908418519207198342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A073813 (n + 1)).toNat) (A085273 (n + 1)).toNat

end

end A281302.P7908418519207198342

/-! ## A281302.P7414434131175175493

`A000007(A073813(n+1)!%A085273(n+1))`
-/

namespace A281302.P7414434131175175493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (Nat.factorial (A073813 (n + 1)).toNat : ℤ) (A085273 (n + 1))).toNat

end

end A281302.P7414434131175175493

/-! ## A281302.P9543535643012984917

`A098108(Δ[A053767(n)]*A088261(n))`
-/

namespace A281302.P9543535643012984917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 ((f1 (n + 1) - f1 n) * A088261 n).toNat

end

end A281302.P9543535643012984917

/-! ## A281302.P16429703804481272519

`A098108(A018252(n+2)*A088261(n))`
-/

namespace A281302.P16429703804481272519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A018252 (n + 2) * A088261 n).toNat

end

end A281302.P16429703804481272519

/-! ## A281302.P8580249834845798021

`and(1, A064987(A018252(n+2)*A088261(n)))`
-/

namespace A281302.P8580249834845798021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064987 (A018252 (n + 2) * A088261 n).toNat)

end

end A281302.P8580249834845798021

/-! ## A281302.P2006458245288663269

`A098108((lt[1, A001222(n+1)]+1)*A088261(n))`
-/

namespace A281302.P2006458245288663269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) * A088261 n).toNat

end

end A281302.P2006458245288663269

/-! ## A281302.P6539957463258172530

`A098108((lt[2, A000005(n+1)]+1)*A088261(n))`
-/

namespace A281302.P6539957463258172530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) * A088261 n).toNat

end

end A281302.P6539957463258172530

/-! ## A281302.P15439120705664647623

`A098108((lt[A000010(n+1), n]+1)*A088261(n))`
-/

namespace A281302.P15439120705664647623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) * A088261 n).toNat

end

end A281302.P15439120705664647623

/-! ## A281302.P4516783995258880690

`A098108((lt[n+2, A000203(n+1)]+1)*A088261(n))`
-/

namespace A281302.P4516783995258880690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) * A088261 n).toNat

end

end A281302.P4516783995258880690

/-! ## A281302.P9698855236956310668

`A127560(n)%A030394(n+1)`
-/

namespace A281302.P9698855236956310668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127560 n) (A030394 (n + 1))

end

end A281302.P9698855236956310668

/-!
# A281303: Numbers k such that (10^k + 77)/3 is prime.

The programs for A281303, there is no canonical definition to state claims against.
-/

/-! ## A281303.P9974112029742834955

`A397791(A015925(n+1))`
-/

namespace A281303.P9974112029742834955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397791 (A015925 (n + 1)).toNat

end

end A281303.P9974112029742834955

/-! ## A281303.P13847653063252819503

`∑[A240545(A034920(n+1))]`
-/

namespace A281303.P13847653063252819503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240545 (A034920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281303.P13847653063252819503

/-! ## A281303.P17245220021043806418

`∩[A015702(n+1), A191168(n+1)]`
-/

namespace A281303.P17245220021043806418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281303.P17245220021043806418

/-! ## A281303.P14641025474809205254

`lt[A005728(n), A007623(A027746(n+1))]`
-/

namespace A281303.P14641025474809205254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A027746 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281303.P14641025474809205254

/-! ## A281303.P12619321160818450555

`lt[A005557(n), A168166(A027746(n+1))]`
-/

namespace A281303.P12619321160818450555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168166 (A027746 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281303.P12619321160818450555

/-!
# A281304: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A281304, there is no canonical definition to state claims against.
-/

/-! ## A281304.P9552055946617011806

`A007088(A281306(n))`
-/

namespace A281304.P9552055946617011806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281306 n).toNat

end

end A281304.P9552055946617011806

/-! ## A281304.P4275665472947475874

`A185544(2*A281306(n))`
-/

namespace A281304.P4275665472947475874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281306 n).toNat

end

end A281304.P4275665472947475874

/-!
# A281305: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 355", based on the 5-celled von Neumann neighborhood.

The programs for A281305, there is no canonical definition to state claims against.
-/

/-! ## A281305.P59240939654878390

`A007088(A281307(n))`
-/

namespace A281305.P59240939654878390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281307 n).toNat

end

end A281305.P59240939654878390

/-! ## A281305.P4168901949729803351

`A185544(2*A281307(n))`
-/

namespace A281305.P4168901949729803351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281307 n).toNat

end

end A281305.P4168901949729803351

/-!
# A281308: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A281308, there is no canonical definition to state claims against.
-/

/-! ## A281308.P3914811863480633191

`A007088(A281310(n))`
-/

namespace A281308.P3914811863480633191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281310 n).toNat

end

end A281308.P3914811863480633191

/-! ## A281308.P1407609290027157784

`A007088(∑[A198633(n)]-A283293(n+1))`
-/

namespace A281308.P1407609290027157784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A283293 (n + 1)).toNat

end

end A281308.P1407609290027157784

/-! ## A281308.P3934258503702352252

`A007088(A000225(n+2)-A283293(n+1))`
-/

namespace A281308.P3934258503702352252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A283293 (n + 1)).toNat

end

end A281308.P3934258503702352252

/-! ## A281308.P3101254257724473003

`A007088(A198633(n+1)-(A283293(n+1)+1))`
-/

namespace A281308.P3101254257724473003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 (n + 1) - (A283293 (n + 1) + 1)).toNat

end

end A281308.P3101254257724473003

/-! ## A281308.P6361375585459839361

`A007088(A083706(n+1)-(A283293(n+1)+n+1))`
-/

namespace A281308.P6361375585459839361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A083706 (n + 1) - (A283293 (n + 1) + (n + 1 : ℤ))).toNat

end

end A281308.P6361375585459839361

/-!
# A281309: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A281309, there is no canonical definition to state claims against.
-/

/-! ## A281309.P7431701101044263524

`A007088(A281311(n))`
-/

namespace A281309.P7431701101044263524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281311 n).toNat

end

end A281309.P7431701101044263524

/-! ## A281309.P17444294788594756037

`A185544(2*A281311(n))`
-/

namespace A281309.P17444294788594756037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A281311 n).toNat

end

end A281309.P17444294788594756037

/-! ## A281309.P15244156356386331562

`A185544(lcm(2, A281311(n)))`
-/

namespace A281309.P15244156356386331562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A281311 n))

end

end A281309.P15244156356386331562

/-! ## A281309.P3306175284619122147

`A305989(A281310(n))`
-/

namespace A281309.P3306175284619122147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A281310 n).toNat

end

end A281309.P3306175284619122147

/-! ## A281309.P3073578659774384639

`A305989(∑[A198633(n)]-A283293(n+1))`
-/

namespace A281309.P3073578659774384639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∑ j ∈ Finset.range (n + 1), f1 j - A283293 (n + 1)).toNat

end

end A281309.P3073578659774384639

/-!
# A281310: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A281310, there is no canonical definition to state claims against.
-/

/-! ## A281310.P9875981465324419717

`∑[A000079(n+1)-Δ[A283293(n)]]`
-/

namespace A281310.P9875981465324419717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281310.P9875981465324419717

/-! ## A281310.P13175802180312324515

`∑[A198633(n)]-A283293(n+1)`
-/

namespace A281310.P13175802180312324515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283293 (n + 1)

end

end A281310.P13175802180312324515

/-! ## A281310.P15937822008234530359

`A000225(n+2)-A283293(n+1)`
-/

namespace A281310.P15937822008234530359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A283293 (n + 1)

end

end A281310.P15937822008234530359

/-! ## A281310.P3925710084786755837

`A198633(n+1)-(A283293(n+1)+1)`
-/

namespace A281310.P3925710084786755837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 1) - (A283293 (n + 1) + 1)

end

end A281310.P3925710084786755837

/-! ## A281310.P15935823316800400880

`A083706(n+1)-(A283293(n+1)+n+1)`
-/

namespace A281310.P15935823316800400880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 (n + 1) - (A283293 (n + 1) + (n + 1 : ℤ))

end

end A281310.P15935823316800400880

/-! ## A281310.P661443402215023426

`A000225(A028310(n)+2)%A283293(n+1)`
-/

namespace A281310.P661443402215023426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A028310 n + 2).toNat) (A283293 (n + 1))

end

end A281310.P661443402215023426

/-!
# A281311: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 358", based on the 5-celled von Neumann neighborhood.

The programs for A281311, there is no canonical definition to state claims against.
-/

/-! ## A281311.P17831960742614856186

`(∑[A198633(n)]-A283294(n+1))/2`
-/

namespace A281311.P17831960742614856186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A283294 (n + 1) : ℤ) : ℚ) / 2

end

end A281311.P17831960742614856186

/-! ## A281311.P15187587237208929197

`A004526(∑[A198633(n)]-A283294(n+1))`
-/

namespace A281311.P15187587237208929197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j - A283294 (n + 1)).toNat

end

end A281311.P15187587237208929197

/-! ## A281311.P8497752066735562657

`A325401(lcm(2, A281310(n)))`
-/

namespace A281311.P8497752066735562657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A281310 n))

end

end A281311.P8497752066735562657

/-! ## A281311.P10275266848824468530

`A030101(A281310(n))`
-/

namespace A281311.P10275266848824468530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A281310 n).toNat

end

end A281311.P10275266848824468530

/-! ## A281311.P6095977677068557071

`A325401(2*A281310(n))`
-/

namespace A281311.P6095977677068557071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A281310 n).toNat

end

end A281311.P6095977677068557071

/-!
# A281312: Numbers n such that sigma(4*(n-1)) is prime.

The programs for A281312, there is no canonical definition to state claims against.
-/

/-! ## A281312.P9183387738099340554

`2^(A000043(n+2)-3)+1`
-/

namespace A281312.P9183387738099340554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000043 (n + 2) - 3 : ℤ) + 1

end

end A281312.P9183387738099340554

/-! ## A281312.P5491499708658938519

`3*A124477(n+1)+2`
-/

namespace A281312.P5491499708658938519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124477 (n + 1) + 2

end

end A281312.P5491499708658938519

/-! ## A281312.P11235225934882666487

`A134708(n+2)/2+1`
-/

namespace A281312.P11235225934882666487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134708 (n + 2) : ℚ) / 2 + 1

end

end A281312.P11235225934882666487

/-! ## A281312.P735546064399652606

`2^A139480(n+2)+1`
-/

namespace A281312.P735546064399652606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A139480 (n + 2) : ℤ) + 1

end

end A281312.P735546064399652606

/-! ## A281312.P2268237724477010756

`(A065549(n+2)/2)²+1`
-/

namespace A281312.P2268237724477010756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A065549 (n + 2) : ℚ) / 2) ^ 2 + 1

end

end A281312.P2268237724477010756

/-!
# A281313: Write n in Elias's delta code, interchange the 1's and 0's and convert it back to decimal.

The programs for A281313, there is no canonical definition to state claims against.
-/

/-! ## A281313.P4765147195795636257

`A000225(A140341(n+1))-A281225(n+1)`
-/

namespace A281313.P4765147195795636257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A140341 (n + 1)).toNat - A281225 (n + 1)

end

end A281313.P4765147195795636257

/-! ## A281313.P8093016284460939078

`A000225(∑{digits}[A281150(n+1), #!])-A281225(n+1)`
-/

namespace A281313.P8093016284460939078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum - A281225 (n + 1)

end

end A281313.P8093016284460939078

/-! ## A281313.P1632008603790297694

`A035327(A281225(n+1))`
-/

namespace A281313.P1632008603790297694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A281225 (n + 1)).toNat

end

end A281313.P1632008603790297694

/-! ## A281313.P15654803755660768959

`A080079(A281225(C(n+1, n)))-1`
-/

namespace A281313.P15654803755660768959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A281225 (Nat.choose (n + 1) n)).toNat - 1

end

end A281313.P15654803755660768959

/-! ## A281313.P13717697459328418791

`A080079(A281225(Δ[n²]-n))-1`
-/

namespace A281313.P13717697459328418791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A281225 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1

end

end A281313.P13717697459328418791

/-!
# A281315: Number of 2 X 2 matrices with all elements in {0,...,n} and prime determinant.

The programs for A281315, there is no canonical definition to state claims against.
-/

/-! ## A281315.P12192437554087104426

`A343862(A124813(n+6))-A005117(n+1)`
-/

namespace A281315.P12192437554087104426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343862 (A124813 (n + 6)).toNat - A005117 (n + 1)

end

end A281315.P12192437554087104426

/-!
# A281316: Prime number p such that the decimal representation of its binary reflected Gray code is also a prime.

The programs for A281316, the canonical program `A281316.P5684123240907500479` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281316 has offset 1).

The definition of A281316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281316.P5684123240907500479

`(A057427(n)+1)*A292600(A143329(n+1))+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A281316

/-- `(A057427(n)+1)*A292600(A143329(n+1))+1` -/
def P5684123240907500479.Spec : Prop :=
  ∀ n, P5684123240907500479.a n = A281316 (n + 1)

theorem P5684123240907500479.correct : P5684123240907500479.Spec := by
  intro n
  simp only [A281316, Nat.add_sub_cancel]

end A281316

/-! ## A281316.P16460996941996048818

`(A181440(n+2)-n)*A292600(A143329(n+1))+1`
-/

namespace A281316.P16460996941996048818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181440 (n + 2) - (n : ℤ)) * A292600 (A143329 (n + 1)).toNat + 1

end

end A281316.P16460996941996048818

namespace A281316

/-- `(A181440(n+2)-n)*A292600(A143329(n+1))+1` -/
def P16460996941996048818.Spec : Prop :=
  ∀ n, P16460996941996048818.a n = A281316 (n + 1)

end A281316

/-! ## A281316.P789917670554027602

`A020639(A004277(n))*A292600(A143329(n+1))+1`
-/

namespace A281316.P789917670554027602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A292600 (A143329 (n + 1)).toNat + 1

end

end A281316.P789917670554027602

namespace A281316

/-- `A020639(A004277(n))*A292600(A143329(n+1))+1` -/
def P789917670554027602.Spec : Prop :=
  ∀ n, P789917670554027602.a n = A281316 (n + 1)

end A281316

/-! ## A281316.P3642448336802658077

`A001222(A001747(n+1))*A292600(A143329(n+1))+1`
-/

namespace A281316.P3642448336802658077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001747 (n + 1)).toNat * A292600 (A143329 (n + 1)).toNat + 1

end

end A281316.P3642448336802658077

namespace A281316

/-- `A001222(A001747(n+1))*A292600(A143329(n+1))+1` -/
def P3642448336802658077.Spec : Prop :=
  ∀ n, P3642448336802658077.a n = A281316 (n + 1)

end A281316

/-! ## A281316.P8973986942539606865

`eq[A005127(n), A077982(A003188(n))]`
-/

namespace A281316.P8973986942539606865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281316.P8973986942539606865

namespace A281316

/-- `eq[A005127(n), A077982(A003188(n))]` -/
def P8973986942539606865.Spec : Prop :=
  ∀ n, (P8973986942539606865.a n : ℤ) = A281316 (n + 1)

end A281316

/-! ## A281316.P9250986268368341352

`eq[A074206(A003188(n))², A210442(n)]`
-/

namespace A281316.P9250986268368341352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A003188 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281316.P9250986268368341352

namespace A281316

/-- `eq[A074206(A003188(n))², A210442(n)]` -/
def P9250986268368341352.Spec : Prop :=
  ∀ n, (P9250986268368341352.a n : ℤ) = A281316 (n + 1)

end A281316

/-! ## A281316.P8259052526972784004

`A006068(A143329(n+1))`
-/

namespace A281316.P8259052526972784004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A143329 (n + 1)).toNat

end

end A281316.P8259052526972784004

namespace A281316

/-- `A006068(A143329(n+1))` -/
def P8259052526972784004.Spec : Prop :=
  ∀ n, P8259052526972784004.a n = A281316 (n + 1)

end A281316

/-! ## A281316.P12024793798227079933

`p?[A006068(p?[A003188(n)])]`
-/

namespace A281316.P12024793798227079933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281316.P12024793798227079933

namespace A281316

/-- `p?[A006068(p?[A003188(n)])]` -/
def P12024793798227079933.Spec : Prop :=
  ∀ n, P12024793798227079933.a n = A281316 (n + 1)

end A281316

/-! ## A281316.P17570329922003097682

`A292600(2*A143329(n+1))`
-/

namespace A281316.P17570329922003097682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A143329 (n + 1)).toNat

end

end A281316.P17570329922003097682

namespace A281316

/-- `A292600(2*A143329(n+1))` -/
def P17570329922003097682.Spec : Prop :=
  ∀ n, P17570329922003097682.a n = A281316 (n + 1)

end A281316

/-! ## A281316.P13132524166264127650

`eq[A005127(A003188(n)), A256750(n)]`
-/

namespace A281316.P13132524166264127650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A003188 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281316.P13132524166264127650

namespace A281316

/-- `eq[A005127(A003188(n)), A256750(n)]` -/
def P13132524166264127650.Spec : Prop :=
  ∀ n, (P13132524166264127650.a n : ℤ) = A281316 (n + 1)

end A281316

/-! ## A281316.P177185408220631805

`eq[A074206(n), A210442(A003188(n))]`
-/

namespace A281316.P177185408220631805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281316.P177185408220631805

namespace A281316

/-- `eq[A074206(n), A210442(A003188(n))]` -/
def P177185408220631805.Spec : Prop :=
  ∀ n, (P177185408220631805.a n : ℤ) = A281316 (n + 1)

end A281316

/-! ## A281316.P18381259761657454401

`eq[A003415(n), A053989(A105081(n+1))]`
-/

namespace A281316.P18381259761657454401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A105081 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281316.P18381259761657454401

namespace A281316

/-- `eq[A003415(n), A053989(A105081(n+1))]` -/
def P18381259761657454401.Spec : Prop :=
  ∀ n, (P18381259761657454401.a n : ℤ) = A281316 (n + 1)

end A281316

/-! ## A281316.P1904685791949207672

`eq[2, A032741(A003188(n))+A032741(n)]`
-/

namespace A281316.P1904685791949207672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A003188 n).toNat + A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281316.P1904685791949207672

namespace A281316

/-- `eq[2, A032741(A003188(n))+A032741(n)]` -/
def P1904685791949207672.Spec : Prop :=
  ∀ n, (P1904685791949207672.a n : ℤ) = A281316 (n + 1)

end A281316

/-! ## A281316.P6161132326487916780

`A292600(A143329(n+1)+A143329(n+1)+1)`
-/

namespace A281316.P6161132326487916780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A143329 (n + 1) + (A143329 (n + 1) + 1)).toNat

end

end A281316.P6161132326487916780

namespace A281316

/-- `A292600(A143329(n+1)+A143329(n+1)+1)` -/
def P6161132326487916780.Spec : Prop :=
  ∀ n, P6161132326487916780.a n = A281316 (n + 1)

end A281316

/-!
# A281317: Primes p such that p == i mod d(i) where d(i) are the prime divisors of 2p+1.

The programs for A281317, there is no canonical definition to state claims against.
-/

/-! ## A281317.P13807273342904966118

`p?[record[A146564(A020967(n+1))]]`
-/

namespace A281317.P13807273342904966118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (A020967 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281317.P13807273342904966118

/-! ## A281317.P8299101293667661234

`p?[A004524(A325284(n+1))]`
-/

namespace A281317.P8299101293667661234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A325284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A281317.P8299101293667661234

/-! ## A281317.P11317775828835028751

`record[p?[A146564(A023898(n+1))]]`
-/

namespace A281317.P11317775828835028751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (A023898 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281317.P11317775828835028751

/-!
# A281318: Number of consecutive nonprime numbers following Euclid numbers A006862.

The programs for A281318, there is no canonical definition to state claims against.
-/

/-! ## A281318.P6075448278730675212

`A005235(n+1)-2`
-/

namespace A281318.P6075448278730675212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1) - 2

end

end A281318.P6075448278730675212

/-! ## A281318.P13765192515143406226

`A165872(A000040(n+1))+A005235(n+1)`
-/

namespace A281318.P13765192515143406226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A000040 (n + 1)).toNat + A005235 (n + 1)

end

end A281318.P13765192515143406226

/-! ## A281318.P11027887981647725380

`A165872(A164368(n+1))+A005235(n+1)`
-/

namespace A281318.P11027887981647725380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (A164368 (n + 1)).toNat + A005235 (n + 1)

end

end A281318.P11027887981647725380

/-! ## A281318.P2676435728245845231

`A057428(3*n+2)+A049060(A005235(n+1))`
-/

namespace A281318.P2676435728245845231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 2) + A049060 (A005235 (n + 1)).toNat

end

end A281318.P2676435728245845231

/-! ## A281318.P3478906511468162840

`A008683(A002313(n+1))+A000010(A005235(n+1))`
-/

namespace A281318.P3478906511468162840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002313 (n + 1)).toNat + A000010 (A005235 (n + 1)).toNat

end

end A281318.P3478906511468162840

/-! ## A281318.P4775916178142940708

`A000010(A005235(n+1))+A008683(A037153(n+1))`
-/

namespace A281318.P4775916178142940708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A005235 (n + 1)).toNat + A008683 (A037153 (n + 1)).toNat

end

end A281318.P4775916178142940708

/-! ## A281318.P10654342887406832250

`A008683(A062326(n+1))+A000010(A005235(n+1))`
-/

namespace A281318.P10654342887406832250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062326 (n + 1)).toNat + A000010 (A005235 (n + 1)).toNat

end

end A281318.P10654342887406832250

/-! ## A281318.P14094597063201534741

`A002472(A005235(n+1))`
-/

namespace A281318.P14094597063201534741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (A005235 (n + 1)).toNat

end

end A281318.P14094597063201534741

/-! ## A281318.P14640817409445845622

`A014681(xor(1, A005235(n+1)))`
-/

namespace A281318.P14640817409445845622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (Int.xor 1 (A005235 (n + 1))).toNat

end

end A281318.P14640817409445845622

/-! ## A281318.P4563285396092836230

`∑{d}[A005235(n+1), A049820(#)]`
-/

namespace A281318.P4563285396092836230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049820 d

end

end A281318.P4563285396092836230

/-! ## A281318.P13846043964901369718

`A280560(A005235(n+1)+2)+A005235(n+1)`
-/

namespace A281318.P13846043964901369718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A005235 (n + 1) + 2).toNat + A005235 (n + 1)

end

end A281318.P13846043964901369718

/-! ## A281318.P6114608487425557185

`A008683(A014442(n+1))+A000010(A005235(n+1))`
-/

namespace A281318.P6114608487425557185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A014442 (n + 1)).toNat + A000010 (A005235 (n + 1)).toNat

end

end A281318.P6114608487425557185

/-! ## A281318.P13064373731457676184

`A340144(lcm(3, A005235(n+1)))`
-/

namespace A281318.P13064373731457676184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340144 (Int.lcm 3 (A005235 (n + 1)))

end

end A281318.P13064373731457676184

/-!
# A281320: Number of n X 2 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281320, the canonical program `A281320.P1914169402896532214` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281320 has offset 1).

The definition of A281320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281320.P1914169402896532214

`16*a(n-1)-72*a(n-2)+64*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=2, a(2)=28, a(3)=304`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281320

/-- `16*a(n-1)-72*a(n-2)+64*a(n-3)-16*a(n-4)` -/
def P1914169402896532214.Spec : Prop :=
  ∀ n, P1914169402896532214.a n = A281320 (n + 1)

theorem P1914169402896532214.correct : P1914169402896532214.Spec := by
  intro n
  simp only [A281320, Nat.add_sub_cancel]

end A281320

/-! ## A281320.P3216804043537438230

`A280279(2*(n+1))`
-/

namespace A281320.P3216804043537438230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280279 (2 * (n + 1))

end

end A281320.P3216804043537438230

namespace A281320

/-- `A280279(2*(n+1))` -/
def P3216804043537438230.Spec : Prop :=
  ∀ n, P3216804043537438230.a n = A281320 (n + 1)

end A281320

/-! ## A281320.P7208893322447839690

`A109634(2*n)/2`
-/

namespace A281320.P7208893322447839690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109634 (2 * n) : ℚ) / 2

end

end A281320.P7208893322447839690

namespace A281320

/-- `A109634(2*n)/2` -/
def P7208893322447839690.Spec : Prop :=
  ∀ n, P7208893322447839690.a n = (A281320 (n + 1) : ℚ)

end A281320

/-! ## A281320.P10033608155927148553

`and(-n, A280279(A103517(n)))`
-/

namespace A281320.P10033608155927148553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A280279 (A103517 n).toNat)

end

end A281320.P10033608155927148553

namespace A281320

/-- `and(-n, A280279(A103517(n)))` -/
def P10033608155927148553.Spec : Prop :=
  ∀ n, P10033608155927148553.a n = A281320 (n + 1)

end A281320

/-! ## A281320.P11217359716709487100

`record[A280279(Δ[A130205(n+1)])]`
-/

namespace A281320.P11217359716709487100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280279 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281320.P11217359716709487100

namespace A281320

/-- `record[A280279(Δ[A130205(n+1)])]` -/
def P11217359716709487100.Spec : Prop :=
  ∀ n, P11217359716709487100.a n = A281320 (n + 1)

end A281320

/-! ## A281320.P18148746577276305289

`A280279(A103517(n))+A055672(A055672(n))`
-/

namespace A281320.P18148746577276305289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280279 (A103517 n).toNat + A055672 (A055672 n).toNat

end

end A281320.P18148746577276305289

namespace A281320

/-- `A280279(A103517(n))+A055672(A055672(n))` -/
def P18148746577276305289.Spec : Prop :=
  ∀ n, P18148746577276305289.a n = A281320 (n + 1)

end A281320

/-! ## A281320.P7379250077639579031

`A280279(A103517(n))%A227996(n)`
-/

namespace A281320.P7379250077639579031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280279 (A103517 n).toNat) (A227996 n)

end

end A281320.P7379250077639579031

namespace A281320

/-- `A280279(A103517(n))%A227996(n)` -/
def P7379250077639579031.Spec : Prop :=
  ∀ n, P7379250077639579031.a n = A281320 (n + 1)

end A281320

/-!
# A281321: Number of n X 3 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281321, there is no canonical definition to state claims against.
-/

/-! ## A281321.P4111792965321098942

`A281326(∑[n+3]+1)`
-/

namespace A281321.P4111792965321098942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281321.P4111792965321098942

/-! ## A281321.P11885616643621503329

`record[gcd(A281326(n+1), A327072(n))]`
-/

namespace A281321.P11885616643621503329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281326 (n + 1)) (A327072 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281321.P11885616643621503329

/-! ## A281321.P13351259343379682983

`A250287(n)*A281326(A034856(n+2))`
-/

namespace A281321.P13351259343379682983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250287 n * A281326 (A034856 (n + 2)).toNat

end

end A281321.P13351259343379682983

/-! ## A281321.P3979104432189856797

`A281326(A034856(n+2))+A036987(3*n+2)`
-/

namespace A281321.P3979104432189856797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A034856 (n + 2)).toNat + A036987 (3 * n + 2)

end

end A281321.P3979104432189856797

/-!
# A281322: Number of nX4 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281322, there is no canonical definition to state claims against.
-/

/-! ## A281322.P7075872727185251947

`A281326(A141214(n+1))`
-/

namespace A281322.P7075872727185251947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A141214 (n + 1)).toNat

end

end A281322.P7075872727185251947

/-! ## A281322.P4889206059950587835

`A281326(A155212(n)+5)`
-/

namespace A281322.P4889206059950587835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A155212 n + 5).toNat

end

end A281322.P4889206059950587835

/-! ## A281322.P18028434441461910780

`A281326(A056000(n)+7)`
-/

namespace A281322.P18028434441461910780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A056000 n + 7).toNat

end

end A281322.P18028434441461910780

/-! ## A281322.P11924383554275584519

`A281326(eq[3, A193592(n)])`
-/

namespace A281322.P11924383554275584519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281322.P11924383554275584519

/-! ## A281322.P4186466194251190129

`A281326(A052905(n+1)+2)`
-/

namespace A281322.P4186466194251190129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A052905 (n + 1) + 2).toNat

end

end A281322.P4186466194251190129

/-!
# A281323: Number of n X 5 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281323, there is no canonical definition to state claims against.
-/

/-! ## A281323.P6003426885911749652

`A281326(A056115(n)+11)`
-/

namespace A281323.P6003426885911749652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A056115 n + 11).toNat

end

end A281323.P6003426885911749652

/-! ## A281323.P3450321752802592744

`A281326(eq[4, A193592(n)])`
-/

namespace A281323.P3450321752802592744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281323.P3450321752802592744

/-! ## A281323.P3665932262650346957

`A281326(eq[5, A200370(n+1)])`
-/

namespace A281323.P3665932262650346957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281323.P3665932262650346957

/-!
# A281324: Number of nX6 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281324, there is no canonical definition to state claims against.
-/

/-! ## A281324.P6847331944661318342

`A281326(A052905(n+3))`
-/

namespace A281324.P6847331944661318342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A052905 (n + 3)).toNat

end

end A281324.P6847331944661318342

/-! ## A281324.P13741659410313835515

`A281326(A056119(n)+16)`
-/

namespace A281324.P13741659410313835515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A056119 n + 16).toNat

end

end A281324.P13741659410313835515

/-! ## A281324.P13480207483920796136

`A281326(eq[3, A219347(n)])`
-/

namespace A281324.P13480207483920796136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281324.P13480207483920796136

/-! ## A281324.P10341754973558068584

`A281326(eq[3, A274661(n)])`
-/

namespace A281324.P10341754973558068584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281324.P10341754973558068584

/-!
# A281325: Number of nX7 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281325, there is no canonical definition to state claims against.
-/

/-! ## A281325.P1135308685841387250

`A281326(eq[6, A193592(n)])`
-/

namespace A281325.P1135308685841387250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281325.P1135308685841387250

/-! ## A281325.P16261747503512375920

`A281326(eq[2, A219347(n)-2])`
-/

namespace A281325.P16261747503512375920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281325.P16261747503512375920

/-! ## A281325.P17276558421188627356

`A281326(eq[6, A025581(n)]+1)`
-/

namespace A281325.P17276558421188627356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A281325.P17276558421188627356

/-!
# A281327: Number of 2Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281327, there is no canonical definition to state claims against.
-/

/-! ## A281327.P7332644954689819907

`A281326(∑[n+1]+2)`
-/

namespace A281327.P7332644954689819907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281327.P7332644954689819907

/-! ## A281327.P4827616393490646839

`record[A132013(n)*A281326(n+3)]`
-/

namespace A281327.P4827616393490646839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A281326 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281327.P4827616393490646839

/-! ## A281327.P2753442739344812209

`record[A281326(n+3)%A159841(n+1)]`
-/

namespace A281327.P2753442739344812209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281326 (n + 3)) (A159841 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281327.P2753442739344812209

/-!
# A281328: Number of 3 X n 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281328, there is no canonical definition to state claims against.
-/

/-! ## A281328.P16569661115690843003

`A281326(∑[n+2]+4)`
-/

namespace A281328.P16569661115690843003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281328.P16569661115690843003

/-! ## A281328.P6677967750478958108

`A281326(A167614(n+1))+A185037(n)`
-/

namespace A281328.P6677967750478958108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A167614 (n + 1)).toNat + A185037 n

end

end A281328.P6677967750478958108

/-! ## A281328.P16323032281368344514

`A281326(A167614(n+1))+A185044(n)`
-/

namespace A281328.P16323032281368344514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A167614 (n + 1)).toNat + A185044 n

end

end A281328.P16323032281368344514

/-! ## A281328.P2646551579609590223

`A057427(n)*A281326(A167614(n+1))`
-/

namespace A281328.P2646551579609590223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281326 (A167614 (n + 1)).toNat

end

end A281328.P2646551579609590223

/-! ## A281328.P5651113399432682

`A178334(n)*A281326(A167614(n+1))`
-/

namespace A281328.P5651113399432682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A281326 (A167614 (n + 1)).toNat

end

end A281328.P5651113399432682

/-!
# A281329: Number of 4 X n 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281329, there is no canonical definition to state claims against.
-/

/-! ## A281329.P583102391367406329

`A281326(A141214(n)+7)`
-/

namespace A281329.P583102391367406329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A141214 n + 7).toNat

end

end A281329.P583102391367406329

/-! ## A281329.P4245888073548880863

`A281326(A052905(n)+9)`
-/

namespace A281329.P4245888073548880863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A052905 n + 9).toNat

end

end A281329.P4245888073548880863

/-! ## A281329.P3197106809341640091

`A281326(A055999(n)+10)`
-/

namespace A281329.P3197106809341640091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A055999 n + 10).toNat

end

end A281329.P3197106809341640091

/-! ## A281329.P4737644445805351479

`A281326(A167614(n+2)+1)`
-/

namespace A281329.P4737644445805351479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A167614 (n + 2) + 1).toNat

end

end A281329.P4737644445805351479

/-! ## A281329.P16364890823567506680

`A281326(eq[5, A131818(n+1)])`
-/

namespace A281329.P16364890823567506680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281329.P16364890823567506680

/-!
# A281330: Number of 5Xn 0..2 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281330, there is no canonical definition to state claims against.
-/

/-! ## A281330.P17934049628241683996

`A281326(A155212(n)+13)`
-/

namespace A281330.P17934049628241683996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A155212 n + 13).toNat

end

end A281330.P17934049628241683996

/-! ## A281330.P4480132731554457486

`A281326(A056000(n)+15)`
-/

namespace A281330.P4480132731554457486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A056000 n + 15).toNat

end

end A281330.P4480132731554457486

/-! ## A281330.P17328753516541016350

`A281326(eq[7, A066657(n)])`
-/

namespace A281330.P17328753516541016350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281330.P17328753516541016350

/-! ## A281330.P17360896956624050732

`A281326(A141214(n+1)+8)`
-/

namespace A281330.P17360896956624050732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A141214 (n + 1) + 8).toNat

end

end A281330.P17360896956624050732

/-! ## A281330.P16148169156353641379

`A281326(A052905(n+1)+10)`
-/

namespace A281330.P16148169156353641379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281326 (A052905 (n + 1) + 10).toNat

end

end A281330.P16148169156353641379

/-!
# A281331: Smallest prime factor of |A001067(n)|, or 1 if |A001067(n)| = 1.

The programs for A281331, there is no canonical definition to state claims against.
-/

/-! ## A281331.P6167263530526692379

`A249909(2*A077342(n+1))`
-/

namespace A281331.P6167263530526692379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249909 (2 * A077342 (n + 1)).toNat

end

end A281331.P6167263530526692379

/-! ## A281331.P11379041498526654736

`A249909(A077342(n+2)+n)`
-/

namespace A281331.P11379041498526654736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249909 (A077342 (n + 2) + (n : ℤ)).toNat

end

end A281331.P11379041498526654736

/-! ## A281331.P3492651785032104801

`A249909(A322131(n+1))`
-/

namespace A281331.P3492651785032104801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249909 (A322131 (n + 1)).toNat

end

end A281331.P3492651785032104801

/-!
# A281332: Greatest prime factor of |A001067(n)|, or 1 if |A001067(n)| = 1.

The programs for A281332, there is no canonical definition to state claims against.
-/

/-! ## A281332.P4799857628430507339

`A090947((n+1)%A090947(n+1))`
-/

namespace A281332.P4799857628430507339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090947 (Int.tmod (n + 1 : ℤ) (A090947 (n + 1))).toNat

end

end A281332.P4799857628430507339

/-! ## A281332.P18023702222521852687

`gcd(A001067(n+1), A090947(n+1))`
-/

namespace A281332.P18023702222521852687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001067 (n + 1)) (A090947 (n + 1))

end

end A281332.P18023702222521852687

/-! ## A281332.P10088358714038981741

`gcd(n*A090947(n+1), A060054(2*(n+1)))`
-/

namespace A281332.P10088358714038981741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A090947 (n + 1)) (A060054 (2 * (n + 1)))

end

end A281332.P10088358714038981741

/-! ## A281332.P10345834491805205171

`gcd(A090947(n+1)², A141590(n+1))`
-/

namespace A281332.P10345834491805205171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090947 (n + 1) ^ 2) (A141590 (n + 1))

end

end A281332.P10345834491805205171

/-! ## A281332.P1112584611044601068

`gcd(A090947(A087156(n+1)), A276594(n+1))`
-/

namespace A281332.P1112584611044601068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090947 (A087156 (n + 1)).toNat) (A276594 (n + 1))

end

end A281332.P1112584611044601068

/-!
# A281333: a(n) = 1 + floor(n/2) + floor(n^2/3).

The programs for A281333, the canonical program `A281333.P4526724236612010417` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281333 has offset 0).

The definition of A281333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+floor(n/2)+floor(n²/3)` (program `A281333.P4526724236612010417`, by `A281333.P4526724236612010417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281333.P8683831761686870592

`1+floor(n/2+n²/3)`
-/

namespace A281333.P8683831761686870592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℚ) / 2 + (n ^ 2 : ℚ) / 3⌋

end

end A281333.P8683831761686870592

namespace A281333

/-- `1+floor(n/2+n²/3)` -/
def P8683831761686870592.Spec : Prop :=
  ∀ n, P8683831761686870592.a n = A281333 n

end A281333

/-! ## A281333.P4526724236612010417

`1+floor(n/2)+floor(n²/3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281333

/-- `1+floor(n/2)+floor(n²/3)` -/
def P4526724236612010417.Spec : Prop :=
  ∀ n, P4526724236612010417.a n = A281333 n

theorem P4526724236612010417.correct : P4526724236612010417.Spec := by
  intro n
  simp only [A281333]

end A281333

/-! ## A281333.P5050444794897491236

`ceil(acot(n)/acot(∑[n²]))`
-/

namespace A281333.P5050444794897491236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A281333.P5050444794897491236

namespace A281333

/-- `ceil(acot(n)/acot(∑[n²]))` -/
def P5050444794897491236.Spec : Prop :=
  ∀ n, P5050444794897491236.a n = A281333 n

end A281333

/-! ## A281333.P6944390496427156812

`floor(∑[a(n-1)+4]/6)` with `a(0)=6, a(1)=5`
-/

namespace A281333.P6944390496427156812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌋

end

end A281333.P6944390496427156812

namespace A281333

/-- `floor(∑[a(n-1)+4]/6)` -/
def P6944390496427156812.Spec : Prop :=
  ∀ n, P6944390496427156812.a n = A281333 n

end A281333

/-! ## A281333.P11115555257015011405

`floor(a(n-2)+4*n/3)` with `a(0)=1, a(1)=1`
-/

namespace A281333.P11115555257015011405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + 4 * ((n : ℚ) / 3)⌋

end

end A281333.P11115555257015011405

namespace A281333

/-- `floor(a(n-2)+4*n/3)` -/
def P11115555257015011405.Spec : Prop :=
  ∀ n, P11115555257015011405.a n = A281333 n

end A281333

/-! ## A281333.P18271807170325683525

`∑[floor(4*n/3-a(n-1))]` with `a(0)=1`
-/

namespace A281333.P18271807170325683525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊4 * ((n : ℚ) / 3) - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281333.P18271807170325683525

namespace A281333

/-- `∑[floor(4*n/3-a(n-1))]` -/
def P18271807170325683525.Spec : Prop :=
  ∀ n, P18271807170325683525.a n = A281333 n

end A281333

/-! ## A281333.P13984367183566819456

`∑[floor(n/3-(a(n-1)-n))]` with `a(0)=1`
-/

namespace A281333.P13984367183566819456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) / 3 - (f1 (n - 1) - (n : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281333.P13984367183566819456

namespace A281333

/-- `∑[floor(n/3-(a(n-1)-n))]` -/
def P13984367183566819456.Spec : Prop :=
  ∀ n, P13984367183566819456.a n = A281333 n

end A281333

/-! ## A281333.P9991612785175384942

`floor(A007980(n)-n/2)`
-/

namespace A281333.P9991612785175384942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007980 n : ℚ) - (n : ℚ) / 2⌋

end

end A281333.P9991612785175384942

namespace A281333

/-- `floor(A007980(n)-n/2)` -/
def P9991612785175384942.Spec : Prop :=
  ∀ n, P9991612785175384942.a n = A281333 n

end A281333

/-! ## A281333.P10254796030384143220

`∑[A042965(n)+1-a(n-1)]` with `a(0)=1`
-/

namespace A281333.P10254796030384143220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A042965 n + 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281333.P10254796030384143220

namespace A281333

/-- `∑[A042965(n)+1-a(n-1)]` -/
def P10254796030384143220.Spec : Prop :=
  ∀ n, P10254796030384143220.a n = A281333 n

end A281333

/-! ## A281333.P17918113454971346132

`∑[n+1-A051275(n+1)]`
-/

namespace A281333.P17918113454971346132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281333.P17918113454971346132

namespace A281333

/-- `∑[n+1-A051275(n+1)]` -/
def P17918113454971346132.Spec : Prop :=
  ∀ n, P17918113454971346132.a n = A281333 n

end A281333

/-! ## A281333.P15892915176287334629

`A253012(2*n)`
-/

namespace A281333.P15892915176287334629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253012 (2 * n)

end

end A281333.P15892915176287334629

namespace A281333

/-- `A253012(2*n)` -/
def P15892915176287334629.Spec : Prop :=
  ∀ n, P15892915176287334629.a n = A281333 n

end A281333

/-! ## A281333.P290548887793127099

`A000933(2*n+5)`
-/

namespace A281333.P290548887793127099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000933 (2 * n + 5)

end

end A281333.P290548887793127099

namespace A281333

/-- `A000933(2*n+5)` -/
def P290548887793127099.Spec : Prop :=
  ∀ n, P290548887793127099.a n = A281333 n

end A281333

/-! ## A281333.P17033957695295885783

`A331306(A084263(n))`
-/

namespace A281333.P17033957695295885783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331306 (A084263 n).toNat

end

end A281333.P17033957695295885783

namespace A281333

/-- `A331306(A084263(n))` -/
def P17033957695295885783.Spec : Prop :=
  ∀ n, P17033957695295885783.a n = A281333 n

end A281333

/-! ## A281333.P10611413505614419064

`A065033(A008822(n))`
-/

namespace A281333.P10611413505614419064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008822 n).toNat

end

end A281333.P10611413505614419064

namespace A281333

/-- `A065033(A008822(n))` -/
def P10611413505614419064.Spec : Prop :=
  ∀ n, P10611413505614419064.a n = A281333 n

end A281333

/-! ## A281333.P11448401462545149670

`A110654(A008742(4*n))`
-/

namespace A281333.P11448401462545149670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008742 (4 * n)).toNat

end

end A281333.P11448401462545149670

namespace A281333

/-- `A110654(A008742(4*n))` -/
def P11448401462545149670.Spec : Prop :=
  ∀ n, P11448401462545149670.a n = A281333 n

end A281333

/-! ## A281333.P9008962786999919442

`A008619(A056827(2*n)+n)`
-/

namespace A281333.P9008962786999919442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A056827 (2 * n) + (n : ℤ)).toNat

end

end A281333.P9008962786999919442

namespace A281333

/-- `A008619(A056827(2*n)+n)` -/
def P9008962786999919442.Spec : Prop :=
  ∀ n, P9008962786999919442.a n = A281333 n

end A281333

/-! ## A281333.P5805648367324646561

`A004526(A056827(2*n)+n+2)`
-/

namespace A281333.P5805648367324646561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056827 (2 * n) + (n + 2 : ℤ)).toNat

end

end A281333.P5805648367324646561

namespace A281333

/-- `A004526(A056827(2*n)+n+2)` -/
def P5805648367324646561.Spec : Prop :=
  ∀ n, P5805648367324646561.a n = A281333 n

end A281333

/-!
# A281334: Triangle read by rows: T(n, k) = (n - k)*(k + 1)^3 + k, 0 <= k <= n.

The programs for A281334, the canonical program `A281334.P4352892355978536141` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281334 has offset 1).

The definition of A281334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))*(col(n)+1)^3+col(n)` (program `A281334.P4352892355978536141`, by `A281334.P4352892355978536141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281334.P4352892355978536141

`(row(n)-col(n))*(col(n)+1)^3+col(n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281334

/-- `(row(n)-col(n))*(col(n)+1)^3+col(n)` -/
def P4352892355978536141.Spec : Prop :=
  ∀ n, P4352892355978536141.a n = A281334 (n + 1)

theorem P4352892355978536141.correct : P4352892355978536141.Spec := by
  intro n
  simp only [A281334, Nat.add_sub_cancel]

end A281334

/-! ## A281334.P7695240303745661857

`A002262(n)+A025581(n)*A133820(n+1)`
-/

namespace A281334.P7695240303745661857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A025581 n * A133820 (n + 1)

end

end A281334.P7695240303745661857

namespace A281334

/-- `A002262(n)+A025581(n)*A133820(n+1)` -/
def P7695240303745661857.Spec : Prop :=
  ∀ n, P7695240303745661857.a n = A281334 (n + 1)

theorem P7695240303745661857.correct : P7695240303745661857.Spec := by
  intro n
  simp only [A281334, Nat.add_sub_cancel, A281334.P7695240303745661857.a, A281334.P4352892355978536141.a, A002262, A002262.P17823619022233514403.a, A025581, A025581.P16112744757063613497.a, A133820, A133820.P16676047363186325377.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281334

/-! ## A281334.P417352785410922230

`A002262(n)+A094053(n+1)*A133819(n+1)`
-/

namespace A281334.P417352785410922230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A094053 (n + 1) * A133819 (n + 1)

end

end A281334.P417352785410922230

namespace A281334

/-- `A002262(n)+A094053(n+1)*A133819(n+1)` -/
def P417352785410922230.Spec : Prop :=
  ∀ n, P417352785410922230.a n = A281334 (n + 1)

theorem P417352785410922230.correct : P417352785410922230.Spec := by
  intro n
  simp only [A281334, Nat.add_sub_cancel, A281334.P417352785410922230.a, A281334.P4352892355978536141.a, A002262, A002262.P17823619022233514403.a, A094053, A094053.P7632435431613033853.a, A133819, A133819.P4652954550055324138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281334

/-!
# A281337: Number of n X n 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281337, there is no canonical definition to state claims against.
-/

/-! ## A281337.P2027439799145195079

`A281344(∑[4*n]+1)`
-/

namespace A281337.P2027439799145195079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281337.P2027439799145195079

/-! ## A281337.P5973178755818524729

`record[A281344(Δ[A235355(n)])]`
-/

namespace A281337.P5973178755818524729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281337.P5973178755818524729

/-! ## A281337.P6652106136964456408

`record[A281344(A330613(n+1))]`
-/

namespace A281337.P6652106136964456408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281337.P6652106136964456408

/-! ## A281337.P2247152181309810400

`A281344(A001844(n))+char[13]`
-/

namespace A281337.P2247152181309810400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281337.P2247152181309810400

/-! ## A281337.P6653993685361641939

`record[A003982(n)*A281344(n+1)]`
-/

namespace A281337.P6653993685361641939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A281344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281337.P6653993685361641939

/-!
# A281338: Number of n X 2 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281338, the canonical program `A281338.P8939039148800514800` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281338 has offset 1).

The definition of A281338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281338.P8939039148800514800

`3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` with `a(0)=2, a(1)=8, a(2)=25, a(3)=85, a(4)=286`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281338

/-- `3*a(n-1)+a(n-2)+2*a(n-3)-2*a(n-4)-4*a(n-5)` -/
def P8939039148800514800.Spec : Prop :=
  ∀ n, P8939039148800514800.a n = A281338 (n + 1)

theorem P8939039148800514800.correct : P8939039148800514800.Spec := by
  intro n
  simp only [A281338, Nat.add_sub_cancel]

end A281338

/-! ## A281338.P2549592084540864783

`A298287(∑[n+1]+2)`
-/

namespace A281338.P2549592084540864783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281338.P2549592084540864783

namespace A281338

/-- `A298287(∑[n+1]+2)` -/
def P2549592084540864783.Spec : Prop :=
  ∀ n, P2549592084540864783.a n = A281338 (n + 1)

end A281338

/-! ## A281338.P2531458910104847276

`A299359(∑[n+1]+2)`
-/

namespace A281338.P2531458910104847276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281338.P2531458910104847276

namespace A281338

/-- `A299359(∑[n+1]+2)` -/
def P2531458910104847276.Spec : Prop :=
  ∀ n, P2531458910104847276.a n = A281338 (n + 1)

end A281338

/-! ## A281338.P14199437996011618019

`A281344(∑[n+1]+2)`
-/

namespace A281338.P14199437996011618019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A281338.P14199437996011618019

namespace A281338

/-- `A281344(∑[n+1]+2)` -/
def P14199437996011618019.Spec : Prop :=
  ∀ n, P14199437996011618019.a n = A281338 (n + 1)

end A281338

/-! ## A281338.P12635732300833243611

`record[A281344(A000037(n+1))]`
-/

namespace A281338.P12635732300833243611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A000037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281338.P12635732300833243611

namespace A281338

/-- `record[A281344(A000037(n+1))]` -/
def P12635732300833243611.Spec : Prop :=
  ∀ n, P12635732300833243611.a n = A281338 (n + 1)

end A281338

/-!
# A281339: Number of n X 3 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281339, there is no canonical definition to state claims against.
-/

/-! ## A281339.P4659245332262050439

`A281344(∑[n+2]+4)`
-/

namespace A281339.P4659245332262050439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A281339.P4659245332262050439

/-! ## A281339.P12921920463006554573

`or(char[1], A281344(A167614(n+1)))`
-/

namespace A281339.P12921920463006554573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281344 (A167614 (n + 1)).toNat)

end

end A281339.P12921920463006554573

/-! ## A281339.P888464266714318856

`or(char[1], A281344(A046691(n)+7))`
-/

namespace A281339.P888464266714318856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A281344 (A046691 n + 7).toNat)

end

end A281339.P888464266714318856

/-! ## A281339.P13977904436963739508

`A281344(A167614(n+1))+A011744(n)`
-/

namespace A281339.P13977904436963739508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167614 (n + 1)).toNat + A011744 n

end

end A281339.P13977904436963739508

/-! ## A281339.P8520687277514705081

`A281344(A167614(n+1))+A011745(n)`
-/

namespace A281339.P8520687277514705081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167614 (n + 1)).toNat + A011745 n

end

end A281339.P8520687277514705081

/-!
# A281340: Number of nX4 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281340, there is no canonical definition to state claims against.
-/

/-! ## A281340.P18088836352665497688

`A281344(∑[n+2]+n+8)`
-/

namespace A281340.P18088836352665497688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A281340.P18088836352665497688

/-! ## A281340.P5216137564231176421

`A281344(A167614(n+2)+1)+char[42]`
-/

namespace A281340.P5216137564231176421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281340.P5216137564231176421

/-! ## A281340.P5517227829923364329

`A007318(C(2, n))*A281344(A167614(n+2)+1)`
-/

namespace A281340.P5517227829923364329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A281344 (A167614 (n + 2) + 1).toNat

end

end A281340.P5517227829923364329

/-! ## A281340.P14793983342690304105

`A007318(and(2, -n))*A281344(A167614(n+2)+1)`
-/

namespace A281340.P14793983342690304105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A281344 (A167614 (n + 2) + 1).toNat

end

end A281340.P14793983342690304105

/-! ## A281340.P13965928225643525547

`A281344(A167614(n+2)+1)/A000041(C(2, n+2))`
-/

namespace A281340.P13965928225643525547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281344 (A167614 (n + 2) + 1).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A281340.P13965928225643525547

/-!
# A281341: Number of nX5 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281341, there is no canonical definition to state claims against.
-/

/-! ## A281341.P15414976709054129204

`A281344(A374005(n+1))`
-/

namespace A281341.P15414976709054129204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A374005 (n + 1)).toNat

end

end A281341.P15414976709054129204

/-! ## A281341.P10736403099778486509

`A281344(A167499(n+3))`
-/

namespace A281341.P10736403099778486509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167499 (n + 3)).toNat

end

end A281341.P10736403099778486509

/-! ## A281341.P14613949202627341034

`A281344(A155212(n)+13)`
-/

namespace A281341.P14613949202627341034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A155212 n + 13).toNat

end

end A281341.P14613949202627341034

/-! ## A281341.P17258876427113537161

`A281344(A056000(n)+15)`
-/

namespace A281341.P17258876427113537161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A056000 n + 15).toNat

end

end A281341.P17258876427113537161

/-! ## A281341.P5871656614716379162

`A281344(eq[7, A066657(n)])`
-/

namespace A281341.P5871656614716379162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281341.P5871656614716379162

/-!
# A281342: Number of nX6 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281342, there is no canonical definition to state claims against.
-/

/-! ## A281342.P6260312502162914292

`A281344(A374007(n+1))`
-/

namespace A281342.P6260312502162914292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A374007 (n + 1)).toNat

end

end A281342.P6260312502162914292

/-! ## A281342.P10885110288068610846

`A281344(A056115(n)+21)`
-/

namespace A281342.P10885110288068610846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A056115 n + 21).toNat

end

end A281342.P10885110288068610846

/-! ## A281342.P4394042656161817281

`A281344(∑[A020710(n)]+16)`
-/

namespace A281342.P4394042656161817281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A281342.P4394042656161817281

/-! ## A281342.P8734857032558230542

`A281344(A167499(n+4)+1)`
-/

namespace A281342.P8734857032558230542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167499 (n + 4) + 1).toNat

end

end A281342.P8734857032558230542

/-! ## A281342.P14778403301368466079

`A281344(A167614(n+4)+3)`
-/

namespace A281342.P14778403301368466079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167614 (n + 4) + 3).toNat

end

end A281342.P14778403301368466079

/-!
# A281343: Number of nX7 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281343, there is no canonical definition to state claims against.
-/

/-! ## A281343.P12764515720320995218

`A281344(A374008(n+1))`
-/

namespace A281343.P12764515720320995218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A374008 (n + 1)).toNat

end

end A281343.P12764515720320995218

/-! ## A281343.P17809460351286131141

`A281344(A167487(n+5))`
-/

namespace A281343.P17809460351286131141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167487 (n + 5)).toNat

end

end A281343.P17809460351286131141

/-! ## A281343.P1233908239506099278

`A281344(eq[11, A066657(n)])`
-/

namespace A281343.P1233908239506099278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281343.P1233908239506099278

/-! ## A281343.P17499470984290268302

`A281344(A166136(n+5)+1)`
-/

namespace A281343.P17499470984290268302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A166136 (n + 5) + 1).toNat

end

end A281343.P17499470984290268302

/-! ## A281343.P9846759547071325172

`A281344(A167614(n+5)+4)`
-/

namespace A281343.P9846759547071325172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281344 (A167614 (n + 5) + 4).toNat

end

end A281343.P9846759547071325172

/-!
# A281344: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than three of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A281344, there is no canonical definition to state claims against.
-/

/-! ## A281344.P17011752497222432144

`A298287(n+1)-A007966(A299905(n)²)`
-/

namespace A281344.P17011752497222432144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (n + 1) - A007966 (A299905 n ^ 2).toNat

end

end A281344.P17011752497222432144

/-! ## A281344.P17746902989303844319

`A299359(n+1)-A007966(A299905(n)²)`
-/

namespace A281344.P17746902989303844319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (n + 1) - A007966 (A299905 n ^ 2).toNat

end

end A281344.P17746902989303844319

/-! ## A281344.P12376495055048893552

`A299942(n+1)-A007966(A299905(n)²)`
-/

namespace A281344.P12376495055048893552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299942 (n + 1) - A007966 (A299905 n ^ 2).toNat

end

end A281344.P12376495055048893552

/-! ## A281344.P430733173306579544

`and(A060747(A299661(n+1)), A298287(n+1))`
-/

namespace A281344.P430733173306579544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060747 (A299661 (n + 1)).toNat) (A298287 (n + 1))

end

end A281344.P430733173306579544

/-! ## A281344.P13736629619526695817

`and(A060747(A299661(n+1)), A299180(n+1))`
-/

namespace A281344.P13736629619526695817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060747 (A299661 (n + 1)).toNat) (A299180 (n + 1))

end

end A281344.P13736629619526695817

/-!
# A281345: Related to enumeration of sets of non-intersecting circles in the plane.

The programs for A281345, there is no canonical definition to state claims against.
-/

/-! ## A281345.P6187944830829599514

`record[A281348(n+2)]-A281347(n+1)`
-/

namespace A281345.P6187944830829599514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281348 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A281347 (n + 1)

end

end A281345.P6187944830829599514

/-! ## A281345.P16670035289527766773

`A195184(A150396(n))`
-/

namespace A281345.P16670035289527766773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195184 (A150396 n).toNat

end

end A281345.P16670035289527766773

/-!
# A281346: Related to enumeration of sets of non-intersecting circles in the plane.

The programs for A281346, there is no canonical definition to state claims against.
-/

/-! ## A281346.P4807599692574213964

`A065382(3*A086901(n+1))`
-/

namespace A281346.P4807599692574213964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (3 * A086901 (n + 1)).toNat

end

end A281346.P4807599692574213964

/-! ## A281346.P15396866735920466752

`A065382(lcm(3, A086901(n+1)))`
-/

namespace A281346.P15396866735920466752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (Int.lcm 3 (A086901 (n + 1)))

end

end A281346.P15396866735920466752

/-!
# A281347: Row sums of A281348.

The programs for A281347, there is no canonical definition to state claims against.
-/

/-! ## A281347.P15719103079013809333

`record[A281348(n+2)]-A281345(n)`
-/

namespace A281347.P15719103079013809333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281348 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A281345 n

end

end A281347.P15719103079013809333

/-! ## A281347.P13559800935785613373

`A048686(A384712(n))`
-/

namespace A281347.P13559800935785613373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A384712 n).toNat

end

end A281347.P13559800935785613373

/-!
# A281349: Row sums of A281350.

The programs for A281349, there is no canonical definition to state claims against.
-/

/-! ## A281349.P7652125837601087495

`A368097(A115981(n))+A024037(n)`
-/

namespace A281349.P7652125837601087495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368097 (A115981 n).toNat + A024037 n

end

end A281349.P7652125837601087495

/-!
# A281355: a(n) = A092318(n) + 1: Number of terms of the odd harmonic series 1 + 1/3 + 1/5 + 1/7 + ... required to reach a sum >= n.

The programs for A281355, there is no canonical definition to state claims against.
-/

/-! ## A281355.P14630883123907899820

`A092318(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A281355.P14630883123907899820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092318 (n + 1) + 1

end

end A281355.P14630883123907899820

/-! ## A281355.P2340408906897481779

`A092315(n+1)-(ceil(acot(n))-2)`
-/

namespace A281355.P2340408906897481779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) - (⌈SequenceMachineLib.acot (n : ℝ)⌉ - 2)

end

end A281355.P2340408906897481779

/-! ## A281355.P14849987035139446204

`A092315(n+1)+A057427(n)`
-/

namespace A281355.P14849987035139446204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + A057427 n

end

end A281355.P14849987035139446204

/-! ## A281355.P15036567145267144490

`A092315(n+1)+1-A000007(n)`
-/

namespace A281355.P15036567145267144490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + (1 - A000007 n)

end

end A281355.P15036567145267144490

/-! ## A281355.P4261742429940155169

`A092315(n+1)+and(1, A000225(n))`
-/

namespace A281355.P4261742429940155169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + Int.land 1 (A000225 n)

end

end A281355.P4261742429940155169

/-! ## A281355.P4079266132032250368

`floor(A092315(n+1)+atan(A002387(n)))`
-/

namespace A281355.P4079266132032250368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092315 (n + 1) : ℝ) + Real.arctan (A002387 n : ℝ)⌋

end

end A281355.P4079266132032250368

/-! ## A281355.P12670816184610755138

`A092315(n+1)+and(1, A000040(n+1))`
-/

namespace A281355.P12670816184610755138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + Int.land 1 (A000040 (n + 1))

end

end A281355.P12670816184610755138

/-! ## A281355.P3387835192163288887

`floor(A092315(n+1)+atan(A006509(n+1)))`
-/

namespace A281355.P3387835192163288887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092315 (n + 1) : ℝ) + Real.arctan (A006509 (n + 1) : ℝ)⌋

end

end A281355.P3387835192163288887

/-! ## A281355.P9199055261564032666

`floor(A092315(n+1)+atan(A007340(n+1)))`
-/

namespace A281355.P9199055261564032666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092315 (n + 1) : ℝ) + Real.arctan (A007340 (n + 1) : ℝ)⌋

end

end A281355.P9199055261564032666

/-! ## A281355.P13453692688827549612

`floor(A092315(n+1)+atan(A025547(n+1)))`
-/

namespace A281355.P13453692688827549612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092315 (n + 1) : ℝ) + Real.arctan (A025547 (n + 1) : ℝ)⌋

end

end A281355.P13453692688827549612

/-! ## A281355.P18217617757847670910

`floor(A092315(n+1)+atan(A025550(n+1)))`
-/

namespace A281355.P18217617757847670910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092315 (n + 1) : ℝ) + Real.arctan (A025550 (n + 1) : ℝ)⌋

end

end A281355.P18217617757847670910

/-! ## A281355.P13567925548719903735

`A092315(n+1)+A048766(A048766(n))`
-/

namespace A281355.P13567925548719903735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + A048766 (A048766 n).toNat

end

end A281355.P13567925548719903735

/-! ## A281355.P1779584352082737110

`A092315(n+1)+A001221(A008578(n+1))`
-/

namespace A281355.P1779584352082737110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + A001221 (A008578 (n + 1)).toNat

end

end A281355.P1779584352082737110

/-! ## A281355.P5181069353185994736

`A092315(n+1)+A020639(A004277(n))-1`
-/

namespace A281355.P5181069353185994736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + (A020639 (A004277 n).toNat - 1)

end

end A281355.P5181069353185994736

/-! ## A281355.P5080385821116757757

`A092315(n+1)+char[A007318(n)]`
-/

namespace A281355.P5080385821116757757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A281355.P5080385821116757757

/-!
# A281356: G.f.: 1 + Sum_{n>=1} x^(3*n-2) / Product_{k=1..n} (1-x^k).

The programs for A281356, there is no canonical definition to state claims against.
-/

/-! ## A281356.P5479233969559196467

`A165652(n+2)+1`
-/

namespace A281356.P5479233969559196467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165652 (n + 2) + 1

end

end A281356.P5479233969559196467

/-! ## A281356.P13163671235109105383

`A199086(abs(2-∑[n]))`
-/

namespace A281356.P13163671235109105383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199086 |2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A281356.P13163671235109105383

/-! ## A281356.P7521803389197412305

`A008483(abs(1-n)+3)`
-/

namespace A281356.P7521803389197412305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (|1 - (n : ℤ)| + 3).toNat

end

end A281356.P7521803389197412305

/-! ## A281356.P6973777723940213746

`A026796(abs(1-n)+6)`
-/

namespace A281356.P6973777723940213746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (|1 - (n : ℤ)| + 6).toNat

end

end A281356.P6973777723940213746

/-! ## A281356.P7732884861843497107

`A008483(n+2)+floor(acot(n))`
-/

namespace A281356.P7732884861843497107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 2) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A281356.P7732884861843497107

/-!
# A281357: G.f.: (Product_{j>=1} 1/(1-q^j)^2 + Product_{j>=1} 1/(1-q^(2*j)))/2.

The programs for A281357, there is no canonical definition to state claims against.
-/

/-! ## A281357.P12373985664346483421

`(A000712(n)+A035363(n))/2`
-/

namespace A281357.P12373985664346483421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000712 n + A035363 n : ℚ) / 2

end

end A281357.P12373985664346483421

/-! ## A281357.P6092216066924956511

`A392002(n)+A035363(n)`
-/

namespace A281357.P6092216066924956511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392002 n + A035363 n

end

end A281357.P6092216066924956511

/-! ## A281357.P13972222636537107072

`A000712(n)-A392002(n)`
-/

namespace A281357.P13972222636537107072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A392002 n

end

end A281357.P13972222636537107072

/-! ## A281357.P7222494019004272112

`A390217(2*n)-A387957(2*n)`
-/

namespace A281357.P7222494019004272112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390217 (2 * n) - A387957 (2 * n)

end

end A281357.P7222494019004272112

/-! ## A281357.P14527985927758624369

`A240578(2*n+1)+A240575(2*n+1)`
-/

namespace A281357.P14527985927758624369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240578 (2 * n + 1) + A240575 (2 * n + 1)

end

end A281357.P14527985927758624369

/-!
# A281362: a(0) = 1, a(1) = 2; for n>1, a(n) = a(n-1) + a(n-2) + floor(n/2).

The programs for A281362, the canonical program `A281362.P11682647829250668160` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281362 has offset 0).

The definition of A281362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+floor(n/2)` (program `A281362.P11682647829250668160`, by `A281362.P11682647829250668160.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281362.P11682647829250668160

`a(n-1)+a(n-2)+floor(n/2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281362

/-- `a(n-1)+a(n-2)+floor(n/2)` -/
def P11682647829250668160.Spec : Prop :=
  ∀ n, P11682647829250668160.a n = A281362 n

theorem P11682647829250668160.correct : P11682647829250668160.Spec := by
  intro n
  simp only [A281362]

end A281362

/-! ## A281362.P16249212801100851610

`2*A000045(n+2)-1/4*(2*n+5-(-1)^n)`
-/

namespace A281362.P16249212801100851610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000045 (n + 2) : ℚ) - (1 : ℚ) / 4 * ((2 * n + 5 : ℤ) - (-1) ^ n : ℚ)

end

end A281362.P16249212801100851610

namespace A281362

/-- `2*A000045(n+2)-1/4*(2*n+5-(-1)^n)` -/
def P16249212801100851610.Spec : Prop :=
  ∀ n, P16249212801100851610.a n = (A281362 n : ℚ)

end A281362

/-! ## A281362.P3522442206123218082

`2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=13`
-/

namespace A281362.P3522442206123218082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 13] fun n a =>
  2 * a (n - 1) + a (n - 2) - 3 * a (n - 3) + a (n - 5)

end

end A281362.P3522442206123218082

namespace A281362

/-- `2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` -/
def P3522442206123218082.Spec : Prop :=
  ∀ n, P3522442206123218082.a n = A281362 n

end A281362

/-! ## A281362.P4123793631218164933

`∑[a(n-1)+or(1, a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A281362.P4123793631218164933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + Nat.lor 1 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281362.P4123793631218164933

namespace A281362

/-- `∑[a(n-1)+or(1, a(n-2))]` -/
def P4123793631218164933.Spec : Prop :=
  ∀ n, (P4123793631218164933.a n : ℤ) = A281362 n

end A281362

/-! ## A281362.P319826638866409781

`∑[ogf((x+x^2-x^3)/(1-x-2x^2+x^3+x^4))]+1`
-/

namespace A281362.P319826638866409781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, -1, -2, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A281362.P319826638866409781

namespace A281362

/-- `∑[ogf((x+x^2-x^3)/(1-x-2x^2+x^3+x^4))]+1` -/
def P319826638866409781.Spec : Prop :=
  ∀ n, P319826638866409781.a n = A281362 n

end A281362

/-! ## A281362.P16646417400352735901

`∑[a(n-2)+and(-2, a(n-1))]-n` with `a(0)=1, a(1)=2`
-/

namespace A281362.P16646417400352735901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + Int.land (-2) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A281362.P16646417400352735901

namespace A281362

/-- `∑[a(n-2)+and(-2, a(n-1))]-n` -/
def P16646417400352735901.Spec : Prop :=
  ∀ n, P16646417400352735901.a n = A281362 n

end A281362

/-! ## A281362.P12782638614935486609

`2*a(n-2)+a(n-3)+n-1` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A281362.P12782638614935486609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 2) + (a (n - 3) + (n : ℤ)) - 1

end

end A281362.P12782638614935486609

namespace A281362

/-- `2*a(n-2)+a(n-3)+n-1` -/
def P12782638614935486609.Spec : Prop :=
  ∀ n, P12782638614935486609.a n = A281362 n

end A281362

/-! ## A281362.P2988238116287798406

`A215005(n)+1`
-/

namespace A281362.P2988238116287798406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215005 n + 1

end

end A281362.P2988238116287798406

namespace A281362

/-- `A215005(n)+1` -/
def P2988238116287798406.Spec : Prop :=
  ∀ n, P2988238116287798406.a n = A281362 n

end A281362

/-! ## A281362.P2732683868184174009

`∑[A062114(n)]+1`
-/

namespace A281362.P2732683868184174009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A281362.P2732683868184174009

namespace A281362

/-- `∑[A062114(n)]+1` -/
def P2732683868184174009.Spec : Prop :=
  ∀ n, P2732683868184174009.a n = A281362 n

end A281362

/-! ## A281362.P17437645573771829035

`∑[A166012(n)]-n`
-/

namespace A281362.P17437645573771829035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A281362.P17437645573771829035

namespace A281362

/-- `∑[A166012(n)]-n` -/
def P17437645573771829035.Spec : Prop :=
  ∀ n, P17437645573771829035.a n = A281362 n

end A281362

/-! ## A281362.P9027523675203135602

`ceil(A066629(n)-n/2)`
-/

namespace A281362.P9027523675203135602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066629 n : ℚ) - (n : ℚ) / 2⌉

end

end A281362.P9027523675203135602

namespace A281362

/-- `ceil(A066629(n)-n/2)` -/
def P9027523675203135602.Spec : Prop :=
  ∀ n, P9027523675203135602.a n = A281362 n

end A281362

/-! ## A281362.P15585382520759443809

`∑[2*A000045(n)-n%2]+1`
-/

namespace A281362.P15585382520759443809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A281362.P15585382520759443809

namespace A281362

/-- `∑[2*A000045(n)-n%2]+1` -/
def P15585382520759443809.Spec : Prop :=
  ∀ n, P15585382520759443809.a n = A281362 n

end A281362

/-! ## A281362.P238617057837733749

`floor(2*A000045(n+2)-(n+2)/2)`
-/

namespace A281362.P238617057837733749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A000045 (n + 2) : ℚ) - (n + 2 : ℚ) / 2⌋

end

end A281362.P238617057837733749

namespace A281362

/-- `floor(2*A000045(n+2)-(n+2)/2)` -/
def P238617057837733749.Spec : Prop :=
  ∀ n, P238617057837733749.a n = A281362 n

end A281362

/-! ## A281362.P6449571293402730421

`A104161(n)+A008619(n)`
-/

namespace A281362.P6449571293402730421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 n + A008619 n

end

end A281362.P6449571293402730421

namespace A281362

/-- `A104161(n)+A008619(n)` -/
def P6449571293402730421.Spec : Prop :=
  ∀ n, P6449571293402730421.a n = A281362 n

end A281362

/-! ## A281362.P14727661607327819032

`A131269(n)+A004526(n)`
-/

namespace A281362.P14727661607327819032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 n + A004526 n

end

end A281362.P14727661607327819032

namespace A281362

/-- `A131269(n)+A004526(n)` -/
def P14727661607327819032.Spec : Prop :=
  ∀ n, P14727661607327819032.a n = A281362 n

end A281362

/-! ## A281362.P16867483543634804981

`A215004(n)+A000045(n)`
-/

namespace A281362.P16867483543634804981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 n + A000045 n

end

end A281362.P16867483543634804981

namespace A281362

/-- `A215004(n)+A000045(n)` -/
def P16867483543634804981.Spec : Prop :=
  ∀ n, P16867483543634804981.a n = A281362 n

end A281362

/-! ## A281362.P17854440467800581066

`A066629(n)-A004526(n)`
-/

namespace A281362.P17854440467800581066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 n - A004526 n

end

end A281362.P17854440467800581066

namespace A281362

/-- `A066629(n)-A004526(n)` -/
def P17854440467800581066.Spec : Prop :=
  ∀ n, P17854440467800581066.a n = A281362 n

end A281362

/-! ## A281362.P7678994191984349265

`A004526(n)+A104161(n)+1`
-/

namespace A281362.P7678994191984349265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A104161 n + 1)

end

end A281362.P7678994191984349265

namespace A281362

/-- `A004526(n)+A104161(n)+1` -/
def P7678994191984349265.Spec : Prop :=
  ∀ n, P7678994191984349265.a n = A281362 n

end A281362

/-! ## A281362.P14101599307265942426

`A066629(n)+1-A008619(n)`
-/

namespace A281362.P14101599307265942426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066629 n + (1 - A008619 n)

end

end A281362.P14101599307265942426

namespace A281362

/-- `A066629(n)+1-A008619(n)` -/
def P14101599307265942426.Spec : Prop :=
  ∀ n, P14101599307265942426.a n = A281362 n

end A281362

/-! ## A281362.P18120241495473687700

`A131780(n+1)-A030451(n)`
-/

namespace A281362.P18120241495473687700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131780 (n + 1) - A030451 n

end

end A281362.P18120241495473687700

namespace A281362

/-- `A131780(n+1)-A030451(n)` -/
def P18120241495473687700.Spec : Prop :=
  ∀ n, P18120241495473687700.a n = A281362 n

end A281362

/-!
# A281363: Smallest m>0 such that (2*n)^2 - 1 divides (2^m)^(2*n) - 1.

The programs for A281363, there is no canonical definition to state claims against.
-/

/-! ## A281363.P3230002180510508986

`C(A053447(n), A000688(A041133(n)))`
-/

namespace A281363.P3230002180510508986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053447 n).toNat (A000688 (A041133 n).toNat).toNat

end

end A281363.P3230002180510508986

/-! ## A281363.P15457538647852939521

`C(A053447(n), A300752(A000079(n+2)))`
-/

namespace A281363.P15457538647852939521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053447 n).toNat (A300752 (A000079 (n + 2)).toNat).toNat

end

end A281363.P15457538647852939521

/-!
# A281366: Lexicographically least strictly increasing sequence such that, for any n>0, Sum_{k=1..n} a(k) can be computed without carries in base 9 (the numbers are written in base 9).

The programs for A281366, the canonical program `A281366.P3598353948109780935` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281366 has offset 1).

The definition of A281366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A281366.P3598353948109780935

`10*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=10, a(4)=11, a(5)=20, a(6)=21`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281366

/-- `10*a(n-4)` -/
def P3598353948109780935.Spec : Prop :=
  ∀ n, (P3598353948109780935.a n : ℤ) = A281366 (n + 1)

theorem P3598353948109780935.correct : P3598353948109780935.Spec := by
  intro n
  simp only [A281366, Nat.add_sub_cancel]

end A281366

/-! ## A281366.P5804213931097820957

`A007095(A280731(n+1))`
-/

namespace A281366.P5804213931097820957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A280731 (n + 1)).toNat

end

end A281366.P5804213931097820957

namespace A281366

/-- `A007095(A280731(n+1))` -/
def P5804213931097820957.Spec : Prop :=
  ∀ n, P5804213931097820957.a n = A281366 (n + 1)

end A281366

/-! ## A281366.P13828137750100177465

`A052413(A280731(n+1)+1)`
-/

namespace A281366.P13828137750100177465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (A280731 (n + 1) + 1).toNat

end

end A281366.P13828137750100177465

namespace A281366

/-- `A052413(A280731(n+1)+1)` -/
def P13828137750100177465.Spec : Prop :=
  ∀ n, P13828137750100177465.a n = A281366 (n + 1)

end A281366

/-! ## A281366.P8999826774795570065

`A052421(A280731(n+1)+1)`
-/

namespace A281366.P8999826774795570065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A280731 (n + 1) + 1).toNat

end

end A281366.P8999826774795570065

namespace A281366

/-- `A052421(A280731(n+1)+1)` -/
def P8999826774795570065.Spec : Prop :=
  ∀ n, P8999826774795570065.a n = A281366 (n + 1)

end A281366

/-! ## A281366.P5688542913135991032

`lt[A054842(n), A007953(A037123(3*n+4))]`
-/

namespace A281366.P5688542913135991032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A037123 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A281366.P5688542913135991032

namespace A281366

/-- `lt[A054842(n), A007953(A037123(3*n+4))]` -/
def P5688542913135991032.Spec : Prop :=
  ∀ n, (P5688542913135991032.a n : ℤ) = A281366 (n + 1)

end A281366

/-!
# A281367: "Nachos" sequence based on triangular numbers.

The programs for A281367, there is no canonical definition to state claims against.
-/

/-! ## A281367.P12638842164634020273

`or(A011744(A264534(n+1)), A104246(n+1))`
-/

namespace A281367.P12638842164634020273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011744 (A264534 (n + 1)).toNat) (A104246 (n + 1))

end

end A281367.P12638842164634020273

/-!
# A281368: Index of first appearance of n in the triangular-based nachos numbers A281367.

The programs for A281368, there is no canonical definition to state claims against.
-/

/-! ## A281368.P10144376820456804827

`A332699(a(n-1))` with `a(0)=1`
-/

namespace A281368.P10144376820456804827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332699 (a (n - 1)).toNat

end

end A281368.P10144376820456804827

/-! ## A281368.P3617402161860381788

`∑[A112500(A128816(n))]`
-/

namespace A281368.P3617402161860381788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112500 (A128816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281368.P3617402161860381788

/-! ## A281368.P1127426375670464540

`A117174(∑[A192672(n)])`
-/

namespace A281368.P1127426375670464540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281368.P1127426375670464540

/-!
# A281369: Orbit of 25 under repeated applications of the map m -> A280864(m).

The programs for A281369, there is no canonical definition to state claims against.
-/

/-! ## A281369.P12591874141699508490

`A280864(a(n-1))` with `a(0)=25`
-/

namespace A281369.P12591874141699508490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  A280864 (a (n - 1)).toNat

end

end A281369.P12591874141699508490

/-!
# A281370: Orbit of 25 under repeated applications of the inverse of the map m -> A280864(m).

The programs for A281370, there is no canonical definition to state claims against.
-/

/-! ## A281370.P17715778733471766331

`A280741(a(n-1))` with `a(0)=25`
-/

namespace A281370.P17715778733471766331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  A280741 (a (n - 1)).toNat

end

end A281370.P17715778733471766331

/-!
# A281371: Coefficients in q-expansion of (E_2*E_4 - E_6)^2/518400, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A281371, there is no canonical definition to state claims against.
-/

/-! ## A281371.P12926482769048191838

`A114186(A212099(n))`
-/

namespace A281371.P12926482769048191838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114186 (A212099 n).toNat

end

end A281371.P12926482769048191838

/-!
# A281372: Coefficients in q-expansion of (E_2*E_4 - E_6)/720, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A281372, the canonical program `A281372.P10157463848326326059` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281372 has offset 0).

The definition of A281372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281372.P10157463848326326059

`∑{d}[n, n*#^3]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281372

/-- `∑{d}[n, n*#^3]` -/
def P10157463848326326059.Spec : Prop :=
  ∀ n, (P10157463848326326059.a n : ℤ) = A281372 n

theorem P10157463848326326059.correct : P10157463848326326059.Spec := by
  intro n
  simp only [A281372]

end A281372

/-! ## A281372.P5456699454350400817

`n*∑{d}[n, #*#²]`
-/

namespace A281372.P5456699454350400817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), d * d ^ 2)

end

end A281372.P5456699454350400817

namespace A281372

/-- `n*∑{d}[n, #*#²]` -/
def P5456699454350400817.Spec : Prop :=
  ∀ n, (P5456699454350400817.a n : ℤ) = A281372 n

end A281372

/-! ## A281372.P3744125119312394610

`n*A001158(A028310(n))`
-/

namespace A281372.P3744125119312394610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001158 (A028310 n).toNat

end

end A281372.P3744125119312394610

namespace A281372

/-- `n*A001158(A028310(n))` -/
def P3744125119312394610.Spec : Prop :=
  ∀ n, P3744125119312394610.a n = A281372 n

end A281372

/-! ## A281372.P17884825809051852473

`A282099(n)/A028310(n)`
-/

namespace A281372.P17884825809051852473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282099 n : ℚ) / (A028310 n : ℚ)

end

end A281372.P17884825809051852473

namespace A281372

/-- `A282099(n)/A028310(n)` -/
def P17884825809051852473.Spec : Prop :=
  ∀ n, P17884825809051852473.a n = (A281372 n : ℚ)

end A281372

/-! ## A281372.P10442315862922618608

`A282213(n)/A253909(n)`
-/

namespace A281372.P10442315862922618608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282213 n : ℚ) / (A253909 n : ℚ)

end

end A281372.P10442315862922618608

namespace A281372

/-- `A282213(n)/A253909(n)` -/
def P10442315862922618608.Spec : Prop :=
  ∀ n, P10442315862922618608.a n = (A281372 n : ℚ)

end A281372

/-! ## A281372.P4684308163789647877

`A282213(n)/A028310(n)²`
-/

namespace A281372.P4684308163789647877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282213 n : ℚ) / (A028310 n ^ 2 : ℚ)

end

end A281372.P4684308163789647877

namespace A281372

/-- `A282213(n)/A028310(n)²` -/
def P4684308163789647877.Spec : Prop :=
  ∀ n, P4684308163789647877.a n = (A281372 n : ℚ)

end A281372

/-! ## A281372.P14916291368199440285

`n*A001158(A000007(n)+n)`
-/

namespace A281372.P14916291368199440285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001158 (A000007 n + (n : ℤ)).toNat

end

end A281372.P14916291368199440285

namespace A281372

/-- `n*A001158(A000007(n)+n)` -/
def P14916291368199440285.Spec : Prop :=
  ∀ n, P14916291368199440285.a n = A281372 n

end A281372

/-! ## A281372.P16089858525843804892

`n*A001158(A000038(n)+n)`
-/

namespace A281372.P16089858525843804892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001158 (A000038 n + (n : ℤ)).toNat

end

end A281372.P16089858525843804892

namespace A281372

/-- `n*A001158(A000038(n)+n)` -/
def P16089858525843804892.Spec : Prop :=
  ∀ n, P16089858525843804892.a n = A281372 n

end A281372

/-! ## A281372.P16232987016023722534

`n*A001158(A004277(n)-n)`
-/

namespace A281372.P16232987016023722534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001158 (A004277 n - (n : ℤ)).toNat

end

end A281372.P16232987016023722534

namespace A281372

/-- `n*A001158(A004277(n)-n)` -/
def P16232987016023722534.Spec : Prop :=
  ∀ n, P16232987016023722534.a n = A281372 n

end A281372

/-! ## A281372.P2646569607423151608

`n/A253909(n)*A282099(n)`
-/

namespace A281372.P2646569607423151608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253909 n : ℚ) * (A282099 n : ℚ)

end

end A281372.P2646569607423151608

namespace A281372

/-- `n/A253909(n)*A282099(n)` -/
def P2646569607423151608.Spec : Prop :=
  ∀ n, P2646569607423151608.a n = (A281372 n : ℚ)

end A281372

/-! ## A281372.P7405257426973938676

`n*A001158(xor(n, A000038(n)))`
-/

namespace A281372.P7405257426973938676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001158 (Int.xor (n : ℤ) (A000038 n)).toNat

end

end A281372.P7405257426973938676

namespace A281372

/-- `n*A001158(xor(n, A000038(n)))` -/
def P7405257426973938676.Spec : Prop :=
  ∀ n, P7405257426973938676.a n = A281372 n

end A281372

/-! ## A281372.P7590289582265292418

`n/A253909(n)²*A280025(n)`
-/

namespace A281372.P7590289582265292418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253909 n ^ 2 : ℚ) * (A280025 n : ℚ)

end

end A281372.P7590289582265292418

namespace A281372

/-- `n/A253909(n)²*A280025(n)` -/
def P7590289582265292418.Spec : Prop :=
  ∀ n, P7590289582265292418.a n = (A281372 n : ℚ)

end A281372

/-! ## A281372.P1426988583936806116

`A280025(n)/(A028310(n)²*A028310(n))`
-/

namespace A281372.P1426988583936806116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 n : ℚ) / (A028310 n ^ 2 * A028310 n : ℚ)

end

end A281372.P1426988583936806116

namespace A281372

/-- `A280025(n)/(A028310(n)²*A028310(n))` -/
def P1426988583936806116.Spec : Prop :=
  ∀ n, P1426988583936806116.a n = (A281372 n : ℚ)

end A281372

/-! ## A281372.P8942170641799176326

`A282213(n)/A028310(n*A028310(n))`
-/

namespace A281372.P8942170641799176326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282213 n : ℚ) / (A028310 ((n : ℤ) * A028310 n).toNat : ℚ)

end

end A281372.P8942170641799176326

namespace A281372

/-- `A282213(n)/A028310(n*A028310(n))` -/
def P8942170641799176326.Spec : Prop :=
  ∀ n, P8942170641799176326.a n = (A281372 n : ℚ)

end A281372

/-!
# A281374: Coefficients in q-expansion of E_2^2, where E_2 is the Eisenstein series shown in A006352.

The programs for A281374, there is no canonical definition to state claims against.
-/

/-! ## A281374.P8956600057160469446

`A004009(n)+A006352(n)*A008594(n)`
-/

namespace A281374.P8956600057160469446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 n + A006352 n * A008594 n

end

end A281374.P8956600057160469446

/-! ## A281374.P11904066163438870678

`2*A282017(n)-A004009(n)`
-/

namespace A281374.P11904066163438870678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282017 n - A004009 n

end

end A281374.P11904066163438870678

/-! ## A281374.P12666992786534037805

`A282017(n)+A006352(n)*A008588(n)`
-/

namespace A281374.P12666992786534037805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282017 n + A006352 n * A008588 n

end

end A281374.P12666992786534037805

/-! ## A281374.P12516357456222460760

`A282017(n)+A282017(n)-A072839(18*n)`
-/

namespace A281374.P12516357456222460760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282017 n + (A282017 n - A072839 (18 * n))

end

end A281374.P12516357456222460760

/-! ## A281374.P1532096954131449074

`A282017(n)+A282017(n)-A028579(16*n)`
-/

namespace A281374.P1532096954131449074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282017 n + (A282017 n - A028579 (16 * n))

end

end A281374.P1532096954131449074

/-!
# A281375: a(n) = floor(2^(n+1)/n).

The programs for A281375, the canonical program `A281375.P15750499836777763183` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281375 has offset 1).

The definition of A281375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+2)/(n+1))` (program `A281375.P15750499836777763183`, by `A281375.P15750499836777763183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281375.P15750499836777763183

`floor(2^(n+2)/(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281375

/-- `floor(2^(n+2)/(n+1))` -/
def P15750499836777763183.Spec : Prop :=
  ∀ n, P15750499836777763183.a n = A281375 (n + 1)

theorem P15750499836777763183.correct : P15750499836777763183.Spec := by
  intro n
  simp only [A281375, Nat.add_sub_cancel]

end A281375

/-! ## A281375.P11274390558577132222

`(2^(n+2)-A112983(n+1))/(n+1)`
-/

namespace A281375.P11274390558577132222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) - A112983 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A281375.P11274390558577132222

namespace A281375

/-- `(2^(n+2)-A112983(n+1))/(n+1)` -/
def P11274390558577132222.Spec : Prop :=
  ∀ n, P11274390558577132222.a n = (A281375 (n + 1) : ℚ)

end A281375

/-! ## A281375.P13759685335242621079

`A053639(n+1)-A043545(n)`
-/

namespace A281375.P13759685335242621079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (n + 1) - A043545 n

end

end A281375.P13759685335242621079

namespace A281375

/-- `A053639(n+1)-A043545(n)` -/
def P13759685335242621079.Spec : Prop :=
  ∀ n, P13759685335242621079.a n = A281375 (n + 1)

end A281375

/-! ## A281375.P10507560727803573516

`A065482(n+1)+A000799(n+1)`
-/

namespace A281375.P10507560727803573516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065482 (n + 1) + A000799 (n + 1)

end

end A281375.P10507560727803573516

namespace A281375

/-- `A065482(n+1)+A000799(n+1)` -/
def P10507560727803573516.Spec : Prop :=
  ∀ n, P10507560727803573516.a n = A281375 (n + 1)

end A281375

/-! ## A281375.P8889898014546060846

`A064355(n+1)+A114699(n)+A065482(n+1)`
-/

namespace A281375.P8889898014546060846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064355 (n + 1) + (A114699 n + A065482 (n + 1))

end

end A281375.P8889898014546060846

namespace A281375

/-- `A064355(n+1)+A114699(n)+A065482(n+1)` -/
def P8889898014546060846.Spec : Prop :=
  ∀ n, P8889898014546060846.a n = A281375 (n + 1)

end A281375

/-! ## A281375.P17233743607018442552

`A000799(n+1)+A053639(n+1)-A053638(n+1)`
-/

namespace A281375.P17233743607018442552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) + (A053639 (n + 1) - A053638 (n + 1))

end

end A281375.P17233743607018442552

namespace A281375

/-- `A000799(n+1)+A053639(n+1)-A053638(n+1)` -/
def P17233743607018442552.Spec : Prop :=
  ∀ n, P17233743607018442552.a n = A281375 (n + 1)

end A281375

/-! ## A281375.P3405422902850169244

`ceil(A132753(n+1)/(n+1))`
-/

namespace A281375.P3405422902850169244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132753 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A281375.P3405422902850169244

namespace A281375

/-- `ceil(A132753(n+1)/(n+1))` -/
def P3405422902850169244.Spec : Prop :=
  ∀ n, P3405422902850169244.a n = A281375 (n + 1)

end A281375

/-! ## A281375.P7652424274550273724

`ceil((A125128(n+1)+3)/(n+1))`
-/

namespace A281375.P7652424274550273724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A125128 (n + 1) + 3 : ℚ) / (n + 1 : ℚ)⌉

end

end A281375.P7652424274550273724

namespace A281375

/-- `ceil((A125128(n+1)+3)/(n+1))` -/
def P7652424274550273724.Spec : Prop :=
  ∀ n, P7652424274550273724.a n = A281375 (n + 1)

end A281375

/-!
# A281376: Total number of counts where floor(N/k) < floor((N+k)/n) for k = {1, 2, ..., n-1} and N >= n.

The programs for A281376, the canonical program `A281376.P8580911295092577376` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281376 has offset 1).

The definition of A281376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281376.P8580911295092577376

`∑[∑[A023645(abs(1-n)+1)]]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A281376

/-- `∑[∑[A023645(abs(1-n)+1)]]` -/
def P8580911295092577376.Spec : Prop :=
  ∀ n, P8580911295092577376.a n = A281376 (n + 1)

theorem P8580911295092577376.correct : P8580911295092577376.Spec := by
  intro n
  simp only [A281376, Nat.add_sub_cancel]

end A281376

/-! ## A281376.P15490832850074756209

`∑[A006218(n)-A032766(n)]`
-/

namespace A281376.P15490832850074756209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P15490832850074756209

namespace A281376

/-- `∑[A006218(n)-A032766(n)]` -/
def P15490832850074756209.Spec : Prop :=
  ∀ n, P15490832850074756209.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P5990300837232152761

`A078567(n+1)-A006578(n)`
-/

namespace A281376.P5990300837232152761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1) - A006578 n

end

end A281376.P5990300837232152761

namespace A281376

/-- `A078567(n+1)-A006578(n)` -/
def P5990300837232152761.Spec : Prop :=
  ∀ n, P5990300837232152761.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P15267104978759015870

`A330285(n+1)-A002620(n)`
-/

namespace A281376.P15267104978759015870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330285 (n + 1) - A002620 n

end

end A281376.P15267104978759015870

namespace A281376

/-- `A330285(n+1)-A002620(n)` -/
def P15267104978759015870.Spec : Prop :=
  ∀ n, P15267104978759015870.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P13927764779299761226

`∑[∑[A032741(n)]-A004526(n)]`
-/

namespace A281376.P13927764779299761226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P13927764779299761226

namespace A281376

/-- `∑[∑[A032741(n)]-A004526(n)]` -/
def P13927764779299761226.Spec : Prop :=
  ∀ n, P13927764779299761226.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P2182756112301968690

`∑[A065033(n)+A325459(n)-1]`
-/

namespace A281376.P2182756112301968690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + (A325459 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P2182756112301968690

namespace A281376

/-- `∑[A065033(n)+A325459(n)-1]` -/
def P2182756112301968690.Spec : Prop :=
  ∀ n, P2182756112301968690.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P15391615545565100106

`∑[A006218(n)-(A004526(n)+n)]`
-/

namespace A281376.P15391615545565100106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A004526 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P15391615545565100106

namespace A281376

/-- `∑[A006218(n)-(A004526(n)+n)]` -/
def P15391615545565100106.Spec : Prop :=
  ∀ n, P15391615545565100106.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P5290874757808169016

`∑[A325459(n)+A110654(n)]-n`
-/

namespace A281376.P5290874757808169016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A281376.P5290874757808169016

namespace A281376

/-- `∑[A325459(n)+A110654(n)]-n` -/
def P5290874757808169016.Spec : Prop :=
  ∀ n, P5290874757808169016.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P3065078361547086428

`∑[∑[A023645(n+1)]-A023645(n+1)]`
-/

namespace A281376.P3065078361547086428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P3065078361547086428

namespace A281376

/-- `∑[∑[A023645(n+1)]-A023645(n+1)]` -/
def P3065078361547086428.Spec : Prop :=
  ∀ n, P3065078361547086428.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P10038079134726579013

`A078567(n+1)-(A002620(n)+A000217(n))`
-/

namespace A281376.P10038079134726579013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1) - (A002620 n + A000217 n)

end

end A281376.P10038079134726579013

namespace A281376

/-- `A078567(n+1)-(A002620(n)+A000217(n))` -/
def P10038079134726579013.Spec : Prop :=
  ∀ n, P10038079134726579013.a n = A281376 (n + 1)

end A281376

/-! ## A281376.P11479666367243030765

`∑[A006218(n)-A004526(3*n)]`
-/

namespace A281376.P11479666367243030765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A004526 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P11479666367243030765

namespace A281376

/-- `∑[A006218(n)-A004526(3*n)]` -/
def P11479666367243030765.Spec : Prop :=
  ∀ n, P11479666367243030765.a n = A281376 (n + 1)

end A281376

/-!
# A281377: Write n in Elias's omega code, interchange the 1's and 0's and convert it back to decimal.

The programs for A281377, there is no canonical definition to state claims against.
-/

/-! ## A281377.P8667658796622782118

`A000225(A072464(n+1))-A281223(n+1)`
-/

namespace A281377.P8667658796622782118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A072464 (n + 1)).toNat - A281223 (n + 1)

end

end A281377.P8667658796622782118

/-! ## A281377.P2591415508719001420

`A000225(∑[A255308(n+1)])-A281223(n+1)`
-/

namespace A281377.P2591415508719001420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A281223 (n + 1)

end

end A281377.P2591415508719001420

/-! ## A281377.P7530857945634425401

`A000225(∑[A293668(n+1)-1])-A281223(n+1)`
-/

namespace A281377.P7530857945634425401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A281223 (n + 1)

end

end A281377.P7530857945634425401

/-! ## A281377.P9214112655538347481

`A000225(A292046(n+2)-(n+2))-A281223(n+1)`
-/

namespace A281377.P9214112655538347481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A292046 (n + 2) - (n + 2 : ℤ)).toNat - A281223 (n + 1)

end

end A281377.P9214112655538347481

/-! ## A281377.P8813638479314024498

`A000225(A072464(n+1))-(A006257(A028423(n+1))-1)`
-/

namespace A281377.P8813638479314024498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A072464 (n + 1)).toNat - (A006257 (A028423 (n + 1)).toNat - 1)

end

end A281377.P8813638479314024498

/-! ## A281377.P15327385866198526000

`A000225(A292046(n+2)-(n+2))-(A006257(A028423(n+1))-1)`
-/

namespace A281377.P15327385866198526000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A292046 (n + 2) - (n + 2 : ℤ)).toNat - (A006257 (A028423 (n + 1)).toNat - 1)

end

end A281377.P15327385866198526000

/-! ## A281377.P12277094484598070776

`A261693(A028423(n+1))`
-/

namespace A281377.P12277094484598070776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261693 (A028423 (n + 1)).toNat

end

end A281377.P12277094484598070776

/-! ## A281377.P8735431292770961243

`A035327(A281223(n+1))`
-/

namespace A281377.P8735431292770961243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A281223 (n + 1)).toNat

end

end A281377.P8735431292770961243

/-! ## A281377.P3837788434021855452

`A080079(A281223(n+1)+1)`
-/

namespace A281377.P3837788434021855452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A281223 (n + 1) + 1).toNat

end

end A281377.P3837788434021855452

/-! ## A281377.P16022087331461868807

`A003817(A028423(n+1))-A281223(n+1)`
-/

namespace A281377.P16022087331461868807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A028423 (n + 1)).toNat - A281223 (n + 1)

end

end A281377.P16022087331461868807

/-! ## A281377.P16299249984459720375

`A003817(A281223(n+1)+1)-A281223(n+1)`
-/

namespace A281377.P16299249984459720375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A281223 (n + 1) + 1).toNat - A281223 (n + 1)

end

end A281377.P16299249984459720375

/-!
# A281378: Palindromic numbers which are also palindromic in their binary reflected Gray code representation.

The programs for A281378, there is no canonical definition to state claims against.
-/

/-! ## A281378.P2793977957755828399

`∩[A002113(n+1), A281379(n+1)]`
-/

namespace A281378.P2793977957755828399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281378.P2793977957755828399

/-! ## A281378.P11557468967687506067

`∩[A281379(n+1), A306273(n+1)]`
-/

namespace A281378.P11557468967687506067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A281378.P11557468967687506067

/-!
# A281379: Numbers which are palindromic in their binary reflected Gray code representation.

The programs for A281379, the canonical program `A281379.P7269018797134553829` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281379 has offset 1).

The definition of A281379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281379.P7269018797134553829

`lt[A178226(A003188(n)), 1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A281379

/-- `lt[A178226(A003188(n)), 1]` -/
def P7269018797134553829.Spec : Prop :=
  ∀ n, (P7269018797134553829.a n : ℤ) = A281379 (n + 1)

theorem P7269018797134553829.correct : P7269018797134553829.Spec := by
  intro n
  simp only [A281379, Nat.add_sub_cancel]

end A281379

/-! ## A281379.P15986840107660283070

`eq[A003188(n), A280995(n)]`
-/

namespace A281379.P15986840107660283070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281379.P15986840107660283070

namespace A281379

/-- `eq[A003188(n), A280995(n)]` -/
def P15986840107660283070.Spec : Prop :=
  ∀ n, (P15986840107660283070.a n : ℤ) = A281379 (n + 1)

end A281379

/-! ## A281379.P10541362121982000641

`eq[0, A055945(xor(n, floor(n/2)))]`
-/

namespace A281379.P10541362121982000641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281379.P10541362121982000641

namespace A281379

/-- `eq[0, A055945(xor(n, floor(n/2)))]` -/
def P10541362121982000641.Spec : Prop :=
  ∀ n, (P10541362121982000641.a n : ℤ) = A281379 (n + 1)

end A281379

/-! ## A281379.P4979208272787413881

`eq[A281553(n), A341915(n)]`
-/

namespace A281379.P4979208272787413881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281553 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281379.P4979208272787413881

namespace A281379

/-- `eq[A281553(n), A341915(n)]` -/
def P4979208272787413881.Spec : Prop :=
  ∀ n, (P4979208272787413881.a n : ℤ) = A281379 (n + 1)

end A281379

/-! ## A281379.P1493226454128327438

`eq[A110654(n), A119608(n+1)]`
-/

namespace A281379.P1493226454128327438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281379.P1493226454128327438

namespace A281379

/-- `eq[A110654(n), A119608(n+1)]` -/
def P1493226454128327438.Spec : Prop :=
  ∀ n, (P1493226454128327438.a n : ℤ) = A281379 (n + 1)

end A281379

/-! ## A281379.P18389024448688654249

`lt[A178226(floor(A048724(n)/2)), 1]`
-/

namespace A281379.P18389024448688654249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 ⌊(A048724 n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A281379.P18389024448688654249

namespace A281379

/-- `lt[A178226(floor(A048724(n)/2)), 1]` -/
def P18389024448688654249.Spec : Prop :=
  ∀ n, (P18389024448688654249.a n : ℤ) = A281379 (n + 1)

end A281379

/-! ## A281379.P7980925415924527750

`eq[A049206(n+1), A119608(n+1)]`
-/

namespace A281379.P7980925415924527750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281379.P7980925415924527750

namespace A281379

/-- `eq[A049206(n+1), A119608(n+1)]` -/
def P7980925415924527750.Spec : Prop :=
  ∀ n, (P7980925415924527750.a n : ℤ) = A281379 (n + 1)

end A281379

/-!
# A281381: a(n) = n*(n + 1)*(4*n + 5)/2.

The programs for A281381, the canonical program `A281381.P13937558622889718202` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281381 has offset 0).

The definition of A281381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(4*n+5)/2` (program `A281381.P6878414381695143248`, by `A281381.P6878414381695143248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281381.P6878414381695143248

`n*(n+1)*(4*n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A281381.P6878414381695143248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (4 * n + 5) : ℚ) / 2

end

end A281381.P6878414381695143248

namespace A281381

/-- `n*(n+1)*(4*n+5)/2` -/
def P6878414381695143248.Spec : Prop :=
  ∀ n, P6878414381695143248.a n = (A281381 n : ℚ)

theorem P6878414381695143248.correct : P6878414381695143248.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A281381, Nat.add_sub_cancel, A281381.P6878414381695143248.a, A281381.P13937558622889718202.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A281381, Nat.add_sub_cancel, A281381.P6878414381695143248.a, A281381.P13937558622889718202.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A281381

/-! ## A281381.P13937558622889718202

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=9, a(2)=39, a(3)=102`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281381

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13937558622889718202.Spec : Prop :=
  ∀ n, P13937558622889718202.a n = A281381 n

theorem P13937558622889718202.correct : P13937558622889718202.Spec := by
  intro n
  simp only [A281381]

end A281381

/-! ## A281381.P1692819339903906112

`3*A016061(n)`
-/

namespace A281381.P1692819339903906112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A016061 n

end

end A281381.P1692819339903906112

namespace A281381

/-- `3*A016061(n)` -/
def P1692819339903906112.Spec : Prop :=
  ∀ n, P1692819339903906112.a n = A281381 n

end A281381

/-! ## A281381.P12298316508844259744

`A006002(n+1)*n-A006002(n)*(n-1)`
-/

namespace A281381.P12298316508844259744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1) * (n : ℤ) - A006002 n * ((n : ℤ) - 1)

end

end A281381.P12298316508844259744

namespace A281381

/-- `A006002(n+1)*n-A006002(n)*(n-1)` -/
def P12298316508844259744.Spec : Prop :=
  ∀ n, P12298316508844259744.a n = A281381 n

end A281381

/-! ## A281381.P4842060761922147727

`∑[3*C(Δ[n²], 2)]`
-/

namespace A281381.P4842060761922147727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281381.P4842060761922147727

namespace A281381

/-- `∑[3*C(Δ[n²], 2)]` -/
def P4842060761922147727.Spec : Prop :=
  ∀ n, (P4842060761922147727.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P320496148553950746

`Δ[(n+1)²*C(n, 2)]`
-/

namespace A281381.P320496148553950746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A281381.P320496148553950746

namespace A281381

/-- `Δ[(n+1)²*C(n, 2)]` -/
def P320496148553950746.Spec : Prop :=
  ∀ n, P320496148553950746.a n = A281381 n

end A281381

/-! ## A281381.P14454876894094948554

`3*∑[C(2*n+1, 2)]`
-/

namespace A281381.P14454876894094948554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281381.P14454876894094948554

namespace A281381

/-- `3*∑[C(2*n+1, 2)]` -/
def P14454876894094948554.Spec : Prop :=
  ∀ n, (P14454876894094948554.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P18188483789376960146

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=9`
-/

namespace A281381.P18188483789376960146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281381.P18188483789376960146

namespace A281381

/-- `∑[∑[a(n-1)+12]]` -/
def P18188483789376960146.Spec : Prop :=
  ∀ n, (P18188483789376960146.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P13118731482863632817

`3*∑[lcm(n, 2*n+1)]`
-/

namespace A281381.P13118731482863632817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281381.P13118731482863632817

namespace A281381

/-- `3*∑[lcm(n, 2*n+1)]` -/
def P13118731482863632817.Spec : Prop :=
  ∀ n, (P13118731482863632817.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P5287498258825797332

`∑[3*n*or(1, 2*n)]`
-/

namespace A281381.P5287498258825797332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * Nat.lor 1 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281381.P5287498258825797332

namespace A281381

/-- `∑[3*n*or(1, 2*n)]` -/
def P5287498258825797332.Spec : Prop :=
  ∀ n, (P5287498258825797332.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P1320107330221746842

`∑[3*n*xor(1, 2*n)]`
-/

namespace A281381.P1320107330221746842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * Nat.xor 1 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281381.P1320107330221746842

namespace A281381

/-- `∑[3*n*xor(1, 2*n)]` -/
def P1320107330221746842.Spec : Prop :=
  ∀ n, (P1320107330221746842.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P13291507402665137864

`∑[∑[ogf((9x+3x^2)/(1-2x+x^2))]]`
-/

namespace A281381.P13291507402665137864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281381.P13291507402665137864

namespace A281381

/-- `∑[∑[ogf((9x+3x^2)/(1-2x+x^2))]]` -/
def P13291507402665137864.Spec : Prop :=
  ∀ n, P13291507402665137864.a n = A281381 n

end A281381

/-! ## A281381.P13237810136401358733

`Δ[C(n, 2)/(1/(n+1))²]`
-/

namespace A281381.P13237810136401358733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A281381.P13237810136401358733

namespace A281381

/-- `Δ[C(n, 2)/(1/(n+1))²]` -/
def P13237810136401358733.Spec : Prop :=
  ∀ n, P13237810136401358733.a n = (A281381 n : ℚ)

end A281381

/-! ## A281381.P4811949903683280634

`Δ[3*(n+1)*C(n+1, 3)]`
-/

namespace A281381.P4811949903683280634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * Nat.choose (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A281381.P4811949903683280634

namespace A281381

/-- `Δ[3*(n+1)*C(n+1, 3)]` -/
def P4811949903683280634.Spec : Prop :=
  ∀ n, P4811949903683280634.a n = A281381 n

end A281381

/-! ## A281381.P4534081475817580888

`∑[3*(1-∑[a(n-1)-4])]` with `a(0)=1`
-/

namespace A281381.P4534081475817580888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (1 - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281381.P4534081475817580888

namespace A281381

/-- `∑[3*(1-∑[a(n-1)-4])]` -/
def P4534081475817580888.Spec : Prop :=
  ∀ n, P4534081475817580888.a n = A281381 n

end A281381

/-! ## A281381.P5709082952835795248

`lcm((n+1)², Δ[n²])-∑[n+1]`
-/

namespace A281381.P5709082952835795248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A281381.P5709082952835795248

namespace A281381

/-- `lcm((n+1)², Δ[n²])-∑[n+1]` -/
def P5709082952835795248.Spec : Prop :=
  ∀ n, P5709082952835795248.a n = A281381 n

end A281381

/-! ## A281381.P4202036331535007282

`C(n+1, 2)+2*n*(n+1)²`
-/

namespace A281381.P4202036331535007282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 2 * n * (n + 1) ^ 2

end

end A281381.P4202036331535007282

namespace A281381

/-- `C(n+1, 2)+2*n*(n+1)²` -/
def P4202036331535007282.Spec : Prop :=
  ∀ n, (P4202036331535007282.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P3074892451158151353

`a(n-1)+3*C(2*n+1, 2)` with `a(0)=0`
-/

namespace A281381.P3074892451158151353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * Nat.choose (2 * n + 1) 2

end

end A281381.P3074892451158151353

namespace A281381

/-- `a(n-1)+3*C(2*n+1, 2)` -/
def P3074892451158151353.Spec : Prop :=
  ∀ n, (P3074892451158151353.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P8954961219470689079

`a(n-1)+(2*n+1)*3*n` with `a(0)=0`
-/

namespace A281381.P8954961219470689079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n + 1) * (3 * n)

end

end A281381.P8954961219470689079

namespace A281381

/-- `a(n-1)+(2*n+1)*3*n` -/
def P8954961219470689079.Spec : Prop :=
  ∀ n, (P8954961219470689079.a n : ℤ) = A281381 n

end A281381

/-! ## A281381.P9928834537260315161

`(n+2)*C(2*n+1, 2)-C(n, 2)`
-/

namespace A281381.P9928834537260315161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose (2 * n + 1) 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A281381.P9928834537260315161

namespace A281381

/-- `(n+2)*C(2*n+1, 2)-C(n, 2)` -/
def P9928834537260315161.Spec : Prop :=
  ∀ n, P9928834537260315161.a n = A281381 n

end A281381

/-!
# A281382: Numbers n such that the decimal equivalent of the binary reflected Gray code representation of n is a palindromic prime.

The programs for A281382, there is no canonical definition to state claims against.
-/

/-! ## A281382.P9251088275527443982

`eq[A003188(n), A083982(A003188(n))]`
-/

namespace A281382.P9251088275527443982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281382.P9251088275527443982

/-! ## A281382.P14030533791572601517

`eq[A286548(n)+n, A083982(A286548(n)+n)]`
-/

namespace A281382.P14030533791572601517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083982 (A286548 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A281382.P14030533791572601517

/-! ## A281382.P4195344307409008646

`A290536(n+1)+A120003(A119967(n))`
-/

namespace A281382.P4195344307409008646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290536 (n + 1) + A120003 (A119967 n).toNat

end

end A281382.P4195344307409008646

/-!
# A281384: Least integer with more than 1 digit in base n, such that the set of its base-n digits equals the set of its binary digits.

The programs for A281384, there is no canonical definition to state claims against.
-/

/-! ## A281384.P9751240686955333621

`(n+2)^(Δ[ceil(log2(n+3))]+1)`
-/

namespace A281384.P9751240686955333621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 3 : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (f1 (n + 1) - f1 n + 1 : ℤ)

end

end A281384.P9751240686955333621

/-! ## A281384.P9830372224502959420

`lcm(n+2, gcd((n+2)², and(n+2, n+3)))`
-/

namespace A281384.P9830372224502959420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.gcd ((n + 2) ^ 2) (Nat.land (n + 2) (n + 3)))

end

end A281384.P9830372224502959420

/-! ## A281384.P4725954130788773327

`(n+2)*A101279(A071051(n+2))`
-/

namespace A281384.P4725954130788773327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A101279 (A071051 (n + 2)).toNat

end

end A281384.P4725954130788773327

/-! ## A281384.P10418849237210015966

`(n+2)*A329369(A135416(n+2))`
-/

namespace A281384.P10418849237210015966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A329369 (A135416 (n + 2)).toNat

end

end A281384.P10418849237210015966

/-! ## A281384.P17116370696738929249

`A000463(A209229(n+3)+2*n+3)`
-/

namespace A281384.P17116370696738929249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A209229 (n + 3) + (2 * n + 3 : ℤ)).toNat

end

end A281384.P17116370696738929249

/-! ## A281384.P5266465952014541558

`(n+2)*gcd(n+2, A008683(2*A006530(n+3)))`
-/

namespace A281384.P5266465952014541558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Int.gcd (n + 2 : ℤ) (A008683 (2 * A006530 (n + 3)).toNat)

end

end A281384.P5266465952014541558

/-!
# A281385: Triangular array T(n, k) = n^2 + n*k - k^2.

The programs for A281385, the canonical program `A281385.P1365053129118161988` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281385 has offset 0).

The definition of A281385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²+row(n)*col(n)-col(n)²` (program `A281385.P1365053129118161988`, by `A281385.P1365053129118161988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A281385.P1365053129118161988

`row(n)²+row(n)*col(n)-col(n)²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281385

/-- `row(n)²+row(n)*col(n)-col(n)²` -/
def P1365053129118161988.Spec : Prop :=
  ∀ n, P1365053129118161988.a n = A281385 n

theorem P1365053129118161988.correct : P1365053129118161988.Spec := by
  intro n
  simp only [A281385]

end A281385

/-! ## A281385.P9135945877240205942

`A004247(n)+∑[char[∑[n+1]]]²`
-/

namespace A281385.P9135945877240205942
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A281385.P9135945877240205942

namespace A281385

/-- `A004247(n)+∑[char[∑[n+1]]]²` -/
def P9135945877240205942.Spec : Prop :=
  ∀ n, P9135945877240205942.a n = A281385 n

end A281385

/-! ## A281385.P41272179880810521

`A335821(n)+A079904(n)`
-/

namespace A281385.P41272179880810521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 n + A079904 n

end

end A281385.P41272179880810521

namespace A281385

/-- `A335821(n)+A079904(n)` -/
def P41272179880810521.Spec : Prop :=
  ∀ n, P41272179880810521.a n = A281385 n

theorem P41272179880810521.correct : P41272179880810521.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P41272179880810521.a, A281385.P1365053129118161988.a, A079904, A079904.P681072687927778273.a, A335821, A335821.P109563387027522563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P9241428565788523415

`A100345(n)-A143844(n)`
-/

namespace A281385.P9241428565788523415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - A143844 n

end

end A281385.P9241428565788523415

namespace A281385

/-- `A100345(n)-A143844(n)` -/
def P9241428565788523415.Spec : Prop :=
  ∀ n, P9241428565788523415.a n = A281385 n

theorem P9241428565788523415.correct : P9241428565788523415.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P9241428565788523415.a, A281385.P1365053129118161988.a, A100345, A100345.P12526129573146748191.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P1112903014018995709

`A100345(n)-A002262(n)²`
-/

namespace A281385.P1112903014018995709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100345 n - A002262 n ^ 2

end

end A281385.P1112903014018995709

namespace A281385

/-- `A100345(n)-A002262(n)²` -/
def P1112903014018995709.Spec : Prop :=
  ∀ n, P1112903014018995709.a n = A281385 n

theorem P1112903014018995709.correct : P1112903014018995709.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P1112903014018995709.a, A281385.P1365053129118161988.a, A002262, A002262.P17823619022233514403.a, A100345, A100345.P12526129573146748191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P10769849542238441046

`A073254(n)+2*A004247(n)`
-/

namespace A281385.P10769849542238441046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n + 2 * A004247 n

end

end A281385.P10769849542238441046

namespace A281385

/-- `A073254(n)+2*A004247(n)` -/
def P10769849542238441046.Spec : Prop :=
  ∀ n, P10769849542238441046.a n = A281385 n

theorem P10769849542238441046.correct : P10769849542238441046.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P10769849542238441046.a, A281385.P1365053129118161988.a, A004247, A004247.P2751605162508615148.a, A073254, A073254.P5875854829665146571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P13794806582689886072

`A132111(n)-2*A143844(n)`
-/

namespace A281385.P13794806582689886072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - 2 * A143844 n

end

end A281385.P13794806582689886072

namespace A281385

/-- `A132111(n)-2*A143844(n)` -/
def P13794806582689886072.Spec : Prop :=
  ∀ n, P13794806582689886072.a n = A281385 n

theorem P13794806582689886072.correct : P13794806582689886072.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P13794806582689886072.a, A281385.P1365053129118161988.a, A132111, A132111.P14495534047387877315.a, A143844, A143844.P13341456288637914710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P1898104214506828366

`2*A073254(n)-A349039(n)`
-/

namespace A281385.P1898104214506828366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073254 n - A349039 n

end

end A281385.P1898104214506828366

namespace A281385

/-- `2*A073254(n)-A349039(n)` -/
def P1898104214506828366.Spec : Prop :=
  ∀ n, P1898104214506828366.a n = A281385 n

theorem P1898104214506828366.correct : P1898104214506828366.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P1898104214506828366.a, A281385.P1365053129118161988.a, A073254, A073254.P5875854829665146571.a, A349039, A349039.P8937323776347289677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P16707797817532497750

`A003056(n)²+A077028(n)-1`
-/

namespace A281385.P16707797817532497750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + (A077028 n - 1)

end

end A281385.P16707797817532497750

namespace A281385

/-- `A003056(n)²+A077028(n)-1` -/
def P16707797817532497750.Spec : Prop :=
  ∀ n, P16707797817532497750.a n = A281385 n

end A281385

/-! ## A281385.P16280838607070828325

`A003056(n)²+1-A176270(n)`
-/

namespace A281385.P16280838607070828325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + (1 - A176270 n)

end

end A281385.P16280838607070828325

namespace A281385

/-- `A003056(n)²+1-A176270(n)` -/
def P16280838607070828325.Spec : Prop :=
  ∀ n, P16280838607070828325.a n = A281385 n

end A281385

/-! ## A281385.P11247345733716266469

`2*A003056(n)²-A073254(n)`
-/

namespace A281385.P11247345733716266469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003056 n ^ 2 - A073254 n

end

end A281385.P11247345733716266469

namespace A281385

/-- `2*A003056(n)²-A073254(n)` -/
def P11247345733716266469.Spec : Prop :=
  ∀ n, P11247345733716266469.a n = A281385 n

end A281385

/-! ## A281385.P13936598144267495813

`A130154(n+1)+A073254(n)-1`
-/

namespace A281385.P13936598144267495813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + (A073254 n - 1)

end

end A281385.P13936598144267495813

namespace A281385

/-- `A130154(n+1)+A073254(n)-1` -/
def P13936598144267495813.Spec : Prop :=
  ∀ n, P13936598144267495813.a n = A281385 n

theorem P13936598144267495813.correct : P13936598144267495813.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P13936598144267495813.a, A281385.P1365053129118161988.a, A073254, A073254.P5875854829665146571.a, A130154, A130154.P10522574722174175207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P13441150389186375467

`A073254(n)+A005843(A004247(n))`
-/

namespace A281385.P13441150389186375467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n + A005843 (A004247 n).toNat

end

end A281385.P13441150389186375467

namespace A281385

/-- `A073254(n)+A005843(A004247(n))` -/
def P13441150389186375467.Spec : Prop :=
  ∀ n, P13441150389186375467.a n = A281385 n

end A281385

/-! ## A281385.P12675953622000269233

`A048147(A057944(n))+A004247(n)`
-/

namespace A281385.P12675953622000269233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A057944 n).toNat + A004247 n

end

end A281385.P12675953622000269233

namespace A281385

/-- `A048147(A057944(n))+A004247(n)` -/
def P12675953622000269233.Spec : Prop :=
  ∀ n, P12675953622000269233.a n = A281385 n

end A281385

/-! ## A281385.P13466682728085258095

`2*A069011(A057944(n))-A073254(n)`
-/

namespace A281385.P13466682728085258095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069011 (A057944 n).toNat - A073254 n

end

end A281385.P13466682728085258095

namespace A281385

/-- `2*A069011(A057944(n))-A073254(n)` -/
def P13466682728085258095.Spec : Prop :=
  ∀ n, P13466682728085258095.a n = A281385 n

end A281385

/-! ## A281385.P1570342173183128331

`A079904(n)+A025581(n)*A051162(n)`
-/

namespace A281385.P1570342173183128331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + A025581 n * A051162 n

end

end A281385.P1570342173183128331

namespace A281385

/-- `A079904(n)+A025581(n)*A051162(n)` -/
def P1570342173183128331.Spec : Prop :=
  ∀ n, P1570342173183128331.a n = A281385 n

theorem P1570342173183128331.correct : P1570342173183128331.Spec := by
  intro n
  simp only [A281385, Nat.add_sub_cancel, A281385.P1570342173183128331.a, A281385.P1365053129118161988.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281385

/-! ## A281385.P8010692003378738098

`A003056(n)²+A059036(n)-A003056(n)`
-/

namespace A281385.P8010692003378738098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + (A059036 n - A003056 n)

end

end A281385.P8010692003378738098

namespace A281385

/-- `A003056(n)²+A059036(n)-A003056(n)` -/
def P8010692003378738098.Spec : Prop :=
  ∀ n, P8010692003378738098.a n = A281385 n

end A281385

/-! ## A281385.P15211083228467405949

`A003056(n)²+A003984(n)*A004197(n)`
-/

namespace A281385.P15211083228467405949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + A003984 n * A004197 n

end

end A281385.P15211083228467405949

namespace A281385

/-- `A003056(n)²+A003984(n)*A004197(n)` -/
def P15211083228467405949.Spec : Prop :=
  ∀ n, P15211083228467405949.a n = A281385 n

end A281385

/-! ## A281385.P5238810107242628317

`A003056(n)²+A002262(n)*A025581(n)`
-/

namespace A281385.P5238810107242628317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + A002262 n * A025581 n

end

end A281385.P5238810107242628317

namespace A281385

/-- `A003056(n)²+A002262(n)*A025581(n)` -/
def P5238810107242628317.Spec : Prop :=
  ∀ n, P5238810107242628317.a n = A281385 n

end A281385

/-! ## A281385.P4442700961047943051

`A003056(n)*A051162(n)-A002262(n)²`
-/

namespace A281385.P4442700961047943051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A051162 n - A002262 n ^ 2

end

end A281385.P4442700961047943051

namespace A281385

/-- `A003056(n)*A051162(n)-A002262(n)²` -/
def P4442700961047943051.Spec : Prop :=
  ∀ n, P4442700961047943051.a n = A281385 n

end A281385

/-!
# A281386: Incrementally largest numerators of the Bernoulli numbers.

The programs for A281386, there is no canonical definition to state claims against.
-/

/-! ## A281386.P9545757839599356035

`record[A000367(n)]`
-/

namespace A281386.P9545757839599356035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281386.P9545757839599356035

/-! ## A281386.P1266030385339787437

`record[A027641(n)]`
-/

namespace A281386.P1266030385339787437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281386.P1266030385339787437

/-! ## A281386.P12087770769106634521

`record[A164555(n)]`
-/

namespace A281386.P12087770769106634521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281386.P12087770769106634521

/-! ## A281386.P17866004726956246832

`record[A176327(n)]`
-/

namespace A281386.P17866004726956246832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281386.P17866004726956246832

/-! ## A281386.P12948226959376117659

`record[A162298(∑[n])]`
-/

namespace A281386.P12948226959376117659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281386.P12948226959376117659

/-!
# A281387: Pairs (x, y) of relatively prime positive integers such that (x^2 - 5)/y and (y^2 - 5)/x are both positive integers.

The programs for A281387, the canonical program `A281387.P11369996941416597562` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281387 has offset 1).

The definition of A281387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281387.P5981588416782443129

`round(ϕ^or(1, n+3))`
-/

namespace A281387.P5981588416782443129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ Nat.lor 1 (n + 3))

end

end A281387.P5981588416782443129

namespace A281387

/-- `round(ϕ^or(1, n+3))` -/
def P5981588416782443129.Spec : Prop :=
  ∀ n, P5981588416782443129.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P11471277767077981495

`round(ϕ^(and(1, n)+n+3))`
-/

namespace A281387.P11471277767077981495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (Nat.land 1 n + (n + 3)))

end

end A281387.P11471277767077981495

namespace A281387

/-- `round(ϕ^(and(1, n)+n+3))` -/
def P11471277767077981495.Spec : Prop :=
  ∀ n, P11471277767077981495.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P3413010707094333201

`round(ϕ^(gcd(n-1, 2*n)+n+2))`
-/

namespace A281387.P3413010707094333201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) + (n + 2)))

end

end A281387.P3413010707094333201

namespace A281387

/-- `round(ϕ^(gcd(n-1, 2*n)+n+2))` -/
def P3413010707094333201.Spec : Prop :=
  ∀ n, P3413010707094333201.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P11369996941416597562

`3*a(n-2)-a(n-4)` with `a(0)=4, a(1)=11, a(2)=11, a(3)=29`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A281387

/-- `3*a(n-2)-a(n-4)` -/
def P11369996941416597562.Spec : Prop :=
  ∀ n, P11369996941416597562.a n = A281387 (n + 1)

theorem P11369996941416597562.correct : P11369996941416597562.Spec := by
  intro n
  simp only [A281387, Nat.add_sub_cancel]

end A281387

/-! ## A281387.P12118839620533596069

`A288219(or(1, n+1))`
-/

namespace A281387.P12118839620533596069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (Nat.lor 1 (n + 1))

end

end A281387.P12118839620533596069

namespace A281387

/-- `A288219(or(1, n+1))` -/
def P12118839620533596069.Spec : Prop :=
  ∀ n, P12118839620533596069.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P11454890456430635147

`A000032(or(1, n+3))`
-/

namespace A281387.P11454890456430635147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.lor 1 (n + 3))

end

end A281387.P11454890456430635147

namespace A281387

/-- `A000032(or(1, n+3))` -/
def P11454890456430635147.Spec : Prop :=
  ∀ n, P11454890456430635147.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P18017201150692590160

`A000204(or(1, n+3))`
-/

namespace A281387.P18017201150692590160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (Nat.lor 1 (n + 3))

end

end A281387.P18017201150692590160

namespace A281387

/-- `A000204(or(1, n+3))` -/
def P18017201150692590160.Spec : Prop :=
  ∀ n, P18017201150692590160.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P8574596692482531703

`A001350(or(1, n+3))`
-/

namespace A281387.P8574596692482531703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (Nat.lor 1 (n + 3))

end

end A281387.P8574596692482531703

namespace A281387

/-- `A001350(or(1, n+3))` -/
def P8574596692482531703.Spec : Prop :=
  ∀ n, P8574596692482531703.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P6220384776380808082

`A001638(or(1, n+3))`
-/

namespace A281387.P6220384776380808082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (Nat.lor 1 (n + 3))

end

end A281387.P6220384776380808082

namespace A281387

/-- `A001638(or(1, n+3))` -/
def P6220384776380808082.Spec : Prop :=
  ∀ n, P6220384776380808082.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P1107771358610882467

`A005013(or(1, n+3))`
-/

namespace A281387.P1107771358610882467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (Nat.lor 1 (n + 3))

end

end A281387.P1107771358610882467

namespace A281387

/-- `A005013(or(1, n+3))` -/
def P1107771358610882467.Spec : Prop :=
  ∀ n, P1107771358610882467.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P16874688281522582253

`A014217(or(1, n+3))`
-/

namespace A281387.P16874688281522582253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (Nat.lor 1 (n + 3))

end

end A281387.P16874688281522582253

namespace A281387

/-- `A014217(or(1, n+3))` -/
def P16874688281522582253.Spec : Prop :=
  ∀ n, P16874688281522582253.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P8220942468244894433

`A068397(or(1, n+3))`
-/

namespace A281387.P8220942468244894433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068397 (Nat.lor 1 (n + 3))

end

end A281387.P8220942468244894433

namespace A281387

/-- `A068397(or(1, n+3))` -/
def P8220942468244894433.Spec : Prop :=
  ∀ n, P8220942468244894433.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P47261994537675849

`A080023(or(1, n+3))`
-/

namespace A281387.P47261994537675849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (Nat.lor 1 (n + 3))

end

end A281387.P47261994537675849

namespace A281387

/-- `A080023(or(1, n+3))` -/
def P47261994537675849.Spec : Prop :=
  ∀ n, P47261994537675849.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P11251640856366821798

`A109794(or(1, n+3))`
-/

namespace A281387.P11251640856366821798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (Nat.lor 1 (n + 3))

end

end A281387.P11251640856366821798

namespace A281387

/-- `A109794(or(1, n+3))` -/
def P11251640856366821798.Spec : Prop :=
  ∀ n, P11251640856366821798.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P9935519510908581269

`A169985(or(1, n+3))`
-/

namespace A281387.P9935519510908581269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (Nat.lor 1 (n + 3))

end

end A281387.P9935519510908581269

namespace A281387

/-- `A169985(or(1, n+3))` -/
def P9935519510908581269.Spec : Prop :=
  ∀ n, P9935519510908581269.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P10127366847834694135

`A203976(or(1, n+3))`
-/

namespace A281387.P10127366847834694135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (Nat.lor 1 (n + 3))

end

end A281387.P10127366847834694135

namespace A281387

/-- `A203976(or(1, n+3))` -/
def P10127366847834694135.Spec : Prop :=
  ∀ n, P10127366847834694135.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P17324177252328041348

`A002878(A080513(n))`
-/

namespace A281387.P17324177252328041348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (A080513 n).toNat

end

end A281387.P17324177252328041348

namespace A281387

/-- `A002878(A080513(n))` -/
def P17324177252328041348.Spec : Prop :=
  ∀ n, P17324177252328041348.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P1449778843085899751

`A002878(A008619(n+1))`
-/

namespace A281387.P1449778843085899751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (A008619 (n + 1)).toNat

end

end A281387.P1449778843085899751

namespace A281387

/-- `A002878(A008619(n+1))` -/
def P1449778843085899751.Spec : Prop :=
  ∀ n, P1449778843085899751.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P12936490823752081568

`A288219(A109613(n+1))`
-/

namespace A281387.P12936490823752081568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (A109613 (n + 1)).toNat

end

end A281387.P12936490823752081568

namespace A281387

/-- `A288219(A109613(n+1))` -/
def P12936490823752081568.Spec : Prop :=
  ∀ n, P12936490823752081568.a n = A281387 (n + 1)

end A281387

/-! ## A281387.P6549083796926425474

`A272632(A163980(n+1))`
-/

namespace A281387.P6549083796926425474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272632 (A163980 (n + 1)).toNat

end

end A281387.P6549083796926425474

namespace A281387

/-- `A272632(A163980(n+1))` -/
def P6549083796926425474.Spec : Prop :=
  ∀ n, P6549083796926425474.a n = A281387 (n + 1)

end A281387

/-!
# A281388: Write n in binary reflected Gray code and sum the positions where there is a '1' followed immediately to the right by a '0', counting the leftmost digit as position 1.

The programs for A281388, the canonical program `A281388.P2536527221825574794` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281388 has offset 1).

The definition of A281388 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049501, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A281388.P2536527221825574794

`A049501(A003188(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A281388

/-- `A049501(A003188(n+1))` -/
def P2536527221825574794.Spec : Prop :=
  ∀ n, P2536527221825574794.a n = A281388 (n + 1)

theorem P2536527221825574794.correct : P2536527221825574794.Spec := by
  intro n
  simp only [A281388, Nat.add_sub_cancel]

end A281388

/-! ## A281388.P142733579054389266

`A049501(xor(n+1, ceil(n/2)))`
-/

namespace A281388.P142733579054389266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (Int.xor (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉).toNat

end

end A281388.P142733579054389266

namespace A281388

/-- `A049501(xor(n+1, ceil(n/2)))` -/
def P142733579054389266.Spec : Prop :=
  ∀ n, P142733579054389266.a n = A281388 (n + 1)

end A281388

/-! ## A281388.P12235216552916496349

`A049501(∑[A055975(n+1)])`
-/

namespace A281388.P12235216552916496349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A281388.P12235216552916496349

namespace A281388

/-- `A049501(∑[A055975(n+1)])` -/
def P12235216552916496349.Spec : Prop :=
  ∀ n, P12235216552916496349.a n = A281388 (n + 1)

end A281388

/-! ## A281388.P10095415155271331461

`A049501(A286548(n+1)+1+n)`
-/

namespace A281388.P10095415155271331461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A286548 (n + 1) + 1 + (n : ℤ)).toNat

end

end A281388.P10095415155271331461

namespace A281388

/-- `A049501(A286548(n+1)+1+n)` -/
def P10095415155271331461.Spec : Prop :=
  ∀ n, P10095415155271331461.a n = A281388 (n + 1)

theorem P10095415155271331461.correct : P10095415155271331461.Spec := by
  intro n
  simp only [A281388, Nat.add_sub_cancel, A281388.P10095415155271331461.a, A281388.P2536527221825574794.a, A003188, A003188.P10544524695508875182.a, A049501, A049501.P2511382539437314283.a, A286548, A286548.P11712479418656410754.a, A049502, A049502.P5742727287573319742.a, A145341, A145341.P17834554394848515737.a, A004526, A004526.P10084182425416171735.a, A030101, A030101.P16184294017372777612.a, A037800, A037800.P4480434957642420409.a, A055945, A055945.P5963763732554067333.a, A069010, A069010.P14932719103722593844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A281388

/-! ## A281388.P10779145568089929043

`A049501(or(1, xor(n+1, 2*(n+1))))`
-/

namespace A281388.P10779145568089929043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (Nat.lor 1 (Nat.xor (n + 1) (2 * (n + 1))))

end

end A281388.P10779145568089929043

namespace A281388

/-- `A049501(or(1, xor(n+1, 2*(n+1))))` -/
def P10779145568089929043.Spec : Prop :=
  ∀ n, P10779145568089929043.a n = A281388 (n + 1)

end A281388

/-!
# A281389: Least k > 1 such that refactorable number k is an n-th power.

The programs for A281389, there is no canonical definition to state claims against.
-/

/-! ## A281389.P8400595654743191700

`A281495(n+1)^(n+1)`
-/

namespace A281389.P8400595654743191700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281495 (n + 1) ^ (n + 1)

end

end A281389.P8400595654743191700

/-! ## A281389.P14228979719702825411

`root(A281495(n+1), A003557(n+1)/A102631(n+1))`
-/

namespace A281389.P14228979719702825411
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A281495 (n + 1) : ℝ) ^ (1 / ((A003557 (n + 1) : ℚ) / (A102631 (n + 1) : ℚ) : ℝ))

end

end A281389.P14228979719702825411

/-! ## A281389.P5903531721047760922

`∏{p}[n+2, #]^A043317(n+1)`
-/

namespace A281389.P5903531721047760922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A043317 (n + 1) : ℤ)

end

end A281389.P5903531721047760922

/-! ## A281389.P3140323414206534974

`A007947(n+2)^A043317(n+1)`
-/

namespace A281389.P3140323414206534974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 2) : ℚ) ^ (A043317 (n + 1) : ℤ)

end

end A281389.P3140323414206534974

/-! ## A281389.P12442414918767301927

`∏{p}[A117127(A000225(n+2)), #]^(n+1)`
-/

namespace A281389.P12442414918767301927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117127 (A000225 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ (n + 1)

end

end A281389.P12442414918767301927

/-!
# A281391: Vinogradov's number J_{3,2}(n).

The programs for A281391, there is no canonical definition to state claims against.
-/

/-! ## A281391.P17278677941320485789

`∑[A006368(A006368(A209981(n)))]`
-/

namespace A281391.P17278677941320485789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A006368 (A209981 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281391.P17278677941320485789

/-!
# A281392: Number of occurrences of "01" as a subsequence in the binary expansion of n.

The programs for A281392, the canonical program `A281392.P7903200098704454459` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A281392 has offset 0).

The definition of A281392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A281392.P14320168317364697534

`A359495(n)+A161511(n)`
-/

namespace A281392.P14320168317364697534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359495 n + A161511 n

end

end A281392.P14320168317364697534

namespace A281392

/-- `A359495(n)+A161511(n)` -/
def P14320168317364697534.Spec : Prop :=
  ∀ n, P14320168317364697534.a n = A281392 n

end A281392

/-! ## A281392.P7903200098704454459

`A086784(n)+a(A000265(n)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A281392

/-- `A086784(n)+a(A000265(n)-1)+1` -/
def P7903200098704454459.Spec : Prop :=
  ∀ n, P7903200098704454459.a n = A281392 n

theorem P7903200098704454459.correct : P7903200098704454459.Spec := by
  intro n
  simp only [A281392]

end A281392

/-! ## A281392.P13532208217292348630

`A161511(A030101(n))`
-/

namespace A281392.P13532208217292348630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A030101 n).toNat

end

end A281392.P13532208217292348630

namespace A281392

/-- `A161511(A030101(n))` -/
def P13532208217292348630.Spec : Prop :=
  ∀ n, P13532208217292348630.a n = A281392 n

end A281392

/-! ## A281392.P16299402733797734455

`A055941(A030101(n))+A000120(n)`
-/

namespace A281392.P16299402733797734455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A030101 n).toNat + A000120 n

end

end A281392.P16299402733797734455

namespace A281392

/-- `A055941(A030101(n))+A000120(n)` -/
def P16299402733797734455.Spec : Prop :=
  ∀ n, P16299402733797734455.a n = A281392 n

end A281392

/-! ## A281392.P6795350851966818553

`A227183(A378299(n))`
-/

namespace A281392.P6795350851966818553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A378299 n).toNat

end

end A281392.P6795350851966818553

namespace A281392

/-- `A227183(A378299(n))` -/
def P6795350851966818553.Spec : Prop :=
  ∀ n, P6795350851966818553.a n = A281392 n

end A281392

/-! ## A281392.P6686939950439825372

`(A326732(n)+A000120(n))/2`
-/

namespace A281392.P6686939950439825372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326732 n + A000120 n : ℚ) / 2

end

end A281392.P6686939950439825372

namespace A281392

/-- `(A326732(n)+A000120(n))/2` -/
def P6686939950439825372.Spec : Prop :=
  ∀ n, P6686939950439825372.a n = (A281392 n : ℚ)

end A281392

/-! ## A281392.P12077715692487520139

`A055941(2*A030101(n))`
-/

namespace A281392.P12077715692487520139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * A030101 n).toNat

end

end A281392.P12077715692487520139

namespace A281392

/-- `A055941(2*A030101(n))` -/
def P12077715692487520139.Spec : Prop :=
  ∀ n, P12077715692487520139.a n = A281392 n

end A281392

/-! ## A281392.P4229863179882892055

`A055941(A030101(n)+A030101(n))`
-/

namespace A281392.P4229863179882892055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A030101 n + A030101 n).toNat

end

end A281392.P4229863179882892055

namespace A281392

/-- `A055941(A030101(n)+A030101(n))` -/
def P4229863179882892055.Spec : Prop :=
  ∀ n, P4229863179882892055.a n = A281392 n

end A281392

/-! ## A281392.P7182477074028357829

`A055941(A073138(2*n))-A055941(n)`
-/

namespace A281392.P7182477074028357829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A073138 (2 * n)).toNat - A055941 n

end

end A281392.P7182477074028357829

namespace A281392

/-- `A055941(A073138(2*n))-A055941(n)` -/
def P7182477074028357829.Spec : Prop :=
  ∀ n, P7182477074028357829.a n = A281392 n

end A281392

/-! ## A281392.P11996449655557191267

`A055941(A010078(n+1))`
-/

namespace A281392.P11996449655557191267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A010078 (n + 1)).toNat

end

end A281392.P11996449655557191267

namespace A281392

/-- `A055941(A010078(n+1))` -/
def P11996449655557191267.Spec : Prop :=
  ∀ n, P11996449655557191267.a n = A281392 n

end A281392

/-! ## A281392.P18277212569827072834

`A055941(A035327(2*n)+n)`
-/

namespace A281392.P18277212569827072834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A035327 (2 * n) + (n : ℤ)).toNat

end

end A281392.P18277212569827072834

namespace A281392

/-- `A055941(A035327(2*n)+n)` -/
def P18277212569827072834.Spec : Prop :=
  ∀ n, P18277212569827072834.a n = A281392 n

end A281392

/-! ## A281392.P13480382912253212581

`A055941(A062383(2*n)-(n+1))`
-/

namespace A281392.P13480382912253212581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A062383 (2 * n) - (n + 1 : ℤ)).toNat

end

end A281392.P13480382912253212581

namespace A281392

/-- `A055941(A062383(2*n)-(n+1))` -/
def P13480382912253212581.Spec : Prop :=
  ∀ n, P13480382912253212581.a n = A281392 n

end A281392

/-! ## A281392.P17936013523922963323

`A161511(A164884(4*n))-A161511(n)`
-/

namespace A281392.P17936013523922963323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (A164884 (4 * n)).toNat - A161511 n

end

end A281392.P17936013523922963323

namespace A281392

/-- `A161511(A164884(4*n))-A161511(n)` -/
def P17936013523922963323.Spec : Prop :=
  ∀ n, P17936013523922963323.a n = A281392 n

end A281392

/-!
# A281393: Number of n X n 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281393, there is no canonical definition to state claims against.
-/

/-! ## A281393.P10419354159198680787

`A281400(∑[4*n]+1)`
-/

namespace A281393.P10419354159198680787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281393.P10419354159198680787

/-! ## A281393.P8463129717361794166

`A281400(A001844(n))+char[32]`
-/

namespace A281393.P8463129717361794166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A281393.P8463129717361794166

/-! ## A281393.P13513778370750940620

`A054977(n)*A281400(A001844(n))`
-/

namespace A281393.P13513778370750940620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A281400 (A001844 n).toNat

end

end A281393.P13513778370750940620

/-! ## A281393.P17867537280229067364

`A269301(n)*A281400(A001844(n))`
-/

namespace A281393.P17867537280229067364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269301 n * A281400 (A001844 n).toNat

end

end A281393.P17867537280229067364

/-! ## A281393.P13589699610648399404

`A281400(A001844(n))%A001947(n)`
-/

namespace A281393.P13589699610648399404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281400 (A001844 n).toNat) (A001947 n)

end

end A281393.P13589699610648399404

/-!
# A281394: Number of n X 2 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281394, there is no canonical definition to state claims against.
-/

/-! ## A281394.P11126957698335430049

`A281400(∑[n+2])`
-/

namespace A281394.P11126957698335430049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A281394.P11126957698335430049

/-! ## A281394.P6708482584727660280

`lcm(2, A281400(A000096(n+1)))`
-/

namespace A281394.P6708482584727660280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281400 (A000096 (n + 1)).toNat)

end

end A281394.P6708482584727660280

/-! ## A281394.P11131652123081052681

`char[A007318(n)]*A281400(A000096(n+1))`
-/

namespace A281394.P11131652123081052681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281400 (A000096 (n + 1)).toNat

end

end A281394.P11131652123081052681

/-! ## A281394.P3292056965713548325

`A281400(A000096(n+1))%A000108(n+8)`
-/

namespace A281394.P3292056965713548325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281400 (A000096 (n + 1)).toNat) (A000108 (n + 8))

end

end A281394.P3292056965713548325

/-! ## A281394.P8219974669870836852

`A281400(A000096(n+1))+A154269(2*n+3)`
-/

namespace A281394.P8219974669870836852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A000096 (n + 1)).toNat + A154269 (2 * n + 3)

end

end A281394.P8219974669870836852

/-!
# A281395: Number of nX3 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281395, there is no canonical definition to state claims against.
-/

/-! ## A281395.P9730019798593989406

`A281400(∑[n+3]+1)`
-/

namespace A281395.P9730019798593989406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A281395.P9730019798593989406

/-! ## A281395.P4991439701218551939

`record[A281400(A237519(n+1))]`
-/

namespace A281395.P4991439701218551939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281395.P4991439701218551939

/-! ## A281395.P17522022609359617910

`record[A281400(A347633(n+1))]`
-/

namespace A281395.P17522022609359617910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281395.P17522022609359617910

/-! ## A281395.P17308331420424898450

`record[A281400(A099375(n)+n)]`
-/

namespace A281395.P17308331420424898450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A099375 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281395.P17308331420424898450

/-! ## A281395.P10068390588716503101

`record[A281400(Δ[A054974(n+2)])]`
-/

namespace A281395.P10068390588716503101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281395.P10068390588716503101

/-!
# A281396: Number of nX4 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281396, there is no canonical definition to state claims against.
-/

/-! ## A281396.P983028550179820901

`A281400(∑[n+4]+3)`
-/

namespace A281396.P983028550179820901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A281396.P983028550179820901

/-! ## A281396.P3254389791632396843

`lcm(2, A281400(A141214(n+1)))`
-/

namespace A281396.P3254389791632396843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A281400 (A141214 (n + 1)).toNat)

end

end A281396.P3254389791632396843

/-! ## A281396.P8683802083332588001

`record[A010054(n+4)*A281400(n+1)]`
-/

namespace A281396.P8683802083332588001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A281400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A281396.P8683802083332588001

/-! ## A281396.P4735701587875036279

`A119335(n)*A281400(A141214(n+1))`
-/

namespace A281396.P4735701587875036279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A281400 (A141214 (n + 1)).toNat

end

end A281396.P4735701587875036279

/-! ## A281396.P5574643045781207288

`char[A007318(n)]*A281400(A141214(n+1))`
-/

namespace A281396.P5574643045781207288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A281400 (A141214 (n + 1)).toNat

end

end A281396.P5574643045781207288

/-!
# A281397: Number of nX5 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281397, there is no canonical definition to state claims against.
-/

/-! ## A281397.P1445678539940568704

`A281400(Δ[A264443(n)])`
-/

namespace A281397.P1445678539940568704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (f1 (n + 1) - f1 n).toNat

end

end A281397.P1445678539940568704

/-! ## A281397.P3872013255028593134

`A281400(A046691(n+3))`
-/

namespace A281397.P3872013255028593134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A046691 (n + 3)).toNat

end

end A281397.P3872013255028593134

/-! ## A281397.P118611548680375678

`A281400(A056115(n)+11)`
-/

namespace A281397.P118611548680375678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A056115 n + 11).toNat

end

end A281397.P118611548680375678

/-! ## A281397.P97258331167230197

`A281400(eq[4, A193592(n)])`
-/

namespace A281397.P97258331167230197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281397.P97258331167230197

/-! ## A281397.P5164720297860265645

`A281400(eq[5, A239144(n)])`
-/

namespace A281397.P5164720297860265645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281397.P5164720297860265645

/-!
# A281398: Number of nX6 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281398, there is no canonical definition to state claims against.
-/

/-! ## A281398.P16409291752123015744

`A281400(A052905(n+3))`
-/

namespace A281398.P16409291752123015744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A052905 (n + 3)).toNat

end

end A281398.P16409291752123015744

/-! ## A281398.P13977378684900078750

`A281400(A056119(n)+16)`
-/

namespace A281398.P13977378684900078750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A056119 n + 16).toNat

end

end A281398.P13977378684900078750

/-! ## A281398.P15021651561987019848

`A281400(eq[3, A219347(n)])`
-/

namespace A281398.P15021651561987019848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281398.P15021651561987019848

/-! ## A281398.P6232433321951446465

`A281400(eq[5, A193592(n)])`
-/

namespace A281398.P6232433321951446465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281398.P6232433321951446465

/-! ## A281398.P12970037035087913178

`A281400(eq[16, A166065(n)])`
-/

namespace A281398.P12970037035087913178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281398.P12970037035087913178

/-!
# A281399: Number of nX7 0..1 arrays with no element equal to more than two of its horizontal, diagonal or antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A281399, there is no canonical definition to state claims against.
-/

/-! ## A281399.P13601626974812916055

`A281400(A055999(n+4))`
-/

namespace A281399.P13601626974812916055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (A055999 (n + 4)).toNat

end

end A281399.P13601626974812916055

/-! ## A281399.P3736359422793998569

`A281400(eq[4, A219347(n)])`
-/

namespace A281399.P3736359422793998569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281399.P3736359422793998569

/-! ## A281399.P8580747491658830599

`A281400(eq[6, A193592(n)])`
-/

namespace A281399.P8580747491658830599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A281399.P8580747491658830599

/-! ## A281399.P9027050585691341772

`A281400(Δ[A023551(n+2)])`
-/

namespace A281399.P9027050585691341772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (f1 (n + 1) - f1 n).toNat

end

end A281399.P9027050585691341772

/-! ## A281399.P11681859215035920238

`A281400(Δ[A026054(n+4)])`
-/

namespace A281399.P11681859215035920238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281400 (f1 (n + 1) - f1 n).toNat

end

end A281399.P11681859215035920238

