import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C001
import Seq.B008.C000
import Seq.B009.C000
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

/-!
# A302801: a(n) is the number whose digits result from the concatenation of the digits of n and the digits of the product of the digits of n.

The programs for A302801, there is no canonical definition to state claims against.
-/

/-! ## A302801.P12313874136320170220

`A160861(A028310(n))%A007088(A000412(n))`
-/

namespace A302801.P12313874136320170220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160861 (A028310 n).toNat) (A007088 (A000412 n).toNat)

end

end A302801.P12313874136320170220

/-! ## A302801.P13869335953950917324

`A067042(A028310(n))%A153677(n+1)`
-/

namespace A302801.P13869335953950917324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067042 (A028310 n).toNat) (A153677 (n + 1))

end

end A302801.P13869335953950917324

/-! ## A302801.P8244221912273394234

`eq[11, gcd(11, n)+11*floor(n/10)-n]`
-/

namespace A302801.P8244221912273394234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 11 n : ℤ) + (11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302801.P8244221912273394234

/-! ## A302801.P11624204071662189908

`∑{e}[A000079(n), A387866(#)]`
-/

namespace A302801.P11624204071662189908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A387866 (Nat.factorization (f1 n).natAbs p)

end

end A302801.P11624204071662189908

/-! ## A302801.P4692896399029215019

`eq[A033665(n), A321801(n)]`
-/

namespace A302801.P4692896399029215019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302801.P4692896399029215019

/-!
# A302802: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302802, there is no canonical definition to state claims against.
-/

/-! ## A302802.P13890811445923133744

`A302808(∑[4*n]+1)`
-/

namespace A302802.P13890811445923133744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302802.P13890811445923133744

/-!
# A302803: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302803, there is no canonical definition to state claims against.
-/

/-! ## A302803.P10281148207848065420

`A302808(∑[n+3]+1)`
-/

namespace A302803.P10281148207848065420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302803.P10281148207848065420

/-!
# A302804: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302804, there is no canonical definition to state claims against.
-/

/-! ## A302804.P12224473967292303453

`A302808(A141214(n+1))`
-/

namespace A302804.P12224473967292303453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A141214 (n + 1)).toNat

end

end A302804.P12224473967292303453

/-!
# A302805: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302805, there is no canonical definition to state claims against.
-/

/-! ## A302805.P9329971489589586812

`A302808(Δ[A264443(n)])`
-/

namespace A302805.P9329971489589586812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (f1 (n + 1) - f1 n).toNat

end

end A302805.P9329971489589586812

/-!
# A302806: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302806, there is no canonical definition to state claims against.
-/

/-! ## A302806.P8850877078822404894

`A302808(A052905(n+3))`
-/

namespace A302806.P8850877078822404894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A052905 (n + 3)).toNat

end

end A302806.P8850877078822404894

/-!
# A302807: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302807, there is no canonical definition to state claims against.
-/

/-! ## A302807.P6339349806540378058

`A302808(A055999(n+4))`
-/

namespace A302807.P6339349806540378058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A055999 (n + 4)).toNat

end

end A302807.P6339349806540378058

/-!
# A302808: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302808, there is no canonical definition to state claims against.
-/

/-! ## A302808.P12101452464621579364

`A303469(n+1)+A016389(A022166(n))`
-/

namespace A302808.P12101452464621579364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (n + 1) + A016389 (A022166 n).toNat

end

end A302808.P12101452464621579364

/-! ## A302808.P1846623416395370200

`A303469(n+1)+A016389(A027336(n))`
-/

namespace A302808.P1846623416395370200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (n + 1) + A016389 (A027336 n).toNat

end

end A302808.P1846623416395370200

/-! ## A302808.P17482940407945498035

`A303469(n+1)+A016389(A176561(n))`
-/

namespace A302808.P17482940407945498035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (n + 1) + A016389 (A176561 n).toNat

end

end A302808.P17482940407945498035

/-! ## A302808.P4677719662858626668

`A303469(n+1)-A011731(A022171(n))`
-/

namespace A302808.P4677719662858626668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (n + 1) - A011731 (A022171 n).toNat

end

end A302808.P4677719662858626668

/-! ## A302808.P9265423251838174026

`A303469(n+1)-A025465(A018791(n))`
-/

namespace A302808.P9265423251838174026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303469 (n + 1) - A025465 (A018791 n).toNat

end

end A302808.P9265423251838174026

/-!
# A302809: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302809, there is no canonical definition to state claims against.
-/

/-! ## A302809.P5703479515688327688

`A302808(∑[n+2]+4)`
-/

namespace A302809.P5703479515688327688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302809.P5703479515688327688

/-!
# A302810: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302810, there is no canonical definition to state claims against.
-/

/-! ## A302810.P14784633724322559184

`A302808(A141214(n)+7)`
-/

namespace A302810.P14784633724322559184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A141214 n + 7).toNat

end

end A302810.P14784633724322559184

/-!
# A302811: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302811, there is no canonical definition to state claims against.
-/

/-! ## A302811.P89991338029474692

`A302808(A167499(n+3))`
-/

namespace A302811.P89991338029474692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167499 (n + 3)).toNat

end

end A302811.P89991338029474692

/-!
# A302812: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302812, there is no canonical definition to state claims against.
-/

/-! ## A302812.P17555723318069372283

`A302808(A166136(n+4))`
-/

namespace A302812.P17555723318069372283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A166136 (n + 4)).toNat

end

end A302812.P17555723318069372283

/-!
# A302813: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302813, there is no canonical definition to state claims against.
-/

/-! ## A302813.P17184430501099210440

`A302808(A167487(n+5))`
-/

namespace A302813.P17184430501099210440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167487 (n + 5)).toNat

end

end A302813.P17184430501099210440

/-!
# A302814: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302814, there is no canonical definition to state claims against.
-/

/-! ## A302814.P15484307900709143240

`A302820(∑[4*n]+1)`
-/

namespace A302814.P15484307900709143240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302814.P15484307900709143240

/-! ## A302814.P13157911064946287279

`∑{digits}[n, A302820(A001844(#))]`
-/

namespace A302814.P13157911064946287279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A302820 (A001844 x).toNat).sum

end

end A302814.P13157911064946287279

/-! ## A302814.P2373715877235827398

`record[A302820(Δ[A235355(n)])]`
-/

namespace A302814.P2373715877235827398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302814.P2373715877235827398

/-! ## A302814.P11250564409032170506

`record[A302820(A272267(n+1))]`
-/

namespace A302814.P11250564409032170506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302814.P11250564409032170506

/-! ## A302814.P8382262505181002296

`record[A302820(A330613(n+1))]`
-/

namespace A302814.P8382262505181002296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302814.P8382262505181002296

/-!
# A302815: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302815, there is no canonical definition to state claims against.
-/

/-! ## A302815.P3924777410326163619

`A302820(∑[n+3]+1)`
-/

namespace A302815.P3924777410326163619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302815.P3924777410326163619

/-! ## A302815.P1697559279934908245

`record[A302820(A198464(n+1))]`
-/

namespace A302815.P1697559279934908245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302815.P1697559279934908245

/-!
# A302816: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302816, there is no canonical definition to state claims against.
-/

/-! ## A302816.P16096069578993148230

`A302820(A141214(n+1))`
-/

namespace A302816.P16096069578993148230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A141214 (n + 1)).toNat

end

end A302816.P16096069578993148230

/-!
# A302817: Number of n X 5 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302817, there is no canonical definition to state claims against.
-/

/-! ## A302817.P7672326057263492832

`A302820(Δ[A264443(n)])`
-/

namespace A302817.P7672326057263492832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (f1 (n + 1) - f1 n).toNat

end

end A302817.P7672326057263492832

/-!
# A302818: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302818, there is no canonical definition to state claims against.
-/

/-! ## A302818.P5254598742124511285

`A302820(A052905(n+3))`
-/

namespace A302818.P5254598742124511285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A052905 (n + 3)).toNat

end

end A302818.P5254598742124511285

/-!
# A302819: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302819, there is no canonical definition to state claims against.
-/

/-! ## A302819.P9406581854664018964

`A302820(A055999(n+4))`
-/

namespace A302819.P9406581854664018964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A055999 (n + 4)).toNat

end

end A302819.P9406581854664018964

/-!
# A302820: T(n,k) = number of n X k 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302820, there is no canonical definition to state claims against.
-/

/-! ## A302820.P5767697926988228960

`A303513(n+1)-A151755(A102365(n))`
-/

namespace A302820.P5767697926988228960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (n + 1) - A151755 (A102365 n).toNat

end

end A302820.P5767697926988228960

/-! ## A302820.P1873767290999352150

`xor(A151755(A174546(n)), A303016(n+1))`
-/

namespace A302820.P1873767290999352150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A174546 n).toNat) (A303016 (n + 1))

end

end A302820.P1873767290999352150

/-! ## A302820.P8624846413681177510

`xor(A151755(A176420(n)), A303513(n+1))`
-/

namespace A302820.P8624846413681177510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151755 (A176420 n).toNat) (A303513 (n + 1))

end

end A302820.P8624846413681177510

/-! ## A302820.P1683056508695451252

`A303513(n+1)-A081221(A208408(n+1))`
-/

namespace A302820.P1683056508695451252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (n + 1) - A081221 (A208408 (n + 1)).toNat

end

end A302820.P1683056508695451252

/-! ## A302820.P14064527737780404645

`A303513(n+1)-A151755(A284075(n+1))`
-/

namespace A302820.P14064527737780404645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303513 (n + 1) - A151755 (A284075 (n + 1)).toNat

end

end A302820.P14064527737780404645

/-!
# A302821: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302821, there is no canonical definition to state claims against.
-/

/-! ## A302821.P4005049344918120030

`A302820(∑[n+2]+4)`
-/

namespace A302821.P4005049344918120030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302821.P4005049344918120030

/-!
# A302822: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302822, there is no canonical definition to state claims against.
-/

/-! ## A302822.P9306168311343416126

`A302820(A141214(n)+7)`
-/

namespace A302822.P9306168311343416126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A141214 n + 7).toNat

end

end A302822.P9306168311343416126

/-!
# A302823: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302823, there is no canonical definition to state claims against.
-/

/-! ## A302823.P2765247321989963636

`A302820(A167499(n+3))`
-/

namespace A302823.P2765247321989963636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A167499 (n + 3)).toNat

end

end A302823.P2765247321989963636

/-!
# A302824: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302824, there is no canonical definition to state claims against.
-/

/-! ## A302824.P15573726029931448294

`A302820(A166136(n+4))`
-/

namespace A302824.P15573726029931448294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A166136 (n + 4)).toNat

end

end A302824.P15573726029931448294

/-!
# A302825: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302825, there is no canonical definition to state claims against.
-/

/-! ## A302825.P2730266631065123362

`A302820(A167487(n+5))`
-/

namespace A302825.P2730266631065123362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A167487 (n + 5)).toNat

end

end A302825.P2730266631065123362

/-!
# A302826: a(n) is number of primes of form k^2 + n - k for 0 < k < n.

The programs for A302826, there is no canonical definition to state claims against.
-/

/-! ## A302826.P17226745099473364979

`and(A048852(A126646(n)), A049283(n+1))`
-/

namespace A302826.P17226745099473364979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048852 (A126646 n).toNat) (A049283 (n + 1))

end

end A302826.P17226745099473364979

/-! ## A302826.P4873838912041152242

`and(A007092(A285546(n)), A049283(n+1))`
-/

namespace A302826.P4873838912041152242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007092 (A285546 n).toNat) (A049283 (n + 1))

end

end A302826.P4873838912041152242

/-! ## A302826.P5988657423539342689

`and(A048852(A282123(n)), A049283(n+1))`
-/

namespace A302826.P5988657423539342689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048852 (A282123 n).toNat) (A049283 (n + 1))

end

end A302826.P5988657423539342689

/-! ## A302826.P1005945135676439679

`and(A046523(A284481(n)), A049283(n+1))`
-/

namespace A302826.P1005945135676439679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046523 (A284481 n).toNat) (A049283 (n + 1))

end

end A302826.P1005945135676439679

/-! ## A302826.P16060126867367317618

`and(A046523(A126646(n)), A281071(n+1))`
-/

namespace A302826.P16060126867367317618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046523 (A126646 n).toNat) (A281071 (n + 1))

end

end A302826.P16060126867367317618

/-!
# A302827: a(n) = (n!)^2 * Sum_{k=1..n-1} 1/(k*(n-k))^2.

The programs for A302827, the canonical program `A302827.P9244402280732776224` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302827 has offset 0).

The definition of A302827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302827.P9244402280732776224

`n!²*∑{#}[n-1-1, 1/((#+1)*(n-(#+1)))²]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302827

/-- `n!²*∑{#}[n-1-1, 1/((#+1)*(n-(#+1)))²]` -/
def P9244402280732776224.Spec : Prop :=
  ∀ n, P9244402280732776224.a n = (A302827 n : ℚ)

end A302827

/-! ## A302827.P15364008607974899841

`6/A008486(n)*A304654(n)`
-/

namespace A302827.P15364008607974899841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A008486 n : ℚ) * (A304654 n : ℚ)

end

end A302827.P15364008607974899841

namespace A302827

/-- `6/A008486(n)*A304654(n)` -/
def P15364008607974899841.Spec : Prop :=
  ∀ n, P15364008607974899841.a n = (A302827 n : ℚ)

end A302827

/-!
# A302829: a(n) is the number of lattice points in a Cartesian grid between a circle of radius n and an inscribed square whose vertices lie on the coordinate axes.

The programs for A302829, the canonical program `A302829.P8661608365373908927` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302829 has offset 1).

The definition of A302829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302829.P8661608365373908927

`A281795(n+1)-4*A034856(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A302829

/-- `A281795(n+1)-4*A034856(n+1)` -/
def P8661608365373908927.Spec : Prop :=
  ∀ n, P8661608365373908927.a n = A302829 (n + 1)

theorem P8661608365373908927.correct : P8661608365373908927.Spec := by
  intro n
  simp only [A302829, Nat.add_sub_cancel]

end A302829

/-! ## A302829.P6428207174394481971

`4*(A007882(1+n)-∑[n])`
-/

namespace A302829.P6428207174394481971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A007882 (1 + n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A302829.P6428207174394481971

namespace A302829

/-- `4*(A007882(1+n)-∑[n])` -/
def P6428207174394481971.Spec : Prop :=
  ∀ n, P6428207174394481971.a n = A302829 (n + 1)

end A302829

/-! ## A302829.P3942797887254174383

`A051132(1+n)-A059993(n)`
-/

namespace A302829.P3942797887254174383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (1 + n) - A059993 n

end

end A302829.P3942797887254174383

namespace A302829

/-- `A051132(1+n)-A059993(n)` -/
def P3942797887254174383.Spec : Prop :=
  ∀ n, P3942797887254174383.a n = A302829 (n + 1)

end A302829

/-! ## A302829.P7001572637806742321

`A008586(A007882(n+1)-∑[n])`
-/

namespace A302829.P7001572637806742321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A007882 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A302829.P7001572637806742321

namespace A302829

/-- `A008586(A007882(n+1)-∑[n])` -/
def P7001572637806742321.Spec : Prop :=
  ∀ n, P7001572637806742321.a n = A302829 (n + 1)

end A302829

/-! ## A302829.P12338315141517919430

`A051132(Δ[n²]-n)%A059993(n)`
-/

namespace A302829.P12338315141517919430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051132 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A059993 n)

end

end A302829.P12338315141517919430

namespace A302829

/-- `A051132(Δ[n²]-n)%A059993(n)` -/
def P12338315141517919430.Spec : Prop :=
  ∀ n, P12338315141517919430.a n = A302829 (n + 1)

end A302829

/-! ## A302829.P6804946254888146250

`record[A053456(A124625(n))]-A059993(n)`
-/

namespace A302829.P6804946254888146250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059993 n

end

end A302829.P6804946254888146250

namespace A302829

/-- `record[A053456(A124625(n))]-A059993(n)` -/
def P6804946254888146250.Spec : Prop :=
  ∀ n, P6804946254888146250.a n = A302829 (n + 1)

end A302829

/-! ## A302829.P3812038733018547985

`A016813(A007882(n+1))-A001844(n)`
-/

namespace A302829.P3812038733018547985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A007882 (n + 1)).toNat - A001844 n

end

end A302829.P3812038733018547985

namespace A302829

/-- `A016813(A007882(n+1))-A001844(n)` -/
def P3812038733018547985.Spec : Prop :=
  ∀ n, P3812038733018547985.a n = A302829 (n + 1)

end A302829

/-! ## A302829.P17469875587471489720

`A077770(n)+A119677(n)-A046092(n)`
-/

namespace A302829.P17469875587471489720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077770 n + (A119677 n - A046092 n)

end

end A302829.P17469875587471489720

namespace A302829

/-- `A077770(n)+A119677(n)-A046092(n)` -/
def P17469875587471489720.Spec : Prop :=
  ∀ n, P17469875587471489720.a n = A302829 (n + 1)

end A302829

/-! ## A302829.P15140308007155456164

`A008574(A007882(n+1))-A008574(∑[n])`
-/

namespace A302829.P15140308007155456164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A007882 (n + 1)).toNat - A008574 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302829.P15140308007155456164

namespace A302829

/-- `A008574(A007882(n+1))-A008574(∑[n])` -/
def P15140308007155456164.Spec : Prop :=
  ∀ n, P15140308007155456164.a n = A302829 (n + 1)

end A302829

/-!
# A302830: Expansion of (1/(1 - x))*Product_{k>=1} 1/(1 - k*x^k).

The programs for A302830, there is no canonical definition to state claims against.
-/

/-! ## A302830.P3084764917363372171

`∑[A006906(n)]`
-/

namespace A302830.P3084764917363372171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302830.P3084764917363372171

/-! ## A302830.P3909480205500779789

`∑[∑[A317912(n)]]`
-/

namespace A302830.P3909480205500779789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302830.P3909480205500779789

/-! ## A302830.P13076784050331196159

`∑[∑{d}[n, A300277(#)]]+1`
-/

namespace A302830.P13076784050331196159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300277 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A302830.P13076784050331196159

/-! ## A302830.P1438174375944884967

`∑[∑{d}[A028310(n), A300277(#)]]`
-/

namespace A302830.P1438174375944884967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A300277 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302830.P1438174375944884967

/-! ## A302830.P3013937348139882980

`∑[∑{d}[A274922(n), A300277(#)]]`
-/

namespace A302830.P3013937348139882980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A300277 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302830.P3013937348139882980

/-! ## A302830.P2952361737584964146

`∑[∑{d}[A065033(2*n), A300277(#)]]`
-/

namespace A302830.P2952361737584964146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A300277 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302830.P2952361737584964146

/-! ## A302830.P15043389152306803542

`A006906(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A302830.P15043389152306803542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006906 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A302830.P15043389152306803542

/-! ## A302830.P4978721058227222612

`a(n-1)+A006906(n)%A006906(n+1)` with `a(0)=1`
-/

namespace A302830.P4978721058227222612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A006906 n) (A006906 (n + 1))

end

end A302830.P4978721058227222612

/-! ## A302830.P10431030076743748936

`a(n-1)+A006906(n+1)-A317912(n+1)` with `a(0)=1`
-/

namespace A302830.P10431030076743748936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006906 (n + 1) - A317912 (n + 1))

end

end A302830.P10431030076743748936

/-! ## A302830.P15798640631017623978

`∑[A297328(A034856(n+1))]`
-/

namespace A302830.P15798640631017623978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302830.P15798640631017623978

/-!
# A302831: Expansion of (1/(1 - x))*Product_{k>=1} (1 + k*x^k).

The programs for A302831, there is no canonical definition to state claims against.
-/

/-! ## A302831.P10482101649504520265

`∑[A022629(n)]`
-/

namespace A302831.P10482101649504520265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302831.P10482101649504520265

/-! ## A302831.P2291947015181712815

`∑[∑{d}[n, A300278(#)]]+1`
-/

namespace A302831.P2291947015181712815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A300278 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A302831.P2291947015181712815

/-! ## A302831.P526723069986396683

`A022629(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A302831.P526723069986396683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022629 (n % n ^ 2) + a (n - 1)

end

end A302831.P526723069986396683

/-! ## A302831.P7495061204687237804

`∑[∑{d}[A028310(n), A300278(#)]]`
-/

namespace A302831.P7495061204687237804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A300278 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302831.P7495061204687237804

/-! ## A302831.P14389317172324773057

`∑[∑{d}[A274922(n), A300278(#)]]`
-/

namespace A302831.P14389317172324773057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A300278 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302831.P14389317172324773057

/-! ## A302831.P16591448277142227495

`A022629(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A302831.P16591448277142227495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022629 n + a (A023443 n).toNat

end

end A302831.P16591448277142227495

/-! ## A302831.P2553245179392833670

`∑[2*A317913(n)]-A317913(n)`
-/

namespace A302831.P2553245179392833670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317913 n

end

end A302831.P2553245179392833670

/-! ## A302831.P8860200099880908690

`∑[A317913(abs(1-n))+A317913(n)]`
-/

namespace A302831.P8860200099880908690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317913 |1 - (n : ℤ)|.toNat + A317913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302831.P8860200099880908690

/-! ## A302831.P7767907202675213727

`a(n-1)+A022629(n)+A000038(n)` with `a(0)=1, a(1)=2`
-/

namespace A302831.P7767907202675213727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A022629 n + A000038 n)

end

end A302831.P7767907202675213727

/-! ## A302831.P12492744202395978928

`a(n-1)+A022629(n)%A022629(n+1)` with `a(0)=1`
-/

namespace A302831.P12492744202395978928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A022629 n) (A022629 (n + 1))

end

end A302831.P12492744202395978928

/-!
# A302832: Expansion of (1/(1 - x))*Product_{k>=1} (1 + x^k)^k.

The programs for A302832, there is no canonical definition to state claims against.
-/

/-! ## A302832.P15677503763684439578

`∑[A026007(n)]`
-/

namespace A302832.P15677503763684439578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302832.P15677503763684439578

/-! ## A302832.P9675288805999375134

`∑[∑[A303902(n)]]`
-/

namespace A302832.P9675288805999375134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302832.P9675288805999375134

/-! ## A302832.P7161621662280868568

`A026007(A110654(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A302832.P7161621662280868568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026007 (A110654 (2 * n)).toNat + a (n - 1)

end

end A302832.P7161621662280868568

/-! ## A302832.P17463557420317327438

`a(n-1)+A298598(n+1)+A298598(n)-A303902(n+1)` with `a(0)=1`
-/

namespace A302832.P17463557420317327438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A298598 (n + 1) + (A298598 n - A303902 (n + 1)))

end

end A302832.P17463557420317327438

/-! ## A302832.P2784585829034429906

`∑[2*A298598(n)]-A298598(n)`
-/

namespace A302832.P2784585829034429906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A298598 n

end

end A302832.P2784585829034429906

/-! ## A302832.P2301691554223777122

`∑[A277938(∑[n+2]-1)]`
-/

namespace A302832.P2301691554223777122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277938 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302832.P2301691554223777122

/-!
# A302833: Expansion of (1/(1 - x))*Product_{k>=1} 1/(1 - x^(k^2)).

The programs for A302833, there is no canonical definition to state claims against.
-/

/-! ## A302833.P13469152469897702552

`∑[A001156(n)]`
-/

namespace A302833.P13469152469897702552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302833.P13469152469897702552

/-! ## A302833.P2007258596093469848

`∑[A078134(n)+a(n-1)]` with `a(0)=1`
-/

namespace A302833.P2007258596093469848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A078134 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302833.P2007258596093469848

/-! ## A302833.P15805570060468318957

`∑[∑[A078134(2+abs(2-n))]]`
-/

namespace A302833.P15805570060468318957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (2 + |2 - (n : ℤ)|).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302833.P15805570060468318957

/-! ## A302833.P2718959312785739639

`A001156(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A302833.P2718959312785739639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001156 (n % n ^ 2) + a (n - 1)

end

end A302833.P2718959312785739639

/-! ## A302833.P6419649797947618048

`A000196(n)+∑[A219610(n)]`
-/

namespace A302833.P6419649797947618048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302833.P6419649797947618048

/-! ## A302833.P13112942585611986741

`∑[A339365(n)+A339364(n)]`
-/

namespace A302833.P13112942585611986741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A339364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302833.P13112942585611986741

/-! ## A302833.P5403225020087894429

`A001156(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A302833.P5403225020087894429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001156 n + a (A023443 n).toNat

end

end A302833.P5403225020087894429

/-! ## A302833.P3110916681091063405

`∑[∑[A078134(A028310(n))]+1]`
-/

namespace A302833.P3110916681091063405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302833.P3110916681091063405

/-! ## A302833.P17926643171301444905

`a(n-1)+A001156(n)-A000007(n)` with `a(0)=1`
-/

namespace A302833.P17926643171301444905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001156 n - A000007 n)

end

end A302833.P17926643171301444905

/-! ## A302833.P4796298249471434735

`A001156(A000290(n)/n)+a(n-1)` with `a(0)=1`
-/

namespace A302833.P4796298249471434735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001156 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A302833.P4796298249471434735

/-! ## A302833.P9927077504653337446

`a(n-1)+A001156(n)%A000726(n+1)` with `a(0)=1`
-/

namespace A302833.P9927077504653337446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A001156 n) (A000726 (n + 1))

end

end A302833.P9927077504653337446

/-! ## A302833.P1066278011760892531

`A001156(n)+a(n-1)%A000041(n+1)` with `a(0)=1`
-/

namespace A302833.P1066278011760892531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001156 n + Int.tmod (a (n - 1)) (A000041 (n + 1))

end

end A302833.P1066278011760892531

/-! ## A302833.P6011956488536273158

`∑[A265260(4*n)]`
-/

namespace A302833.P6011956488536273158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302833.P6011956488536273158

/-!
# A302834: Expansion of (1/(1 - x))*Product_{k>=1} 1/(1 - x^(k^3)).

The programs for A302834, there is no canonical definition to state claims against.
-/

/-! ## A302834.P5955800809831970006

`∑[A003108(n)]`
-/

namespace A302834.P5955800809831970006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302834.P5955800809831970006

/-! ## A302834.P15155269709302894554

`∑[A078128(n)+a(n-1)]` with `a(0)=1`
-/

namespace A302834.P15155269709302894554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A078128 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302834.P15155269709302894554

/-! ## A302834.P12347519813565985224

`A003108(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A302834.P12347519813565985224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003108 (n % n ^ 2) + a (n - 1)

end

end A302834.P12347519813565985224

/-! ## A302834.P9906106892776438843

`∑[A348522(n)+A010057(n)]`
-/

namespace A302834.P9906106892776438843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348522 n + A010057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302834.P9906106892776438843

/-! ## A302834.P16840331803162840534

`∑[∑[A078128(A028310(n))]+1]`
-/

namespace A302834.P16840331803162840534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302834.P16840331803162840534

/-! ## A302834.P40149745278189060

`∑[A339369(n)+A339368(n)]`
-/

namespace A302834.P40149745278189060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339369 n + A339368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302834.P40149745278189060

/-! ## A302834.P5681856579276801290

`∑[∑[A078128(A233583(n+1))]+1]`
-/

namespace A302834.P5681856579276801290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302834.P5681856579276801290

/-!
# A302835: Expansion of (1/(1 - x))*Product_{k>=1} 1/(1 - x^(k*(k+1)/2)).

The programs for A302835, there is no canonical definition to state claims against.
-/

/-! ## A302835.P5384865977748384202

`∑[A007294(n)]`
-/

namespace A302835.P5384865977748384202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302835.P5384865977748384202

/-! ## A302835.P13110670391134447445

`A007294(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A302835.P13110670391134447445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007294 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A302835.P13110670391134447445

/-! ## A302835.P18437496735328722167

`A185976(n+1)+1-A007294(n+1)`
-/

namespace A302835.P18437496735328722167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185976 (n + 1) + (1 - A007294 (n + 1))

end

end A302835.P18437496735328722167

/-! ## A302835.P3519326745056193296

`a(n-1)+A007294(n)+A000038(n)` with `a(0)=1`
-/

namespace A302835.P3519326745056193296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007294 n + A000038 n)

end

end A302835.P3519326745056193296

/-! ## A302835.P17769848079215789019

`∑[∑[A303906(n)]]`
-/

namespace A302835.P17769848079215789019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302835.P17769848079215789019

/-! ## A302835.P17326061941687358062

`A349675(2*n)`
-/

namespace A302835.P17326061941687358062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349675 (2 * n)

end

end A302835.P17326061941687358062

/-! ## A302835.P14462581818862669175

`∑[A339374(n)+A339373(n)]`
-/

namespace A302835.P14462581818862669175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339374 n + A339373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302835.P14462581818862669175

/-!
# A302836: a(n) = [x^n] Product_{k>=1} 1/(1 - n*x^(k^2)).

The programs for A302836, there is no canonical definition to state claims against.
-/

/-! ## A302836.P10719917285524565986

`abs(C(n, 2)-A183296(n^n)-n)-n`
-/

namespace A302836.P10719917285524565986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) - A183296 (n ^ n) - (n : ℤ)| - (n : ℤ)

end

end A302836.P10719917285524565986

/-! ## A302836.P7193254829587507285

`A055266(A360775(n))`
-/

namespace A302836.P7193254829587507285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055266 (A360775 n).toNat

end

end A302836.P7193254829587507285

/-!
# A302837: a(n) = [x^n] Product_{k>=1} 1/(1 - n*x^prime(k)).

The programs for A302837, there is no canonical definition to state claims against.
-/

/-! ## A302837.P17513171615961996147

`A180388(n)+A007953(A356795(n))`
-/

namespace A302837.P17513171615961996147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180388 n + A007953 (A356795 n).toNat

end

end A302837.P17513171615961996147

/-! ## A302837.P4400893263748752871

`A361938(n)*A361942(A317787(n+1))`
-/

namespace A302837.P4400893263748752871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361938 n * A361942 (A317787 (n + 1)).toNat

end

end A302837.P4400893263748752871

/-! ## A302837.P7635115116354661463

`lcm(A077462(A141209(n)), A175955(n+1))`
-/

namespace A302837.P7635115116354661463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077462 (A141209 n).toNat) (A175955 (n + 1))

end

end A302837.P7635115116354661463

/-!
# A302843: Permutation of nonnegative integers: a(n) = A163355(A006068(n)).

The programs for A302843, there is no canonical definition to state claims against.
-/

/-! ## A302843.P17526317252272553561

`A163355(A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302843.P17526317252272553561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A006068 n).toNat

end

end A302843.P17526317252272553561

/-! ## A302843.P5061322658752089154

`A302845(A003188(n))`
-/

namespace A302843.P5061322658752089154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A003188 n).toNat

end

end A302843.P5061322658752089154

/-! ## A302843.P12672369255471114532

`fo[A302844(n)]`
-/

namespace A302843.P12672369255471114532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302843.P12672369255471114532

/-! ## A302843.P5933225124053938108

`A302845(xor(2*n, and(n, -2))/2)`
-/

namespace A302843.P5933225124053938108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A302843.P5933225124053938108

/-! ## A302843.P4264449834319010353

`A302782(A207901(n))`
-/

namespace A302843.P4264449834319010353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302782 (A207901 n).toNat

end

end A302843.P4264449834319010353

/-!
# A302844: Permutation of nonnegative integers: a(n) = A003188(A163356(n)).

The programs for A302844, there is no canonical definition to state claims against.
-/

/-! ## A302844.P1301399302099352965

`A003188(A163356(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302844.P1301399302099352965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A163356 n).toNat

end

end A302844.P1301399302099352965

/-! ## A302844.P17204345108389751957

`A006068(A302846(n))`
-/

namespace A302844.P17204345108389751957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A302846 n).toNat

end

end A302844.P17204345108389751957

/-! ## A302844.P11867367809772737819

`fo[A302843(n)]`
-/

namespace A302844.P11867367809772737819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302844.P11867367809772737819

/-! ## A302844.P6271690148433838967

`A004514(n)-A317050(A163356(n))`
-/

namespace A302844.P6271690148433838967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 n - A317050 (A163356 n).toNat

end

end A302844.P6271690148433838967

/-! ## A302844.P9463855801971617508

`A292600(2*A302846(n))`
-/

namespace A302844.P9463855801971617508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A302846 n).toNat

end

end A302844.P9463855801971617508

/-! ## A302844.P5950539010543978558

`A268716(A302846(n))/A040000(n)`
-/

namespace A302844.P5950539010543978558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (A302846 n).toNat : ℚ) / (A040000 n : ℚ)

end

end A302844.P5950539010543978558

/-!
# A302845: Permutation of nonnegative integers: a(n) = A163355(A064707(n)).

The programs for A302845, there is no canonical definition to state claims against.
-/

/-! ## A302845.P9678461422776341669

`A163355(A064707(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302845.P9678461422776341669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A064707 n).toNat

end

end A302845.P9678461422776341669

/-! ## A302845.P17010726493641548045

`A302843(A006068(n))`
-/

namespace A302845.P17010726493641548045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A006068 n).toNat

end

end A302845.P17010726493641548045

/-! ## A302845.P13592028239480113985

`fo[A302846(n)]`
-/

namespace A302845.P13592028239480113985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302845.P13592028239480113985

/-! ## A302845.P14508694202241213021

`A163357(A163234(n))`
-/

namespace A302845.P14508694202241213021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163234 n).toNat

end

end A302845.P14508694202241213021

/-! ## A302845.P16112081036169163342

`A163359(A163236(n))`
-/

namespace A302845.P16112081036169163342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163236 n).toNat

end

end A302845.P16112081036169163342

/-! ## A302845.P6722042705472997413

`A302782(A052330(n))`
-/

namespace A302845.P6722042705472997413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302782 (A052330 n).toNat

end

end A302845.P6722042705472997413

/-!
# A302846: Interleave the Gray-coded X and Y-coordinates of 2-dimensional Hilbert's curve in alternate bit-positions: a(n) = A000695(A003188(A059253(n))) + 2*A000695(A003188(A059252(n))).

The programs for A302846, there is no canonical definition to state claims against.
-/

/-! ## A302846.P14608409884332634074

`A064706(A163356(n))`
-/

namespace A302846.P14608409884332634074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A163356 n).toNat

end

end A302846.P14608409884332634074

/-! ## A302846.P12092943708332936549

`A003188(A302844(n))`
-/

namespace A302846.P12092943708332936549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A302844 n).toNat

end

end A302846.P12092943708332936549

/-! ## A302846.P1563032550773881633

`A000695(A003188(A059253(n)))+2*A000695(A003188(A059252(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302846.P1563032550773881633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A003188 (A059253 n).toNat).toNat + 2 * A000695 (A003188 (A059252 n).toNat).toNat

end

end A302846.P1563032550773881633

/-! ## A302846.P9247763041543416856

`fo[A302845(n)]`
-/

namespace A302846.P9247763041543416856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302846.P9247763041543416856

/-! ## A302846.P2866711341860703737

`A302844(A163355(A302844(A057300(A057300(n)))))`
-/

namespace A302846.P2866711341860703737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 (A302844 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A302846.P2866711341860703737

/-! ## A302846.P17523504534664476153

`A163233(A163358(n))`
-/

namespace A302846.P17523504534664476153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 (A163358 n).toNat

end

end A302846.P17523504534664476153

/-! ## A302846.P14257168268290246211

`A163235(A163360(n))`
-/

namespace A302846.P14257168268290246211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163360 n).toNat

end

end A302846.P14257168268290246211

/-!
# A302847: Permutation of natural numbers: a(1) = 1; for n > 1, a(n) = A064989(2+A003961(n-1)).

The programs for A302847, the canonical program `A302847.P8021168690625830306` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302847 has offset 1).

The definition of A302847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302847.P11354206282064226898

`fo[A302848(n+1)-1]+1`
-/

namespace A302847.P11354206282064226898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302848 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A302847.P11354206282064226898

namespace A302847

/-- `fo[A302848(n+1)-1]+1` -/
def P11354206282064226898.Spec : Prop :=
  ∀ n, (P11354206282064226898.a n : ℤ) = A302847 (n + 1)

end A302847

/-! ## A302847.P7010378978941471481

`A302848(A302849(2+n))-1`
-/

namespace A302847.P7010378978941471481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302848 (A302849 (2 + n)).toNat - 1

end

end A302847.P7010378978941471481

namespace A302847

/-- `A302848(A302849(2+n))-1` -/
def P7010378978941471481.Spec : Prop :=
  ∀ n, P7010378978941471481.a n = A302847 (n + 1)

end A302847

/-! ## A302847.P15944629197953979484

`-1+A302848(A302849(n+2))`
-/

namespace A302847.P15944629197953979484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A302848 (A302849 (n + 2)).toNat

end

end A302847.P15944629197953979484

namespace A302847

/-- `-1+A302848(A302849(n+2))` -/
def P15944629197953979484.Spec : Prop :=
  ∀ n, P15944629197953979484.a n = A302847 (n + 1)

end A302847

/-! ## A302847.P8021168690625830306

`A064216(∑{e}[A006530(n+1), A048673(n-#+1)]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A302847

/-- `A064216(∑{e}[A006530(n+1), A048673(n-#+1)]+1)` -/
def P8021168690625830306.Spec : Prop :=
  ∀ n, P8021168690625830306.a n = A302847 (n + 1)

theorem P8021168690625830306.correct : P8021168690625830306.Spec := by
  intro n
  simp only [A302847, Nat.add_sub_cancel]

end A302847

/-! ## A302847.P18098794291283313172

`A064989(A242378(∑[n+1]+1)+2)`
-/

namespace A302847.P18098794291283313172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A242378 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2).toNat

end

end A302847.P18098794291283313172

namespace A302847

/-- `A064989(A242378(∑[n+1]+1)+2)` -/
def P18098794291283313172.Spec : Prop :=
  ∀ n, P18098794291283313172.a n = A302847 (n + 1)

end A302847

/-! ## A302847.P6326326563387180328

`A245606(A245705(A245711(A245706(A245605(n+1)))))`
-/

namespace A302847.P6326326563387180328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245606 (A245705 (A245711 (A245706 (A245605 (n + 1)).toNat).toNat).toNat).toNat

end

end A302847.P6326326563387180328

namespace A302847

/-- `A245606(A245705(A245711(A245706(A245605(n+1)))))` -/
def P6326326563387180328.Spec : Prop :=
  ∀ n, P6326326563387180328.a n = A302847 (n + 1)

end A302847

/-!
# A302848: Permutation of natural numbers: a(1) = 1; for n > 1, a(n) = 1+A064989(A003961(n)-2).

The programs for A302848, the canonical program `A302848.P14544111657006453639` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302848 has offset 1).

The definition of A302848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302848.P14544111657006453639

`fo[A302847(n+1)-1]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A302848

/-- `fo[A302847(n+1)-1]+1` -/
def P14544111657006453639.Spec : Prop :=
  ∀ n, (P14544111657006453639.a n : ℤ) = A302848 (n + 1)

theorem P14544111657006453639.correct : P14544111657006453639.Spec := by
  intro n
  simp only [A302848, Nat.add_sub_cancel]

end A302848

/-! ## A302848.P4411279784276421353

`A302850(A302847(2+n))-1`
-/

namespace A302848.P4411279784276421353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302850 (A302847 (2 + n)).toNat - 1

end

end A302848.P4411279784276421353

namespace A302848

/-- `A302850(A302847(2+n))-1` -/
def P4411279784276421353.Spec : Prop :=
  ∀ n, P4411279784276421353.a n = A302848 (n + 1)

end A302848

/-! ## A302848.P3926234093731739658

`-1+A302850(A302847(n+2))`
-/

namespace A302848.P3926234093731739658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1 + A302850 (A302847 (n + 2)).toNat

end

end A302848.P3926234093731739658

namespace A302848

/-- `-1+A302850(A302847(n+2))` -/
def P3926234093731739658.Spec : Prop :=
  ∀ n, P3926234093731739658.a n = A302848 (n + 1)

end A302848

/-! ## A302848.P4386199227519006785

`A245606(A245705(A245712(A245706(A245605(n+1)))))`
-/

namespace A302848.P4386199227519006785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245606 (A245705 (A245712 (A245706 (A245605 (n + 1)).toNat).toNat).toNat).toNat

end

end A302848.P4386199227519006785

namespace A302848

/-- `A245606(A245705(A245712(A245706(A245605(n+1)))))` -/
def P4386199227519006785.Spec : Prop :=
  ∀ n, P4386199227519006785.a n = A302848 (n + 1)

end A302848

/-!
# A302849: Permutation of natural numbers: a(1) = 1, a(2) = 2; for n > 2, a(n) = A064989(4+A003961(n-2)).

The programs for A302849, there is no canonical definition to state claims against.
-/

/-! ## A302849.P17262685333141616402

`fo[A302850(n+1)-1]+1`
-/

namespace A302849.P17262685333141616402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302850 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A302849.P17262685333141616402

/-! ## A302849.P655422123656010106

`A064216(∑{e}[A116453(n+1), A048673(#)])`
-/

namespace A302849.P655422123656010106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048673 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A302849.P655422123656010106

/-!
# A302850: Permutation of natural numbers: a(1) = 1; a(2) = 2; for n > 2, a(n) = 2+A064989(A003961(n)-4).

The programs for A302850, there is no canonical definition to state claims against.
-/

/-! ## A302850.P17552773781358825813

`fo[A302849(n+1)-1]+1`
-/

namespace A302850.P17552773781358825813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302849 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A302850.P17552773781358825813

/-!
# A302851: Permutation of nonnegative integers: a(0) = 0; for n >= 1, a(n) = A225901(1+A225901(n-1)).

The programs for A302851, there is no canonical definition to state claims against.
-/

/-! ## A302851.P17420606490983769951

`fo[A302852(n)]`
-/

namespace A302851.P17420606490983769951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302851.P17420606490983769951

/-! ## A302851.P4175247139718102626

`A225901(A302852(A225901(n)))`
-/

namespace A302851.P4175247139718102626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A302852 (A225901 n).toNat).toNat

end

end A302851.P4175247139718102626

/-!
# A302852: Permutation of nonnegative integers: a(0) = 0; for n >= 1, a(n) = 1+A225901(A225901(n)-1).

The programs for A302852, there is no canonical definition to state claims against.
-/

/-! ## A302852.P1333228465718676476

`fo[A302851(n)]`
-/

namespace A302852.P1333228465718676476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302852.P1333228465718676476

/-! ## A302852.P5221923457715111731

`A225901(A302851(A225901(n)))`
-/

namespace A302852.P5221923457715111731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A302851 (A225901 n).toNat).toNat

end

end A302852.P5221923457715111731

/-!
# A302853: Suspected permutation of nonnegative integers: a(n) = A052331(A282291(1+n)).

The programs for A302853, there is no canonical definition to state claims against.
-/

/-! ## A302853.P2403596103631713628

`A052331(A282291(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302853.P2403596103631713628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (A282291 (1 + n)).toNat

end

end A302853.P2403596103631713628

/-! ## A302853.P5298300523299847555

`fo[A302854(n)]`
-/

namespace A302853.P5298300523299847555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302853.P5298300523299847555

/-! ## A302853.P6454075327591698814

`∑{p}[A160102(A282291(n+1)), A048675(#)]`
-/

namespace A302853.P6454075327591698814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A282291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A302853.P6454075327591698814

/-! ## A302853.P13969048127554059318

`∑{p}[A160102(A282291(n+1)), A277333(#)]`
-/

namespace A302853.P13969048127554059318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A282291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A302853.P13969048127554059318

/-! ## A302853.P806828009078391913

`A288577(∑[A288596(n+1)]*A288595(n))`
-/

namespace A302853.P806828009078391913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288577 ((∑ j ∈ Finset.range (n + 1), f1 j) * A288595 n).toNat

end

end A302853.P806828009078391913

/-!
# A302854: Inverse of A302853: if A302853(k) = n, a(n) = k, or -1 if n does not occur in A302853.

The programs for A302854, there is no canonical definition to state claims against.
-/

/-! ## A302854.P17969778073966501089

`A304090(A052330(n))-1`
-/

namespace A302854.P17969778073966501089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304090 (A052330 n).toNat - 1

end

end A302854.P17969778073966501089

/-! ## A302854.P452439226022224117

`fo[A302853(n)]`
-/

namespace A302854.P452439226022224117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A302854.P452439226022224117

/-! ## A302854.P7030336471817107646

`A304090(A059900(n))-1`
-/

namespace A302854.P7030336471817107646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304090 (A059900 n).toNat - 1

end

end A302854.P7030336471817107646

/-! ## A302854.P4761160996810157050

`A304090(A121663(n))-1`
-/

namespace A302854.P4761160996810157050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304090 (A121663 n).toNat - 1

end

end A302854.P4761160996810157050

/-! ## A302854.P7701518420567112330

`A304090(A344535(n))-1`
-/

namespace A302854.P7701518420567112330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304090 (A344535 n).toNat - 1

end

end A302854.P7701518420567112330

/-!
# A302855: Expansion of ((1 + 2 * Sum_{k>=1} q^(k^2))^16 - 1) / 32.

The programs for A302855, there is no canonical definition to state claims against.
-/

/-! ## A302855.P14573390016414925909

`A000152(n+1)/32`
-/

namespace A302855.P14573390016414925909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000152 (n + 1) : ℚ) / 32

end

end A302855.P14573390016414925909

/-! ## A302855.P1024508532450264582

`abs(A319307(n+1)/32)`
-/

namespace A302855.P1024508532450264582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A319307 (n + 1) : ℚ) / 32|

end

end A302855.P1024508532450264582

/-! ## A302855.P16799557593408948698

`a(n-1)*ratio[A000152(n)]` with `a(0)=1`
-/

namespace A302855.P16799557593408948698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A302855.P16799557593408948698

/-! ## A302855.P10786257953571532454

`abs(A002614(n+1)+A002288(n+1))`
-/

namespace A302855.P10786257953571532454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002614 (n + 1) + A002288 (n + 1)|

end

end A302855.P10786257953571532454

/-! ## A302855.P4632333840838054989

`A216711(n+1)+abs(A002614(n+1))`
-/

namespace A302855.P4632333840838054989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216711 (n + 1) + |A002614 (n + 1)|

end

end A302855.P4632333840838054989

/-!
# A302856: Number of ways of writing n as a sum of 32 squares.

The programs for A302856, there is no canonical definition to state claims against.
-/

/-! ## A302856.P6165655722962185434

`∪[A022085(2*n+1), A022063(n)]`
-/

namespace A302856.P6165655722962185434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022085 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022063 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302856.P6165655722962185434

/-! ## A302856.P14567392062678776070

`∑{#}[n, A000152(#)*A000152(n-#)]`
-/

namespace A302856.P14567392062678776070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000152 k * A000152 (n - k)

end

end A302856.P14567392062678776070

/-! ## A302856.P17810078240318098090

`record[A286815(A132336(1+n))]`
-/

namespace A302856.P17810078240318098090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A132336 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302856.P17810078240318098090

/-! ## A302856.P11655794824579408742

`A022085(n)`
-/

namespace A302856.P11655794824579408742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022085 n

end

end A302856.P11655794824579408742

/-!
# A302857: Expansion of ((1 + 2 * Sum_{k>=1} q^(k^2))^32 - 1) / 64.

The programs for A302857, there is no canonical definition to state claims against.
-/

/-! ## A302857.P13756659006911169209

`A302856(n+1)/64`
-/

namespace A302857.P13756659006911169209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302856 (n + 1) : ℚ) / 64

end

end A302857.P13756659006911169209

/-! ## A302857.P1858287050039520011

`a(n-1)*ratio[A302856(n)]` with `a(0)=1`
-/

namespace A302857.P1858287050039520011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302856 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A302857.P1858287050039520011

/-! ## A302857.P6411334184361969765

`record[ratio[A302856(A158416(n))]]`
-/

namespace A302857.P6411334184361969765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302856 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302857.P6411334184361969765

/-! ## A302857.P9512899009257344234

`record[ratio[A302856(A193592(n))]]`
-/

namespace A302857.P9512899009257344234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302856 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302857.P9512899009257344234

/-! ## A302857.P403999090475783215

`record[ratio[A302856(A303273(n))]]`
-/

namespace A302857.P403999090475783215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302856 (A303273 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302857.P403999090475783215

/-!
# A302859: Primes of the form (k+1)!*k/2 + 1.

The programs for A302859, there is no canonical definition to state claims against.
-/

/-! ## A302859.P14578712172112541372

`A300559(A301373(n+1))`
-/

namespace A302859.P14578712172112541372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300559 (A301373 (n + 1)).toNat

end

end A302859.P14578712172112541372

/-! ## A302859.P9511210919759525741

`A180119(A301373(1+n))+1`
-/

namespace A302859.P9511210919759525741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (A301373 (1 + n)).toNat + 1

end

end A302859.P9511210919759525741

/-! ## A302859.P12599748121251388604

`A001286(A301373(n+1)+1)+1`
-/

namespace A302859.P12599748121251388604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (A301373 (n + 1) + 1).toNat + 1

end

end A302859.P12599748121251388604

/-!
# A302860: a(n) = [x^n] theta_3(x)^n/(1 - x), where theta_3() is the Jacobi theta function.

The programs for A302860, there is no canonical definition to state claims against.
-/

/-! ## A302860.P2699294597559286022

`∑[A048865(A164581(n))+A001316(n)]`
-/

namespace A302860.P2699294597559286022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A164581 n).toNat + A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302860.P2699294597559286022

/-! ## A302860.P11217902859170974688

`A122510(2*n²+1)`
-/

namespace A302860.P11217902859170974688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122510 (2 * n ^ 2 + 1)

end

end A302860.P11217902859170974688

/-!
# A302861: a(n) = [x^(n^2)] theta_3(x)^n/(1 - x), where theta_3() is the Jacobi theta function.

The programs for A302861, there is no canonical definition to state claims against.
-/

/-! ## A302861.P11973456215192206153

`A302997(∑[4*n])`
-/

namespace A302861.P11973456215192206153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302861.P11973456215192206153

/-! ## A302861.P17036997422734229361

`record[gcd(A008482(n), A302997(n))]`
-/

namespace A302861.P17036997422734229361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A302997 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302861.P17036997422734229361

/-!
# A302862: a(n) = [x^n] (1 + theta_3(x))^n/(2^n*(1 - x)), where theta_3() is the Jacobi theta function.

The programs for A302862, there is no canonical definition to state claims against.
-/

/-! ## A302862.P9620247782958581100

`A183120(n)+A115583(A000712(n))`
-/

namespace A302862.P9620247782958581100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183120 n + A115583 (A000712 n).toNat

end

end A302862.P9620247782958581100

/-! ## A302862.P1237791663581452768

`A326669(A027193(n)+A001006(n))`
-/

namespace A302862.P1237791663581452768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (A027193 n + A001006 n).toNat

end

end A302862.P1237791663581452768

/-!
# A302863: a(n) = [x^(n^2)] (1 + theta_3(x))^n/(2^n*(1 - x)), where theta_3() is the Jacobi theta function.

The programs for A302863, there is no canonical definition to state claims against.
-/

/-! ## A302863.P17876249800158687233

`A302998(∑[4*n])`
-/

namespace A302863.P17876249800158687233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302863.P17876249800158687233

/-! ## A302863.P9745154430544206895

`record[A302998(A028242(n²))]`
-/

namespace A302863.P9745154430544206895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A028242 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302863.P9745154430544206895

/-! ## A302863.P12248068716008053067

`record[A302998(∑[A266724(n)])]`
-/

namespace A302863.P12248068716008053067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302863.P12248068716008053067

/-! ## A302863.P9996718415932968208

`record[A003982(n)*A302998(n)]`
-/

namespace A302863.P9996718415932968208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302863.P9996718415932968208

/-! ## A302863.P8206921305861573381

`record[A302998(A057979((n+1)²))]`
-/

namespace A302863.P8206921305861573381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302998 (A057979 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302863.P8206921305861573381

/-!
# A302865: a(n) = (4*n+2)*a(n-1) + (-1)^(n+1)*4*((n-1)!), with a(0) = 8, n > 0.

The programs for A302865, the canonical program `A302865.P2771314584925712172` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302865 has offset 0).

The definition of A302865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)*a(n-1)+(-1)^(n+1)*4*(n-1)!` (program `A302865.P2771314584925712172`, by `A302865.P2771314584925712172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302865.P2771314584925712172

`(4*n+2)*a(n-1)+(-1)^(n+1)*4*(n-1)!` with `a(0)=8`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A302865

/-- `(4*n+2)*a(n-1)+(-1)^(n+1)*4*(n-1)!` -/
def P2771314584925712172.Spec : Prop :=
  ∀ n, P2771314584925712172.a n = A302865 n

theorem P2771314584925712172.correct : P2771314584925712172.Spec := by
  intro n
  simp only [A302865]

end A302865

/-!
# A302868: Partial sums of A302841.

The programs for A302868, there is no canonical definition to state claims against.
-/

/-! ## A302868.P11295991919278601124

`∑[A302841(n)]`
-/

namespace A302868.P11295991919278601124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302868.P11295991919278601124

/-! ## A302868.P9222006977885861250

`A302841(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A302868.P9222006977885861250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302841 n + a (A023443 n).toNat

end

end A302868.P9222006977885861250

/-! ## A302868.P14871205210480278500

`A302841(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A302868.P14871205210480278500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302841 n + a (A028310 n - 1).toNat

end

end A302868.P14871205210480278500

/-! ## A302868.P5733031672962830916

`A302841(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A302868.P5733031672962830916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302841 n + a (A000027 (n + 1) - 2).toNat

end

end A302868.P5733031672962830916

/-! ## A302868.P10111116594733507428

`a(n-1)+A302841(n)%A023545(n+1)` with `a(0)=1`
-/

namespace A302868.P10111116594733507428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A302841 n) (A023545 (n + 1))

end

end A302868.P10111116594733507428

/-!
# A302869: Partial sums of A302842.

The programs for A302869, there is no canonical definition to state claims against.
-/

/-! ## A302869.P6150422870201072987

`∑[A302842(n)]`
-/

namespace A302869.P6150422870201072987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302869.P6150422870201072987

/-! ## A302869.P15587264369378715811

`A302842(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A302869.P15587264369378715811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302842 n + a (A023443 n).toNat

end

end A302869.P15587264369378715811

/-! ## A302869.P18177017789846053745

`A302842(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A302869.P18177017789846053745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302842 n + a (A028310 n - 1).toNat

end

end A302869.P18177017789846053745

/-! ## A302869.P7893504449795183138

`A302842(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A302869.P7893504449795183138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302842 n + a ((n : ℤ) - A057427 n).toNat

end

end A302869.P7893504449795183138

/-! ## A302869.P16676671365451548661

`A302842(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A302869.P16676671365451548661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302842 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A302869.P16676671365451548661

/-!
# A302871: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302871, there is no canonical definition to state claims against.
-/

/-! ## A302871.P7728443464660528278

`A302877(∑[4*n]+1)`
-/

namespace A302871.P7728443464660528278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302871.P7728443464660528278

/-! ## A302871.P4511303338521964406

`record[A302877(Δ[A235355(n)])]`
-/

namespace A302871.P4511303338521964406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302871.P4511303338521964406

/-! ## A302871.P16232673313622062960

`record[A302877(A330613(n+1))]`
-/

namespace A302871.P16232673313622062960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302871.P16232673313622062960

/-! ## A302871.P2464188865364463879

`record[A003982(n)*A302877(n+1)]`
-/

namespace A302871.P2464188865364463879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302871.P2464188865364463879

/-!
# A302872: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302872, there is no canonical definition to state claims against.
-/

/-! ## A302872.P225920058997475946

`A302877(∑[n+3]+1)`
-/

namespace A302872.P225920058997475946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302872.P225920058997475946

/-! ## A302872.P923485636159191769

`record[A302877(A198464(n+1))]`
-/

namespace A302872.P923485636159191769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302872.P923485636159191769

/-!
# A302873: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302873, there is no canonical definition to state claims against.
-/

/-! ## A302873.P5644420487786726292

`A302877(∑[n+4]+3)`
-/

namespace A302873.P5644420487786726292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A302873.P5644420487786726292

/-!
# A302874: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302874, there is no canonical definition to state claims against.
-/

/-! ## A302874.P9217224498155298594

`A302877(Δ[A264443(n)])`
-/

namespace A302874.P9217224498155298594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (f1 (n + 1) - f1 n).toNat

end

end A302874.P9217224498155298594

/-!
# A302875: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302875, there is no canonical definition to state claims against.
-/

/-! ## A302875.P8586467598147224427

`A302877(A052905(n+3))`
-/

namespace A302875.P8586467598147224427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A052905 (n + 3)).toNat

end

end A302875.P8586467598147224427

/-!
# A302876: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302876, there is no canonical definition to state claims against.
-/

/-! ## A302876.P13293444988601165294

`A302877(A055999(n+4))`
-/

namespace A302876.P13293444988601165294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A055999 (n + 4)).toNat

end

end A302876.P13293444988601165294

/-!
# A302877: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302877, there is no canonical definition to state claims against.
-/

/-! ## A302877.P11344299553856626833

`A303525(n+1)-A186034(A022167(n))`
-/

namespace A302877.P11344299553856626833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (n + 1) - A186034 (A022167 n).toNat

end

end A302877.P11344299553856626833

/-! ## A302877.P16699152921362000577

`A303525(n+1)-A037912(A174527(n))`
-/

namespace A302877.P16699152921362000577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (n + 1) - A037912 (A174527 n).toNat

end

end A302877.P16699152921362000577

/-! ## A302877.P12548734441610668614

`A303525(n+1)-A124763(A099594(n))`
-/

namespace A302877.P12548734441610668614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (n + 1) - A124763 (A099594 n).toNat

end

end A302877.P12548734441610668614

/-! ## A302877.P7899102515753075535

`A303525(n+1)-A037800(A296548(n))`
-/

namespace A302877.P7899102515753075535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (n + 1) - A037800 (A296548 n).toNat

end

end A302877.P7899102515753075535

/-! ## A302877.P836716134143894821

`A303525(n+1)-A173920(A173917(n))`
-/

namespace A302877.P836716134143894821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (n + 1) - A173920 (A173917 n).toNat

end

end A302877.P836716134143894821

/-!
# A302878: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302878, there is no canonical definition to state claims against.
-/

/-! ## A302878.P1705950637424566890

`A302877(∑[n+2]+4)`
-/

namespace A302878.P1705950637424566890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302878.P1705950637424566890

/-!
# A302879: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302879, there is no canonical definition to state claims against.
-/

/-! ## A302879.P9709034959425099774

`A302877(∑[n+3]+7)`
-/

namespace A302879.P9709034959425099774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302879.P9709034959425099774

/-!
# A302880: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302880, there is no canonical definition to state claims against.
-/

/-! ## A302880.P5049035461503682800

`A302877(C(n+5, 2)+5)`
-/

namespace A302880.P5049035461503682800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (Nat.choose (n + 5) 2 + 5)

end

end A302880.P5049035461503682800

/-!
# A302881: Number of 6 X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302881, there is no canonical definition to state claims against.
-/

/-! ## A302881.P6099102011546009359

`A302877(A166136(n+4))`
-/

namespace A302881.P6099102011546009359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A166136 (n + 4)).toNat

end

end A302881.P6099102011546009359

/-!
# A302882: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302882, there is no canonical definition to state claims against.
-/

/-! ## A302882.P5844295781525782765

`A302877(A167487(n+5))`
-/

namespace A302882.P5844295781525782765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167487 (n + 5)).toNat

end

end A302882.P5844295781525782765

/-!
# A302883: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302883, there is no canonical definition to state claims against.
-/

/-! ## A302883.P5409784443628584748

`A302889(∑[4*n]+1)`
-/

namespace A302883.P5409784443628584748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302883.P5409784443628584748

/-! ## A302883.P18250257032845725633

`record[gcd(A049581(n), A302889(n+1))]`
-/

namespace A302883.P18250257032845725633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A302889 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302883.P18250257032845725633

/-! ## A302883.P9644065557987082933

`record[A077606(n+1)*A302889(n+1)]`
-/

namespace A302883.P9644065557987082933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A302889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302883.P9644065557987082933

/-!
# A302884: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302884, there is no canonical definition to state claims against.
-/

/-! ## A302884.P6085616190875938104

`A302889(∑[n+3]+1)`
-/

namespace A302884.P6085616190875938104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302884.P6085616190875938104

/-! ## A302884.P7519885480792173103

`record[A302889(A198464(n+1))]`
-/

namespace A302884.P7519885480792173103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302884.P7519885480792173103

/-! ## A302884.P5984214520985670787

`record[A302889(A128373(n+2))]`
-/

namespace A302884.P5984214520985670787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302884.P5984214520985670787

/-! ## A302884.P13549979870788859404

`record[C(A302889(n+1), A322222(n+2))]`
-/

namespace A302884.P13549979870788859404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A302889 (n + 1)).toNat (A322222 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302884.P13549979870788859404

/-!
# A302885: Number of n X 4 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302885, there is no canonical definition to state claims against.
-/

/-! ## A302885.P8509769270729205050

`A302889(A141214(n+1))`
-/

namespace A302885.P8509769270729205050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A141214 (n + 1)).toNat

end

end A302885.P8509769270729205050

/-!
# A302886: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302886, there is no canonical definition to state claims against.
-/

/-! ## A302886.P6164924518056887737

`A302889(A046691(n+3))`
-/

namespace A302886.P6164924518056887737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A046691 (n + 3)).toNat

end

end A302886.P6164924518056887737

/-!
# A302887: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302887, there is no canonical definition to state claims against.
-/

/-! ## A302887.P7127044060066866222

`A302889(A052905(n+3))`
-/

namespace A302887.P7127044060066866222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A052905 (n + 3)).toNat

end

end A302887.P7127044060066866222

/-!
# A302888: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302888, there is no canonical definition to state claims against.
-/

/-! ## A302888.P3629606102544072427

`A302889(A055999(n+4))`
-/

namespace A302888.P3629606102544072427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A055999 (n + 4)).toNat

end

end A302888.P3629606102544072427

/-!
# A302889: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302889, there is no canonical definition to state claims against.
-/

/-! ## A302889.P5173903181376150170

`A303624(n+1)+A016389(A022166(n))`
-/

namespace A302889.P5173903181376150170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (n + 1) + A016389 (A022166 n).toNat

end

end A302889.P5173903181376150170

/-! ## A302889.P8774793289461044902

`A303624(n+1)+A016389(A027336(n))`
-/

namespace A302889.P8774793289461044902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (n + 1) + A016389 (A027336 n).toNat

end

end A302889.P8774793289461044902

/-! ## A302889.P8970591275313357272

`A303084(n+1)+A002262(A174410(n))`
-/

namespace A302889.P8970591275313357272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303084 (n + 1) + A002262 (A174410 n).toNat

end

end A302889.P8970591275313357272

/-! ## A302889.P10727516955503161848

`A303624(n+1)+A016389(A176561(n))`
-/

namespace A302889.P10727516955503161848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (n + 1) + A016389 (A176561 n).toNat

end

end A302889.P10727516955503161848

/-! ## A302889.P9278551911192102995

`A303624(n+1)-A006927(A028326(n))`
-/

namespace A302889.P9278551911192102995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303624 (n + 1) - A006927 (A028326 n).toNat

end

end A302889.P9278551911192102995

/-!
# A302890: Number of 3Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302890, there is no canonical definition to state claims against.
-/

/-! ## A302890.P6488418104818186782

`A302889(∑[n+2]+4)`
-/

namespace A302890.P6488418104818186782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302890.P6488418104818186782

/-!
# A302891: Number of 4Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302891, there is no canonical definition to state claims against.
-/

/-! ## A302891.P2932536686000001950

`A302889(A141214(n)+7)`
-/

namespace A302891.P2932536686000001950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A141214 n + 7).toNat

end

end A302891.P2932536686000001950

/-!
# A302892: Number of 5 X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302892, there is no canonical definition to state claims against.
-/

/-! ## A302892.P10144781228441166824

`A302889(A167499(n+3))`
-/

namespace A302892.P10144781228441166824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A167499 (n + 3)).toNat

end

end A302892.P10144781228441166824

/-!
# A302893: Number of 6Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302893, there is no canonical definition to state claims against.
-/

/-! ## A302893.P5495862865566010953

`A302889(A166136(n+4))`
-/

namespace A302893.P5495862865566010953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A166136 (n + 4)).toNat

end

end A302893.P5495862865566010953

/-!
# A302894: Number of 7Xn 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302894, there is no canonical definition to state claims against.
-/

/-! ## A302894.P9472375312708710368

`A302889(A167487(n+5))`
-/

namespace A302894.P9472375312708710368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A167487 (n + 5)).toNat

end

end A302894.P9472375312708710368

/-!
# A302895: Number of permutations of [n] having exactly two alternating descents.

The programs for A302895, there is no canonical definition to state claims against.
-/

/-! ## A302895.P4559640743879728763

`A145876(∑[n+2]+4)`
-/

namespace A302895.P4559640743879728763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302895.P4559640743879728763

/-!
# A302896: Number of permutations of [n] having exactly three alternating descents.

The programs for A302896, there is no canonical definition to state claims against.
-/

/-! ## A302896.P12436256200083186592

`A145876(∑[n+3]+7)`
-/

namespace A302896.P12436256200083186592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302896.P12436256200083186592

/-!
# A302897: Number of permutations of [n] having exactly four alternating descents.

The programs for A302897, there is no canonical definition to state claims against.
-/

/-! ## A302897.P17849251478325684523

`A145876(A374005(1+n))`
-/

namespace A302897.P17849251478325684523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374005 (1 + n)).toNat

end

end A302897.P17849251478325684523

/-!
# A302898: Number of permutations of [n] having exactly five alternating descents.

The programs for A302898, there is no canonical definition to state claims against.
-/

/-! ## A302898.P11634666031471983618

`A145876(A374007(1+n))`
-/

namespace A302898.P11634666031471983618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374007 (1 + n)).toNat

end

end A302898.P11634666031471983618

/-!
# A302899: Number of permutations of [n] having exactly six alternating descents.

The programs for A302899, there is no canonical definition to state claims against.
-/

/-! ## A302899.P3493132583619539044

`A145876(A374008(n+1))`
-/

namespace A302899.P3493132583619539044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374008 (n + 1)).toNat

end

end A302899.P3493132583619539044

