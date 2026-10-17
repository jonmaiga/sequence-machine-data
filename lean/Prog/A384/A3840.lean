import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A384001: Irregular triangle T(n,j,k), j = 1..A024718(n), k = 1..n, where row 1 = {(0), (1)}, and row n = union of n-tuples whose sum s < n, and the n-tuples formed by appending s to the (n-1)-tuples in row n-1.

The programs for A384001, there is no canonical definition to state claims against.
-/

/-! ## A384001.P1328377480824725298

`A335475(n+1)%A374757(A018900(n+1))`
-/

namespace A384001.P1328377480824725298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335475 (n + 1)) (A374757 (A018900 (n + 1)).toNat)

end

end A384001.P1328377480824725298

/-! ## A384001.P9352964165088328874

`A083891(A325863(n+2)+n)`
-/

namespace A384001.P9352964165088328874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (A325863 (n + 2) + (n : ℤ)).toNat

end

end A384001.P9352964165088328874

/-! ## A384001.P11301962463967585417

`A393531(A356351(n+2))`
-/

namespace A384001.P11301962463967585417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393531 (A356351 (n + 2)).toNat

end

end A384001.P11301962463967585417

/-! ## A384001.P1292945527382818903

`A375467(A120383(n+1))%A000120(n+4)`
-/

namespace A384001.P1292945527382818903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375467 (A120383 (n + 1)).toNat) (A000120 (n + 4))

end

end A384001.P1292945527382818903

/-! ## A384001.P16411041798454601067

`A088569(A042942(n+5))%A088570(n+1)`
-/

namespace A384001.P16411041798454601067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088569 (A042942 (n + 5)).toNat) (A088570 (n + 1))

end

end A384001.P16411041798454601067

/-!
# A384003: Irregular triangle T(n,k), n >= 0, 0 <= k < 2^(n-1), where T(n,k) = Product_{j=0..n-1} prime(j+1)^((n-j)*d_j), where d_j is the bit with digit weight 2^j in the binary expansion of 2^(n-1)+k.

The programs for A384003, there is no canonical definition to state claims against.
-/

/-! ## A384003.P3327111411919238352

`A304768(A109298(n+1))`
-/

namespace A384003.P3327111411919238352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304768 (A109298 (n + 1)).toNat

end

end A384003.P3327111411919238352

/-!
# A384005: Number of ways to choose disjoint strict integer partitions, one of each conjugate prime index of n.

The programs for A384005, there is no canonical definition to state claims against.
-/

/-! ## A384005.P6730551027493358043

`A384394(n+1)+A341629(n+1)`
-/

namespace A384005.P6730551027493358043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384394 (n + 1) + A341629 (n + 1)

end

end A384005.P6730551027493358043

/-! ## A384005.P16995433794819225578

`and(A096322(n+1), A327169(n+1))`
-/

namespace A384005.P16995433794819225578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096322 (n + 1)) (A327169 (n + 1))

end

end A384005.P16995433794819225578

/-! ## A384005.P6367527265187079373

`C(A212119(A120641(n)), ∏{p}[n+1, #-1])`
-/

namespace A384005.P6367527265187079373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212119 (A120641 n).toNat).toNat (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat

end

end A384005.P6367527265187079373

/-! ## A384005.P16809612899703700291

`A344835(A356945(n+1)%A260793(2*(n+1)))`
-/

namespace A384005.P16809612899703700291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344835 (Int.tmod (A356945 (n + 1)) (A260793 (2 * (n + 1)))).toNat

end

end A384005.P16809612899703700291

/-! ## A384005.P16135633668225392244

`A367905(A367931(n+1)*A367934(n+1))`
-/

namespace A384005.P16135633668225392244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (A367931 (n + 1) * A367934 (n + 1)).toNat

end

end A384005.P16135633668225392244

/-!
# A384008: Irregular triangle read by rows where row n lists the first differences of the 0-prepended prime indices of the n-th squarefree number.

The programs for A384008, there is no canonical definition to state claims against.
-/

/-! ## A384008.P13958431881814869839

`A329631(n+1)-A188037(A052549(n))`
-/

namespace A384008.P13958431881814869839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329631 (n + 1) - A188037 (A052549 n).toNat

end

end A384008.P13958431881814869839

/-!
# A384009: Irregular triangle read by rows where row n lists the positive first differences of the prime indices of n.

The programs for A384009, there is no canonical definition to state claims against.
-/

/-! ## A384009.P2323541571720240737

`filter[A355536(n+2), A145568(#)]`
-/

namespace A384009.P2323541571720240737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A384009.P2323541571720240737

/-! ## A384009.P13302335744481714681

`filter[A355536(n+2), A168185(#)]`
-/

namespace A384009.P13302335744481714681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355536 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A384009.P13302335744481714681

/-! ## A384009.P7601615047109078862

`A355526(A360529(n+1))`
-/

namespace A384009.P7601615047109078862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355526 (A360529 (n + 1)).toNat

end

end A384009.P7601615047109078862

/-! ## A384009.P2764836023642735763

`gcd(∑[A027601(2*(n+2))], A116395(n))`
-/

namespace A384009.P2764836023642735763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027601 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A116395 n)

end

end A384009.P2764836023642735763

/-! ## A384009.P15692441989304975600

`gcd(A286470(A106543(n+1)), A329748(3*n))`
-/

namespace A384009.P15692441989304975600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286470 (A106543 (n + 1)).toNat) (A329748 (3 * n))

end

end A384009.P15692441989304975600

/-!
# A384010: Heinz numbers of integer partitions such that it is possible to choose a family of disjoint strict partitions, one of each conjugate part.

The programs for A384010, there is no canonical definition to state claims against.
-/

/-! ## A384010.P5063507600758200991

`∪[A055932(n+1), A027313(n)]`
-/

namespace A384010.P5063507600758200991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027313 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384010.P5063507600758200991

/-! ## A384010.P12204571235445042446

`∪[A055932(n+1), A334198(n)]`
-/

namespace A384010.P12204571235445042446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334198 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384010.P12204571235445042446

/-! ## A384010.P14317781182557183001

`∪[A054744(n+1), A055932(n+1)]`
-/

namespace A384010.P14317781182557183001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384010.P14317781182557183001

/-! ## A384010.P8591330146722761839

`∪[A055932(n+1), A057609(n+1)]`
-/

namespace A384010.P8591330146722761839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384010.P8591330146722761839

/-! ## A384010.P15268940667227022740

`∪[A055932(n+1), A068936(n+1)]`
-/

namespace A384010.P15268940667227022740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384010.P15268940667227022740

/-!
# A384011: Numbers k such that it is not possible to choose disjoint strict integer partitions of each conjugate prime index of k.

The programs for A384011, there is no canonical definition to state claims against.
-/

/-! ## A384011.P10823362927106930506

`eq[0, A384005(n+1)]+1`
-/

namespace A384011.P10823362927106930506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384011.P10823362927106930506

/-! ## A384011.P5048688532319162177

`lt[A384005(A028310(n)), 1]`
-/

namespace A384011.P5048688532319162177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A384011.P5048688532319162177

/-! ## A384011.P1857863499962059734

`lt[A384005(n+1), A057427(n)]+1`
-/

namespace A384011.P1857863499962059734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A384011.P1857863499962059734

/-! ## A384011.P7558001236198168741

`∩[A068938(n+1), A080259(n+1)]`
-/

namespace A384011.P7558001236198168741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384011.P7558001236198168741

/-! ## A384011.P6805866321701746311

`∩[A080259(n+1), A362147(n+1)]`
-/

namespace A384011.P6805866321701746311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384011.P6805866321701746311

/-! ## A384011.P17364717683578081616

`∩[A080259(n+1), A390538(n+1)]`
-/

namespace A384011.P17364717683578081616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384011.P17364717683578081616

/-! ## A384011.P1193024216038123982

`∪[A073492(n+1), A387097(n+1)]`
-/

namespace A384011.P1193024216038123982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384011.P1193024216038123982

/-! ## A384011.P6189355055976938582

`∪[A073493(n+1), A387097(n+1)]`
-/

namespace A384011.P6189355055976938582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384011.P6189355055976938582

/-! ## A384011.P17246161910972262729

`∪[A368089(n+1), A387097(n+1)]`
-/

namespace A384011.P17246161910972262729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384011.P17246161910972262729

/-!
# A384013: Primes with at least two identical leading digits.

The programs for A384013, there is no canonical definition to state claims against.
-/

/-! ## A384013.P16299485089068782542

`filter[A044896(n+1), A010055(#)]`
-/

namespace A384013.P16299485089068782542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A384013.P16299485089068782542

/-! ## A384013.P15631788305845774131

`filter[A044896(n+1), A080339(#)]`
-/

namespace A384013.P15631788305845774131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A384013.P15631788305845774131

/-! ## A384013.P18321344581149248914

`filter[A044896(n+1), A080545(#)]`
-/

namespace A384013.P18321344581149248914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A384013.P18321344581149248914

/-! ## A384013.P3265731288783105009

`filter[A044896(n+1), A171387(#)]`
-/

namespace A384013.P3265731288783105009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A384013.P3265731288783105009

/-! ## A384013.P16457934191791925616

`filter[A044896(n+1), A174282(#)]`
-/

namespace A384013.P16457934191791925616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A384013.P16457934191791925616

/-!
# A384014: a(n) is the number of n-digit terms in A384013.

The programs for A384014, there is no canonical definition to state claims against.
-/

/-! ## A384014.P15011303044498462254

`A246264(A085363(n))+A246264(n)`
-/

namespace A384014.P15011303044498462254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246264 (A085363 n).toNat + A246264 n

end

end A384014.P15011303044498462254

/-!
# A384016: a(n) is the number of n-digit terms in A384015.

The programs for A384016, there is no canonical definition to state claims against.
-/

/-! ## A384016.P4355457562895126355

`A070105(A344672(3*n+4)+A318118(n+2))`
-/

namespace A384016.P4355457562895126355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070105 (A344672 (3 * n + 4) + A318118 (n + 2)).toNat

end

end A384016.P4355457562895126355

/-!
# A384018: a(n) = [x^n] Product_{k=0..n-1} (1 + k*x)^3.

The programs for A384018, there is no canonical definition to state claims against.
-/

/-! ## A384018.P8414102125004453535

`A250246(A293849(n))-A007633(n+1)`
-/

namespace A384018.P8414102125004453535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A293849 n).toNat - A007633 (n + 1)

end

end A384018.P8414102125004453535

/-!
# A384021: Powers of 2 along with numbers one power of 2 less than binary repunits, but the power of two subtracted does not flip the leading bit.

The programs for A384021, there is no canonical definition to state claims against.
-/

/-! ## A384021.P9217639778987358

`A023758(n+3)-A014577(A023758(n+1))`
-/

namespace A384021.P9217639778987358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (n + 3) - A014577 (A023758 (n + 1)).toNat

end

end A384021.P9217639778987358

/-! ## A384021.P16883194561605207369

`eq[A000120(n), A090706(n)]`
-/

namespace A384021.P16883194561605207369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384021.P16883194561605207369

/-! ## A384021.P12838342459630928330

`eq[A029837(n+1), A178244(n)]`
-/

namespace A384021.P12838342459630928330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384021.P12838342459630928330

/-! ## A384021.P11266555131290603665

`eq[A029837(n+1), A331855(n)]`
-/

namespace A384021.P11266555131290603665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384021.P11266555131290603665

/-! ## A384021.P5323124537730640256

`record[A030109(2*n+3)-A178226(n)]`
-/

namespace A384021.P5323124537730640256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * n + 3) - A178226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384021.P5323124537730640256

/-! ## A384021.P14502006458385878302

`record[xor(A035327(n), A110654(n))]`
-/

namespace A384021.P14502006458385878302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035327 n) (A110654 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384021.P14502006458385878302

/-! ## A384021.P16878914940036322609

`eq[A152765(n), A164885(n)]`
-/

namespace A384021.P16878914940036322609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164885 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384021.P16878914940036322609

/-!
# A384024: a(n) = [x^n] Product_{k=0..n} (1 + (n+k)*x).

The programs for A384024, there is no canonical definition to state claims against.
-/

/-! ## A384024.P11814613842780694149

`A382347(∑[n+2]-1)`
-/

namespace A384024.P11814613842780694149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382347 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A384024.P11814613842780694149

/-! ## A384024.P5951326260981468002

`A093905(2*n²+1)`
-/

namespace A384024.P5951326260981468002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093905 (2 * n ^ 2 + 1)

end

end A384024.P5951326260981468002

/-! ## A384024.P17530067578872707359

`A105954(∑[4*n])`
-/

namespace A384024.P17530067578872707359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A384024.P17530067578872707359

/-! ## A384024.P6912138033256559045

`record[A105954(A225232(n+3))]`
-/

namespace A384024.P6912138033256559045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (A225232 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384024.P6912138033256559045

/-! ## A384024.P682533933813243537

`record[and(A105954(n), A185917(n+1))]`
-/

namespace A384024.P682533933813243537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105954 n) (A185917 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384024.P682533933813243537

/-!
# A384026: a(n) = [x^(2*n)] Product_{k=0..n-1} (1 + k*x)^3.

The programs for A384026, there is no canonical definition to state claims against.
-/

/-! ## A384026.P12930406388229038840

`A339408(A171068(n))`
-/

namespace A384026.P12930406388229038840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339408 (A171068 n).toNat

end

end A384026.P12930406388229038840

/-!
# A384027: a(n) = [x^(3*n)] Product_{k=0..n-1} (1 + k*x)^4.

The programs for A384027, there is no canonical definition to state claims against.
-/

/-! ## A384027.P4862814370607470635

`6^(a(n-1)+4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A384027.P4862814370607470635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  6 ^ (a (n - 1) + 4)

end

end A384027.P4862814370607470635

/-!
# A384028: a(n) = Sum_{k=0..2*n} Stirling1(2*n+1, 2*n+1-k) * Stirling1(2*n+1, k+1).

The programs for A384028, there is no canonical definition to state claims against.
-/

/-! ## A384028.P16331250805241945492

`A129256(2*n)`
-/

namespace A384028.P16331250805241945492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129256 (2 * n)

end

end A384028.P16331250805241945492

/-! ## A384028.P4193584481167015171

`record[A129256(A014681(n))]`
-/

namespace A384028.P4193584481167015171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129256 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384028.P4193584481167015171

/-! ## A384028.P18190654704040497422

`record[A129256(n)/A033999(n)]`
-/

namespace A384028.P18190654704040497422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129256 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384028.P18190654704040497422

/-! ## A384028.P8055969246018872821

`A129256(A004277(n))-A000007(n)`
-/

namespace A384028.P8055969246018872821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129256 (A004277 n).toNat - A000007 n

end

end A384028.P8055969246018872821

/-! ## A384028.P18333864687740511620

`record[C(A129256(n), A331218(n))]`
-/

namespace A384028.P18333864687740511620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129256 n).toNat (A331218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384028.P18333864687740511620

/-!
# A384034: Irregular triangle read by rows. Start with T(1,1) = 1. For each subsequent row, traverse the array so far. For each value m, insert m new values from the next unused integers immediately to the right of m. The process is repeated row by row, where each number in the array dictates how many new values are added after it.

The programs for A384034, there is no canonical definition to state claims against.
-/

/-! ## A384034.P17203854750232206829

`A211097(A211097(2*(n+1))+A034691(n))`
-/

namespace A384034.P17203854750232206829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211097 (A211097 (2 * (n + 1)) + A034691 n).toNat

end

end A384034.P17203854750232206829

/-!
# A384035: Number of vector differences between two permutations of order n, up to multiplication by positive rational numbers and permutations of the components.

The programs for A384035, there is no canonical definition to state claims against.
-/

/-! ## A384035.P10298872797285328835

`A126208(A150917(n))`
-/

namespace A384035.P10298872797285328835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126208 (A150917 n).toNat

end

end A384035.P10298872797285328835

/-! ## A384035.P4157965803172475873

`A054899(A024429(n+2)+15)`
-/

namespace A384035.P4157965803172475873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A024429 (n + 2) + 15).toNat

end

end A384035.P4157965803172475873

/-! ## A384035.P18133832148389911623

`A024417(A161407(n)+A107742(n))`
-/

namespace A384035.P18133832148389911623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A161407 n + A107742 n).toNat

end

end A384035.P18133832148389911623

/-!
# A384037: Number of canonical representative paths with length A383980(n) touching all cells in an n X n grid.

The programs for A384037, there is no canonical definition to state claims against.
-/

/-! ## A384037.P9034988589486851813

`A262877(A262877(n+1)-A225044(n))`
-/

namespace A384037.P9034988589486851813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262877 (A262877 (n + 1) - A225044 n).toNat

end

end A384037.P9034988589486851813

/-! ## A384037.P11386237702248362548

`A034886(A017818(n+1)*A224748(n+1))`
-/

namespace A384037.P11386237702248362548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A017818 (n + 1) * A224748 (n + 1)).toNat

end

end A384037.P11386237702248362548

/-! ## A384037.P9022913680195207810

`A162229(A331287(n+1)+A201949(3*n))`
-/

namespace A384037.P9022913680195207810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A331287 (n + 1) + A201949 (3 * n)).toNat

end

end A384037.P9022913680195207810

/-! ## A384037.P9842720173466401420

`A262877(A026814(n+4)+A002260(n+3))`
-/

namespace A384037.P9842720173466401420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262877 (A026814 (n + 4) + A002260 (n + 3)).toNat

end

end A384037.P9842720173466401420

/-! ## A384037.P13308554017803277012

`A342097(xor(A342097(2*n+5), A373778(2*(n+2))))`
-/

namespace A384037.P13308554017803277012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342097 (Int.xor (A342097 (2 * n + 5)) (A373778 (2 * (n + 2)))).toNat

end

end A384037.P13308554017803277012

/-!
# A384038: Number of 2n X 2n matrices M over GF(2) such that the column space of M is equal to the null space of M.

The programs for A384038, there is no canonical definition to state claims against.
-/

/-! ## A384038.P3168787220566685781

`A002884(n)*A006098(n)`
-/

namespace A384038.P3168787220566685781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A006098 n

end

end A384038.P3168787220566685781

/-!
# A384039: The number of integers k from 1 to n such that gcd(n,k) is a powerful number.

The programs for A384039, the canonical program `A384039.P10188407723644566643` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384039 has offset 1).

The definition of A384039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384039.P7964401740505427496

`∑{d}[n+1, #*A363551((n+1)/#)]`
-/

namespace A384039.P7964401740505427496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A363551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P7964401740505427496

namespace A384039

/-- `∑{d}[n+1, #*A363551((n+1)/#)]` -/
def P7964401740505427496.Spec : Prop :=
  ∀ n, P7964401740505427496.a n = A384039 (n + 1)

end A384039

/-! ## A384039.P9067989898025686815

`∑{d}[n+1, A008683(#)*A069208((n+1)/#)]`
-/

namespace A384039.P9067989898025686815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A069208 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P9067989898025686815

namespace A384039

/-- `∑{d}[n+1, A008683(#)*A069208((n+1)/#)]` -/
def P9067989898025686815.Spec : Prop :=
  ∀ n, P9067989898025686815.a n = A384039 (n + 1)

end A384039

/-! ## A384039.P7893800241299442660

`∑{d}[n+1, A000010(#)*A112526((n+1)/#)]`
-/

namespace A384039.P7893800241299442660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P7893800241299442660

namespace A384039

/-- `∑{d}[n+1, A000010(#)*A112526((n+1)/#)]` -/
def P7893800241299442660.Spec : Prop :=
  ∀ n, P7893800241299442660.a n = A384039 (n + 1)

end A384039

/-! ## A384039.P10188407723644566643

`∑{d}[n+1, A074722(#)*A368248((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A384039

/-- `∑{d}[n+1, A074722(#)*A368248((n+1)/#)]` -/
def P10188407723644566643.Spec : Prop :=
  ∀ n, P10188407723644566643.a n = A384039 (n + 1)

theorem P10188407723644566643.correct : P10188407723644566643.Spec := by
  intro n
  simp only [A384039, Nat.add_sub_cancel]

end A384039

/-! ## A384039.P10528497743222866963

`∑{d}[n+1, A130107(#)*A332712((n+1)/#)]`
-/

namespace A384039.P10528497743222866963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A332712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384039.P10528497743222866963

namespace A384039

/-- `∑{d}[n+1, A130107(#)*A332712((n+1)/#)]` -/
def P10528497743222866963.Spec : Prop :=
  ∀ n, P10528497743222866963.a n = A384039 (n + 1)

end A384039

/-!
# A384040: The number of integers k from 1 to n such that gcd(n,k) is a cubefull number.

The programs for A384040, the canonical program `A384040.P5722598086975707309` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384040 has offset 1).

The definition of A384040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384040.P8769580765195490633

`∑{d}[n+1, A008683(#)*A385136((n+1)/#)]`
-/

namespace A384040.P8769580765195490633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A385136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384040.P8769580765195490633

namespace A384040

/-- `∑{d}[n+1, A008683(#)*A385136((n+1)/#)]` -/
def P8769580765195490633.Spec : Prop :=
  ∀ n, P8769580765195490633.a n = A384040 (n + 1)

end A384040

/-! ## A384040.P5722598086975707309

`∑{d}[n+1, A130107(#)*A365550((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A384040

/-- `∑{d}[n+1, A130107(#)*A365550((n+1)/#)]` -/
def P5722598086975707309.Spec : Prop :=
  ∀ n, P5722598086975707309.a n = A384040 (n + 1)

theorem P5722598086975707309.correct : P5722598086975707309.Spec := by
  intro n
  simp only [A384040, Nat.add_sub_cancel]

end A384040

/-! ## A384040.P14753287880504721020

`A078429(n+1)+A010054(A349080(2*n+3))`
-/

namespace A384040.P14753287880504721020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078429 (n + 1) + A010054 (A349080 (2 * n + 3)).toNat

end

end A384040.P14753287880504721020

namespace A384040

/-- `A078429(n+1)+A010054(A349080(2*n+3))` -/
def P14753287880504721020.Spec : Prop :=
  ∀ n, P14753287880504721020.a n = A384040 (n + 1)

end A384040

/-! ## A384040.P699262847315846145

`A330944(A061200(n+1))+A000010(n+1)`
-/

namespace A384040.P699262847315846145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (A061200 (n + 1)).toNat + A000010 (n + 1)

end

end A384040.P699262847315846145

namespace A384040

/-- `A330944(A061200(n+1))+A000010(n+1)` -/
def P699262847315846145.Spec : Prop :=
  ∀ n, P699262847315846145.a n = A384040 (n + 1)

end A384040

/-! ## A384040.P16053258483637055771

`A370813(A067592(n+2))+A000010(n+1)`
-/

namespace A384040.P16053258483637055771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A067592 (n + 2)).toNat + A000010 (n + 1)

end

end A384040.P16053258483637055771

namespace A384040

/-- `A370813(A067592(n+2))+A000010(n+1)` -/
def P16053258483637055771.Spec : Prop :=
  ∀ n, P16053258483637055771.a n = A384040 (n + 1)

end A384040

/-!
# A384041: The number of integers k from 1 to n such that gcd(n,k) is an exponentially odd number.

The programs for A384041, the canonical program `A384041.P8191093603258971194` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384041 has offset 1).

The definition of A384041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384041.P17228709748366526295

`∑{d}[n+1, A056671(#)*A074722((n+1)/#)]`
-/

namespace A384041.P17228709748366526295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056671 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P17228709748366526295

namespace A384041

/-- `∑{d}[n+1, A056671(#)*A074722((n+1)/#)]` -/
def P17228709748366526295.Spec : Prop :=
  ∀ n, P17228709748366526295.a n = A384041 (n + 1)

end A384041

/-! ## A384041.P1629975240177135137

`∑{d}[n+1, A000010(#)*A295316((n+1)/#)]`
-/

namespace A384041.P1629975240177135137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A295316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P1629975240177135137

namespace A384041

/-- `∑{d}[n+1, A000010(#)*A295316((n+1)/#)]` -/
def P1629975240177135137.Spec : Prop :=
  ∀ n, P1629975240177135137.a n = A384041 (n + 1)

end A384041

/-! ## A384041.P8191093603258971194

`∑{d}[n+1, A007432(#)*A332730((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A384041

/-- `∑{d}[n+1, A007432(#)*A332730((n+1)/#)]` -/
def P8191093603258971194.Spec : Prop :=
  ∀ n, P8191093603258971194.a n = A384041 (n + 1)

theorem P8191093603258971194.correct : P8191093603258971194.Spec := by
  intro n
  simp only [A384041, Nat.add_sub_cancel]

end A384041

/-! ## A384041.P5594863098089153282

`∑{d}[n+1, A008683(#)*A385135((n+1)/#)]`
-/

namespace A384041.P5594863098089153282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A385135 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P5594863098089153282

namespace A384041

/-- `∑{d}[n+1, A008683(#)*A385135((n+1)/#)]` -/
def P5594863098089153282.Spec : Prop :=
  ∀ n, P5594863098089153282.a n = A384041 (n + 1)

end A384041

/-! ## A384041.P10269904187605709831

`∑{d}[n+1, A189021(#)*A206369((n+1)/#)]`
-/

namespace A384041.P10269904187605709831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189021 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384041.P10269904187605709831

namespace A384041

/-- `∑{d}[n+1, A189021(#)*A206369((n+1)/#)]` -/
def P10269904187605709831.Spec : Prop :=
  ∀ n, P10269904187605709831.a n = A384041 (n + 1)

end A384041

/-!
# A384042: The number of integers k from 1 to n such that gcd(n,k) is a 5-rough number (A007310).

The programs for A384042, the canonical program `A384042.P646555280578403795` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384042 has offset 1).

The definition of A384042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384042.P646555280578403795

`A186101(A026741(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A384042

/-- `A186101(A026741(n+1))` -/
def P646555280578403795.Spec : Prop :=
  ∀ n, P646555280578403795.a n = A384042 (n + 1)

theorem P646555280578403795.correct : P646555280578403795.Spec := by
  intro n
  simp only [A384042, Nat.add_sub_cancel]

end A384042

/-! ## A384042.P337697247432340938

`A060789(n+1)*A177702(n)`
-/

namespace A384042.P337697247432340938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 1) * A177702 n

end

end A384042.P337697247432340938

namespace A384042

/-- `A060789(n+1)*A177702(n)` -/
def P337697247432340938.Spec : Prop :=
  ∀ n, P337697247432340938.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P3549203194672424391

`A002618(n+1)/A372671(n+1)`
-/

namespace A384042.P3549203194672424391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A372671 (n + 1) : ℚ)

end

end A384042.P3549203194672424391

namespace A384042

/-- `A002618(n+1)/A372671(n+1)` -/
def P3549203194672424391.Spec : Prop :=
  ∀ n, P3549203194672424391.a n = (A384042 (n + 1) : ℚ)

end A384042

/-! ## A384042.P15240397082831964510

`∑{d}[n+1, A078708(#)*A092673((n+1)/#)]`
-/

namespace A384042.P15240397082831964510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078708 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384042.P15240397082831964510

namespace A384042

/-- `∑{d}[n+1, A078708(#)*A092673((n+1)/#)]` -/
def P15240397082831964510.Spec : Prop :=
  ∀ n, P15240397082831964510.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P11640772797229518303

`∑{d}[n+1, A008683(#)*A385138((n+1)/#)]`
-/

namespace A384042.P11640772797229518303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A385138 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384042.P11640772797229518303

namespace A384042

/-- `∑{d}[n+1, A008683(#)*A385138((n+1)/#)]` -/
def P11640772797229518303.Spec : Prop :=
  ∀ n, P11640772797229518303.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P2991766207455687918

`∑{d}[n+1, A121443(#)*A361984((n+1)/#)]`
-/

namespace A384042.P2991766207455687918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A121443 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384042.P2991766207455687918

namespace A384042

/-- `∑{d}[n+1, A121443(#)*A361984((n+1)/#)]` -/
def P2991766207455687918.Spec : Prop :=
  ∀ n, P2991766207455687918.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P6400825078382105516

`∑{d}[n+1, A162289(#)*A359101((n+1)/#)]`
-/

namespace A384042.P6400825078382105516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162289 d * A359101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384042.P6400825078382105516

namespace A384042

/-- `∑{d}[n+1, A162289(#)*A359101((n+1)/#)]` -/
def P6400825078382105516.Spec : Prop :=
  ∀ n, P6400825078382105516.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P12713480442472018472

`∑{d}[n+1, A000010(#)*A232991((n+1)/#-1)]`
-/

namespace A384042.P12713480442472018472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A232991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A384042.P12713480442472018472

namespace A384042

/-- `∑{d}[n+1, A000010(#)*A232991((n+1)/#-1)]` -/
def P12713480442472018472.Spec : Prop :=
  ∀ n, P12713480442472018472.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P17168841171934838125

`A026741(A060789(n+1)+A026741(n+1))`
-/

namespace A384042.P17168841171934838125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A060789 (n + 1) + A026741 (n + 1)).toNat

end

end A384042.P17168841171934838125

namespace A384042

/-- `A026741(A060789(n+1)+A026741(n+1))` -/
def P17168841171934838125.Spec : Prop :=
  ∀ n, P17168841171934838125.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P16134977306972980564

`A075861(lcm(2, n+1))`
-/

namespace A384042.P16134977306972980564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (Nat.lcm 2 (n + 1))

end

end A384042.P16134977306972980564

namespace A384042

/-- `A075861(lcm(2, n+1))` -/
def P16134977306972980564.Spec : Prop :=
  ∀ n, P16134977306972980564.a n = A384042 (n + 1)

end A384042

/-! ## A384042.P420108842356470401

`A075861(A109043(n+1))`
-/

namespace A384042.P420108842356470401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (A109043 (n + 1)).toNat

end

end A384042.P420108842356470401

namespace A384042

/-- `A075861(A109043(n+1))` -/
def P420108842356470401.Spec : Prop :=
  ∀ n, P420108842356470401.a n = A384042 (n + 1)

end A384042

/-!
# A384045: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) if it is greater than it, else it is coprime to a(n-1) if it is less than it.

The programs for A384045, there is no canonical definition to state claims against.
-/

/-! ## A384045.P17362351790321568147

`A248805(A000041(2*(n+1)))+A127202(n+1)`
-/

namespace A384045.P17362351790321568147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (A000041 (2 * (n + 1))).toNat + A127202 (n + 1)

end

end A384045.P17362351790321568147

/-!
# A384046: Triangle in which the n-th row gives the numbers from 1 to n whose largest divisor that is a unitary divisor of n is 1.

The programs for A384046, there is no canonical definition to state claims against.
-/

/-! ## A384046.P8307802197241334805

`A278961(n+1)%A279000(3*(n+1))`
-/

namespace A384046.P8307802197241334805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278961 (n + 1)) (A279000 (3 * (n + 1)))

end

end A384046.P8307802197241334805

/-! ## A384046.P14407699392109042291

`A278961(n+1)+A000007(A133399(n))`
-/

namespace A384046.P14407699392109042291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278961 (n + 1) + A000007 (A133399 n).toNat

end

end A384046.P14407699392109042291

/-! ## A384046.P16569081459767355445

`A278961(n+1)+A010051(A291789(n))`
-/

namespace A384046.P16569081459767355445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278961 (n + 1) + A010051 (A291789 n).toNat

end

end A384046.P16569081459767355445

/-! ## A384046.P4008813539039071039

`A278961(n+1)%A179885(A278973(n))`
-/

namespace A384046.P4008813539039071039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278961 (n + 1)) (A179885 (A278973 n).toNat)

end

end A384046.P4008813539039071039

/-! ## A384046.P17812404407225469449

`A278961(n+1)+A045763(A000043(n+1))`
-/

namespace A384046.P17812404407225469449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278961 (n + 1) + A045763 (A000043 (n + 1)).toNat

end

end A384046.P17812404407225469449

/-!
# A384047: Triangle read by rows: T(n, k) for 1 <= k <= n is the largest divisor of k that is a unitary divisor of n.

The programs for A384047, there is no canonical definition to state claims against.
-/

/-! ## A384047.P102824292521358904

`A165430(n+1)+A088918(A054495(3*n+4))`
-/

namespace A384047.P102824292521358904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (n + 1) + A088918 (A054495 (3 * n + 4)).toNat

end

end A384047.P102824292521358904

/-! ## A384047.P3614758333042492333

`gcd(A306364(n+2), A384245(n+1))`
-/

namespace A384047.P3614758333042492333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A306364 (n + 2)) (A384245 (n + 1))

end

end A384047.P3614758333042492333

/-! ## A384047.P14488233689144874262

`A384245(n+1)%A002907(n)`
-/

namespace A384047.P14488233689144874262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384245 (n + 1)) (A002907 n)

end

end A384047.P14488233689144874262

/-! ## A384047.P4174679284890468947

`gcd(A050873(n+1), A279618(n+1))`
-/

namespace A384047.P4174679284890468947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050873 (n + 1)) (A279618 (n + 1))

end

end A384047.P4174679284890468947

/-! ## A384047.P18192812117096688719

`and(A359085(n+1), A384245(n+1))`
-/

namespace A384047.P18192812117096688719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359085 (n + 1)) (A384245 (n + 1))

end

end A384047.P18192812117096688719

/-!
# A384048: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is squarefree.

The programs for A384048, there is no canonical definition to state claims against.
-/

/-! ## A384048.P16953161147226738244

`A384041(A384049(n+1)%A254753(n+1))`
-/

namespace A384048.P16953161147226738244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384041 (Int.tmod (A384049 (n + 1)) (A254753 (n + 1))).toNat

end

end A384048.P16953161147226738244

/-! ## A384048.P459395063334419423

`A063659(A384049(n+1))%A123142(n)`
-/

namespace A384048.P459395063334419423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063659 (A384049 (n + 1)).toNat) (A123142 (n + 64))

end

end A384048.P459395063334419423

/-! ## A384048.P16181728013811934660

`A384041(A384049(n+1))%A057704(n+1)`
-/

namespace A384048.P16181728013811934660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384041 (A384049 (n + 1)).toNat) (A057704 (n + 1))

end

end A384048.P16181728013811934660

/-! ## A384048.P14462382571003541148

`A384249(n+1)+A014063(A025049(n))`
-/

namespace A384048.P14462382571003541148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384249 (n + 1) + A014063 (A025049 n).toNat

end

end A384048.P14462382571003541148

/-! ## A384048.P1177767984779050018

`or(A023531(A001405(n)), A384249(n+1))`
-/

namespace A384048.P1177767984779050018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023531 (A001405 n).toNat) (A384249 (n + 1))

end

end A384048.P1177767984779050018

/-!
# A384049: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is cubefree.

The programs for A384049, the canonical program `A384049.P15976918065604329778` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384049 has offset 1).

The definition of A384049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384049.P15976918065604329778

`A360539(n+1)*A385195(A360540(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A384049

/-- `A360539(n+1)*A385195(A360540(n+1))` -/
def P15976918065604329778.Spec : Prop :=
  ∀ n, P15976918065604329778.a n = A384049 (n + 1)

theorem P15976918065604329778.correct : P15976918065604329778.Spec := by
  intro n
  simp only [A384049, Nat.add_sub_cancel]

end A384049

/-! ## A384049.P4991542298340371683

`A384052(n+1)/A384051(n+1)*A384054(n+1)`
-/

namespace A384049.P4991542298340371683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384052 (n + 1) : ℚ) / (A384051 (n + 1) : ℚ) * (A384054 (n + 1) : ℚ)

end

end A384049.P4991542298340371683

namespace A384049

/-- `A384052(n+1)/A384051(n+1)*A384054(n+1)` -/
def P4991542298340371683.Spec : Prop :=
  ∀ n, P4991542298340371683.a n = (A384049 (n + 1) : ℚ)

end A384049

/-! ## A384049.P15565350357909634283

`A384055(n+1)/A384051(n+1)*A384056(n+1)`
-/

namespace A384049.P15565350357909634283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384055 (n + 1) : ℚ) / (A384051 (n + 1) : ℚ) * (A384056 (n + 1) : ℚ)

end

end A384049.P15565350357909634283

namespace A384049

/-- `A384055(n+1)/A384051(n+1)*A384056(n+1)` -/
def P15565350357909634283.Spec : Prop :=
  ∀ n, P15565350357909634283.a n = (A384049 (n + 1) : ℚ)

end A384049

/-!
# A384050: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a powerful number.

The programs for A384050, the canonical program `A384050.P11181728882137960470` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384050 has offset 1).

The definition of A384050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384050.P9921830432147467717

`A002618(n+1)/A254503(n+1)`
-/

namespace A384050.P9921830432147467717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A254503 (n + 1) : ℚ)

end

end A384050.P9921830432147467717

namespace A384050

/-- `A002618(n+1)/A254503(n+1)` -/
def P9921830432147467717.Spec : Prop :=
  ∀ n, P9921830432147467717.a n = (A384050 (n + 1) : ℚ)

end A384050

/-! ## A384050.P11181728882137960470

`A057521(n+1)*A380161(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A384050

/-- `A057521(n+1)*A380161(n+1)` -/
def P11181728882137960470.Spec : Prop :=
  ∀ n, P11181728882137960470.a n = A384050 (n + 1)

theorem P11181728882137960470.correct : P11181728882137960470.Spec := by
  intro n
  simp only [A384050, Nat.add_sub_cancel]

end A384050

/-! ## A384050.P11829927986085182644

`A127473(n+1)/A114810(n+1)`
-/

namespace A384050.P11829927986085182644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127473 (n + 1) : ℚ) / (A114810 (n + 1) : ℚ)

end

end A384050.P11829927986085182644

namespace A384050

/-- `A127473(n+1)/A114810(n+1)` -/
def P11829927986085182644.Spec : Prop :=
  ∀ n, P11829927986085182644.a n = (A384050 (n + 1) : ℚ)

end A384050

/-! ## A384050.P13054805604215428595

`∑{d}[n+1, A008683(#)*A057723((n+1)/#)]`
-/

namespace A384050.P13054805604215428595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A057723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384050.P13054805604215428595

namespace A384050

/-- `∑{d}[n+1, A008683(#)*A057723((n+1)/#)]` -/
def P13054805604215428595.Spec : Prop :=
  ∀ n, P13054805604215428595.a n = A384050 (n + 1)

end A384050

/-! ## A384050.P13445883041604322577

`∑{d}[n+1, A055615(#)*A069193((n+1)/#)]`
-/

namespace A384050.P13445883041604322577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A069193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384050.P13445883041604322577

namespace A384050

/-- `∑{d}[n+1, A055615(#)*A069193((n+1)/#)]` -/
def P13445883041604322577.Spec : Prop :=
  ∀ n, P13445883041604322577.a n = A384050 (n + 1)

end A384050

/-! ## A384050.P6605005014791580594

`∑{d}[n+1, A000010(#)*A397412((n+1)/#)]`
-/

namespace A384050.P6605005014791580594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A397412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A384050.P6605005014791580594

namespace A384050

/-- `∑{d}[n+1, A000010(#)*A397412((n+1)/#)]` -/
def P6605005014791580594.Spec : Prop :=
  ∀ n, P6605005014791580594.a n = A384050 (n + 1)

end A384050

/-! ## A384050.P12439208704346131382

`A057521(n+1)*A349442(A055231(n+1))`
-/

namespace A384050.P12439208704346131382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) * A349442 (A055231 (n + 1)).toNat

end

end A384050.P12439208704346131382

namespace A384050

/-- `A057521(n+1)*A349442(A055231(n+1))` -/
def P12439208704346131382.Spec : Prop :=
  ∀ n, P12439208704346131382.a n = A384050 (n + 1)

end A384050

/-! ## A384050.P4466071319715539031

`A360540(n+1)*A384052(A360539(n+1))`
-/

namespace A384050.P4466071319715539031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1) * A384052 (A360539 (n + 1)).toNat

end

end A384050.P4466071319715539031

namespace A384050

/-- `A360540(n+1)*A384052(A360539(n+1))` -/
def P4466071319715539031.Spec : Prop :=
  ∀ n, P4466071319715539031.a n = A384050 (n + 1)

end A384050

/-! ## A384050.P4050633283158856466

`A000010(n+1)*A000010(n+1)/A114810(n+1)`
-/

namespace A384050.P4050633283158856466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A000010 (n + 1) : ℚ) / (A114810 (n + 1) : ℚ)

end

end A384050.P4050633283158856466

namespace A384050

/-- `A000010(n+1)*A000010(n+1)/A114810(n+1)` -/
def P4050633283158856466.Spec : Prop :=
  ∀ n, P4050633283158856466.a n = (A384050 (n + 1) : ℚ)

end A384050

/-! ## A384050.P9361377213061853722

`A000010(n+1)*A057521(n+1)/A380160(n+1)`
-/

namespace A384050.P9361377213061853722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A057521 (n + 1) : ℚ) / (A380160 (n + 1) : ℚ)

end

end A384050.P9361377213061853722

namespace A384050

/-- `A000010(n+1)*A057521(n+1)/A380160(n+1)` -/
def P9361377213061853722.Spec : Prop :=
  ∀ n, P9361377213061853722.a n = (A384050 (n + 1) : ℚ)

end A384050

/-! ## A384050.P6229155166210652007

`A384052(n+1)/A384048(n+1)*A384054(n+1)`
-/

namespace A384050.P6229155166210652007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384052 (n + 1) : ℚ) / (A384048 (n + 1) : ℚ) * (A384054 (n + 1) : ℚ)

end

end A384050.P6229155166210652007

namespace A384050

/-- `A384052(n+1)/A384048(n+1)*A384054(n+1)` -/
def P6229155166210652007.Spec : Prop :=
  ∀ n, P6229155166210652007.a n = (A384050 (n + 1) : ℚ)

end A384050

/-! ## A384050.P1371729092958783701

`A384055(n+1)/A384048(n+1)*A384056(n+1)`
-/

namespace A384050.P1371729092958783701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384055 (n + 1) : ℚ) / (A384048 (n + 1) : ℚ) * (A384056 (n + 1) : ℚ)

end

end A384050.P1371729092958783701

namespace A384050

/-- `A384055(n+1)/A384048(n+1)*A384056(n+1)` -/
def P1371729092958783701.Spec : Prop :=
  ∀ n, P1371729092958783701.a n = (A384050 (n + 1) : ℚ)

end A384050

/-! ## A384050.P538625494032433910

`A114810((n+1)²)/A114810(n+1)`
-/

namespace A384050.P538625494032433910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114810 ((n + 1) ^ 2) : ℚ) / (A114810 (n + 1) : ℚ)

end

end A384050.P538625494032433910

namespace A384050

/-- `A114810((n+1)²)/A114810(n+1)` -/
def P538625494032433910.Spec : Prop :=
  ∀ n, P538625494032433910.a n = (A384050 (n + 1) : ℚ)

end A384050

/-! ## A384050.P1272136254502105786

`A254503((n+1)²)/A254503(n+1)`
-/

namespace A384050.P1272136254502105786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254503 ((n + 1) ^ 2) : ℚ) / (A254503 (n + 1) : ℚ)

end

end A384050.P1272136254502105786

namespace A384050

/-- `A254503((n+1)²)/A254503(n+1)` -/
def P1272136254502105786.Spec : Prop :=
  ∀ n, P1272136254502105786.a n = (A384050 (n + 1) : ℚ)

end A384050

/-!
# A384051: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a cubefull number.

The programs for A384051, there is no canonical definition to state claims against.
-/

/-! ## A384051.P8811005248341130855

`A360540(n+1)*A384053(A360539(n+1))`
-/

namespace A384051.P8811005248341130855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1) * A384053 (A360539 (n + 1)).toNat

end

end A384051.P8811005248341130855

/-! ## A384051.P13266980843249537985

`A384052(n+1)/A384049(n+1)*A384054(n+1)`
-/

namespace A384051.P13266980843249537985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384052 (n + 1) : ℚ) / (A384049 (n + 1) : ℚ) * (A384054 (n + 1) : ℚ)

end

end A384051.P13266980843249537985

/-! ## A384051.P496032411320611590

`A101637(n+1)+A047994(n+1)+A010051(A117086(2*n+5))`
-/

namespace A384051.P496032411320611590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1) + (A047994 (n + 1) + A010051 (A117086 (2 * n + 5)).toNat)

end

end A384051.P496032411320611590

/-! ## A384051.P11860117939172958528

`A245485(A245480(n+2))+A047994(n+1)`
-/

namespace A384051.P11860117939172958528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245485 (A245480 (n + 2)).toNat + A047994 (n + 1)

end

end A384051.P11860117939172958528

/-! ## A384051.P11779823798859978220

`A244413(A008383(n+1))+A047994(n+1)`
-/

namespace A384051.P11779823798859978220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (A008383 (n + 1)).toNat + A047994 (n + 1)

end

end A384051.P11779823798859978220

/-!
# A384052: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a square.

The programs for A384052, there is no canonical definition to state claims against.
-/

/-! ## A384052.P1870666390123236220

`A384049(n+1)*A384051(n+1)/A384054(n+1)`
-/

namespace A384052.P1870666390123236220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384049 (n + 1) * A384051 (n + 1) : ℚ) / (A384054 (n + 1) : ℚ)

end

end A384052.P1870666390123236220

/-! ## A384052.P7163787550869866764

`A384250(n+1)+A121373(A367915(2*(n+2)))`
-/

namespace A384052.P7163787550869866764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384250 (n + 1) + A121373 (A367915 (2 * (n + 2))).toNat

end

end A384052.P7163787550869866764

/-! ## A384052.P1983176430496865777

`A384050(n+1)-A169672(A008303(n+1))`
-/

namespace A384052.P1983176430496865777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384050 (n + 1) - A169672 (A008303 (n + 1)).toNat

end

end A384052.P1983176430496865777

/-! ## A384052.P15979883259960404751

`A384050(n+1)-val(A000030(A282453(n)), 6)`
-/

namespace A384052.P15979883259960404751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384050 (n + 1) - (SequenceMachineLib.valuation (A000030 (A282453 n).toNat).toNat 6 : ℤ)

end

end A384052.P15979883259960404751

/-! ## A384052.P7729131692356260507

`A384050(n+1)+A048272(A001209(2*(n+2)))%2`
-/

namespace A384052.P7729131692356260507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384050 (n + 1) + Int.tmod (A048272 (A001209 (2 * (n + 2))).toNat) 2

end

end A384052.P7729131692356260507

/-!
# A384053: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a cube.

The programs for A384053, there is no canonical definition to state claims against.
-/

/-! ## A384053.P15312151567182664919

`A384051(n+1)-A035675(A377281(3*n+2))`
-/

namespace A384053.P15312151567182664919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384051 (n + 1) - A035675 (A377281 (3 * n + 2)).toNat

end

end A384053.P15312151567182664919

/-! ## A384053.P6884755400127143729

`A373598(A269984(3*n+1))+A047994(n+1)`
-/

namespace A384053.P6884755400127143729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373598 (A269984 (3 * n + 1)).toNat + A047994 (n + 1)

end

end A384053.P6884755400127143729

/-! ## A384053.P325219830402419598

`A047994(n+1)+A025426(A361587(n))`
-/

namespace A384053.P325219830402419598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + A025426 (A361587 n).toNat

end

end A384053.P325219830402419598

/-! ## A384053.P10702287054017949787

`A047994(n+1)+A010054(A189064(n+4))`
-/

namespace A384053.P10702287054017949787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + A010054 (A189064 (n + 4)).toNat

end

end A384053.P10702287054017949787

/-! ## A384053.P6709321720023984316

`A047994(n+1)+A003982(A098859(3*n+2))`
-/

namespace A384053.P6709321720023984316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + A003982 (A098859 (3 * n + 2)).toNat

end

end A384053.P6709321720023984316

/-!
# A384054: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is an exponentially odd number.

The programs for A384054, there is no canonical definition to state claims against.
-/

/-! ## A384054.P18287213365845364415

`A384048(n+1)+A045698(A241638(2*n))`
-/

namespace A384054.P18287213365845364415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384048 (n + 1) + A045698 (A241638 (2 * n)).toNat

end

end A384054.P18287213365845364415

/-! ## A384054.P5212169986057515721

`A102097(A000217(2*n+1)*A384249(n+1))`
-/

namespace A384054.P5212169986057515721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A000217 (2 * n + 1) * A384249 (n + 1)).toNat

end

end A384054.P5212169986057515721

/-! ## A384054.P2748330057471576854

`A384249(n+1)+A355432(A132978(n+1))`
-/

namespace A384054.P2748330057471576854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384249 (n + 1) + A355432 (A132978 (n + 1)).toNat

end

end A384054.P2748330057471576854

/-! ## A384054.P12735744462210781477

`A384048(n+1)-A106346(A000041(2*n+1))`
-/

namespace A384054.P12735744462210781477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384048 (n + 1) - A106346 (A000041 (2 * n + 1)).toNat

end

end A384054.P12735744462210781477

/-! ## A384054.P15897715430645879668

`n+1-A007814(A219727(2*n+1))`
-/

namespace A384054.P15897715430645879668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007814 (A219727 (2 * n + 1)).toNat

end

end A384054.P15897715430645879668

/-!
# A384055: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is odd.

The programs for A384055, the canonical program `A384055.P8672205794248642613` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384055 has offset 1).

The definition of A384055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384055.P15211214166766874485

`∑{d}[n+1, A080736(#)]`
-/

namespace A384055.P15211214166766874485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080736 d

end

end A384055.P15211214166766874485

namespace A384055

/-- `∑{d}[n+1, A080736(#)]` -/
def P15211214166766874485.Spec : Prop :=
  ∀ n, P15211214166766874485.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P8672205794248642613

`A129527(A026741(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A384055

/-- `A129527(A026741(n+1))` -/
def P8672205794248642613.Spec : Prop :=
  ∀ n, P8672205794248642613.a n = A384055 (n + 1)

theorem P8672205794248642613.correct : P8672205794248642613.Spec := by
  intro n
  simp only [A384055, Nat.add_sub_cancel]

end A384055

/-! ## A384055.P14639269985157692122

`A133090(n+1)-A153733(n)`
-/

namespace A384055.P14639269985157692122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (n + 1) - A153733 n

end

end A384055.P14639269985157692122

namespace A384055

/-- `A133090(n+1)-A153733(n)` -/
def P14639269985157692122.Spec : Prop :=
  ∀ n, P14639269985157692122.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P13057606554052031559

`A331739(n+1)+A193356(n+1)`
-/

namespace A384055.P13057606554052031559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1) + A193356 (n + 1)

end

end A384055.P13057606554052031559

namespace A384055

/-- `A331739(n+1)+A193356(n+1)` -/
def P13057606554052031559.Spec : Prop :=
  ∀ n, P13057606554052031559.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P14902847226330473351

`A000265(n+1)*A140670(n+1)`
-/

namespace A384055.P14902847226330473351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A140670 (n + 1)

end

end A384055.P14902847226330473351

namespace A384055

/-- `A000265(n+1)*A140670(n+1)` -/
def P14902847226330473351.Spec : Prop :=
  ∀ n, P14902847226330473351.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P10071416254131552854

`A164900(n)-(A228564(n)+A000265(n+1))`
-/

namespace A384055.P10071416254131552854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164900 n - (A228564 n + A000265 (n + 1))

end

end A384055.P10071416254131552854

namespace A384055

/-- `A164900(n)-(A228564(n)+A000265(n+1))` -/
def P10071416254131552854.Spec : Prop :=
  ∀ n, P10071416254131552854.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P8486671023656454108

`A026741(n+1)+A026741(n+1)-A000265(n+1)`
-/

namespace A384055.P8486671023656454108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) + (A026741 (n + 1) - A000265 (n + 1))

end

end A384055.P8486671023656454108

namespace A384055

/-- `A026741(n+1)+A026741(n+1)-A000265(n+1)` -/
def P8486671023656454108.Spec : Prop :=
  ∀ n, P8486671023656454108.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P16775790879378603776

`A214748(lcm(2, n+1))`
-/

namespace A384055.P16775790879378603776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214748 (Nat.lcm 2 (n + 1))

end

end A384055.P16775790879378603776

namespace A384055

/-- `A214748(lcm(2, n+1))` -/
def P16775790879378603776.Spec : Prop :=
  ∀ n, P16775790879378603776.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P8947219514924633844

`A214748(A109043(n+1))`
-/

namespace A384055.P8947219514924633844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214748 (A109043 (n + 1)).toNat

end

end A384055.P8947219514924633844

namespace A384055

/-- `A214748(A109043(n+1))` -/
def P8947219514924633844.Spec : Prop :=
  ∀ n, P8947219514924633844.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P482651652556092122

`A214748(A347365(n+1))`
-/

namespace A384055.P482651652556092122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214748 (A347365 (n + 1)).toNat

end

end A384055.P482651652556092122

namespace A384055

/-- `A214748(A347365(n+1))` -/
def P482651652556092122.Spec : Prop :=
  ∀ n, P482651652556092122.a n = A384055 (n + 1)

end A384055

/-! ## A384055.P16242187058413922558

`A127472(A236453(n))`
-/

namespace A384055.P16242187058413922558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127472 (A236453 n).toNat

end

end A384055.P16242187058413922558

namespace A384055

/-- `A127472(A236453(n))` -/
def P16242187058413922558.Spec : Prop :=
  ∀ n, P16242187058413922558.a n = A384055 (n + 1)

end A384055

/-!
# A384056: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a power of 2.

The programs for A384056, the canonical program `A384056.P10352032007918448810` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384056 has offset 1).

The definition of A384056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384056.P6240368577765737459

`2^val(n+1, 2)*A047994((n+1)/2^val(n+1, 2))`
-/

namespace A384056.P6240368577765737459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A384056.P6240368577765737459

namespace A384056

/-- `2^val(n+1, 2)*A047994((n+1)/2^val(n+1, 2))` -/
def P6240368577765737459.Spec : Prop :=
  ∀ n, P6240368577765737459.a n = A384056 (n + 1)

end A384056

/-! ## A384056.P10352032007918448810

`A006519(n+1)*A047994(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A384056

/-- `A006519(n+1)*A047994(A000265(n+1))` -/
def P10352032007918448810.Spec : Prop :=
  ∀ n, P10352032007918448810.a n = A384056 (n + 1)

theorem P10352032007918448810.correct : P10352032007918448810.Spec := by
  intro n
  simp only [A384056, Nat.add_sub_cancel]

end A384056

/-! ## A384056.P14320235990056722913

`A385195(2*(n+1))-A047994(n+1)`
-/

namespace A384056.P14320235990056722913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385195 (2 * (n + 1)) - A047994 (n + 1)

end

end A384056.P14320235990056722913

namespace A384056

/-- `A385195(2*(n+1))-A047994(n+1)` -/
def P14320235990056722913.Spec : Prop :=
  ∀ n, P14320235990056722913.a n = A384056 (n + 1)

end A384056

/-! ## A384056.P2934585176834887931

`A142150(A344875(2*(n+1))-A344875(n+1))`
-/

namespace A384056.P2934585176834887931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A344875 (2 * (n + 1)) - A344875 (n + 1)).toNat

end

end A384056.P2934585176834887931

namespace A384056

/-- `A142150(A344875(2*(n+1))-A344875(n+1))` -/
def P2934585176834887931.Spec : Prop :=
  ∀ n, P2934585176834887931.a n = A384056 (n + 1)

end A384056

/-! ## A384056.P8483020412323604868

`A289436(A344875(2*(n+1))-A344875(n+1))`
-/

namespace A384056.P8483020412323604868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A344875 (2 * (n + 1)) - A344875 (n + 1)).toNat

end

end A384056.P8483020412323604868

namespace A384056

/-- `A289436(A344875(2*(n+1))-A344875(n+1))` -/
def P8483020412323604868.Spec : Prop :=
  ∀ n, P8483020412323604868.a n = A384056 (n + 1)

end A384056

/-!
# A384057: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 3-smooth number.

The programs for A384057, there is no canonical definition to state claims against.
-/

/-! ## A384057.P2384425326655804317

`A372671(n+1)%A372682(n)`
-/

namespace A384057.P2384425326655804317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372671 (n + 1)) (A372682 n)

end

end A384057.P2384425326655804317

/-! ## A384057.P17282777048765886182

`A372671(A290971(2*n+3)+n+1)`
-/

namespace A384057.P17282777048765886182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372671 (A290971 (2 * n + 3) + (n + 1 : ℤ)).toNat

end

end A384057.P17282777048765886182

/-! ## A384057.P7213641990648437730

`A372671(n+1)^A243832(3*n+2)!`
-/

namespace A384057.P7213641990648437730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372671 (n + 1) ^ Nat.factorial (A243832 (3 * n + 2)).toNat

end

end A384057.P7213641990648437730

/-! ## A384057.P2011920330449481223

`A195459(2*(n+1))%record[A347068(n+1)]`
-/

namespace A384057.P2011920330449481223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195459 (2 * (n + 1))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A384057.P2011920330449481223

/-! ## A384057.P17186346241723199239

`A195459(2*n+2)%A309150(2*n+3)`
-/

namespace A384057.P17186346241723199239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195459 (2 * n + 2)) (A309150 (2 * n + 3))

end

end A384057.P17186346241723199239

/-!
# A384058: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 5-rough number (A007310).

The programs for A384058, there is no canonical definition to state claims against.
-/

/-! ## A384058.P15493282187181747626

`A320656(A018009(n+1))+A047994(n+1)`
-/

namespace A384058.P15493282187181747626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A018009 (n + 1)).toNat + A047994 (n + 1)

end

end A384058.P15493282187181747626

/-! ## A384058.P5908945715607055835

`or(A047994(n+1), A369653(A127980(n+1)))`
-/

namespace A384058.P5908945715607055835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047994 (n + 1)) (A369653 (A127980 (n + 1)).toNat)

end

end A384058.P5908945715607055835

/-! ## A384058.P14818337395134491191

`or(A047994(n+1), A179020(A001522(3*n)))`
-/

namespace A384058.P14818337395134491191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047994 (n + 1)) (A179020 (A001522 (3 * n)).toNat)

end

end A384058.P14818337395134491191

/-! ## A384058.P7484527746829400691

`or(A010060(A024166(n)), A047994(n+1))`
-/

namespace A384058.P7484527746829400691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A024166 n).toNat) (A047994 (n + 1))

end

end A384058.P7484527746829400691

/-! ## A384058.P4257891845520410804

`A185118(A090884(n+1))+A047994(n+1)`
-/

namespace A384058.P4257891845520410804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185118 (A090884 (n + 1)).toNat + A047994 (n + 1)

end

end A384058.P4257891845520410804

/-!
# A384063: Partial sums of A172471.

The programs for A384063, the canonical program `A384063.P1749494280284243678` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384063 has offset 0).

The definition of A384063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384063.P1749494280284243678

`∑[floor(sqrt(2*n))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A384063

/-- `∑[floor(sqrt(2*n))]` -/
def P1749494280284243678.Spec : Prop :=
  ∀ n, (P1749494280284243678.a n : ℤ) = A384063 n

theorem P1749494280284243678.correct : P1749494280284243678.Spec := by
  intro n
  simp only [A384063]

end A384063

/-! ## A384063.P1468884548082346679

`floor(a(n-1)+sqrt(2*n))` with `a(0)=0`
-/

namespace A384063.P1468884548082346679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.sqrt (2 * n : ℝ)⌋

end

end A384063.P1468884548082346679

namespace A384063

/-- `floor(a(n-1)+sqrt(2*n))` -/
def P1468884548082346679.Spec : Prop :=
  ∀ n, P1468884548082346679.a n = A384063 n

end A384063

/-! ## A384063.P3750882619756351181

`and(∑[A172471(n)], -1)`
-/

namespace A384063.P3750882619756351181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A384063.P3750882619756351181

namespace A384063

/-- `and(∑[A172471(n)], -1)` -/
def P3750882619756351181.Spec : Prop :=
  ∀ n, P3750882619756351181.a n = A384063 n

end A384063

/-! ## A384063.P8354047441579480154

`abs(∑[A101776(n)-1])`
-/

namespace A384063.P8354047441579480154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A384063.P8354047441579480154

namespace A384063

/-- `abs(∑[A101776(n)-1])` -/
def P8354047441579480154.Spec : Prop :=
  ∀ n, P8354047441579480154.a n = A384063 n

end A384063

/-! ## A384063.P15444811522223331086

`∑[A172471(n)]%A008318(n+1)`
-/

namespace A384063.P15444811522223331086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A008318 (n + 1))

end

end A384063.P15444811522223331086

namespace A384063

/-- `∑[A172471(n)]%A008318(n+1)` -/
def P15444811522223331086.Spec : Prop :=
  ∀ n, P15444811522223331086.a n = A384063 n

end A384063

/-! ## A384063.P8964710875756593003

`A000196(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A384063.P8964710875756593003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000196 (2 * n) + a (n - 1)

end

end A384063.P8964710875756593003

namespace A384063

/-- `A000196(2*n)+a(n-1)` -/
def P8964710875756593003.Spec : Prop :=
  ∀ n, P8964710875756593003.a n = A384063 n

end A384063

/-! ## A384063.P13889896684914689037

`∑[A001650(2*n+1)-1]/2`
-/

namespace A384063.P13889896684914689037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (2 * n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A384063.P13889896684914689037

namespace A384063

/-- `∑[A001650(2*n+1)-1]/2` -/
def P13889896684914689037.Spec : Prop :=
  ∀ n, P13889896684914689037.a n = (A384063 n : ℚ)

end A384063

/-! ## A384063.P3764812312815840613

`∑[A003059(2*n+1)]-(n+1)`
-/

namespace A384063.P3764812312815840613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A384063.P3764812312815840613

namespace A384063

/-- `∑[A003059(2*n+1)]-(n+1)` -/
def P3764812312815840613.Spec : Prop :=
  ∀ n, P3764812312815840613.a n = A384063 n

end A384063

/-! ## A384063.P2254527530894203246

`A022554(2*n+1)-A337134(n+1)`
-/

namespace A384063.P2254527530894203246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 (2 * n + 1) - A337134 (n + 1)

end

end A384063.P2254527530894203246

namespace A384063

/-- `A022554(2*n+1)-A337134(n+1)` -/
def P2254527530894203246.Spec : Prop :=
  ∀ n, P2254527530894203246.a n = A384063 n

end A384063

/-! ## A384063.P395071066471047351

`∑[A172471(n)]*A059841(2*(n+1))`
-/

namespace A384063.P395071066471047351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A059841 (2 * (n + 1))

end

end A384063.P395071066471047351

namespace A384063

/-- `∑[A172471(n)]*A059841(2*(n+1))` -/
def P395071066471047351.Spec : Prop :=
  ∀ n, P395071066471047351.a n = A384063 n

end A384063

/-! ## A384063.P2619691145378921539

`∑[A172471(n)]%A270618(n)`
-/

namespace A384063.P2619691145378921539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A270618 n)

end

end A384063.P2619691145378921539

namespace A384063

/-- `∑[A172471(n)]%A270618(n)` -/
def P2619691145378921539.Spec : Prop :=
  ∀ n, P2619691145378921539.a n = A384063 n

end A384063

/-!
# A384064: a(n) = s(n) divided by the smallest multiple prime factor of s(n), where s = A013929.

The programs for A384064, there is no canonical definition to state claims against.
-/

/-! ## A384064.P3089049146557350597

`A013929(n+1)/A046027(n+1)`
-/

namespace A384064.P3089049146557350597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A046027 (n + 1) : ℚ)

end

end A384064.P3089049146557350597

/-! ## A384064.P2090437229169527904

`A013929(n+1)/A249739(A283919(n+1))`
-/

namespace A384064.P2090437229169527904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A249739 (A283919 (n + 1)).toNat : ℚ)

end

end A384064.P2090437229169527904

/-!
# A384072: Number of connected components of n faces of the snub cube up to the 24 rotations of the snub cube.

The programs for A384072, there is no canonical definition to state claims against.
-/

/-! ## A384072.P5357382799301904476

`A285730(A150222(n+1))`
-/

namespace A384072.P5357382799301904476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A150222 (n + 1)).toNat

end

end A384072.P5357382799301904476

/-! ## A384072.P16060067723455814988

`A357658(A203853(n+1)-(n-1))`
-/

namespace A384072.P16060067723455814988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357658 (A203853 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A384072.P16060067723455814988

/-! ## A384072.P9297535503564782658

`A333226(A017605(n))+A000622(n+2)`
-/

namespace A384072.P9297535503564782658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (A017605 n).toNat + A000622 (n + 2)

end

end A384072.P9297535503564782658

/-!
# A384074: a(n) = permanent of the n X n circulant matrix with (row 1) = (1, 3, 5, 7, ..., 2n - 1).

The programs for A384074, there is no canonical definition to state claims against.
-/

/-! ## A384074.P14877461824718599753

`A384076(n+1)-A384075(n+1)`
-/

namespace A384074.P14877461824718599753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384076 (n + 1) - A384075 (n + 1)

end

end A384074.P14877461824718599753

/-! ## A384074.P135840836357996437

`A384078(n+1)-A384077(n+1)`
-/

namespace A384074.P135840836357996437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384078 (n + 1) - A384077 (n + 1)

end

end A384074.P135840836357996437

/-!
# A384075: a(n) = neg(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (1,3,5,7, ..., 2n - 1), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A384075, there is no canonical definition to state claims against.
-/

/-! ## A384075.P8789422862272931826

`1/2*((-1)^n*A193678(n+1)-A384074(n+1))`
-/

namespace A384075.P8789422862272931826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((-1) ^ n * A193678 (n + 1) - A384074 (n + 1) : ℚ)

end

end A384075.P8789422862272931826

/-! ## A384075.P3036942041479936998

`A384076(n+1)-A384074(n+1)`
-/

namespace A384075.P3036942041479936998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384076 (n + 1) - A384074 (n + 1)

end

end A384075.P3036942041479936998

/-!
# A384076: a(n) = pos(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (1,3,5,7, ..., 2n - 1), and pos(M(n)) is the positive part of the determinant of M(n); see A380661.

The programs for A384076, there is no canonical definition to state claims against.
-/

/-! ## A384076.P2561171703227257380

`A384075(n+1)+A384074(n+1)`
-/

namespace A384076.P2561171703227257380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384075 (n + 1) + A384074 (n + 1)

end

end A384076.P2561171703227257380

/-!
# A384077: a(n) = neg(M(n)), where M(n) is the n X n left circulant matrix with (row 1) = (1,3,5,7, ..., 2n - 1), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A384077, there is no canonical definition to state claims against.
-/

/-! ## A384077.P18174010781227551308

`A384078(n+1)-A384074(n+1)`
-/

namespace A384077.P18174010781227551308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384078 (n + 1) - A384074 (n + 1)

end

end A384077.P18174010781227551308

/-!
# A384078: a(n) = pos(M(n)), where M(n) is the n X n left circulant matrix with (row 1) = (1,3,5,7, ..., 2n - 1), and pos(M(n)) is the positive part of the determinant of M(n); see A380661.

The programs for A384078, there is no canonical definition to state claims against.
-/

/-! ## A384078.P134074857695757554

`A384077(n+1)+A384074(n+1)`
-/

namespace A384078.P134074857695757554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384077 (n + 1) + A384074 (n + 1)

end

end A384078.P134074857695757554

/-!
# A384079: a(n) = permanent of the n X n circulant matrix with (row 1) = (F(0), F(1), ..., F(n-1)), where F = A000045 (Fibonacci numbers).

The programs for A384079, there is no canonical definition to state claims against.
-/

/-! ## A384079.P7464130074822254426

`A269333(A000045(n+4))-A130532(n+1)`
-/

namespace A384079.P7464130074822254426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269333 (A000045 (n + 4)).toNat - A130532 (n + 1)

end

end A384079.P7464130074822254426

/-!
# A384080: a(n) = neg(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (F(0), F(1), ..., F(n-1)), where F = A000045 (Fibonacci numbers), and neg(M(n)) is the negative part of the determinant of M(n); see A380661.

The programs for A384080, there is no canonical definition to state claims against.
-/

/-! ## A384080.P4426459053470858516

`A239005(n)-A101020(A014432(n))`
-/

namespace A384080.P4426459053470858516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239005 n - A101020 (A014432 n).toNat

end

end A384080.P4426459053470858516

/-!
# A384084: 

The programs for A384084, there is no canonical definition to state claims against.
-/

/-! ## A384084.P17416264656781961364

`eq[1, A339742(n+1)]+1`
-/

namespace A384084.P17416264656781961364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384084.P17416264656781961364

/-!
# A384094: Numbers whose square has digit sum 9 and no trailing zero.

The programs for A384094, there is no canonical definition to state claims against.
-/

/-! ## A384094.P7306361660879970145

`filter[A262712(n+1), A168184(#)]`
-/

namespace A384094.P7306361660879970145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A384094.P7306361660879970145

/-! ## A384094.P17312087251162148009

`filter[A061904(n+2), A168184(#)]`
-/

namespace A384094.P17312087251162148009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061904 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A384094.P17312087251162148009

/-! ## A384094.P9389871731546912102

`∩[A215618(n+1), A262712(n+1)]`
-/

namespace A384094.P9389871731546912102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384094.P9389871731546912102

/-! ## A384094.P3552435707926161952

`∩[A262712(n+1), A367733(n+1)]`
-/

namespace A384094.P3552435707926161952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384094.P3552435707926161952

/-! ## A384094.P7648063365469433015

`∩[A067251(n+1), A262712(n+1)]`
-/

namespace A384094.P7648063365469433015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384094.P7648063365469433015

/-!
# A384096: a(n) = 2*n - A080776(n).

The programs for A384096, the canonical program `A384096.P3432400259258719839` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384096 has offset 0).

The definition of A384096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A384096.P3432400259258719839

`2*n-A053646(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A384096

/-- `2*n-A053646(n+1)` -/
def P3432400259258719839.Spec : Prop :=
  ∀ n, P3432400259258719839.a n = A384096 n

theorem P3432400259258719839.correct : P3432400259258719839.Spec := by
  intro n
  simp only [A384096]

end A384096

/-! ## A384096.P8037803855613702907

`A277267(Δ[n²])+n`
-/

namespace A384096.P8037803855613702907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A384096.P8037803855613702907

namespace A384096

/-- `A277267(Δ[n²])+n` -/
def P8037803855613702907.Spec : Prop :=
  ∀ n, P8037803855613702907.a n = A384096 n

end A384096

/-! ## A384096.P16725478890376907638

`A115836(Δ[n²])-(n+1)`
-/

namespace A384096.P16725478890376907638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A384096.P16725478890376907638

namespace A384096

/-- `A115836(Δ[n²])-(n+1)` -/
def P16725478890376907638.Spec : Prop :=
  ∀ n, P16725478890376907638.a n = A384096 n

end A384096

/-! ## A384096.P7260170800687304965

`A080637(2*n+1)-(n+2)`
-/

namespace A384096.P7260170800687304965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (2 * n + 1) - (n + 2 : ℤ)

end

end A384096.P7260170800687304965

namespace A384096

/-- `A080637(2*n+1)-(n+2)` -/
def P7260170800687304965.Spec : Prop :=
  ∀ n, P7260170800687304965.a n = A384096 n

end A384096

