import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

/-! ## A302802.P1991950815856106263

`A302808(A001844(n))+char[33]`
-/

namespace A302802.P1991950815856106263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302802.P1991950815856106263

/-! ## A302802.P8428614017939382749

`A139553(n)*A302808(A001844(n))`
-/

namespace A302802.P8428614017939382749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n * A302808 (A001844 n).toNat

end

end A302802.P8428614017939382749

/-! ## A302802.P8461782281353053580

`A302808(A001844(n))*A307651(n)`
-/

namespace A302802.P8461782281353053580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A001844 n).toNat * A307651 n

end

end A302802.P8461782281353053580

/-! ## A302802.P12962739488483827221

`gcd(A185284(n), A302808(A001844(n)))`
-/

namespace A302802.P12962739488483827221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A302808 (A001844 n).toNat)

end

end A302802.P12962739488483827221

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

/-! ## A302803.P4701025732939997714

`A302808(A034856(n+2))%A302811(n+1)`
-/

namespace A302803.P4701025732939997714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302808 (A034856 (n + 2)).toNat) (A302811 (n + 1))

end

end A302803.P4701025732939997714

/-! ## A302803.P8853745658061178684

`A302808(A034856(n+2))-A003982(2*n+1)`
-/

namespace A302803.P8853745658061178684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A034856 (n + 2)).toNat - A003982 (2 * n + 1)

end

end A302803.P8853745658061178684

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

/-! ## A302804.P3018751023598920240

`A302808(A027379(n+2))`
-/

namespace A302804.P3018751023598920240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A027379 (n + 2)).toNat

end

end A302804.P3018751023598920240

/-! ## A302804.P8788267256397580647

`A302808(A055998(n+2))`
-/

namespace A302804.P8788267256397580647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A055998 (n + 2)).toNat

end

end A302804.P8788267256397580647

/-! ## A302804.P16428064646494788068

`A302808(eq[2, A054123(n)])`
-/

namespace A302804.P16428064646494788068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302804.P16428064646494788068

/-! ## A302804.P10330069904344182661

`A302808(eq[4, A166065(n)])`
-/

namespace A302804.P10330069904344182661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302804.P10330069904344182661

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

/-! ## A302805.P3520267122394460346

`A302808(eq[4, A193592(n)])`
-/

namespace A302805.P3520267122394460346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302805.P3520267122394460346

/-! ## A302805.P17023847921757811444

`A302808(eq[8, A166065(n)])`
-/

namespace A302805.P17023847921757811444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302805.P17023847921757811444

/-! ## A302805.P10894032904751563604

`A302808(Δ[A023545(n+1)])`
-/

namespace A302805.P10894032904751563604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (f1 (n + 1) - f1 n).toNat

end

end A302805.P10894032904751563604

/-! ## A302805.P15476037719748613488

`A302808(A052905(n+2)+1)`
-/

namespace A302805.P15476037719748613488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A052905 (n + 2) + 1).toNat

end

end A302805.P15476037719748613488

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

/-! ## A302806.P9936312172145100676

`A302808(A056119(n)+16)`
-/

namespace A302806.P9936312172145100676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A056119 n + 16).toNat

end

end A302806.P9936312172145100676

/-! ## A302806.P11652966513225150541

`A302808(eq[3, A219347(n)])`
-/

namespace A302806.P11652966513225150541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302806.P11652966513225150541

/-! ## A302806.P9713210833523319094

`A302808(eq[5, A193592(n)])`
-/

namespace A302806.P9713210833523319094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302806.P9713210833523319094

/-! ## A302806.P7768293437831103147

`A302808(A055999(n+3)+1)`
-/

namespace A302806.P7768293437831103147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A055999 (n + 3) + 1).toNat

end

end A302806.P7768293437831103147

/-!
# A302807: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302807, there is no canonical definition to state claims against.
-/

/-! ## A302807.P10964816712217053535

`A302808(eq[4, A219347(n)])`
-/

namespace A302807.P10964816712217053535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302807.P10964816712217053535

/-! ## A302807.P11566230563150075399

`A302808(eq[6, A193592(n)])`
-/

namespace A302807.P11566230563150075399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302807.P11566230563150075399

/-! ## A302807.P428768281056041428

`A302808(A046691(n+5)-2)`
-/

namespace A302807.P428768281056041428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A046691 (n + 5) - 2).toNat

end

end A302807.P428768281056041428

/-! ## A302807.P16376096189524034841

`A302808(A056115(n+2)+9)`
-/

namespace A302807.P16376096189524034841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A056115 (n + 2) + 9).toNat

end

end A302807.P16376096189524034841

/-! ## A302807.P17797482123997355045

`A302808(eq[7, A200370(n+1)])`
-/

namespace A302807.P17797482123997355045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302807.P17797482123997355045

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

/-! ## A302809.P5720808049516960840

`lcm(1-and(2, n), A302808(A167614(n+1)))`
-/

namespace A302809.P5720808049516960840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A302808 (A167614 (n + 1)).toNat)

end

end A302809.P5720808049516960840

/-! ## A302809.P1363188849421818369

`A302808(A167614(n+1))+A025443(n)`
-/

namespace A302809.P1363188849421818369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167614 (n + 1)).toNat + A025443 n

end

end A302809.P1363188849421818369

/-! ## A302809.P11467282559109233002

`A302808(A167614(n+1))+A025444(n)`
-/

namespace A302809.P11467282559109233002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167614 (n + 1)).toNat + A025444 n

end

end A302809.P11467282559109233002

/-! ## A302809.P665179428949841927

`A302808(A167614(n+1))+A185238(n)`
-/

namespace A302809.P665179428949841927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167614 (n + 1)).toNat + A185238 n

end

end A302809.P665179428949841927

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

/-! ## A302810.P8639738963437251022

`A302808(A052905(n)+9)`
-/

namespace A302810.P8639738963437251022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A052905 n + 9).toNat

end

end A302810.P8639738963437251022

/-! ## A302810.P7546184706847115761

`A302808(A055999(n)+10)`
-/

namespace A302810.P7546184706847115761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A055999 n + 10).toNat

end

end A302810.P7546184706847115761

/-! ## A302810.P14889194833013027907

`A302808(A167614(n+2)+1)`
-/

namespace A302810.P14889194833013027907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167614 (n + 2) + 1).toNat

end

end A302810.P14889194833013027907

/-! ## A302810.P7221169244211973347

`A302808(A166136(n+2)-2)`
-/

namespace A302810.P7221169244211973347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A166136 (n + 2) - 2).toNat

end

end A302810.P7221169244211973347

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

/-! ## A302811.P15136793228756003724

`A302808(A167614(n+3)+2)`
-/

namespace A302811.P15136793228756003724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167614 (n + 3) + 2).toNat

end

end A302811.P15136793228756003724

/-! ## A302811.P6163226148127354553

`A302808(A141214(n+1)+8)`
-/

namespace A302811.P6163226148127354553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A141214 (n + 1) + 8).toNat

end

end A302811.P6163226148127354553

/-! ## A302811.P10370159468620888444

`A302808(A052905(n+1)+10)`
-/

namespace A302811.P10370159468620888444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A052905 (n + 1) + 10).toNat

end

end A302811.P10370159468620888444

/-! ## A302811.P6634005515998903979

`A302808(eq[6, A131818(n+1)])`
-/

namespace A302811.P6634005515998903979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302811.P6634005515998903979

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

/-! ## A302812.P13912460316335799462

`A302808(A056115(n)+21)`
-/

namespace A302812.P13912460316335799462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A056115 n + 21).toNat

end

end A302812.P13912460316335799462

/-! ## A302812.P7799701058493463665

`A302808(A167614(n+4)+3)`
-/

namespace A302812.P7799701058493463665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A167614 (n + 4) + 3).toNat

end

end A302812.P7799701058493463665

/-! ## A302812.P8622664793196579497

`A302808(A000124(n+5)+5)`
-/

namespace A302812.P8622664793196579497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A000124 (n + 5) + 5).toNat

end

end A302812.P8622664793196579497

/-! ## A302812.P16118197093925428616

`A302808(A055998(n+3)+9)`
-/

namespace A302812.P16118197093925428616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A055998 (n + 3) + 9).toNat

end

end A302812.P16118197093925428616

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

/-! ## A302813.P15517201426939524998

`A302808(A056119(n)+28)`
-/

namespace A302813.P15517201426939524998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A056119 n + 28).toNat

end

end A302813.P15517201426939524998

/-! ## A302813.P15433940126582187008

`A302808(eq[11, A066657(n)])`
-/

namespace A302813.P15433940126582187008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302813.P15433940126582187008

/-! ## A302813.P1023175869537528334

`A302808(A141214(n+3)+10)`
-/

namespace A302813.P1023175869537528334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (A141214 (n + 3) + 10).toNat

end

end A302813.P1023175869537528334

/-! ## A302813.P12806371571778097552

`A302808(eq[8, A131818(n+1)])`
-/

namespace A302813.P12806371571778097552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302813.P12806371571778097552

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

/-! ## A302815.P10808264410807351654

`A302820(A034856(n+2))%A092759(n+1)`
-/

namespace A302815.P10808264410807351654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302820 (A034856 (n + 2)).toNat) (A092759 (n + 1))

end

end A302815.P10808264410807351654

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

/-! ## A302816.P5763190682145603366

`A302820(A055998(n+2))`
-/

namespace A302816.P5763190682145603366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A055998 (n + 2)).toNat

end

end A302816.P5763190682145603366

/-! ## A302816.P17767977083132513575

`A302820(A056000(n)+7)`
-/

namespace A302816.P17767977083132513575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A056000 n + 7).toNat

end

end A302816.P17767977083132513575

/-! ## A302816.P1013439602115127143

`A302820(eq[3, A193592(n)])`
-/

namespace A302816.P1013439602115127143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302816.P1013439602115127143

/-! ## A302816.P15715279268430609779

`A302820(A046691(n+2)+1)`
-/

namespace A302816.P15715279268430609779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A046691 (n + 2) + 1).toNat

end

end A302816.P15715279268430609779

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

/-! ## A302817.P14071831820734890779

`A302820(A046691(n+3))`
-/

namespace A302817.P14071831820734890779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A046691 (n + 3)).toNat

end

end A302817.P14071831820734890779

/-! ## A302817.P9891093830541512800

`A302820(eq[4, A193592(n)])`
-/

namespace A302817.P9891093830541512800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302817.P9891093830541512800

/-! ## A302817.P14948454738439345971

`A302820(eq[5, A239144(n)])`
-/

namespace A302817.P14948454738439345971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302817.P14948454738439345971

/-! ## A302817.P12245512411877701564

`A302820(Δ[A023545(n+1)])`
-/

namespace A302817.P12245512411877701564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (f1 (n + 1) - f1 n).toNat

end

end A302817.P12245512411877701564

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

/-! ## A302818.P9536329324763267992

`A302820(A056119(n)+16)`
-/

namespace A302818.P9536329324763267992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A056119 n + 16).toNat

end

end A302818.P9536329324763267992

/-! ## A302818.P11457217950385892561

`A302820(eq[3, A219347(n)])`
-/

namespace A302818.P11457217950385892561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302818.P11457217950385892561

/-! ## A302818.P15504620981070004108

`A302820(eq[5, A193592(n)])`
-/

namespace A302818.P15504620981070004108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302818.P15504620981070004108

/-! ## A302818.P4321334774404261330

`A302820(eq[6, A200370(n+1)])`
-/

namespace A302818.P4321334774404261330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302818.P4321334774404261330

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

/-! ## A302819.P6795071676735667250

`A302820(eq[4, A219347(n)])`
-/

namespace A302819.P6795071676735667250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302819.P6795071676735667250

/-! ## A302819.P8312898021016055784

`A302820(eq[6, A193592(n)])`
-/

namespace A302819.P8312898021016055784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302819.P8312898021016055784

/-! ## A302819.P9320418227791524280

`A302820(∑[A020719(n)]+15)`
-/

namespace A302819.P9320418227791524280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (∑ j ∈ Finset.range (n + 1), f1 j + 15).toNat

end

end A302819.P9320418227791524280

/-! ## A302819.P3168603075843241406

`A302820(A155212(n+3)+2)`
-/

namespace A302819.P3168603075843241406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A155212 (n + 3) + 2).toNat

end

end A302819.P3168603075843241406

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

/-! ## A302820.P1212126641061546368

`A303016(n+1)+A151755(A183562(n+5))`
-/

namespace A302820.P1212126641061546368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303016 (n + 1) + A151755 (A183562 (n + 5)).toNat

end

end A302820.P1212126641061546368

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

/-! ## A302821.P9572464377292481942

`or(char[1], A302820(A167614(n+1)))`
-/

namespace A302821.P9572464377292481942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A302820 (A167614 (n + 1)).toNat)

end

end A302821.P9572464377292481942

/-! ## A302821.P4743234223221245165

`A302820(A000124(n+2)+2)+char[21]`
-/

namespace A302821.P4743234223221245165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302821.P4743234223221245165

/-! ## A302821.P7095509263592237266

`A302820(A000124(n+2)+2)%A017455(n)`
-/

namespace A302821.P7095509263592237266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302820 (A000124 (n + 2) + 2).toNat) (A017455 n)

end

end A302821.P7095509263592237266

/-! ## A302821.P7901173944964955280

`A007318(A025925(n))*A302820(A000124(n+2)+2)`
-/

namespace A302821.P7901173944964955280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025925 n).toNat * A302820 (A000124 (n + 2) + 2).toNat

end

end A302821.P7901173944964955280

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

/-! ## A302822.P3652788516695366991

`A302820(A052905(n)+9)`
-/

namespace A302822.P3652788516695366991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A052905 n + 9).toNat

end

end A302822.P3652788516695366991

/-! ## A302822.P2022983887968439911

`A302820(A055999(n)+10)`
-/

namespace A302822.P2022983887968439911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A055999 n + 10).toNat

end

end A302822.P2022983887968439911

/-! ## A302822.P16109506463705806938

`A302820(A167614(n+2)+1)`
-/

namespace A302822.P16109506463705806938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A167614 (n + 2) + 1).toNat

end

end A302822.P16109506463705806938

/-! ## A302822.P2893065866458474775

`A302820(A166136(n+2)-2)`
-/

namespace A302822.P2893065866458474775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A166136 (n + 2) - 2).toNat

end

end A302822.P2893065866458474775

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

/-! ## A302823.P7136152268564555453

`A302820(A155212(n)+13)`
-/

namespace A302823.P7136152268564555453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A155212 n + 13).toNat

end

end A302823.P7136152268564555453

/-! ## A302823.P10011685942727786154

`A302820(A166136(n+3)-1)`
-/

namespace A302823.P10011685942727786154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A166136 (n + 3) - 1).toNat

end

end A302823.P10011685942727786154

/-! ## A302823.P2544726320786581013

`A302820(A034856(n+3)+7)`
-/

namespace A302823.P2544726320786581013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A034856 (n + 3) + 7).toNat

end

end A302823.P2544726320786581013

/-! ## A302823.P9636936014470477872

`A302820(A055999(n+1)+11)`
-/

namespace A302823.P9636936014470477872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A055999 (n + 1) + 11).toNat

end

end A302823.P9636936014470477872

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

/-! ## A302824.P15947978325793664076

`A302820(A000124(n+5)+5)`
-/

namespace A302824.P15947978325793664076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A000124 (n + 5) + 5).toNat

end

end A302824.P15947978325793664076

/-! ## A302824.P6646730521042588794

`A302820(A055998(n+3)+9)`
-/

namespace A302824.P6646730521042588794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A055998 (n + 3) + 9).toNat

end

end A302824.P6646730521042588794

/-! ## A302824.P12523677577513940817

`A302820(A046691(n+3)+10)`
-/

namespace A302824.P12523677577513940817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A046691 (n + 3) + 10).toNat

end

end A302824.P12523677577513940817

/-! ## A302824.P131119653706360172

`A302820(eq[7, A131818(n+1)])`
-/

namespace A302824.P131119653706360172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302824.P131119653706360172

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

/-! ## A302825.P861589964789317437

`A302820(A302537(n)+27)`
-/

namespace A302825.P861589964789317437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A302537 n + 27).toNat

end

end A302825.P861589964789317437

/-! ## A302825.P15466256419469369170

`A302820(eq[11, A066657(n)])`
-/

namespace A302825.P15466256419469369170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302825.P15466256419469369170

/-! ## A302825.P17806365814284207225

`A302820(A000096(n+5)+8)`
-/

namespace A302825.P17806365814284207225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (A000096 (n + 5) + 8).toNat

end

end A302825.P17806365814284207225

/-! ## A302825.P17359985602055158828

`A302820(eq[8, A131818(n+1)])`
-/

namespace A302825.P17359985602055158828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302825.P17359985602055158828

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

The programs for A302827, there is no canonical definition to state claims against.
-/

/-! ## A302827.P15364008607974899841

`6/A008486(n)*A304654(n)`
-/

namespace A302827.P15364008607974899841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A008486 n : ℚ) * (A304654 n : ℚ)

end

end A302827.P15364008607974899841

/-! ## A302827.P10943061279752550826

`A005843(A304654(n)/round(acot(n)+n))`
-/

namespace A302827.P10943061279752550826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A304654 n : ℚ) / (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ))).toNat

end

end A302827.P10943061279752550826

/-!
# A302829: a(n) is the number of lattice points in a Cartesian grid between a circle of radius n and an inscribed square whose vertices lie on the coordinate axes.

The programs for A302829, there is no canonical definition to state claims against.
-/

/-! ## A302829.P8661608365373908927

`A281795(n+1)-4*A034856(n+1)`
-/

namespace A302829.P8661608365373908927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281795 (n + 1) - 4 * A034856 (n + 1)

end

end A302829.P8661608365373908927

/-! ## A302829.P5718332461464116206

`4*(A007882(n+1)-∑[n])`
-/

namespace A302829.P5718332461464116206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A007882 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A302829.P5718332461464116206

/-! ## A302829.P10389643115023476121

`A051132(n+1)-A059993(n)`
-/

namespace A302829.P10389643115023476121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - A059993 n

end

end A302829.P10389643115023476121

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

/-! ## A302829.P3812038733018547985

`A016813(A007882(n+1))-A001844(n)`
-/

namespace A302829.P3812038733018547985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A007882 (n + 1)).toNat - A001844 n

end

end A302829.P3812038733018547985

/-! ## A302829.P17469875587471489720

`A077770(n)+A119677(n)-A046092(n)`
-/

namespace A302829.P17469875587471489720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077770 n + (A119677 n - A046092 n)

end

end A302829.P17469875587471489720

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

/-! ## A302830.P14428356658111810226

`∑[A294589(∑[n]+n)]`
-/

namespace A302830.P14428356658111810226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302830.P14428356658111810226

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

/-! ## A302831.P526723069986396683

`A022629(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A302831.P526723069986396683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022629 (n % n ^ 2) + a (n - 1)

end

end A302831.P526723069986396683

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

/-! ## A302831.P6360185474394180284

`∑[A297321(∑[n+2]-1)]`
-/

namespace A302831.P6360185474394180284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297321 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302831.P6360185474394180284

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

/-! ## A302833.P2718959312785739639

`A001156(n%n²)+a(n-1)` with `a(0)=1`
-/

namespace A302833.P2718959312785739639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001156 (n % n ^ 2) + a (n - 1)

end

end A302833.P2718959312785739639

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

/-! ## A302843.P5933225124053938108

`A302845(xor(2*n, and(n, -2))/2)`
-/

namespace A302843.P5933225124053938108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A302843.P5933225124053938108

/-! ## A302843.P3130094076806894389

`A302845(ceil(xor(n-1, 2*n)/2))`
-/

namespace A302843.P3130094076806894389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat

end

end A302843.P3130094076806894389

/-! ## A302843.P1627958145824795665

`A302845(xor(2*n+1, or(1, n))/2)`
-/

namespace A302843.P1627958145824795665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (Nat.lor 1 n) : ℚ) / 2)).toNat

end

end A302843.P1627958145824795665

/-! ## A302843.P16725975490945609890

`A302845(and(2*n, -n)-ceil(n/2))`
-/

namespace A302843.P16725975490945609890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (Int.land (2 * n : ℤ) (-(n : ℤ)) - ⌈(n : ℚ) / 2⌉).toNat

end

end A302843.P16725975490945609890

/-! ## A302843.P11920158314879353096

`A302845(round(xor(2*n+1, n+1)/2))`
-/

namespace A302843.P11920158314879353096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2)).toNat

end

end A302843.P11920158314879353096

/-! ## A302843.P108766233586234766

`A302845(A286548(n)+n)`
-/

namespace A302843.P108766233586234766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A286548 n + (n : ℤ)).toNat

end

end A302843.P108766233586234766

/-! ## A302843.P18350280353768296948

`A302845(xor(n, A004526(n)))`
-/

namespace A302843.P18350280353768296948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A302843.P18350280353768296948

/-! ## A302843.P3342624735015239294

`A163355(A003188(A064707(n)))`
-/

namespace A302843.P3342624735015239294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A003188 (A064707 n).toNat).toNat

end

end A302843.P3342624735015239294

/-! ## A302843.P6175090123650911288

`A163355(A300839(A057300(n)))`
-/

namespace A302843.P6175090123650911288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A300839 (A057300 n).toNat).toNat

end

end A302843.P6175090123650911288

/-! ## A302843.P377048912438106829

`A302845(A302844(A163355(n)))`
-/

namespace A302843.P377048912438106829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A302844 (A163355 n).toNat).toNat

end

end A302843.P377048912438106829

/-! ## A302843.P7579408105766180253

`A302845(A233280(A006068(A233280(n))))`
-/

namespace A302843.P7579408105766180253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A233280 (A006068 (A233280 n).toNat).toNat).toNat

end

end A302843.P7579408105766180253

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

/-! ## A302844.P14440746492347859750

`A292600(A302846(n)+A302846(n))`
-/

namespace A302844.P14440746492347859750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A302846 n + A302846 n).toNat

end

end A302844.P14440746492347859750

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

/-! ## A302845.P1632087103147325797

`A302843(A268716(n)/2)`
-/

namespace A302845.P1632087103147325797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (SequenceMachineLib.roundAway ((A268716 n : ℚ) / 2)).toNat

end

end A302845.P1632087103147325797

/-! ## A302845.P1103750119807325540

`A302843(A286546(n)+n)`
-/

namespace A302845.P1103750119807325540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A286546 n + (n : ℤ)).toNat

end

end A302845.P1103750119807325540

/-! ## A302845.P4269620666597633556

`A302843(xor(n, A292600(n)))`
-/

namespace A302845.P4269620666597633556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (Int.xor (n : ℤ) (A292600 n)).toNat

end

end A302845.P4269620666597633556

/-! ## A302845.P11115476197001047444

`A302843(A163356(A302843(n)))`
-/

namespace A302845.P11115476197001047444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A163356 (A302843 n).toNat).toNat

end

end A302845.P11115476197001047444

/-! ## A302845.P7920504075087286358

`A163355(A300839(A057300(A300839(A057300(n)))))`
-/

namespace A302845.P7920504075087286358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A300839 (A057300 (A300839 (A057300 n).toNat).toNat).toNat).toNat

end

end A302845.P7920504075087286358

/-! ## A302845.P511057174664294348

`A302843(A292600(2*n))`
-/

namespace A302845.P511057174664294348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A292600 (2 * n)).toNat

end

end A302845.P511057174664294348

/-! ## A302845.P1390674497098302169

`A302843(A064707(A003188(n)))`
-/

namespace A302845.P1390674497098302169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A064707 (A003188 n).toNat).toNat

end

end A302845.P1390674497098302169

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

/-!
# A302846: Interleave the Gray-coded X and Y-coordinates of 2-dimensional Hilbert's curve in alternate bit-positions: a(n) = A000695(A003188(A059253(n))) + 2*A000695(A003188(A059252(n))).

The programs for A302846, there is no canonical definition to state claims against.
-/

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

/-! ## A302846.P14608409884332634074

`A064706(A163356(n))`
-/

namespace A302846.P14608409884332634074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A163356 n).toNat

end

end A302846.P14608409884332634074

/-! ## A302846.P2866711341860703737

`A302844(A163355(A302844(A057300(A057300(n)))))`
-/

namespace A302846.P2866711341860703737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 (A302844 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A302846.P2866711341860703737

/-! ## A302846.P2121062716465137620

`A302844(A163355(A302844(A163356(A163355(n)))))`
-/

namespace A302846.P2121062716465137620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A163355 (A302844 (A163356 (A163355 n).toNat).toNat).toNat).toNat

end

end A302846.P2121062716465137620

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

The programs for A302847, the canonical program `A302847.P8021168690625830306` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302847 has offset 1).

The definition of A302847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302847.P11523127752222031867

`A302848(A302849(n+2))-1`
-/

namespace A302847.P11523127752222031867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302848 (A302849 (n + 2)).toNat - 1

end

end A302847.P11523127752222031867

namespace A302847

/-- `A302848(A302849(n+2))-1` -/
def P11523127752222031867.Spec : Prop :=
  ∀ n, P11523127752222031867.a n = A302847 (n + 1)

end A302847

/-! ## A302847.P426120576285425201

`A305807(p?[2*n+1])+A302848(A302849(n+2))`
-/

namespace A302847.P426120576285425201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A302848 (A302849 (n + 2)).toNat

end

end A302847.P426120576285425201

namespace A302847

/-- `A305807(p?[2*n+1])+A302848(A302849(n+2))` -/
def P426120576285425201.Spec : Prop :=
  ∀ n, P426120576285425201.a n = A302847 (n + 1)

end A302847

/-! ## A302847.P8021168690625830306

`A064216(∑{e}[A006530(n+1), A048673(n-#+1)]+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302847

/-- `A064216(∑{e}[A006530(n+1), A048673(n-#+1)]+1)` -/
def P8021168690625830306.Spec : Prop :=
  ∀ n, P8021168690625830306.a n = A302847 (n + 1)

theorem P8021168690625830306.correct : P8021168690625830306.Spec := by
  intro n
  simp only [A302847, Nat.add_sub_cancel]

end A302847

/-! ## A302847.P8053644480883792073

`A305807(A000040(n+1))+A302848(A302849(n+2))`
-/

namespace A302847.P8053644480883792073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A000040 (n + 1)).toNat + A302848 (A302849 (n + 2)).toNat

end

end A302847.P8053644480883792073

namespace A302847

/-- `A305807(A000040(n+1))+A302848(A302849(n+2))` -/
def P8053644480883792073.Spec : Prop :=
  ∀ n, P8053644480883792073.a n = A302847 (n + 1)

end A302847

/-! ## A302847.P18021019423800054794

`A305807(A249505(n+1))+A302848(A302849(n+2))`
-/

namespace A302847.P18021019423800054794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A249505 (n + 1)).toNat + A302848 (A302849 (n + 2)).toNat

end

end A302847.P18021019423800054794

namespace A302847

/-- `A305807(A249505(n+1))+A302848(A302849(n+2))` -/
def P18021019423800054794.Spec : Prop :=
  ∀ n, P18021019423800054794.a n = A302847 (n + 1)

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

/-! ## A302847.P4192770070386638301

`A070198(A001912(n+1))%A302848(A302849(n+2))`
-/

namespace A302847.P4192770070386638301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 (A001912 (n + 1)).toNat) (A302848 (A302849 (n + 2)).toNat)

end

end A302847.P4192770070386638301

namespace A302847

/-- `A070198(A001912(n+1))%A302848(A302849(n+2))` -/
def P4192770070386638301.Spec : Prop :=
  ∀ n, P4192770070386638301.a n = A302847 (n + 1)

end A302847

/-!
# A302848: Permutation of natural numbers: a(1) = 1; for n > 1, a(n) = 1+A064989(A003961(n)-2).

The programs for A302848, there is no canonical definition to state claims against.
-/

/-! ## A302848.P4993688305556754007

`A302850(A302847(n+2))-1`
-/

namespace A302848.P4993688305556754007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302850 (A302847 (n + 2)).toNat - 1

end

end A302848.P4993688305556754007

/-! ## A302848.P14147796937936297624

`A343761(p?[2*n+1])+A302850(A302847(n+2))`
-/

namespace A302848.P14147796937936297624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A302850 (A302847 (n + 2)).toNat

end

end A302848.P14147796937936297624

/-! ## A302848.P12511166056246996433

`A343761(A000040(n+1))+A302850(A302847(n+2))`
-/

namespace A302848.P12511166056246996433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A000040 (n + 1)).toNat + A302850 (A302847 (n + 2)).toNat

end

end A302848.P12511166056246996433

/-! ## A302848.P419707800219988490

`A343761(A065091(n+1))+A302850(A302847(n+2))`
-/

namespace A302848.P419707800219988490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A065091 (n + 1)).toNat + A302850 (A302847 (n + 2)).toNat

end

end A302848.P419707800219988490

/-! ## A302848.P2439189054127205755

`A343761(A075544(n+1))+A302850(A302847(n+2))`
-/

namespace A302848.P2439189054127205755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A075544 (n + 1)).toNat + A302850 (A302847 (n + 2)).toNat

end

end A302848.P2439189054127205755

/-! ## A302848.P4386199227519006785

`A245606(A245705(A245712(A245706(A245605(n+1)))))`
-/

namespace A302848.P4386199227519006785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245606 (A245705 (A245712 (A245706 (A245605 (n + 1)).toNat).toNat).toNat).toNat

end

end A302848.P4386199227519006785

/-! ## A302848.P17833442190438679095

`A343761(A139856(n+1))+A302850(A302847(n+2))`
-/

namespace A302848.P17833442190438679095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343761 (A139856 (n + 1)).toNat + A302850 (A302847 (n + 2)).toNat

end

end A302848.P17833442190438679095

/-!
# A302849: Permutation of natural numbers: a(1) = 1, a(2) = 2; for n > 2, a(n) = A064989(4+A003961(n-2)).

The programs for A302849, there is no canonical definition to state claims against.
-/

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
# A302851: Permutation of nonnegative integers: a(0) = 0; for n >= 1, a(n) = A225901(1+A225901(n-1)).

The programs for A302851, there is no canonical definition to state claims against.
-/

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

/-! ## A302856.P6508018022805391427

`record[A286815(A132336(n+1))]`
-/

namespace A302856.P6508018022805391427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (A132336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302856.P6508018022805391427

/-! ## A302856.P18225541589484389852

`A022085(n)^A026626(A083658(n))`
-/

namespace A302856.P18225541589484389852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022085 n : ℚ) ^ (A026626 (A083658 n).toNat : ℤ)

end

end A302856.P18225541589484389852

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

/-! ## A302859.P3004145023138289756

`A180119(A301373(n+1))+A158388(n)²`
-/

namespace A302859.P3004145023138289756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (A301373 (n + 1)).toNat + A158388 n ^ 2

end

end A302859.P3004145023138289756

/-! ## A302859.P4338228446606799574

`A180119(A301373(n+1))+A117358(n+1)`
-/

namespace A302859.P4338228446606799574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (A301373 (n + 1)).toNat + A117358 (n + 1)

end

end A302859.P4338228446606799574

/-! ## A302859.P5081523610993736270

`A180119(A301373(n+1))+A007318(∑[n+1])`
-/

namespace A302859.P5081523610993736270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (A301373 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302859.P5081523610993736270

/-! ## A302859.P6729692492148581539

`A180119(A301373(n+1))+A014963(6*(n+1))`
-/

namespace A302859.P6729692492148581539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 (A301373 (n + 1)).toNat + A014963 (6 * (n + 1))

end

end A302859.P6729692492148581539

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

/-! ## A302861.P1524759574725804682

`or(1, A302997(A046092(n)))`
-/

namespace A302861.P1524759574725804682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302997 (A046092 n).toNat)

end

end A302861.P1524759574725804682

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

/-! ## A302861.P16828459419337826147

`A302997(A046092(n))+char[A016878(n)]`
-/

namespace A302861.P16828459419337826147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016878 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302997 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A302861.P16828459419337826147

/-! ## A302861.P8005043321035139088

`A302997(A046092(n))^(A000040(n+1)%2)`
-/

namespace A302861.P8005043321035139088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302997 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A302861.P8005043321035139088

/-!
# A302862: a(n) = [x^n] (1 + theta_3(x))^n/(2^n*(1 - x)), where theta_3() is the Jacobi theta function.

The programs for A302862, there is no canonical definition to state claims against.
-/

/-! ## A302862.P12278329629090749821

`A374561(A298533(n+2))`
-/

namespace A302862.P12278329629090749821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374561 (A298533 (n + 2)).toNat

end

end A302862.P12278329629090749821

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

The programs for A302865, the canonical program `A302865.P2771314584925712172` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302865 has offset 0).

The definition of A302865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+2)*a(n-1)+(-1)^(n+1)*4*(n-1)!` (program `A302865.P2771314584925712172`, by `A302865.P2771314584925712172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302865.P2771314584925712172

`(4*n+2)*a(n-1)+(-1)^(n+1)*4*(n-1)!` with `a(0)=8`

The canonical program, it is in `Seq.B000.C036`.
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

/-! ## A302869.P6881573726644959398

`A302842(n)+a(n-A001222(A179633(n+1)))` with `a(0)=1`
-/

namespace A302869.P6881573726644959398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302842 n + a ((n : ℤ) - A001222 (A179633 (n + 1)).toNat).toNat

end

end A302869.P6881573726644959398

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

/-! ## A302871.P12729883607194310910

`A302877(A001844(n))+char[10]`
-/

namespace A302871.P12729883607194310910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302871.P12729883607194310910

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

/-! ## A302872.P17917472183893109783

`A302877(A034856(n+2))+char[16]`
-/

namespace A302872.P17917472183893109783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302872.P17917472183893109783

/-! ## A302872.P18226429710250788119

`A302877(A052905(n)+3)%A076847(n+1)`
-/

namespace A302872.P18226429710250788119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302877 (A052905 n + 3).toNat) (A076847 (n + 1))

end

end A302872.P18226429710250788119

/-! ## A302872.P18445395280460985561

`A007318(C(2, n))*A302877(A034856(n+2))`
-/

namespace A302872.P18445395280460985561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302877 (A034856 (n + 2)).toNat

end

end A302872.P18445395280460985561

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

/-! ## A302873.P13556946894239832062

`A302877(A055998(n+2))%A108368(n+3)`
-/

namespace A302873.P13556946894239832062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302877 (A055998 (n + 2)).toNat) (A108368 (n + 3))

end

end A302873.P13556946894239832062

/-! ## A302873.P18406912851587003648

`A302877(A027379(n+2))%A172062(n+4)`
-/

namespace A302873.P18406912851587003648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302877 (A027379 (n + 2)).toNat) (A172062 (n + 4))

end

end A302873.P18406912851587003648

/-! ## A302873.P13244835932825457045

`A302877(Δ[A006503(n+1)])%A301539(n+1)`
-/

namespace A302873.P13244835932825457045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302877 (f1 (n + 1) - f1 n).toNat) (A301539 (n + 1))

end

end A302873.P13244835932825457045

/-! ## A302873.P7311414024094664186

`A175432(3*n+5)*A302877(Δ[A006503(n+1)])`
-/

namespace A302873.P7311414024094664186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (3 * n + 5) * A302877 (f1 (n + 1) - f1 n).toNat

end

end A302873.P7311414024094664186

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

/-! ## A302874.P3018178941571271779

`A302877(A046691(n+3))`
-/

namespace A302874.P3018178941571271779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A046691 (n + 3)).toNat

end

end A302874.P3018178941571271779

/-! ## A302874.P13703622619009407766

`A302877(A056115(n)+11)`
-/

namespace A302874.P13703622619009407766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A056115 n + 11).toNat

end

end A302874.P13703622619009407766

/-! ## A302874.P15908688184558850078

`A302877(eq[3, A152157(n)])`
-/

namespace A302874.P15908688184558850078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302874.P15908688184558850078

/-! ## A302874.P11515413926063255351

`A302877(eq[4, A193592(n)])`
-/

namespace A302874.P11515413926063255351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302874.P11515413926063255351

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

/-! ## A302875.P8568492339039684804

`A302877(A302537(n)+15)`
-/

namespace A302875.P8568492339039684804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A302537 n + 15).toNat

end

end A302875.P8568492339039684804

/-! ## A302875.P4034443788651590001

`A302877(A056119(n)+16)`
-/

namespace A302875.P4034443788651590001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A056119 n + 16).toNat

end

end A302875.P4034443788651590001

/-! ## A302875.P10991658656791164400

`A302877(eq[3, A219347(n)])`
-/

namespace A302875.P10991658656791164400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302875.P10991658656791164400

/-! ## A302875.P9187577198349647997

`A302877(eq[5, A193592(n)])`
-/

namespace A302875.P9187577198349647997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302875.P9187577198349647997

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

/-! ## A302876.P16856091912088651523

`A302877(A056121(n)+22)`
-/

namespace A302876.P16856091912088651523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A056121 n + 22).toNat

end

end A302876.P16856091912088651523

/-! ## A302876.P10683643101892342334

`A302877(eq[4, A219347(n)])`
-/

namespace A302876.P10683643101892342334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302876.P10683643101892342334

/-! ## A302876.P18039787773247805608

`A302877(eq[5, A332954(n)])`
-/

namespace A302876.P18039787773247805608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302876.P18039787773247805608

/-! ## A302876.P5207670561973986385

`A302877(eq[6, A193592(n)])`
-/

namespace A302876.P5207670561973986385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302876.P5207670561973986385

/-!
# A302877: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302877, there is no canonical definition to state claims against.
-/

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

/-! ## A302877.P417199350739867617

`A303040(n+1)+A260319(A059922(n))`
-/

namespace A302877.P417199350739867617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303040 (n + 1) + A260319 (A059922 n).toNat

end

end A302877.P417199350739867617

/-! ## A302877.P7194653272095971746

`A303525(n+1)-A097806(A016742(3*n+2))`
-/

namespace A302877.P7194653272095971746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303525 (n + 1) - A097806 (A016742 (3 * n + 2)).toNat

end

end A302877.P7194653272095971746

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

/-! ## A302878.P5542889265223669234

`A302877(A046691(n)+7)+char[17]`
-/

namespace A302878.P5542889265223669234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302878.P5542889265223669234

/-! ## A302878.P35246530218739381

`A302877(A167614(n+1))+A025444(n)`
-/

namespace A302878.P35246530218739381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167614 (n + 1)).toNat + A025444 n

end

end A302878.P35246530218739381

/-! ## A302878.P16531785526714838460

`A302877(A167614(n+1))+A185284(n)`
-/

namespace A302878.P16531785526714838460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167614 (n + 1)).toNat + A185284 n

end

end A302878.P16531785526714838460

/-! ## A302878.P12198108198305125375

`A326541(n)+A302877(A167614(n+1))`
-/

namespace A302878.P12198108198305125375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 n + A302877 (A167614 (n + 1)).toNat

end

end A302878.P12198108198305125375

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

/-! ## A302879.P895763339285854155

`A302877(A141214(n)+7)+char[16]`
-/

namespace A302879.P895763339285854155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302879.P895763339285854155

/-! ## A302879.P14959779761297712343

`A007318(C(2, n))*A302877(A141214(n)+7)`
-/

namespace A302879.P14959779761297712343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302877 (A141214 n + 7).toNat

end

end A302879.P14959779761297712343

/-! ## A302879.P14328323937868622140

`A000108(C(2, n+2))*A302877(A141214(n)+7)`
-/

namespace A302879.P14328323937868622140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A302877 (A141214 n + 7).toNat

end

end A302879.P14328323937868622140

/-! ## A302879.P1963484978468580369

`A007318(gcd(n, n+2))*A302877(A141214(n)+7)`
-/

namespace A302879.P1963484978468580369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 2)) * A302877 (A141214 n + 7).toNat

end

end A302879.P1963484978468580369

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

/-! ## A302880.P3334041203926288179

`A302877(A167499(n+3))`
-/

namespace A302880.P3334041203926288179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167499 (n + 3)).toNat

end

end A302880.P3334041203926288179

/-! ## A302880.P11887394576937452435

`A302877(A155212(n)+13)`
-/

namespace A302880.P11887394576937452435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A155212 n + 13).toNat

end

end A302880.P11887394576937452435

/-! ## A302880.P1034913527693589139

`A302877(A056000(n)+15)`
-/

namespace A302880.P1034913527693589139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A056000 n + 15).toNat

end

end A302880.P1034913527693589139

/-! ## A302880.P5858786714737042577

`A302877(eq[7, A066657(n)])`
-/

namespace A302880.P5858786714737042577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302880.P5858786714737042577

/-!
# A302881: Number of 6 X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302881, there is no canonical definition to state claims against.
-/

/-! ## A302881.P9807766121169701599

`A302877(A056115(n)+21)`
-/

namespace A302881.P9807766121169701599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A056115 n + 21).toNat

end

end A302881.P9807766121169701599

/-! ## A302881.P12573253999753830092

`A302877(A167499(n+4)+1)`
-/

namespace A302881.P12573253999753830092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167499 (n + 4) + 1).toNat

end

end A302881.P12573253999753830092

/-! ## A302881.P13563702073144272748

`A302877(A167487(n+4)-1)`
-/

namespace A302881.P13563702073144272748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167487 (n + 4) - 1).toNat

end

end A302881.P13563702073144272748

/-! ## A302881.P6132734575388103482

`A302877(A167614(n+4)+3)`
-/

namespace A302881.P6132734575388103482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167614 (n + 4) + 3).toNat

end

end A302881.P6132734575388103482

/-! ## A302881.P15297610306157581556

`A302877(A133263(n+5)+4)`
-/

namespace A302881.P15297610306157581556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A133263 (n + 5) + 4).toNat

end

end A302881.P15297610306157581556

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

/-! ## A302882.P15210393580055945989

`A302877(A056119(n)+28)`
-/

namespace A302882.P15210393580055945989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A056119 n + 28).toNat

end

end A302882.P15210393580055945989

/-! ## A302882.P9877600527630747324

`A302877(eq[11, A066657(n)])`
-/

namespace A302882.P9877600527630747324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302882.P9877600527630747324

/-! ## A302882.P10354831334177179112

`A302877(A167499(n+5)+2)`
-/

namespace A302882.P10354831334177179112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A167499 (n + 5) + 2).toNat

end

end A302882.P10354831334177179112

/-! ## A302882.P8963977143849400050

`A302877(A133263(n+6)+5)`
-/

namespace A302882.P8963977143849400050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302877 (A133263 (n + 6) + 5).toNat

end

end A302882.P8963977143849400050

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

/-! ## A302883.P2607775742907319296

`A302889(A001844(n))+A025465(n)`
-/

namespace A302883.P2607775742907319296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A001844 n).toNat + A025465 n

end

end A302883.P2607775742907319296

/-! ## A302883.P3371226493761340702

`A302889(A001844(n))+A053392(n)`
-/

namespace A302883.P3371226493761340702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A001844 n).toNat + A053392 n

end

end A302883.P3371226493761340702

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

/-! ## A302884.P17080607515938066827

`A020985(n)²*A302889(A055999(n)+4)`
-/

namespace A302884.P17080607515938066827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A302889 (A055999 n + 4).toNat

end

end A302884.P17080607515938066827

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

/-! ## A302885.P10887399360677067933

`A302889(A056000(n)+7)`
-/

namespace A302885.P10887399360677067933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A056000 n + 7).toNat

end

end A302885.P10887399360677067933

/-! ## A302885.P5182647883806036716

`A302889(eq[3, A193592(n)])`
-/

namespace A302885.P5182647883806036716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302885.P5182647883806036716

/-! ## A302885.P6643946227290097122

`A302889(A052905(n+1)+2)`
-/

namespace A302885.P6643946227290097122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A052905 (n + 1) + 2).toNat

end

end A302885.P6643946227290097122

/-! ## A302885.P1300811686886791032

`A302889(A034856(n+3)-1)`
-/

namespace A302885.P1300811686886791032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A034856 (n + 3) - 1).toNat

end

end A302885.P1300811686886791032

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

/-! ## A302886.P14045409232156152134

`A302889(eq[4, A193592(n)])`
-/

namespace A302886.P14045409232156152134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302886.P14045409232156152134

/-! ## A302886.P14780772680197572217

`A302889(eq[5, A239144(n)])`
-/

namespace A302886.P14780772680197572217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302886.P14780772680197572217

/-! ## A302886.P8569699465695280214

`A302889(Δ[A023545(n+1)])`
-/

namespace A302886.P8569699465695280214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (f1 (n + 1) - f1 n).toNat

end

end A302886.P8569699465695280214

/-! ## A302886.P9890096169671495455

`A302889(eq[5, A200370(n+1)])`
-/

namespace A302886.P9890096169671495455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302886.P9890096169671495455

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

/-! ## A302887.P5217818650020351870

`A302889(eq[3, A219347(n)])`
-/

namespace A302887.P5217818650020351870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302887.P5217818650020351870

/-! ## A302887.P13283995009854840316

`A302889(eq[5, A193592(n)])`
-/

namespace A302887.P13283995009854840316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302887.P13283995009854840316

/-! ## A302887.P12035825080895892352

`A302889(A000124(n+6)-6)`
-/

namespace A302887.P12035825080895892352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A000124 (n + 6) - 6).toNat

end

end A302887.P12035825080895892352

/-! ## A302887.P7082201997504346606

`A302889(eq[6, A200370(n+1)])`
-/

namespace A302887.P7082201997504346606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302887.P7082201997504346606

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

/-! ## A302888.P4967040156405617249

`A302889(eq[4, A219347(n)])`
-/

namespace A302888.P4967040156405617249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302888.P4967040156405617249

/-! ## A302888.P13298098847742552102

`A302889(eq[6, A193592(n)])`
-/

namespace A302888.P13298098847742552102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302888.P13298098847742552102

/-! ## A302888.P15727218248416440895

`A302889(A167499(n+6)-11)`
-/

namespace A302888.P15727218248416440895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A167499 (n + 6) - 11).toNat

end

end A302888.P15727218248416440895

/-! ## A302888.P9632172265748132598

`A302889(eq[6, A025581(n)]+1)`
-/

namespace A302888.P9632172265748132598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A302888.P9632172265748132598

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

/-! ## A302890.P13183580848716493653

`A302889(A167614(n+1))+A178798(n)`
-/

namespace A302890.P13183580848716493653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A167614 (n + 1)).toNat + A178798 n

end

end A302890.P13183580848716493653

/-! ## A302890.P15161350450866893414

`A302889(A167614(n+1))+A185284(n)`
-/

namespace A302890.P15161350450866893414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A167614 (n + 1)).toNat + A185284 n

end

end A302890.P15161350450866893414

/-! ## A302890.P11615933188699650061

`A302889(A167614(n+1))%A041564(n)`
-/

namespace A302890.P11615933188699650061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302889 (A167614 (n + 1)).toNat) (A041564 n)

end

end A302890.P11615933188699650061

/-! ## A302890.P4057738810959909807

`or(A025437(n), A302889(A167614(n+1)))`
-/

namespace A302890.P4057738810959909807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025437 n) (A302889 (A167614 (n + 1)).toNat)

end

end A302890.P4057738810959909807

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

/-! ## A302891.P3147689764281300200

`A302889(A052905(n)+9)`
-/

namespace A302891.P3147689764281300200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A052905 n + 9).toNat

end

end A302891.P3147689764281300200

/-! ## A302891.P6801056008177839070

`A302889(A055999(n)+10)`
-/

namespace A302891.P6801056008177839070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A055999 n + 10).toNat

end

end A302891.P6801056008177839070

/-! ## A302891.P3071212826889637025

`A302889(Δ[A008778(n)]+6)`
-/

namespace A302891.P3071212826889637025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (f1 (n + 1) - f1 n + 6).toNat

end

end A302891.P3071212826889637025

/-! ## A302891.P13061898802450539887

`A302889(A167614(n+2)+1)`
-/

namespace A302891.P13061898802450539887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A167614 (n + 2) + 1).toNat

end

end A302891.P13061898802450539887

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

/-! ## A302892.P15862339113999715006

`A302889(A155212(n)+13)`
-/

namespace A302892.P15862339113999715006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A155212 n + 13).toNat

end

end A302892.P15862339113999715006

/-! ## A302892.P7689995939930597850

`A302889(A056000(n)+15)`
-/

namespace A302892.P7689995939930597850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A056000 n + 15).toNat

end

end A302892.P7689995939930597850

/-! ## A302892.P3214634481617375238

`A302889(A051936(n+4)+14)`
-/

namespace A302892.P3214634481617375238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A051936 (n + 4) + 14).toNat

end

end A302892.P3214634481617375238

/-! ## A302892.P5253045119961541266

`A302889(eq[6, A131818(n+1)])`
-/

namespace A302892.P5253045119961541266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302892.P5253045119961541266

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

/-! ## A302893.P13063154228215505524

`A302889(A056115(n)+21)`
-/

namespace A302893.P13063154228215505524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A056115 n + 21).toNat

end

end A302893.P13063154228215505524

/-! ## A302893.P18207568456177054218

`A302889(A000124(n+5)+5)`
-/

namespace A302893.P18207568456177054218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A000124 (n + 5) + 5).toNat

end

end A302893.P18207568456177054218

/-! ## A302893.P16509612125081009949

`A302889(A000217(n+5)+6)`
-/

namespace A302893.P16509612125081009949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A000217 (n + 5) + 6).toNat

end

end A302893.P16509612125081009949

/-! ## A302893.P8312371931336891550

`A302889(eq[7, A131818(n+1)])`
-/

namespace A302893.P8312371931336891550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302893.P8312371931336891550

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

/-! ## A302894.P35995732485233498

`A302889(eq[11, A066657(n)])`
-/

namespace A302894.P35995732485233498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302894.P35995732485233498

/-! ## A302894.P7017267604818757705

`A302889(A000217(n+6)+7)`
-/

namespace A302894.P7017267604818757705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A000217 (n + 6) + 7).toNat

end

end A302894.P7017267604818757705

/-! ## A302894.P15798227724927301863

`A302889(A046691(n+4)+11)`
-/

namespace A302894.P15798227724927301863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (A046691 (n + 4) + 11).toNat

end

end A302894.P15798227724927301863

/-! ## A302894.P15886296365073527429

`A302889(eq[8, A131818(n+1)])`
-/

namespace A302894.P15886296365073527429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302889 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302894.P15886296365073527429

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

/-! ## A302895.P4879577472674127601

`floor((3*A145876(A167614(n+1))+2)/3)`
-/

namespace A302895.P4879577472674127601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A145876 (A167614 (n + 1)).toNat + 2 : ℚ) / 3⌋

end

end A302895.P4879577472674127601

/-! ## A302895.P7827763723077420249

`lcm(A040001(n), A145876(A167614(n+1)))`
-/

namespace A302895.P7827763723077420249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040001 n) (A145876 (A167614 (n + 1)).toNat)

end

end A302895.P7827763723077420249

/-! ## A302895.P623993332959298719

`A145876(A167614(n+1))*A152271(2*n)`
-/

namespace A302895.P623993332959298719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A167614 (n + 1)).toNat * A152271 (2 * n)

end

end A302895.P623993332959298719

/-! ## A302895.P11423108376843604012

`A145876(A167614(n+1))%A006214(n+1)`
-/

namespace A302895.P11423108376843604012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145876 (A167614 (n + 1)).toNat) (A006214 (n + 1))

end

end A302895.P11423108376843604012

/-! ## A302895.P778981014444692229

`A145876(A167614(n+1))+A035444(2*n+1)`
-/

namespace A302895.P778981014444692229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A167614 (n + 1)).toNat + A035444 (2 * n + 1)

end

end A302895.P778981014444692229

/-! ## A302895.P8550074881998982041

`A145876(A000217(n+2)+3)%A302896(n+4)`
-/

namespace A302895.P8550074881998982041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145876 (A000217 (n + 2) + 3).toNat) (A302896 (n + 4))

end

end A302895.P8550074881998982041

/-!
# A302896: Number of permutations of [n] having exactly three alternating descents.

The programs for A302896, there is no canonical definition to state claims against.
-/

/-! ## A302896.P3463076817773316821

`A145876(A374004(n+1))`
-/

namespace A302896.P3463076817773316821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374004 (n + 1)).toNat

end

end A302896.P3463076817773316821

/-! ## A302896.P15980690508310274748

`A145876(A055999(n)+10)`
-/

namespace A302896.P15980690508310274748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A055999 n + 10).toNat

end

end A302896.P15980690508310274748

/-! ## A302896.P10824407510309577836

`A145876(A167614(n+2)+1)`
-/

namespace A302896.P10824407510309577836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A167614 (n + 2) + 1).toNat

end

end A302896.P10824407510309577836

/-! ## A302896.P6412638360896434168

`A145876(A167499(n+2)-1)`
-/

namespace A302896.P6412638360896434168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A167499 (n + 2) - 1).toNat

end

end A302896.P6412638360896434168

/-! ## A302896.P1692137331377154335

`A145876(A000217(n+3)+4)`
-/

namespace A302896.P1692137331377154335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A000217 (n + 3) + 4).toNat

end

end A302896.P1692137331377154335

/-! ## A302896.P16856706999327440794

`A145876(A155212(n)+5)`
-/

namespace A302896.P16856706999327440794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A155212 n + 5).toNat

end

end A302896.P16856706999327440794

/-! ## A302896.P15916374669347380526

`A145876(eq[3, A193592(n)])`
-/

namespace A302896.P15916374669347380526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302896.P15916374669347380526

/-! ## A302896.P9421340607112849676

`A145876(A052905(n+1)+2)`
-/

namespace A302896.P9421340607112849676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A052905 (n + 1) + 2).toNat

end

end A302896.P9421340607112849676

/-! ## A302896.P6192474503476213959

`A145876(eq[2, A057728(n+1)-2])`
-/

namespace A302896.P6192474503476213959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302896.P6192474503476213959

/-! ## A302896.P11071106970971337570

`A145876(eq[2, A185782(n+1)-2])`
-/

namespace A302896.P11071106970971337570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302896.P11071106970971337570

/-!
# A302897: Number of permutations of [n] having exactly four alternating descents.

The programs for A302897, there is no canonical definition to state claims against.
-/

/-! ## A302897.P7888664638328986748

`A145876(A374005(n+1))`
-/

namespace A302897.P7888664638328986748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374005 (n + 1)).toNat

end

end A302897.P7888664638328986748

/-! ## A302897.P18421257000285277513

`A145876(A167499(n+3))`
-/

namespace A302897.P18421257000285277513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A167499 (n + 3)).toNat

end

end A302897.P18421257000285277513

/-! ## A302897.P3692746315618686597

`A145876(A155212(n)+13)`
-/

namespace A302897.P3692746315618686597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A155212 n + 13).toNat

end

end A302897.P3692746315618686597

/-! ## A302897.P3049718819639520520

`A145876(A000217(n+4)+5)`
-/

namespace A302897.P3049718819639520520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A000217 (n + 4) + 5).toNat

end

end A302897.P3049718819639520520

/-! ## A302897.P12606938780813972883

`A145876(A000124(n+5)-(n+1))`
-/

namespace A302897.P12606938780813972883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A302897.P12606938780813972883

/-! ## A302897.P6716660983160946924

`A145876(A167614(n+2)+n+6)`
-/

namespace A302897.P6716660983160946924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A302897.P6716660983160946924

/-! ## A302897.P8528213312308551187

`A145876(A055999(n+3)-A005843(n))`
-/

namespace A302897.P8528213312308551187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A055999 (n + 3) - A005843 n).toNat

end

end A302897.P8528213312308551187

/-! ## A302897.P14184680355168048749

`A145876(eq[4, A193592(n)])`
-/

namespace A302897.P14184680355168048749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302897.P14184680355168048749

/-!
# A302898: Number of permutations of [n] having exactly five alternating descents.

The programs for A302898, there is no canonical definition to state claims against.
-/

/-! ## A302898.P2064557940053584993

`A145876(A374007(n+1))`
-/

namespace A302898.P2064557940053584993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374007 (n + 1)).toNat

end

end A302898.P2064557940053584993

/-! ## A302898.P509452378714950209

`A145876(A167499(n+4)+1)`
-/

namespace A302898.P509452378714950209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A167499 (n + 4) + 1).toNat

end

end A302898.P509452378714950209

/-! ## A302898.P14447686432948228008

`A145876(A000217(n+5)+6)`
-/

namespace A302898.P14447686432948228008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A000217 (n + 5) + 6).toNat

end

end A302898.P14447686432948228008

/-! ## A302898.P9134900025122485549

`A145876(A052905(n+3))`
-/

namespace A302898.P9134900025122485549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A052905 (n + 3)).toNat

end

end A302898.P9134900025122485549

/-! ## A302898.P12437079042359772148

`A145876(eq[3, A219347(n)])`
-/

namespace A302898.P12437079042359772148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302898.P12437079042359772148

/-! ## A302898.P5723000415551037500

`A145876(eq[5, A193592(n)])`
-/

namespace A302898.P5723000415551037500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302898.P5723000415551037500

/-! ## A302898.P8986658024645725689

`A145876(A000124(n+6)-6)`
-/

namespace A302898.P8986658024645725689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A000124 (n + 6) - 6).toNat

end

end A302898.P8986658024645725689

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

/-! ## A302899.P15057816099302248280

`A145876(A000217(n+6)+7)`
-/

namespace A302899.P15057816099302248280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A000217 (n + 6) + 7).toNat

end

end A302899.P15057816099302248280

/-! ## A302899.P1369238228943242879

`A145876(A055999(n+4))`
-/

namespace A302899.P1369238228943242879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A055999 (n + 4)).toNat

end

end A302899.P1369238228943242879

/-! ## A302899.P1376103322770051467

`A145876(eq[4, A219347(n)])`
-/

namespace A302899.P1376103322770051467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302899.P1376103322770051467

/-! ## A302899.P9325464806363855918

`A145876(eq[6, A193592(n)])`
-/

namespace A302899.P9325464806363855918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302899.P9325464806363855918

/-! ## A302899.P14920912618372537003

`A145876(A052905(n+4)-1)`
-/

namespace A302899.P14920912618372537003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A052905 (n + 4) - 1).toNat

end

end A302899.P14920912618372537003

