import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

/-!
# A025400: Numbers that are the sum of 3 distinct positive cubes in exactly 2 ways.

The programs for A025400, there is no canonical definition to state claims against.
-/

/-! ## A025400.P11006488301667362654

`A024974(A160547(n+1))%A173095(A046854(n))`
-/

namespace A025400.P11006488301667362654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024974 (A160547 (n + 1)).toNat) (A173095 (A046854 n).toNat)

end

end A025400.P11006488301667362654

/-! ## A025400.P14416920752731342461

`A024974(A160547(n+1))+A000007(A097755(n+1))`
-/

namespace A025400.P14416920752731342461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (A160547 (n + 1)).toNat + A000007 (A097755 (n + 1)).toNat

end

end A025400.P14416920752731342461

/-! ## A025400.P6826287781624888448

`A083025(A059867(n+1))+A024974(A160547(n+1))`
-/

namespace A025400.P6826287781624888448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A059867 (n + 1)).toNat + A024974 (A160547 (n + 1)).toNat

end

end A025400.P6826287781624888448

/-! ## A025400.P3787114865958124943

`A024974(A160547(n+1))*A035316(A107805(n+1))`
-/

namespace A025400.P3787114865958124943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (A160547 (n + 1)).toNat * A035316 (A107805 (n + 1)).toNat

end

end A025400.P3787114865958124943

/-! ## A025400.P7649882642207338321

`A024974(A160547(n+1))*A057427(A208340(n+1))`
-/

namespace A025400.P7649882642207338321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024974 (A160547 (n + 1)).toNat * A057427 (A208340 (n + 1)).toNat

end

end A025400.P7649882642207338321

/-! ## A025400.P12849909656366359250

`A055672(A067725(n))+A024974(A160547(n+1))`
-/

namespace A025400.P12849909656366359250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A067725 n).toNat + A024974 (A160547 (n + 1)).toNat

end

end A025400.P12849909656366359250

/-!
# A025401: Numbers that are the sum of 3 distinct positive cubes in exactly 3 ways.

The programs for A025401, there is no canonical definition to state claims against.
-/

/-! ## A025401.P5192738081787735450

`A025402(record[A297115(n+1)])`
-/

namespace A025401.P5192738081787735450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025401.P5192738081787735450

/-! ## A025401.P3318450191984026836

`A025398(lt[A074047(n+1), A038041(3*n+1)])`
-/

namespace A025401.P3318450191984026836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038041 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025398 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025401.P3318450191984026836

/-!
# A025402: Numbers that are the sum of 3 distinct positive cubes in 3 or more ways.

The programs for A025402, there is no canonical definition to state claims against.
-/

/-! ## A025402.P9569887646186302551

`A025398(∑{e}[A128029(n+1), A269804(n+1)-#])`
-/

namespace A025402.P9569887646186302551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025398 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A269804 (n + 1) - (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A025402.P9569887646186302551

/-! ## A025402.P9469479285309022415

`A025398(∑[A000688(n+1)%A057418(3*n+8)])`
-/

namespace A025402.P9469479285309022415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000688 (n + 1)) (A057418 (3 * n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025398 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025402.P9469479285309022415

/-!
# A025403: Numbers that are the sum of 4 positive cubes in exactly 1 way.

The programs for A025403, there is no canonical definition to state claims against.
-/

/-! ## A025403.P9095325862037069114

`eq[1, A025457(n)]`
-/

namespace A025403.P9095325862037069114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025403.P9095325862037069114

/-! ## A025403.P13360757279229848997

`eq[A025447(n)+1, A025448(n)]`
-/

namespace A025403.P13360757279229848997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025403.P13360757279229848997

/-! ## A025403.P17790538571064619325

`eq[1, A025448(n)-(A025456(n)+A025446(n))]`
-/

namespace A025403.P17790538571064619325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n - (A025456 n + A025446 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025403.P17790538571064619325

/-! ## A025403.P1056642546288080101

`record[A003327(n+1)/A025457(A003327(n+1))]`
-/

namespace A025403.P1056642546288080101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003327 (n + 1) : ℚ) / (A025457 (A003327 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025403.P1056642546288080101

/-! ## A025403.P14524194164379809333

`lt[2, -A053254(A025457(n)+2*n)]`
-/

namespace A025403.P14524194164379809333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053254 (A025457 n + (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025403.P14524194164379809333

/-! ## A025403.P5633352697229616085

`eq[1, A320841(A238531(n)+2+n)]`
-/

namespace A025403.P5633352697229616085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A238531 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025403.P5633352697229616085

/-! ## A025403.P17642112953665553472

`eq[ceil(3/(n+1)), A320841(A145018(n+1))]`
-/

namespace A025403.P17642112953665553472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / (n + 1 : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A145018 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025403.P17642112953665553472

/-!
# A025404: Numbers that are the sum of 4 positive cubes in exactly 2 ways.

The programs for A025404, there is no canonical definition to state claims against.
-/

/-! ## A025404.P2003313100219553686

`eq[2, A025457(n)]`
-/

namespace A025404.P2003313100219553686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025404.P2003313100219553686

/-! ## A025404.P1952525303115520484

`A025406(A160547(n+1)%A089360(n+1))`
-/

namespace A025404.P1952525303115520484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025406 (Int.tmod (A160547 (n + 1)) (A089360 (n + 1))).toNat

end

end A025404.P1952525303115520484

/-! ## A025404.P16855912168988520064

`A025406(A247064(n+1)%A089360(n+1))`
-/

namespace A025404.P16855912168988520064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025406 (Int.tmod (A247064 (n + 1)) (A089360 (n + 1))).toNat

end

end A025404.P16855912168988520064

/-! ## A025404.P18028455224030686110

`A025406(A123068(n+2)%A089360(n+1))`
-/

namespace A025404.P18028455224030686110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025406 (Int.tmod (A123068 (n + 2)) (A089360 (n + 1))).toNat

end

end A025404.P18028455224030686110

/-! ## A025404.P15991815110457130772

`A025406(A160547(n+1)%A062693(n))`
-/

namespace A025404.P15991815110457130772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025406 (Int.tmod (A160547 (n + 1)) (A062693 n)).toNat

end

end A025404.P15991815110457130772

/-!
# A025406: Numbers that are the sum of 4 positive cubes in 2 or more ways.

The programs for A025406, there is no canonical definition to state claims against.
-/

/-! ## A025406.P3161234541268076726

`∪[A025404(n+1), A025407(n+1)]`
-/

namespace A025406.P3161234541268076726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025406.P3161234541268076726

/-! ## A025406.P15590995772583480158

`lt[1, A025457(n)]`
-/

namespace A025406.P15590995772583480158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025406.P15590995772583480158

/-! ## A025406.P4729624005842048543

`A025404(n+1)%A095673(A163892(n))`
-/

namespace A025406.P4729624005842048543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025404 (n + 1)) (A095673 (A163892 n).toNat)

end

end A025406.P4729624005842048543

/-! ## A025406.P3489279467554853581

`A025404(n+1)*A220738(A319182(2*(n+1)))`
-/

namespace A025406.P3489279467554853581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025404 (n + 1) * A220738 (A319182 (2 * (n + 1))).toNat

end

end A025406.P3489279467554853581

/-!
# A025407: Numbers that are the sum of 4 positive cubes in 3 or more ways.

The programs for A025407, there is no canonical definition to state claims against.
-/

/-! ## A025407.P4398282730308724595

`∪[A025405(n+1), A343971(n+1)]`
-/

namespace A025407.P4398282730308724595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025407.P4398282730308724595

/-! ## A025407.P2857855223523949963

`A025405(A292125(n+1))`
-/

namespace A025407.P2857855223523949963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025405 (A292125 (n + 1)).toNat

end

end A025407.P2857855223523949963

/-!
# A025409: Numbers that are the sum of 4 distinct positive cubes in exactly 2 ways.

The programs for A025409, there is no canonical definition to state claims against.
-/

/-! ## A025409.P5272101785466583944

`A025412(∑[A115583(A123519(n))])`
-/

namespace A025409.P5272101785466583944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A123519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025409.P5272101785466583944

/-! ## A025409.P3449459754958112062

`record[A025412(n+1)/A115583(A123519(n))]`
-/

namespace A025409.P3449459754958112062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025412 (n + 1) : ℚ) / (A115583 (A123519 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025409.P3449459754958112062

/-! ## A025409.P5886449177662144051

`A025412(∑[A088806(n+1)!])`
-/

namespace A025409.P5886449177662144051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088806 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025409.P5886449177662144051

/-! ## A025409.P4780942807503960883

`A218876(A077643(n))+A025412(n+1)`
-/

namespace A025409.P4780942807503960883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218876 (A077643 n).toNat + A025412 (n + 1)

end

end A025409.P4780942807503960883

/-!
# A025410: Numbers that are the sum of 4 distinct positive cubes in exactly 3 ways.

The programs for A025410, there is no canonical definition to state claims against.
-/

/-! ## A025410.P11003020198743541629

`A025413(∑[A304327(A022325(n))])`
-/

namespace A025410.P11003020198743541629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304327 (A022325 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025410.P11003020198743541629

/-! ## A025410.P15679140665366557888

`record[A025413(n+1)/A304327(A022325(n))]`
-/

namespace A025410.P15679140665366557888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025413 (n + 1) : ℚ) / (A304327 (A022325 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025410.P15679140665366557888

/-! ## A025410.P1215807524094985417

`A025413(A000005(2^A048312(n)))`
-/

namespace A025410.P1215807524094985417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025413 (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A048312 n : ℤ))).toNat).toNat

end

end A025410.P1215807524094985417

/-! ## A025410.P442223020613368036

`A004525(2*A025413(A043719(n+1)))`
-/

namespace A025410.P442223020613368036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A025413 (A043719 (n + 1)).toNat).toNat

end

end A025410.P442223020613368036

/-! ## A025410.P241897557079982271

`A025413(A043719(n+1))+A000007(A001405(n))`
-/

namespace A025410.P241897557079982271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025413 (A043719 (n + 1)).toNat + A000007 (A001405 n).toNat

end

end A025410.P241897557079982271

/-!
# A025411: Numbers that are the sum of 4 distinct positive cubes.

The programs for A025411, there is no canonical definition to state claims against.
-/

/-! ## A025411.P1128375516201377911

`∪[A025408(n+1), A025412(n+1)]`
-/

namespace A025411.P1128375516201377911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025411.P1128375516201377911

/-! ## A025411.P5916071465876491209

`A151878(A008284(3*n+1))+A025408(n+1)`
-/

namespace A025411.P5916071465876491209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A008284 (3 * n + 1)).toNat + A025408 (n + 1)

end

end A025411.P5916071465876491209

/-! ## A025411.P15076963713164999245

`A333487(A035316(n+3))+A025408(n+1)`
-/

namespace A025411.P15076963713164999245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (A035316 (n + 3)).toNat + A025408 (n + 1)

end

end A025411.P15076963713164999245

/-! ## A025411.P4197003977184398720

`A025438(A334291(n))+A025408(n+1)`
-/

namespace A025411.P4197003977184398720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 (A334291 n).toNat + A025408 (n + 1)

end

end A025411.P4197003977184398720

/-! ## A025411.P12067492047082100354

`A025408(n+1)+A000007(A259684(n+1))`
-/

namespace A025411.P12067492047082100354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025408 (n + 1) + A000007 (A259684 (n + 1)).toNat

end

end A025411.P12067492047082100354

/-! ## A025411.P18297802248896187051

`A063524(A318681(n+4))+A025408(n+1)`
-/

namespace A025411.P18297802248896187051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A318681 (n + 4)).toNat + A025408 (n + 1)

end

end A025411.P18297802248896187051

/-! ## A025411.P3094792766549613168

`A221146(A000384(n))+A025408(n+1)`
-/

namespace A025411.P3094792766549613168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 (A000384 n).toNat + A025408 (n + 1)

end

end A025411.P3094792766549613168

/-! ## A025411.P6912179953698738657

`A025408(n+1)+A000007(A354721(n+1))`
-/

namespace A025411.P6912179953698738657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025408 (n + 1) + A000007 (A354721 (n + 1)).toNat

end

end A025411.P6912179953698738657

/-! ## A025411.P7714570984123184910

`A001055(A035095(2*n+5))*A025408(n+1)`
-/

namespace A025411.P7714570984123184910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A035095 (2 * n + 5)).toNat * A025408 (n + 1)

end

end A025411.P7714570984123184910

/-! ## A025411.P17950294530161218300

`A063524(A025382(n+1))+A025408(n+1)`
-/

namespace A025411.P17950294530161218300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A025382 (n + 1)).toNat + A025408 (n + 1)

end

end A025411.P17950294530161218300

/-!
# A025412: Numbers that are the sum of 4 distinct positive cubes in 2 or more ways.

The programs for A025412, there is no canonical definition to state claims against.
-/

/-! ## A025412.P10364751212512171978

`∪[A025409(n+1), A025413(n+1)]`
-/

namespace A025412.P10364751212512171978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025412.P10364751212512171978

/-!
# A025414: a(n) is the smallest number that is the sum of 3 nonzero squares in exactly n ways.

The programs for A025414, there is no canonical definition to state claims against.
-/

/-! ## A025414.P6711610748846557681

`A334274(A320891(2*n+1))-A379786(n)`
-/

namespace A025414.P6711610748846557681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (A320891 (2 * n + 1)).toNat - A379786 n

end

end A025414.P6711610748846557681

/-!
# A025422: Number of partitions of n into 7 squares.

The programs for A025422, there is no canonical definition to state claims against.
-/

/-! ## A025422.P17096790334804379742

`A025431(n)+A000177(n)`
-/

namespace A025422.P17096790334804379742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n + A000177 n

end

end A025422.P17096790334804379742

/-! ## A025422.P8316992181971330173

`A025423(n)-A025432(n)`
-/

namespace A025422.P8316992181971330173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 n - A025432 n

end

end A025422.P8316992181971330173

/-! ## A025422.P6642069585397866511

`A000174(n)+A025431(n)+A025430(n)`
-/

namespace A025422.P6642069585397866511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n + (A025431 n + A025430 n)

end

end A025422.P6642069585397866511

/-! ## A025422.P16324968640362967739

`A025424(n)-(A025433(n)+A025432(n))`
-/

namespace A025422.P16324968640362967739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 n - (A025433 n + A025432 n)

end

end A025422.P16324968640362967739

/-! ## A025422.P11381509415641726644

`A025431(A028310(n))-A001489(A000177(n))`
-/

namespace A025422.P11381509415641726644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 (A028310 n).toNat - A001489 (A000177 n).toNat

end

end A025422.P11381509415641726644

/-! ## A025422.P3981335524591533619

`A025423(n)-A243148(∑[A160755(n+1)])`
-/

namespace A025422.P3981335524591533619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 n - A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025422.P3981335524591533619

/-!
# A025423: Number of partitions of n into 8 squares.

The programs for A025423, there is no canonical definition to state claims against.
-/

/-! ## A025423.P16567359407796937550

`A025432(n)+A025422(n)`
-/

namespace A025423.P16567359407796937550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025432 n + A025422 n

end

end A025423.P16567359407796937550

/-! ## A025423.P10951914612034513482

`A025424(n)-A025433(n)`
-/

namespace A025423.P10951914612034513482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 n - A025433 n

end

end A025423.P10951914612034513482

/-! ## A025423.P7129123838413713459

`A000177(n)+A025432(n)+A025431(n)`
-/

namespace A025423.P7129123838413713459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n + (A025432 n + A025431 n)

end

end A025423.P7129123838413713459

/-! ## A025423.P8102613829850238918

`A025425(n)-(A025434(n)+A025433(n))`
-/

namespace A025423.P8102613829850238918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 n - (A025434 n + A025433 n)

end

end A025423.P8102613829850238918

/-! ## A025423.P12255905677609069315

`A025432(A028310(n))-A001489(A025422(n))`
-/

namespace A025423.P12255905677609069315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025432 (A028310 n).toNat - A001489 (A025422 n).toNat

end

end A025423.P12255905677609069315

/-! ## A025423.P13476741434609001979

`A243148(∑[A160755(n+1)])+A025422(n)`
-/

namespace A025423.P13476741434609001979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A025422 n

end

end A025423.P13476741434609001979

/-!
# A025424: Number of partitions of n into 9 squares.

The programs for A025424, there is no canonical definition to state claims against.
-/

/-! ## A025424.P11506502084646372085

`A025433(n)+A025423(n)`
-/

namespace A025424.P11506502084646372085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025433 n + A025423 n

end

end A025424.P11506502084646372085

/-! ## A025424.P6897200318418614275

`A025425(n)-A025434(n)`
-/

namespace A025424.P6897200318418614275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 n - A025434 n

end

end A025424.P6897200318418614275

/-! ## A025424.P4022872677651145107

`A025422(n)+A025433(n)+A025432(n)`
-/

namespace A025424.P4022872677651145107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n + (A025433 n + A025432 n)

end

end A025424.P4022872677651145107

/-! ## A025424.P5336369989455335288

`A025433(A028310(n))-A001489(A025423(n))`
-/

namespace A025424.P5336369989455335288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025433 (A028310 n).toNat - A001489 (A025423 n).toNat

end

end A025424.P5336369989455335288

/-! ## A025424.P10221506849158178902

`A025425(A028310(n))+A001489(A025434(n))`
-/

namespace A025424.P10221506849158178902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 (A028310 n).toNat + A001489 (A025434 n).toNat

end

end A025424.P10221506849158178902

/-!
# A025425: Number of partitions of n into 10 squares.

The programs for A025425, there is no canonical definition to state claims against.
-/

/-! ## A025425.P4655623980339177082

`A025434(n)+A025424(n)`
-/

namespace A025425.P4655623980339177082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025434 n + A025424 n

end

end A025425.P4655623980339177082

/-! ## A025425.P16128251674029060879

`A025423(n)+A025434(n)+A025433(n)`
-/

namespace A025425.P16128251674029060879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 n + (A025434 n + A025433 n)

end

end A025425.P16128251674029060879

/-! ## A025425.P17951990736118158799

`A025434(n)+A025422(n)+A025433(n)+A025432(n)`
-/

namespace A025425.P17951990736118158799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025434 n + (A025422 n + (A025433 n + A025432 n))

end

end A025425.P17951990736118158799

/-! ## A025425.P14199866266114420281

`A025434(A028310(n))-A001489(A025424(n))`
-/

namespace A025425.P14199866266114420281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025434 (A028310 n).toNat - A001489 (A025424 n).toNat

end

end A025425.P14199866266114420281

/-!
# A025426: Number of partitions of n into 2 nonzero squares.

The programs for A025426, the canonical program `A025426.P9414248645359162695` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025426 has offset 0).

The definition of A025426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025426.P9414248645359162695

`ceil(A063725(n)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A025426

/-- `ceil(A063725(n)/2)` -/
def P9414248645359162695.Spec : Prop :=
  ∀ n, P9414248645359162695.a n = A025426 n

theorem P9414248645359162695.correct : P9414248645359162695.Spec := by
  intro n
  simp only [A025426]

end A025426

/-! ## A025426.P5468138983608992570

`A000161(n)-char[n²]`
-/

namespace A025426.P5468138983608992570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025426.P5468138983608992570

namespace A025426

/-- `A000161(n)-char[n²]` -/
def P5468138983608992570.Spec : Prop :=
  ∀ n, P5468138983608992570.a n = A025426 n

end A025426

/-! ## A025426.P7741357107652817304

`A110654(A063725(n))`
-/

namespace A025426.P7741357107652817304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A063725 n).toNat

end

end A025426.P7741357107652817304

namespace A025426

/-- `A110654(A063725(n))` -/
def P7741357107652817304.Spec : Prop :=
  ∀ n, P7741357107652817304.a n = A025426 n

end A025426

/-! ## A025426.P6435031583894599051

`A004526(A063725(n)+1)`
-/

namespace A025426.P6435031583894599051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063725 n + 1).toNat

end

end A025426.P6435031583894599051

namespace A025426

/-- `A004526(A063725(n)+1)` -/
def P6435031583894599051.Spec : Prop :=
  ∀ n, P6435031583894599051.a n = A025426 n

end A025426

/-! ## A025426.P6682812835406897880

`A244415(2^A063725(n))`
-/

namespace A025426.P6682812835406897880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A063725 n : ℤ))).toNat

end

end A025426.P6682812835406897880

namespace A025426

/-- `A244415(2^A063725(n))` -/
def P6682812835406897880.Spec : Prop :=
  ∀ n, P6682812835406897880.a n = A025426 n

end A025426

/-! ## A025426.P7918846775669480272

`A063725(n)-A025441(n)`
-/

namespace A025426.P7918846775669480272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n - A025441 n

end

end A025426.P7918846775669480272

namespace A025426

/-- `A063725(n)-A025441(n)` -/
def P7918846775669480272.Spec : Prop :=
  ∀ n, P7918846775669480272.a n = A025426 n

end A025426

/-! ## A025426.P17198731976065737201

`val(A070875(A063725(n)+1), 2)`
-/

namespace A025426.P17198731976065737201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A070875 (A063725 n + 1).toNat).toNat 2

end

end A025426.P17198731976065737201

namespace A025426

/-- `val(A070875(A063725(n)+1), 2)` -/
def P17198731976065737201.Spec : Prop :=
  ∀ n, (P17198731976065737201.a n : ℤ) = A025426 n

end A025426

/-! ## A025426.P9710162106202801789

`A025435(2*n)`
-/

namespace A025426.P9710162106202801789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (2 * n)

end

end A025426.P9710162106202801789

namespace A025426

/-- `A025435(2*n)` -/
def P9710162106202801789.Spec : Prop :=
  ∀ n, P9710162106202801789.a n = A025426 n

end A025426

/-! ## A025426.P2453824678276791196

`floor(A000925(2*n)/2)`
-/

namespace A025426.P2453824678276791196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000925 (2 * n) : ℚ) / 2⌋

end

end A025426.P2453824678276791196

namespace A025426

/-- `floor(A000925(2*n)/2)` -/
def P2453824678276791196.Spec : Prop :=
  ∀ n, P2453824678276791196.a n = A025426 n

end A025426

/-! ## A025426.P1990863276723713554

`round(A143574(2*n)/(2*n+1))`
-/

namespace A025426.P1990863276723713554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143574 (2 * n) : ℚ) / (2 * n + 1 : ℚ))

end

end A025426.P1990863276723713554

namespace A025426

/-- `round(A143574(2*n)/(2*n+1))` -/
def P1990863276723713554.Spec : Prop :=
  ∀ n, P1990863276723713554.a n = A025426 n

end A025426

/-! ## A025426.P16676944583599732809

`A000925(2*n)-A000161(n)`
-/

namespace A025426.P16676944583599732809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (2 * n) - A000161 n

end

end A025426.P16676944583599732809

namespace A025426

/-- `A000925(2*n)-A000161(n)` -/
def P16676944583599732809.Spec : Prop :=
  ∀ n, P16676944583599732809.a n = A025426 n

end A025426

/-! ## A025426.P15208691708486252257

`A394746(n)-A393711(n)`
-/

namespace A025426.P15208691708486252257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394746 n - A393711 n

end

end A025426.P15208691708486252257

namespace A025426

/-- `A394746(n)-A393711(n)` -/
def P15208691708486252257.Spec : Prop :=
  ∀ n, P15208691708486252257.a n = A025426 n

end A025426

/-! ## A025426.P14482669497089632515

`floor(sqrt(A084888(n)))`
-/

namespace A025426.P14482669497089632515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A084888 n)

end

end A025426.P14482669497089632515

namespace A025426

/-- `floor(sqrt(A084888(n)))` -/
def P14482669497089632515.Spec : Prop :=
  ∀ n, P14482669497089632515.a n = A025426 n

end A025426

/-! ## A025426.P17647679336349308749

`A000196(A084888(n))`
-/

namespace A025426.P17647679336349308749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084888 n).toNat

end

end A025426.P17647679336349308749

namespace A025426

/-- `A000196(A084888(n))` -/
def P17647679336349308749.Spec : Prop :=
  ∀ n, P17647679336349308749.a n = A025426 n

end A025426

/-! ## A025426.P10877456952335761670

`A243148(A133263(n))`
-/

namespace A025426.P10877456952335761670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 n).toNat

end

end A025426.P10877456952335761670

namespace A025426

/-- `A243148(A133263(n))` -/
def P10877456952335761670.Spec : Prop :=
  ∀ n, P10877456952335761670.a n = A025426 n

end A025426

/-! ## A025426.P11208547134428602490

`A243148(A238531(n+1))`
-/

namespace A025426.P11208547134428602490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A238531 (n + 1)).toNat

end

end A025426.P11208547134428602490

namespace A025426

/-- `A243148(A238531(n+1))` -/
def P11208547134428602490.Spec : Prop :=
  ∀ n, P11208547134428602490.a n = A025426 n

end A025426

/-!
# A025427: Number of partitions of n into 3 nonzero squares.

The programs for A025427, there is no canonical definition to state claims against.
-/

/-! ## A025427.P37699124357919349

`A000164(n)-A000161(n)`
-/

namespace A025427.P37699124357919349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A000161 n

end

end A025427.P37699124357919349

/-! ## A025427.P2979916918306215398

`A000164(n)-ceil(A000925(n)/2)`
-/

namespace A025427.P2979916918306215398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - ⌈(A000925 n : ℚ) / 2⌉

end

end A025427.P2979916918306215398

/-! ## A025427.P16585219915477004390

`A000164(n)-(A025426(n)+char[n²])`
-/

namespace A025427.P16585219915477004390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - (A025426 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A025427.P16585219915477004390

/-! ## A025427.P10303520423959747190

`A000164(n)-A004526(A000925(n)+1)`
-/

namespace A025427.P10303520423959747190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A004526 (A000925 n + 1).toNat

end

end A025427.P10303520423959747190

/-! ## A025427.P11539075559853350536

`A000164(n)+A025435(n)-A000925(n)`
-/

namespace A025427.P11539075559853350536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + (A025435 n - A000925 n)

end

end A025427.P11539075559853350536

/-! ## A025427.P1935007194854575792

`A002635(n)-(A025428(n)+A000161(n))`
-/

namespace A025427.P1935007194854575792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025428 n + A000161 n)

end

end A025427.P1935007194854575792

/-! ## A025427.P14403220081551087830

`(A000290(n)+A000164(n))%(A000290(n)+A000161(n))`
-/

namespace A025427.P14403220081551087830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n + A000164 n) (A000290 n + A000161 n)

end

end A025427.P14403220081551087830

/-! ## A025427.P2694825676864826297

`(A124978(n+1)+A000164(n))%(A124978(n+1)+A000161(n))`
-/

namespace A025427.P2694825676864826297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124978 (n + 1) + A000164 n) (A124978 (n + 1) + A000161 n)

end

end A025427.P2694825676864826297

/-! ## A025427.P2657721252573315645

`A243148(∑[n]+3)`
-/

namespace A025427.P2657721252573315645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A025427.P2657721252573315645

/-!
# A025428: Number of partitions of n into 4 nonzero squares.

The programs for A025428, there is no canonical definition to state claims against.
-/

/-! ## A025428.P4163768430909006064

`A002635(n)-A000164(n)`
-/

namespace A025428.P4163768430909006064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

end

end A025428.P4163768430909006064

/-! ## A025428.P10882904857478931234

`A000174(n)-(A025429(n)+A000164(n))`
-/

namespace A025428.P10882904857478931234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

end

end A025428.P10882904857478931234

/-! ## A025428.P13793430948459110092

`A002635(n)-(A025427(n)+A000161(n))`
-/

namespace A025428.P13793430948459110092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

end

end A025428.P13793430948459110092

/-! ## A025428.P15351305012454179534

`A002635(n)+-A000164(n)%A212461(n+1)`
-/

namespace A025428.P15351305012454179534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + Int.tmod (-A000164 n) (A212461 (n + 1))

end

end A025428.P15351305012454179534

/-! ## A025428.P7895895603561152232

`A002635(A028310(n))+A001489(A000164(n))`
-/

namespace A025428.P7895895603561152232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A028310 n).toNat + A001489 (A000164 n).toNat

end

end A025428.P7895895603561152232

/-! ## A025428.P8067939001987015780

`A002635(A233583(n+1))+A001489(A000164(n))`
-/

namespace A025428.P8067939001987015780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A233583 (n + 1)).toNat + A001489 (A000164 n).toNat

end

end A025428.P8067939001987015780

/-! ## A025428.P15809204992529576080

`A243148(∑[n+1]-(n-3%(n+1)))`
-/

namespace A025428.P15809204992529576080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - ((3 % (n + 1) : ℕ) : ℤ))).toNat

end

end A025428.P15809204992529576080

/-! ## A025428.P15399483172835386605

`A243148(A113311(n)+∑[n])`
-/

namespace A025428.P15399483172835386605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A113311 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A025428.P15399483172835386605

/-! ## A025428.P2291353977859006406

`A243148(A077169(n+1)-1)`
-/

namespace A025428.P2291353977859006406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1) - 1).toNat

end

end A025428.P2291353977859006406

/-! ## A025428.P14414835607485497876

`A243148(A238531(n)+2+n)`
-/

namespace A025428.P14414835607485497876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A238531 n + 2 + (n : ℤ)).toNat

end

end A025428.P14414835607485497876

/-! ## A025428.P1481100840034791618

`A243148(A145018(n+1)+char[1])`
-/

namespace A025428.P1481100840034791618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A145018 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A025428.P1481100840034791618

/-! ## A025428.P9006517122774174579

`A243148(∑[n]+and(2, A164285(n))²)`
-/

namespace A025428.P9006517122774174579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.land 2 (A164285 n) ^ 2).toNat

end

end A025428.P9006517122774174579

/-! ## A025428.P6848037754016939428

`A243148(3-(n-∑[n+1]))%A000041(n)`
-/

namespace A025428.P6848037754016939428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243148 (3 - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat) (A000041 n)

end

end A025428.P6848037754016939428

/-! ## A025428.P12228002434575853158

`A243148(A133263(n)+A046698(n))`
-/

namespace A025428.P12228002434575853158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 n + A046698 n).toNat

end

end A025428.P12228002434575853158

/-! ## A025428.P7877034954693466830

`A243148(A133263(A233583(n+1))+2)`
-/

namespace A025428.P7877034954693466830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 (A233583 (n + 1)).toNat + 2).toNat

end

end A025428.P7877034954693466830

/-! ## A025428.P1258145903043798000

`A243148(A145018(n+1)+2-A046698(n))`
-/

namespace A025428.P1258145903043798000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A145018 (n + 1) + 2 - A046698 n).toNat

end

end A025428.P1258145903043798000

/-!
# A025429: Number of partitions of n into 5 nonzero squares.

The programs for A025429, there is no canonical definition to state claims against.
-/

/-! ## A025429.P12404249662910872050

`A000174(n)-A002635(n)`
-/

namespace A025429.P12404249662910872050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - A002635 n

end

end A025429.P12404249662910872050

/-! ## A025429.P13886954952674323764

`A000174(n)-(A025428(n)+A000164(n))`
-/

namespace A025429.P13886954952674323764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025428 n + A000164 n)

end

end A025429.P13886954952674323764

/-! ## A025429.P3945264935447021023

`A000177(n)-(A025430(n)+A002635(n))`
-/

namespace A025429.P3945264935447021023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - (A025430 n + A002635 n)

end

end A025429.P3945264935447021023

/-! ## A025429.P14645658500623060234

`A001489(A002635(n))+A000174(A028310(n))`
-/

namespace A025429.P14645658500623060234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A002635 n).toNat + A000174 (A028310 n).toNat

end

end A025429.P14645658500623060234

/-! ## A025429.P13285723373351566265

`A001489(A002635(n))+A000174(A233583(n+1))`
-/

namespace A025429.P13285723373351566265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A002635 n).toNat + A000174 (A233583 (n + 1)).toNat

end

end A025429.P13285723373351566265

/-! ## A025429.P17912924926183658266

`A243148(A077169(n)+n)`
-/

namespace A025429.P17912924926183658266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 n + (n : ℤ)).toNat

end

end A025429.P17912924926183658266

/-! ## A025429.P4865890260354542187

`A243148(A184218(n+1)+6)`
-/

namespace A025429.P4865890260354542187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A184218 (n + 1) + 6).toNat

end

end A025429.P4865890260354542187

/-! ## A025429.P3289218667698735366

`A243148(∑[A002024(A077169(n))])`
-/

namespace A025429.P3289218667698735366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025429.P3289218667698735366

/-!
# A025430: Number of partitions of n into 6 nonzero squares.

The programs for A025430, there is no canonical definition to state claims against.
-/

/-! ## A025430.P9641649459869251768

`A000177(n)-A000174(n)`
-/

namespace A025430.P9641649459869251768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - A000174 n

end

end A025430.P9641649459869251768

/-! ## A025430.P13806809328613125860

`A000177(n)-(A025429(n)+A002635(n))`
-/

namespace A025430.P13806809328613125860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 n - (A025429 n + A002635 n)

end

end A025430.P13806809328613125860

/-! ## A025430.P10693338986464880331

`A025422(n)-(A025431(n)+A000174(n))`
-/

namespace A025430.P10693338986464880331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n - (A025431 n + A000174 n)

end

end A025430.P10693338986464880331

/-! ## A025430.P5407137365286109361

`A001489(A000174(n))+A000177(A028310(n))`
-/

namespace A025430.P5407137365286109361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A000174 n).toNat + A000177 (A028310 n).toNat

end

end A025430.P5407137365286109361

/-! ## A025430.P14802188313876713978

`A001489(A000174(n))+A000177(A233583(n+1))`
-/

namespace A025430.P14802188313876713978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A000174 n).toNat + A000177 (A233583 (n + 1)).toNat

end

end A025430.P14802188313876713978

/-! ## A025430.P6442419256755241046

`A243148(A184218(n+1)+7)`
-/

namespace A025430.P6442419256755241046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A184218 (n + 1) + 7).toNat

end

end A025430.P6442419256755241046

/-! ## A025430.P10110983242786154094

`A243148(∑[n+1]-(n-5)%A000041(n))`
-/

namespace A025430.P10110983242786154094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.tmod ((n : ℤ) - 5) (A000041 n)).toNat

end

end A025430.P10110983242786154094

/-! ## A025430.P17329775477703382897

`A243148(A133263(n)+A046698(n)²)`
-/

namespace A025430.P17329775477703382897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 n + A046698 n ^ 2).toNat

end

end A025430.P17329775477703382897

/-! ## A025430.P16268774114203456962

`A243148(A077169(n+1)+A060576(n))`
-/

namespace A025430.P16268774114203456962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1) + A060576 n).toNat

end

end A025430.P16268774114203456962

/-! ## A025430.P75290743155864950

`A243148(A145018(n+1)+A046698(n))`
-/

namespace A025430.P75290743155864950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A145018 (n + 1) + A046698 n).toNat

end

end A025430.P75290743155864950

/-! ## A025430.P11606490893067816046

`A243148(A046698(n)+A133263(n)+2)`
-/

namespace A025430.P11606490893067816046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A046698 n + (A133263 n + 2)).toNat

end

end A025430.P11606490893067816046

/-!
# A025431: Number of partitions of n into 7 nonzero squares.

The programs for A025431, there is no canonical definition to state claims against.
-/

/-! ## A025431.P6668995907563840526

`A025422(n)-A000177(n)`
-/

namespace A025431.P6668995907563840526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n - A000177 n

end

end A025431.P6668995907563840526

/-! ## A025431.P11079761912845665131

`A025422(n)-(A025430(n)+A000174(n))`
-/

namespace A025431.P11079761912845665131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 n - (A025430 n + A000174 n)

end

end A025431.P11079761912845665131

/-! ## A025431.P14851845501114350294

`A025423(n)-(A025432(n)+A000177(n))`
-/

namespace A025431.P14851845501114350294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 n - (A025432 n + A000177 n)

end

end A025431.P14851845501114350294

/-! ## A025431.P13308324835431331215

`A025422(A028310(n))+A001489(A000177(n))`
-/

namespace A025431.P13308324835431331215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 (A028310 n).toNat + A001489 (A000177 n).toNat

end

end A025431.P13308324835431331215

/-! ## A025431.P14022540664221533816

`A025422(A233583(n+1))+A001489(A000177(n))`
-/

namespace A025431.P14022540664221533816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 (A233583 (n + 1)).toNat + A001489 (A000177 n).toNat

end

end A025431.P14022540664221533816

/-!
# A025432: Number of partitions of n into 8 nonzero squares.

The programs for A025432, there is no canonical definition to state claims against.
-/

/-! ## A025432.P13009855680830539792

`A025423(n)-A025422(n)`
-/

namespace A025432.P13009855680830539792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 n - A025422 n

end

end A025432.P13009855680830539792

/-! ## A025432.P7156643890622600287

`(A025423(n)+A000290(n))%(A025422(n)+A000290(n))`
-/

namespace A025432.P7156643890622600287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025423 n + A000290 n) (A025422 n + A000290 n)

end

end A025432.P7156643890622600287

/-! ## A025432.P11327286436476367920

`(A025424(n)+A025423(n))%(A025424(n)+A025422(n))`
-/

namespace A025432.P11327286436476367920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025424 n + A025423 n) (A025424 n + A025422 n)

end

end A025432.P11327286436476367920

/-! ## A025432.P10830350860157641216

`(A025425(n)+A025423(n))%(A025425(n)+A025422(n))`
-/

namespace A025432.P10830350860157641216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025425 n + A025423 n) (A025425 n + A025422 n)

end

end A025432.P10830350860157641216

/-! ## A025432.P17625948797550895496

`(A124978(n+1)+A025423(n))%(A124978(n+1)+A025422(n))`
-/

namespace A025432.P17625948797550895496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124978 (n + 1) + A025423 n) (A124978 (n + 1) + A025422 n)

end

end A025432.P17625948797550895496

/-! ## A025432.P7109678867109362835

`(A010052(A000290(n))*A025423(n))%A025422(n)`
-/

namespace A025432.P7109678867109362835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010052 (A000290 n).toNat * A025423 n) (A025422 n)

end

end A025432.P7109678867109362835

/-! ## A025432.P1674160885934664268

`(A025423(n)%A180149(n+1))%A025422(n)`
-/

namespace A025432.P1674160885934664268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A025423 n) (A180149 (n + 1))) (A025422 n)

end

end A025432.P1674160885934664268

/-! ## A025432.P8511465360541958461

`A243148(∑[A160755(n+1)])`
-/

namespace A025432.P8511465360541958461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025432.P8511465360541958461

/-!
# A025433: Number of partitions of n into 9 nonzero squares.

The programs for A025433, there is no canonical definition to state claims against.
-/

/-! ## A025433.P12536151377395458324

`A025424(n)-A025423(n)`
-/

namespace A025433.P12536151377395458324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 n - A025423 n

end

end A025433.P12536151377395458324

/-! ## A025433.P9962497480078369777

`A025424(n)-(A025432(n)+A025422(n))`
-/

namespace A025433.P9962497480078369777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 n - (A025432 n + A025422 n)

end

end A025433.P9962497480078369777

/-! ## A025433.P12210083524611231112

`A025425(n)-(A025434(n)+A025423(n))`
-/

namespace A025433.P12210083524611231112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 n - (A025434 n + A025423 n)

end

end A025433.P12210083524611231112

/-! ## A025433.P4918925418106181749

`(A025424(n)+A000290(n))%(A025423(n)+A000290(n))`
-/

namespace A025433.P4918925418106181749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025424 n + A000290 n) (A025423 n + A000290 n)

end

end A025433.P4918925418106181749

/-! ## A025433.P10235467400729313103

`(A025424(n)%A025423(n))%A000079(n)`
-/

namespace A025433.P10235467400729313103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A025424 n) (A025423 n)) (A000079 n)

end

end A025433.P10235467400729313103

/-! ## A025433.P4419412861142103965

`A118759(A025424(n)%A025423(n))`
-/

namespace A025433.P4419412861142103965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A025424 n) (A025423 n)).toNat

end

end A025433.P4419412861142103965

/-! ## A025433.P11569836746307884248

`(A010052(A000290(n))*A025424(n))%A025423(n)`
-/

namespace A025433.P11569836746307884248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010052 (A000290 n).toNat * A025424 n) (A025423 n)

end

end A025433.P11569836746307884248

/-!
# A025434: Number of partitions of n into 10 nonzero squares.

The programs for A025434, there is no canonical definition to state claims against.
-/

/-! ## A025434.P13762133163295447747

`A025425(n)-A025424(n)`
-/

namespace A025434.P13762133163295447747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 n - A025424 n

end

end A025434.P13762133163295447747

/-! ## A025434.P11706769864528394801

`A025425(n)-(A025433(n)+A025423(n))`
-/

namespace A025434.P11706769864528394801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 n - (A025433 n + A025423 n)

end

end A025434.P11706769864528394801

/-! ## A025434.P8456101915929307036

`A025425(n)-(A025422(n)+A025433(n)+A025432(n))`
-/

namespace A025434.P8456101915929307036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025425 n - (A025422 n + (A025433 n + A025432 n))

end

end A025434.P8456101915929307036

/-! ## A025434.P15241112790711819650

`(A025425(n)+A000290(n))%(A025424(n)+A000290(n))`
-/

namespace A025434.P15241112790711819650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025425 n + A000290 n) (A025424 n + A000290 n)

end

end A025434.P15241112790711819650

/-! ## A025434.P1345506475485369962

`(A001222(A089894(n))*A025425(n))%A025424(n)`
-/

namespace A025434.P1345506475485369962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A089894 n).toNat * A025425 n) (A025424 n)

end

end A025434.P1345506475485369962

/-! ## A025434.P2857722307997619392

`A118759(A025425(n)%A025424(n))`
-/

namespace A025434.P2857722307997619392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A025425 n) (A025424 n)).toNat

end

end A025434.P2857722307997619392

/-! ## A025434.P15377187939574904606

`(A010052(A000290(n))*A025425(n))%A025424(n)`
-/

namespace A025434.P15377187939574904606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010052 (A000290 n).toNat * A025425 n) (A025424 n)

end

end A025434.P15377187939574904606

/-!
# A025435: Number of partitions of n into 2 distinct squares.

The programs for A025435, the canonical program `A025435.P3024463487466648612` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025435 has offset 0).

The definition of A025435 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A010052, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025435.P3024463487466648612

`A000161(n)-A010052(2*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A025435

/-- `A000161(n)-A010052(2*n)` -/
def P3024463487466648612.Spec : Prop :=
  ∀ n, P3024463487466648612.a n = A025435 n

theorem P3024463487466648612.correct : P3024463487466648612.Spec := by
  intro n
  simp only [A025435]

end A025435

/-! ## A025435.P724066653720692643

`A025426(2*n)`
-/

namespace A025435.P724066653720692643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (2 * n)

end

end A025435.P724066653720692643

namespace A025435

/-- `A025426(2*n)` -/
def P724066653720692643.Spec : Prop :=
  ∀ n, P724066653720692643.a n = A025435 n

end A025435

/-! ## A025435.P10040719553890005561

`floor(A000925(n)/2)`
-/

namespace A025435.P10040719553890005561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000925 n : ℚ) / 2⌋

end

end A025435.P10040719553890005561

namespace A025435

/-- `floor(A000925(n)/2)` -/
def P10040719553890005561.Spec : Prop :=
  ∀ n, P10040719553890005561.a n = A025435 n

end A025435

/-! ## A025435.P18249499890409970544

`dr(A025426(n+n))`
-/

namespace A025435.P18249499890409970544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A025426 (n + n))

end

end A025435.P18249499890409970544

namespace A025435

/-- `dr(A025426(n+n))` -/
def P18249499890409970544.Spec : Prop :=
  ∀ n, (P18249499890409970544.a n : ℤ) = A025435 n

end A025435

/-! ## A025435.P6462517204533410169

`round(A143574(n)/(n+1))`
-/

namespace A025435.P6462517204533410169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A143574 n : ℚ) / (n + 1 : ℚ))

end

end A025435.P6462517204533410169

namespace A025435

/-- `round(A143574(n)/(n+1))` -/
def P6462517204533410169.Spec : Prop :=
  ∀ n, P6462517204533410169.a n = A025435 n

end A025435

/-! ## A025435.P7972417733700812155

`A025441(n)+char[(n+1)²]`
-/

namespace A025435.P7972417733700812155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025435.P7972417733700812155

namespace A025435

/-- `A025441(n)+char[(n+1)²]` -/
def P7972417733700812155.Spec : Prop :=
  ∀ n, P7972417733700812155.a n = A025435 n

end A025435

/-! ## A025435.P18249762710678318849

`A004526(A000925(n))`
-/

namespace A025435.P18249762710678318849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000925 n).toNat

end

end A025435.P18249762710678318849

namespace A025435

/-- `A004526(A000925(n))` -/
def P18249762710678318849.Spec : Prop :=
  ∀ n, P18249762710678318849.a n = A025435 n

end A025435

/-! ## A025435.P18370603505193898365

`A002265(2*A000925(n))`
-/

namespace A025435.P18370603505193898365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A000925 n).toNat

end

end A025435.P18370603505193898365

namespace A025435

/-- `A002265(2*A000925(n))` -/
def P18370603505193898365.Spec : Prop :=
  ∀ n, P18370603505193898365.a n = A025435 n

end A025435

/-! ## A025435.P1811726224369931272

`A000925(n)-A000161(n)`
-/

namespace A025435.P1811726224369931272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n - A000161 n

end

end A025435.P1811726224369931272

namespace A025435

/-- `A000925(n)-A000161(n)` -/
def P1811726224369931272.Spec : Prop :=
  ∀ n, P1811726224369931272.a n = A025435 n

end A025435

/-! ## A025435.P13670241580746225851

`A000161(n)-A379480(n)`
-/

namespace A025435.P13670241580746225851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n - A379480 n

end

end A025435.P13670241580746225851

namespace A025435

/-- `A000161(n)-A379480(n)` -/
def P13670241580746225851.Spec : Prop :=
  ∀ n, P13670241580746225851.a n = A025435 n

end A025435

/-! ## A025435.P15202588527514264920

`A273190(n)-A393564(n)`
-/

namespace A025435.P15202588527514264920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 n - A393564 n

end

end A025435.P15202588527514264920

namespace A025435

/-- `A273190(n)-A393564(n)` -/
def P15202588527514264920.Spec : Prop :=
  ∀ n, P15202588527514264920.a n = A025435 n

end A025435

/-! ## A025435.P5714873704962666630

`A008621(2*A000925(n))-1`
-/

namespace A025435.P5714873704962666630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A000925 n).toNat - 1

end

end A025435.P5714873704962666630

namespace A025435

/-- `A008621(2*A000925(n))-1` -/
def P5714873704962666630.Spec : Prop :=
  ∀ n, P5714873704962666630.a n = A025435 n

end A025435

/-! ## A025435.P13077552341012190198

`A004907(or(1, A000925(n)))/2`
-/

namespace A025435.P13077552341012190198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004907 (Int.lor 1 (A000925 n)).toNat : ℚ) / 2

end

end A025435.P13077552341012190198

namespace A025435

/-- `A004907(or(1, A000925(n)))/2` -/
def P13077552341012190198.Spec : Prop :=
  ∀ n, P13077552341012190198.a n = (A025435 n : ℚ)

end A025435

/-! ## A025435.P15084496177990707127

`A010052(n)+A025441(n)-A000007(n)`
-/

namespace A025435.P15084496177990707127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025441 n - A000007 n)

end

end A025435.P15084496177990707127

namespace A025435

/-- `A010052(n)+A025441(n)-A000007(n)` -/
def P15084496177990707127.Spec : Prop :=
  ∀ n, P15084496177990707127.a n = A025435 n

end A025435

/-! ## A025435.P9749143383434503019

`ceil(A063725(2*n)/2)`
-/

namespace A025435.P9749143383434503019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063725 (2 * n) : ℚ) / 2⌉

end

end A025435.P9749143383434503019

namespace A025435

/-- `ceil(A063725(2*n)/2)` -/
def P9749143383434503019.Spec : Prop :=
  ∀ n, P9749143383434503019.a n = A025435 n

end A025435

/-! ## A025435.P535607077406855817

`A063725(2*n)-A025441(n)`
-/

namespace A025435.P535607077406855817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (2 * n) - A025441 n

end

end A025435.P535607077406855817

namespace A025435

/-- `A063725(2*n)-A025441(n)` -/
def P535607077406855817.Spec : Prop :=
  ∀ n, P535607077406855817.a n = A025435 n

end A025435

/-! ## A025435.P1080944316313841832

`A394746(2*n)-A393711(2*n)`
-/

namespace A025435.P1080944316313841832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394746 (2 * n) - A393711 (2 * n)

end

end A025435.P1080944316313841832

namespace A025435

/-- `A394746(2*n)-A393711(2*n)` -/
def P1080944316313841832.Spec : Prop :=
  ∀ n, P1080944316313841832.a n = A025435 n

end A025435

/-! ## A025435.P8286001019547746724

`floor(sqrt(A084888(2*n)))`
-/

namespace A025435.P8286001019547746724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A084888 (2 * n))

end

end A025435.P8286001019547746724

namespace A025435

/-- `floor(sqrt(A084888(2*n)))` -/
def P8286001019547746724.Spec : Prop :=
  ∀ n, P8286001019547746724.a n = A025435 n

end A025435

/-! ## A025435.P10795316903784264396

`A000196(A084888(2*n))`
-/

namespace A025435.P10795316903784264396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A084888 (2 * n)).toNat

end

end A025435.P10795316903784264396

namespace A025435

/-- `A000196(A084888(2*n))` -/
def P10795316903784264396.Spec : Prop :=
  ∀ n, P10795316903784264396.a n = A025435 n

end A025435

/-! ## A025435.P114851475877992285

`A001222(A000925(n*A000925(n)²))`
-/

namespace A025435.P114851475877992285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000925 ((n : ℤ) * A000925 n ^ 2).toNat).toNat

end

end A025435.P114851475877992285

namespace A025435

/-- `A001222(A000925(n*A000925(n)²))` -/
def P114851475877992285.Spec : Prop :=
  ∀ n, P114851475877992285.a n = A025435 n

end A025435

/-!
# A025436: Number of partitions of n into 3 distinct squares.

The programs for A025436, there is no canonical definition to state claims against.
-/

/-! ## A025436.P16098843204691534421

`A025442(n)+A025441(n)`
-/

namespace A025436.P16098843204691534421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + A025441 n

end

end A025436.P16098843204691534421

/-! ## A025436.P12282377475873445247

`A347534(n)-A010052(n)`
-/

namespace A025436.P12282377475873445247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n - A010052 n

end

end A025436.P12282377475873445247

/-! ## A025436.P15795108712181459473

`A025442(n)+floor(A063725(n)/2)`
-/

namespace A025436.P15795108712181459473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + ⌊(A063725 n : ℚ) / 2⌋

end

end A025436.P15795108712181459473

/-! ## A025436.P9953372093532308059

`A025442(n)+floor(A004018(n)/8)`
-/

namespace A025436.P9953372093532308059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + ⌊(A004018 n : ℚ) / 8⌋

end

end A025436.P9953372093532308059

/-! ## A025436.P12135298410766723441

`A025442(n)+A025435(n)-char[(n+1)²]`
-/

namespace A025436.P12135298410766723441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + (A025435 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A025436.P12135298410766723441

/-! ## A025436.P1066304460399153657

`A025442(n)+A004526(A063725(n))`
-/

namespace A025436.P1066304460399153657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + A004526 (A063725 n).toNat

end

end A025436.P1066304460399153657

/-! ## A025436.P7881275150680246942

`A000164(n)-A110655(A033715(n))`
-/

namespace A025436.P7881275150680246942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A110655 (A033715 n).toNat

end

end A025436.P7881275150680246942

/-! ## A025436.P6557655533233867232

`A000164(n)-A216282(A008574(n))`
-/

namespace A025436.P6557655533233867232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A216282 (A008574 n).toNat

end

end A025436.P6557655533233867232

/-! ## A025436.P12664382994428383574

`A000164(n)-A216282(A257088(n))`
-/

namespace A025436.P12664382994428383574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A216282 (A257088 n).toNat

end

end A025436.P12664382994428383574

/-! ## A025436.P9160752945524878870

`A025437(n)+A025441(n)-A025443(n)`
-/

namespace A025436.P9160752945524878870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n - A025443 n)

end

end A025436.P9160752945524878870

/-! ## A025436.P6379782498952190189

`A357069(n)-(A025443(n)+A010052(n))`
-/

namespace A025436.P6379782498952190189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357069 n - (A025443 n + A010052 n)

end

end A025436.P6379782498952190189

/-! ## A025436.P866965894339060946

`A000164(n)-A216282(A022144(n))`
-/

namespace A025436.P866965894339060946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A216282 (A022144 n).toNat

end

end A025436.P866965894339060946

/-! ## A025436.P14543939301117647418

`A000164(n)-A216282(A233583(n+1))`
-/

namespace A025436.P14543939301117647418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A216282 (A233583 (n + 1)).toNat

end

end A025436.P14543939301117647418

/-!
# A025437: Number of partitions of n into 4 distinct squares.

The programs for A025437, there is no canonical definition to state claims against.
-/

/-! ## A025437.P1856816434941602417

`A025443(n)+A025442(n)`
-/

namespace A025437.P1856816434941602417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + A025442 n

end

end A025437.P1856816434941602417

/-! ## A025437.P10982379660026950777

`A025436(n)+A025443(n)-A025441(n)`
-/

namespace A025437.P10982379660026950777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n + (A025443 n - A025441 n)

end

end A025437.P10982379660026950777

/-! ## A025437.P14286005830840090291

`A025438(n)+A025442(n)-A025444(n)`
-/

namespace A025437.P14286005830840090291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n + (A025442 n - A025444 n)

end

end A025437.P14286005830840090291

/-! ## A025437.P1701244308069469872

`A357069(n)-(A025441(n)+A010052(n))`
-/

namespace A025437.P1701244308069469872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357069 n - (A025441 n + A010052 n)

end

end A025437.P1701244308069469872

/-! ## A025437.P323828623264800123

`A025442(n)+A357069(n)-A347534(n)`
-/

namespace A025437.P323828623264800123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + (A357069 n - A347534 n)

end

end A025437.P323828623264800123

/-! ## A025437.P5107051080228007048

`A025427(n)+A025443(n)-A002265(A033715(n))`
-/

namespace A025437.P5107051080228007048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + (A025443 n - A002265 (A033715 n).toNat)

end

end A025437.P5107051080228007048

/-! ## A025437.P4576659248506520860

`A025436(n)+A025443(n)-A004526(A063725(n))`
-/

namespace A025437.P4576659248506520860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n + (A025443 n - A004526 (A063725 n).toNat)

end

end A025437.P4576659248506520860

/-! ## A025437.P7487666568465650788

`A025443(n)+A025436(n)+A093709(n)-A000161(n)`
-/

namespace A025437.P7487666568465650788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + (A025436 n + (A093709 n - A000161 n))

end

end A025437.P7487666568465650788

/-! ## A025437.P2792652802292518781

`A025443(n)+A008615(A339431(n))%5`
-/

namespace A025437.P2792652802292518781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + Int.tmod (A008615 (A339431 n).toNat) 5

end

end A025437.P2792652802292518781

/-! ## A025437.P10959991691698914163

`A025442(n)+A025427(A339430(n)²)`
-/

namespace A025437.P10959991691698914163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + A025427 (A339430 n ^ 2).toNat

end

end A025437.P10959991691698914163

/-!
# A025438: Number of partitions of n into 5 distinct squares.

The programs for A025438, there is no canonical definition to state claims against.
-/

/-! ## A025438.P9609082687405673066

`A025444(n)+A025443(n)`
-/

namespace A025438.P9609082687405673066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + A025443 n

end

end A025438.P9609082687405673066

/-! ## A025438.P12273883327859964383

`A025437(n)+A025444(n)-A025442(n)`
-/

namespace A025438.P12273883327859964383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025444 n - A025442 n)

end

end A025438.P12273883327859964383

/-! ## A025438.P17990972899031349684

`A025444(n)+A357069(n)-A347534(n)`
-/

namespace A025438.P17990972899031349684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (A357069 n - A347534 n)

end

end A025438.P17990972899031349684

/-! ## A025438.P14692011031483531176

`A025444(n)+A025437(n)+A025441(n)-A025436(n)`
-/

namespace A025438.P14692011031483531176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (A025437 n + (A025441 n - A025436 n))

end

end A025438.P14692011031483531176

/-! ## A025438.P2979976799580617801

`A025444(n)+A025437(n)-(A025427(n)-A002265(A033715(n)))`
-/

namespace A025438.P2979976799580617801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (A025437 n - (A025427 n - A002265 (A033715 n).toNat))

end

end A025438.P2979976799580617801

/-! ## A025438.P17948228615664058744

`A025444(n)+A025437(n)-(A025436(n)-A004526(A063725(n)))`
-/

namespace A025438.P17948228615664058744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (A025437 n - (A025436 n - A004526 (A063725 n).toNat))

end

end A025438.P17948228615664058744

/-! ## A025438.P11790650033631158322

`A025444(n)+A025428(n)-A110654(A213024(n))`
-/

namespace A025438.P11790650033631158322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (A025428 n - A110654 (A213024 n).toNat)

end

end A025438.P11790650033631158322

/-! ## A025438.P16179419968978051570

`A025443(n)+val(A276076(A339431(n)), 11)`
-/

namespace A025438.P16179419968978051570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + (SequenceMachineLib.valuation (A276076 (A339431 n).toNat).toNat 11 : ℤ)

end

end A025438.P16179419968978051570

/-! ## A025438.P2810032292279239873

`A025444(n)+A025437(n)-A224772(A214392(n)^A178334(n))`
-/

namespace A025438.P2810032292279239873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + (A025437 n - A224772 (SequenceMachineLib.roundAway ((A214392 n : ℚ) ^ (A178334 n : ℤ))).toNat)

end

end A025438.P2810032292279239873

/-! ## A025438.P1123579950663859355

`A025439(n)+A025427(A339430(n)²)`
-/

namespace A025438.P1123579950663859355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A025427 (A339430 n ^ 2).toNat

end

end A025438.P1123579950663859355

/-!
# A025439: Number of partitions of n into 6 distinct squares.

The programs for A025439, there is no canonical definition to state claims against.
-/

/-! ## A025439.P2204959514085523799

`A034968(A331844(n)%A039938(n+1))-A357069(n)`
-/

namespace A025439.P2204959514085523799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (A331844 n) (A039938 (n + 1))).toNat - A357069 n

end

end A025439.P2204959514085523799

/-! ## A025439.P15002978586946791900

`A034968(A331844(n)%A198277(n))-A357069(n)`
-/

namespace A025439.P15002978586946791900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (A331844 n) (A198277 n)).toNat - A357069 n

end

end A025439.P15002978586946791900

/-! ## A025439.P12034405594176282879

`A025444(n)^abs(A123019(n))`
-/

namespace A025439.P12034405594176282879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) ^ (|A123019 n| : ℤ)

end

end A025439.P12034405594176282879

/-! ## A025439.P8189641756444789949

`A025444(n)^A256756(ceil(n/sin(2))+10)`
-/

namespace A025439.P8189641756444789949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) ^ (A256756 (⌈(n : ℝ) / Real.sin (2 : ℝ)⌉ + 10).toNat : ℤ)

end

end A025439.P8189641756444789949

/-! ## A025439.P14943461138674453628

`A025444(n)^A256756(10-floor(n/sin(-2)))`
-/

namespace A025439.P14943461138674453628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) ^ (A256756 (10 - ⌊(n : ℝ) / Real.sin (-2 : ℝ)⌋).toNat : ℤ)

end

end A025439.P14943461138674453628

/-! ## A025439.P18153513093436927214

`A025444(n)^A083434(A126759(n))`
-/

namespace A025439.P18153513093436927214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) ^ (A083434 (A126759 n).toNat : ℤ)

end

end A025439.P18153513093436927214

/-! ## A025439.P1022352447324585731

`A025444(n)^A173681(A003622(n+1))`
-/

namespace A025439.P1022352447324585731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) ^ (A173681 (A003622 (n + 1)).toNat : ℤ)

end

end A025439.P1022352447324585731

/-! ## A025439.P669993973175739521

`A025444(n)^(A081422(n)-A025462(n))`
-/

namespace A025439.P669993973175739521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) ^ (A081422 n - A025462 n : ℤ)

end

end A025439.P669993973175739521

/-! ## A025439.P15266895200695374831

`A025444(n)^A130912(A233583(2*(n+1)))`
-/

namespace A025439.P15266895200695374831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℚ) ^ (A130912 (A233583 (2 * (n + 1))).toNat : ℤ)

end

end A025439.P15266895200695374831

/-! ## A025439.P15748626924262668810

`A025444(A259361(n²)+1-A025446(n))`
-/

namespace A025439.P15748626924262668810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A259361 (n ^ 2) + 1 - A025446 n).toNat

end

end A025439.P15748626924262668810

/-! ## A025439.P17537208352818619569

`A025444(A259361(n²)+1-A025455(n))`
-/

namespace A025439.P17537208352818619569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A259361 (n ^ 2) + 1 - A025455 n).toNat

end

end A025439.P17537208352818619569

/-! ## A025439.P11456339765802811180

`A025444(A259361(n²)+1-A025464(n))`
-/

namespace A025439.P11456339765802811180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A259361 (n ^ 2) + 1 - A025464 n).toNat

end

end A025439.P11456339765802811180

/-! ## A025439.P13431228236395700873

`A025444(A259361(n²)+1-A025468(n))`
-/

namespace A025439.P13431228236395700873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A259361 (n ^ 2) + 1 - A025468 n).toNat

end

end A025439.P13431228236395700873

/-! ## A025439.P7445474610794009390

`A025444(xor(A259361(n²)+1, A025464(n)))`
-/

namespace A025439.P7445474610794009390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (Int.xor (A259361 (n ^ 2) + 1) (A025464 n)).toNat

end

end A025439.P7445474610794009390

/-! ## A025439.P9865213699222773602

`A025444(n)^A248509(n+1)^A340988(n)`
-/

namespace A025439.P9865213699222773602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025444 n : ℝ) ^ ((A248509 (n + 1) : ℚ) ^ (A340988 (n + 91) : ℤ) : ℝ)

end

end A025439.P9865213699222773602

/-! ## A025439.P13212318265880930864

`A025444(A025444(A202728(n+1)))+A025444(n)`
-/

namespace A025439.P13212318265880930864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A025444 (A202728 (n + 1)).toNat).toNat + A025444 n

end

end A025439.P13212318265880930864

/-!
# A025440: Expansion of 1/((1-2x)(1-3x)(1-4x)(1-6x)).

The programs for A025440, the canonical program `A025440.P11251878173917130302` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025440 has offset 0).

The definition of A025440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025440.P11251878173917130302

`A016765(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025440

/-- `A016765(n)+2*a(n-1)` -/
def P11251878173917130302.Spec : Prop :=
  ∀ n, P11251878173917130302.a n = A025440 n

theorem P11251878173917130302.correct : P11251878173917130302.Spec := by
  intro n
  simp only [A025440]

end A025440

/-! ## A025440.P5719609849875052995

`∑[A027650(n)]+6*a(n-1)` with `a(0)=1`
-/

namespace A025440.P5719609849875052995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A025440.P5719609849875052995

namespace A025440

/-- `∑[A027650(n)]+6*a(n-1)` -/
def P5719609849875052995.Spec : Prop :=
  ∀ n, P5719609849875052995.a n = A025440 n

end A025440

/-! ## A025440.P6535888323472807224

`Δ[A016200(n)-A016208(n)]`
-/

namespace A025440.P6535888323472807224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016200 n - A016208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025440.P6535888323472807224

namespace A025440

/-- `Δ[A016200(n)-A016208(n)]` -/
def P6535888323472807224.Spec : Prop :=
  ∀ n, P6535888323472807224.a n = A025440 n

end A025440

/-! ## A025440.P9328681697713735630

`Δ[A056273(n+4)-A007581(n+3)]`
-/

namespace A025440.P9328681697713735630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (n + 4) - A007581 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025440.P9328681697713735630

namespace A025440

/-- `Δ[A056273(n+4)-A007581(n+3)]` -/
def P9328681697713735630.Spec : Prop :=
  ∀ n, P9328681697713735630.a n = A025440 n

end A025440

/-! ## A025440.P4594822919295810328

`Δ[A056273(n+4)-A124303(n+4)]`
-/

namespace A025440.P4594822919295810328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (n + 4) - A124303 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025440.P4594822919295810328

namespace A025440

/-- `Δ[A056273(n+4)-A124303(n+4)]` -/
def P4594822919295810328.Spec : Prop :=
  ∀ n, P4594822919295810328.a n = A025440 n

end A025440

/-! ## A025440.P17417424025240484222

`∑[A016765(n)/A000079(n)]*A000079(n)`
-/

namespace A025440.P17417424025240484222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016765 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A025440.P17417424025240484222

namespace A025440

/-- `∑[A016765(n)/A000079(n)]*A000079(n)` -/
def P17417424025240484222.Spec : Prop :=
  ∀ n, P17417424025240484222.a n = (A025440 n : ℚ)

end A025440

/-! ## A025440.P1599390251410974526

`A005173(n+2)+A000225(n+1)*A005173(n+1)`
-/

namespace A025440.P1599390251410974526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005173 (n + 2) + A000225 (n + 1) * A005173 (n + 1)

end

end A025440.P1599390251410974526

namespace A025440

/-- `A005173(n+2)+A000225(n+1)*A005173(n+1)` -/
def P1599390251410974526.Spec : Prop :=
  ∀ n, P1599390251410974526.a n = A025440 n

end A025440

/-! ## A025440.P2979456750042951143

`Δ[A021076(n)-A021029(n)]`
-/

namespace A025440.P2979456750042951143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021076 n - A021029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025440.P2979456750042951143

namespace A025440

/-- `Δ[A021076(n)-A021029(n)]` -/
def P2979456750042951143.Spec : Prop :=
  ∀ n, P2979456750042951143.a n = A025440 n

end A025440

/-!
# A025441: Number of partitions of n into 2 distinct nonzero squares.

The programs for A025441, the canonical program `A025441.P2356104381513953852` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025441 has offset 0).

The definition of A025441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A093709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025441.P2356104381513953852

`A000161(n)-A093709(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A025441

/-- `A000161(n)-A093709(n)` -/
def P2356104381513953852.Spec : Prop :=
  ∀ n, P2356104381513953852.a n = A025441 n

theorem P2356104381513953852.correct : P2356104381513953852.Spec := by
  intro n
  simp only [A025441]

end A025441

/-! ## A025441.P11878837708827307268

`floor(A063725(n)/2)`
-/

namespace A025441.P11878837708827307268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063725 n : ℚ) / 2⌋

end

end A025441.P11878837708827307268

namespace A025441

/-- `floor(A063725(n)/2)` -/
def P11878837708827307268.Spec : Prop :=
  ∀ n, P11878837708827307268.a n = A025441 n

end A025441

/-! ## A025441.P8501121778967109863

`floor(A004018(n)/8)`
-/

namespace A025441.P8501121778967109863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004018 n : ℚ) / 8⌋

end

end A025441.P8501121778967109863

namespace A025441

/-- `floor(A004018(n)/8)` -/
def P8501121778967109863.Spec : Prop :=
  ∀ n, P8501121778967109863.a n = A025441 n

end A025441

/-! ## A025441.P18349543498619956720

`A025435(n)-char[(n+1)²]`
-/

namespace A025441.P18349543498619956720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025441.P18349543498619956720

namespace A025441

/-- `A025435(n)-char[(n+1)²]` -/
def P18349543498619956720.Spec : Prop :=
  ∀ n, P18349543498619956720.a n = A025441 n

end A025441

/-! ## A025441.P13677050168931960832

`A004526(A063725(n))`
-/

namespace A025441.P13677050168931960832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063725 n).toNat

end

end A025441.P13677050168931960832

namespace A025441

/-- `A004526(A063725(n))` -/
def P13677050168931960832.Spec : Prop :=
  ∀ n, P13677050168931960832.a n = A025441 n

end A025441

/-! ## A025441.P15269482694003613536

`A008615(3*A063725(n))`
-/

namespace A025441.P15269482694003613536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A063725 n).toNat

end

end A025441.P15269482694003613536

namespace A025441

/-- `A008615(3*A063725(n))` -/
def P15269482694003613536.Spec : Prop :=
  ∀ n, P15269482694003613536.a n = A025441 n

end A025441

/-! ## A025441.P1602158854517842014

`A004524(or(1, A063725(n)))`
-/

namespace A025441.P1602158854517842014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A063725 n)).toNat

end

end A025441.P1602158854517842014

namespace A025441

/-- `A004524(or(1, A063725(n)))` -/
def P1602158854517842014.Spec : Prop :=
  ∀ n, P1602158854517842014.a n = A025441 n

end A025441

/-! ## A025441.P4646295675580751791

`A025436(n)-A025442(n)`
-/

namespace A025441.P4646295675580751791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025442 n

end

end A025441.P4646295675580751791

namespace A025441

/-- `A025436(n)-A025442(n)` -/
def P4646295675580751791.Spec : Prop :=
  ∀ n, P4646295675580751791.a n = A025441 n

end A025441

/-! ## A025441.P539627594310623948

`A063725(n)-A025426(n)`
-/

namespace A025441.P539627594310623948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n - A025426 n

end

end A025441.P539627594310623948

namespace A025441

/-- `A063725(n)-A025426(n)` -/
def P539627594310623948.Spec : Prop :=
  ∀ n, P539627594310623948.a n = A025441 n

end A025441

/-! ## A025441.P17777611310547388914

`A320278(n)-A393564(n)`
-/

namespace A025441.P17777611310547388914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 n - A393564 n

end

end A025441.P17777611310547388914

namespace A025441

/-- `A320278(n)-A393564(n)` -/
def P17777611310547388914.Spec : Prop :=
  ∀ n, P17777611310547388914.a n = A025441 n

end A025441

/-! ## A025441.P17217918577226930494

`A025426(n*A169695(n))`
-/

namespace A025441.P17217918577226930494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 ((n : ℤ) * A169695 n).toNat

end

end A025441.P17217918577226930494

namespace A025441

/-- `A025426(n*A169695(n))` -/
def P17217918577226930494.Spec : Prop :=
  ∀ n, P17217918577226930494.a n = A025441 n

end A025441

/-! ## A025441.P5226516169060823152

`A025426(n*(2-A010052(n)))`
-/

namespace A025441.P5226516169060823152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 ((n : ℤ) * (2 - A010052 n)).toNat

end

end A025441.P5226516169060823152

namespace A025441

/-- `A025426(n*(2-A010052(n)))` -/
def P5226516169060823152.Spec : Prop :=
  ∀ n, P5226516169060823152.a n = A025441 n

end A025441

/-! ## A025441.P11695986334708805839

`A004018(n)+1-A228298(A004018(n)+1)`
-/

namespace A025441.P11695986334708805839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n + (1 - A228298 (A004018 n + 1).toNat)

end

end A025441.P11695986334708805839

namespace A025441

/-- `A004018(n)+1-A228298(A004018(n)+1)` -/
def P11695986334708805839.Spec : Prop :=
  ∀ n, P11695986334708805839.a n = A025441 n

end A025441

/-! ## A025441.P17636007085898959228

`A025435(A037213(n)²+n)`
-/

namespace A025441.P17636007085898959228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (A037213 n ^ 2 + (n : ℤ)).toNat

end

end A025441.P17636007085898959228

namespace A025441

/-- `A025435(A037213(n)²+n)` -/
def P17636007085898959228.Spec : Prop :=
  ∀ n, P17636007085898959228.a n = A025441 n

end A025441

/-! ## A025441.P11961201024405366877

`A063725(n)-A025435(2*n)`
-/

namespace A025441.P11961201024405366877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n - A025435 (2 * n)

end

end A025441.P11961201024405366877

namespace A025441

/-- `A063725(n)-A025435(2*n)` -/
def P11961201024405366877.Spec : Prop :=
  ∀ n, P11961201024405366877.a n = A025441 n

end A025441

/-! ## A025441.P10656222587852819949

`A393712(n)-A393710(n)`
-/

namespace A025441.P10656222587852819949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393712 n - A393710 n

end

end A025441.P10656222587852819949

namespace A025441

/-- `A393712(n)-A393710(n)` -/
def P10656222587852819949.Spec : Prop :=
  ∀ n, P10656222587852819949.a n = A025441 n

end A025441

/-! ## A025441.P14781118167402280660

`A073490(A063725(n)^7+1)`
-/

namespace A025441.P14781118167402280660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A063725 n ^ 7 + 1).toNat

end

end A025441.P14781118167402280660

namespace A025441

/-- `A073490(A063725(n)^7+1)` -/
def P14781118167402280660.Spec : Prop :=
  ∀ n, P14781118167402280660.a n = A025441 n

end A025441

/-!
# A025442: Number of partitions of n into 3 distinct nonzero squares.

The programs for A025442, there is no canonical definition to state claims against.
-/

/-! ## A025442.P6673960766326523138

`A025436(n)-A025441(n)`
-/

namespace A025442.P6673960766326523138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

end

end A025442.P6673960766326523138

/-! ## A025442.P7379120576168485143

`A025437(n)-A025443(n)`
-/

namespace A025442.P7379120576168485143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n - A025443 n

end

end A025442.P7379120576168485143

/-! ## A025442.P6265944551707966491

`A025436(n)-floor(A063725(n)/2)`
-/

namespace A025442.P6265944551707966491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - ⌊(A063725 n : ℚ) / 2⌋

end

end A025442.P6265944551707966491

/-! ## A025442.P12779477426074742788

`A025436(n)-floor(A004018(n)/8)`
-/

namespace A025442.P12779477426074742788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - ⌊(A004018 n : ℚ) / 8⌋

end

end A025442.P12779477426074742788

/-! ## A025442.P17744572167230172934

`A025436(n)-(A025435(n)-char[(n+1)²])`
-/

namespace A025442.P17744572167230172934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - (A025435 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A025442.P17744572167230172934

/-! ## A025442.P7236981492438017940

`A025427(n)-A002265(A033715(n))`
-/

namespace A025442.P7236981492438017940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n - A002265 (A033715 n).toNat

end

end A025442.P7236981492438017940

/-! ## A025442.P7126306512776757495

`A025436(n)-A004526(A063725(n))`
-/

namespace A025442.P7126306512776757495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A004526 (A063725 n).toNat

end

end A025442.P7126306512776757495

/-! ## A025442.P10207498588623489454

`A025426(n)+A025436(n)-A063725(n)`
-/

namespace A025442.P10207498588623489454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + (A025436 n - A063725 n)

end

end A025442.P10207498588623489454

/-! ## A025442.P13407010049659855427

`A025436(n)+A093709(n)-A000161(n)`
-/

namespace A025442.P13407010049659855427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n + (A093709 n - A000161 n)

end

end A025442.P13407010049659855427

/-! ## A025442.P14049767233438101757

`A008615(A339431(n))%5`
-/

namespace A025442.P14049767233438101757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008615 (A339431 n).toNat) 5

end

end A025442.P14049767233438101757

/-! ## A025442.P4741376746988601020

`val(A276076(A331844(n)), 5)`
-/

namespace A025442.P4741376746988601020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276076 (A331844 n).toNat).toNat 5

end

end A025442.P4741376746988601020

/-! ## A025442.P17933831079059644284

`A224772(A214392(n^A178334(n)))`
-/

namespace A025442.P17933831079059644284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224772 (A214392 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A025442.P17933831079059644284

/-!
# A025443: Number of partitions of n into 4 distinct nonzero squares.

The programs for A025443, there is no canonical definition to state claims against.
-/

/-! ## A025443.P9747170630971711418

`A025437(n)-A025442(n)`
-/

namespace A025443.P9747170630971711418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n - A025442 n

end

end A025443.P9747170630971711418

/-! ## A025443.P2559088542109789470

`A025438(n)-A025444(n)`
-/

namespace A025443.P2559088542109789470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n - A025444 n

end

end A025443.P2559088542109789470

/-! ## A025443.P4871359764592006697

`A357069(n)-A347534(n)`
-/

namespace A025443.P4871359764592006697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357069 n - A347534 n

end

end A025443.P4871359764592006697

/-! ## A025443.P16921342374873445750

`A025437(n)+A025441(n)-A025436(n)`
-/

namespace A025443.P16921342374873445750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n - A025436 n)

end

end A025443.P16921342374873445750

/-! ## A025443.P9806597595865687923

`A025437(n)-(A025427(n)-A002265(A033715(n)))`
-/

namespace A025443.P9806597595865687923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n - (A025427 n - A002265 (A033715 n).toNat)

end

end A025443.P9806597595865687923

/-! ## A025443.P10443455643007881332

`A025437(n)-(A025436(n)-A004526(A063725(n)))`
-/

namespace A025443.P10443455643007881332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n - (A025436 n - A004526 (A063725 n).toNat)

end

end A025443.P10443455643007881332

/-! ## A025443.P3996251563519229288

`A025437(n)-(A025426(n)+A025436(n)-A063725(n))`
-/

namespace A025443.P3996251563519229288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n - (A025426 n + (A025436 n - A063725 n))

end

end A025443.P3996251563519229288

/-! ## A025443.P6663591898373905961

`A025428(n)-A110654(A213024(n))`
-/

namespace A025443.P6663591898373905961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n - A110654 (A213024 n).toNat

end

end A025443.P6663591898373905961

/-! ## A025443.P17844612123278715756

`A002635(n)-A000164(n)-A110654(A213024(n))`
-/

namespace A025443.P17844612123278715756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n - A110654 (A213024 n).toNat

end

end A025443.P17844612123278715756

/-! ## A025443.P13242483742525669979

`A243148(∑[n+1]-(n-3%(n+1)))-A110654(A213024(n))`
-/

namespace A025443.P13242483742525669979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - ((3 % (n + 1) : ℕ) : ℤ))).toNat - A110654 (A213024 n).toNat

end

end A025443.P13242483742525669979

/-! ## A025443.P1397585310344949306

`A025437(n)-val(A276076(A331844(n)), 5)`
-/

namespace A025443.P1397585310344949306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n - (SequenceMachineLib.valuation (A276076 (A331844 n).toNat).toNat 5 : ℤ)

end

end A025443.P1397585310344949306

/-!
# A025444: Number of partitions of n into 5 distinct nonzero squares.

The programs for A025444, there is no canonical definition to state claims against.
-/

/-! ## A025444.P2866948067643584190

`A025438(n)-A025443(n)`
-/

namespace A025444.P2866948067643584190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n - A025443 n

end

end A025444.P2866948067643584190

/-! ## A025444.P6873163430435623392

`A025438(n)+A025442(n)-A025437(n)`
-/

namespace A025444.P6873163430435623392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n + (A025442 n - A025437 n)

end

end A025444.P6873163430435623392

/-! ## A025444.P11941933640499169377

`A025438(n-char[1])-(A025437(n)-A025442(n))`
-/

namespace A025444.P11941933640499169377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 (n - (if ∃ j, f1 j = n then 1 else 0)) - (A025437 n - A025442 n)

end

end A025444.P11941933640499169377

/-! ## A025444.P558746926656462568

`A025438(n)-(A025437(n)+A025441(n)-A025436(n))`
-/

namespace A025444.P558746926656462568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n - (A025437 n + (A025441 n - A025436 n))

end

end A025444.P558746926656462568

/-! ## A025444.P17307924645899466161

`A025438(n)-(A025437(n)-(A025427(n)-A002265(A033715(n))))`
-/

namespace A025444.P17307924645899466161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n - (A025437 n - (A025427 n - A002265 (A033715 n).toNat))

end

end A025444.P17307924645899466161

/-! ## A025444.P1857521631006544561

`val(A276076(A339431(n)), 11)`
-/

namespace A025444.P1857521631006544561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276076 (A339431 n).toNat).toNat 11

end

end A025444.P1857521631006544561

/-! ## A025444.P5612823237839728254

`floor(A339431(n)/A327101(A116922(n+1)))`
-/

namespace A025444.P5612823237839728254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339431 n : ℚ) / (A327101 (A116922 (n + 1)).toNat : ℚ)⌋

end

end A025444.P5612823237839728254

/-! ## A025444.P5384179068851866197

`and(A025439(n), A247461(A082073(n+1)))`
-/

namespace A025444.P5384179068851866197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025439 n) (A247461 (A082073 (n + 1)).toNat)

end

end A025444.P5384179068851866197

/-! ## A025444.P10613796097043386135

`and(A025439(n), A252305(3*(n+1)))`
-/

namespace A025444.P10613796097043386135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025439 n) (A252305 (3 * (n + 1)))

end

end A025444.P10613796097043386135

/-! ## A025444.P4767842501892081002

`A025439(A106608(n)^A025439(n))`
-/

namespace A025444.P4767842501892081002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (SequenceMachineLib.roundAway ((A106608 n : ℚ) ^ (A025439 n : ℤ))).toNat

end

end A025444.P4767842501892081002

/-! ## A025444.P10343277292942156378

`and(A020500(A008302(n+1)), A025439(n))`
-/

namespace A025444.P10343277292942156378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020500 (A008302 (n + 1)).toNat) (A025439 n)

end

end A025444.P10343277292942156378

/-! ## A025444.P9314908719417231344

`and(A025439(n), A188666(A002061(n)))`
-/

namespace A025444.P9314908719417231344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025439 n) (A188666 (A002061 n).toNat)

end

end A025444.P9314908719417231344

/-! ## A025444.P16128590887232031403

`and(A001489(A044343(n+1)), A025439(n))`
-/

namespace A025444.P16128590887232031403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001489 (A044343 (n + 1)).toNat) (A025439 n)

end

end A025444.P16128590887232031403

/-!
# A025445: Expansion of 1/((1-2*x)*(1-3*x)*(1-4*x)*(1-7*x)).

The programs for A025445, the canonical program `A025445.P7593030426656216942` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025445 has offset 0).

The definition of A025445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025445.P7593030426656216942

`A016269(n)+7*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025445

/-- `A016269(n)+7*a(n-1)` -/
def P7593030426656216942.Spec : Prop :=
  ∀ n, P7593030426656216942.a n = A025445 n

theorem P7593030426656216942.correct : P7593030426656216942.Spec := by
  intro n
  simp only [A025445]

end A025445

/-! ## A025445.P1610849235656363844

`∑[A027650(n)]+7*a(n-1)` with `a(0)=1`
-/

namespace A025445.P1610849235656363844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7 * a (n - 1)

end

end A025445.P1610849235656363844

namespace A025445

/-- `∑[A027650(n)]+7*a(n-1)` -/
def P1610849235656363844.Spec : Prop :=
  ∀ n, P1610849235656363844.a n = A025445 n

end A025445

/-! ## A025445.P5600008020778449895

`a(n-1)+A016801(n)+a(n-1)` with `a(0)=1`
-/

namespace A025445.P5600008020778449895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016801 n + a (n - 1))

end

end A025445.P5600008020778449895

namespace A025445

/-- `a(n-1)+A016801(n)+a(n-1)` -/
def P5600008020778449895.Spec : Prop :=
  ∀ n, P5600008020778449895.a n = A025445 n

end A025445

/-! ## A025445.P12279271171844806678

`2*A021364(n)-A021079(n)`
-/

namespace A025445.P12279271171844806678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021364 n - A021079 n

end

end A025445.P12279271171844806678

namespace A025445

/-- `2*A021364(n)-A021079(n)` -/
def P12279271171844806678.Spec : Prop :=
  ∀ n, P12279271171844806678.a n = A025445 n

end A025445

/-! ## A025445.P6174339924932938496

`A025931(n)+A025931(n)-A025959(n)`
-/

namespace A025445.P6174339924932938496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025931 n + (A025931 n - A025959 n)

end

end A025445.P6174339924932938496

namespace A025445

/-- `A025931(n)+A025931(n)-A025959(n)` -/
def P6174339924932938496.Spec : Prop :=
  ∀ n, P6174339924932938496.a n = A025445 n

end A025445

/-! ## A025445.P6480429263708594186

`∑[A016269(n)/A000420(n)]*A000420(n)`
-/

namespace A025445.P6480429263708594186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016269 n : ℚ) / (A000420 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000420 n : ℚ)

end

end A025445.P6480429263708594186

namespace A025445

/-- `∑[A016269(n)/A000420(n)]*A000420(n)` -/
def P6480429263708594186.Spec : Prop :=
  ∀ n, P6480429263708594186.a n = (A025445 n : ℚ)

end A025445

/-! ## A025445.P14784330532629236528

`Δ[A021079(n)-A021034(n)]`
-/

namespace A025445.P14784330532629236528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021079 n - A021034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025445.P14784330532629236528

namespace A025445

/-- `Δ[A021079(n)-A021034(n)]` -/
def P14784330532629236528.Spec : Prop :=
  ∀ n, P14784330532629236528.a n = A025445 n

end A025445

/-! ## A025445.P11101778543891293936

`Δ[A021364(n)-A021079(n)]`
-/

namespace A025445.P11101778543891293936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021364 n - A021079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025445.P11101778543891293936

namespace A025445

/-- `Δ[A021364(n)-A021079(n)]` -/
def P11101778543891293936.Spec : Prop :=
  ∀ n, P11101778543891293936.a n = A025445 n

end A025445

/-! ## A025445.P418747114335343998

`2*A025931(n)-A025959(n)`
-/

namespace A025445.P418747114335343998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025931 n - A025959 n

end

end A025445.P418747114335343998

namespace A025445

/-- `2*A025931(n)-A025959(n)` -/
def P418747114335343998.Spec : Prop :=
  ∀ n, P418747114335343998.a n = A025445 n

end A025445

/-! ## A025445.P934161523360853954

`2*A025927(n)-A025945(n)`
-/

namespace A025445.P934161523360853954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025927 n - A025945 n

end

end A025445.P934161523360853954

namespace A025445

/-- `2*A025927(n)-A025945(n)` -/
def P934161523360853954.Spec : Prop :=
  ∀ n, P934161523360853954.a n = A025445 n

end A025445

/-!
# A025446: Number of partitions of n into 2 nonnegative cubes.

The programs for A025446, there is no canonical definition to state claims against.
-/

/-! ## A025446.P3455947998329407717

`A010057(n)+A025455(n)`
-/

namespace A025446.P3455947998329407717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + A025455 n

end

end A025446.P3455947998329407717

/-! ## A025446.P14108765374034224128

`floor(sqrt(A173677(n)))`
-/

namespace A025446.P14108765374034224128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A173677 n)

end

end A025446.P14108765374034224128

/-! ## A025446.P5024016133591068316

`ceil(A175362(n)/8)`
-/

namespace A025446.P5024016133591068316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A175362 n : ℚ) / 8⌉

end

end A025446.P5024016133591068316

/-! ## A025446.P1151066400666517146

`A255270(A175362(n))`
-/

namespace A025446.P1151066400666517146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A175362 n).toNat

end

end A025446.P1151066400666517146

/-! ## A025446.P5093263363436662228

`A353984(A175362(n)+2)`
-/

namespace A025446.P5093263363436662228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353984 (A175362 n + 2).toNat

end

end A025446.P5093263363436662228

/-! ## A025446.P8141362738924961530

`A070099(A175362(n)+4)`
-/

namespace A025446.P8141362738924961530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070099 (A175362 n + 4).toNat

end

end A025446.P8141362738924961530

/-! ## A025446.P7285093675494800817

`A265404(2*A175362(n))`
-/

namespace A025446.P7285093675494800817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265404 (2 * A175362 n).toNat

end

end A025446.P7285093675494800817

/-! ## A025446.P4532216778341181295

`A025447(n)-A025456(n)`
-/

namespace A025446.P4532216778341181295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n - A025456 n

end

end A025446.P4532216778341181295

/-! ## A025446.P4311931823271506129

`A173677(n)-A025464(n)`
-/

namespace A025446.P4311931823271506129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n - A025464 n

end

end A025446.P4311931823271506129

/-! ## A025446.P6555849965872807039

`A000045(round(sqrt(A175362(n)/2)))`
-/

namespace A025446.P6555849965872807039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt ((A175362 n : ℚ) / 2 : ℝ))).toNat

end

end A025446.P6555849965872807039

/-! ## A025446.P12062574992833799548

`A048766(A175362(n)-A025455(n))`
-/

namespace A025446.P12062574992833799548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A175362 n - A025455 n).toNat

end

end A025446.P12062574992833799548

/-! ## A025446.P2533753799768543748

`A048766(A175362(n)-A025468(n))`
-/

namespace A025446.P2533753799768543748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A175362 n - A025468 n).toNat

end

end A025446.P2533753799768543748

/-! ## A025446.P18188283069995881258

`A318305(2^A175362(n))`
-/

namespace A025446.P18188283069995881258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318305 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A175362 n : ℤ))).toNat

end

end A025446.P18188283069995881258

/-! ## A025446.P13794364829624634857

`A002828(A175362(n)²²)`
-/

namespace A025446.P13794364829624634857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 ((A175362 n ^ 2) ^ 2).toNat

end

end A025446.P13794364829624634857

/-! ## A025446.P2247599042271046478

`A320841(A000217(A351376(n)))`
-/

namespace A025446.P2247599042271046478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A000217 (A351376 n).toNat).toNat

end

end A025446.P2247599042271046478

/-!
# A025447: Number of partitions of n into 3 nonnegative cubes.

The programs for A025447, there is no canonical definition to state claims against.
-/

/-! ## A025447.P1762021570976246578

`A025456(n)+A025446(n)`
-/

namespace A025447.P1762021570976246578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n + A025446 n

end

end A025447.P1762021570976246578

/-! ## A025447.P2293094832448917057

`A025448(n)-A025457(n)`
-/

namespace A025447.P2293094832448917057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n - A025457 n

end

end A025447.P2293094832448917057

/-! ## A025447.P16272308276636872199

`A010057(n)+A025456(n)+A025455(n)`
-/

namespace A025447.P16272308276636872199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n + (A025456 n + A025455 n)

end

end A025447.P16272308276636872199

/-! ## A025447.P918075047461838611

`A124764(A051343(n)²+2)`
-/

namespace A025447.P918075047461838611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A051343 n ^ 2 + 2).toNat

end

end A025447.P918075047461838611

/-! ## A025447.P16308849349820079465

`A133501(5*2^A051343(n))`
-/

namespace A025447.P16308849349820079465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133501 (SequenceMachineLib.roundAway (5 * (2 : ℚ) ^ (A051343 n : ℤ))).toNat

end

end A025447.P16308849349820079465

/-! ## A025447.P6725033227372251931

`A005091(3^A051343(n))`
-/

namespace A025447.P6725033227372251931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A051343 n : ℤ))).toNat

end

end A025447.P6725033227372251931

/-! ## A025447.P5344419489560995406

`A124764(12*A051343(n))`
-/

namespace A025447.P5344419489560995406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (12 * A051343 n).toNat

end

end A025447.P5344419489560995406

/-! ## A025447.P13222753576495342173

`A233327(A233327(A051343(n))²)`
-/

namespace A025447.P13222753576495342173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233327 (A233327 (A051343 n).toNat ^ 2).toNat

end

end A025447.P13222753576495342173

/-! ## A025447.P6568283610938383005

`A019428(A000384(2*A175365(n)))`
-/

namespace A025447.P6568283610938383005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A000384 (2 * A175365 n).toNat).toNat

end

end A025447.P6568283610938383005

/-! ## A025447.P8808481874636314370

`A262988(A038722(3^A051343(n)))`
-/

namespace A025447.P8808481874636314370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262988 (A038722 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A051343 n : ℤ))).toNat).toNat

end

end A025447.P8808481874636314370

/-! ## A025447.P348142859937172363

`1-A055254(A051343(n))^A226801(n)`
-/

namespace A025447.P348142859937172363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A055254 (A051343 n).toNat : ℚ) ^ (A226801 n : ℤ)

end

end A025447.P348142859937172363

/-! ## A025447.P6923194579579046413

`A001222(A001222(A252979(A051343(n)+2)))`
-/

namespace A025447.P6923194579579046413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A252979 (A051343 n + 2).toNat).toNat).toNat

end

end A025447.P6923194579579046413

/-!
# A025448: Number of partitions of n into 4 nonnegative cubes.

The programs for A025448, there is no canonical definition to state claims against.
-/

/-! ## A025448.P18070292120706253804

`A025457(n)+A025447(n)`
-/

namespace A025448.P18070292120706253804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 n + A025447 n

end

end A025448.P18070292120706253804

/-! ## A025448.P11225483864552065722

`A025449(n)-A025458(n)`
-/

namespace A025448.P11225483864552065722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n - A025458 n

end

end A025448.P11225483864552065722

/-! ## A025448.P12358985713081262282

`A025446(n)+A025457(n)+A025456(n)`
-/

namespace A025448.P12358985713081262282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n + (A025457 n + A025456 n)

end

end A025448.P12358985713081262282

/-! ## A025448.P2266009464584182785

`A025450(n)-(A025459(n)+A025458(n))`
-/

namespace A025448.P2266009464584182785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n - (A025459 n + A025458 n)

end

end A025448.P2266009464584182785

/-! ## A025448.P4734663274068149144

`A025449(n)+A025458(n)*A057428(n)`
-/

namespace A025448.P4734663274068149144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n + A025458 n * A057428 n

end

end A025448.P4734663274068149144

/-! ## A025448.P9450287399689509256

`A088806(A019357(n+1))+A060130(A173678(n))`
-/

namespace A025448.P9450287399689509256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (A019357 (n + 1)).toNat + A060130 (A173678 n).toNat

end

end A025448.P9450287399689509256

/-! ## A025448.P2308333165464210379

`A053838(A175368(n)%A125576(n+1))`
-/

namespace A025448.P2308333165464210379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (Int.tmod (A175368 n) (A125576 (n + 1))).toNat

end

end A025448.P2308333165464210379

/-! ## A025448.P3104843817698476583

`ceil(A347716(n)/12)`
-/

namespace A025448.P3104843817698476583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347716 n : ℚ) / 12⌉

end

end A025448.P3104843817698476583

/-! ## A025448.P9208167506641401932

`A001221(A347716(n)+1)`
-/

namespace A025448.P9208167506641401932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A347716 n + 1).toNat

end

end A025448.P9208167506641401932

/-!
# A025449: Number of partitions of n into 5 nonnegative cubes.

The programs for A025449, there is no canonical definition to state claims against.
-/

/-! ## A025449.P1669006604712368421

`A025458(n)+A025448(n)`
-/

namespace A025449.P1669006604712368421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n + A025448 n

end

end A025449.P1669006604712368421

/-! ## A025449.P3805042323937088792

`A025450(n)-A025459(n)`
-/

namespace A025449.P3805042323937088792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n - A025459 n

end

end A025449.P3805042323937088792

/-! ## A025449.P15833599194501939172

`A025447(n)+A025458(n)+A025457(n)`
-/

namespace A025449.P15833599194501939172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n + (A025458 n + A025457 n)

end

end A025449.P15833599194501939172

/-! ## A025449.P16010571095436211091

`A025451(n)-(A025460(n)+A025459(n))`
-/

namespace A025449.P16010571095436211091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - (A025460 n + A025459 n)

end

end A025449.P16010571095436211091

/-! ## A025449.P14273387116211950929

`A025450(n)+A025459(n)*A057428(n)`
-/

namespace A025449.P14273387116211950929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n + A025459 n * A057428 n

end

end A025449.P14273387116211950929

/-! ## A025449.P14736255441005673189

`A279060(A059268(n)*A173679(n))`
-/

namespace A025449.P14736255441005673189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A059268 n * A173679 n).toNat

end

end A025449.P14736255441005673189

/-! ## A025449.P1366933950877634313

`A001878(lcm(3, A347728(n)))`
-/

namespace A025449.P1366933950877634313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (Int.lcm 3 (A347728 n))

end

end A025449.P1366933950877634313

/-! ## A025449.P17120675390014825994

`A279060(A173679(n))^A019428(n)`
-/

namespace A025449.P17120675390014825994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279060 (A173679 n).toNat : ℚ) ^ (A019428 n : ℤ)

end

end A025449.P17120675390014825994

/-! ## A025449.P14657653864559140510

`ceil(A347728(n)/A344482(n+1))`
-/

namespace A025449.P14657653864559140510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347728 n : ℚ) / (A344482 (n + 1) : ℚ)⌉

end

end A025449.P14657653864559140510

/-!
# A025450: Number of partitions of n into 6 nonnegative cubes.

The programs for A025450, there is no canonical definition to state claims against.
-/

/-! ## A025450.P4782867891677290564

`A025459(n)+A025449(n)`
-/

namespace A025450.P4782867891677290564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n + A025449 n

end

end A025450.P4782867891677290564

/-! ## A025450.P5183474997323895758

`A025451(n)-A025460(n)`
-/

namespace A025450.P5183474997323895758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - A025460 n

end

end A025450.P5183474997323895758

/-! ## A025450.P15318530222605214804

`A025448(n)+A025459(n)+A025458(n)`
-/

namespace A025450.P15318530222605214804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n + (A025459 n + A025458 n)

end

end A025450.P15318530222605214804

/-! ## A025450.P17249557506839742560

`A025452(n)-(A025461(n)+A025460(n))`
-/

namespace A025450.P17249557506839742560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - (A025461 n + A025460 n)

end

end A025450.P17249557506839742560

/-! ## A025450.P3220025370473706459

`A025451(n)+A025460(n)*A057428(n)`
-/

namespace A025450.P3220025370473706459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n + A025460 n * A057428 n

end

end A025450.P3220025370473706459

/-!
# A025451: Number of partitions of n into 7 nonnegative cubes.

The programs for A025451, there is no canonical definition to state claims against.
-/

/-! ## A025451.P18419247859792353481

`A025460(n)+A025450(n)`
-/

namespace A025451.P18419247859792353481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 n + A025450 n

end

end A025451.P18419247859792353481

/-! ## A025451.P26384675662231413

`A025452(n)-A025461(n)`
-/

namespace A025451.P26384675662231413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - A025461 n

end

end A025451.P26384675662231413

/-! ## A025451.P9767190645695359702

`A025449(n)+A025460(n)+A025459(n)`
-/

namespace A025451.P9767190645695359702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n + (A025460 n + A025459 n)

end

end A025451.P9767190645695359702

/-! ## A025451.P9635106443470805143

`A025453(n)-(A025462(n)+A025461(n))`
-/

namespace A025451.P9635106443470805143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n - (A025462 n + A025461 n)

end

end A025451.P9635106443470805143

/-! ## A025451.P11754740499820293176

`A025452(n)+A025461(n)*A057428(n)`
-/

namespace A025451.P11754740499820293176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n + A025461 n * A057428 n

end

end A025451.P11754740499820293176

/-! ## A025451.P8112599949427228001

`A025452(A028310(n))+A001489(A025461(n))`
-/

namespace A025451.P8112599949427228001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A028310 n).toNat + A001489 (A025461 n).toNat

end

end A025451.P8112599949427228001

/-!
# A025452: Number of partitions of n into 8 nonnegative cubes.

The programs for A025452, there is no canonical definition to state claims against.
-/

/-! ## A025452.P456575571575863778

`A025461(n)+A025451(n)`
-/

namespace A025452.P456575571575863778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025461 n + A025451 n

end

end A025452.P456575571575863778

/-! ## A025452.P546360080342611106

`A025453(n)-A025462(n)`
-/

namespace A025452.P546360080342611106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n - A025462 n

end

end A025452.P546360080342611106

/-! ## A025452.P252321668885337830

`A025450(n)+A025461(n)+A025460(n)`
-/

namespace A025452.P252321668885337830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n + (A025461 n + A025460 n)

end

end A025452.P252321668885337830

/-! ## A025452.P11919105427196456468

`A025454(n)-(A025463(n)+A025462(n))`
-/

namespace A025452.P11919105427196456468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - (A025463 n + A025462 n)

end

end A025452.P11919105427196456468

/-! ## A025452.P13812356792448022375

`A025453(n)+A025462(n)*A057428(n)`
-/

namespace A025452.P13812356792448022375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n + A025462 n * A057428 n

end

end A025452.P13812356792448022375

/-!
# A025453: Number of partitions of n into 9 nonnegative cubes.

The programs for A025453, there is no canonical definition to state claims against.
-/

/-! ## A025453.P1724566564165509828

`A025462(n)+A025452(n)`
-/

namespace A025453.P1724566564165509828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 n + A025452 n

end

end A025453.P1724566564165509828

/-! ## A025453.P14436200586592211671

`A025454(n)-A025463(n)`
-/

namespace A025453.P14436200586592211671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - A025463 n

end

end A025453.P14436200586592211671

/-! ## A025453.P14830836612304991068

`A025451(n)+A025462(n)+A025461(n)`
-/

namespace A025453.P14830836612304991068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n + (A025462 n + A025461 n)

end

end A025453.P14830836612304991068

/-! ## A025453.P209010405366950867

`A025452(n)-A025462(n)*A057428(n)`
-/

namespace A025453.P209010405366950867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - A025462 n * A057428 n

end

end A025453.P209010405366950867

/-! ## A025453.P13102883596290944285

`A025454(A028310(n))+A001489(A025463(n))`
-/

namespace A025453.P13102883596290944285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 (A028310 n).toNat + A001489 (A025463 n).toNat

end

end A025453.P13102883596290944285

/-!
# A025454: Number of partitions of n into 10 nonnegative cubes.

The programs for A025454, there is no canonical definition to state claims against.
-/

/-! ## A025454.P10278262311401645036

`A025463(n)+A025453(n)`
-/

namespace A025454.P10278262311401645036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n + A025453 n

end

end A025454.P10278262311401645036

/-! ## A025454.P7727879665023110883

`A025452(n)+A025463(n)+A025462(n)`
-/

namespace A025454.P7727879665023110883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n + (A025463 n + A025462 n)

end

end A025454.P7727879665023110883

/-! ## A025454.P9479007114454218426

`A025453(n)-A025463(n)*A057428(n)`
-/

namespace A025454.P9479007114454218426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n - A025463 n * A057428 n

end

end A025454.P9479007114454218426

/-! ## A025454.P506117339277595384

`A025453(A028310(n))-A001489(A025463(n))`
-/

namespace A025454.P506117339277595384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A028310 n).toNat - A001489 (A025463 n).toNat

end

end A025454.P506117339277595384

/-! ## A025454.P12565831659342640539

`A025463(n)+A025451(n)+A025462(n)+A025461(n)`
-/

namespace A025454.P12565831659342640539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 n + (A025451 n + (A025462 n + A025461 n))

end

end A025454.P12565831659342640539

/-! ## A025454.P11660219938743748550

`A025453(n)+A025461(A289207(n))^A206916(n)`
-/

namespace A025454.P11660219938743748550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025453 n : ℚ) + (A025461 (A289207 n).toNat : ℚ) ^ (A206916 n : ℤ)

end

end A025454.P11660219938743748550

/-!
# A025455: a(n) is the number of partitions of n into 2 positive cubes.

The programs for A025455, there is no canonical definition to state claims against.
-/

/-! ## A025455.P18441888282248746996

`floor(sqrt(A280618(n)))`
-/

namespace A025455.P18441888282248746996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A280618 n)

end

end A025455.P18441888282248746996

/-! ## A025455.P9594640876297075771

`A025446(n)-A010057(n)`
-/

namespace A025455.P9594640876297075771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n - A010057 n

end

end A025455.P9594640876297075771

/-! ## A025455.P10167059686297130019

`A280618(n)-A025468(n)`
-/

namespace A025455.P10167059686297130019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n - A025468 n

end

end A025455.P10167059686297130019

/-! ## A025455.P15988282613382532513

`A280618(n)/gcd(2, A173677(n))`
-/

namespace A025455.P15988282613382532513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280618 n : ℚ) / (Int.gcd 2 (A173677 n) : ℚ)

end

end A025455.P15988282613382532513

/-! ## A025455.P4211302039679801045

`ceil(A280618(n)/(A001222(n+2)+1))`
-/

namespace A025455.P4211302039679801045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280618 n : ℚ) / (A001222 (n + 2) + 1 : ℚ)⌉

end

end A025455.P4211302039679801045

/-! ## A025455.P17512564624929628602

`ceil(A280618(n)/A002828(3*n+2))`
-/

namespace A025455.P17512564624929628602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280618 n : ℚ) / (A002828 (3 * n + 2) : ℚ)⌉

end

end A025455.P17512564624929628602

/-! ## A025455.P12056836379058086410

`A071367(n+1)%(A280618(n)+1)`
-/

namespace A025455.P12056836379058086410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071367 (n + 1)) (A280618 n + 1)

end

end A025455.P12056836379058086410

/-! ## A025455.P9228683494636098817

`A019431(A019431(n+3)*A280618(n))`
-/

namespace A025455.P9228683494636098817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (A019431 (n + 3) * A280618 n).toNat

end

end A025455.P9228683494636098817

/-! ## A025455.P4493189592078398341

`ceil(A280618(n)/A280583(A280619(n+1)))`
-/

namespace A025455.P4493189592078398341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280618 n : ℚ) / (A280583 (A280619 (n + 1)).toNat : ℚ)⌉

end

end A025455.P4493189592078398341

/-! ## A025455.P5493777098673038168

`A005369(A175362(A005843(n))^A175362(n))`
-/

namespace A025455.P5493777098673038168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (SequenceMachineLib.roundAway ((A175362 (A005843 n).toNat : ℚ) ^ (A175362 n : ℤ))).toNat

end

end A025455.P5493777098673038168

/-! ## A025455.P7496903774406560984

`A320841(A133263(n))`
-/

namespace A025455.P7496903774406560984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A133263 n).toNat

end

end A025455.P7496903774406560984

/-! ## A025455.P10937021836743183121

`A320841(A238531(n+1))`
-/

namespace A025455.P10937021836743183121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A238531 (n + 1)).toNat

end

end A025455.P10937021836743183121

/-! ## A025455.P3521734565378459867

`A320841(A179865(n+1)+2)`
-/

namespace A025455.P3521734565378459867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A179865 (n + 1) + 2).toNat

end

end A025455.P3521734565378459867

/-! ## A025455.P668153961554505193

`A025456((n+1)^A025456(n+8))`
-/

namespace A025455.P668153961554505193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A025456 (n + 8) : ℤ))).toNat

end

end A025455.P668153961554505193

/-! ## A025455.P16726330485626955269

`A320841(∑[A010057(∑[n])+n])`
-/

namespace A025455.P16726330485626955269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025455.P16726330485626955269

/-! ## A025455.P360137246922011163

`A005369(A175362(n²)^A175362(n))`
-/

namespace A025455.P360137246922011163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (SequenceMachineLib.roundAway ((A175362 (n ^ 2) : ℚ) ^ (A175362 n : ℤ))).toNat

end

end A025455.P360137246922011163

/-!
# A025456: Number of partitions of n into 3 positive cubes.

The programs for A025456, there is no canonical definition to state claims against.
-/

/-! ## A025456.P10844175641590817501

`A025447(n)-A025446(n)`
-/

namespace A025456.P10844175641590817501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n - A025446 n

end

end A025456.P10844175641590817501

/-! ## A025456.P4907497453630555873

`A025447(n)-(A173677(n)-A025464(n))`
-/

namespace A025456.P4907497453630555873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025447 n - (A173677 n - A025464 n)

end

end A025456.P4907497453630555873

/-! ## A025456.P10118555470797456644

`A001221(A051344(n)%A175524(n+1)²+1)`
-/

namespace A025456.P10118555470797456644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A051344 n) (A175524 (n + 1) ^ 2) + 1).toNat

end

end A025456.P10118555470797456644

/-! ## A025456.P5640326901267948299

`A320841(∑[n]+3)`
-/

namespace A025456.P5640326901267948299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A025456.P5640326901267948299

/-! ## A025456.P17916107877144436219

`A320841(A152950(n+1))%(n+1)`
-/

namespace A025456.P17916107877144436219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320841 (A152950 (n + 1)).toNat) (n + 1 : ℤ)

end

end A025456.P17916107877144436219

/-! ## A025456.P17545101127585629859

`A320841(A152950(n+1))^A050932(n)`
-/

namespace A025456.P17545101127585629859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320841 (A152950 (n + 1)).toNat : ℚ) ^ (A050932 n : ℤ)

end

end A025456.P17545101127585629859

/-! ## A025456.P16524525577253889856

`A320841(A152950(n+1))^A136480(3*n)`
-/

namespace A025456.P16524525577253889856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320841 (A152950 (n + 1)).toNat : ℚ) ^ (A136480 (3 * n) : ℤ)

end

end A025456.P16524525577253889856

/-! ## A025456.P8536344027067993721

`A320841(A152950(n+1))^A010168(3*(n+1))`
-/

namespace A025456.P8536344027067993721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320841 (A152950 (n + 1)).toNat : ℚ) ^ (A010168 (3 * (n + 1)) : ℤ)

end

end A025456.P8536344027067993721

/-! ## A025456.P15693918687940757879

`A156764(A051343(n))*A320841(A152950(n+1))`
-/

namespace A025456.P15693918687940757879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156764 (A051343 n).toNat * A320841 (A152950 (n + 1)).toNat

end

end A025456.P15693918687940757879

/-! ## A025456.P16165832611765769190

`A168046(A089309(n))*A320841(A152950(n+1))`
-/

namespace A025456.P16165832611765769190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A089309 n).toNat * A320841 (A152950 (n + 1)).toNat

end

end A025456.P16165832611765769190

/-! ## A025456.P15308656982543416385

`A008619(A320841(n))*A320841(A152950(n+1))`
-/

namespace A025456.P15308656982543416385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A320841 n).toNat * A320841 (A152950 (n + 1)).toNat

end

end A025456.P15308656982543416385

/-! ## A025456.P7252558927615161801

`A320841(A152950(n+1))^A000124(n)`
-/

namespace A025456.P7252558927615161801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320841 (A152950 (n + 1)).toNat : ℚ) ^ (A000124 n : ℤ)

end

end A025456.P7252558927615161801

/-! ## A025456.P13132481038051333427

`A320841(A152950(n+1))^A006950(n)`
-/

namespace A025456.P13132481038051333427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320841 (A152950 (n + 1)).toNat : ℚ) ^ (A006950 n : ℤ)

end

end A025456.P13132481038051333427

/-! ## A025456.P2785045365122560122

`A320841(A152950(n+1))^A016826(n)`
-/

namespace A025456.P2785045365122560122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320841 (A152950 (n + 1)).toNat : ℚ) ^ (A016826 n : ℤ)

end

end A025456.P2785045365122560122

/-! ## A025456.P15530202387633409016

`A320841(A152950(n+1))^A092683(n)`
-/

namespace A025456.P15530202387633409016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320841 (A152950 (n + 1)).toNat : ℚ) ^ (A092683 n : ℤ)

end

end A025456.P15530202387633409016

/-! ## A025456.P16628688843642029178

`A010057(A173682(A173677(n)^A051343(n)))`
-/

namespace A025456.P16628688843642029178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A173682 (SequenceMachineLib.roundAway ((A173677 n : ℚ) ^ (A051343 n : ℤ))).toNat).toNat

end

end A025456.P16628688843642029178

/-! ## A025456.P18390890191674842707

`A212295(A331845(3*(n+1))^A051344(n))`
-/

namespace A025456.P18390890191674842707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212295 (SequenceMachineLib.roundAway ((A331845 (3 * (n + 1)) : ℚ) ^ (A051344 n : ℤ))).toNat

end

end A025456.P18390890191674842707

/-! ## A025456.P16576397983640325015

`A089309(n²)*A320841(A152950(n+1))`
-/

namespace A025456.P16576397983640325015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n ^ 2) * A320841 (A152950 (n + 1)).toNat

end

end A025456.P16576397983640325015

/-!
# A025457: Number of partitions of n into 4 positive cubes.

The programs for A025457, there is no canonical definition to state claims against.
-/

/-! ## A025457.P17999689604192971875

`A025448(n)-A025447(n)`
-/

namespace A025457.P17999689604192971875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n - A025447 n

end

end A025457.P17999689604192971875

/-! ## A025457.P183988110523170029

`A025448(n)-(A025456(n)+A025446(n))`
-/

namespace A025457.P183988110523170029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025448 n - (A025456 n + A025446 n)

end

end A025457.P183988110523170029

/-! ## A025457.P10512726216911726143

`A320841(A238531(n)+2+n)`
-/

namespace A025457.P10512726216911726143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A238531 n + 2 + (n : ℤ)).toNat

end

end A025457.P10512726216911726143

/-! ## A025457.P682113799947620205

`A320841(A145018(n+1)+char[1])`
-/

namespace A025457.P682113799947620205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A145018 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A025457.P682113799947620205

/-! ## A025457.P1705305921161989128

`A320841(A145018(n+1))%A000009(n)`
-/

namespace A025457.P1705305921161989128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320841 (A145018 (n + 1)).toNat) (A000009 n)

end

end A025457.P1705305921161989128

/-! ## A025457.P1514982310012397953

`A043545(n+2)*A320841(A145018(n+1))`
-/

namespace A025457.P1514982310012397953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (n + 2) * A320841 (A145018 (n + 1)).toNat

end

end A025457.P1514982310012397953

/-! ## A025457.P2628136320848635451

`A320841(A145018(n+1))-A000007(xor(1, n))`
-/

namespace A025457.P2628136320848635451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A145018 (n + 1)).toNat - A000007 (Nat.xor 1 n)

end

end A025457.P2628136320848635451

/-! ## A025457.P16808186457890953578

`A320841(A145018(n+1))-A000007(A007599(n))`
-/

namespace A025457.P16808186457890953578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A145018 (n + 1)).toNat - A000007 (A007599 n).toNat

end

end A025457.P16808186457890953578

/-! ## A025457.P5512593313585859415

`A320841(A145018(n+1))-A046920(A096281(n+1))`
-/

namespace A025457.P5512593313585859415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A145018 (n + 1)).toNat - A046920 (A096281 (n + 1)).toNat

end

end A025457.P5512593313585859415

/-! ## A025457.P17065626406286610616

`ceil(char[A003327(n+1)]/A298554(n+1))`
-/

namespace A025457.P17065626406286610616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A298554 (n + 1) : ℚ)⌉

end

end A025457.P17065626406286610616

/-! ## A025457.P4334236461453338269

`char[A003327(n+1)]*A051903(A247129(n+1))`
-/

namespace A025457.P4334236461453338269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051903 (A247129 (n + 1)).toNat

end

end A025457.P4334236461453338269

/-! ## A025457.P7725587144414338624

`A000122(A027701(n+1))+char[A025403(n+1)]`
-/

namespace A025457.P7725587144414338624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025403 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A027701 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025457.P7725587144414338624

/-! ## A025457.P2377826304681667497

`and(char[A003327(n+1)], A282177(n+1))`
-/

namespace A025457.P2377826304681667497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282177 (n + 1))

end

end A025457.P2377826304681667497

/-! ## A025457.P6366996273389300032

`and(char[A025403(n+1)], A282177(n+1))`
-/

namespace A025457.P6366996273389300032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025403 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A282177 (n + 1))

end

end A025457.P6366996273389300032

/-!
# A025458: Number of partitions of n into 5 positive cubes.

The programs for A025458, there is no canonical definition to state claims against.
-/

/-! ## A025458.P8336791691131656975

`A025449(n)-A025448(n)`
-/

namespace A025458.P8336791691131656975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 n - A025448 n

end

end A025458.P8336791691131656975

/-! ## A025458.P9095634207302611687

`A320841(A133263(n)+3)`
-/

namespace A025458.P9095634207302611687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A133263 n + 3).toNat

end

end A025458.P9095634207302611687

/-! ## A025458.P3271234241002677219

`A320841(A179865(n+1)+5)`
-/

namespace A025458.P3271234241002677219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A179865 (n + 1) + 5).toNat

end

end A025458.P3271234241002677219

/-! ## A025458.P18189143756544175171

`A320841(∑[n]+5)%A026351(n)`
-/

namespace A025458.P18189143756544175171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320841 (∑ j ∈ Finset.range (n + 1), f1 j + 5)) (A026351 n)

end

end A025458.P18189143756544175171

/-! ## A025458.P9049047952887776195

`A320841(∑[n]+5%A104272(n+1))`
-/

namespace A025458.P9049047952887776195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod 5 (A104272 (n + 1))).toNat

end

end A025458.P9049047952887776195

/-! ## A025458.P2054409737857200678

`A320841(A145018(n+1)+A000007(n)+1)`
-/

namespace A025458.P2054409737857200678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A145018 (n + 1) + (A000007 n + 1)).toNat

end

end A025458.P2054409737857200678

/-! ## A025458.P14820391096631177253

`A320841(A145018(n+1)+char[A348579(n+1)])`
-/

namespace A025458.P14820391096631177253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348579 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A145018 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A025458.P14820391096631177253

/-! ## A025458.P3292475403412349578

`A001221(A145125(n+1))*char[A003328(n+1)]`
-/

namespace A025458.P3292475403412349578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A145125 (n + 1)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025458.P3292475403412349578

/-! ## A025458.P7286635089501896421

`A001221(A145202(n+1))*char[A003328(n+1)]`
-/

namespace A025458.P7286635089501896421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003328 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A145202 (n + 1)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025458.P7286635089501896421

/-! ## A025458.P11389258532877334584

`and(char[A048926(n+1)], A062397(n))`
-/

namespace A025458.P11389258532877334584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A062397 n)

end

end A025458.P11389258532877334584

/-!
# A025459: Number of partitions of n into 6 positive cubes.

The programs for A025459, there is no canonical definition to state claims against.
-/

/-! ## A025459.P17295014732635077676

`A025450(n)-A025449(n)`
-/

namespace A025459.P17295014732635077676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n - A025449 n

end

end A025459.P17295014732635077676

/-! ## A025459.P4331994596426961403

`A025450(n)-(A025458(n)+A025448(n))`
-/

namespace A025459.P4331994596426961403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 n - (A025458 n + A025448 n)

end

end A025459.P4331994596426961403

/-! ## A025459.P12549498832865397344

`A025451(n)-(A025460(n)+A025449(n))`
-/

namespace A025459.P12549498832865397344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - (A025460 n + A025449 n)

end

end A025459.P12549498832865397344

/-! ## A025459.P3824605305723837221

`A025451(n)-A025460(n)-A025449(A028310(n))`
-/

namespace A025459.P3824605305723837221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - A025460 n - A025449 (A028310 n).toNat

end

end A025459.P3824605305723837221

/-! ## A025459.P3822977349971180608

`A320841(A184218(n+1)+7)`
-/

namespace A025459.P3822977349971180608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A184218 (n + 1) + 7).toNat

end

end A025459.P3822977349971180608

/-! ## A025459.P2303257386861951500

`A073424(A065721(n+1))+char[A048929(n+1)]`
-/

namespace A025459.P2303257386861951500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048929 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A065721 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025459.P2303257386861951500

/-! ## A025459.P8875877568495455296

`A256434(A256410(n+1))+char[A003329(n+1)]`
-/

namespace A025459.P8875877568495455296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A256410 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025459.P8875877568495455296

/-! ## A025459.P14970433961261368991

`and(char[A003329(n+1)], A005408(64*n))`
-/

namespace A025459.P14970433961261368991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A005408 (64 * n))

end

end A025459.P14970433961261368991

/-! ## A025459.P8576849619226773521

`A057427(char[A003329(n+1)]*A063838(n+1))`
-/

namespace A025459.P8576849619226773521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A063838 (n + 1)).toNat

end

end A025459.P8576849619226773521

/-! ## A025459.P7771412318260958732

`A001222(A237423(n+1))*char[A003329(n+1)]`
-/

namespace A025459.P7771412318260958732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A237423 (n + 1)).toNat * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025459.P7771412318260958732

/-! ## A025459.P17043434439859164549

`ceil(char[A003329(n+1)]/A295390(n))`
-/

namespace A025459.P17043434439859164549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / (A295390 n : ℚ)⌉

end

end A025459.P17043434439859164549

/-! ## A025459.P14842407730652536866

`char[A003329(n+1)]*A336159(A130321(n))`
-/

namespace A025459.P14842407730652536866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A336159 (A130321 n).toNat

end

end A025459.P14842407730652536866

/-! ## A025459.P1162563211122730294

`char[A003329(n+1)]*A209615(A156679(n+1))`
-/

namespace A025459.P1162563211122730294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A209615 (A156679 (n + 1)).toNat

end

end A025459.P1162563211122730294

/-! ## A025459.P4681990431666082445

`A073424(A000096(n)+char[A003329(n+1)])`
-/

namespace A025459.P4681990431666082445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A000096 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A025459.P4681990431666082445

/-! ## A025459.P8858126034952550523

`A073424(char[A003329(n+1)]*A000217(n))`
-/

namespace A025459.P8858126034952550523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000217 n).toNat

end

end A025459.P8858126034952550523

/-! ## A025459.P14777287925666555551

`A073424(char[A003329(n+1)]*A253145(n))`
-/

namespace A025459.P14777287925666555551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253145 n).toNat

end

end A025459.P14777287925666555551

/-! ## A025459.P1244379748101183142

`A280710(A142435(n+1))+char[A003329(n+1)]`
-/

namespace A025459.P1244379748101183142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A142435 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025459.P1244379748101183142

/-! ## A025459.P472920430447246973

`and(char[A003329(n+1)], A038699(n+1))`
-/

namespace A025459.P472920430447246973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A038699 (n + 1))

end

end A025459.P472920430447246973

/-!
# A025460: Number of partitions of n into 7 positive cubes.

The programs for A025460, there is no canonical definition to state claims against.
-/

/-! ## A025460.P1439597319840578166

`A025451(n)-A025450(n)`
-/

namespace A025460.P1439597319840578166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - A025450 n

end

end A025460.P1439597319840578166

/-! ## A025460.P13401995933590916855

`A025451(n)-(A025459(n)+A025449(n))`
-/

namespace A025460.P13401995933590916855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - (A025459 n + A025449 n)

end

end A025460.P13401995933590916855

/-! ## A025460.P17782578207414822826

`A025452(n)-(A025461(n)+A025450(n))`
-/

namespace A025460.P17782578207414822826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - (A025461 n + A025450 n)

end

end A025460.P17782578207414822826

/-! ## A025460.P10686520676863046874

`A025451(n)-(A025448(n)+A025459(n)+A025458(n))`
-/

namespace A025460.P10686520676863046874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025451 n - (A025448 n + (A025459 n + A025458 n))

end

end A025460.P10686520676863046874

/-! ## A025460.P7335801014616266777

`A320841(∑[n]+7)`
-/

namespace A025460.P7335801014616266777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A025460.P7335801014616266777

/-! ## A025460.P17487601967764176568

`char[A345773(n+1)]*A347954(A347977(n+1))`
-/

namespace A025460.P17487601967764176568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A347954 (A347977 (n + 1)).toNat

end

end A025460.P17487601967764176568

/-! ## A025460.P16835319700158935528

`and(char[A345773(n+1)], A132242(n+1))`
-/

namespace A025460.P16835319700158935528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A132242 (n + 1))

end

end A025460.P16835319700158935528

/-! ## A025460.P13284752358415449291

`char[A345773(n+1)]*A000034(A190092(n+1))`
-/

namespace A025460.P13284752358415449291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000034 (A190092 (n + 1)).toNat

end

end A025460.P13284752358415449291

/-! ## A025460.P14906221770954348877

`and(char[A003330(n+1)], A248647(n+1))`
-/

namespace A025460.P14906221770954348877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A248647 (n + 1))

end

end A025460.P14906221770954348877

/-! ## A025460.P17033213056804871094

`and(char[A345773(n+1)], A248647(n+1))`
-/

namespace A025460.P17033213056804871094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345773 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A248647 (n + 1))

end

end A025460.P17033213056804871094

/-!
# A025461: Number of partitions of n into 8 positive cubes.

The programs for A025461, there is no canonical definition to state claims against.
-/

/-! ## A025461.P2877060751607660922

`A025452(n)-A025451(n)`
-/

namespace A025461.P2877060751607660922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - A025451 n

end

end A025461.P2877060751607660922

/-! ## A025461.P14577396397892922335

`A025452(n)-(A025460(n)+A025450(n))`
-/

namespace A025461.P14577396397892922335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - (A025460 n + A025450 n)

end

end A025461.P14577396397892922335

/-! ## A025461.P9452596579408945323

`A025453(n)-(A025462(n)+A025451(n))`
-/

namespace A025461.P9452596579408945323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n - (A025462 n + A025451 n)

end

end A025461.P9452596579408945323

/-! ## A025461.P12511022281394686837

`A025452(A028310(n))+A001489(A025451(n))`
-/

namespace A025461.P12511022281394686837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A028310 n).toNat + A001489 (A025451 n).toNat

end

end A025461.P12511022281394686837

/-! ## A025461.P11141100642677256397

`A025452(n)-(A025460(n)+A025459(n)+A025449(n))`
-/

namespace A025461.P11141100642677256397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 n - (A025460 n + (A025459 n + A025449 n))

end

end A025461.P11141100642677256397

/-! ## A025461.P10052265843695617378

`A277024(A277015(n))+char[A345783(n+1)]`
-/

namespace A025461.P10052265843695617378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (A277015 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025461.P10052265843695617378

/-! ## A025461.P18062335444033574721

`A002483(A243457(n+1))+char[A345783(n+1)]`
-/

namespace A025461.P18062335444033574721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002483 (A243457 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025461.P18062335444033574721

/-! ## A025461.P12877148738407431779

`char[A345783(n+1)]*A014709(A165825(n+1))`
-/

namespace A025461.P12877148738407431779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A014709 (A165825 (n + 1)).toNat

end

end A025461.P12877148738407431779

/-! ## A025461.P16567543814147368541

`A000007(A059268(n))+char[A345783(n+1)]`
-/

namespace A025461.P16567543814147368541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A059268 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025461.P16567543814147368541

/-! ## A025461.P4358934773713902214

`A025463(A158366(n+2))`
-/

namespace A025461.P4358934773713902214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (A158366 (n + 2)).toNat

end

end A025461.P4358934773713902214

/-!
# A025462: Number of partitions of n into 9 positive cubes.

The programs for A025462, there is no canonical definition to state claims against.
-/

/-! ## A025462.P4158852948833076772

`A025453(n)-A025452(n)`
-/

namespace A025462.P4158852948833076772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n - A025452 n

end

end A025462.P4158852948833076772

/-! ## A025462.P4318609313251263004

`A025453(n)-(A025461(n)+A025451(n))`
-/

namespace A025462.P4318609313251263004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 n - (A025461 n + A025451 n)

end

end A025462.P4318609313251263004

/-! ## A025462.P6406676335093178844

`A025454(n)-(A025463(n)+A025452(n))`
-/

namespace A025462.P6406676335093178844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - (A025463 n + A025452 n)

end

end A025462.P6406676335093178844

/-! ## A025462.P1356990501234308439

`A025453(A028310(n))+A001489(A025452(n))`
-/

namespace A025462.P1356990501234308439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A028310 n).toNat + A001489 (A025452 n).toNat

end

end A025462.P1356990501234308439

/-! ## A025462.P16013881789155179027

`A000027(A025454(n)-A025463(n))-A025452(n)`
-/

namespace A025462.P16013881789155179027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A025454 n - A025463 n).toNat - A025452 n

end

end A025462.P16013881789155179027

/-! ## A025462.P12214510433940462738

`A025454(n)-A025463(n)-A025452(A028310(n))`
-/

namespace A025462.P12214510433940462738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - A025463 n - A025452 (A028310 n).toNat

end

end A025462.P12214510433940462738

/-! ## A025462.P3884546342032997337

`p?[A320037(n+2)]%(A025463(n+1)+1)`
-/

namespace A025462.P3884546342032997337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A025463 (n + 1) + 1)

end

end A025462.P3884546342032997337

/-! ## A025462.P5584642934133667360

`A005408(A001399(3*n+1))%A147878(A025463(n+1)+1)`
-/

namespace A025462.P5584642934133667360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A001399 (3 * n + 1)).toNat) (A147878 (A025463 (n + 1) + 1).toNat)

end

end A025462.P5584642934133667360

/-! ## A025462.P10237882850438912300

`A001650(A265396(n+1)+1)%(A025463(n+1)+1)`
-/

namespace A025462.P10237882850438912300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001650 (A265396 (n + 1) + 1).toNat) (A025463 (n + 1) + 1)

end

end A025462.P10237882850438912300

/-! ## A025462.P2443456979339185639

`A118164(9*A025463(n+1)*A118164(n+2)+1)`
-/

namespace A025462.P2443456979339185639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118164 (9 * (A025463 (n + 1) * A118164 (n + 2)) + 1).toNat

end

end A025462.P2443456979339185639

/-!
# A025463: Number of partitions of n into 10 positive cubes.

The programs for A025463, there is no canonical definition to state claims against.
-/

/-! ## A025463.P14742655193907634574

`A025454(n)-A025453(n)`
-/

namespace A025463.P14742655193907634574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - A025453 n

end

end A025463.P14742655193907634574

/-! ## A025463.P17974173511553922925

`A025454(n)-(A025462(n)+A025452(n))`
-/

namespace A025463.P17974173511553922925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - (A025462 n + A025452 n)

end

end A025463.P17974173511553922925

/-! ## A025463.P13854753938729061121

`A025454(A028310(n))+A001489(A025453(n))`
-/

namespace A025463.P13854753938729061121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 (A028310 n).toNat + A001489 (A025453 n).toNat

end

end A025463.P13854753938729061121

/-! ## A025463.P3801765841980542266

`A025454(n)+A001489(A025462(n)+A025452(n))`
-/

namespace A025463.P3801765841980542266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n + A001489 (A025462 n + A025452 n).toNat

end

end A025463.P3801765841980542266

/-! ## A025463.P8072937357366065457

`A025454(n)-(A025451(n)+A025462(n)+A025461(n))`
-/

namespace A025463.P8072937357366065457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - (A025451 n + (A025462 n + A025461 n))

end

end A025463.P8072937357366065457

/-! ## A025463.P9820868452975696027

`A025454(n)-(A025452(n)-A025462(n)*A057428(n))`
-/

namespace A025463.P9820868452975696027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 n - (A025452 n - A025462 n * A057428 n)

end

end A025463.P9820868452975696027

/-! ## A025463.P15520961048579724395

`A025462(abs(1-n))%A119402(A053742(n))`
-/

namespace A025463.P15520961048579724395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025462 |1 - (n : ℤ)|.toNat) (A119402 (A053742 n).toNat)

end

end A025463.P15520961048579724395

/-! ## A025463.P1300865653002765719

`A025462(abs(1-n))-1-A008836(A186312(n+1))`
-/

namespace A025463.P1300865653002765719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 |1 - (n : ℤ)|.toNat - 1 - A008836 (A186312 (n + 1)).toNat

end

end A025463.P1300865653002765719

/-! ## A025463.P6207173724330385269

`A019426(A099259(n+1))*A025462(abs(1-n))`
-/

namespace A025463.P6207173724330385269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A099259 (n + 1)).toNat * A025462 |1 - (n : ℤ)|.toNat

end

end A025463.P6207173724330385269

/-! ## A025463.P15714937791229499749

`A025462(A119369(n²+1))`
-/

namespace A025463.P15714937791229499749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (A119369 (n ^ 2 + 1)).toNat

end

end A025463.P15714937791229499749

/-!
# A025464: Number of partitions of n into 2 distinct nonnegative cubes.

The programs for A025464, there is no canonical definition to state claims against.
-/

/-! ## A025464.P5011860782207640975

`floor(A173677(n)/2)`
-/

namespace A025464.P5011860782207640975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173677 n : ℚ) / 2⌋

end

end A025464.P5011860782207640975

/-! ## A025464.P682517086966461812

`A173677(n)-A025446(n)`
-/

namespace A025464.P682517086966461812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 n - A025446 n

end

end A025464.P682517086966461812

/-! ## A025464.P936428755589163486

`A004526(A173677(n)+2*n)-n`
-/

namespace A025464.P936428755589163486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A173677 n + (2 * n : ℤ)).toNat - (n : ℤ)

end

end A025464.P936428755589163486

/-! ## A025464.P2902587403420044464

`A025446(n)-A010057(A008574(n))`
-/

namespace A025464.P2902587403420044464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 n - A010057 (A008574 n).toNat

end

end A025464.P2902587403420044464

/-! ## A025464.P14309273351888591052

`A341996(A173677(n)^(A029837(n+2)+1))`
-/

namespace A025464.P14309273351888591052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (SequenceMachineLib.roundAway ((A173677 n : ℚ) ^ (A029837 (n + 2) + 1 : ℤ))).toNat

end

end A025464.P14309273351888591052

/-! ## A025464.P17321660145487454980

`C(A173677(n), A322587(A136058(n+1)))`
-/

namespace A025464.P17321660145487454980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173677 n).toNat (A322587 (A136058 (n + 1)).toNat).toNat

end

end A025464.P17321660145487454980

/-! ## A025464.P17962254122816626514

`A284265(A173677(n)^A038548(n+1))`
-/

namespace A025464.P17962254122816626514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284265 (SequenceMachineLib.roundAway ((A173677 n : ℚ) ^ (A038548 (n + 1) : ℤ))).toNat

end

end A025464.P17962254122816626514

/-! ## A025464.P12845953264676937176

`1-A010057(n*A175362(n))`
-/

namespace A025464.P12845953264676937176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010057 ((n : ℤ) * A175362 n).toNat

end

end A025464.P12845953264676937176

/-! ## A025464.P11941307969415291141

`A000005((n+1)²)%A173677(n)!`
-/

namespace A025464.P11941307969415291141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 1) ^ 2)) (Nat.factorial (A173677 n).toNat : ℤ)

end

end A025464.P11941307969415291141

/-! ## A025464.P13320651162671793071

`C(A290054(∑[n+3]), 2)`
-/

namespace A025464.P13320651162671793071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A290054 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A025464.P13320651162671793071

/-! ## A025464.P1606204397160715379

`A280618(A290054(∑[n+3]))`
-/

namespace A025464.P1606204397160715379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A290054 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025464.P1606204397160715379

/-! ## A025464.P17889136323378230724

`A001222(A290054(∑[n+3])!)`
-/

namespace A025464.P17889136323378230724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A290054 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A025464.P17889136323378230724

/-! ## A025464.P14895243670881910411

`A284265(A173677(n)^A294177(n+1))`
-/

namespace A025464.P14895243670881910411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284265 (SequenceMachineLib.roundAway ((A173677 n : ℚ) ^ (A294177 (n + 1) : ℤ))).toNat

end

end A025464.P14895243670881910411

/-! ## A025464.P16681244500008135932

`A025465(A096582(n+1))`
-/

namespace A025464.P16681244500008135932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A096582 (n + 1)).toNat

end

end A025464.P16681244500008135932

/-! ## A025464.P10136955020142135435

`A101665(A101665(n²)*A331845(n))`
-/

namespace A025464.P10136955020142135435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101665 (A101665 (n ^ 2) * A331845 n).toNat

end

end A025464.P10136955020142135435

/-!
# A025465: Number of partitions of n into 3 distinct nonnegative cubes.

The programs for A025465, there is no canonical definition to state claims against.
-/

/-! ## A025465.P11538013970265408909

`A025468(n)+A025469(n)`
-/

namespace A025465.P11538013970265408909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 n + A025469 n

end

end A025465.P11538013970265408909

/-! ## A025465.P3822839180153614019

`A124764(A051343(n)²)`
-/

namespace A025465.P3822839180153614019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A051343 n ^ 2).toNat

end

end A025465.P3822839180153614019

/-! ## A025465.P7135777120711575441

`A337599(A051343(n))^A017534(n)`
-/

namespace A025465.P7135777120711575441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337599 (A051343 n).toNat : ℚ) ^ (A017534 n : ℤ)

end

end A025465.P7135777120711575441

/-! ## A025465.P7366015768119735529

`A337599(A051343(n))^A161704(n)`
-/

namespace A025465.P7366015768119735529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337599 (A051343 n).toNat : ℚ) ^ (A161704 n : ℤ)

end

end A025465.P7366015768119735529

/-! ## A025465.P8743007972804213016

`A337599(A051343(n))^A001599(n+1)`
-/

namespace A025465.P8743007972804213016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337599 (A051343 n).toNat : ℚ) ^ (A001599 (n + 1) : ℤ)

end

end A025465.P8743007972804213016

/-! ## A025465.P9913341884167336543

`A337599(A051343(n))^A050000(n+1)`
-/

namespace A025465.P9913341884167336543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337599 (A051343 n).toNat : ℚ) ^ (A050000 (n + 1) : ℤ)

end

end A025465.P9913341884167336543

/-! ## A025465.P15034832996328864602

`A337599(A051343(n))^A070038(n+1)`
-/

namespace A025465.P15034832996328864602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337599 (A051343 n).toNat : ℚ) ^ (A070038 (n + 1) : ℤ)

end

end A025465.P15034832996328864602

/-! ## A025465.P11087716077113534572

`A337599(A051343(n))^A071977(n+1)`
-/

namespace A025465.P11087716077113534572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337599 (A051343 n).toNat : ℚ) ^ (A071977 (n + 1) : ℤ)

end

end A025465.P11087716077113534572

/-! ## A025465.P3054426608379613077

`A337599(A051343(n))^A134951(n+1)`
-/

namespace A025465.P3054426608379613077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337599 (A051343 n).toNat : ℚ) ^ (A134951 (n + 1) : ℤ)

end

end A025465.P3054426608379613077

/-! ## A025465.P6388882055362814278

`A022846(∑{d}[A051343(n), A072819(#)])%2`
-/

namespace A025465.P6388882055362814278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022846 (∑ d ∈ Nat.divisors (f1 n).natAbs, A072819 d).toNat) 2

end

end A025465.P6388882055362814278

/-! ## A025465.P13415755978688171119

`A000035(C(A331845(n), 2))`
-/

namespace A025465.P13415755978688171119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose (A331845 n).toNat 2)

end

end A025465.P13415755978688171119

/-! ## A025465.P4955614502317889684

`A008683(A002998(A331845(n)+2))+1`
-/

namespace A025465.P4955614502317889684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002998 (A331845 n + 2).toNat).toNat + 1

end

end A025465.P4955614502317889684

/-! ## A025465.P10821588182677896332

`A025464(A096582(n+1))`
-/

namespace A025465.P10821588182677896332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 (A096582 (n + 1)).toNat

end

end A025465.P10821588182677896332

/-! ## A025465.P15365013733407052786

`∑{e}[A261348(A331845(n)²+3), #]`
-/

namespace A025465.P15365013733407052786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261348 (A331845 n ^ 2 + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025465.P15365013733407052786

/-! ## A025465.P3996794577242964459

`ceil((∑{e}[A054662(A331845(n)+1), #]-2)/8)`
-/

namespace A025465.P3996794577242964459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054662 (A331845 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 2 : ℚ) / 8⌉

end

end A025465.P3996794577242964459

/-! ## A025465.P979367239933851237

`A001222(ceil(((A331845(n)+1)!-2)/8)+1)`
-/

namespace A025465.P979367239933851237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (⌈((Nat.factorial (A331845 n + 1).toNat : ℤ) - 2 : ℚ) / 8⌉ + 1).toNat

end

end A025465.P979367239933851237

/-! ## A025465.P7737037581067627029

`A032022(A032021(A331845(n))²)`
-/

namespace A025465.P7737037581067627029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032022 (A032021 (A331845 n).toNat ^ 2).toNat

end

end A025465.P7737037581067627029

/-!
# A025466: Number of partitions of n into 4 distinct nonnegative cubes.

The programs for A025466, there is no canonical definition to state claims against.
-/

/-! ## A025466.P9003907809355200507

`A269723(A331845(n)²)`
-/

namespace A025466.P9003907809355200507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A331845 n ^ 2).toNat

end

end A025466.P9003907809355200507

/-! ## A025466.P13820793652632896933

`A033665(or(9, A331845(n)))`
-/

namespace A025466.P13820793652632896933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (Int.lor 9 (A331845 n)).toNat

end

end A025466.P13820793652632896933

/-! ## A025466.P16773117047537402081

`A086014(lcm(38, A331845(n)))`
-/

namespace A025466.P16773117047537402081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086014 (Int.lcm 38 (A331845 n))

end

end A025466.P16773117047537402081

/-! ## A025466.P4295480171419853426

`A269723(A331845(n)*A331845(n))`
-/

namespace A025466.P4295480171419853426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269723 (A331845 n * A331845 n).toNat

end

end A025466.P4295480171419853426

/-! ## A025466.P6035078058670609011

`A055483(A092110(n+1))%A110592(A331845(n))`
-/

namespace A025466.P6035078058670609011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055483 (A092110 (n + 1)).toNat) (A110592 (A331845 n).toNat)

end

end A025466.P6035078058670609011

/-! ## A025466.P15170030204211601907

`A025427(A331845(n)²)`
-/

namespace A025466.P15170030204211601907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A331845 n ^ 2).toNat

end

end A025466.P15170030204211601907

/-! ## A025466.P3024980478215820796

`A131852(A331845(n)²)`
-/

namespace A025466.P3024980478215820796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A331845 n ^ 2).toNat

end

end A025466.P3024980478215820796

/-! ## A025466.P9389522100448560870

`A269528(17*A331845(n))`
-/

namespace A025466.P9389522100448560870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269528 (17 * A331845 n).toNat

end

end A025466.P9389522100448560870

/-! ## A025466.P16385237504759436555

`A011646(or(11, A331845(n)))`
-/

namespace A025466.P16385237504759436555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 (Int.lor 11 (A331845 n)).toNat

end

end A025466.P16385237504759436555

/-! ## A025466.P14259504849635732739

`A002266(A331845(n)²)%2`
-/

namespace A025466.P14259504849635732739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002266 (A331845 n ^ 2).toNat) 2

end

end A025466.P14259504849635732739

/-! ## A025466.P6954454276171430210

`A030190(A331845(n)²+19)`
-/

namespace A025466.P6954454276171430210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A331845 n ^ 2 + 19).toNat

end

end A025466.P6954454276171430210

/-! ## A025466.P16244962912441452487

`∑{e}[A261348(A331845(n)+1), #]`
-/

namespace A025466.P16244962912441452487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261348 (A331845 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025466.P16244962912441452487

/-! ## A025466.P12007986291647335043

`(A287996(A331845(n)+1)+1)%3`
-/

namespace A025466.P12007986291647335043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287996 (A331845 n + 1).toNat + 1) 3

end

end A025466.P12007986291647335043

/-!
# A025467: Expansion of 1/((1-2*x)*(1-3*x)*(1-4*x)*(1-8*x)).

The programs for A025467, the canonical program `A025467.P13163638083689121556` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025467 has offset 0).

The definition of A025467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025467.P13163638083689121556

`(8^(n+3)-15*4^(n+3)+24*3^(n+3)-10*2^(n+3))/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025467

/-- `(8^(n+3)-15*4^(n+3)+24*3^(n+3)-10*2^(n+3))/120` -/
def P13163638083689121556.Spec : Prop :=
  ∀ n, P13163638083689121556.a n = (A025467 n : ℚ)

end A025467

/-! ## A025467.P6397078373021477699

`A016849(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A025467.P6397078373021477699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016849 n + 2 * a (n - 1)

end

end A025467.P6397078373021477699

namespace A025467

/-- `A016849(n)+2*a(n-1)` -/
def P6397078373021477699.Spec : Prop :=
  ∀ n, P6397078373021477699.a n = A025467 n

end A025467

/-! ## A025467.P11446630686092174844

`A016277(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A025467.P11446630686092174844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016277 n + 4 * a (n - 1)

end

end A025467.P11446630686092174844

namespace A025467

/-- `A016277(n)+4*a(n-1)` -/
def P11446630686092174844.Spec : Prop :=
  ∀ n, P11446630686092174844.a n = A025467 n

end A025467

/-! ## A025467.P10816410324641987217

`∑[A027650(n)]+8*a(n-1)` with `a(0)=1`
-/

namespace A025467.P10816410324641987217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8 * a (n - 1)

end

end A025467.P10816410324641987217

namespace A025467

/-- `∑[A027650(n)]+8*a(n-1)` -/
def P10816410324641987217.Spec : Prop :=
  ∀ n, P10816410324641987217.a n = A025467 n

end A025467

/-! ## A025467.P2196152833271854510

`2*A016277(n)-A016269(n)`
-/

namespace A025467.P2196152833271854510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016277 n - A016269 n

end

end A025467.P2196152833271854510

namespace A025467

/-- `2*A016277(n)-A016269(n)` -/
def P2196152833271854510.Spec : Prop :=
  ∀ n, P2196152833271854510.a n = A025467 n

end A025467

/-! ## A025467.P2348704019791796682

`3*a(n-1)+∑[A171476(n)]*A000079(n)` with `a(0)=1`
-/

namespace A025467.P2348704019791796682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A025467.P2348704019791796682

namespace A025467

/-- `3*a(n-1)+∑[A171476(n)]*A000079(n)` -/
def P2348704019791796682.Spec : Prop :=
  ∀ n, P2348704019791796682.a n = A025467 n

end A025467

/-! ## A025467.P9466226651009552593

`3*a(n-1)+A000079(n)*A006095(n+2)` with `a(0)=1`
-/

namespace A025467.P9466226651009552593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A000079 n * A006095 (n + 2)

end

end A025467.P9466226651009552593

namespace A025467

/-- `3*a(n-1)+A000079(n)*A006095(n+2)` -/
def P9466226651009552593.Spec : Prop :=
  ∀ n, P9466226651009552593.a n = A025467 n

end A025467

/-! ## A025467.P14553752121929292100

`Δ[A006096(n+3)-A021044(n)]`
-/

namespace A025467.P14553752121929292100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006096 (n + 3) - A021044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025467.P14553752121929292100

namespace A025467

/-- `Δ[A006096(n+3)-A021044(n)]` -/
def P14553752121929292100.Spec : Prop :=
  ∀ n, P14553752121929292100.a n = A025467 n

end A025467

/-! ## A025467.P1486324403801751889

`A016290(n+1)-A016277(n+1)`
-/

namespace A025467.P1486324403801751889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 (n + 1) - A016277 (n + 1)

end

end A025467.P1486324403801751889

namespace A025467

/-- `A016290(n+1)-A016277(n+1)` -/
def P1486324403801751889.Spec : Prop :=
  ∀ n, P1486324403801751889.a n = A025467 n

end A025467

/-! ## A025467.P15081574639690787702

`2*A025929(n)-A025951(n)`
-/

namespace A025467.P15081574639690787702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025929 n - A025951 n

end

end A025467.P15081574639690787702

namespace A025467

/-- `2*A025929(n)-A025951(n)` -/
def P15081574639690787702.Spec : Prop :=
  ∀ n, P15081574639690787702.a n = A025467 n

end A025467

/-!
# A025468: a(n) is the number of partitions of n into 2 distinct positive cubes.

The programs for A025468, there is no canonical definition to state claims against.
-/

/-! ## A025468.P1142491440684021486

`A025465(n)-A025469(n)`
-/

namespace A025468.P1142491440684021486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 n - A025469 n

end

end A025468.P1142491440684021486

/-! ## A025468.P10733061283421857540

`floor(A280618(n)/2)`
-/

namespace A025468.P10733061283421857540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280618 n : ℚ) / 2⌋

end

end A025468.P10733061283421857540

/-! ## A025468.P1231653593073473419

`floor(A175362(n)/8)`
-/

namespace A025468.P1231653593073473419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175362 n : ℚ) / 8⌋

end

end A025468.P1231653593073473419

/-! ## A025468.P14812071257718083075

`A219198(A175362(n)+1)`
-/

namespace A025468.P14812071257718083075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219198 ((A175362 n + 1).toNat + 17)

end

end A025468.P14812071257718083075

/-! ## A025468.P2307572047306166279

`A264595(A175362(n)+2)`
-/

namespace A025468.P2307572047306166279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264595 (A175362 n + 2).toNat

end

end A025468.P2307572047306166279

/-! ## A025468.P4868122355705613326

`A288166(A175362(n)+2)`
-/

namespace A025468.P4868122355705613326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288166 (A175362 n + 2).toNat

end

end A025468.P4868122355705613326

/-! ## A025468.P7936802720194467480

`A297330(A175362(n)+4)`
-/

namespace A025468.P7936802720194467480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A175362 n + 4).toNat

end

end A025468.P7936802720194467480

/-! ## A025468.P15284223596711518635

`A280618(n)-A025455(n)`
-/

namespace A025468.P15284223596711518635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n - A025455 n

end

end A025468.P15284223596711518635

/-! ## A025468.P235412963790355315

`val(A038243(A175362(n)²), 2)`
-/

namespace A025468.P235412963790355315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038243 (A175362 n ^ 2).toNat).toNat 2

end

end A025468.P235412963790355315

/-! ## A025468.P7456171054305200373

`A025455(n)%(A025465(n)+1)`
-/

namespace A025468.P7456171054305200373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025455 n) (A025465 n + 1)

end

end A025468.P7456171054305200373

/-! ## A025468.P8089638942591382267

`A025464(n*(A010057(n)+1))`
-/

namespace A025468.P8089638942591382267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025464 ((n : ℤ) * (A010057 n + 1)).toNat

end

end A025468.P8089638942591382267

/-! ## A025468.P3173855400822179836

`A025455(A010057(4*n)+n)`
-/

namespace A025468.P3173855400822179836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A010057 (4 * n) + (n : ℤ)).toNat

end

end A025468.P3173855400822179836

/-! ## A025468.P2354700801569195333

`A071367(n+1)%A280618(n)!`
-/

namespace A025468.P2354700801569195333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071367 (n + 1)) (Nat.factorial (A280618 n).toNat : ℤ)

end

end A025468.P2354700801569195333

/-! ## A025468.P8331458874877631290

`C(A280618(n), A280583(A280619(n+1)))`
-/

namespace A025468.P8331458874877631290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280618 n).toNat (A280583 (A280619 (n + 1)).toNat).toNat

end

end A025468.P8331458874877631290

/-!
# A025469: Number of partitions of n into 3 distinct positive cubes.

The programs for A025469, there is no canonical definition to state claims against.
-/

/-! ## A025469.P17312825901142418188

`A025465(n)-A025468(n)`
-/

namespace A025469.P17312825901142418188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 n - A025468 n

end

end A025469.P17312825901142418188

/-! ## A025469.P4219080958658912209

`A339728(n+1)%A291985(A051344(n))`
-/

namespace A025469.P4219080958658912209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339728 (n + 1)) (A291985 (A051344 n).toNat)

end

end A025469.P4219080958658912209

/-! ## A025469.P4624643355775289172

`A061358(A051344(n))^A260294(n+1)`
-/

namespace A025469.P4624643355775289172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061358 (A051344 n).toNat : ℚ) ^ (A260294 (n + 1) : ℤ)

end

end A025469.P4624643355775289172

/-! ## A025469.P3650348246260765726

`A129298(A331845(n)+1)%3`
-/

namespace A025469.P3650348246260765726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129298 (A331845 n + 1).toNat) 3

end

end A025469.P3650348246260765726

/-! ## A025469.P6964389056548165157

`A089809(A167499(A331845(n)))`
-/

namespace A025469.P6964389056548165157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (A167499 (A331845 n).toNat).toNat

end

end A025469.P6964389056548165157

/-! ## A025469.P5445510818983989769

`and(A025466(n), A310394(A022144(n)))`
-/

namespace A025469.P5445510818983989769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025466 n) (A310394 (A022144 n).toNat)

end

end A025469.P5445510818983989769

/-! ## A025469.P11847415164034772341

`A025441(A051344(n)!)`
-/

namespace A025469.P11847415164034772341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (Nat.factorial (A051344 n).toNat)

end

end A025469.P11847415164034772341

/-! ## A025469.P4715796028317998846

`A025465(3^A051344(n))`
-/

namespace A025469.P4715796028317998846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A051344 n : ℤ))).toNat

end

end A025469.P4715796028317998846

/-! ## A025469.P15356682057569262442

`val(A005555(A175365(n)), 4)`
-/

namespace A025469.P15356682057569262442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005555 (A175365 n).toNat).toNat 4

end

end A025469.P15356682057569262442

/-! ## A025469.P13348768906453623061

`∏{e}[A287996(A331845(n)+1)+1, #+1]%2`
-/

namespace A025469.P13348768906453623061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287996 (A331845 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % 2

end

end A025469.P13348768906453623061

/-! ## A025469.P17645008437354938898

`A331845(xor(5, A006456(A331845(n))))`
-/

namespace A025469.P17645008437354938898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331845 (Int.xor 5 (A006456 (A331845 n).toNat)).toNat

end

end A025469.P17645008437354938898

/-! ## A025469.P10627332311183741700

`A033665(A331845(n)²)`
-/

namespace A025469.P10627332311183741700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A331845 n ^ 2).toNat

end

end A025469.P10627332311183741700

/-!
# A025470: Expansion of 1/((1-2*x)*(1-3*x)*(1-4*x)*(1-9*x)).

The programs for A025470, the canonical program `A025470.P11896757110784141117` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025470 has offset 0).

The definition of A025470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025470.P11896757110784141117

`3^(n+1)-2^(n+1)+13*a(n-1)-36*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025470

/-- `3^(n+1)-2^(n+1)+13*a(n-1)-36*a(n-2)` -/
def P11896757110784141117.Spec : Prop :=
  ∀ n, P11896757110784141117.a n = A025470 n

theorem P11896757110784141117.correct : P11896757110784141117.Spec := by
  intro n
  simp only [A025470]

end A025470

/-! ## A025470.P10628219247439643579

`A016269(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A025470.P10628219247439643579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016269 n + 9 * a (n - 1)

end

end A025470.P10628219247439643579

namespace A025470

/-- `A016269(n)+9*a(n-1)` -/
def P10628219247439643579.Spec : Prop :=
  ∀ n, P10628219247439643579.a n = A025470 n

end A025470

/-! ## A025470.P17012115351447230686

`a(n-1)+A016909(n)+a(n-1)` with `a(0)=1`
-/

namespace A025470.P17012115351447230686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016909 n + a (n - 1))

end

end A025470.P17012115351447230686

namespace A025470

/-- `a(n-1)+A016909(n)+a(n-1)` -/
def P17012115351447230686.Spec : Prop :=
  ∀ n, P17012115351447230686.a n = A025470 n

end A025470

/-! ## A025470.P12451241757646841838

`A021084(n)+A021379(n)-A021048(n)`
-/

namespace A025470.P12451241757646841838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021084 n + (A021379 n - A021048 n)

end

end A025470.P12451241757646841838

namespace A025470

/-- `A021084(n)+A021379(n)-A021048(n)` -/
def P12451241757646841838.Spec : Prop :=
  ∀ n, P12451241757646841838.a n = A025470 n

end A025470

/-! ## A025470.P15464673047462025394

`A025933(n)+A025933(n)-A025961(n)`
-/

namespace A025470.P15464673047462025394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025933 n + (A025933 n - A025961 n)

end

end A025470.P15464673047462025394

namespace A025470

/-- `A025933(n)+A025933(n)-A025961(n)` -/
def P15464673047462025394.Spec : Prop :=
  ∀ n, P15464673047462025394.a n = A025470 n

end A025470

/-! ## A025470.P5646722474696438262

`Δ[A021084(n)-A021048(n)]`
-/

namespace A025470.P5646722474696438262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021084 n - A021048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025470.P5646722474696438262

namespace A025470

/-- `Δ[A021084(n)-A021048(n)]` -/
def P5646722474696438262.Spec : Prop :=
  ∀ n, P5646722474696438262.a n = A025470 n

end A025470

/-! ## A025470.P17906184100463512711

`Δ[A021379(n)-A021084(n)]`
-/

namespace A025470.P17906184100463512711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021379 n - A021084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025470.P17906184100463512711

namespace A025470

/-- `Δ[A021379(n)-A021084(n)]` -/
def P17906184100463512711.Spec : Prop :=
  ∀ n, P17906184100463512711.a n = A025470 n

end A025470

/-! ## A025470.P16882181356862435137

`2*A025933(n)-A025961(n)`
-/

namespace A025470.P16882181356862435137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025933 n - A025961 n

end

end A025470.P16882181356862435137

namespace A025470

/-- `2*A025933(n)-A025961(n)` -/
def P16882181356862435137.Spec : Prop :=
  ∀ n, P16882181356862435137.a n = A025470 n

end A025470

/-! ## A025470.P12527817410304014813

`A016291(n+1)-A016278(n+1)`
-/

namespace A025470.P12527817410304014813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016291 (n + 1) - A016278 (n + 1)

end

end A025470.P12527817410304014813

namespace A025470

/-- `A016291(n+1)-A016278(n+1)` -/
def P12527817410304014813.Spec : Prop :=
  ∀ n, P12527817410304014813.a n = A025470 n

end A025470

/-!
# A025471: Position of 5^n among the powers of primes (A000961).

The programs for A025471, the canonical program `A025471.P13068643471398560519` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025471 has offset 0).

The definition of A025471 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025471.P13068643471398560519

`A065515(5^n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025471

/-- `A065515(5^n)` -/
def P13068643471398560519.Spec : Prop :=
  ∀ n, P13068643471398560519.a n = A025471 n

theorem P13068643471398560519.correct : P13068643471398560519.Spec := by
  intro n
  simp only [A025471]

end A025471

/-! ## A025471.P11855195682091267985

`A025528(5^n)+1`
-/

namespace A025471.P11855195682091267985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (5 ^ n) + 1

end

end A025471.P11855195682091267985

namespace A025471

/-- `A025528(5^n)+1` -/
def P11855195682091267985.Spec : Prop :=
  ∀ n, P11855195682091267985.a n = A025471 n

end A025471

/-! ## A025471.P15734682509315041470

`lt[5%A007947(A000961(n+1)), 1]+1`
-/

namespace A025471.P15734682509315041470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A007947 (A000961 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025471.P15734682509315041470

namespace A025471

/-- `lt[5%A007947(A000961(n+1)), 1]+1` -/
def P15734682509315041470.Spec : Prop :=
  ∀ n, (P15734682509315041470.a n : ℤ) = A025471 n

end A025471

/-! ## A025471.P12611766682277125855

`A303912(n)+A025528(A000351(n))`
-/

namespace A025471.P12611766682277125855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303912 n + A025528 (A000351 n).toNat

end

end A025471.P12611766682277125855

namespace A025471

/-- `A303912(n)+A025528(A000351(n))` -/
def P12611766682277125855.Spec : Prop :=
  ∀ n, P12611766682277125855.a n = A025471 n

end A025471

/-!
# A025472: a(n) is the position of 7^n among the powers of primes (A000961).

The programs for A025472, the canonical program `A025472.P17597315845330719835` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025472 has offset 0).

The definition of A025472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025472.P17597315845330719835

`A065515(7^n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025472

/-- `A065515(7^n)` -/
def P17597315845330719835.Spec : Prop :=
  ∀ n, P17597315845330719835.a n = A025472 n

theorem P17597315845330719835.correct : P17597315845330719835.Spec := by
  intro n
  simp only [A025472]

end A025472

/-! ## A025472.P6919163601775259076

`A025528(7^n)+1`
-/

namespace A025472.P6919163601775259076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (7 ^ n) + 1

end

end A025472.P6919163601775259076

namespace A025472

/-- `A025528(7^n)+1` -/
def P6919163601775259076.Spec : Prop :=
  ∀ n, P6919163601775259076.a n = A025472 n

end A025472

/-!
# A025473: a(1) = 1; for n > 1, a(n) = prime root of n-th prime power (A000961).

The programs for A025473, the canonical program `A025473.P8571811305423406731` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025473 has offset 1).

The definition of A025473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025473.P8571811305423406731

`A006530(A000961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A025473

/-- `A006530(A000961(n+1))` -/
def P8571811305423406731.Spec : Prop :=
  ∀ n, P8571811305423406731.a n = A025473 (n + 1)

theorem P8571811305423406731.correct : P8571811305423406731.Spec := by
  intro n
  simp only [A025473, Nat.add_sub_cancel]

end A025473

/-! ## A025473.P18356008674711858411

`∏{p}[A181062(n+1)+1, #]`
-/

namespace A025473.P18356008674711858411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A025473.P18356008674711858411

namespace A025473

/-- `∏{p}[A181062(n+1)+1, #]` -/
def P18356008674711858411.Spec : Prop :=
  ∀ n, (P18356008674711858411.a n : ℤ) = A025473 (n + 1)

end A025473

/-! ## A025473.P7859761299885705065

`A192133(n+1)+A025474(n+1)`
-/

namespace A025473.P7859761299885705065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (n + 1) + A025474 (n + 1)

end

end A025473.P7859761299885705065

namespace A025473

/-- `A192133(n+1)+A025474(n+1)` -/
def P7859761299885705065.Spec : Prop :=
  ∀ n, P7859761299885705065.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P15705116709201822488

`∏{p}[record[A008475(n+1)], #]`
-/

namespace A025473.P15705116709201822488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A025473.P15705116709201822488

namespace A025473

/-- `∏{p}[record[A008475(n+1)], #]` -/
def P15705116709201822488.Spec : Prop :=
  ∀ n, (P15705116709201822488.a n : ℤ) = A025473 (n + 1)

end A025473

/-! ## A025473.P4114323917715651846

`A006530(sqrt(A056798(n+1)))`
-/

namespace A025473.P4114323917715651846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A025473.P4114323917715651846

namespace A025473

/-- `A006530(sqrt(A056798(n+1)))` -/
def P4114323917715651846.Spec : Prop :=
  ∀ n, P4114323917715651846.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P1253289738642638941

`A020639(sqrt(A056798(n+1)))`
-/

namespace A025473.P1253289738642638941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A025473.P1253289738642638941

namespace A025473

/-- `A020639(sqrt(A056798(n+1)))` -/
def P1253289738642638941.Spec : Prop :=
  ∀ n, P1253289738642638941.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P2883148596481589741

`A006530(A181062(n+1)+1)`
-/

namespace A025473.P2883148596481589741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A181062 (n + 1) + 1).toNat

end

end A025473.P2883148596481589741

namespace A025473

/-- `A006530(A181062(n+1)+1)` -/
def P2883148596481589741.Spec : Prop :=
  ∀ n, P2883148596481589741.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P6848968372083164212

`A007947(A181062(n+1)+1)`
-/

namespace A025473.P6848968372083164212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A181062 (n + 1) + 1).toNat

end

end A025473.P6848968372083164212

namespace A025473

/-- `A007947(A181062(n+1)+1)` -/
def P6848968372083164212.Spec : Prop :=
  ∀ n, P6848968372083164212.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P8975119646056716386

`A020639(A181062(n+1)+1)`
-/

namespace A025473.P8975119646056716386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A181062 (n + 1) + 1).toNat

end

end A025473.P8975119646056716386

namespace A025473

/-- `A020639(A181062(n+1)+1)` -/
def P8975119646056716386.Spec : Prop :=
  ∀ n, P8975119646056716386.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P11569732747587973754

`A007947(A138929(n+1)/2)`
-/

namespace A025473.P11569732747587973754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A025473.P11569732747587973754

namespace A025473

/-- `A007947(A138929(n+1)/2)` -/
def P11569732747587973754.Spec : Prop :=
  ∀ n, P11569732747587973754.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P6367613302551208895

`A020639(A138929(n+1)/2)`
-/

namespace A025473.P6367613302551208895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A025473.P6367613302551208895

namespace A025473

/-- `A020639(A138929(n+1)/2)` -/
def P6367613302551208895.Spec : Prop :=
  ∀ n, P6367613302551208895.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P3149903603840720458

`A007947(A000961(2*n+1-n))`
-/

namespace A025473.P3149903603840720458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000961 (2 * n + 1 - n)).toNat

end

end A025473.P3149903603840720458

namespace A025473

/-- `A007947(A000961(2*n+1-n))` -/
def P3149903603840720458.Spec : Prop :=
  ∀ n, P3149903603840720458.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P1647996076463536321

`A006530(record[A020639(n+1)^A001222(n+1)])`
-/

namespace A025473.P1647996076463536321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A025473.P1647996076463536321

namespace A025473

/-- `A006530(record[A020639(n+1)^A001222(n+1)])` -/
def P1647996076463536321.Spec : Prop :=
  ∀ n, P1647996076463536321.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P1951590131805548352

`A020639(record[A020639(n+1)^A001222(n+1)])`
-/

namespace A025473.P1951590131805548352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A025473.P1951590131805548352

namespace A025473

/-- `A020639(record[A020639(n+1)^A001222(n+1)])` -/
def P1951590131805548352.Spec : Prop :=
  ∀ n, P1951590131805548352.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P10425316910206245683

`A006530(record[(n+1)/A006530(n+1)*A020639(n+1)])`
-/

namespace A025473.P10425316910206245683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A025473.P10425316910206245683

namespace A025473

/-- `A006530(record[(n+1)/A006530(n+1)*A020639(n+1)])` -/
def P10425316910206245683.Spec : Prop :=
  ∀ n, P10425316910206245683.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P7181345596591412859

`A006530(record[A034699(n+1)])`
-/

namespace A025473.P7181345596591412859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025473.P7181345596591412859

namespace A025473

/-- `A006530(record[A034699(n+1)])` -/
def P7181345596591412859.Spec : Prop :=
  ∀ n, P7181345596591412859.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P10040605379012906693

`A020639(record[A034699(n+1)])`
-/

namespace A025473.P10040605379012906693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025473.P10040605379012906693

namespace A025473

/-- `A020639(record[A034699(n+1)])` -/
def P10040605379012906693.Spec : Prop :=
  ∀ n, P10040605379012906693.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P12777205511988615139

`A007947(record[A065642(n+1)/A007947(n+1)])`
-/

namespace A025473.P12777205511988615139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065642 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A025473.P12777205511988615139

namespace A025473

/-- `A007947(record[A065642(n+1)/A007947(n+1)])` -/
def P12777205511988615139.Spec : Prop :=
  ∀ n, P12777205511988615139.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P13449338729089592434

`A006530(lt[A001221(n+1), 2]+1)`
-/

namespace A025473.P13449338729089592434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A025473.P13449338729089592434

namespace A025473

/-- `A006530(lt[A001221(n+1), 2]+1)` -/
def P13449338729089592434.Spec : Prop :=
  ∀ n, P13449338729089592434.a n = A025473 (n + 1)

end A025473

/-! ## A025473.P9981778142070368951

`A020639(A000961(A250246(A250245(n+1))))`
-/

namespace A025473.P9981778142070368951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000961 (A250246 (A250245 (n + 1)).toNat).toNat).toNat

end

end A025473.P9981778142070368951

namespace A025473

/-- `A020639(A000961(A250246(A250245(n+1))))` -/
def P9981778142070368951.Spec : Prop :=
  ∀ n, P9981778142070368951.a n = A025473 (n + 1)

end A025473

/-!
# A025474: Exponent of the n-th prime power A000961(n).

The programs for A025474, the canonical program `A025474.P5402530802230343307` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025474 has offset 1).

The definition of A025474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025474.P5402530802230343307

`A001222(A000961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A025474

/-- `A001222(A000961(n+1))` -/
def P5402530802230343307.Spec : Prop :=
  ∀ n, P5402530802230343307.a n = A025474 (n + 1)

theorem P5402530802230343307.correct : P5402530802230343307.Spec := by
  intro n
  simp only [A025474, Nat.add_sub_cancel]

end A025474

/-! ## A025474.P16188065042376455993

`A086454(n+1)-1`
-/

namespace A025474.P16188065042376455993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1) - 1

end

end A025474.P16188065042376455993

namespace A025474

/-- `A086454(n+1)-1` -/
def P16188065042376455993.Spec : Prop :=
  ∀ n, P16188065042376455993.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P12459220463745120533

`∑{e}[A138929(n+1), #]-1`
-/

namespace A025474.P12459220463745120533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A025474.P12459220463745120533

namespace A025474

/-- `∑{e}[A138929(n+1), #]-1` -/
def P12459220463745120533.Spec : Prop :=
  ∀ n, P12459220463745120533.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P4288747734091126174

`A023443(A086454(n+1))`
-/

namespace A025474.P4288747734091126174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A086454 (n + 1)).toNat

end

end A025474.P4288747734091126174

namespace A025474

/-- `A023443(A086454(n+1))` -/
def P4288747734091126174.Spec : Prop :=
  ∀ n, P4288747734091126174.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P6689400409900615781

`A025473(n+1)-A192133(n+1)`
-/

namespace A025474.P6689400409900615781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1) - A192133 (n + 1)

end

end A025474.P6689400409900615781

namespace A025474

/-- `A025473(n+1)-A192133(n+1)` -/
def P6689400409900615781.Spec : Prop :=
  ∀ n, P6689400409900615781.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P16775205833603008430

`A085729(n+1)/A025473(n+1)`
-/

namespace A025474.P16775205833603008430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085729 (n + 1) : ℚ) / (A025473 (n + 1) : ℚ)

end

end A025474.P16775205833603008430

namespace A025474

/-- `A085729(n+1)/A025473(n+1)` -/
def P16775205833603008430.Spec : Prop :=
  ∀ n, P16775205833603008430.a n = (A025474 (n + 1) : ℚ)

end A025474

/-! ## A025474.P11088728534467953759

`A025473(n+1)/A000961(n+1)*A192015(n+1)`
-/

namespace A025474.P11088728534467953759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) : ℚ) / (A000961 (n + 1) : ℚ) * (A192015 (n + 1) : ℚ)

end

end A025474.P11088728534467953759

namespace A025474

/-- `A025473(n+1)/A000961(n+1)*A192015(n+1)` -/
def P11088728534467953759.Spec : Prop :=
  ∀ n, P11088728534467953759.a n = (A025474 (n + 1) : ℚ)

end A025474

/-! ## A025474.P323782836731044036

`A001222(sqrt(A056798(n+1)))`
-/

namespace A025474.P323782836731044036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A025474.P323782836731044036

namespace A025474

/-- `A001222(sqrt(A056798(n+1)))` -/
def P323782836731044036.Spec : Prop :=
  ∀ n, P323782836731044036.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P12098580104668722808

`A001222(A181062(n+1)+1)`
-/

namespace A025474.P12098580104668722808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181062 (n + 1) + 1).toNat

end

end A025474.P12098580104668722808

namespace A025474

/-- `A001222(A181062(n+1)+1)` -/
def P12098580104668722808.Spec : Prop :=
  ∀ n, P12098580104668722808.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P16349983505946912407

`A001222(A138929(n+1)/2)`
-/

namespace A025474.P16349983505946912407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A025474.P16349983505946912407

namespace A025474

/-- `A001222(A138929(n+1)/2)` -/
def P16349983505946912407.Spec : Prop :=
  ∀ n, P16349983505946912407.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P8341510742181043229

`∑{d}[A000961(n+1), A001221(#)]`
-/

namespace A025474.P8341510742181043229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A025474.P8341510742181043229

namespace A025474

/-- `∑{d}[A000961(n+1), A001221(#)]` -/
def P8341510742181043229.Spec : Prop :=
  ∀ n, P8341510742181043229.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P6873361965441584529

`A000005(sqrt(A056798(n+1)))-1`
-/

namespace A025474.P6873361965441584529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat - 1

end

end A025474.P6873361965441584529

namespace A025474

/-- `A000005(sqrt(A056798(n+1)))-1` -/
def P6873361965441584529.Spec : Prop :=
  ∀ n, P6873361965441584529.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P18306894883277876398

`A000005(A181062(n+1)+1)-1`
-/

namespace A025474.P18306894883277876398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181062 (n + 1) + 1).toNat - 1

end

end A025474.P18306894883277876398

namespace A025474

/-- `A000005(A181062(n+1)+1)-1` -/
def P18306894883277876398.Spec : Prop :=
  ∀ n, P18306894883277876398.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P7818769655491108832

`A051903(A000961(2*n+1-n))`
-/

namespace A025474.P7818769655491108832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000961 (2 * n + 1 - n)).toNat

end

end A025474.P7818769655491108832

namespace A025474

/-- `A051903(A000961(2*n+1-n))` -/
def P7818769655491108832.Spec : Prop :=
  ∀ n, P7818769655491108832.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P7766472957432432964

`A000005(record[n/a(A001221(n))])-1` with `a(0)=1`
-/

namespace A025474.P7766472957432432964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat - 1

end

end A025474.P7766472957432432964

namespace A025474

/-- `A000005(record[n/a(A001221(n))])-1` -/
def P7766472957432432964.Spec : Prop :=
  ∀ n, P7766472957432432964.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P4918212719404149412

`A100995(A000961(A063524(n)+1+n))`
-/

namespace A025474.P4918212719404149412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A000961 (A063524 n + 1 + (n : ℤ)).toNat).toNat

end

end A025474.P4918212719404149412

namespace A025474

/-- `A100995(A000961(A063524(n)+1+n))` -/
def P4918212719404149412.Spec : Prop :=
  ∀ n, P4918212719404149412.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P13420531080981066395

`A006530(A000961(n+1))-A192133(n+1)`
-/

namespace A025474.P13420531080981066395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000961 (n + 1)).toNat - A192133 (n + 1)

end

end A025474.P13420531080981066395

namespace A025474

/-- `A006530(A000961(n+1))-A192133(n+1)` -/
def P13420531080981066395.Spec : Prop :=
  ∀ n, P13420531080981066395.a n = A025474 (n + 1)

end A025474

/-! ## A025474.P3742331347742799872

`A001414(A000961(n+1))/A025473(n+1)`
-/

namespace A025474.P3742331347742799872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A000961 (n + 1)).toNat : ℚ) / (A025473 (n + 1) : ℚ)

end

end A025474.P3742331347742799872

namespace A025474

/-- `A001414(A000961(n+1))/A025473(n+1)` -/
def P3742331347742799872.Spec : Prop :=
  ∀ n, P3742331347742799872.a n = (A025474 (n + 1) : ℚ)

end A025474

/-! ## A025474.P2028883820379027854

`A085729(n+1)/A020639(A000961(n+1))`
-/

namespace A025474.P2028883820379027854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085729 (n + 1) : ℚ) / (A020639 (A000961 (n + 1)).toNat : ℚ)

end

end A025474.P2028883820379027854

namespace A025474

/-- `A085729(n+1)/A020639(A000961(n+1))` -/
def P2028883820379027854.Spec : Prop :=
  ∀ n, P2028883820379027854.a n = (A025474 (n + 1) : ℚ)

end A025474

/-! ## A025474.P1280369637218566988

`A046079(A138929(n+1))`
-/

namespace A025474.P1280369637218566988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A138929 (n + 1)).toNat

end

end A025474.P1280369637218566988

namespace A025474

/-- `A046079(A138929(n+1))` -/
def P1280369637218566988.Spec : Prop :=
  ∀ n, P1280369637218566988.a n = A025474 (n + 1)

end A025474

/-!
# A025475: 1 and the prime powers p^m where m >= 2, thus excluding the primes.

The programs for A025475, there is no canonical definition to state claims against.
-/

/-! ## A025475.P14650881163850555217

`A249435(n+1)+1`
-/

namespace A025475.P14650881163850555217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1) + 1

end

end A025475.P14650881163850555217

/-! ## A025475.P11375945732031436042

`A053707(n)+a(n-1)` with `a(0)=1`
-/

namespace A025475.P11375945732031436042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053707 n + a (n - 1)

end

end A025475.P11375945732031436042

/-! ## A025475.P16775363842655248711

`record[A076396(n+1)^A076399(n+1)]`
-/

namespace A025475.P16775363842655248711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076396 (n + 1) : ℚ) ^ (A076399 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P16775363842655248711

/-! ## A025475.P3292085464571668333

`A001597(eq[A025478(n+1), A076396(n+1)]+1)`
-/

namespace A025475.P3292085464571668333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025475.P3292085464571668333

/-! ## A025475.P14283556246531019864

`A001597(eq[A025478(n+1), A076397(n+1)]+1)`
-/

namespace A025475.P14283556246531019864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025475.P14283556246531019864

/-! ## A025475.P6775756414360840825

`A001597(eq[A076396(n+1), A076397(n+1)]+1)`
-/

namespace A025475.P6775756414360840825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A025475.P6775756414360840825

/-! ## A025475.P13101588571964619318

`record[A258567(n+1)*A306458(n+1)]`
-/

namespace A025475.P13101588571964619318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258567 (n + 1) * A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P13101588571964619318

/-! ## A025475.P1036399385604292823

`record[A065642(A306458(n+1))]`
-/

namespace A025475.P1036399385604292823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P1036399385604292823

/-! ## A025475.P5710222341268477495

`record[A065642(A001597(n+1)/A025478(n+1))]`
-/

namespace A025475.P5710222341268477495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway ((A001597 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P5710222341268477495

/-! ## A025475.P7695501792330876444

`record[A065642(A001597(n+1)/A076403(n+1))]`
-/

namespace A025475.P7695501792330876444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway ((A001597 (n + 1) : ℚ) / (A076403 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P7695501792330876444

/-! ## A025475.P7621158902100720075

`record[A065642(A001694(n+1)/A084371(n+1))]`
-/

namespace A025475.P7621158902100720075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P7621158902100720075

/-! ## A025475.P2753549167241842459

`record[A065642(A340588(n+1)/A076405(n+1))]`
-/

namespace A025475.P2753549167241842459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.roundAway ((A340588 (n + 1) : ℚ) / (A076405 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P2753549167241842459

/-! ## A025475.P7821796078778782051

`record[A163813(n+1)]`
-/

namespace A025475.P7821796078778782051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025475.P7821796078778782051

/-! ## A025475.P2898237061260401366

`∩[A134611(n+1), A336547(n+1)]`
-/

namespace A025475.P2898237061260401366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025475.P2898237061260401366

/-! ## A025475.P15820587153673665782

`A000961(A024621(n+1))`
-/

namespace A025475.P15820587153673665782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A024621 (n + 1)).toNat

end

end A025475.P15820587153673665782

/-! ## A025475.P6731220188602898791

`filter[A134611(n+1), A324290(#)]`
-/

namespace A025475.P6731220188602898791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A025475.P6731220188602898791

/-! ## A025475.P682361820820155151

`∩[A000961(n+1), A001597(n+1)]`
-/

namespace A025475.P682361820820155151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025475.P682361820820155151

/-! ## A025475.P4944575989570559767

`∩[A000961(n+1), A001694(n+1)]`
-/

namespace A025475.P4944575989570559767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025475.P4944575989570559767

/-! ## A025475.P4140521784328410571

`∩[A000961(n+1), A076292(n+1)]`
-/

namespace A025475.P4140521784328410571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025475.P4140521784328410571

/-!
# A025476: Prime root of n-th nontrivial prime power (A025475, A246547).

The programs for A025476, there is no canonical definition to state claims against.
-/

/-! ## A025476.P14833226639744163947

`A053198(n+1)/A053211(n+1)+1`
-/

namespace A025476.P14833226639744163947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053198 (n + 1) : ℚ) / (A053211 (n + 1) : ℚ) + 1

end

end A025476.P14833226639744163947

/-! ## A025476.P12354126747337929536

`A025475(n+2)/A053211(n+1)`
-/

namespace A025476.P12354126747337929536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025475 (n + 2) : ℚ) / (A053211 (n + 1) : ℚ)

end

end A025476.P12354126747337929536

/-! ## A025476.P11132030218847784635

`A025475(n+2)/(A025475(n+2)-A053198(n+1))`
-/

namespace A025476.P11132030218847784635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025475 (n + 2) : ℚ) / (A025475 (n + 2) - A053198 (n + 1) : ℚ)

end

end A025476.P11132030218847784635

/-! ## A025476.P137401762400451570

`p?[A025478(n+1)]`
-/

namespace A025476.P137401762400451570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025476.P137401762400451570

/-! ## A025476.P4815524378942851401

`p?[A076403(n+1)]`
-/

namespace A025476.P4815524378942851401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025476.P4815524378942851401

/-! ## A025476.P9055887037390680542

`p?[A392986(n+1)]`
-/

namespace A025476.P9055887037390680542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025476.P9055887037390680542

/-! ## A025476.P397312464113523813

`p?[abs(A157987(n+1))]`
-/

namespace A025476.P397312464113523813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157987 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A025476.P397312464113523813

/-! ## A025476.P4137747795626656076

`filter[A025478(n+1), A010051(#)]`
-/

namespace A025476.P4137747795626656076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A025476.P4137747795626656076

/-! ## A025476.P3114887572135795570

`filter[A076403(n+1), A010051(#)]`
-/

namespace A025476.P3114887572135795570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A025476.P3114887572135795570

/-! ## A025476.P9281085024592160232

`filter[A025478(n+1), A069513(#)]`
-/

namespace A025476.P9281085024592160232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A025476.P9281085024592160232

/-! ## A025476.P1795091408856345200

`filter[A076403(n+1), A069513(#)]`
-/

namespace A025476.P1795091408856345200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A025476.P1795091408856345200

/-! ## A025476.P12760704947856587970

`filter[A076403(n+1), A144101(#)]`
-/

namespace A025476.P12760704947856587970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A025476.P12760704947856587970

/-! ## A025476.P10730939993551384111

`filter[A025478(n+1), A302777(#)]`
-/

namespace A025476.P10730939993551384111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A025476.P10730939993551384111

/-! ## A025476.P13860326575499707115

`filter[A076403(n+1), A302777(#)]`
-/

namespace A025476.P13860326575499707115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A025476.P13860326575499707115

/-! ## A025476.P14182263547718644219

`filter[A025478(n+1), A353817(#)]`
-/

namespace A025476.P14182263547718644219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A025476.P14182263547718644219

/-! ## A025476.P12793312896249520144

`filter[A076403(n+1), A353817(#)]`
-/

namespace A025476.P12793312896249520144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A025476.P12793312896249520144

/-! ## A025476.P638220206602985453

`filter[A076403(n+1), A358769(#)]`
-/

namespace A025476.P638220206602985453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A025476.P638220206602985453

/-! ## A025476.P10832893860020448784

`filter[A025478(n+2), A010055(#)]`
-/

namespace A025476.P10832893860020448784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A025476.P10832893860020448784

/-!
# A025477: a(n) = exponent of the n-th nontrivial prime power A025475(n).

The programs for A025477, there is no canonical definition to state claims against.
-/

/-! ## A025477.P5268834348325794253

`A001222(A025475(n+1))`
-/

namespace A025477.P5268834348325794253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025475 (n + 1)).toNat

end

end A025477.P5268834348325794253

/-! ## A025477.P6693591288978021303

`val(A025475(n+1), A025476(round(acot(n)+n)))`
-/

namespace A025477.P6693591288978021303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025475 (n + 1)).toNat (A025476 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A025477.P6693591288978021303

/-! ## A025477.P8163342368089931282

`val(A025475(n+1), A025476(A028310(n)))`
-/

namespace A025477.P8163342368089931282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025475 (n + 1)).toNat (A025476 (A028310 n).toNat).toNat

end

end A025477.P8163342368089931282

/-! ## A025477.P884613049970513261

`val(A249435(n+1)+1, A025476(A028310(n)))`
-/

namespace A025477.P884613049970513261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249435 (n + 1) + 1).toNat (A025476 (A028310 n).toNat).toNat

end

end A025477.P884613049970513261

/-! ## A025477.P15491959476155851366

`val(A025475(n+1), A025476(A233583(n+1)))`
-/

namespace A025477.P15491959476155851366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025475 (n + 1)).toNat (A025476 (A233583 (n + 1)).toNat).toNat

end

end A025477.P15491959476155851366

/-! ## A025477.P10731253086133648105

`∑{e}[A249435(n+1)+1, #]`
-/

namespace A025477.P10731253086133648105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025477.P10731253086133648105

/-! ## A025477.P13629147209873629796

`∑{e}[A053707(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A025477.P13629147209873629796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053707 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025477.P13629147209873629796

/-! ## A025477.P11461367861504492002

`∏{e}[A025475(n+1), #]*A057427(n)`
-/

namespace A025477.P11461367861504492002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A057427 n

end

end A025477.P11461367861504492002

/-! ## A025477.P5720589287106006810

`∑{e}[record[A065642(A306458(n+1))], #]`
-/

namespace A025477.P5720589287106006810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A306458 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A025477.P5720589287106006810

/-! ## A025477.P6258557772660067156

`A025474(A024621(n+1))`
-/

namespace A025477.P6258557772660067156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (A024621 (n + 1)).toNat

end

end A025477.P6258557772660067156

/-! ## A025477.P7763894822602391941

`A001222(record[A163813(n+1)])`
-/

namespace A025477.P7763894822602391941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A025477.P7763894822602391941

/-! ## A025477.P2897211522927549492

`A001222(A249435(n+1)+1)`
-/

namespace A025477.P2897211522927549492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249435 (n + 1) + 1).toNat

end

end A025477.P2897211522927549492

/-! ## A025477.P3472452127694733249

`∑{d}[A025475(n+1), A001221(#)]`
-/

namespace A025477.P3472452127694733249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A025477.P3472452127694733249

/-! ## A025477.P2519044869619870422

`A000005(record[A163813(n+1)])-1`
-/

namespace A025477.P2519044869619870422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A025477.P2519044869619870422

/-! ## A025477.P14191408955005841037

`A051903(A025475(2*n+1-n))`
-/

namespace A025477.P14191408955005841037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A025475 (2 * n + 1 - n)).toNat

end

end A025477.P14191408955005841037

/-! ## A025477.P7747200388500176909

`A100995(2*A025475(n+1)-A025475(n+1))`
-/

namespace A025477.P7747200388500176909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (2 * A025475 (n + 1) - A025475 (n + 1)).toNat

end

end A025477.P7747200388500176909

/-! ## A025477.P13701059858132683916

`A000005(A025475(n+1))-A057427(3*n+4)`
-/

namespace A025477.P13701059858132683916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A025475 (n + 1)).toNat - A057427 (3 * n + 4)

end

end A025477.P13701059858132683916

/-! ## A025477.P12983266116465753958

`A100995(A025475(A203967(A009087(n+1))))`
-/

namespace A025477.P12983266116465753958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A025475 (A203967 (A009087 (n + 1)).toNat).toNat).toNat

end

end A025477.P12983266116465753958

/-! ## A025477.P1098677092631701021

`A001222(A000961(A024621(A065515(A000961(n+1)))))`
-/

namespace A025477.P1098677092631701021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (A024621 (A065515 (A000961 (n + 1)).toNat).toNat).toNat).toNat

end

end A025477.P1098677092631701021

/-!
# A025478: Least roots of perfect powers (A001597).

The programs for A025478, there is no canonical definition to state claims against.
-/

/-! ## A025478.P16143772109507652287

`A052410(A001597(n+1))`
-/

namespace A025478.P16143772109507652287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A001597 (n + 1)).toNat

end

end A025478.P16143772109507652287

/-! ## A025478.P14352682843452480582

`abs(A157987(n+1))`
-/

namespace A025478.P14352682843452480582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157987 (n + 1)|

end

end A025478.P14352682843452480582

/-! ## A025478.P13727946794237896184

`A052410(A072813(n+1))`
-/

namespace A025478.P13727946794237896184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A072813 (n + 1)).toNat

end

end A025478.P13727946794237896184

/-! ## A025478.P11468332110358533225

`gcd(A000038(n), A157987(n+1))`
-/

namespace A025478.P11468332110358533225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A157987 (n + 1))

end

end A025478.P11468332110358533225

/-! ## A025478.P14739848776279396971

`lcm(A020985(n), A157987(n+1))`
-/

namespace A025478.P14739848776279396971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A157987 (n + 1))

end

end A025478.P14739848776279396971

/-! ## A025478.P10550521865346693403

`A076405(n+1)/∑[A076412(n)]`
-/

namespace A025478.P10550521865346693403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A025478.P10550521865346693403

/-! ## A025478.P3823366249242141918

`root(∑[A076412(n)], A025479(n+1))`
-/

namespace A025478.P3823366249242141918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (A025479 (n + 1) : ℝ))

end

end A025478.P3823366249242141918

/-! ## A025478.P920867997012935788

`A076405(n+1)/A001597(n+1)`
-/

namespace A025478.P920867997012935788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076405 (n + 1) : ℚ) / (A001597 (n + 1) : ℚ)

end

end A025478.P920867997012935788

/-! ## A025478.P2253425383585771275

`root(A001597(n+1), A025479(n+1))`
-/

namespace A025478.P2253425383585771275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℝ) ^ (1 / (A025479 (n + 1) : ℝ))

end

end A025478.P2253425383585771275

/-! ## A025478.P7891773051164000244

`gcd(A001597(n+1), A395562(n+1))`
-/

namespace A025478.P7891773051164000244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001597 (n + 1)) (A395562 (n + 1))

end

end A025478.P7891773051164000244

/-! ## A025478.P9184614332816753748

`root(abs(A157985(n+1)), A025479(n+1))`
-/

namespace A025478.P9184614332816753748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (|A157985 (n + 1)| : ℝ) ^ (1 / (A025479 (n + 1) : ℝ))

end

end A025478.P9184614332816753748

/-! ## A025478.P11682454498818781743

`A001597(n+1)/A157985(n+1)*A157987(n+1)`
-/

namespace A025478.P11682454498818781743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) / (A157985 (n + 1) : ℚ) * (A157987 (n + 1) : ℚ)

end

end A025478.P11682454498818781743

/-! ## A025478.P15029521006993845920

`A025479(n+1)/A157986(n+1)*A157987(n+1)`
-/

namespace A025478.P15029521006993845920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025479 (n + 1) : ℚ) / (A157986 (n + 1) : ℚ) * (A157987 (n + 1) : ℚ)

end

end A025478.P15029521006993845920

/-! ## A025478.P8168168360108499511

`filter[A392986(n+1), A132350(#)]`
-/

namespace A025478.P8168168360108499511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A025478.P8168168360108499511

/-! ## A025478.P4093920924967281185

`A052410(A392621(n+1))`
-/

namespace A025478.P4093920924967281185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A392621 (n + 1)).toNat

end

end A025478.P4093920924967281185

/-! ## A025478.P6494566463309766515

`A052410(A157987(n+1)²)`
-/

namespace A025478.P6494566463309766515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A157987 (n + 1) ^ 2).toNat

end

end A025478.P6494566463309766515

/-! ## A025478.P15796821975990319512

`A052410(A157987(n+1)*A157987(n+1))`
-/

namespace A025478.P15796821975990319512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A157987 (n + 1) * A157987 (n + 1)).toNat

end

end A025478.P15796821975990319512

/-! ## A025478.P13686541863463376902

`A329814(A001597(2*n+1-n))`
-/

namespace A025478.P13686541863463376902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 (A001597 (2 * n + 1 - n)).toNat

end

end A025478.P13686541863463376902

/-! ## A025478.P16659477687138491361

`A329814(A329814(A001597(n+1))²)`
-/

namespace A025478.P16659477687138491361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 (A329814 (A001597 (n + 1)).toNat ^ 2).toNat

end

end A025478.P16659477687138491361

/-! ## A025478.P15081944270060389589

`A052410(A081676(A045542(n+1)))`
-/

namespace A025478.P15081944270060389589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A081676 (A045542 (n + 1)).toNat).toNat

end

end A025478.P15081944270060389589

/-!
# A025479: Largest exponents of perfect powers (A001597).

The programs for A025479, there is no canonical definition to state claims against.
-/

/-! ## A025479.P7382208113161549442

`abs(A157986(n+1))`
-/

namespace A025479.P7382208113161549442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157986 (n + 1)|

end

end A025479.P7382208113161549442

/-! ## A025479.P5434208819244589011

`A000194(A157986(n+1)²)`
-/

namespace A025479.P5434208819244589011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A157986 (n + 1) ^ 2).toNat

end

end A025479.P5434208819244589011

/-! ## A025479.P15472233830385134192

`gcd(A000038(n), A157986(n+1))`
-/

namespace A025479.P15472233830385134192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A157986 (n + 1))

end

end A025479.P15472233830385134192

/-! ## A025479.P2521223188449536827

`A001597(n+1)/A157985(n+1)*A157986(n+1)`
-/

namespace A025479.P2521223188449536827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) / (A157985 (n + 1) : ℚ) * (A157986 (n + 1) : ℚ)

end

end A025479.P2521223188449536827

/-! ## A025479.P11815414004049809363

`A025478(n+1)*A157986(n+1)/A157987(n+1)`
-/

namespace A025479.P11815414004049809363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) * A157986 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)

end

end A025479.P11815414004049809363

/-! ## A025479.P5743565478562708591

`lcm(A001221(A157974(n+1)), A157986(n+1))`
-/

namespace A025479.P5743565478562708591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (A157974 (n + 1)).toNat) (A157986 (n + 1))

end

end A025479.P5743565478562708591

/-!
# A025480: a(2n) = n, a(2n+1) = a(n).

The programs for A025480, the canonical program `A025480.P15873863116418380882` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025480 has offset 0).

The definition of A025480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025480.P8066892918670368720

`A153733(n)/2`
-/

namespace A025480.P8066892918670368720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 n : ℚ) / 2

end

end A025480.P8066892918670368720

namespace A025480

/-- `A153733(n)/2` -/
def P8066892918670368720.Spec : Prop :=
  ∀ n, P8066892918670368720.a n = (A025480 n : ℚ)

end A025480

/-! ## A025480.P3054282538812522971

`A003602(n+1)-1`
-/

namespace A025480.P3054282538812522971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - 1

end

end A025480.P3054282538812522971

namespace A025480

/-- `A003602(n+1)-1` -/
def P3054282538812522971.Spec : Prop :=
  ∀ n, P3054282538812522971.a n = A025480 n

end A025480

/-! ## A025480.P2832062675381312651

`(A000265(n+1)-1)/2`
-/

namespace A025480.P2832062675381312651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) - 1 : ℚ) / 2

end

end A025480.P2832062675381312651

namespace A025480

/-- `(A000265(n+1)-1)/2` -/
def P2832062675381312651.Spec : Prop :=
  ∀ n, P2832062675381312651.a n = (A025480 n : ℚ)

end A025480

/-! ## A025480.P7155726293771907968

`floor(n/2^A001511(n+1))`
-/

namespace A025480.P7155726293771907968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 : ℚ) ^ (A001511 (n + 1) : ℤ)⌋

end

end A025480.P7155726293771907968

namespace A025480

/-- `floor(n/2^A001511(n+1))` -/
def P7155726293771907968.Spec : Prop :=
  ∀ n, P7155726293771907968.a n = A025480 n

end A025480

/-! ## A025480.P15873863116418380882

`((n+1)/A006519(n+1)-1)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025480

/-- `((n+1)/A006519(n+1)-1)/2` -/
def P15873863116418380882.Spec : Prop :=
  ∀ n, P15873863116418380882.a n = (A025480 n : ℚ)

end A025480

/-! ## A025480.P9075090087366383589

`A049084(A181363(n+1))`
-/

namespace A025480.P9075090087366383589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A181363 (n + 1)).toNat

end

end A025480.P9075090087366383589

namespace A025480

/-- `A049084(A181363(n+1))` -/
def P9075090087366383589.Spec : Prop :=
  ∀ n, P9075090087366383589.a n = A025480 n

end A025480

/-! ## A025480.P16290694507894301215

`floor(n/(xor(n, n+1)+1))`
-/

namespace A025480.P16290694507894301215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A025480.P16290694507894301215

namespace A025480

/-- `floor(n/(xor(n, n+1)+1))` -/
def P16290694507894301215.Spec : Prop :=
  ∀ n, P16290694507894301215.a n = A025480 n

end A025480

/-! ## A025480.P809515695780647016

`round(n/(xor(n, n+1)+1))`
-/

namespace A025480.P809515695780647016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))

end

end A025480.P809515695780647016

namespace A025480

/-- `round(n/(xor(n, n+1)+1))` -/
def P809515695780647016.Spec : Prop :=
  ∀ n, P809515695780647016.a n = A025480 n

end A025480

/-! ## A025480.P12015130265420982798

`-ceil(n/xor(n, -(n+2)))`
-/

namespace A025480.P12015130265420982798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌉

end

end A025480.P12015130265420982798

namespace A025480

/-- `-ceil(n/xor(n, -(n+2)))` -/
def P12015130265420982798.Spec : Prop :=
  ∀ n, P12015130265420982798.a n = A025480 n

end A025480

/-! ## A025480.P1606776886172124110

`floor(n/2^val(n+1, 2))/2`
-/

namespace A025480.P1606776886172124110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2

end

end A025480.P1606776886172124110

namespace A025480

/-- `floor(n/2^val(n+1, 2))/2` -/
def P1606776886172124110.Spec : Prop :=
  ∀ n, P1606776886172124110.a n = (A025480 n : ℚ)

end A025480

/-! ## A025480.P3552279458112941495

`gcd(n, ∑[n])%(a(a(n-1))-n)` with `a(0)=0`
-/

namespace A025480.P3552279458112941495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (a (a (n - 1)).toNat - (n : ℤ))

end

end A025480.P3552279458112941495

namespace A025480

/-- `gcd(n, ∑[n])%(a(a(n-1))-n)` -/
def P3552279458112941495.Spec : Prop :=
  ∀ n, P3552279458112941495.a n = A025480 n

end A025480

/-! ## A025480.P6445447432326551811

`ceil((n+1)/(xor(n, n+1)+1))-1`
-/

namespace A025480.P6445447432326551811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ - 1

end

end A025480.P6445447432326551811

namespace A025480

/-- `ceil((n+1)/(xor(n, n+1)+1))-1` -/
def P6445447432326551811.Spec : Prop :=
  ∀ n, P6445447432326551811.a n = A025480 n

end A025480

/-! ## A025480.P17002336800703263610

`((n+1)/2^val(n+1, 2)-1)/2`
-/

namespace A025480.P17002336800703263610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - 1) / 2

end

end A025480.P17002336800703263610

namespace A025480

/-- `((n+1)/2^val(n+1, 2)-1)/2` -/
def P17002336800703263610.Spec : Prop :=
  ∀ n, P17002336800703263610.a n = (A025480 n : ℚ)

end A025480

/-! ## A025480.P17422427062345422705

`lcm(n+1, and(n, n+1))/(2*(n+1))`
-/

namespace A025480.P17422427062345422705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (Nat.land n (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A025480.P17422427062345422705

namespace A025480

/-- `lcm(n+1, and(n, n+1))/(2*(n+1))` -/
def P17422427062345422705.Spec : Prop :=
  ∀ n, P17422427062345422705.a n = (A025480 n : ℚ)

end A025480

/-! ## A025480.P2114882224292060063

`A110962(2*n)`
-/

namespace A025480.P2114882224292060063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * n)

end

end A025480.P2114882224292060063

namespace A025480

/-- `A110962(2*n)` -/
def P2114882224292060063.Spec : Prop :=
  ∀ n, P2114882224292060063.a n = A025480 n

end A025480

/-! ## A025480.P1959348416160978148

`A103391(n+2)-2`
-/

namespace A025480.P1959348416160978148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 2) - 2

end

end A025480.P1959348416160978148

namespace A025480

/-- `A103391(n+2)-2` -/
def P1959348416160978148.Spec : Prop :=
  ∀ n, P1959348416160978148.a n = A025480 n

end A025480

/-! ## A025480.P12769918081757494528

`A110963(Δ[n²])-1`
-/

namespace A025480.P12769918081757494528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A025480.P12769918081757494528

namespace A025480

/-- `A110963(Δ[n²])-1` -/
def P12769918081757494528.Spec : Prop :=
  ∀ n, P12769918081757494528.a n = A025480 n

end A025480

/-! ## A025480.P10495075938517229431

`floor(A000265(n+1)/2)`
-/

namespace A025480.P10495075938517229431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (n + 1) : ℚ) / 2⌋

end

end A025480.P10495075938517229431

namespace A025480

/-- `floor(A000265(n+1)/2)` -/
def P10495075938517229431.Spec : Prop :=
  ∀ n, P10495075938517229431.a n = A025480 n

end A025480

/-! ## A025480.P9425441123545843673

`floor(A322250(n+1)/2)`
-/

namespace A025480.P9425441123545843673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322250 (n + 1) : ℚ) / 2⌋

end

end A025480.P9425441123545843673

namespace A025480

/-- `floor(A322250(n+1)/2)` -/
def P9425441123545843673.Spec : Prop :=
  ∀ n, P9425441123545843673.a n = A025480 n

end A025480

/-! ## A025480.P5064887545975806648

`floor(A166466(n+1)/6)`
-/

namespace A025480.P5064887545975806648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166466 (n + 1) : ℚ) / 6⌋

end

end A025480.P5064887545975806648

namespace A025480

/-- `floor(A166466(n+1)/6)` -/
def P5064887545975806648.Spec : Prop :=
  ∀ n, P5064887545975806648.a n = A025480 n

end A025480

/-!
# A025482: a(0) = 0; a(n) = a(n/3)/3 if n = a(n/3) = 0 (mod 3); a(n) = a(n-1)+1 otherwise.

The programs for A025482, there is no canonical definition to state claims against.
-/

/-! ## A025482.P5852944783353601568

`A053830(A203565(n+1)%A049057(n))`
-/

namespace A025482.P5852944783353601568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (Int.tmod (A203565 (n + 1)) (A049057 n)).toNat

end

end A025482.P5852944783353601568

/-! ## A025482.P9769432067102645512

`A053830(A203565(n+1))%A065026(n+1)`
-/

namespace A025482.P9769432067102645512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A203565 (n + 1)).toNat) (A065026 (n + 1))

end

end A025482.P9769432067102645512

/-! ## A025482.P11107617606312906742

`A053830(A203565(n+1))%A141214(n)`
-/

namespace A025482.P11107617606312906742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A203565 (n + 1)).toNat) (A141214 n)

end

end A025482.P11107617606312906742

/-! ## A025482.P11045340792388870360

`A053830(A203565(n+1))^A007318(A332005(n))²`
-/

namespace A025482.P11045340792388870360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053830 (A203565 (n + 1)).toNat : ℚ) ^ (A007318 (A332005 n).toNat ^ 2 : ℤ)

end

end A025482.P11045340792388870360

/-!
# A025484: a(0) = 0; a(n) = a(n/5)/5 if n = a(n/5) = 0 (mod 5); a(n) = a(n-1)+1 otherwise.

The programs for A025484, the canonical program `A025484.P7854271850467826119` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025484 has offset 0).

The definition of A025484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025484.P17334876807319078704

`A137936(A137936(n))-A158388(A349628(n+3))+1`
-/

namespace A025484.P17334876807319078704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A137936 n).toNat - A158388 (A349628 (n + 3)).toNat + 1

end

end A025484.P17334876807319078704

namespace A025484

/-- `A137936(A137936(n))-A158388(A349628(n+3))+1` -/
def P17334876807319078704.Spec : Prop :=
  ∀ n, P17334876807319078704.a n = A025484 n

end A025484

/-! ## A025484.P8624310106966294109

`A137936(A137936(n)+A137899(2*n+3))`
-/

namespace A025484.P8624310106966294109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A137936 n + A137899 (2 * n + 3)).toNat

end

end A025484.P8624310106966294109

namespace A025484

/-- `A137936(A137936(n)+A137899(2*n+3))` -/
def P8624310106966294109.Spec : Prop :=
  ∀ n, P8624310106966294109.a n = A025484 n

end A025484

/-! ## A025484.P13760131087739774459

`A137936(A137936(n))%∑[A329340(n)]`
-/

namespace A025484.P13760131087739774459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137936 (A137936 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025484.P13760131087739774459

namespace A025484

/-- `A137936(A137936(n))%∑[A329340(n)]` -/
def P13760131087739774459.Spec : Prop :=
  ∀ n, P13760131087739774459.a n = A025484 n

end A025484

/-! ## A025484.P11678807261964819560

`A137936(A137936(n)%A219911(n+1))`
-/

namespace A025484.P11678807261964819560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (Int.tmod (A137936 n) (A219911 (n + 1))).toNat

end

end A025484.P11678807261964819560

namespace A025484

/-- `A137936(A137936(n)%A219911(n+1))` -/
def P11678807261964819560.Spec : Prop :=
  ∀ n, P11678807261964819560.a n = A025484 n

end A025484

/-! ## A025484.P7854271850467826119

`A234575(A000217(n+25)-n)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A025484

/-- `A234575(A000217(n+25)-n)-1` -/
def P7854271850467826119.Spec : Prop :=
  ∀ n, P7854271850467826119.a n = A025484 n

theorem P7854271850467826119.correct : P7854271850467826119.Spec := by
  intro n
  simp only [A025484]

end A025484

/-! ## A025484.P8652859187784031101

`A137936(A137936(n))+A025465(A137688(n))`
-/

namespace A025484.P8652859187784031101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A137936 n).toNat + A025465 (A137688 n).toNat

end

end A025484.P8652859187784031101

namespace A025484

/-- `A137936(A137936(n))+A025465(A137688(n))` -/
def P8652859187784031101.Spec : Prop :=
  ∀ n, P8652859187784031101.a n = A025484 n

end A025484

/-! ## A025484.P12610270806542958055

`A002487(A059268(n))*A137936(A137936(n))`
-/

namespace A025484.P12610270806542958055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059268 n).toNat * A137936 (A137936 n).toNat

end

end A025484.P12610270806542958055

namespace A025484

/-- `A002487(A059268(n))*A137936(A137936(n))` -/
def P12610270806542958055.Spec : Prop :=
  ∀ n, P12610270806542958055.a n = A025484 n

end A025484

/-! ## A025484.P13292417593578067405

`A137936(A137936(n)%A198277(n))`
-/

namespace A025484.P13292417593578067405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (Int.tmod (A137936 n) (A198277 n)).toNat

end

end A025484.P13292417593578067405

namespace A025484

/-- `A137936(A137936(n)%A198277(n))` -/
def P13292417593578067405.Spec : Prop :=
  ∀ n, P13292417593578067405.a n = A025484 n

end A025484

/-! ## A025484.P12030682275362602277

`A137936(A137936(n))+A000007(A044346(n+1))`
-/

namespace A025484.P12030682275362602277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A137936 n).toNat + A000007 (A044346 (n + 1)).toNat

end

end A025484.P12030682275362602277

namespace A025484

/-- `A137936(A137936(n))+A000007(A044346(n+1))` -/
def P12030682275362602277.Spec : Prop :=
  ∀ n, P12030682275362602277.a n = A025484 n

end A025484

/-! ## A025484.P16078029837552061742

`A137936(A137936(n))+A000007(A261697(n+1))`
-/

namespace A025484.P16078029837552061742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A137936 n).toNat + A000007 (A261697 (n + 1)).toNat

end

end A025484.P16078029837552061742

namespace A025484

/-- `A137936(A137936(n))+A000007(A261697(n+1))` -/
def P16078029837552061742.Spec : Prop :=
  ∀ n, P16078029837552061742.a n = A025484 n

end A025484

/-! ## A025484.P16629196378157460445

`A137936(A122188(n+1)²*A137936(n))`
-/

namespace A025484.P16629196378157460445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A122188 (n + 1) ^ 2 * A137936 n).toNat

end

end A025484.P16629196378157460445

namespace A025484

/-- `A137936(A122188(n+1)²*A137936(n))` -/
def P16629196378157460445.Spec : Prop :=
  ∀ n, P16629196378157460445.a n = A025484 n

end A025484

/-! ## A025484.P10234794561802502131

`A137936(A137936(n)/A122188(n+1)²)`
-/

namespace A025484.P10234794561802502131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (SequenceMachineLib.roundAway ((A137936 n : ℚ) / (A122188 (n + 1) ^ 2 : ℚ))).toNat

end

end A025484.P10234794561802502131

namespace A025484

/-- `A137936(A137936(n)/A122188(n+1)²)` -/
def P10234794561802502131.Spec : Prop :=
  ∀ n, P10234794561802502131.a n = A025484 n

end A025484

/-! ## A025484.P2848749162898723757

`A137936(A122188(n+1)*A137936(n)*A122188(n+1))`
-/

namespace A025484.P2848749162898723757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A122188 (n + 1) * A137936 n * A122188 (n + 1)).toNat

end

end A025484.P2848749162898723757

namespace A025484

/-- `A137936(A122188(n+1)*A137936(n)*A122188(n+1))` -/
def P2848749162898723757.Spec : Prop :=
  ∀ n, P2848749162898723757.a n = A025484 n

end A025484

/-! ## A025484.P10777270548576214137

`A137936(A137936(n))%A121149(n)`
-/

namespace A025484.P10777270548576214137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137936 (A137936 n).toNat) (A121149 n)

end

end A025484.P10777270548576214137

namespace A025484

/-- `A137936(A137936(n))%A121149(n)` -/
def P10777270548576214137.Spec : Prop :=
  ∀ n, P10777270548576214137.a n = A025484 n

end A025484

/-! ## A025484.P15330730506380898766

`A008836(record[(1-n)²])*A137936(A137936(n))`
-/

namespace A025484.P15330730506380898766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A137936 (A137936 n).toNat

end

end A025484.P15330730506380898766

namespace A025484

/-- `A008836(record[(1-n)²])*A137936(A137936(n))` -/
def P15330730506380898766.Spec : Prop :=
  ∀ n, P15330730506380898766.a n = A025484 n

end A025484

/-! ## A025484.P4809984518306644479

`A137936(A137936(n))+A014845(A000189(n²+1))`
-/

namespace A025484.P4809984518306644479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 (A137936 n).toNat + A014845 (A000189 (n ^ 2 + 1)).toNat

end

end A025484.P4809984518306644479

namespace A025484

/-- `A137936(A137936(n))+A014845(A000189(n²+1))` -/
def P4809984518306644479.Spec : Prop :=
  ∀ n, P4809984518306644479.a n = A025484 n

end A025484

/-!
# A025485: Number of iterations of function f(k) = ceiling(sqrt(k))^2 - k on n required to force n <= 2.

The programs for A025485, the canonical program `A025485.P672486896533301311` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025485 has offset 0).

The definition of A025485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025485.P672486896533301311

`a(A068527(n))+1` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025485

/-- `a(A068527(n))+1` -/
def P672486896533301311.Spec : Prop :=
  ∀ n, (P672486896533301311.a n : ℤ) = A025485 n

theorem P672486896533301311.correct : P672486896533301311.Spec := by
  intro n
  simp only [A025485]

end A025485

/-! ## A025485.P3178385097773879428

`A048379(a(A068527(n)))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A025485.P3178385097773879428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A048379 (a (A068527 n).toNat).toNat

end

end A025485.P3178385097773879428

namespace A025485

/-- `A048379(a(A068527(n)))` -/
def P3178385097773879428.Spec : Prop :=
  ∀ n, P3178385097773879428.a n = A025485 n

end A025485

/-! ## A025485.P9124233308274798643

`A077168(a(A068527(n)))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A025485.P9124233308274798643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A077168 (a (A068527 n).toNat).toNat

end

end A025485.P9124233308274798643

namespace A025485

/-- `A077168(a(A068527(n)))` -/
def P9124233308274798643.Spec : Prop :=
  ∀ n, P9124233308274798643.a n = A025485 n

end A025485

/-! ## A025485.P1415654175097028031

`A185974(a(A068527(n)))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A025485.P1415654175097028031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A185974 (a (A068527 n).toNat).toNat

end

end A025485.P1415654175097028031

namespace A025485

/-- `A185974(a(A068527(n)))` -/
def P1415654175097028031.Spec : Prop :=
  ∀ n, P1415654175097028031.a n = A025485 n

end A025485

/-! ## A025485.P9513504130061875241

`A020705(a(A068527(n)))-3` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A025485.P9513504130061875241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A020705 (a (A068527 n).toNat).toNat - 3

end

end A025485.P9513504130061875241

namespace A025485

/-- `A020705(a(A068527(n)))-3` -/
def P9513504130061875241.Spec : Prop :=
  ∀ n, P9513504130061875241.a n = A025485 n

end A025485

/-!
# A025486: Least k with A025485(k) = n.

The programs for A025486, the canonical program `A025486.P1755440782758137965` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025486 has offset 0).

The definition of A025486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A025486.P1755440782758137965

`a(n-1)²/4+1` with `a(0)=0, a(1)=3, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025486

/-- `a(n-1)²/4+1` -/
def P1755440782758137965.Spec : Prop :=
  ∀ n, P1755440782758137965.a n = (A025486 n : ℚ)

end A025486

/-! ## A025486.P17565300193916554293

`ceil(a(n-1)/2)²+1` with `a(0)=0, a(1)=3`
-/

namespace A025486.P17565300193916554293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  ⌈(a (n - 1) : ℚ) / 2⌉ ^ 2 + 1

end

end A025486.P17565300193916554293

namespace A025486

/-- `ceil(a(n-1)/2)²+1` -/
def P17565300193916554293.Spec : Prop :=
  ∀ n, P17565300193916554293.a n = A025486 n

end A025486

/-! ## A025486.P4566293127821519355

`round(a(n-1)/2)²+1` with `a(0)=0, a(1)=3`
-/

namespace A025486.P4566293127821519355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2) ^ 2 + 1

end

end A025486.P4566293127821519355

namespace A025486

/-- `round(a(n-1)/2)²+1` -/
def P4566293127821519355.Spec : Prop :=
  ∀ n, P4566293127821519355.a n = A025486 n

end A025486

/-! ## A025486.P12597685306348907834

`A364170(n+1)+A121373(A069051(n+1))`
-/

namespace A025486.P12597685306348907834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364170 (n + 1) + A121373 (A069051 (n + 1)).toNat

end

end A025486.P12597685306348907834

namespace A025486

/-- `A364170(n+1)+A121373(A069051(n+1))` -/
def P12597685306348907834.Spec : Prop :=
  ∀ n, P12597685306348907834.a n = A025486 n

end A025486

/-!
# A025487: Least integer of each prime signature A124832; also products of primorial numbers A002110.

The programs for A025487, there is no canonical definition to state claims against.
-/

/-! ## A025487.P13737981935401827226

`A108951(A181815(n+1))`
-/

namespace A025487.P13737981935401827226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A181815 (n + 1)).toNat

end

end A025487.P13737981935401827226

/-! ## A025487.P1462323070250155315

`A329900(A181817(n+1))`
-/

namespace A025487.P1462323070250155315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A181817 (n + 1)).toNat

end

end A025487.P1462323070250155315

/-! ## A025487.P8310787324733867384

`A178799(n)+a(n-1)` with `a(0)=1`
-/

namespace A025487.P8310787324733867384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A178799 n + a (n - 1)

end

end A025487.P8310787324733867384

/-! ## A025487.P5657813205102330812

`∪[A364710(n+1), A070175(n)]`
-/

namespace A025487.P5657813205102330812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P5657813205102330812

/-! ## A025487.P8739944090342250040

`A247451(n+1)*A307107(n+1)`
-/

namespace A025487.P8739944090342250040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1) * A307107 (n + 1)

end

end A025487.P8739944090342250040

/-! ## A025487.P7560513101334357273

`A181817(n+1)/A181816(n+1)`
-/

namespace A025487.P7560513101334357273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ)

end

end A025487.P7560513101334357273

/-! ## A025487.P11082873784076903085

`∪[A001013(n+1), A064783(n+1)]`
-/

namespace A025487.P11082873784076903085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P11082873784076903085

/-! ## A025487.P13294561917947924369

`∪[A099992(n+1), A099993(n+1)]`
-/

namespace A025487.P13294561917947924369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P13294561917947924369

/-! ## A025487.P17824386762283598812

`∪[A161812(n+1), A181824(n+1)]`
-/

namespace A025487.P17824386762283598812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P17824386762283598812

/-! ## A025487.P4511605299548162196

`∪[A181823(n+1), A181826(n+1)]`
-/

namespace A025487.P4511605299548162196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P4511605299548162196

/-! ## A025487.P11653594223356918760

`∪[A181824(n+1), A181826(n+1)]`
-/

namespace A025487.P11653594223356918760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P11653594223356918760

/-! ## A025487.P12107225452048639615

`∪[A181824(n+1), A181827(n+1)]`
-/

namespace A025487.P12107225452048639615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P12107225452048639615

/-! ## A025487.P4939284327833707988

`∪[A007416(n+1), A363280(n+1)]`
-/

namespace A025487.P4939284327833707988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P4939284327833707988

/-! ## A025487.P10321369924725148449

`∪[A140999(n+1), A363280(n+1)]`
-/

namespace A025487.P10321369924725148449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025487.P10321369924725148449

/-! ## A025487.P11165002842499154360

`∑[A178799(n+1)]+1-A178799(n+1)`
-/

namespace A025487.P11165002842499154360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A178799 (n + 1))

end

end A025487.P11165002842499154360

/-! ## A025487.P15240607402305265573

`A002110(A061394(n+1))*A307107(n+1)`
-/

namespace A025487.P15240607402305265573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A061394 (n + 1)).toNat * A307107 (n + 1)

end

end A025487.P15240607402305265573

/-! ## A025487.P3322674937739199877

`record[A329899(n+1)]`
-/

namespace A025487.P3322674937739199877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025487.P3322674937739199877

/-! ## A025487.P10654417664306241788

`record[A051466(n+2)]`
-/

namespace A025487.P10654417664306241788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025487.P10654417664306241788

/-! ## A025487.P7462167054634155842

`A051466(A329898(n+1))`
-/

namespace A025487.P7462167054634155842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

end

end A025487.P7462167054634155842

/-!
# A025488: Number of distinct prime signatures of the positive integers up to 2^n.

The programs for A025488, the canonical program `A025488.P8823239610225918462` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025488 has offset 0).

The definition of A025488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A025488.P8823239610225918462

`A085089(2^n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A025488

/-- `A085089(2^n)` -/
def P8823239610225918462.Spec : Prop :=
  ∀ n, P8823239610225918462.a n = A025488 n

theorem P8823239610225918462.correct : P8823239610225918462.Spec := by
  intro n
  simp only [A025488]

end A025488

/-! ## A025488.P2149876730244771479

`∑[A056099(n)]`
-/

namespace A025488.P2149876730244771479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025488.P2149876730244771479

namespace A025488

/-- `∑[A056099(n)]` -/
def P2149876730244771479.Spec : Prop :=
  ∀ n, P2149876730244771479.a n = A025488 n

end A025488

/-! ## A025488.P4778219323325330051

`A056099(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A025488.P4778219323325330051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056099 (n % n ^ 2) + a (n - 1)

end

end A025488.P4778219323325330051

namespace A025488

/-- `A056099(n%n²)+a(n-1)` -/
def P4778219323325330051.Spec : Prop :=
  ∀ n, P4778219323325330051.a n = A025488 n

end A025488

/-! ## A025488.P16201031350048414902

`A056099(round(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A025488.P16201031350048414902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056099 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + a (n - 1)

end

end A025488.P16201031350048414902

namespace A025488

/-- `A056099(round(acot(n)+n))+a(n-1)` -/
def P16201031350048414902.Spec : Prop :=
  ∀ n, P16201031350048414902.a n = A025488 n

end A025488

/-! ## A025488.P2945807280390510765

`A056099(gcd(n, n*(n+4)))+a(n-1)` with `a(0)=1`
-/

namespace A025488.P2945807280390510765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056099 (Nat.gcd n (n * (n + 4))) + a (n - 1)

end

end A025488.P2945807280390510765

namespace A025488

/-- `A056099(gcd(n, n*(n+4)))+a(n-1)` -/
def P2945807280390510765.Spec : Prop :=
  ∀ n, P2945807280390510765.a n = A025488 n

end A025488

/-! ## A025488.P11817053480839748146

`A056099(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A025488.P11817053480839748146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056099 (A000027 n).toNat + a (n - 1)

end

end A025488.P11817053480839748146

namespace A025488

/-- `A056099(A000027(n))+a(n-1)` -/
def P11817053480839748146.Spec : Prop :=
  ∀ n, P11817053480839748146.a n = A025488 n

end A025488

/-! ## A025488.P11961019117776423512

`A056099(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A025488.P11961019117776423512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056099 (A028310 n).toNat + a (n - 1)

end

end A025488.P11961019117776423512

namespace A025488

/-- `A056099(A028310(n))+a(n-1)` -/
def P11961019117776423512.Spec : Prop :=
  ∀ n, P11961019117776423512.a n = A025488 n

end A025488

/-! ## A025488.P9533280162365986263

`A056099(A064680(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A025488.P9533280162365986263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056099 (A064680 (2 * n)).toNat + a (n - 1)

end

end A025488.P9533280162365986263

namespace A025488

/-- `A056099(A064680(2*n))+a(n-1)` -/
def P9533280162365986263.Spec : Prop :=
  ∀ n, P9533280162365986263.a n = A025488 n

end A025488

/-! ## A025488.P7335620166601697307

`A361808(A008578(n+1))`
-/

namespace A025488.P7335620166601697307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A008578 (n + 1)).toNat

end

end A025488.P7335620166601697307

namespace A025488

/-- `A361808(A008578(n+1))` -/
def P7335620166601697307.Spec : Prop :=
  ∀ n, P7335620166601697307.a n = A025488 n

end A025488

/-! ## A025488.P12836975569353075101

`A361808(A158611(n+2))`
-/

namespace A025488.P12836975569353075101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A158611 (n + 2)).toNat

end

end A025488.P12836975569353075101

namespace A025488

/-- `A361808(A158611(n+2))` -/
def P12836975569353075101.Spec : Prop :=
  ∀ n, P12836975569353075101.a n = A025488 n

end A025488

/-!
# A025491: In base 11, a(n) = sum of digits of Lucas(a(n)).

The programs for A025491, there is no canonical definition to state claims against.
-/

/-! ## A025491.P18283816211549538362

`A291769(A242336(3*n+1)-1)`
-/

namespace A025491.P18283816211549538362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (A242336 (3 * n + 1) - 1).toNat

end

end A025491.P18283816211549538362

/-!
# A025492: Fixed point reached by iterating the Kempner function A002034 starting at n.

The programs for A025492, there is no canonical definition to state claims against.
-/

/-! ## A025492.P6043746197959682392

`A002034(A002034(A002034(n+1)))`
-/

namespace A025492.P6043746197959682392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A002034 (A002034 (n + 1)).toNat).toNat

end

end A025492.P6043746197959682392

/-! ## A025492.P16289973895737416995

`A354995(A139082(2*n+3))+A345931(A122416(n+1)-1)`
-/

namespace A025492.P16289973895737416995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (A139082 (2 * n + 3)).toNat + A345931 (A122416 (n + 1) - 1).toNat

end

end A025492.P16289973895737416995

/-! ## A025492.P766759223283532961

`A322445(A002034(n+1))`
-/

namespace A025492.P766759223283532961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322445 (A002034 (n + 1)).toNat

end

end A025492.P766759223283532961

/-! ## A025492.P11130357417058101878

`A322445(or(A008966(2*(n+1)), A064760(n+1)))`
-/

namespace A025492.P11130357417058101878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322445 (Int.lor (A008966 (2 * (n + 1))) (A064760 (n + 1))).toNat

end

end A025492.P11130357417058101878

/-!
# A025493: Smallest k that converges after exactly n iterations of the Kempner function A002034.

The programs for A025493, there is no canonical definition to state claims against.
-/

/-! ## A025493.P13314561562814026337

`3^floor((a(n-1)-n)/2)` with `a(0)=1, a(1)=6`
-/

namespace A025493.P13314561562814026337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (3 : ℚ) ^ (⌊(a (n - 1) - (n : ℚ)) / 2⌋ : ℤ)

end

end A025493.P13314561562814026337

/-!
# A025494: Squares which are the sum of factorials of distinct integers (probably finite).

The programs for A025494, there is no canonical definition to state claims against.
-/

/-! ## A025494.P6243102134206008052

`∩[A059589(n+1), n²]`
-/

namespace A025494.P6243102134206008052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A025494.P6243102134206008052

/-! ## A025494.P10688782663239682390

`∩[A000290(n), A059589(n+1)]`
-/

namespace A025494.P10688782663239682390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025494.P10688782663239682390

/-! ## A025494.P17487562532461724210

`∩[A000217(n+1)+A000217(n), A059589(n+1)]`
-/

namespace A025494.P17487562532461724210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025494.P17487562532461724210

/-! ## A025494.P2044423101607035860

`filter[A051761(n+2), A065043(#)]`
-/

namespace A025494.P2044423101607035860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051761 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A025494.P2044423101607035860

/-! ## A025494.P2132429719291480826

`filter[A051761(n+2), A349167(#)]`
-/

namespace A025494.P2132429719291480826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051761 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A349167 (f1 j).toNat = 1) n)

end

end A025494.P2132429719291480826

/-!
# A025495: Probable extension of A013704.

The programs for A025495, there is no canonical definition to state claims against.
-/

/-! ## A025495.P5161124960908625982

`∏{e}[2^n, A013704(#)]`
-/

namespace A025495.P5161124960908625982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A013704 (Nat.factorization (f1 n) p)

end

end A025495.P5161124960908625982

/-! ## A025495.P14507560987125585384

`A013704(n%(2*a(n-1)))` with `a(0)=1`
-/

namespace A025495.P14507560987125585384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013704 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat

end

end A025495.P14507560987125585384

/-! ## A025495.P11814247711645308321

`A013704(A028310(n))-floor(acot(n))`
-/

namespace A025495.P11814247711645308321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013704 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A025495.P11814247711645308321

/-! ## A025495.P187503469893284410

`A013704(A028310(n))-A000007(n)`
-/

namespace A025495.P187503469893284410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013704 (A028310 n).toNat - A000007 n

end

end A025495.P187503469893284410

/-! ## A025495.P15357037957317518514

`A013704(A028310(n))-A058343(n)`
-/

namespace A025495.P15357037957317518514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013704 (A028310 n).toNat - A058343 n

end

end A025495.P15357037957317518514

/-!
# A025496: Number of terms in Zeckendorf representation of 4^n.

The programs for A025496, there is no canonical definition to state claims against.
-/

/-! ## A025496.P9962117917419920853

`A020908(2*n)`
-/

namespace A025496.P9962117917419920853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 (2 * n)

end

end A025496.P9962117917419920853

/-! ## A025496.P15249606149615669092

`A020908(A005843(n))%(n+2)`
-/

namespace A025496.P15249606149615669092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020908 (A005843 n).toNat) (n + 2 : ℤ)

end

end A025496.P15249606149615669092

/-! ## A025496.P389799741505717777

`A020908(record[A014681(n)])%(n+2)`
-/

namespace A025496.P389799741505717777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (n + 2 : ℤ)

end

end A025496.P389799741505717777

/-! ## A025496.P12677916714891162246

`A020908(n+n)%A287565(n+1)`
-/

namespace A025496.P12677916714891162246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020908 (n + n)) (A287565 (n + 1))

end

end A025496.P12677916714891162246

/-! ## A025496.P11664842344463654069

`A028310(A020908(record[A083220(n)]))`
-/

namespace A025496.P11664842344463654069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A020908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A025496.P11664842344463654069

/-! ## A025496.P10508430665921213821

`A118759(A020908(record[A014681(n)]))`
-/

namespace A025496.P10508430665921213821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A020908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A025496.P10508430665921213821

/-!
# A025499: Number of terms in Zeckendorf representation of 7^n.

The programs for A025499, there is no canonical definition to state claims against.
-/

/-! ## A025499.P4037997132029660023

`A324901(2^n)`
-/

namespace A025499.P4037997132029660023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324901 (2 ^ n)

end

end A025499.P4037997132029660023

/-! ## A025499.P3584230701261747686

`A324901(A000079(n))%16`
-/

namespace A025499.P3584230701261747686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324901 (A000079 n).toNat) 16

end

end A025499.P3584230701261747686

/-! ## A025499.P9926772804795591934

`A324901(∑[A011782(n)])%16`
-/

namespace A025499.P9926772804795591934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324901 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 16

end

end A025499.P9926772804795591934

/-! ## A025499.P8844376041751840659

`A324901(A000079(n))+A067157(n)`
-/

namespace A025499.P8844376041751840659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324901 (A000079 n).toNat + A067157 (n + 10)

end

end A025499.P8844376041751840659

/-! ## A025499.P8508599129262736818

`A324901(A000079(n))+A250002(n)`
-/

namespace A025499.P8508599129262736818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324901 (A000079 n).toNat + A250002 n

end

end A025499.P8508599129262736818

