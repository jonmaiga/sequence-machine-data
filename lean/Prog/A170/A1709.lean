import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A170900: Number of 2-generator groups of order 2^n.

The programs for A170900, there is no canonical definition to state claims against.
-/

/-! ## A170900.P6589415491123867678

`A066389(2^(n+3))-1`
-/

namespace A170900.P6589415491123867678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066389 (2 ^ (n + 3)) - 1

end

end A170900.P6589415491123867678

/-! ## A170900.P12997999644403429053

`A151821(n+1)+A132145(A001700(n))`
-/

namespace A170900.P12997999644403429053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) + A132145 (A001700 n).toNat

end

end A170900.P12997999644403429053

/-!
# A170903: a(n) = 2*A160552(n)-1.

The programs for A170903, there is no canonical definition to state claims against.
-/

/-! ## A170903.P15056713930105912767

`2*A160552(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A170903.P15056713930105912767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160552 (n + 1) - 1

end

end A170903.P15056713930105912767

/-! ## A170903.P9171167922648350446

`and(-3, A151568(n+1))`
-/

namespace A170903.P9171167922648350446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A151568 (n + 1))

end

end A170903.P9171167922648350446

/-! ## A170903.P17122645648430267914

`Δ[2*A255747(n)]-1`
-/

namespace A170903.P17122645648430267914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A170903.P17122645648430267914

/-! ## A170903.P13140167404883032194

`∑[floor(Δ[A169708(n)/2])]`
-/

namespace A170903.P13140167404883032194
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169708 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170903.P13140167404883032194

/-! ## A170903.P8530338535301215344

`A169708(n+1)/2-1`
-/

namespace A170903.P8530338535301215344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169708 (n + 1) : ℚ) / 2 - 1

end

end A170903.P8530338535301215344

/-! ## A170903.P942559594558138734

`4*A255045(n+1)-3`
-/

namespace A170903.P942559594558138734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A255045 (n + 1) - 3

end

end A170903.P942559594558138734

/-! ## A170903.P5655411194637222154

`Δ[A266530(2*(n+1))]-1`
-/

namespace A170903.P5655411194637222154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A170903.P5655411194637222154

/-! ## A170903.P172876165634991883

`A033999(2*n+1)+Δ[A266530(2*(n+1))]`
-/

namespace A170903.P172876165634991883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A170903.P172876165634991883

/-! ## A170903.P2782828440589969378

`A151548(n+1)-(A255045(n+2)+A255045(n+2))`
-/

namespace A170903.P2782828440589969378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 (n + 1) - (A255045 (n + 2) + A255045 (n + 2))

end

end A170903.P2782828440589969378

/-! ## A170903.P14647305566118248481

`A160164(n+1)-A169707(n+1)`
-/

namespace A170903.P14647305566118248481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (n + 1) - A169707 (n + 1)

end

end A170903.P14647305566118248481

/-! ## A170903.P9920800261728474355

`A255747(n+1)+A246336(n)-A169707(n+1)`
-/

namespace A170903.P9920800261728474355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (n + 1) + (A246336 n - A169707 (n + 1))

end

end A170903.P9920800261728474355

/-! ## A170903.P377909757456533409

`A139250(n+1)+A139250(n+1)-A169707(n+1)`
-/

namespace A170903.P377909757456533409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) + (A139250 (n + 1) - A169707 (n + 1))

end

end A170903.P377909757456533409

/-! ## A170903.P2568101883783340017

`A147562(n+1)+A255166(n+1)-A169707(n+1)`
-/

namespace A170903.P2568101883783340017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (n + 1) + (A255166 (n + 1) - A169707 (n + 1))

end

end A170903.P2568101883783340017

/-! ## A170903.P12095240077044655878

`A004273(Δ[A255747(n)])`
-/

namespace A170903.P12095240077044655878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (n + 1) - f1 n).toNat

end

end A170903.P12095240077044655878

/-! ## A170903.P4983307391477122062

`A004273(A160552(n+1))`
-/

namespace A170903.P4983307391477122062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A160552 (n + 1)).toNat

end

end A170903.P4983307391477122062

/-! ## A170903.P11379375996708876204

`A005408(A160552(n+1)-1)`
-/

namespace A170903.P11379375996708876204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A160552 (n + 1) - 1).toNat

end

end A170903.P11379375996708876204

/-! ## A170903.P9459288443014502230

`A160164(n+1)-(A255263(n+1)+A162795(n+1))`
-/

namespace A170903.P9459288443014502230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (n + 1) - (A255263 (n + 1) + A162795 (n + 1))

end

end A170903.P9459288443014502230

/-! ## A170903.P15523620594518051513

`A302032(A169708(n+1)-2)`
-/

namespace A170903.P15523620594518051513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A169708 (n + 1) - 2).toNat

end

end A170903.P15523620594518051513

/-! ## A170903.P15392983159062917201

`A063198(A151569(n+1))`
-/

namespace A170903.P15392983159062917201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063198 (A151569 (n + 1)).toNat

end

end A170903.P15392983159062917201

/-! ## A170903.P10037205105404367939

`A255049(n+1)-1`
-/

namespace A170903.P10037205105404367939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255049 (n + 1) - 1

end

end A170903.P10037205105404367939

/-!
# A170904: Sequence obtained by a formal reading of Riordan's Eq. (30a), p. 206.

The programs for A170904, there is no canonical definition to state claims against.
-/

/-! ## A170904.P1695473081916964846

`A273376(A284372(2*(n+1)))+A220905(A048093(n+2))`
-/

namespace A170904.P1695473081916964846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273376 (A284372 (2 * (n + 1))).toNat + A220905 (A048093 (n + 2)).toNat

end

end A170904.P1695473081916964846

/-! ## A170904.P10263878676663708263

`A025429(A005649(n)+10)`
-/

namespace A170904.P10263878676663708263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (A005649 n + 10).toNat

end

end A170904.P10263878676663708263

/-!
# A170905: Consider the hexagonal cellular automaton defined in A151723, A151724; a(n) = number of cells that go from OFF to ON at stage n, if we only look at a 60-degree wedge (including the two bounding edges).

The programs for A170905, there is no canonical definition to state claims against.
-/

/-! ## A170905.P10171372716162402665

`Δ[A169780(floor(n-n/(n+1)))]`
-/

namespace A170905.P10171372716162402665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 ⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170905.P10171372716162402665

/-! ## A170905.P8579817229594607602

`A169780(n)-A169780(A004273(n)-n)`
-/

namespace A170905.P8579817229594607602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 n - A169780 (A004273 n - (n : ℤ)).toNat

end

end A170905.P8579817229594607602

/-! ## A170905.P2840944161561206272

`A112689(A151724(n)+3)`
-/

namespace A170905.P2840944161561206272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A151724 n + 3).toNat

end

end A170905.P2840944161561206272

/-! ## A170905.P6589939967308967275

`A008612(or(2, A151724(n)))`
-/

namespace A170905.P6589939967308967275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.lor 2 (A151724 n)).toNat

end

end A170905.P6589939967308967275

/-! ## A170905.P15735830379980041072

`A112689(xor(3, A151724(n)))`
-/

namespace A170905.P15735830379980041072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (Int.xor 3 (A151724 n)).toNat

end

end A170905.P15735830379980041072

/-! ## A170905.P14885415536728916009

`char[A038802(n+1)]+A170898(n)-A342276(n)`
-/

namespace A170905.P14885415536728916009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038802 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A170898 n - A342276 n)

end

end A170905.P14885415536728916009

/-! ## A170905.P1499947678635254594

`A103221(A151724(n)+2)%A000010((n+1)²)²`
-/

namespace A170905.P1499947678635254594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103221 (A151724 n + 2).toNat) (A000010 ((n + 1) ^ 2) ^ 2)

end

end A170905.P1499947678635254594

/-! ## A170905.P3357020232634063616

`A130130(n)*A169778(n)`
-/

namespace A170905.P3357020232634063616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n * A169778 n

end

end A170905.P3357020232634063616

/-! ## A170905.P7038782737073208867

`A169695(A002061(n))*A169778(n)`
-/

namespace A170905.P7038782737073208867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A002061 n).toNat * A169778 n

end

end A170905.P7038782737073208867

/-!
# A170906: Triangle read by rows: T(n,k) = number of cells that are turned from OFF to ON at stage k of the cellular automaton in the 30-60-90 triangle of hexagons defined in Comments.

The programs for A170906, there is no canonical definition to state claims against.
-/

/-! ## A170906.P5195208082502125278

`A000001(A128918(A027960(n)²))`
-/

namespace A170906.P5195208082502125278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A128918 (A027960 n ^ 2).toNat).toNat

end

end A170906.P5195208082502125278

/-! ## A170906.P7893965114925821324

`A001221(or(29, A001077(A027960(n))))`
-/

namespace A170906.P7893965114925821324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 29 (A001077 (A027960 n).toNat)).toNat

end

end A170906.P7893965114925821324

/-! ## A170906.P14541431165370050858

`A105105(A004737(n+1)^A036584(n))`
-/

namespace A170906.P14541431165370050858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105105 (SequenceMachineLib.roundAway ((A004737 (n + 1) : ℚ) ^ (A036584 n : ℤ))).toNat

end

end A170906.P14541431165370050858

/-! ## A170906.P16249276984322285476

`A034867(A307530(3*n+1)%A097853(n+1))`
-/

namespace A170906.P16249276984322285476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 (Int.tmod (A307530 (3 * n + 1)) (A097853 (n + 1))).toNat

end

end A170906.P16249276984322285476

/-!
# A170907: Row sums in triangle A170906.

The programs for A170907, there is no canonical definition to state claims against.
-/

/-! ## A170907.P11003025295184805983

`A169757(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A170907.P11003025295184805983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169757 (n - 1) + a (n - 1)

end

end A170907.P11003025295184805983

/-! ## A170907.P17423128268099082100

`∑[A169757(A028310(n)-1)]-2`
-/

namespace A170907.P17423128268099082100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169757 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A170907.P17423128268099082100

/-! ## A170907.P6392740249525262463

`∑[A169757(n)]+1-A169757(n)`
-/

namespace A170907.P6392740249525262463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A169757 n)

end

end A170907.P6392740249525262463

/-! ## A170907.P10133402390560621337

`∑[A169757(A028310(n))]-A169757(n)`
-/

namespace A170907.P10133402390560621337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169757 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A169757 n

end

end A170907.P10133402390560621337

/-! ## A170907.P3599664095912589299

`A169782((n+1)²)`
-/

namespace A170907.P3599664095912589299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 ((n + 1) ^ 2)

end

end A170907.P3599664095912589299

/-! ## A170907.P15215297265998842143

`or(char[3], A169782(∑[2*n+1]))`
-/

namespace A170907.P15215297265998842143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A169782 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A170907.P15215297265998842143

/-! ## A170907.P17632538984383293665

`record[A169782(ceil(((n+1)/2)^gcd(2, n+1)))]`
-/

namespace A170907.P17632538984383293665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 ⌈((n + 1 : ℚ) / 2) ^ Nat.gcd 2 (n + 1)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P17632538984383293665

/-! ## A170907.P18210839867663981614

`record[A169782(A008642(n))]`
-/

namespace A170907.P18210839867663981614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A008642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P18210839867663981614

/-! ## A170907.P8022865744397599722

`record[A169782(A117910(n)²)]`
-/

namespace A170907.P8022865744397599722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P8022865744397599722

/-! ## A170907.P6206511704629455247

`record[A169782(A286552(n)²)]`
-/

namespace A170907.P6206511704629455247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A286552 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P6206511704629455247

/-! ## A170907.P10244246207872731329

`record[A169782(A000463(n+1))]`
-/

namespace A170907.P10244246207872731329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A000463 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P10244246207872731329

/-! ## A170907.P17138253897354951120

`record[A169782(A002620(n+2))]`
-/

namespace A170907.P17138253897354951120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A002620 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P17138253897354951120

/-! ## A170907.P7571956359600680370

`record[A169782(A033638(n)+n)]`
-/

namespace A170907.P7571956359600680370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A033638 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P7571956359600680370

/-! ## A170907.P18436020804657068747

`record[A169782(record[A033638(n)-n])]`
-/

namespace A170907.P18436020804657068747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170907.P18436020804657068747

/-! ## A170907.P17110549109722964945

`A000027(A169782(∑[2*n+1]))`
-/

namespace A170907.P17110549109722964945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A169782 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A170907.P17110549109722964945

/-! ## A170907.P2834224845115966508

`A169782(A005563(n)+1)+(2*n)%2`
-/

namespace A170907.P2834224845115966508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A005563 n + 1).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A170907.P2834224845115966508

/-! ## A170907.P7465785664460528345

`A007318(C(3, n))*A169782(∑[2*n+1])`
-/

namespace A170907.P7465785664460528345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A169782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A170907.P7465785664460528345

/-! ## A170907.P999968133408464359

`A169782(∑[2*n+1])%∑[A000040(n+1)]`
-/

namespace A170907.P999968133408464359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169782 (∑ j ∈ Finset.range (n + 1), f1 j)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A170907.P999968133408464359

/-! ## A170907.P11124646790343410698

`A014963(8*n+10)*A169782(∑[2*n+1])`
-/

namespace A170907.P11124646790343410698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 10) * A169782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A170907.P11124646790343410698

/-! ## A170907.P15223722079070649100

`A169782(A000290(n+1))%A000041(n+4)`
-/

namespace A170907.P15223722079070649100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169782 (A000290 (n + 1)).toNat) (A000041 (n + 4))

end

end A170907.P15223722079070649100

/-!
# A170908: Numerators in Taylor series expansion of Product_{n >= 1} (1+x^n/n!).

The programs for A170908, there is no canonical definition to state claims against.
-/

/-! ## A170908.P15374997526497110833

`A007837(n)/gcd(A000142(n), A007837(n))`
-/

namespace A170908.P15374997526497110833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007837 n : ℚ) / (Int.gcd (A000142 n) (A007837 n) : ℚ)

end

end A170908.P15374997526497110833

/-! ## A170908.P146129684227654424

`A379120(A007837(n))`
-/

namespace A170908.P146129684227654424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379120 (A007837 n).toNat

end

end A170908.P146129684227654424

/-! ## A170908.P13120553788231030364

`gcd(A115149(n), A140271(A007837(n)))`
-/

namespace A170908.P13120553788231030364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115149 n) (A140271 (A007837 n).toNat)

end

end A170908.P13120553788231030364

/-! ## A170908.P14084348899287477022

`A006530(A007837(n))^A007318(A282988(n+1))`
-/

namespace A170908.P14084348899287477022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A007837 n).toNat : ℚ) ^ (A007318 (A282988 (n + 1)).toNat : ℤ)

end

end A170908.P14084348899287477022

/-! ## A170908.P12318495073694361214

`A076934(A007837(n)*A152884(n))`
-/

namespace A170908.P12318495073694361214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (A007837 n * A152884 n).toNat

end

end A170908.P12318495073694361214

/-!
# A170909: Denominators in Taylor series expansion of Product_{n >= 1} (1+x^n/n!).

The programs for A170909, there is no canonical definition to state claims against.
-/

/-! ## A170909.P5430958293153806065

`A000142(n)/A007837(n)*A170908(n)`
-/

namespace A170909.P5430958293153806065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A007837 n : ℚ) * (A170908 n : ℚ)

end

end A170909.P5430958293153806065

/-! ## A170909.P12033159156635415931

`n!/A318622(A007837(n))`
-/

namespace A170909.P12033159156635415931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A318622 (A007837 n).toNat : ℚ)

end

end A170909.P12033159156635415931

/-! ## A170909.P3360185332195117498

`A000142(n)/A318622(A007837(n))`
-/

namespace A170909.P3360185332195117498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A318622 (A007837 n).toNat : ℚ)

end

end A170909.P3360185332195117498

/-! ## A170909.P13884373932642952675

`n!/A006519(A076264(n))`
-/

namespace A170909.P13884373932642952675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A006519 (A076264 n).toNat : ℚ)

end

end A170909.P13884373932642952675

/-! ## A170909.P6376632918138504159

`A000142(n)/A006519(A076264(n))`
-/

namespace A170909.P6376632918138504159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A006519 (A076264 n).toNat : ℚ)

end

end A170909.P6376632918138504159

/-!
# A170911: Write exp(-x) = Product_{n>=1} (1 + g_n x^n); a(n) = denominator(g_n).

The programs for A170911, there is no canonical definition to state claims against.
-/

/-! ## A170911.P4282912401839095879

`A067911(n+1)/A000188(A008965(n+1))`
-/

namespace A170911.P4282912401839095879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067911 (n + 1) : ℚ) / (A000188 (A008965 (n + 1)).toNat : ℚ)

end

end A170911.P4282912401839095879

/-! ## A170911.P1132237025563678920

`A067911(n+1)/A336839(A067919(n+1))`
-/

namespace A170911.P1132237025563678920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067911 (n + 1) : ℚ) / (A336839 (A067919 (n + 1)).toNat : ℚ)

end

end A170911.P1132237025563678920

/-! ## A170911.P17229887398564540911

`A067911(n+1)/A254655(A259231(n+1))`
-/

namespace A170911.P17229887398564540911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067911 (n + 1) : ℚ) / (A254655 (A259231 (n + 1)).toNat : ℚ)

end

end A170911.P17229887398564540911

/-! ## A170911.P10843555611285178984

`A067911(n+1)/A038538(A241729(n))`
-/

namespace A170911.P10843555611285178984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067911 (n + 1) : ℚ) / (A038538 (A241729 (n + 66)).toNat : ℚ)

end

end A170911.P10843555611285178984

/-! ## A170911.P4324534584924038796

`A067911(n+1)/A141477(A230614(n+1))`
-/

namespace A170911.P4324534584924038796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067911 (n + 1) : ℚ) / (A141477 (A230614 (n + 1)).toNat : ℚ)

end

end A170911.P4324534584924038796

/-!
# A170912: Write cos(x) = Product_{n >= 1} (1 + g_n*x^(2*n)); a(n) = numerator(g_n).

The programs for A170912, there is no canonical definition to state claims against.
-/

/-! ## A170912.P8088366597114313879

`A052928(A032031(n))-A192246(n+1)`
-/

namespace A170912.P8088366597114313879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A032031 n).toNat - A192246 (n + 1)

end

end A170912.P8088366597114313879

/-!
# A170913: Write cos(x) = Product_{n>=1} (1 + g_n*x^(2*n)); a(n) = denominator(g_n).

The programs for A170913, there is no canonical definition to state claims against.
-/

/-! ## A170913.P7721411511440425482

`A000142(2*(n+1))/A007953(A215710(n))`
-/

namespace A170913.P7721411511440425482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * (n + 1)) : ℚ) / (A007953 (A215710 n).toNat : ℚ)

end

end A170913.P7721411511440425482

/-! ## A170913.P12538570693460216511

`A000142(2*(n+1))/A048793(A316593(n+1))`
-/

namespace A170913.P12538570693460216511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * (n + 1)) : ℚ) / (A048793 (A316593 (n + 1)).toNat : ℚ)

end

end A170913.P12538570693460216511

/-!
# A170914: Write 1 + sin x = Product_{n>=1} (1 + g_n * x^n); a(n) = numerator(g_n).

The programs for A170914, there is no canonical definition to state claims against.
-/

/-! ## A170914.P16476096797178487816

`A353607(n+1)/gcd(A188588(n), A353607(n+1))`
-/

namespace A170914.P16476096797178487816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353607 (n + 1) : ℚ) / (Int.gcd (A188588 n) (A353607 (n + 1)) : ℚ)

end

end A170914.P16476096797178487816

/-!
# A170915: Write 1 + sin x = Product_{n>=1} (1 + g_n * x^n); a(n) = denominator(g_n).

The programs for A170915, there is no canonical definition to state claims against.
-/

/-! ## A170915.P6369033591219682610

`or(n, C(n, 6)!)!`
-/

namespace A170915.P6369033591219682610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.lor n (Nat.factorial (Nat.choose n 6)))

end

end A170915.P6369033591219682610

/-! ## A170915.P11542267343328046628

`(or(1, n)^gcd(7, n))!`
-/

namespace A170915.P11542267343328046628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.lor 1 n ^ Nat.gcd 7 n)

end

end A170915.P11542267343328046628

/-! ## A170915.P8473496426244383200

`(and(9, n+1)²+n)!`
-/

namespace A170915.P8473496426244383200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 9 (n + 1) ^ 2 + n)

end

end A170915.P8473496426244383200

/-!
# A170916: Write sin(x)/x = Product_{n>=1} (1 + g_n*x^(2*n)); a(n) = numerator(g_n).

The programs for A170916, there is no canonical definition to state claims against.
-/

/-! ## A170916.P13861481610462293930

`A274820(A085421(3*n))-A085379(n+2)`
-/

namespace A170916.P13861481610462293930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 (A085421 (3 * n)).toNat - A085379 (n + 2)

end

end A170916.P13861481610462293930

/-!
# A170919: a(n) = denominator of the coefficient c(n) of x^n in (tan x)/Product_{k=1..n-1} 1 + c(k)*x^k, n = 1, 2, 3, ...

The programs for A170919, there is no canonical definition to state claims against.
-/

/-! ## A170919.P1610789461915229910

`A049606(n+1)/A132588(A000225(n+4))`
-/

namespace A170919.P1610789461915229910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 (n + 1) : ℚ) / (A132588 (A000225 (n + 4)).toNat : ℚ)

end

end A170919.P1610789461915229910

/-! ## A170919.P8170309436976045439

`A000265((n+1)!/A165015(n))`
-/

namespace A170919.P8170309436976045439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / (A165015 n : ℚ))).toNat

end

end A170919.P8170309436976045439

/-! ## A170919.P2121656244630006146

`(n+1)/2^val(n+1, 2)*A000265(A329496(n+1))`
-/

namespace A170919.P2121656244630006146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A000265 (A329496 (n + 1)).toNat : ℚ)

end

end A170919.P2121656244630006146

/-! ## A170919.P12871966541146924143

`A000265(A067281(n+1)*A331886(n))`
-/

namespace A170919.P12871966541146924143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A067281 (n + 1) * A331886 n).toNat

end

end A170919.P12871966541146924143

/-! ## A170919.P5416742729550588383

`A000265(A000142(n+1)/A036838(n))`
-/

namespace A170919.P5416742729550588383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A000142 (n + 1) : ℚ) / (A036838 n : ℚ))).toNat

end

end A170919.P5416742729550588383

/-!
# A170921: Write x*cot(x) = Product_{n>=1} (1 + g_n*x^(2*n)); a(n) = denominator(g_n).

The programs for A170921, there is no canonical definition to state claims against.
-/

/-! ## A170921.P17142527491147898546

`A170919(2*(n+2))/A171868(A007820(n))`
-/

namespace A170921.P17142527491147898546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170919 (2 * (n + 2)) : ℚ) / (A171868 (A007820 n).toNat : ℚ)

end

end A170921.P17142527491147898546

/-!
# A170923: a(n) = denominator of the coefficient c(n) of x^n in sqrt(1+x)/Product_{k=1..n-1} 1 + c(k)*x^k, n = 1, 2, 3, ...

The programs for A170923, there is no canonical definition to state claims against.
-/

/-! ## A170923.P5271000439192522325

`A100577(A202533(n)+A029889(n))`
-/

namespace A170923.P5271000439192522325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (A202533 n + A029889 n).toNat

end

end A170923.P5271000439192522325

/-! ## A170923.P8036098764315022436

`A034699(A086324(2*(n+1)))`
-/

namespace A170923.P8036098764315022436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A086324 (2 * (n + 1))).toNat

end

end A170923.P8036098764315022436

/-! ## A170923.P3341926885252064836

`2*A160595(A003665(n+1))`
-/

namespace A170923.P3341926885252064836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160595 (A003665 (n + 1)).toNat

end

end A170923.P3341926885252064836

/-!
# A170924: a(n) = numerator of the coefficient c(n) of x^n in (1/sqrt(1-x))/Product_{k=1..n-1} 1 + c(k)*x^k, n = 1, 2, 3, ...

The programs for A170924, there is no canonical definition to state claims against.
-/

/-! ## A170924.P9034523416295995399

`lcm(A000302(n), A157163(n+1))/A000302(n)`
-/

namespace A170924.P9034523416295995399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000302 n) (A157163 (n + 1)) : ℚ) / (A000302 n : ℚ)

end

end A170924.P9034523416295995399

/-! ## A170924.P10002422079066164141

`A000265(A157163(n+1))`
-/

namespace A170924.P10002422079066164141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A157163 (n + 1)).toNat

end

end A170924.P10002422079066164141

/-! ## A170924.P3809430738958357062

`A302044(2*A157163(n+1))`
-/

namespace A170924.P3809430738958357062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A157163 (n + 1)).toNat

end

end A170924.P3809430738958357062

/-! ## A170924.P1814653640970008130

`A028234(2*A157163(n+1))`
-/

namespace A170924.P1814653640970008130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A157163 (n + 1)).toNat

end

end A170924.P1814653640970008130

/-!
# A170925: G.f.: eta(q)*eta(q^2)*eta(q^4)*eta(q^8)*eta(q^16)*eta(q^32)*..., where eta(q) = Product((1-q^m), m=1..oo).

The programs for A170925, there is no canonical definition to state claims against.
-/

/-! ## A170925.P2413968564695839417

`A030189(n)-A044941(A000079(n))`
-/

namespace A170925.P2413968564695839417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030189 n - A044941 (A000079 n).toNat

end

end A170925.P2413968564695839417

/-! ## A170925.P18432198953658060454

`A030189(n)-A005088(A174109(n))`
-/

namespace A170925.P18432198953658060454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030189 n - A005088 (A174109 n).toNat

end

end A170925.P18432198953658060454

/-! ## A170925.P17055139039220070559

`A030189(n)-A185284(A000009(n))`
-/

namespace A170925.P17055139039220070559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030189 n - A185284 (A000009 n).toNat

end

end A170925.P17055139039220070559

/-! ## A170925.P9991980031823855565

`A030189(n)-A025441(A184955(n))`
-/

namespace A170925.P9991980031823855565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030189 n - A025441 (A184955 n).toNat

end

end A170925.P9991980031823855565

/-! ## A170925.P15865472045671173002

`A030189(n)^A050372(A174528(n))`
-/

namespace A170925.P15865472045671173002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030189 n : ℚ) ^ (A050372 (A174528 n).toNat : ℤ)

end

end A170925.P15865472045671173002

/-!
# A170926: Total number of squares and rectangles at the n-th stage in the corner toothpick structure (see A152890, A153006).

The programs for A170926, there is no canonical definition to state claims against.
-/

/-! ## A170926.P8297442553293690743

`∑[A168131(n)]`
-/

namespace A170926.P8297442553293690743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170926.P8297442553293690743

/-! ## A170926.P9094497623766963645

`A153006(n)-A153000(n)`
-/

namespace A170926.P9094497623766963645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n - A153000 n

end

end A170926.P9094497623766963645

/-! ## A170926.P7351352440589192831

`A152998(n)+1-A152980(n)`
-/

namespace A170926.P7351352440589192831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n + (1 - A152980 n)

end

end A170926.P7351352440589192831

/-! ## A170926.P3564508604165538514

`A159793(n)/2-A153000(n)`
-/

namespace A170926.P3564508604165538514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159793 n : ℚ) / 2 - (A153000 n : ℚ)

end

end A170926.P3564508604165538514

/-! ## A170926.P2253444667868290173

`A159794(n)/3-A153000(n)`
-/

namespace A170926.P2253444667868290173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159794 n : ℚ) / 3 - (A153000 n : ℚ)

end

end A170926.P2253444667868290173

/-! ## A170926.P16568371033351042694

`A159795(n)/4-A153000(n)`
-/

namespace A170926.P16568371033351042694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159795 n : ℚ) / 4 - (A153000 n : ℚ)

end

end A170926.P16568371033351042694

/-! ## A170926.P16386288773602856174

`Δ[A153007(n)]+∑[A162777(n)]`
-/

namespace A170926.P16386288773602856174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A170926.P16386288773602856174

/-! ## A170926.P3776172360458541498

`A152998(n)+1-Δ[A153006(n)]`
-/

namespace A170926.P3776172360458541498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n + (1 - (f1 (n + 1) - f1 n))

end

end A170926.P3776172360458541498

/-! ## A170926.P12904896786202791772

`∑[(A139251(n)-Δ[A162777(n)])/2]`
-/

namespace A170926.P12904896786202791772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 n - (f2 (n + 1) - f2 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170926.P12904896786202791772

/-! ## A170926.P5439432475737483856

`A153006(n)-floor(A139250(n+2)/4)`
-/

namespace A170926.P5439432475737483856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n - ⌊(A139250 (n + 2) : ℚ) / 4⌋

end

end A170926.P5439432475737483856

/-!
# A170927: Consider the 2^n values of A139250(i)/i^2 for 2^n <= i < 2^(n+1); a(n) = value of i where this quantity is minimized.

The programs for A170927, there is no canonical definition to state claims against.
-/

/-! ## A170927.P15896133107250050589

`A126257(A261896(n))-char[8]`
-/

namespace A170927.P15896133107250050589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A261896 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A170927.P15896133107250050589

/-! ## A170927.P12463571722074474683

`A126257(A261896(n)-A006141(n+1))`
-/

namespace A170927.P12463571722074474683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A261896 n - A006141 (n + 1)).toNat

end

end A170927.P12463571722074474683

/-! ## A170927.P6904429571457986976

`A126257(xor(A006141(n+1), A261896(n)))`
-/

namespace A170927.P6904429571457986976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (Int.xor (A006141 (n + 1)) (A261896 n)).toNat

end

end A170927.P6904429571457986976

/-! ## A170927.P8624891060942863219

`A175542(A261896(n))`
-/

namespace A170927.P8624891060942863219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A261896 n).toNat

end

end A170927.P8624891060942863219

/-!
# A170929: When regarded as a triangle, the rows of A168131 converge to this sequence.

The programs for A170929, there is no canonical definition to state claims against.
-/

/-! ## A170929.P225897110427588750

`A151688(n)-Δ[A152980(n+1)]`
-/

namespace A170929.P225897110427588750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151688 n - (f1 (n + 1) - f1 n)

end

end A170929.P225897110427588750

/-! ## A170929.P10435953297535292597

`Δ[A159793(n)-A152980(n+1)]`
-/

namespace A170929.P10435953297535292597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n - A152980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170929.P10435953297535292597

/-! ## A170929.P4725754645194202150

`2*A152980(n)-Δ[A152980(n+1)]`
-/

namespace A170929.P4725754645194202150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152980 n - (f1 (n + 1) - f1 n)

end

end A170929.P4725754645194202150

/-! ## A170929.P9687247648911767226

`A151688(n)-Δ[A151688(n+1)/2]`
-/

namespace A170929.P9687247648911767226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151688 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151688 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A170929.P9687247648911767226

/-! ## A170929.P9209517560693455694

`A168131(n+2)+2*A168131(n+1)`
-/

namespace A170929.P9209517560693455694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168131 (n + 2) + 2 * A168131 (n + 1)

end

end A170929.P9209517560693455694

/-! ## A170929.P12965885738585513770

`A151860(A004757(n+1))+A151860(n)`
-/

namespace A170929.P12965885738585513770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151860 (A004757 (n + 1)).toNat + A151860 n

end

end A170929.P12965885738585513770

/-! ## A170929.P8827101675880942223

`Δ[A153006((32/2)²+n)]-A152978(A004757(n+1))`
-/

namespace A170929.P8827101675880942223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (SequenceMachineLib.roundAway (((32 : ℚ) / 2) ^ 2 + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A152978 (A004757 (n + 1)).toNat

end

end A170929.P8827101675880942223

/-! ## A170929.P10405764983698421262

`A153001(n)-A152980(n+2)`
-/

namespace A170929.P10405764983698421262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153001 n - A152980 (n + 2)

end

end A170929.P10405764983698421262

/-! ## A170929.P4742732518831787894

`A153001(n)-(A152978(n+2)+A152968(n+2))`
-/

namespace A170929.P4742732518831787894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153001 n - (A152978 (n + 2) + A152968 (n + 2))

end

end A170929.P4742732518831787894

/-!
# A170930: G(n,1) with n index G(n,i)=n*(G(n,i-1)+G(n,i-2))=(a^i-b^i)*d where d=sqrt(n*(n+4)); a=(n+d)/2; b=(n-d)/2.

The programs for A170930, the canonical program `A170930.P15675239569684162090` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170930 has offset 0).

The definition of A170930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170930.P15227327289964176991

`ogf(21x/(1-3x-3x^2))`
-/

namespace A170930.P15227327289964176991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 21] [1, -3, -3] n

end

end A170930.P15227327289964176991

namespace A170930

/-- `ogf(21x/(1-3x-3x^2))` -/
def P15227327289964176991.Spec : Prop :=
  ∀ n, P15227327289964176991.a n = A170930 n

end A170930

/-! ## A170930.P15675239569684162090

`3*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=21`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170930

/-- `3*a(n-1)+3*a(n-2)` -/
def P15675239569684162090.Spec : Prop :=
  ∀ n, (P15675239569684162090.a n : ℤ) = A170930 n

theorem P15675239569684162090.correct : P15675239569684162090.Spec := by
  intro n
  simp only [A170930]

end A170930

/-! ## A170930.P6129300724293161934

`21*A030195(n)`
-/

namespace A170930.P6129300724293161934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A030195 n

end

end A170930.P6129300724293161934

namespace A170930

/-- `21*A030195(n)` -/
def P6129300724293161934.Spec : Prop :=
  ∀ n, P6129300724293161934.a n = A170930 n

end A170930

/-! ## A170930.P6853412426743816877

`3*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=21`
-/

namespace A170930.P6853412426743816877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 21] fun n a =>
  3 * (a (n - 1) + a (n - 2))

end

end A170930.P6853412426743816877

namespace A170930

/-- `3*(a(n-1)+a(n-2))` -/
def P6853412426743816877.Spec : Prop :=
  ∀ n, (P6853412426743816877.a n : ℤ) = A170930 n

theorem P6853412426743816877.correct : P6853412426743816877.Spec := by
  intro n
  simp only [A170930, Nat.add_sub_cancel, A170930.P6853412426743816877.a, A170930.P15675239569684162090.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A170930

/-! ## A170930.P17987008129934589398

`Δ[lcm(3, a(n-1)+a(n-2)+2)]` with `a(0)=3, a(1)=3`
-/

namespace A170930.P17987008129934589398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  Nat.lcm 3 (f1 (n - 1) + (f1 (n - 2) + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A170930.P17987008129934589398

namespace A170930

/-- `Δ[lcm(3, a(n-1)+a(n-2)+2)]` -/
def P17987008129934589398.Spec : Prop :=
  ∀ n, P17987008129934589398.a n = A170930 n

end A170930

/-! ## A170930.P11454566900620459578

`7*A106435(n)`
-/

namespace A170930.P11454566900620459578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A106435 n

end

end A170930.P11454566900620459578

namespace A170930

/-- `7*A106435(n)` -/
def P11454566900620459578.Spec : Prop :=
  ∀ n, P11454566900620459578.a n = A170930 n

end A170930

/-! ## A170930.P5933797520995950473

`7*(A125145(n)-A134927(n))`
-/

namespace A170930.P5933797520995950473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A125145 n - A134927 n)

end

end A170930.P5933797520995950473

namespace A170930

/-- `7*(A125145(n)-A134927(n))` -/
def P5933797520995950473.Spec : Prop :=
  ∀ n, P5933797520995950473.a n = A170930 n

end A170930

/-!
# A170931: Extended Lucas L(n,i) = n*(L(n,i-1) + L(n,i-2)) = a^i + b^i where d = sqrt(n*(n+4)); a=(n+d)/2; b=(n-d)/2.

The programs for A170931, the canonical program `A170931.P15677339468085007475` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170931 has offset 0).

The definition of A170931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170931.P17575106034940568081

`ogf((2-4x)/(1-4x-4x^2))`
-/

namespace A170931.P17575106034940568081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -4, -4] n

end

end A170931.P17575106034940568081

namespace A170931

/-- `ogf((2-4x)/(1-4x-4x^2))` -/
def P17575106034940568081.Spec : Prop :=
  ∀ n, P17575106034940568081.a n = A170931 n

end A170931

/-! ## A170931.P15677339468085007475

`4*a(n-1)+4*a(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170931

/-- `4*a(n-1)+4*a(n-2)` -/
def P15677339468085007475.Spec : Prop :=
  ∀ n, (P15677339468085007475.a n : ℤ) = A170931 n

theorem P15677339468085007475.correct : P15677339468085007475.Spec := by
  intro n
  simp only [A170931]

end A170931

/-! ## A170931.P10696973079818176116

`2*A084128(n)`
-/

namespace A170931.P10696973079818176116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084128 n

end

end A170931.P10696973079818176116

namespace A170931

/-- `2*A084128(n)` -/
def P10696973079818176116.Spec : Prop :=
  ∀ n, P10696973079818176116.a n = A170931 n

end A170931

/-! ## A170931.P4859622417025790925

`2^n*A002203(n)`
-/

namespace A170931.P4859622417025790925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002203 n

end

end A170931.P4859622417025790925

namespace A170931

/-- `2^n*A002203(n)` -/
def P4859622417025790925.Spec : Prop :=
  ∀ n, P4859622417025790925.a n = A170931 n

end A170931

/-! ## A170931.P5600645390979616919

`4*(a(n-1)+a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A170931.P5600645390979616919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A170931.P5600645390979616919

namespace A170931

/-- `4*(a(n-1)+a(n-2))` -/
def P5600645390979616919.Spec : Prop :=
  ∀ n, (P5600645390979616919.a n : ℤ) = A170931 n

theorem P5600645390979616919.correct : P5600645390979616919.Spec := by
  intro n
  simp only [A170931, Nat.add_sub_cancel, A170931.P5600645390979616919.a, A170931.P15677339468085007475.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A170931

/-! ## A170931.P16331623346947171686

`(2+sqrt(8))^n+(2-sqrt(8))^n`
-/

namespace A170931.P16331623346947171686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + Real.sqrt (8 : ℝ)) ^ n + (2 - Real.sqrt (8 : ℝ)) ^ n

end

end A170931.P16331623346947171686

namespace A170931

/-- `(2+sqrt(8))^n+(2-sqrt(8))^n` -/
def P16331623346947171686.Spec : Prop :=
  ∀ n, P16331623346947171686.a n = (A170931 n : ℝ)

theorem P16331623346947171686.correct : P16331623346947171686.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A170931, Nat.add_sub_cancel, A170931.P16331623346947171686.a, A170931.P15677339468085007475.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A170931, Nat.add_sub_cancel, A170931.P16331623346947171686.a, A170931.P15677339468085007475.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A170931

/-! ## A170931.P11048117369503760128

`2^n*lcm(2, round((sqrt(2)+1)^n))`
-/

namespace A170931.P11048117369503760128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n))

end

end A170931.P11048117369503760128

namespace A170931

/-- `2^n*lcm(2, round((sqrt(2)+1)^n))` -/
def P11048117369503760128.Spec : Prop :=
  ∀ n, (P11048117369503760128.a n : ℤ) = A170931 n

end A170931

/-! ## A170931.P644092299235860704

`4*(a(n-1)-floor(-a(n-2)))` with `a(0)=2, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A170931.P644092299235860704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A170931.P644092299235860704

namespace A170931

/-- `4*(a(n-1)-floor(-a(n-2)))` -/
def P644092299235860704.Spec : Prop :=
  ∀ n, P644092299235860704.a n = A170931 n

end A170931

/-! ## A170931.P13025533481347904278

`4*(a(n-1)-round(-a(n-2)))` with `a(0)=2, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A170931.P13025533481347904278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 * (a (n - 1) - (-a (n - 2)))

end

end A170931.P13025533481347904278

namespace A170931

/-- `4*(a(n-1)-round(-a(n-2)))` -/
def P13025533481347904278.Spec : Prop :=
  ∀ n, P13025533481347904278.a n = A170931 n

end A170931

/-! ## A170931.P14979070651914313027

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=2, a(1)=4`
-/

namespace A170931.P14979070651914313027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A170931.P14979070651914313027

namespace A170931

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P14979070651914313027.Spec : Prop :=
  ∀ n, P14979070651914313027.a n = (A170931 n : ℚ)

end A170931

/-! ## A170931.P8419870821820180485

`2^(n+1)*A001333(n)`
-/

namespace A170931.P8419870821820180485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A001333 n

end

end A170931.P8419870821820180485

namespace A170931

/-- `2^(n+1)*A001333(n)` -/
def P8419870821820180485.Spec : Prop :=
  ∀ n, P8419870821820180485.a n = A170931 n

end A170931

/-! ## A170931.P16773770368633692418

`A002203(n)*A011782(n+1)`
-/

namespace A170931.P16773770368633692418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n * A011782 (n + 1)

end

end A170931.P16773770368633692418

namespace A170931

/-- `A002203(n)*A011782(n+1)` -/
def P16773770368633692418.Spec : Prop :=
  ∀ n, P16773770368633692418.a n = A170931 n

end A170931

/-! ## A170931.P16835778041320543413

`(A100227(n)+1)*A000079(n)`
-/

namespace A170931.P16835778041320543413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100227 n + 1) * A000079 n

end

end A170931.P16835778041320543413

namespace A170931

/-- `(A100227(n)+1)*A000079(n)` -/
def P16835778041320543413.Spec : Prop :=
  ∀ n, P16835778041320543413.a n = A170931 n

end A170931

/-! ## A170931.P607443306109872069

`A002203(n)*A131577(n+1)`
-/

namespace A170931.P607443306109872069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n * A131577 (n + 1)

end

end A170931.P607443306109872069

namespace A170931

/-- `A002203(n)*A131577(n+1)` -/
def P607443306109872069.Spec : Prop :=
  ∀ n, P607443306109872069.a n = A170931 n

end A170931

/-! ## A170931.P8737504220334642768

`A001333(n)*A011782(n+2)`
-/

namespace A170931.P8737504220334642768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A011782 (n + 2)

end

end A170931.P8737504220334642768

namespace A170931

/-- `A001333(n)*A011782(n+2)` -/
def P8737504220334642768.Spec : Prop :=
  ∀ n, P8737504220334642768.a n = A170931 n

end A170931

/-! ## A170931.P13407726302615502188

`A001333(n)*A131577(n+2)`
-/

namespace A170931.P13407726302615502188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A131577 (n + 2)

end

end A170931.P13407726302615502188

namespace A170931

/-- `A001333(n)*A131577(n+2)` -/
def P13407726302615502188.Spec : Prop :=
  ∀ n, P13407726302615502188.a n = A170931 n

end A170931

/-! ## A170931.P12861944716646707574

`2*A000079(n)*A001333(n)`
-/

namespace A170931.P12861944716646707574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n * A001333 n)

end

end A170931.P12861944716646707574

namespace A170931

/-- `2*A000079(n)*A001333(n)` -/
def P12861944716646707574.Spec : Prop :=
  ∀ n, P12861944716646707574.a n = A170931 n

end A170931

/-! ## A170931.P8726469071621554044

`A002203(n)*A016116(2*n)`
-/

namespace A170931.P8726469071621554044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n * A016116 (2 * n)

end

end A170931.P8726469071621554044

namespace A170931

/-- `A002203(n)*A016116(2*n)` -/
def P8726469071621554044.Spec : Prop :=
  ∀ n, P8726469071621554044.a n = A170931 n

end A170931

/-! ## A170931.P12739424337492857668

`A002203(n)*A077957(2*n)`
-/

namespace A170931.P12739424337492857668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n * A077957 (2 * n)

end

end A170931.P12739424337492857668

namespace A170931

/-- `A002203(n)*A077957(2*n)` -/
def P12739424337492857668.Spec : Prop :=
  ∀ n, P12739424337492857668.a n = A170931 n

end A170931

/-! ## A170931.P5258882141292060348

`2*A011782(n)*A099425(n)`
-/

namespace A170931.P5258882141292060348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n * A099425 n)

end

end A170931.P5258882141292060348

namespace A170931

/-- `2*A011782(n)*A099425(n)` -/
def P5258882141292060348.Spec : Prop :=
  ∀ n, P5258882141292060348.a n = A170931 n

end A170931

/-!
# A170932: a(n) = binomial(n + 8, 8)*7^n .

The programs for A170932, the canonical program `A170932.P17136834096718548698` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170932 has offset 0).

The definition of A170932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*7^n` (program `A170932.P17136834096718548698`, by `A170932.P17136834096718548698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170932.P17136834096718548698

`C(n+8, 8)*7^n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170932

/-- `C(n+8, 8)*7^n` -/
def P17136834096718548698.Spec : Prop :=
  ∀ n, (P17136834096718548698.a n : ℤ) = A170932 n

theorem P17136834096718548698.correct : P17136834096718548698.Spec := by
  intro n
  simp only [A170932]

end A170932

/-! ## A170932.P2502033366655730068

`4*(14/n+2)*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A170932.P2502033366655730068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((14 / (n : ℚ) + 2) * a (n - 1)) - a (n - 1)

end

end A170932.P2502033366655730068

namespace A170932

/-- `4*(14/n+2)*a(n-1)-a(n-1)` -/
def P2502033366655730068.Spec : Prop :=
  ∀ n, P2502033366655730068.a n = (A170932 n : ℚ)

end A170932

/-! ## A170932.P8316006471282279971

`(A165618(n)+1)*7^n`
-/

namespace A170932.P8316006471282279971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A165618 n + 1) * (7 ^ n : ℤ)

end

end A170932.P8316006471282279971

namespace A170932

/-- `(A165618(n)+1)*7^n` -/
def P8316006471282279971.Spec : Prop :=
  ∀ n, P8316006471282279971.a n = A170932 n

theorem P8316006471282279971.correct : P8316006471282279971.Spec := by
  intro n
  simp only [A170932, Nat.add_sub_cancel, A170932.P8316006471282279971.a, A170932.P17136834096718548698.a, A165618, A165618.P15483055962896292448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170932

/-! ## A170932.P7726224488804416486

`7^n*A000581(n+8)`
-/

namespace A170932.P7726224488804416486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000581 (n + 8)

end

end A170932.P7726224488804416486

namespace A170932

/-- `7^n*A000581(n+8)` -/
def P7726224488804416486.Spec : Prop :=
  ∀ n, P7726224488804416486.a n = A170932 n

theorem P7726224488804416486.correct : P7726224488804416486.Spec := by
  intro n
  simp only [A170932, Nat.add_sub_cancel, A170932.P7726224488804416486.a, A170932.P17136834096718548698.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A170932

/-! ## A170932.P953648783668153935

`7^n*∑[A000580(n+7)]`
-/

namespace A170932.P953648783668153935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A170932.P953648783668153935

namespace A170932

/-- `7^n*∑[A000580(n+7)]` -/
def P953648783668153935.Spec : Prop :=
  ∀ n, P953648783668153935.a n = A170932 n

end A170932

/-! ## A170932.P8979161452873119523

`A027466(eq[8, A002262(n)])`
-/

namespace A170932.P8979161452873119523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A170932.P8979161452873119523

namespace A170932

/-- `A027466(eq[8, A002262(n)])` -/
def P8979161452873119523.Spec : Prop :=
  ∀ n, P8979161452873119523.a n = A170932 n

end A170932

/-! ## A170932.P5222147503051886570

`A027466(eq[9, A002260(n+1)])`
-/

namespace A170932.P5222147503051886570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A170932.P5222147503051886570

namespace A170932

/-- `A027466(eq[9, A002260(n+1)])` -/
def P5222147503051886570.Spec : Prop :=
  ∀ n, P5222147503051886570.a n = A170932 n

end A170932

/-! ## A170932.P2510794914206334070

`∑[A000580(n+7)]*A000420(n)`
-/

namespace A170932.P2510794914206334070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000420 n

end

end A170932.P2510794914206334070

namespace A170932

/-- `∑[A000580(n+7)]*A000420(n)` -/
def P2510794914206334070.Spec : Prop :=
  ∀ n, P2510794914206334070.a n = A170932 n

end A170932

/-! ## A170932.P12816754363714377858

`7^n*A007318(A000217(n+8)+8)`
-/

namespace A170932.P12816754363714377858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A007318 (A000217 (n + 8) + 8).toNat

end

end A170932.P12816754363714377858

namespace A170932

/-- `7^n*A007318(A000217(n+8)+8)` -/
def P12816754363714377858.Spec : Prop :=
  ∀ n, P12816754363714377858.a n = A170932 n

end A170932

/-! ## A170932.P16037853648129993957

`A007318(A055999(n+6)-3)*A000420(n)`
-/

namespace A170932.P16037853648129993957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055999 (n + 6) - 3).toNat * A000420 n

end

end A170932.P16037853648129993957

namespace A170932

/-- `A007318(A055999(n+6)-3)*A000420(n)` -/
def P16037853648129993957.Spec : Prop :=
  ∀ n, P16037853648129993957.a n = A170932 n

end A170932

/-! ## A170932.P8566345980840821335

`A013614(eq[8, A025581(n)])`
-/

namespace A170932.P8566345980840821335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A170932.P8566345980840821335

namespace A170932

/-- `A013614(eq[8, A025581(n)])` -/
def P8566345980840821335.Spec : Prop :=
  ∀ n, P8566345980840821335.a n = A170932 n

end A170932

/-!
# A170933: a(n) = A000930(n) + A000930(n+3) + 4.

The programs for A170933, the canonical program `A170933.P2332904652128649682` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170933 has offset 0).

The definition of A170933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n)+A000930(n+3)+4` (program `A170933.P2332904652128649682`, by `A170933.P2332904652128649682.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170933.P2500592738712715149

`ogf((7-6x-5x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A170933.P2500592738712715149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -6, 0, -5] [1, -2, 1, -1, 1] n

end

end A170933.P2500592738712715149

namespace A170933

/-- `ogf((7-6x-5x^3)/(1-2x+x^2-x^3+x^4))` -/
def P2500592738712715149.Spec : Prop :=
  ∀ n, P2500592738712715149.a n = A170933 n

end A170933

/-! ## A170933.P14777742742801731516

`a(n-1)+a(n-3)-4` with `a(0)=7, a(1)=8, a(2)=9`
-/

namespace A170933.P14777742742801731516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8, 9] fun n a =>
  a (n - 1) + a (n - 3) - 4

end

end A170933.P14777742742801731516

namespace A170933

/-- `a(n-1)+a(n-3)-4` -/
def P14777742742801731516.Spec : Prop :=
  ∀ n, P14777742742801731516.a n = A170933 n

end A170933

/-! ## A170933.P2332904652128649682

`A000930(n)+A000930(n+3)+4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A170933

/-- `A000930(n)+A000930(n+3)+4` -/
def P2332904652128649682.Spec : Prop :=
  ∀ n, P2332904652128649682.a n = A170933 n

theorem P2332904652128649682.correct : P2332904652128649682.Spec := by
  intro n
  simp only [A170933]

end A170933

/-! ## A170933.P2507394288705145808

`a(n-1)-(4-a(n-3))` with `a(0)=7, a(1)=8, a(2)=9`
-/

namespace A170933.P2507394288705145808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8, 9] fun n a =>
  a (n - 1) - (4 - a (n - 3))

end

end A170933.P2507394288705145808

namespace A170933

/-- `a(n-1)-(4-a(n-3))` -/
def P2507394288705145808.Spec : Prop :=
  ∀ n, P2507394288705145808.a n = A170933 n

end A170933

/-! ## A170933.P16972883235456261450

`A288429(n+1)+3`
-/

namespace A170933.P16972883235456261450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288429 (n + 1) + 3

end

end A170933.P16972883235456261450

namespace A170933

/-- `A288429(n+1)+3` -/
def P16972883235456261450.Spec : Prop :=
  ∀ n, P16972883235456261450.a n = A170933 n

end A170933

/-! ## A170933.P8668338764215609239

`A179070(n+4)+4`
-/

namespace A170933.P8668338764215609239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179070 (n + 4) + 4

end

end A170933.P8668338764215609239

namespace A170933

/-- `A179070(n+4)+4` -/
def P8668338764215609239.Spec : Prop :=
  ∀ n, P8668338764215609239.a n = A170933 n

end A170933

/-! ## A170933.P17867919453859828595

`A196382(n+3)+5`
-/

namespace A170933.P17867919453859828595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196382 (n + 3) + 5

end

end A170933.P17867919453859828595

namespace A170933

/-- `A196382(n+3)+5` -/
def P17867919453859828595.Spec : Prop :=
  ∀ n, P17867919453859828595.a n = A170933 n

end A170933

/-! ## A170933.P4383158321780650779

`A069241(n)+6+n`
-/

namespace A170933.P4383158321780650779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 n + 6 + (n : ℤ)

end

end A170933.P4383158321780650779

namespace A170933

/-- `A069241(n)+6+n` -/
def P4383158321780650779.Spec : Prop :=
  ∀ n, P4383158321780650779.a n = A170933 n

end A170933

/-! ## A170933.P13915926002684614635

`A069241(n)+A020715(n)`
-/

namespace A170933.P13915926002684614635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 n + A020715 n

end

end A170933.P13915926002684614635

namespace A170933

/-- `A069241(n)+A020715(n)` -/
def P13915926002684614635.Spec : Prop :=
  ∀ n, P13915926002684614635.a n = A170933 n

end A170933

/-! ## A170933.P14985619968394765968

`∑[A003410(n)-A058278(n+2)]+6`
-/

namespace A170933.P14985619968394765968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n - A058278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A170933.P14985619968394765968

namespace A170933

/-- `∑[A003410(n)-A058278(n+2)]+6` -/
def P14985619968394765968.Spec : Prop :=
  ∀ n, P14985619968394765968.a n = A170933 n

end A170933

/-! ## A170933.P15837461482380491432

`∑[record[A135851(n+1)]-A135851(n)]+6`
-/

namespace A170933.P15837461482380491432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A135851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A170933.P15837461482380491432

namespace A170933

/-- `∑[record[A135851(n+1)]-A135851(n)]+6` -/
def P15837461482380491432.Spec : Prop :=
  ∀ n, P15837461482380491432.a n = A170933 n

end A170933

/-! ## A170933.P2495773368251661316

`A048591(n)-A164316(n)`
-/

namespace A170933.P2495773368251661316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048591 n - A164316 n

end

end A170933.P2495773368251661316

namespace A170933

/-- `A048591(n)-A164316(n)` -/
def P2495773368251661316.Spec : Prop :=
  ∀ n, P2495773368251661316.a n = A170933 n

end A170933

/-! ## A170933.P10181939681879225619

`sqrt(A183345(n+2))+4`
-/

namespace A170933.P10181939681879225619
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A183345 (n + 2) : ℝ) + 4

end

end A170933.P10181939681879225619

namespace A170933

/-- `sqrt(A183345(n+2))+4` -/
def P10181939681879225619.Spec : Prop :=
  ∀ n, P10181939681879225619.a n = (A170933 n : ℝ)

end A170933

/-!
# A170934: a(n) = b(n) + b(n+1) + 2, where b() = A000930().

The programs for A170934, the canonical program `A170934.P13846523480904168990` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170934 has offset 0).

The definition of A170934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170934.P13944475042448925322

`ogf((4-4x+x^2-3x^3)/(1-2x+x^2-x^3+x^4))`
-/

namespace A170934.P13944475042448925322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, 1, -3] [1, -2, 1, -1, 1] n

end

end A170934.P13944475042448925322

namespace A170934

/-- `ogf((4-4x+x^2-3x^3)/(1-2x+x^2-x^3+x^4))` -/
def P13944475042448925322.Spec : Prop :=
  ∀ n, P13944475042448925322.a n = A170934 n

end A170934

/-! ## A170934.P13846523480904168990

`a(n-1)+a(n-3)-2` with `a(0)=4, a(1)=4, a(2)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170934

/-- `a(n-1)+a(n-3)-2` -/
def P13846523480904168990.Spec : Prop :=
  ∀ n, P13846523480904168990.a n = A170934 n

theorem P13846523480904168990.correct : P13846523480904168990.Spec := by
  intro n
  simp only [A170934]

end A170934

/-! ## A170934.P11925825970761675559

`a(n-1)-(2-a(n-3))` with `a(0)=4, a(1)=4, a(2)=5`
-/

namespace A170934.P11925825970761675559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 5] fun n a =>
  a (n - 1) - (2 - a (n - 3))

end

end A170934.P11925825970761675559

namespace A170934

/-- `a(n-1)-(2-a(n-3))` -/
def P11925825970761675559.Spec : Prop :=
  ∀ n, P11925825970761675559.a n = A170934 n

theorem P11925825970761675559.correct : P11925825970761675559.Spec := by
  intro n
  simp only [A170934, Nat.add_sub_cancel, A170934.P11925825970761675559.a, A170934.P13846523480904168990.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A170934

/-! ## A170934.P13511453415699760110

`A097333(n+1)+2`
-/

namespace A170934.P13511453415699760110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (n + 1) + 2

end

end A170934.P13511453415699760110

namespace A170934

/-- `A097333(n+1)+2` -/
def P13511453415699760110.Spec : Prop :=
  ∀ n, P13511453415699760110.a n = A170934 n

end A170934

/-! ## A170934.P18071855867850810753

`A038718(n+1)+3`
-/

namespace A170934.P18071855867850810753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038718 (n + 1) + 3

end

end A170934.P18071855867850810753

namespace A170934

/-- `A038718(n+1)+3` -/
def P18071855867850810753.Spec : Prop :=
  ∀ n, P18071855867850810753.a n = A170934 n

end A170934

/-! ## A170934.P10213374021687747154

`A058278(n+4)+2`
-/

namespace A170934.P10213374021687747154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 4) + 2

end

end A170934.P10213374021687747154

namespace A170934

/-- `A058278(n+4)+2` -/
def P10213374021687747154.Spec : Prop :=
  ∀ n, P10213374021687747154.a n = A170934 n

end A170934

/-! ## A170934.P16561590564602388599

`abs(Δ[A199804(n)])+2`
-/

namespace A170934.P16561590564602388599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 2

end

end A170934.P16561590564602388599

namespace A170934

/-- `abs(Δ[A199804(n)])+2` -/
def P16561590564602388599.Spec : Prop :=
  ∀ n, P16561590564602388599.a n = A170934 n

end A170934

/-! ## A170934.P7171314753742867174

`∑[A226916(2*(n+2))]+3`
-/

namespace A170934.P7171314753742867174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A170934.P7171314753742867174

namespace A170934

/-- `∑[A226916(2*(n+2))]+3` -/
def P7171314753742867174.Spec : Prop :=
  ∀ n, P7171314753742867174.a n = A170934 n

end A170934

/-! ## A170934.P3332797609166321081

`A003410(A028310(n))+2`
-/

namespace A170934.P3332797609166321081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (A028310 n).toNat + 2

end

end A170934.P3332797609166321081

namespace A170934

/-- `A003410(A028310(n))+2` -/
def P3332797609166321081.Spec : Prop :=
  ∀ n, P3332797609166321081.a n = A170934 n

end A170934

/-! ## A170934.P15409717085008749351

`A226916(A020744(n+1))+2`
-/

namespace A170934.P15409717085008749351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (A020744 (n + 1)).toNat + 2

end

end A170934.P15409717085008749351

namespace A170934

/-- `A226916(A020744(n+1))+2` -/
def P15409717085008749351.Spec : Prop :=
  ∀ n, P15409717085008749351.a n = A170934 n

end A170934

/-! ## A170934.P10167403786232190071

`A003410(n)+A054977(n)+1`
-/

namespace A170934.P10167403786232190071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n + (A054977 n + 1)

end

end A170934.P10167403786232190071

namespace A170934

/-- `A003410(n)+A054977(n)+1` -/
def P10167403786232190071.Spec : Prop :=
  ∀ n, P10167403786232190071.a n = A170934 n

end A170934

/-! ## A170934.P14019946655505847402

`A000930(n)+A068921(n)+2`
-/

namespace A170934.P14019946655505847402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n + (A068921 n + 2)

end

end A170934.P14019946655505847402

namespace A170934

/-- `A000930(n)+A068921(n)+2` -/
def P14019946655505847402.Spec : Prop :=
  ∀ n, P14019946655505847402.a n = A170934 n

end A170934

/-! ## A170934.P1280868642650407729

`4-∑[A097333(n)-A003410(n)]`
-/

namespace A170934.P1280868642650407729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n - A003410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170934.P1280868642650407729

namespace A170934

/-- `4-∑[A097333(n)-A003410(n)]` -/
def P1280868642650407729.Spec : Prop :=
  ∀ n, P1280868642650407729.a n = A170934 n

end A170934

/-! ## A170934.P3175253689393801453

`A078012(n)+record[A078012(n)+2]`
-/

namespace A170934.P3175253689393801453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170934.P3175253689393801453

namespace A170934

/-- `A078012(n)+record[A078012(n)+2]` -/
def P3175253689393801453.Spec : Prop :=
  ∀ n, P3175253689393801453.a n = A170934 n

end A170934

/-! ## A170934.P6832375754599795865

`A107458(n)+record[A277253(n)+2]`
-/

namespace A170934.P6832375754599795865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170934.P6832375754599795865

namespace A170934

/-- `A107458(n)+record[A277253(n)+2]` -/
def P6832375754599795865.Spec : Prop :=
  ∀ n, P6832375754599795865.a n = A170934 n

end A170934

/-! ## A170934.P7496933001199060819

`A000930(n+1)+A000930(n)+2`
-/

namespace A170934.P7496933001199060819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) + (A000930 n + 2)

end

end A170934.P7496933001199060819

namespace A170934

/-- `A000930(n+1)+A000930(n)+2` -/
def P7496933001199060819.Spec : Prop :=
  ∀ n, P7496933001199060819.a n = A170934 n

end A170934

/-! ## A170934.P2264993174468849640

`A078012(n)+∑[A078012(n+2)]+3`
-/

namespace A170934.P2264993174468849640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n + ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A170934.P2264993174468849640

namespace A170934

/-- `A078012(n)+∑[A078012(n+2)]+3` -/
def P2264993174468849640.Spec : Prop :=
  ∀ n, P2264993174468849640.a n = A170934 n

end A170934

/-! ## A170934.P1987596960289058315

`A226275(n+1)+2-A185012(n+1)`
-/

namespace A170934.P1987596960289058315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226275 (n + 1) + (2 - A185012 (n + 1))

end

end A170934.P1987596960289058315

namespace A170934

/-- `A226275(n+1)+2-A185012(n+1)` -/
def P1987596960289058315.Spec : Prop :=
  ∀ n, P1987596960289058315.a n = A170934 n

end A170934

/-! ## A170934.P17032698688078086201

`A003410(n)+A000034(A008574(n))+1`
-/

namespace A170934.P17032698688078086201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n + (A000034 (A008574 n).toNat + 1)

end

end A170934.P17032698688078086201

namespace A170934

/-- `A003410(n)+A000034(A008574(n))+1` -/
def P17032698688078086201.Spec : Prop :=
  ∀ n, P17032698688078086201.a n = A170934 n

end A170934

/-! ## A170934.P15710023925371011478

`A170933(n)-a(n-1)` with `a(0)=4`
-/

namespace A170934.P15710023925371011478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A170933 n - a (n - 1)

end

end A170934.P15710023925371011478

namespace A170934

/-- `A170933(n)-a(n-1)` -/
def P15710023925371011478.Spec : Prop :=
  ∀ n, P15710023925371011478.a n = A170934 n

end A170934

/-!
# A170935: b(n)*b(n+1), where b() = A000930().

The programs for A170935, the canonical program `A170935.P13178211912521833949` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170935 has offset 0).

The definition of A170935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170935.P13178211912521833949

`ogf(1/(1-x-x^2-3x^3-x^4+x^5+x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170935

/-- `ogf(1/(1-x-x^2-3x^3-x^4+x^5+x^6))` -/
def P13178211912521833949.Spec : Prop :=
  ∀ n, P13178211912521833949.a n = A170935 n

theorem P13178211912521833949.correct : P13178211912521833949.Spec := by
  intro n
  simp only [A170935]

end A170935

/-! ## A170935.P1298337015902180825

`A224809(Δ[n²])`
-/

namespace A170935.P1298337015902180825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A170935.P1298337015902180825

namespace A170935

/-- `A224809(Δ[n²])` -/
def P1298337015902180825.Spec : Prop :=
  ∀ n, P1298337015902180825.a n = A170935 n

end A170935

/-! ## A170935.P17235305529412538779

`A000930(n)*A068921(n)`
-/

namespace A170935.P17235305529412538779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A068921 n

end

end A170935.P17235305529412538779

namespace A170935

/-- `A000930(n)*A068921(n)` -/
def P17235305529412538779.Spec : Prop :=
  ∀ n, P17235305529412538779.a n = A170935 n

end A170935

/-! ## A170935.P8868540093665367783

`A000930(n+1)*A000930(n)`
-/

namespace A170935.P8868540093665367783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) * A000930 n

end

end A170935.P8868540093665367783

namespace A170935

/-- `A000930(n+1)*A000930(n)` -/
def P8868540093665367783.Spec : Prop :=
  ∀ n, P8868540093665367783.a n = A170935 n

end A170935

/-! ## A170935.P14133496986986963212

`A068921(n)*A078012(n+3)`
-/

namespace A170935.P14133496986986963212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n * A078012 (n + 3)

end

end A170935.P14133496986986963212

namespace A170935

/-- `A068921(n)*A078012(n+3)` -/
def P14133496986986963212.Spec : Prop :=
  ∀ n, P14133496986986963212.a n = A170935 n

end A170935

/-! ## A170935.P6900495061384244917

`∑[A078012(n)]*Δ[A077868(n)]`
-/

namespace A170935.P6900495061384244917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A170935.P6900495061384244917

namespace A170935

/-- `∑[A078012(n)]*Δ[A077868(n)]` -/
def P6900495061384244917.Spec : Prop :=
  ∀ n, P6900495061384244917.a n = A170935 n

end A170935

/-! ## A170935.P2186162205003359721

`abs(A199804(n+1)*A199804(n))`
-/

namespace A170935.P2186162205003359721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199804 (n + 1) * A199804 n|

end

end A170935.P2186162205003359721

namespace A170935

/-- `abs(A199804(n+1)*A199804(n))` -/
def P2186162205003359721.Spec : Prop :=
  ∀ n, P2186162205003359721.a n = A170935 n

end A170935

/-! ## A170935.P2613940510916452234

`Δ[A068921(n+1)]*A068921(n)`
-/

namespace A170935.P2613940510916452234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A068921 n

end

end A170935.P2613940510916452234

namespace A170935

/-- `Δ[A068921(n+1)]*A068921(n)` -/
def P2613940510916452234.Spec : Prop :=
  ∀ n, P2613940510916452234.a n = A170935 n

end A170935

/-! ## A170935.P14565313163769054612

`Δ[A077868(n)]*A226916(2*n+7)`
-/

namespace A170935.P14565313163769054612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A226916 (2 * n + 7)

end

end A170935.P14565313163769054612

namespace A170935

/-- `Δ[A077868(n)]*A226916(2*n+7)` -/
def P14565313163769054612.Spec : Prop :=
  ∀ n, P14565313163769054612.a n = A170935 n

end A170935

/-! ## A170935.P1939069204016009889

`A108104(2*(n+1))*A108104(2*n)`
-/

namespace A170935.P1939069204016009889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (2 * (n + 1)) * A108104 (2 * n)

end

end A170935.P1939069204016009889

namespace A170935

/-- `A108104(2*(n+1))*A108104(2*n)` -/
def P1939069204016009889.Spec : Prop :=
  ∀ n, P1939069204016009889.a n = A170935 n

end A170935

/-! ## A170935.P14593432653250377656

`A224809(2*n+1)+A079977(2*n+1)`
-/

namespace A170935.P14593432653250377656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 (2 * n + 1) + A079977 (2 * n + 1)

end

end A170935.P14593432653250377656

namespace A170935

/-- `A224809(2*n+1)+A079977(2*n+1)` -/
def P14593432653250377656.Spec : Prop :=
  ∀ n, P14593432653250377656.a n = A170935 n

end A170935

/-! ## A170935.P13937359153428603284

`A068921(A289207(n+1))*A068921(n)`
-/

namespace A170935.P13937359153428603284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A289207 (n + 1)).toNat * A068921 n

end

end A170935.P13937359153428603284

namespace A170935

/-- `A068921(A289207(n+1))*A068921(n)` -/
def P13937359153428603284.Spec : Prop :=
  ∀ n, P13937359153428603284.a n = A170935 n

end A170935

/-! ## A170935.P8315016976191761690

`A068921(A004273(n)-n)*A068921(n)`
-/

namespace A170935.P8315016976191761690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A004273 n - (n : ℤ)).toNat * A068921 n

end

end A170935.P8315016976191761690

namespace A170935

/-- `A068921(A004273(n)-n)*A068921(n)` -/
def P8315016976191761690.Spec : Prop :=
  ∀ n, P8315016976191761690.a n = A170935 n

end A170935

/-! ## A170935.P10401825866711937053

`A068921(n-A057427(n))*A068921(n)`
-/

namespace A170935.P10401825866711937053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 ((n : ℤ) - A057427 n).toNat * A068921 n

end

end A170935.P10401825866711937053

namespace A170935

/-- `A068921(n-A057427(n))*A068921(n)` -/
def P10401825866711937053.Spec : Prop :=
  ∀ n, P10401825866711937053.a n = A170935 n

end A170935

/-! ## A170935.P1289073926914286142

`A068921(A233583(n+1)-1)*A068921(n)`
-/

namespace A170935.P1289073926914286142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A233583 (n + 1) - 1).toNat * A068921 n

end

end A170935.P1289073926914286142

namespace A170935

/-- `A068921(A233583(n+1)-1)*A068921(n)` -/
def P1289073926914286142.Spec : Prop :=
  ∀ n, P1289073926914286142.a n = A170935 n

end A170935

/-! ## A170935.P394425969031456217

`(A107458(n)+A013979(n+1))*A068921(n)`
-/

namespace A170935.P394425969031456217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107458 n + A013979 (n + 1)) * A068921 n

end

end A170935.P394425969031456217

namespace A170935

/-- `(A107458(n)+A013979(n+1))*A068921(n)` -/
def P394425969031456217.Spec : Prop :=
  ∀ n, P394425969031456217.a n = A170935 n

end A170935

/-! ## A170935.P14047158700561935319

`A068921(A004280(n+1)-n)*A068921(n)`
-/

namespace A170935.P14047158700561935319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (A004280 (n + 1) - (n : ℤ)).toNat * A068921 n

end

end A170935.P14047158700561935319

namespace A170935

/-- `A068921(A004280(n+1)-n)*A068921(n)` -/
def P14047158700561935319.Spec : Prop :=
  ∀ n, P14047158700561935319.a n = A170935 n

end A170935

/-! ## A170935.P8958429310144536111

`sqrt(A233247(n+1)*A233247(n))`
-/

namespace A170935.P8958429310144536111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A233247 (n + 1) * A233247 n : ℝ)

end

end A170935.P8958429310144536111

namespace A170935

/-- `sqrt(A233247(n+1)*A233247(n))` -/
def P8958429310144536111.Spec : Prop :=
  ∀ n, P8958429310144536111.a n = (A170935 n : ℝ)

end A170935

/-!
# A170938: a(n) = 4^n+2^n+2.

The programs for A170938, the canonical program `A170938.P7990225522369854519` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170938 has offset 0).

The definition of A170938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+2^n+2` (program `A170938.P7990225522369854519`, by `A170938.P7990225522369854519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170938.P7990225522369854519

`4^n+2^n+2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170938

/-- `4^n+2^n+2` -/
def P7990225522369854519.Spec : Prop :=
  ∀ n, (P7990225522369854519.a n : ℤ) = A170938 n

theorem P7990225522369854519.correct : P7990225522369854519.Spec := by
  intro n
  simp only [A170938]

end A170938

/-! ## A170938.P16448065014229023230

`ogf((4-20x+22x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A170938.P16448065014229023230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -20, 22] [1, -7, 14, -8] n

end

end A170938.P16448065014229023230

namespace A170938

/-- `ogf((4-20x+22x^2)/(1-7x+14x^2-8x^3))` -/
def P16448065014229023230.Spec : Prop :=
  ∀ n, P16448065014229023230.a n = A170938 n

end A170938

/-! ## A170938.P6378481397442514977

`-xor(-xor(2, (2^n)²), 2^n)`
-/

namespace A170938.P6378481397442514977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(Nat.xor 2 ((2 ^ n) ^ 2) : ℤ)) (2 ^ n : ℤ)

end

end A170938.P6378481397442514977

namespace A170938

/-- `-xor(-xor(2, (2^n)²), 2^n)` -/
def P6378481397442514977.Spec : Prop :=
  ∀ n, P6378481397442514977.a n = A170938 n

end A170938

/-! ## A170938.P3120630540578912827

`∑[4*a(n-1)-2^(n-1)]` with `a(0)=4, a(1)=4`
-/

namespace A170938.P3120630540578912827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  4 * f1 (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170938.P3120630540578912827

namespace A170938

/-- `∑[4*a(n-1)-2^(n-1)]` -/
def P3120630540578912827.Spec : Prop :=
  ∀ n, P3120630540578912827.a n = (A170938 n : ℚ)

end A170938

/-! ## A170938.P17183499001186249654

`2*A281481(n)`
-/

namespace A170938.P17183499001186249654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281481 n

end

end A170938.P17183499001186249654

namespace A170938

/-- `2*A281481(n)` -/
def P17183499001186249654.Spec : Prop :=
  ∀ n, P17183499001186249654.a n = A170938 n

end A170938

/-! ## A170938.P17720721509169880261

`2*(A007582(n)+1)`
-/

namespace A170938.P17720721509169880261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007582 n + 1)

end

end A170938.P17720721509169880261

namespace A170938

/-- `2*(A007582(n)+1)` -/
def P17720721509169880261.Spec : Prop :=
  ∀ n, P17720721509169880261.a n = A170938 n

end A170938

/-! ## A170938.P4407363547715690441

`lcm(2, A001576(n)+1)`
-/

namespace A170938.P4407363547715690441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001576 n + 1)

end

end A170938.P4407363547715690441

namespace A170938

/-- `lcm(2, A001576(n)+1)` -/
def P4407363547715690441.Spec : Prop :=
  ∀ n, (P4407363547715690441.a n : ℤ) = A170938 n

end A170938

/-! ## A170938.P13592300628667639348

`2*(Δ[A007581(n)]+1)`
-/

namespace A170938.P13592300628667639348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A170938.P13592300628667639348

namespace A170938

/-- `2*(Δ[A007581(n)]+1)` -/
def P13592300628667639348.Spec : Prop :=
  ∀ n, P13592300628667639348.a n = A170938 n

end A170938

/-! ## A170938.P3142577188965843649

`2*(Δ[A076024(n)]+1)`
-/

namespace A170938.P3142577188965843649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A170938.P3142577188965843649

namespace A170938

/-- `2*(Δ[A076024(n)]+1)` -/
def P3142577188965843649.Spec : Prop :=
  ∀ n, P3142577188965843649.a n = A170938 n

end A170938

/-! ## A170938.P14653494867635864212

`2*(A005418(Δ[n²])+1)`
-/

namespace A170938.P14653494867635864212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A170938.P14653494867635864212

namespace A170938

/-- `2*(A005418(Δ[n²])+1)` -/
def P14653494867635864212.Spec : Prop :=
  ∀ n, P14653494867635864212.a n = A170938 n

end A170938

/-! ## A170938.P13684707654888589496

`2*(Δ[A124303(n+1)]+1)`
-/

namespace A170938.P13684707654888589496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A170938.P13684707654888589496

namespace A170938

/-- `2*(Δ[A124303(n+1)]+1)` -/
def P13684707654888589496.Spec : Prop :=
  ∀ n, P13684707654888589496.a n = A170938 n

end A170938

/-! ## A170938.P352599571064764021

`2*(A113980(2*n+1)+1)`
-/

namespace A170938.P352599571064764021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113980 (2 * n + 1) + 1)

end

end A170938.P352599571064764021

namespace A170938

/-- `2*(A113980(2*n+1)+1)` -/
def P352599571064764021.Spec : Prop :=
  ∀ n, P352599571064764021.a n = A170938 n

end A170938

/-! ## A170938.P9482040534886100372

`2*(A137173(2*n+1)+1)`
-/

namespace A170938.P9482040534886100372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A137173 (2 * n + 1) + 1)

end

end A170938.P9482040534886100372

namespace A170938

/-- `2*(A137173(2*n+1)+1)` -/
def P9482040534886100372.Spec : Prop :=
  ∀ n, P9482040534886100372.a n = A170938 n

end A170938

/-! ## A170938.P15962531087260679146

`2*(A056326(2*n+1)+2)`
-/

namespace A170938.P15962531087260679146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056326 (2 * n + 1) + 2)

end

end A170938.P15962531087260679146

namespace A170938

/-- `2*(A056326(2*n+1)+2)` -/
def P15962531087260679146.Spec : Prop :=
  ∀ n, P15962531087260679146.a n = A170938 n

end A170938

/-! ## A170938.P9776502201638513308

`xor(A048578(n), A239679(n))`
-/

namespace A170938.P9776502201638513308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048578 n) (A239679 n)

end

end A170938.P9776502201638513308

namespace A170938

/-- `xor(A048578(n), A239679(n))` -/
def P9776502201638513308.Spec : Prop :=
  ∀ n, P9776502201638513308.a n = A170938 n

end A170938

/-! ## A170938.P328515243204931010

`2*(A131577(n)+A081294(n)+1)`
-/

namespace A170938.P328515243204931010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131577 n + A081294 n + 1)

end

end A170938.P328515243204931010

namespace A170938

/-- `2*(A131577(n)+A081294(n)+1)` -/
def P328515243204931010.Spec : Prop :=
  ∀ n, P328515243204931010.a n = A170938 n

end A170938

/-! ## A170938.P17599228068069696624

`(A001576(n)+1)*A001221(A105884(n+1))`
-/

namespace A170938.P17599228068069696624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001576 n + 1) * A001221 (A105884 (n + 1)).toNat

end

end A170938.P17599228068069696624

namespace A170938

/-- `(A001576(n)+1)*A001221(A105884(n+1))` -/
def P17599228068069696624.Spec : Prop :=
  ∀ n, P17599228068069696624.a n = A170938 n

end A170938

/-! ## A170938.P10522705752899999072

`(A085601(n)+3)/2`
-/

namespace A170938.P10522705752899999072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085601 n + 3 : ℚ) / 2

end

end A170938.P10522705752899999072

namespace A170938

/-- `(A085601(n)+3)/2` -/
def P10522705752899999072.Spec : Prop :=
  ∀ n, P10522705752899999072.a n = (A170938 n : ℚ)

theorem P10522705752899999072.correct : P10522705752899999072.Spec := by
  intro n
  simp only [A170938, Nat.add_sub_cancel, A170938.P10522705752899999072.a, A170938.P7990225522369854519.a, A085601, A085601.P6300401134310498953.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A170938

/-! ## A170938.P2421697712909498139

`(A281482(n)+5)/2`
-/

namespace A170938.P2421697712909498139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281482 n + 5 : ℚ) / 2

end

end A170938.P2421697712909498139

namespace A170938

/-- `(A281482(n)+5)/2` -/
def P2421697712909498139.Spec : Prop :=
  ∀ n, P2421697712909498139.a n = (A170938 n : ℚ)

end A170938

/-! ## A170938.P10913133605751444229

`(A343175(n+1)+3)/2`
-/

namespace A170938.P10913133605751444229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343175 (n + 1) + 3 : ℚ) / 2

end

end A170938.P10913133605751444229

namespace A170938

/-- `(A343175(n+1)+3)/2` -/
def P10913133605751444229.Spec : Prop :=
  ∀ n, P10913133605751444229.a n = (A170938 n : ℚ)

end A170938

/-!
# A170939: a(n) = 4^n - 2^n + 2.

The programs for A170939, the canonical program `A170939.P5981676099895761958` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170939 has offset 0).

The definition of A170939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n+2` (program `A170939.P5981676099895761958`, by `A170939.P5981676099895761958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170939.P5981676099895761958

`4^n-2^n+2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170939

/-- `4^n-2^n+2` -/
def P5981676099895761958.Spec : Prop :=
  ∀ n, P5981676099895761958.a n = A170939 n

theorem P5981676099895761958.correct : P5981676099895761958.Spec := by
  intro n
  simp only [A170939]

end A170939

/-! ## A170939.P13675481899292179866

`ogf((2-10x+14x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A170939.P13675481899292179866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, 14] [1, -7, 14, -8] n

end

end A170939.P13675481899292179866

namespace A170939

/-- `ogf((2-10x+14x^2)/(1-7x+14x^2-8x^3))` -/
def P13675481899292179866.Spec : Prop :=
  ∀ n, P13675481899292179866.a n = A170939 n

end A170939

/-! ## A170939.P10688159923330351106

`2*A134169(n)`
-/

namespace A170939.P10688159923330351106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134169 n

end

end A170939.P10688159923330351106

namespace A170939

/-- `2*A134169(n)` -/
def P10688159923330351106.Spec : Prop :=
  ∀ n, P10688159923330351106.a n = A170939 n

end A170939

/-! ## A170939.P8714119058237164257

`abs(xor(4^n-2^n, -2))`
-/

namespace A170939.P8714119058237164257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((4 ^ n : ℤ) - (2 ^ n : ℤ)) (-2)|

end

end A170939.P8714119058237164257

namespace A170939

/-- `abs(xor(4^n-2^n, -2))` -/
def P8714119058237164257.Spec : Prop :=
  ∀ n, P8714119058237164257.a n = A170939 n

end A170939

/-! ## A170939.P14380906906569754464

`-xor(4^n-2^n, -2)`
-/

namespace A170939.P14380906906569754464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((4 ^ n : ℤ) - (2 ^ n : ℤ)) (-2)

end

end A170939.P14380906906569754464

namespace A170939

/-- `-xor(4^n-2^n, -2)` -/
def P14380906906569754464.Spec : Prop :=
  ∀ n, P14380906906569754464.a n = A170939 n

end A170939

/-! ## A170939.P340363937894980842

`floor((2/acot(∑[2^(n-2)]))²)`
-/

namespace A170939.P340363937894980842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)) ^ 2⌋

end

end A170939.P340363937894980842

namespace A170939

/-- `floor((2/acot(∑[2^(n-2)]))²)` -/
def P340363937894980842.Spec : Prop :=
  ∀ n, P340363937894980842.a n = A170939 n

end A170939

/-! ## A170939.P5401556699487852858

`∑[2*(3*a(n-1)-4*a(n-2))]` with `a(0)=2, a(1)=2, a(2)=10`
-/

namespace A170939.P5401556699487852858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 10] fun n f1 =>
  2 * (3 * f1 (n - 1) - 4 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170939.P5401556699487852858

namespace A170939

/-- `∑[2*(3*a(n-1)-4*a(n-2))]` -/
def P5401556699487852858.Spec : Prop :=
  ∀ n, P5401556699487852858.a n = A170939 n

end A170939

/-! ## A170939.P4128559995325117746

`abs(A156589(n)+3)`
-/

namespace A170939.P4128559995325117746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156589 n + 3|

end

end A170939.P4128559995325117746

namespace A170939

/-- `abs(A156589(n)+3)` -/
def P4128559995325117746.Spec : Prop :=
  ∀ n, P4128559995325117746.a n = A170939 n

end A170939

/-! ## A170939.P2386804551896334208

`2*(A006516(n)+1)`
-/

namespace A170939.P2386804551896334208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006516 n + 1)

end

end A170939.P2386804551896334208

namespace A170939

/-- `2*(A006516(n)+1)` -/
def P2386804551896334208.Spec : Prop :=
  ∀ n, P2386804551896334208.a n = A170939 n

end A170939

/-! ## A170939.P3445820205679301775

`xor(1, A020515(n)+2)`
-/

namespace A170939.P3445820205679301775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A020515 n + 2)

end

end A170939.P3445820205679301775

namespace A170939

/-- `xor(1, A020515(n)+2)` -/
def P3445820205679301775.Spec : Prop :=
  ∀ n, P3445820205679301775.a n = A170939 n

end A170939

/-! ## A170939.P5618145666102236564

`xor(1, A020522(n)+3)`
-/

namespace A170939.P5618145666102236564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A020522 n + 3)

end

end A170939.P5618145666102236564

namespace A170939

/-- `xor(1, A020522(n)+3)` -/
def P5618145666102236564.Spec : Prop :=
  ∀ n, P5618145666102236564.a n = A170939 n

end A170939

/-! ## A170939.P6145565858372679459

`2*(Δ[A006095(n)]+1)`
-/

namespace A170939.P6145565858372679459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A170939.P6145565858372679459

namespace A170939

/-- `2*(Δ[A006095(n)]+1)` -/
def P6145565858372679459.Spec : Prop :=
  ∀ n, P6145565858372679459.a n = A170939 n

end A170939

/-! ## A170939.P13412084402321750217

`record[or(1, A279879(n))+1]`
-/

namespace A170939.P13412084402321750217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A279879 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170939.P13412084402321750217

namespace A170939

/-- `record[or(1, A279879(n))+1]` -/
def P13412084402321750217.Spec : Prop :=
  ∀ n, P13412084402321750217.a n = A170939 n

end A170939

/-! ## A170939.P7203496918759135525

`2*(A007179(2*n)+1)`
-/

namespace A170939.P7203496918759135525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007179 (2 * n) + 1)

end

end A170939.P7203496918759135525

namespace A170939

/-- `2*(A007179(2*n)+1)` -/
def P7203496918759135525.Spec : Prop :=
  ∀ n, P7203496918759135525.a n = A170939 n

end A170939

/-! ## A170939.P16449688179421467670

`2*(A137173(2*n)+1)`
-/

namespace A170939.P16449688179421467670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A137173 (2 * n) + 1)

end

end A170939.P16449688179421467670

namespace A170939

/-- `2*(A137173(2*n)+1)` -/
def P16449688179421467670.Spec : Prop :=
  ∀ n, P16449688179421467670.a n = A170939 n

end A170939

/-! ## A170939.P13308939333771589664

`2*(A154223(2*n+1)-n)`
-/

namespace A170939.P13308939333771589664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154223 (2 * n + 1) - (n : ℤ))

end

end A170939.P13308939333771589664

namespace A170939

/-- `2*(A154223(2*n+1)-n)` -/
def P13308939333771589664.Spec : Prop :=
  ∀ n, P13308939333771589664.a n = A170939 n

end A170939

/-! ## A170939.P4753425641096314879

`xor(A133140(n), A211012(n))`
-/

namespace A170939.P4753425641096314879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A133140 n) (A211012 n)

end

end A170939.P4753425641096314879

namespace A170939

/-- `xor(A133140(n), A211012(n))` -/
def P4753425641096314879.Spec : Prop :=
  ∀ n, P4753425641096314879.a n = A170939 n

end A170939

/-! ## A170939.P13093140738608348440

`2*(A000225(n)*A011782(n)+1)`
-/

namespace A170939.P13093140738608348440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000225 n * A011782 n + 1)

end

end A170939.P13093140738608348440

namespace A170939

/-- `2*(A000225(n)*A011782(n)+1)` -/
def P13093140738608348440.Spec : Prop :=
  ∀ n, P13093140738608348440.a n = A170939 n

end A170939

/-! ## A170939.P832755038563729384

`abs(A000225(n)-A000079(n)²-1)`
-/

namespace A170939.P832755038563729384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A000079 n ^ 2 - 1|

end

end A170939.P832755038563729384

namespace A170939

/-- `abs(A000225(n)-A000079(n)²-1)` -/
def P832755038563729384.Spec : Prop :=
  ∀ n, P832755038563729384.a n = A170939 n

end A170939

/-! ## A170939.P6464560430591773148

`abs(A000225(2*n)-(A000225(n)-2))`
-/

namespace A170939.P6464560430591773148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (2 * n) - (A000225 n - 2)|

end

end A170939.P6464560430591773148

namespace A170939

/-- `abs(A000225(2*n)-(A000225(n)-2))` -/
def P6464560430591773148.Spec : Prop :=
  ∀ n, P6464560430591773148.a n = A170939 n

end A170939

/-!
# A170940: a(n) = 4^n - 2^n - 2.

The programs for A170940, the canonical program `A170940.P7731088241602299911` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170940 has offset 1).

The definition of A170940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)-2^(n+1)-2` (program `A170940.P7731088241602299911`, by `A170940.P7731088241602299911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170940.P10488268466282082488

`ogf((10x-16x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A170940.P10488268466282082488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -16] [1, -7, 14, -8] n

end

end A170940.P10488268466282082488

namespace A170940

/-- `ogf((10x-16x^2)/(1-7x+14x^2-8x^3))` -/
def P10488268466282082488.Spec : Prop :=
  ∀ n, P10488268466282082488.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P7731088241602299911

`4^(n+1)-2^(n+1)-2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170940

/-- `4^(n+1)-2^(n+1)-2` -/
def P7731088241602299911.Spec : Prop :=
  ∀ n, P7731088241602299911.a n = A170940 (n + 1)

theorem P7731088241602299911.correct : P7731088241602299911.Spec := by
  intro n
  simp only [A170940, Nat.add_sub_cancel]

end A170940

/-! ## A170940.P3609339259586997227

`2*A129868(n)`
-/

namespace A170940.P3609339259586997227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129868 n

end

end A170940.P3609339259586997227

namespace A170940

/-- `2*A129868(n)` -/
def P3609339259586997227.Spec : Prop :=
  ∀ n, P3609339259586997227.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P17854759793550430999

`2*(A006516(n+1)-1)`
-/

namespace A170940.P17854759793550430999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006516 (n + 1) - 1)

end

end A170940.P17854759793550430999

namespace A170940

/-- `2*(A006516(n+1)-1)` -/
def P17854759793550430999.Spec : Prop :=
  ∀ n, P17854759793550430999.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P3537567621589992303

`xor(∑[2^n]², ∑[2^n])`
-/

namespace A170940.P3537567621589992303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A170940.P3537567621589992303

namespace A170940

/-- `xor(∑[2^n]², ∑[2^n])` -/
def P3537567621589992303.Spec : Prop :=
  ∀ n, (P3537567621589992303.a n : ℤ) = A170940 (n + 1)

end A170940

/-! ## A170940.P8950995995702507911

`lcm(2, 2*4^n-1-2^n)`
-/

namespace A170940.P8950995995702507911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 * 4 ^ n : ℤ) - 1 - (2 ^ n : ℤ))

end

end A170940.P8950995995702507911

namespace A170940

/-- `lcm(2, 2*4^n-1-2^n)` -/
def P8950995995702507911.Spec : Prop :=
  ∀ n, (P8950995995702507911.a n : ℤ) = A170940 (n + 1)

end A170940

/-! ## A170940.P7669355872086202256

`2*(A171476(n)-1)`
-/

namespace A170940.P7669355872086202256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171476 n - 1)

end

end A170940.P7669355872086202256

namespace A170940

/-- `2*(A171476(n)-1)` -/
def P7669355872086202256.Spec : Prop :=
  ∀ n, P7669355872086202256.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P6444197445616367146

`2*A274638(Δ[n²])`
-/

namespace A170940.P6444197445616367146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274638 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A170940.P6444197445616367146

namespace A170940

/-- `2*A274638(Δ[n²])` -/
def P6444197445616367146.Spec : Prop :=
  ∀ n, P6444197445616367146.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P6916594962497725064

`2*(∑[A010036(n)]-1)`
-/

namespace A170940.P6916594962497725064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A170940.P6916594962497725064

namespace A170940

/-- `2*(∑[A010036(n)]-1)` -/
def P6916594962497725064.Spec : Prop :=
  ∀ n, P6916594962497725064.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P10892413597450857689

`record[A279879(n+1)-2]`
-/

namespace A170940.P10892413597450857689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170940.P10892413597450857689

namespace A170940

/-- `record[A279879(n+1)-2]` -/
def P10892413597450857689.Spec : Prop :=
  ∀ n, P10892413597450857689.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P3714925927564785283

`record[A288663(n+1)-2]`
-/

namespace A170940.P3714925927564785283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170940.P3714925927564785283

namespace A170940

/-- `record[A288663(n+1)-2]` -/
def P3714925927564785283.Spec : Prop :=
  ∀ n, P3714925927564785283.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P8517328632442099683

`record[2*(A278756(n)-1)]`
-/

namespace A170940.P8517328632442099683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A278756 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170940.P8517328632442099683

namespace A170940

/-- `record[2*(A278756(n)-1)]` -/
def P8517328632442099683.Spec : Prop :=
  ∀ n, P8517328632442099683.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P15293357788619124438

`record[2*(A282418(n)-1)]`
-/

namespace A170940.P15293357788619124438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A282418 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170940.P15293357788619124438

namespace A170940

/-- `record[2*(A282418(n)-1)]` -/
def P15293357788619124438.Spec : Prop :=
  ∀ n, P15293357788619124438.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P2745284807762883588

`record[2*(A287470(n)-1)]`
-/

namespace A170940.P2745284807762883588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A287470 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170940.P2745284807762883588

namespace A170940

/-- `record[2*(A287470(n)-1)]` -/
def P2745284807762883588.Spec : Prop :=
  ∀ n, P2745284807762883588.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P16733117569648618557

`2*(A134169(n+1)-2)`
-/

namespace A170940.P16733117569648618557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134169 (n + 1) - 2)

end

end A170940.P16733117569648618557

namespace A170940

/-- `2*(A134169(n+1)-2)` -/
def P16733117569648618557.Spec : Prop :=
  ∀ n, P16733117569648618557.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P9381075892499988640

`2*(A122746(2*n)-1)`
-/

namespace A170940.P9381075892499988640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A122746 (2 * n) - 1)

end

end A170940.P9381075892499988640

namespace A170940

/-- `2*(A122746(2*n)-1)` -/
def P9381075892499988640.Spec : Prop :=
  ∀ n, P9381075892499988640.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P10947681409359650861

`2*(A278756(2*n)-1)`
-/

namespace A170940.P10947681409359650861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A278756 (2 * n) - 1)

end

end A170940.P10947681409359650861

namespace A170940

/-- `2*(A278756(2*n)-1)` -/
def P10947681409359650861.Spec : Prop :=
  ∀ n, P10947681409359650861.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P7318525978799723215

`2*(A282418(2*n)-1)`
-/

namespace A170940.P7318525978799723215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A282418 (2 * n) - 1)

end

end A170940.P7318525978799723215

namespace A170940

/-- `2*(A282418(2*n)-1)` -/
def P7318525978799723215.Spec : Prop :=
  ∀ n, P7318525978799723215.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P12030504116576466885

`2*(A032085(2*(n+1))-1)`
-/

namespace A170940.P12030504116576466885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032085 (2 * (n + 1)) - 1)

end

end A170940.P12030504116576466885

namespace A170940

/-- `2*(A032085(2*(n+1))-1)` -/
def P12030504116576466885.Spec : Prop :=
  ∀ n, P12030504116576466885.a n = A170940 (n + 1)

end A170940

/-! ## A170940.P4017772175449904735

`A000225(n)*A134351(n+1)`
-/

namespace A170940.P4017772175449904735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A134351 (n + 1)

end

end A170940.P4017772175449904735

namespace A170940

/-- `A000225(n)*A134351(n+1)` -/
def P4017772175449904735.Spec : Prop :=
  ∀ n, P4017772175449904735.a n = A170940 (n + 1)

end A170940

/-!
# A170941: a(n+1) = a(n) + n*a(n-1) - a(n-2) + a(n-3).

The programs for A170941, the canonical program `A170941.P6039270679550210330` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170941 has offset 0).

The definition of A170941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A170941.P6039270679550210330

`a(n-1)+(n-1)*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170941

/-- `a(n-1)+(n-1)*a(n-2)-a(n-3)+a(n-4)` -/
def P6039270679550210330.Spec : Prop :=
  ∀ n, P6039270679550210330.a n = A170941 n

theorem P6039270679550210330.correct : P6039270679550210330.Spec := by
  intro n
  simp only [A170941]

end A170941

/-! ## A170941.P17646392089912625399

`A217876(floor(((n+1)/2)²))`
-/

namespace A170941.P17646392089912625399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217876 ⌊((n + 1 : ℚ) / 2) ^ 2⌋.toNat

end

end A170941.P17646392089912625399

namespace A170941

/-- `A217876(floor(((n+1)/2)²))` -/
def P17646392089912625399.Spec : Prop :=
  ∀ n, P17646392089912625399.a n = A170941 n

end A170941

/-! ## A170941.P7901042212856082762

`A306419(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A170941.P7901042212856082762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A306419 n + a (n - 2)

end

end A170941.P7901042212856082762

namespace A170941

/-- `A306419(n)+a(n-2)` -/
def P7901042212856082762.Spec : Prop :=
  ∀ n, P7901042212856082762.a n = A170941 n

end A170941

/-! ## A170941.P13615073217356277645

`A239144(∑[n]+1)`
-/

namespace A170941.P13615073217356277645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A170941.P13615073217356277645

namespace A170941

/-- `A239144(∑[n]+1)` -/
def P13615073217356277645.Spec : Prop :=
  ∀ n, P13615073217356277645.a n = A170941 n

end A170941

/-! ## A170941.P18061324303156866208

`A239144(A000124(n))^ceil(sin(n)²)`
-/

namespace A170941.P18061324303156866208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239144 (A000124 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A170941.P18061324303156866208

namespace A170941

/-- `A239144(A000124(n))^ceil(sin(n)²)` -/
def P18061324303156866208.Spec : Prop :=
  ∀ n, P18061324303156866208.a n = (A170941 n : ℚ)

end A170941

/-!
# A170942: Take the permutations of lengths 1, 2, 3, ... arranged lexicographically, and replace each permutation with the number of its fixed points.

The programs for A170942, there is no canonical definition to state claims against.
-/

/-! ## A170942.P4767565255346522978

`A178401(A084502(n+1))`
-/

namespace A170942.P4767565255346522978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 (A084502 (n + 1)).toNat

end

end A170942.P4767565255346522978

/-!
# A170943: Numbers k with the property that when 1/k is written in base 3 (in either of the two representations, if the representation is ambiguous) the fractional part contains no 1's.

The programs for A170943, there is no canonical definition to state claims against.
-/

/-! ## A170943.P12660729131575987034

`record[A121153(n+1)+Δ[A170952(n+1)]]`
-/

namespace A170943.P12660729131575987034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170952 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170943.P12660729131575987034

/-! ## A170943.P5533696289152396756

`∩[A121153(n+1), A134025(n)+1]`
-/

namespace A170943.P5533696289152396756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134025 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A170943.P5533696289152396756

/-! ## A170943.P14701099803113427127

`∩[A026144(n+1), A121153(n+1)]`
-/

namespace A170943.P14701099803113427127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A170943.P14701099803113427127

/-! ## A170943.P3604217556975549666

`∩[A081605(n+1)+1, A121153(n+1)]`
-/

namespace A170943.P3604217556975549666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081605 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A170943.P3604217556975549666

/-! ## A170943.P8702371136641077195

`filter[A054591(n+1), A165728(#)]`
-/

namespace A170943.P8702371136641077195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165728 (f1 j).toNat = 1) n)

end

end A170943.P8702371136641077195

/-!
# A170944: Complement of A121153.

The programs for A170944, there is no canonical definition to state claims against.
-/

/-! ## A170944.P17528938481405536077

`comp[A054591(n+1)-1]+1`
-/

namespace A170944.P17528938481405536077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A170944.P17528938481405536077

/-! ## A170944.P9179922199645872616

`comp[A121153(n+1)-1]+1`
-/

namespace A170944.P9179922199645872616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A170944.P9179922199645872616

/-! ## A170944.P1898524205862348748

`comp[eq[n, A160652(A117967(n))]]`
-/

namespace A170944.P1898524205862348748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160652 (A117967 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A170944.P1898524205862348748

/-! ## A170944.P4863246683351904212

`comp[eq[A117967(n), A263273(n)]]`
-/

namespace A170944.P4863246683351904212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A170944.P4863246683351904212

/-! ## A170944.P4632869861366774383

`comp[A170952(comp[A054000(n+1)])]`
-/

namespace A170944.P4632869861366774383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054000 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170952 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A170944.P4632869861366774383

/-! ## A170944.P16054488860767782668

`comp[lcm(A005836(n+1), A188919(n))]`
-/

namespace A170944.P16054488860767782668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005836 (n + 1)) (A188919 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A170944.P16054488860767782668

/-! ## A170944.P16219708217435096527

`comp[∪[A073987(n+1), A121153(n+1)]]`
-/

namespace A170944.P16219708217435096527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073987 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A170944.P16219708217435096527

/-! ## A170944.P5250101651919871210

`∪[comp[A005836(n+1)], A016921(n+4)]`
-/

namespace A170944.P5250101651919871210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A170944.P5250101651919871210

/-! ## A170944.P1947548328306872080

`eq[char[A054591(n+1)], A061397(3*(n+1))]`
-/

namespace A170944.P1947548328306872080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A170944.P1947548328306872080

/-!
# A170945: Least number k such that the decimal representation of 1/k has period Fibonacci(n).

The programs for A170945, there is no canonical definition to state claims against.
-/

/-! ## A170945.P128209367000090048

`A003060(A000045(n+2))`
-/

namespace A170945.P128209367000090048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003060 (A000045 (n + 2)).toNat

end

end A170945.P128209367000090048

/-!
# A170946: Number of sensed unrooted combinatorial maps with n edges.

The programs for A170946, there is no canonical definition to state claims against.
-/

/-! ## A170946.P4897467874574326336

`A214816(n)+A170948(n)`
-/

namespace A170946.P4897467874574326336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214816 n + A170948 n

end

end A170946.P4897467874574326336

/-! ## A170946.P9804117849909949808

`A214816(n)+A051056(A151456(n))`
-/

namespace A170946.P9804117849909949808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214816 n + A051056 (A151456 n).toNat

end

end A170946.P9804117849909949808

/-!
# A170947: Number of achiral combinatorial maps with n edges.

The programs for A170947, there is no canonical definition to state claims against.
-/

/-! ## A170947.P4503491402224543388

`A170946(n+1)-2*A170948(n+1)`
-/

namespace A170947.P4503491402224543388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170946 (n + 1) - 2 * A170948 (n + 1)

end

end A170947.P4503491402224543388

/-! ## A170947.P18315549980343220450

`A170946(n+1)-A005843(A170948(n+1))`
-/

namespace A170947.P18315549980343220450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170946 (n + 1) - A005843 (A170948 (n + 1)).toNat

end

end A170947.P18315549980343220450

/-!
# A170948: Number of chiral pairs of combinatorial maps with n edges.

The programs for A170948, there is no canonical definition to state claims against.
-/

/-! ## A170948.P4931514622274947868

`A170946(n)-A214816(n)`
-/

namespace A170948.P4931514622274947868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170946 n - A214816 n

end

end A170948.P4931514622274947868

/-! ## A170948.P1440093323434480792

`A051056(A151456(n))`
-/

namespace A170948.P1440093323434480792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051056 (A151456 n).toNat

end

end A170948.P1440093323434480792

/-!
# A170949: "Conway's Converger": a reordering of the integers (see Comments for definition).

The programs for A170949, the canonical program `A170949.P7834340339358711823` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170949 has offset 1).

The definition of A170949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170949.P7834340339358711823

`A048760(n)+A004741(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A170949

/-- `A048760(n)+A004741(n+1)` -/
def P7834340339358711823.Spec : Prop :=
  ∀ n, P7834340339358711823.a n = A170949 (n + 1)

theorem P7834340339358711823.correct : P7834340339358711823.Spec := by
  intro n
  simp only [A170949, Nat.add_sub_cancel]

end A170949

/-! ## A170949.P14877378791444041283

`A004741(n+1)+A000196(n)²`
-/

namespace A170949.P14877378791444041283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) + A000196 n ^ 2

end

end A170949.P14877378791444041283

namespace A170949

/-- `A004741(n+1)+A000196(n)²` -/
def P14877378791444041283.Spec : Prop :=
  ∀ n, P14877378791444041283.a n = A170949 (n + 1)

end A170949

/-! ## A170949.P6315028694041533972

`A000196(n)²+A253580(n)+1`
-/

namespace A170949.P6315028694041533972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n ^ 2 + (A253580 n + 1)

end

end A170949.P6315028694041533972

namespace A170949

/-- `A000196(n)²+A253580(n)+1` -/
def P6315028694041533972.Spec : Prop :=
  ∀ n, P6315028694041533972.a n = A170949 (n + 1)

end A170949

/-! ## A170949.P6916442246028444597

`A004741(n+1)+(1-A003059(n+1))²`
-/

namespace A170949.P6916442246028444597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) + (1 - A003059 (n + 1)) ^ 2

end

end A170949.P6916442246028444597

namespace A170949

/-- `A004741(n+1)+(1-A003059(n+1))²` -/
def P6916442246028444597.Spec : Prop :=
  ∀ n, P6916442246028444597.a n = A170949 (n + 1)

end A170949

/-! ## A170949.P7800250614712522853

`A253580(n)+A002522(A000196(n))`
-/

namespace A170949.P7800250614712522853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 n + A002522 (A000196 n).toNat

end

end A170949.P7800250614712522853

namespace A170949

/-- `A253580(n)+A002522(A000196(n))` -/
def P7800250614712522853.Spec : Prop :=
  ∀ n, P7800250614712522853.a n = A170949 (n + 1)

theorem P7800250614712522853.correct : P7800250614712522853.Spec := by
  intro n
  simp only [A170949, Nat.add_sub_cancel, A170949.P7800250614712522853.a, A170949.P7834340339358711823.a, A000196, A000196.P15434771586934192083.a, A002522, A002522.P3778392011853271743.a, A004741, A004741.P8751127324978194226.a, A048760, A048760.P9900115946027900201.a, A253580, A253580.P15714201682578060032.a, A000290, A000290.P12206242496348924484.a, A004739, A004739.P530599446870545718.a, A053615, A053615.P2131948520812356575.a, A004737, A004737.P12416270940268694316.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A170949

/-! ## A170949.P6753465294855600498

`A004741(n+1)+A000290(A003059(n+1)-1)`
-/

namespace A170949.P6753465294855600498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) + A000290 (A003059 (n + 1) - 1).toNat

end

end A170949.P6753465294855600498

namespace A170949

/-- `A004741(n+1)+A000290(A003059(n+1)-1)` -/
def P6753465294855600498.Spec : Prop :=
  ∀ n, P6753465294855600498.a n = A170949 (n + 1)

end A170949

/-! ## A170949.P10429235809176867258

`A213922(A064788(n+1))`
-/

namespace A170949.P10429235809176867258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213922 (A064788 (n + 1)).toNat

end

end A170949.P10429235809176867258

namespace A170949

/-- `A213922(A064788(n+1))` -/
def P10429235809176867258.Spec : Prop :=
  ∀ n, P10429235809176867258.a n = A170949 (n + 1)

end A170949

/-! ## A170949.P9741634745677932574

`A060734(A064788(A185725(A064790(n+1))))`
-/

namespace A170949.P9741634745677932574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A064788 (A185725 (A064790 (n + 1)).toNat).toNat).toNat

end

end A170949.P9741634745677932574

namespace A170949

/-- `A060734(A064788(A185725(A064790(n+1))))` -/
def P9741634745677932574.Spec : Prop :=
  ∀ n, P9741634745677932574.a n = A170949 (n + 1)

end A170949

/-!
# A170950: Inverse permutation to A170949.

The programs for A170950, the canonical program `A170950.P16751627190420055194` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170950 has offset 1).

The definition of A170950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170950.P10827462219969759459

`A020703(A045901(n+1))`
-/

namespace A170950.P10827462219969759459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A045901 (n + 1)).toNat

end

end A170950.P10827462219969759459

namespace A170950

/-- `A020703(A045901(n+1))` -/
def P10827462219969759459.Spec : Prop :=
  ∀ n, P10827462219969759459.a n = A170950 (n + 1)

end A170950

/-! ## A170950.P16751627190420055194

`A028392(n)+1-A014682(A053186(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A170950

/-- `A028392(n)+1-A014682(A053186(n))` -/
def P16751627190420055194.Spec : Prop :=
  ∀ n, P16751627190420055194.a n = A170950 (n + 1)

theorem P16751627190420055194.correct : P16751627190420055194.Spec := by
  intro n
  simp only [A170950, Nat.add_sub_cancel]

end A170950

/-! ## A170950.P17512716137726781084

`A078358(n+1)-A014682(A053186(n))`
-/

namespace A170950.P17512716137726781084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 1) - A014682 (A053186 n).toNat

end

end A170950.P17512716137726781084

namespace A170950

/-- `A078358(n+1)-A014682(A053186(n))` -/
def P17512716137726781084.Spec : Prop :=
  ∀ n, P17512716137726781084.a n = A170950 (n + 1)

end A170950

/-! ## A170950.P15917910003082847006

`A209279(A007606(n+1))+A048760(n)`
-/

namespace A170950.P15917910003082847006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A007606 (n + 1)).toNat + A048760 n

end

end A170950.P15917910003082847006

namespace A170950

/-- `A209279(A007606(n+1))+A048760(n)` -/
def P15917910003082847006.Spec : Prop :=
  ∀ n, P15917910003082847006.a n = A170950 (n + 1)

end A170950

/-! ## A170950.P3969646835259054201

`A209279(A007606(n+1))+A000196(n)²`
-/

namespace A170950.P3969646835259054201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A007606 (n + 1)).toNat + A000196 n ^ 2

end

end A170950.P3969646835259054201

namespace A170950

/-- `A209279(A007606(n+1))+A000196(n)²` -/
def P3969646835259054201.Spec : Prop :=
  ∀ n, P3969646835259054201.a n = A170950 (n + 1)

end A170950

/-! ## A170950.P4010736289300314610

`A060734(A064788(A214870(A064790(n+1))))`
-/

namespace A170950.P4010736289300314610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060734 (A064788 (A214870 (A064790 (n + 1)).toNat).toNat).toNat

end

end A170950.P4010736289300314610

namespace A170950

/-- `A060734(A064788(A214870(A064790(n+1))))` -/
def P4010736289300314610.Spec : Prop :=
  ∀ n, P4010736289300314610.a n = A170950 (n + 1)

end A170950

/-!
# A170951: Numbers n with the property that some of the fractions i/n (with gcd(i,n)=1, 0 < i/n < 1) are in the Cantor set and some are not.

The programs for A170951, there is no canonical definition to state claims against.
-/

/-! ## A170951.P14943130899342954440

`A121153(n+5)-floor(1/(n+1))`
-/

namespace A170951.P14943130899342954440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (n + 5) - ⌊1 / (n + 1 : ℚ)⌋

end

end A170951.P14943130899342954440

/-! ## A170951.P2073156005148399456

`A121153(A074764(n+2))`
-/

namespace A170951.P2073156005148399456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (A074764 (n + 2)).toNat

end

end A170951.P2073156005148399456

/-! ## A170951.P2877988493842752748

`A121153(A065475(n+1)+3)`
-/

namespace A170951.P2877988493842752748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (A065475 (n + 1) + 3).toNat

end

end A170951.P2877988493842752748

/-! ## A170951.P5858413671364253878

`A121153(A087156(n+1)+4)`
-/

namespace A170951.P5858413671364253878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121153 (A087156 (n + 1) + 4).toNat

end

end A170951.P5858413671364253878

/-!
# A170952: Take the Cantor set sequence A121153 and if the entry m = A121153(n) is in the range 3^k <= m < 3^(k+1), subtract 3^k from it.

The programs for A170952, there is no canonical definition to state claims against.
-/

/-! ## A170952.P3032253480080054447

`A081134(A121153(n+1))`
-/

namespace A170952.P3032253480080054447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A121153 (n + 1)).toNat

end

end A170952.P3032253480080054447

/-! ## A170952.P13801571278451035150

`A081134(∪[A170943(n+1), A309758(n+1)])`
-/

namespace A170952.P13801571278451035150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309758 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A170952.P13801571278451035150

/-! ## A170952.P5828659310757449725

`A081134(A054591(n+1))%A350656(A109232(n+1))`
-/

namespace A170952.P5828659310757449725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081134 (A054591 (n + 1)).toNat) (A350656 (A109232 (n + 1)).toNat)

end

end A170952.P5828659310757449725

/-! ## A170952.P15233322821588678634

`A081134(A054591(n+1))%A007088(A000032(n))`
-/

namespace A170952.P15233322821588678634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081134 (A054591 (n + 1)).toNat) (A007088 (A000032 n).toNat)

end

end A170952.P15233322821588678634

/-!
# A170953: Floor((Pi^n+n)/(Pi^2+1)).

The programs for A170953, the canonical program `A170953.P808508353015053379` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170953 has offset 0).

The definition of A170953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170953.P808508353015053379

`floor((π^n+n)/(π²+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170953

/-- `floor((π^n+n)/(π²+1))` -/
def P808508353015053379.Spec : Prop :=
  ∀ n, P808508353015053379.a n = A170953 n

theorem P808508353015053379.correct : P808508353015053379.Spec := by
  intro n
  simp only [A170953]

end A170953

/-! ## A170953.P13262621007955820925

`A082964(A195675(n))`
-/

namespace A170953.P13262621007955820925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A195675 n).toNat

end

end A170953.P13262621007955820925

namespace A170953

/-- `A082964(A195675(n))` -/
def P13262621007955820925.Spec : Prop :=
  ∀ n, P13262621007955820925.a n = A170953 n

end A170953

/-! ## A170953.P9034046365622685559

`A082964(A090426(n)+A002265(n))`
-/

namespace A170953.P9034046365622685559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A090426 n + A002265 n).toNat

end

end A170953.P9034046365622685559

namespace A170953

/-- `A082964(A090426(n)+A002265(n))` -/
def P9034046365622685559.Spec : Prop :=
  ∀ n, P9034046365622685559.a n = A170953 n

end A170953

/-! ## A170953.P11080151942348486294

`A002265(floor(π^n/e)+2)`
-/

namespace A170953.P11080151942348486294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (⌊Real.pi ^ n / Real.exp 1⌋ + 2).toNat

end

end A170953.P11080151942348486294

namespace A170953

/-- `A002265(floor(π^n/e)+2)` -/
def P11080151942348486294.Spec : Prop :=
  ∀ n, P11080151942348486294.a n = A170953 n

end A170953

/-! ## A170953.P17373649988355390068

`A008624(or(1, A032637(n)))`
-/

namespace A170953.P17373649988355390068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 1 (A032637 n)).toNat

end

end A170953.P17373649988355390068

namespace A170953

/-- `A008624(or(1, A032637(n)))` -/
def P17373649988355390068.Spec : Prop :=
  ∀ n, P17373649988355390068.a n = A170953 n

end A170953

/-!
# A170955: a(n) = 10^n - 9.

The programs for A170955, the canonical program `A170955.P2957400710442398076` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170955 has offset 1).

The definition of A170955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(n+1)-9` (program `A170955.P2957400710442398076`, by `A170955.P2957400710442398076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A170955.P2957400710442398076

`10^(n+1)-9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A170955

/-- `10^(n+1)-9` -/
def P2957400710442398076.Spec : Prop :=
  ∀ n, P2957400710442398076.a n = A170955 (n + 1)

theorem P2957400710442398076.correct : P2957400710442398076.Spec := by
  intro n
  simp only [A170955, Nat.add_sub_cancel]

end A170955

/-! ## A170955.P14700978140385596287

`ogf((1+80x)/(1-11x+10x^2))`
-/

namespace A170955.P14700978140385596287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 80] [1, -11, 10] n

end

end A170955.P14700978140385596287

namespace A170955

/-- `ogf((1+80x)/(1-11x+10x^2))` -/
def P14700978140385596287.Spec : Prop :=
  ∀ n, P14700978140385596287.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P13158657912401124488

`xor(1, 10*(10^n-1))`
-/

namespace A170955.P13158657912401124488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (10 * ((10 ^ n : ℤ) - 1))

end

end A170955.P13158657912401124488

namespace A170955

/-- `xor(1, 10*(10^n-1))` -/
def P13158657912401124488.Spec : Prop :=
  ∀ n, P13158657912401124488.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P14396839386055067871

`or(1, lcm(10, 1-10^n))`
-/

namespace A170955.P14396839386055067871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Int.lcm 10 (1 - (10 ^ n : ℤ)))

end

end A170955.P14396839386055067871

namespace A170955

/-- `or(1, lcm(10, 1-10^n))` -/
def P14396839386055067871.Spec : Prop :=
  ∀ n, (P14396839386055067871.a n : ℤ) = A170955 (n + 1)

end A170955

/-! ## A170955.P52198481857087243

`∑[10*a(n-1)]` with `a(0)=1, a(1)=90`
-/

namespace A170955.P52198481857087243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 90] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170955.P52198481857087243

namespace A170955

/-- `∑[10*a(n-1)]` -/
def P52198481857087243.Spec : Prop :=
  ∀ n, (P52198481857087243.a n : ℤ) = A170955 (n + 1)

end A170955

/-! ## A170955.P11139556239874755112

`record[10^abs(1-n)-9]`
-/

namespace A170955.P11139556239874755112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A170955.P11139556239874755112

namespace A170955

/-- `record[10^abs(1-n)-9]` -/
def P11139556239874755112.Spec : Prop :=
  ∀ n, P11139556239874755112.a n = (A170955 (n + 1) : ℚ)

end A170955

/-! ## A170955.P14072412246836412657

`or(1, ∑[and(-n, Δ[10^n])])`
-/

namespace A170955.P14072412246836412657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A170955.P14072412246836412657

namespace A170955

/-- `or(1, ∑[and(-n, Δ[10^n])])` -/
def P14072412246836412657.Spec : Prop :=
  ∀ n, P14072412246836412657.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P5310585638542319039

`or(1, A124167(n))`
-/

namespace A170955.P5310585638542319039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124167 n)

end

end A170955.P5310585638542319039

namespace A170955

/-- `or(1, A124167(n))` -/
def P5310585638542319039.Spec : Prop :=
  ∀ n, P5310585638542319039.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P12087285662849129683

`abs(7-A099150(n+1))`
-/

namespace A170955.P12087285662849129683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A099150 (n + 1)|

end

end A170955.P12087285662849129683

namespace A170955

/-- `abs(7-A099150(n+1))` -/
def P12087285662849129683.Spec : Prop :=
  ∀ n, P12087285662849129683.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P4301128483527173910

`abs(9-A011557(n+1))`
-/

namespace A170955.P4301128483527173910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - A011557 (n + 1)|

end

end A170955.P4301128483527173910

namespace A170955

/-- `abs(9-A011557(n+1))` -/
def P4301128483527173910.Spec : Prop :=
  ∀ n, P4301128483527173910.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P7139164867680252284

`or(1, ∑[9*A178500(n)])`
-/

namespace A170955.P7139164867680252284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A178500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A170955.P7139164867680252284

namespace A170955

/-- `or(1, ∑[9*A178500(n)])` -/
def P7139164867680252284.Spec : Prop :=
  ∀ n, P7139164867680252284.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P2282799761684772843

`abs(A049416(2*(n+1))-8)`
-/

namespace A170955.P2282799761684772843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049416 (2 * (n + 1)) - 8|

end

end A170955.P2282799761684772843

namespace A170955

/-- `abs(A049416(2*(n+1))-8)` -/
def P2282799761684772843.Spec : Prop :=
  ∀ n, P2282799761684772843.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P1772801120222963359

`round(A063945(n+1)+a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A170955.P1772801120222963359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063945 (n + 1) + a (n - 1)

end

end A170955.P1772801120222963359

namespace A170955

/-- `round(A063945(n+1)+a(n-1))` -/
def P1772801120222963359.Spec : Prop :=
  ∀ n, P1772801120222963359.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P16900975230795683624

`A061219(A017173(n))`
-/

namespace A170955.P16900975230795683624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061219 (A017173 n).toNat

end

end A170955.P16900975230795683624

namespace A170955

/-- `A061219(A017173(n))` -/
def P16900975230795683624.Spec : Prop :=
  ∀ n, P16900975230795683624.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P14037149909869239894

`∑[A085952(n)+A057428(n)]`
-/

namespace A170955.P14037149909869239894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085952 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170955.P14037149909869239894

namespace A170955

/-- `∑[A085952(n)+A057428(n)]` -/
def P14037149909869239894.Spec : Prop :=
  ∀ n, P14037149909869239894.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P11514417658183419591

`∑[A085952(n)-A178334(n)]`
-/

namespace A170955.P11514417658183419591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085952 n - A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170955.P11514417658183419591

namespace A170955

/-- `∑[A085952(n)-A178334(n)]` -/
def P11514417658183419591.Spec : Prop :=
  ∀ n, P11514417658183419591.a n = A170955 (n + 1)

end A170955

/-! ## A170955.P1387640923424303984

`∑[A085952(n)-A000040(n+1)%2]`
-/

namespace A170955.P1387640923424303984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085952 n - Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170955.P1387640923424303984

namespace A170955

/-- `∑[A085952(n)-A000040(n+1)%2]` -/
def P1387640923424303984.Spec : Prop :=
  ∀ n, P1387640923424303984.a n = A170955 (n + 1)

end A170955

/-!
# A170956: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 3.

The programs for A170956, there is no canonical definition to state claims against.
-/

/-! ## A170956.P9749690621281625852

`and(1, round(Δ[sin(2*n)]))`
-/

namespace A170956.P9749690621281625852
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A170956.P9749690621281625852

/-! ## A170956.P10780275280521265141

`round(abs(Δ[abs(sin(2*n))]))`
-/

namespace A170956.P10780275280521265141
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (2 * n : ℝ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |f1 (n + 1) - f1 n|

end

end A170956.P10780275280521265141

/-! ## A170956.P1264193409372156775

`round(Δ[cos(2*n)²]²)`
-/

namespace A170956.P1264193409372156775
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n : ℝ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 2)

end

end A170956.P1264193409372156775

/-!
# A170957: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 4.

The programs for A170957, there is no canonical definition to state claims against.
-/

/-! ## A170957.P16584861806865892367

`A178725(n+38)`
-/

namespace A170957.P16584861806865892367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178725 (n + 38)

end

end A170957.P16584861806865892367

/-! ## A170957.P13523267887430675174

`and(A170977(n), A320829(n))`
-/

namespace A170957.P13523267887430675174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170977 n) (A320829 n)

end

end A170957.P13523267887430675174

/-! ## A170957.P5960462037897689061

`and(A170977(n), A186499(n+1))`
-/

namespace A170957.P5960462037897689061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170977 n) (A186499 (n + 1))

end

end A170957.P5960462037897689061

/-! ## A170957.P10493008675812498242

`and(A170977(n), A186513(n+1))`
-/

namespace A170957.P10493008675812498242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170977 n) (A186513 (n + 1))

end

end A170957.P10493008675812498242

/-! ## A170957.P9248613860931781940

`and(A170977(n), A186515(n+1))`
-/

namespace A170957.P9248613860931781940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170977 n) (A186515 (n + 1))

end

end A170957.P9248613860931781940

/-!
# A170958: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 5.

The programs for A170958, there is no canonical definition to state claims against.
-/

/-! ## A170958.P2198364578361620226

`A178725(n+75)`
-/

namespace A170958.P2198364578361620226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178725 (n + 75)

end

end A170958.P2198364578361620226

/-! ## A170958.P14250522231020850387

`A170957(n)+A170982(n)-A147599(n)`
-/

namespace A170958.P14250522231020850387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 n + (A170982 n - A147599 n)

end

end A170958.P14250522231020850387

/-! ## A170958.P8280350343212617179

`A170957(n)+A170982(n)-A170962(n)`
-/

namespace A170958.P8280350343212617179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 n + (A170982 n - A170962 n)

end

end A170958.P8280350343212617179

/-! ## A170958.P11600887806479652820

`A170957(n)+A170982(n)-A170963(n)`
-/

namespace A170958.P11600887806479652820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 n + (A170982 n - A170963 n)

end

end A170958.P11600887806479652820

/-! ## A170958.P1061628091181104127

`A170957(n)+A170982(n)-A170964(n)`
-/

namespace A170958.P1061628091181104127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170957 n + (A170982 n - A170964 n)

end

end A170958.P1061628091181104127

/-!
# A170959: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 6.

The programs for A170959, there is no canonical definition to state claims against.
-/

/-! ## A170959.P846296586959517811

`A178725(A107001(gcd(n, n+1))+n)`
-/

namespace A170959.P846296586959517811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178725 (A107001 (Nat.gcd n (n + 1)) + (n : ℤ)).toNat

end

end A170959.P846296586959517811

/-! ## A170959.P15341837241786881706

`A147599(n)-A185284(A147599(3*(n+1)))`
-/

namespace A170959.P15341837241786881706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n - A185284 (A147599 (3 * (n + 1))).toNat

end

end A170959.P15341837241786881706

/-! ## A170959.P16410827195737788160

`and(A137205(n+1), A147599(n))`
-/

namespace A170959.P16410827195737788160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137205 (n + 1)) (A147599 n)

end

end A170959.P16410827195737788160

/-!
# A170960: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 7.

The programs for A170960, there is no canonical definition to state claims against.
-/

/-! ## A170960.P1281067986972056102

`A005206(A335520(2*n+1)+A170980(n))`
-/

namespace A170960.P1281067986972056102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A335520 (2 * n + 1) + A170980 n).toNat

end

end A170960.P1281067986972056102

/-! ## A170960.P18161900542356525363

`A001222(A157410(n+1))*A005206(A170980(n))`
-/

namespace A170960.P18161900542356525363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157410 (n + 1)).toNat * A005206 (A170980 n).toNat

end

end A170960.P18161900542356525363

/-! ## A170960.P1119338129304734338

`A147599(n)*A170959(A034537(n+1))`
-/

namespace A170960.P1119338129304734338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n * A170959 (A034537 (n + 1)).toNat

end

end A170960.P1119338129304734338

/-! ## A170960.P6923385943025580091

`A168184(A238876(n+3))*A170965(n)`
-/

namespace A170960.P6923385943025580091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 (A238876 (n + 3)).toNat * A170965 n

end

end A170960.P6923385943025580091

/-! ## A170960.P2563983003263244388

`A147599(n)%A050449(A007504(2*n+3))`
-/

namespace A170960.P2563983003263244388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147599 n) (A050449 (A007504 (2 * n + 3)).toNat)

end

end A170960.P2563983003263244388

/-!
# A170961: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 8.

The programs for A170961, there is no canonical definition to state claims against.
-/

/-! ## A170961.P4346486097603237771

`A147599(n)%A350556(n+1)-A235046(A170974(n))`
-/

namespace A170961.P4346486097603237771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147599 n) (A350556 (n + 1)) - A235046 (A170974 n).toNat

end

end A170961.P4346486097603237771

/-! ## A170961.P2413503904364808986

`A170962(n)-A170980(A170973(n)!)`
-/

namespace A170961.P2413503904364808986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170962 n - A170980 (Nat.factorial (A170973 n).toNat)

end

end A170961.P2413503904364808986

/-! ## A170961.P14995652155347258122

`A170962(n)-A170980(A170974(n)!)`
-/

namespace A170961.P14995652155347258122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170962 n - A170980 (Nat.factorial (A170974 n).toNat)

end

end A170961.P14995652155347258122

/-! ## A170961.P633143482095357369

`A170963(n)-A170980(A170973(n)!)`
-/

namespace A170961.P633143482095357369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170963 n - A170980 (Nat.factorial (A170973 n).toNat)

end

end A170961.P633143482095357369

/-! ## A170961.P2438331884409276923

`A170962(n)-A170980(A170975(n)!)`
-/

namespace A170961.P2438331884409276923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170962 n - A170980 (Nat.factorial (A170975 n).toNat)

end

end A170961.P2438331884409276923

/-!
# A170962: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 9.

The programs for A170962, there is no canonical definition to state claims against.
-/

/-! ## A170962.P8219707263299193982

`abs(A284316(n))%(A287166(n+5)+1)`
-/

namespace A170962.P8219707263299193982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284316 n| (A287166 (n + 5) + 1)

end

end A170962.P8219707263299193982

/-! ## A170962.P3722946714946902146

`A147599(n)-A070109(A369605(n+1))`
-/

namespace A170962.P3722946714946902146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n - A070109 (A369605 (n + 1)).toNat

end

end A170962.P3722946714946902146

/-! ## A170962.P11191519662845310208

`abs(A284316(n))%A008653(A287166(n+5))`
-/

namespace A170962.P11191519662845310208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284316 n| (A008653 (A287166 (n + 5)).toNat)

end

end A170962.P11191519662845310208

/-! ## A170962.P7492056709554951836

`C(A147599(n), A298582(A356069(2*n+3)))`
-/

namespace A170962.P7492056709554951836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A147599 n).toNat (A298582 (A356069 (2 * n + 3)).toNat).toNat

end

end A170962.P7492056709554951836

/-! ## A170962.P3522548606240521542

`A147599(n)%A036143(A339672(n+4))`
-/

namespace A170962.P3522548606240521542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147599 n) (A036143 (A339672 (n + 4 + 28)).toNat)

end

end A170962.P3522548606240521542

/-!
# A170963: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 10.

The programs for A170963, there is no canonical definition to state claims against.
-/

/-! ## A170963.P16420961474968185653

`abs(A284316(n))%(A287166(n+1)+1)`
-/

namespace A170963.P16420961474968185653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284316 n| (A287166 (n + 1) + 1)

end

end A170963.P16420961474968185653

/-! ## A170963.P1845169448555612259

`A147599(n)*A245656(A241579(n))`
-/

namespace A170963.P1845169448555612259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n * A245656 (A241579 n).toNat

end

end A170963.P1845169448555612259

/-! ## A170963.P2000953543441793674

`A170965(n)*A245656(A241579(n))`
-/

namespace A170963.P2000953543441793674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 n * A245656 (A241579 n).toNat

end

end A170963.P2000953543441793674

/-! ## A170963.P6197001736393585784

`abs(A245656(A241579(n))*A284316(n))`
-/

namespace A170963.P6197001736393585784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245656 (A241579 n).toNat * A284316 n|

end

end A170963.P6197001736393585784

/-! ## A170963.P8463790859446641682

`abs(A284316(n))%A008653(A287166(n+1))`
-/

namespace A170963.P8463790859446641682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284316 n| (A008653 (A287166 (n + 1)).toNat)

end

end A170963.P8463790859446641682

/-!
# A170964: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 11.

The programs for A170964, there is no canonical definition to state claims against.
-/

/-! ## A170964.P911661544581546318

`A170965(n)-A235046(A354777(2*(n+1)))`
-/

namespace A170964.P911661544581546318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 n - A235046 (A354777 (2 * (n + 1))).toNat

end

end A170964.P911661544581546318

/-! ## A170964.P15206546459239558296

`A147599(n)-A302662(C(n, 47))`
-/

namespace A170964.P15206546459239558296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n - A302662 (Nat.choose n 47)

end

end A170964.P15206546459239558296

/-! ## A170964.P11815289506040961359

`A170965(n)-A082784(A316545(n+1))`
-/

namespace A170964.P11815289506040961359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 n - A082784 (A316545 (n + 1)).toNat

end

end A170964.P11815289506040961359

/-! ## A170964.P16567440384258001090

`A147599(n)%A017765(n+2)`
-/

namespace A170964.P16567440384258001090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147599 n) (A017765 (n + 2))

end

end A170964.P16567440384258001090

/-! ## A170964.P8488573945104357248

`A147599(n)-A051584(A328300(n))`
-/

namespace A170964.P8488573945104357248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n - A051584 (A328300 n).toNat

end

end A170964.P8488573945104357248

/-!
# A170965: Expansion of Product_{i=1..m} (1 + x^(4*i-1)) for m = 12.

The programs for A170965, there is no canonical definition to state claims against.
-/

/-! ## A170965.P14954369880361066761

`A147599(n)%A094086(A026741(n+1))`
-/

namespace A170965.P14954369880361066761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147599 n) (A094086 (A026741 (n + 1)).toNat)

end

end A170965.P14954369880361066761

/-! ## A170965.P1725790141720572862

`abs(A284316(n))%A031285(A133310(n+1))`
-/

namespace A170965.P1725790141720572862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284316 n| (A031285 (A133310 (n + 1)).toNat)

end

end A170965.P1725790141720572862

/-! ## A170965.P7268119297887472639

`A000196(A284316(n)²)%A031285(A133310(n+1))`
-/

namespace A170965.P7268119297887472639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A284316 n ^ 2).toNat) (A031285 (A133310 (n + 1)).toNat)

end

end A170965.P7268119297887472639

/-! ## A170965.P3982135300429231727

`(A033999(n)*A284316(n))%A031285(A133310(n+1))`
-/

namespace A170965.P3982135300429231727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033999 n * A284316 n) (A031285 (A133310 (n + 1)).toNat)

end

end A170965.P3982135300429231727

/-! ## A170965.P7929535519148254667

`A147599(n)-A014083(A010893(n))`
-/

namespace A170965.P7929535519148254667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n - A014083 (A010893 (n + 13)).toNat

end

end A170965.P7929535519148254667

/-! ## A170965.P6269882932552592041

`A147599(n)%A031285(A057359(n))`
-/

namespace A170965.P6269882932552592041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147599 n) (A031285 (A057359 n).toNat)

end

end A170965.P6269882932552592041

/-! ## A170965.P17306441719386747662

`abs(A284316(n))-A014083(A010893(n))`
-/

namespace A170965.P17306441719386747662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284316 n| - A014083 (A010893 (n + 13)).toNat

end

end A170965.P17306441719386747662

/-! ## A170965.P12269266969822015300

`abs(A284316(n))%A031285(A057359(n))`
-/

namespace A170965.P12269266969822015300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A284316 n| (A031285 (A057359 n).toNat)

end

end A170965.P12269266969822015300

/-! ## A170965.P17126407415682061581

`A147599(n)-A294890(A221671(n+1))`
-/

namespace A170965.P17126407415682061581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n - A294890 (A221671 (n + 1)).toNat

end

end A170965.P17126407415682061581

/-!
# A170967: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 4.

The programs for A170967, there is no canonical definition to state claims against.
-/

/-! ## A170967.P7503749605067217042

`A178665(3*n)`
-/

namespace A170967.P7503749605067217042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178665 (3 * n)

end

end A170967.P7503749605067217042

/-! ## A170967.P5359572403932953963

`dr(A178665(A008585(n)))`
-/

namespace A170967.P5359572403932953963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A178665 (A008585 n).toNat)

end

end A170967.P5359572403932953963

/-! ## A170967.P11787788243800565159

`A079344(A044289(n+1))%5`
-/

namespace A170967.P11787788243800565159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079344 (A044289 (n + 1)).toNat) 5

end

end A170967.P11787788243800565159

/-! ## A170967.P3497919231402236037

`A185284(n)+A178665(A008585(n))`
-/

namespace A170967.P3497919231402236037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A178665 (A008585 n).toNat

end

end A170967.P3497919231402236037

/-! ## A170967.P5460329484618938971

`A178665(A008585(n))^A007318(n)`
-/

namespace A170967.P5460329484618938971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178665 (A008585 n).toNat : ℚ) ^ (A007318 n : ℤ)

end

end A170967.P5460329484618938971

/-!
# A170968: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 5.

The programs for A170968, there is no canonical definition to state claims against.
-/

/-! ## A170968.P4396584297414140624

`A169975(n)-A339087(A301565(n)!)`
-/

namespace A170968.P4396584297414140624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A339087 (Nat.factorial (A301565 n).toNat)

end

end A170968.P4396584297414140624

/-! ## A170968.P6625753453174323802

`A169975(n)%A134685(2*n+3)`
-/

namespace A170968.P6625753453174323802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169975 n) (A134685 (2 * n + 3))

end

end A170968.P6625753453174323802

/-! ## A170968.P3494726807895605867

`A169975(n)%A103814(A083496(n))`
-/

namespace A170968.P3494726807895605867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169975 n) (A103814 (A083496 n).toNat)

end

end A170968.P3494726807895605867

/-! ## A170968.P8471178143215077531

`A169975(n)-A294929(A303456(n+3))`
-/

namespace A170968.P8471178143215077531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A294929 (A303456 (n + 3)).toNat

end

end A170968.P8471178143215077531

/-!
# A170969: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 6.

The programs for A170969, there is no canonical definition to state claims against.
-/

/-! ## A170969.P9198735813700353443

`A170972(n)%A030545(n)-A011738(A317239(n))`
-/

namespace A170969.P9198735813700353443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170972 n) (A030545 n) - A011738 (A317239 n).toNat

end

end A170969.P9198735813700353443

/-! ## A170969.P13861966804930639779

`A170973(n)%A030545(n)-A011738(A317239(n))`
-/

namespace A170969.P13861966804930639779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170973 n) (A030545 n) - A011738 (A317239 n).toNat

end

end A170969.P13861966804930639779

/-! ## A170969.P7633143978275244533

`A170974(n)%A030545(n)-A011738(A317239(n))`
-/

namespace A170969.P7633143978275244533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170974 n) (A030545 n) - A011738 (A317239 n).toNat

end

end A170969.P7633143978275244533

/-! ## A170969.P16526861020057586320

`A170975(n)%A030545(n)-A011738(A317239(n))`
-/

namespace A170969.P16526861020057586320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170975 n) (A030545 n) - A011738 (A317239 n).toNat

end

end A170969.P16526861020057586320

/-! ## A170969.P9289241522784236753

`A170975(n)-∑[A011736(A054907(n))]`
-/

namespace A170969.P9289241522784236753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011736 (A054907 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170969.P9289241522784236753

/-!
# A170970: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 7.

The programs for A170970, there is no canonical definition to state claims against.
-/

/-! ## A170970.P14740010681734682901

`A169975(n)-A086078(A220681(n+1))`
-/

namespace A170970.P14740010681734682901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A086078 (A220681 (n + 1)).toNat

end

end A170970.P14740010681734682901

/-! ## A170970.P1506989950478980771

`A170975(n)-A086078(A220681(n+1))`
-/

namespace A170970.P1506989950478980771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n - A086078 (A220681 (n + 1)).toNat

end

end A170970.P1506989950478980771

/-! ## A170970.P11082543621936727248

`A169975(n)%A030545(n)`
-/

namespace A170970.P11082543621936727248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169975 n) (A030545 n)

end

end A170970.P11082543621936727248

/-! ## A170970.P13564267852595074427

`A170972(n)%A030545(n)`
-/

namespace A170970.P13564267852595074427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170972 n) (A030545 n)

end

end A170970.P13564267852595074427

/-! ## A170970.P14012123178282221320

`A170973(n)%A030545(n)`
-/

namespace A170970.P14012123178282221320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A170973 n) (A030545 n)

end

end A170970.P14012123178282221320

/-!
# A170971: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 8.

The programs for A170971, there is no canonical definition to state claims against.
-/

/-! ## A170971.P10537155107222473796

`A169975(n)-A185284(A001156(n))`
-/

namespace A170971.P10537155107222473796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A185284 (A001156 n).toNat

end

end A170971.P10537155107222473796

/-! ## A170971.P10986539342640866226

`A169975(n)-A185284(A219610(n))`
-/

namespace A170971.P10986539342640866226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A185284 (A219610 n).toNat

end

end A170971.P10986539342640866226

/-! ## A170971.P5341026755054331223

`A169975(n)-A124761(A034566(n+1))`
-/

namespace A170971.P5341026755054331223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A124761 (A034566 (n + 1)).toNat

end

end A170971.P5341026755054331223

/-! ## A170971.P11931131980446289661

`A170972(n)-A124761(A034566(n+1))`
-/

namespace A170971.P11931131980446289661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170972 n - A124761 (A034566 (n + 1)).toNat

end

end A170971.P11931131980446289661

/-! ## A170971.P17670732308156607315

`A170973(n)-A124761(A034566(n+1))`
-/

namespace A170971.P17670732308156607315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170973 n - A124761 (A034566 (n + 1)).toNat

end

end A170971.P17670732308156607315

/-!
# A170972: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 9.

The programs for A170972, there is no canonical definition to state claims against.
-/

/-! ## A170972.P50469236723114062

`A169975(n)-A011738(A034537(n+1))`
-/

namespace A170972.P50469236723114062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A011738 (A034537 (n + 1)).toNat

end

end A170972.P50469236723114062

/-! ## A170972.P18433365243832008427

`A170973(n)-A011738(A034537(n+1))`
-/

namespace A170972.P18433365243832008427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170973 n - A011738 (A034537 (n + 1)).toNat

end

end A170972.P18433365243832008427

/-! ## A170972.P17990742885193561821

`A170974(n)-A011738(A034537(n+1))`
-/

namespace A170972.P17990742885193561821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 n - A011738 (A034537 (n + 1)).toNat

end

end A170972.P17990742885193561821

/-! ## A170972.P10225782661332456087

`A170975(n)-A011738(A034537(n+1))`
-/

namespace A170972.P10225782661332456087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n - A011738 (A034537 (n + 1)).toNat

end

end A170972.P10225782661332456087

/-! ## A170972.P4994875575928285450

`abs(A284313(n))-A011738(A034537(n+1))`
-/

namespace A170972.P4994875575928285450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284313 n| - A011738 (A034537 (n + 1)).toNat

end

end A170972.P4994875575928285450

/-!
# A170973: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 10.

The programs for A170973, there is no canonical definition to state claims against.
-/

/-! ## A170973.P9111770761894662326

`A170974(n)-A170980(A170963(n)!)`
-/

namespace A170973.P9111770761894662326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 n - A170980 (Nat.factorial (A170963 n).toNat)

end

end A170973.P9111770761894662326

/-! ## A170973.P11681331760115109499

`A170974(n)-A170980(A170964(n)!)`
-/

namespace A170973.P11681331760115109499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 n - A170980 (Nat.factorial (A170964 n).toNat)

end

end A170973.P11681331760115109499

/-! ## A170973.P9641958627138072790

`A170975(n)-A170980(A170963(n)!)`
-/

namespace A170973.P9641958627138072790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n - A170980 (Nat.factorial (A170963 n).toNat)

end

end A170973.P9641958627138072790

/-! ## A170973.P16718896842279406333

`A170974(n)-A170980(A170965(n)!)`
-/

namespace A170973.P16718896842279406333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170974 n - A170980 (Nat.factorial (A170965 n).toNat)

end

end A170973.P16718896842279406333

/-! ## A170973.P2543065935089783904

`A170975(n)-A170980(A170964(n)!)`
-/

namespace A170973.P2543065935089783904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n - A170980 (Nat.factorial (A170964 n).toNat)

end

end A170973.P2543065935089783904

/-!
# A170974: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 11.

The programs for A170974, there is no canonical definition to state claims against.
-/

/-! ## A170974.P11998012317392246767

`A169975(n)-A025465(A002865(n))`
-/

namespace A170974.P11998012317392246767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A025465 (A002865 n).toNat

end

end A170974.P11998012317392246767

/-! ## A170974.P9684082925581788113

`A170975(n)-A025465(A002865(n))`
-/

namespace A170974.P9684082925581788113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n - A025465 (A002865 n).toNat

end

end A170974.P9684082925581788113

/-! ## A170974.P154634744759152384

`A169975(n)-A124761(A324058(n))`
-/

namespace A170974.P154634744759152384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A124761 (A324058 n).toNat

end

end A170974.P154634744759152384

/-! ## A170974.P12745872378511219473

`A170975(n)-A124761(A324058(n))`
-/

namespace A170974.P12745872378511219473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 n - A124761 (A324058 n).toNat

end

end A170974.P12745872378511219473

/-! ## A170974.P14149917962664358583

`gcd(A124761(A324058(n)), A284313(n))`
-/

namespace A170974.P14149917962664358583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124761 (A324058 n).toNat) (A284313 n)

end

end A170974.P14149917962664358583

/-!
# A170975: Expansion of Product_{i=0..m-1} (1 + x^(4*i+1)) for m = 12.

The programs for A170975, there is no canonical definition to state claims against.
-/

/-! ## A170975.P143526576265617470

`A169975(n%A017765(n))`
-/

namespace A170975.P143526576265617470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 (Int.tmod (n : ℤ) (A017765 n)).toNat

end

end A170975.P143526576265617470

/-! ## A170975.P4931442641331751825

`A169975(n)-A055641(A254766(n+1))`
-/

namespace A170975.P4931442641331751825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n - A055641 (A254766 (n + 1)).toNat

end

end A170975.P4931442641331751825

/-!
# A170976: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 4.

The programs for A170976, there is no canonical definition to state claims against.
-/

/-! ## A170976.P3273949038782341967

`A352822(C(A268944(n+1), 2)-n+1)`
-/

namespace A170976.P3273949038782341967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 ((Nat.choose (A268944 (n + 1)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A170976.P3273949038782341967

/-! ## A170976.P6410448006423961930

`and(A219487(n), A319389(A097333(n)))`
-/

namespace A170976.P6410448006423961930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219487 n) (A319389 (A097333 n).toNat)

end

end A170976.P6410448006423961930

/-! ## A170976.P11658341562963697846

`and(A000121(A185788(n+1)), A219487(n))`
-/

namespace A170976.P11658341562963697846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000121 (A185788 (n + 1)).toNat) (A219487 n)

end

end A170976.P11658341562963697846

/-! ## A170976.P13660231686394594067

`and(A205600(n+1), A319389(A097333(n)))`
-/

namespace A170976.P13660231686394594067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A205600 (n + 1)) (A319389 (A097333 n).toNat)

end

end A170976.P13660231686394594067

/-! ## A170976.P1167746081600784155

`and(2-A326072(n+1), A319389(A097333(n)))`
-/

namespace A170976.P1167746081600784155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A326072 (n + 1)) (A319389 (A097333 n).toNat)

end

end A170976.P1167746081600784155

/-!
# A170977: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 5.

The programs for A170977, there is no canonical definition to state claims against.
-/

/-! ## A170977.P18063158338098394122

`A133847(n+1)%A097847(A007444(n+5))`
-/

namespace A170977.P18063158338098394122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133847 (n + 1)) (A097847 (A007444 (n + 5)).toNat)

end

end A170977.P18063158338098394122

/-! ## A170977.P6882001616114190417

`A102404(A102427(3*n+4)%(n+1))`
-/

namespace A170977.P6882001616114190417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 (Int.tmod (A102427 (3 * n + 4)) (n + 1 : ℤ)).toNat

end

end A170977.P6882001616114190417

/-! ## A170977.P8550270972729438814

`A196563(A089411(n)+A001608(n))`
-/

namespace A170977.P8550270972729438814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A089411 n + A001608 n).toNat

end

end A170977.P8550270972729438814

/-! ## A170977.P10845876566598815885

`A322452(A344368(n+1)+A329868(n+1))`
-/

namespace A170977.P10845876566598815885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A344368 (n + 1) + A329868 (n + 1)).toNat

end

end A170977.P10845876566598815885

/-! ## A170977.P10840219253074302901

`A101825(and(A047209(n+1), A167123(n+1)))`
-/

namespace A170977.P10840219253074302901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (Int.land (A047209 (n + 1)) (A167123 (n + 1))).toNat

end

end A170977.P10840219253074302901

/-!
# A170978: Expansion of Product_{i=1..m-1} (1 + x^(4*i-1)) * (1 + x^(2*m-1)) for m = 6.

The programs for A170978, there is no canonical definition to state claims against.
-/

/-! ## A170978.P6326981004950289026

`A324870(A342810(n+1))+A147599(n)`
-/

namespace A170978.P6326981004950289026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (A342810 (n + 1)).toNat + A147599 n

end

end A170978.P6326981004950289026

/-! ## A170978.P8913561865823123786

`A324870(A342810(n+1))+A170959(n)`
-/

namespace A170978.P8913561865823123786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (A342810 (n + 1)).toNat + A170959 n

end

end A170978.P8913561865823123786

/-! ## A170978.P6137490425156657007

`A324870(A342810(n+1))+A170961(n)`
-/

namespace A170978.P6137490425156657007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (A342810 (n + 1)).toNat + A170961 n

end

end A170978.P6137490425156657007

/-! ## A170978.P2293060989203648077

`A324870(A342810(n+1))+A170962(n)`
-/

namespace A170978.P2293060989203648077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (A342810 (n + 1)).toNat + A170962 n

end

end A170978.P2293060989203648077

/-! ## A170978.P5051513694980607634

`A324870(A342810(n+1))+A170963(n)`
-/

namespace A170978.P5051513694980607634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (A342810 (n + 1)).toNat + A170963 n

end

end A170978.P5051513694980607634

/-!
# A170979: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 7.

The programs for A170979, there is no canonical definition to state claims against.
-/

/-! ## A170979.P3435017258734632815

`gcd(A147599(n), A243148(A008307(3*n+1)))`
-/

namespace A170979.P3435017258734632815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147599 n) (A243148 (A008307 (3 * n + 1)).toNat)

end

end A170979.P3435017258734632815

/-! ## A170979.P13646131428213180082

`A147599(n)+A058342(A327148(n))`
-/

namespace A170979.P13646131428213180082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n + A058342 (A327148 n).toNat

end

end A170979.P13646131428213180082

/-! ## A170979.P11800136444142668178

`or(A011736(A272918(n)), A147599(n))`
-/

namespace A170979.P11800136444142668178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011736 (A272918 n).toNat) (A147599 n)

end

end A170979.P11800136444142668178

/-! ## A170979.P17211409956187469754

`or(A011736(A272918(n)), A170958(n))`
-/

namespace A170979.P17211409956187469754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011736 (A272918 n).toNat) (A170958 n)

end

end A170979.P17211409956187469754

/-! ## A170979.P16067479167771863550

`A164118(A164133(n+1))+A147599(n)`
-/

namespace A170979.P16067479167771863550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164118 (A164133 (n + 1)).toNat + A147599 n

end

end A170979.P16067479167771863550

/-!
# A170980: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 8.

The programs for A170980, there is no canonical definition to state claims against.
-/

/-! ## A170980.P3114762343136719743

`A217096(A271341(n))+A147599(n)`
-/

namespace A170980.P3114762343136719743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A271341 n).toNat + A147599 n

end

end A170980.P3114762343136719743

/-! ## A170980.P11397043862986760435

`A217096(A271341(n))+A170959(n)`
-/

namespace A170980.P11397043862986760435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A271341 n).toNat + A170959 n

end

end A170980.P11397043862986760435

/-! ## A170980.P14446851619220821173

`A217096(A271341(n))+A170960(n)`
-/

namespace A170980.P14446851619220821173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A271341 n).toNat + A170960 n

end

end A170980.P14446851619220821173

/-! ## A170980.P5260927377372930917

`A217096(A271341(n))+A170961(n)`
-/

namespace A170980.P5260927377372930917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A271341 n).toNat + A170961 n

end

end A170980.P5260927377372930917

/-! ## A170980.P9759430350516429336

`A217096(A271341(n))+A170963(n)`
-/

namespace A170980.P9759430350516429336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 (A271341 n).toNat + A170963 n

end

end A170980.P9759430350516429336

/-!
# A170981: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 9.

The programs for A170981, there is no canonical definition to state claims against.
-/

/-! ## A170981.P1499967762015162444

`abs(A284316(n))^A360672(A360672(3*n+1))`
-/

namespace A170981.P1499967762015162444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A284316 n| : ℚ) ^ (A360672 (A360672 (3 * n + 1)).toNat : ℤ)

end

end A170981.P1499967762015162444

/-! ## A170981.P8711852005189769383

`A147599(n)^A359513(A322670(n))`
-/

namespace A170981.P8711852005189769383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147599 n : ℚ) ^ (A359513 (A322670 n).toNat : ℤ)

end

end A170981.P8711852005189769383

/-! ## A170981.P15695926193980882239

`gcd(A147599(n), A206499(A311786(n)))`
-/

namespace A170981.P15695926193980882239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147599 n) (A206499 (A311786 n).toNat)

end

end A170981.P15695926193980882239

/-! ## A170981.P8182063908452729174

`or(A170965(n), A206499(A311786(n)))`
-/

namespace A170981.P8182063908452729174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170965 n) (A206499 (A311786 n).toNat)

end

end A170981.P8182063908452729174

/-! ## A170981.P5880321312159126667

`A286106(A255549(n+1))+A147599(n)`
-/

namespace A170981.P5880321312159126667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286106 (A255549 (n + 1)).toNat + A147599 n

end

end A170981.P5880321312159126667

/-!
# A170982: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 10.

The programs for A170982, there is no canonical definition to state claims against.
-/

/-! ## A170982.P228371208103500051

`A147599(n)+A170958(n)-A170957(n)`
-/

namespace A170982.P228371208103500051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n + (A170958 n - A170957 n)

end

end A170982.P228371208103500051

/-! ## A170982.P6298220242064836423

`A170958(n)+A170962(n)-A170957(n)`
-/

namespace A170982.P6298220242064836423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 n + (A170962 n - A170957 n)

end

end A170982.P6298220242064836423

/-! ## A170982.P16583243881392047675

`A170958(n)+A170963(n)-A170957(n)`
-/

namespace A170982.P16583243881392047675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 n + (A170963 n - A170957 n)

end

end A170982.P16583243881392047675

/-! ## A170982.P11954149174269322819

`A170958(n)+A170964(n)-A170957(n)`
-/

namespace A170982.P11954149174269322819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 n + (A170964 n - A170957 n)

end

end A170982.P11954149174269322819

/-! ## A170982.P14835059332159186510

`A170958(n)+A170965(n)-A170957(n)`
-/

namespace A170982.P14835059332159186510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170958 n + (A170965 n - A170957 n)

end

end A170982.P14835059332159186510

/-!
# A170983: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 11.

The programs for A170983, there is no canonical definition to state claims against.
-/

/-! ## A170983.P9603678679990519880

`A147599(A102683(A113439(n))+n)`
-/

namespace A170983.P9603678679990519880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 (A102683 (A113439 n).toNat + (n : ℤ)).toNat

end

end A170983.P9603678679990519880

/-! ## A170983.P16193458054751818644

`A170961(A102683(A113439(n))+n)`
-/

namespace A170983.P16193458054751818644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170961 (A102683 (A113439 n).toNat + (n : ℤ)).toNat

end

end A170983.P16193458054751818644

/-! ## A170983.P13193000755297343284

`A170963(A102683(A113439(n))+n)`
-/

namespace A170983.P13193000755297343284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170963 (A102683 (A113439 n).toNat + (n : ℤ)).toNat

end

end A170983.P13193000755297343284

/-! ## A170983.P17784952251681018832

`A170965(A102683(A113439(n))+n)`
-/

namespace A170983.P17784952251681018832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 (A102683 (A113439 n).toNat + (n : ℤ)).toNat

end

end A170983.P17784952251681018832

/-! ## A170983.P8402538384341137632

`A147599(n)+A025469(A027383(n+1)/2)`
-/

namespace A170983.P8402538384341137632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n + A025469 (SequenceMachineLib.roundAway ((A027383 (n + 1) : ℚ) / 2)).toNat

end

end A170983.P8402538384341137632

/-!
# A170984: Expansion of (Product_{i=1..m-1} (1 + x^(4*i-1))) * (1 + x^(2*m-1)) for m = 12.

The programs for A170984, there is no canonical definition to state claims against.
-/

/-! ## A170984.P17776369162563650359

`A147599(n)+A086080(A096994(n))`
-/

namespace A170984.P17776369162563650359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n + A086080 (A096994 n).toNat

end

end A170984.P17776369162563650359

/-! ## A170984.P4086709251187502793

`A170961(n)+A086080(A096994(n))`
-/

namespace A170984.P4086709251187502793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170961 n + A086080 (A096994 n).toNat

end

end A170984.P4086709251187502793

/-! ## A170984.P11975219136790113787

`A170963(n)+A086080(A096994(n))`
-/

namespace A170984.P11975219136790113787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170963 n + A086080 (A096994 n).toNat

end

end A170984.P11975219136790113787

/-! ## A170984.P266659477897972261

`A170964(n)+A086080(A096994(n))`
-/

namespace A170984.P266659477897972261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170964 n + A086080 (A096994 n).toNat

end

end A170984.P266659477897972261

/-! ## A170984.P3821801826432078685

`A170965(n)+A086080(A096994(n))`
-/

namespace A170984.P3821801826432078685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 n + A086080 (A096994 n).toNat

end

end A170984.P3821801826432078685

/-!
# A170985: Carryless product n X n in base 4.

The programs for A170985, there is no canonical definition to state claims against.
-/

/-! ## A170985.P17623448597507421417

`(A063694(n)%A318182(n+1))²`
-/

namespace A170985.P17623448597507421417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063694 n) (A318182 (n + 1)) ^ 2

end

end A170985.P17623448597507421417

/-! ## A170985.P9591658185430919921

`and(n, A002450(2*n))²`
-/

namespace A170985.P9591658185430919921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A002450 (2 * n)) ^ 2

end

end A170985.P9591658185430919921

/-! ## A170985.P16482123652426621103

`and(n, A079319(2*n))²`
-/

namespace A170985.P16482123652426621103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A079319 (2 * n)) ^ 2

end

end A170985.P16482123652426621103

/-! ## A170985.P9129229624610558813

`and(n, A266284(2*n))²`
-/

namespace A170985.P9129229624610558813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A266284 (2 * n)) ^ 2

end

end A170985.P9129229624610558813

/-! ## A170985.P17369923098325906362

`and(n, A266980(2*n))²`
-/

namespace A170985.P17369923098325906362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A266980 (2 * n)) ^ 2

end

end A170985.P17369923098325906362

/-! ## A170985.P80365144420904763

`and(n, A272743(2*n))²`
-/

namespace A170985.P80365144420904763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A272743 (2 * n)) ^ 2

end

end A170985.P80365144420904763

/-! ## A170985.P6568796183392947273

`and(n, A072197(2*n))²`
-/

namespace A170985.P6568796183392947273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A072197 (2 * n)) ^ 2

end

end A170985.P6568796183392947273

/-! ## A170985.P14494262858100479350

`and(n, A206374(2*n))²`
-/

namespace A170985.P14494262858100479350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A206374 (2 * n)) ^ 2

end

end A170985.P14494262858100479350

/-! ## A170985.P1780726407253856956

`and(n, A266873(2*n))²`
-/

namespace A170985.P1780726407253856956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A266873 (2 * n)) ^ 2

end

end A170985.P1780726407253856956

/-! ## A170985.P3736960369867301490

`and(n, A273251(2*n))²`
-/

namespace A170985.P3736960369867301490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A273251 (2 * n)) ^ 2

end

end A170985.P3736960369867301490

/-!
# A170987: Carryless product n X n in base 6.

The programs for A170987, there is no canonical definition to state claims against.
-/

/-! ## A170987.P16263652484209504953

`n^(A201030(n+1)%3)`
-/

namespace A170987.P16263652484209504953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A201030 (n + 1)) 3 : ℤ)

end

end A170987.P16263652484209504953

/-! ## A170987.P10292138899897328934

`n^(A335983(n+1)%3)`
-/

namespace A170987.P10292138899897328934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A335983 (n + 1)) 3 : ℤ)

end

end A170987.P10292138899897328934

/-! ## A170987.P3370871745791307061

`n^val(A005453(n+1), 2)`
-/

namespace A170987.P3370871745791307061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (A005453 (n + 1)).toNat 2

end

end A170987.P3370871745791307061

/-! ## A170987.P875066738494891341

`n^A030341(A007116(n))`
-/

namespace A170987.P875066738494891341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A030341 (A007116 n).toNat : ℤ)

end

end A170987.P875066738494891341

/-! ## A170987.P16451068682763227928

`n^A197548(A015128(n))`
-/

namespace A170987.P16451068682763227928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A197548 (A015128 n).toNat : ℤ)

end

end A170987.P16451068682763227928

/-!
# A170988: Carryless product n X n in base 7.

The programs for A170988, there is no canonical definition to state claims against.
-/

/-! ## A170988.P7789094728658395046

`n²%(A092726(n)+7)`
-/

namespace A170988.P7789094728658395046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A092726 n + 7)

end

end A170988.P7789094728658395046

/-! ## A170988.P16829615697087085078

`n²%A001145(A006723(n))`
-/

namespace A170988.P16829615697087085078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A001145 (A006723 n).toNat)

end

end A170988.P16829615697087085078

/-! ## A170988.P4591229570389948790

`∑{digits}[n, #²]%A260889(A048052(n+1))`
-/

namespace A170988.P4591229570389948790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) (A260889 (A048052 (n + 1)).toNat)

end

end A170988.P4591229570389948790

/-! ## A170988.P14131876066407849074

`A000290(n)%A065505(A011797(n))`
-/

namespace A170988.P14131876066407849074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A065505 (A011797 n).toNat)

end

end A170988.P14131876066407849074

/-! ## A170988.P2330341406500232243

`A169669(n)%A159994(A006926(n))`
-/

namespace A170988.P2330341406500232243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169669 n) (A159994 (A006926 n).toNat)

end

end A170988.P2330341406500232243

/-!
# A170989: Carryless product n X n in base 8.

The programs for A170989, there is no canonical definition to state claims against.
-/

/-! ## A170989.P9579725985897939657

`and(n², A158593(A017919(n)))`
-/

namespace A170989.P9579725985897939657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A158593 (A017919 n).toNat)

end

end A170989.P9579725985897939657

/-! ## A170989.P13196162340141215956

`and(n², A185934(A344914(n)))`
-/

namespace A170989.P13196162340141215956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A185934 (A344914 n).toNat)

end

end A170989.P13196162340141215956

/-! ## A170989.P3726307672857866737

`and(n, A068974(n+3))²`
-/

namespace A170989.P3726307672857866737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A068974 (n + 3)) ^ 2

end

end A170989.P3726307672857866737

/-! ## A170989.P916286089674815007

`and(n, A265790(n+4))²`
-/

namespace A170989.P916286089674815007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A265790 (n + 4)) ^ 2

end

end A170989.P916286089674815007

/-! ## A170989.P12132575222718777637

`and(n², A338041(A279674(n)))`
-/

namespace A170989.P12132575222718777637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A338041 (A279674 n).toNat)

end

end A170989.P12132575222718777637

/-!
# A170990: Carryless product n X n in base 9.

The programs for A170990, there is no canonical definition to state claims against.
-/

/-! ## A170990.P2238547604569623524

`n²%A052268(A115205(n))`
-/

namespace A170990.P2238547604569623524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A052268 (A115205 n).toNat)

end

end A170990.P2238547604569623524

/-! ## A170990.P16240326539737286465

`A000290(n)%A052268(A306860(n))`
-/

namespace A170990.P16240326539737286465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A052268 (A306860 n).toNat)

end

end A170990.P16240326539737286465

/-! ## A170990.P17952192459830752471

`A028908(n)%A152288(A192443(n+1))`
-/

namespace A170990.P17952192459830752471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028908 n) (A152288 (A192443 (n + 1)).toNat)

end

end A170990.P17952192459830752471

/-! ## A170990.P15226936373286095397

`∑{digits}[n, #]²%(9^A110731(n+1))`
-/

namespace A170990.P15226936373286095397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A110731 (n + 1) : ℤ)))

end

end A170990.P15226936373286095397

/-! ## A170990.P10607445158655951576

`∑{digits}[n, #]²%A016269(A110731(n+1))`
-/

namespace A170990.P10607445158655951576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) (A016269 (A110731 (n + 1)).toNat)

end

end A170990.P10607445158655951576

/-!
# A170991: Number of genus 2, degree n, simply ramified covers of an elliptic curve.

The programs for A170991, the canonical program `A170991.P6823033548944511429` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A170991 has offset 2).

The definition of A170991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A170991.P6823033548944511429

`2*A126858(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A170991

/-- `2*A126858(n+2)` -/
def P6823033548944511429.Spec : Prop :=
  ∀ n, P6823033548944511429.a n = A170991 (n + 2)

theorem P6823033548944511429.correct : P6823033548944511429.Spec := by
  intro n
  simp only [A170991, Nat.add_sub_cancel]

end A170991

/-! ## A170991.P7687386212160833102

`A126858(n+2)+A126858(n+2)%A280869(n+4)`
-/

namespace A170991.P7687386212160833102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126858 (n + 2) + Int.tmod (A126858 (n + 2)) (A280869 (n + 4))

end

end A170991.P7687386212160833102

namespace A170991

/-- `A126858(n+2)+A126858(n+2)%A280869(n+4)` -/
def P7687386212160833102.Spec : Prop :=
  ∀ n, P7687386212160833102.a n = A170991 (n + 2)

end A170991

/-! ## A170991.P7630541420198357573

`∑[A005843(Δ[A126858(n+1)])]`
-/

namespace A170991.P7630541420198357573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126858 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A170991.P7630541420198357573

namespace A170991

/-- `∑[A005843(Δ[A126858(n+1)])]` -/
def P7630541420198357573.Spec : Prop :=
  ∀ n, P7630541420198357573.a n = A170991 (n + 2)

end A170991

/-! ## A170991.P9512762388517313837

`A004277(A126858(n+2))`
-/

namespace A170991.P9512762388517313837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A126858 (n + 2)).toNat

end

end A170991.P9512762388517313837

namespace A170991

/-- `A004277(A126858(n+2))` -/
def P9512762388517313837.Spec : Prop :=
  ∀ n, P9512762388517313837.a n = A170991 (n + 2)

end A170991

/-! ## A170991.P4278031104759633732

`A005843(A126858(abs(xor(n, -1))+1))`
-/

namespace A170991.P4278031104759633732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A126858 (|Int.xor (n : ℤ) (-1)| + 1).toNat).toNat

end

end A170991.P4278031104759633732

namespace A170991

/-- `A005843(A126858(abs(xor(n, -1))+1))` -/
def P4278031104759633732.Spec : Prop :=
  ∀ n, P4278031104759633732.a n = A170991 (n + 2)

end A170991

/-!
# A170992: Number of genus 3, degree n, simply ramified covers of an elliptic curve.

The programs for A170992, there is no canonical definition to state claims against.
-/

/-! ## A170992.P2628586004540548354

`2*A126861(n+2)`
-/

namespace A170992.P2628586004540548354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126861 (n + 2)

end

end A170992.P2628586004540548354

