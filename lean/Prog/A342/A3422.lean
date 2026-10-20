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
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A342202: T(n,k) = V(n,k)/k!, where V(n,k) = k^(n*k) - Sum_{t=1..k-1} binomial(k,t)*k^(n*(k-t))*V(n,t) for n, k >= 1; square array T read by upwards antidiagonals.

The programs for A342202, there is no canonical definition to state claims against.
-/

/-! ## A342202.P15047806235405284159

`A123146(n)-A232270(A164863(n))`
-/

namespace A342202.P15047806235405284159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123146 n - A232270 (A164863 n).toNat

end

end A342202.P15047806235405284159

/-! ## A342202.P17850509062002998458

`and(A079289(n), A229445(A022133(n)))`
-/

namespace A342202.P17850509062002998458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079289 n) (A229445 (A022133 n).toNat)

end

end A342202.P17850509062002998458

/-!
# A342205: a(n) = T(n,n+1) where T(n,x) is a Chebyshev polynomial of the first kind.

The programs for A342205, there is no canonical definition to state claims against.
-/

/-! ## A342205.P1534292605311291364

`A322836(A056220(n+1))`
-/

namespace A342205.P1534292605311291364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A056220 (n + 1)).toNat

end

end A342205.P1534292605311291364

/-! ## A342205.P4566910138470396797

`A322836(A060626(n)/2)`
-/

namespace A342205.P4566910138470396797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (SequenceMachineLib.roundAway ((A060626 n : ℚ) / 2)).toNat

end

end A342205.P4566910138470396797

/-! ## A342205.P15440185403102171588

`A322836(∑[A016813(n)]+n)`
-/

namespace A342205.P15440185403102171588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A342205.P15440185403102171588

/-! ## A342205.P12641379541274071415

`A322836(A001105(n+1)-1)`
-/

namespace A342205.P12641379541274071415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A001105 (n + 1) - 1).toNat

end

end A342205.P12641379541274071415

/-! ## A342205.P6150839947432282270

`A322836(A047838(2*(n+1)))`
-/

namespace A342205.P6150839947432282270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A047838 (2 * (n + 1))).toNat

end

end A342205.P6150839947432282270

/-!
# A342206: a(n) = T(n,n+2) where T(n,x) is a Chebyshev polynomial of the first kind.

The programs for A342206, there is no canonical definition to state claims against.
-/

/-! ## A342206.P17670249980750461225

`A322836(∑[4*(n+1)]-1)`
-/

namespace A342206.P17670249980750461225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A342206.P17670249980750461225

/-! ## A342206.P12428433549552282920

`A101124((n+1)²+(n+2)²)`
-/

namespace A342206.P12428433549552282920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A342206.P12428433549552282920

/-! ## A342206.P15653926339984170412

`record[gcd(A101124(n+2), A322836(n))]`
-/

namespace A342206.P15653926339984170412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101124 (n + 2)) (A322836 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342206.P15653926339984170412

/-!
# A342207: a(n) = U(n,n+1) where U(n,x) is a Chebyshev polynomial of the second kind.

The programs for A342207, there is no canonical definition to state claims against.
-/

/-! ## A342207.P7411018272526668589

`A323182(A056220(n+1))`
-/

namespace A342207.P7411018272526668589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A056220 (n + 1)).toNat

end

end A342207.P7411018272526668589

/-! ## A342207.P1480711437445522232

`A323182(eq[1, A114327(n)])`
-/

namespace A342207.P1480711437445522232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342207.P1480711437445522232

/-! ## A342207.P9475606959668243329

`A323182(∑[A016813(n)]+n)`
-/

namespace A342207.P9475606959668243329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A342207.P9475606959668243329

/-! ## A342207.P7045931512385054968

`A323182(A001105(n+1)-1)`
-/

namespace A342207.P7045931512385054968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A001105 (n + 1) - 1).toNat

end

end A342207.P7045931512385054968

/-! ## A342207.P15511024366591886280

`A323182(eq[1, A323158(2*(n+1))])`
-/

namespace A342207.P15511024366591886280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323158 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342207.P15511024366591886280

/-!
# A342208: Number of Frobenius partitions of 2*n that satisfy the condition that the sum of the entries on the top row plus the number of columns is less than or equal to the sum of the entries on the bottom row.

The programs for A342208, there is no canonical definition to state claims against.
-/

/-! ## A342208.P15964919134668503115

`A004001(A094862(n+1))+A001924(n)`
-/

namespace A342208.P15964919134668503115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A094862 (n + 1)).toNat + A001924 n

end

end A342208.P15964919134668503115

/-! ## A342208.P18202461865093355951

`∑[A229300(A052952(n)+A025883(2*(n+1)))]`
-/

namespace A342208.P18202461865093355951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A052952 n + A025883 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342208.P18202461865093355951

/-!
# A342210: Product of first n secant numbers.

The programs for A342210, there is no canonical definition to state claims against.
-/

/-! ## A342210.P1355049676390517868

`∏[A000364(n)]`
-/

namespace A342210.P1355049676390517868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342210.P1355049676390517868

/-! ## A342210.P9525862378574246135

`∏[abs(A028296(n))]`
-/

namespace A342210.P9525862378574246135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028296 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342210.P9525862378574246135

/-! ## A342210.P17430922227133068317

`∏[A008294(n²)]`
-/

namespace A342210.P17430922227133068317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342210.P17430922227133068317

/-! ## A342210.P4894658048670284765

`∏[A125053(n²)]`
-/

namespace A342210.P4894658048670284765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342210.P4894658048670284765

/-! ## A342210.P3078068358477212715

`∏[A060063(∑[n])]`
-/

namespace A342210.P3078068358477212715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060063 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A342210.P3078068358477212715

/-!
# A342211: Largest number of maximal acyclic node-induced subgraphs of an n-node graph.

The programs for A342211, there is no canonical definition to state claims against.
-/

/-! ## A342211.P1872790974512741423

`A342212(n+1)+char[6]`
-/

namespace A342211.P1872790974512741423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342212 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A342211.P1872790974512741423

/-! ## A342211.P1098165282156284173

`A384323(A238128(n))+A342212(n+1)`
-/

namespace A342211.P1098165282156284173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384323 (A238128 n).toNat + A342212 (n + 1)

end

end A342211.P1098165282156284173

/-! ## A342211.P9716124597689469612

`A156264(n+1)+A023443(A342212(n+1))`
-/

namespace A342211.P9716124597689469612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (n + 1) + A023443 (A342212 (n + 1)).toNat

end

end A342211.P9716124597689469612

/-!
# A342212: Largest number of maximal bipartite node-induced subgraphs of an n-node graph.

The programs for A342212, there is no canonical definition to state claims against.
-/

/-! ## A342212.P5940832463017648527

`A342211(n+1)-char[6]`
-/

namespace A342212.P5940832463017648527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342211 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A342212.P5940832463017648527

/-! ## A342212.P9939981447440666628

`A359548(A043318(n+3))+A342211(n+1)`
-/

namespace A342212.P9939981447440666628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359548 (A043318 (n + 3)).toNat + A342211 (n + 1)

end

end A342212.P9939981447440666628

/-! ## A342212.P14374921191929845074

`A357475(A284559(3*(n+1)))+A342211(n+1)`
-/

namespace A342212.P14374921191929845074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357475 (A284559 (3 * (n + 1))).toNat + A342211 (n + 1)

end

end A342212.P14374921191929845074

/-!
# A342213: Largest number of maximal planar node-induced subgraphs of an n-node graph.

The programs for A342213, there is no canonical definition to state claims against.
-/

/-! ## A342213.P10550296620373058640

`or(char[2]+char[n²], C(n+1, 4))`
-/

namespace A342213.P10550296620373058640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)) (Nat.choose (n + 1) 4)

end

end A342213.P10550296620373058640

/-! ## A342213.P8110776886645704510

`A116980(n)+∑[C(n, 3)]`
-/

namespace A342213.P8110776886645704510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116980 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342213.P8110776886645704510

/-! ## A342213.P17183565418439770532

`or(∑[C(n, 3)], A028313(n))`
-/

namespace A342213.P17183565418439770532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A028313 n)

end

end A342213.P17183565418439770532

/-! ## A342213.P8603588734695979569

`or(C(n+1, 4), A010048(n))`
-/

namespace A342213.P8603588734695979569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose (n + 1) 4 : ℤ) (A010048 n)

end

end A342213.P8603588734695979569

/-! ## A342213.P13662304585468429442

`or(A331315(n)², ∑[C(n, 3)])`
-/

namespace A342213.P13662304585468429442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A331315 n ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342213.P13662304585468429442

/-!
# A342215: Two successive terms always share a common "digit pattern" (see the Comments section). The successive "common digit patterns", concatenated, reproduce the successive terms of the sequence, concatenated.

The programs for A342215, there is no canonical definition to state claims against.
-/

/-! ## A342215.P14483669127730177825

`A376454(A365574(n))`
-/

namespace A342215.P14483669127730177825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376454 (A365574 n).toNat

end

end A342215.P14483669127730177825

/-!
# A342217: The n-th and a(n)-th points of Hilbert's Hamiltonian walk (A059252, A059253) are symmetrical with respect to the line X=Y.

The programs for A342217, there is no canonical definition to state claims against.
-/

/-! ## A342217.P1691702919309195622

`A163359(A163358(n))`
-/

namespace A342217.P1691702919309195622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163358 n).toNat

end

end A342217.P1691702919309195622

/-! ## A342217.P8317373187991846641

`A163357(A163360(n))`
-/

namespace A342217.P8317373187991846641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163360 n).toNat

end

end A342217.P8317373187991846641

/-! ## A342217.P14805144827248505907

`A166043(A166042(n))`
-/

namespace A342217.P14805144827248505907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A166042 n).toNat

end

end A342217.P14805144827248505907

/-! ## A342217.P11891227869778625808

`A166041(A166044(n))`
-/

namespace A342217.P11891227869778625808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A166044 n).toNat

end

end A342217.P11891227869778625808

/-! ## A342217.P16710765122805547041

`A163359(A163362(n+1)-1)`
-/

namespace A342217.P16710765122805547041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163362 (n + 1) - 1).toNat

end

end A342217.P16710765122805547041

/-! ## A342217.P12678832925925135458

`A163357(A163364(n+1)-1)`
-/

namespace A342217.P12678832925925135458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163364 (n + 1) - 1).toNat

end

end A342217.P12678832925925135458

/-! ## A342217.P1394702508172229531

`A163355(A057300(A163356(n)))`
-/

namespace A342217.P1394702508172229531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A057300 (A163356 n).toNat).toNat

end

end A342217.P1394702508172229531

/-! ## A342217.P13296252087707426063

`A302845(A057300(A302846(n)))`
-/

namespace A342217.P13296252087707426063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A057300 (A302846 n).toNat).toNat

end

end A342217.P13296252087707426063

/-! ## A342217.P11159218285484575324

`A302845(A300838(A302844(n)))`
-/

namespace A342217.P11159218285484575324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A300838 (A302844 n).toNat).toNat

end

end A342217.P11159218285484575324

/-! ## A342217.P4866234414399263650

`A163355(A057300(A163906(A163355(n))))`
-/

namespace A342217.P4866234414399263650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A057300 (A163906 (A163355 n).toNat).toNat).toNat

end

end A342217.P4866234414399263650

/-! ## A342217.P10344819207527464132

`A163355(A057300(A163916(A163905(n))))`
-/

namespace A342217.P10344819207527464132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A057300 (A163916 (A163905 n).toNat).toNat).toNat

end

end A342217.P10344819207527464132

/-! ## A342217.P9457437576306628900

`A163359(A061579(A163360(A061579(A061579(n)))))`
-/

namespace A342217.P9457437576306628900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A061579 (A163360 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A342217.P9457437576306628900

/-! ## A342217.P14984794667827082366

`A166043(A163334(A163358(A163358(A163357(n)))))`
-/

namespace A342217.P14984794667827082366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163334 (A163358 (A163358 (A163357 n).toNat).toNat).toNat).toNat

end

end A342217.P14984794667827082366

/-! ## A342217.P13715910172812728456

`A166043(A163334(A163358(A166044(A166043(n)))))`
-/

namespace A342217.P13715910172812728456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163334 (A163358 (A166044 (A166043 n).toNat).toNat).toNat).toNat

end

end A342217.P13715910172812728456

/-! ## A342217.P16477794651322626255

`A166041(A163336(A163358(A166042(A166041(n)))))`
-/

namespace A342217.P16477794651322626255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163336 (A163358 (A166042 (A166041 n).toNat).toNat).toNat).toNat

end

end A342217.P16477794651322626255

/-!
# A342218: The n-th and a(n)-th points of the Peano curve (A163528, A163529) are symmetrical with respect to the line X=Y.

The programs for A342218, there is no canonical definition to state claims against.
-/

/-! ## A342218.P9772684769721222018

`A163334(A163337(n))`
-/

namespace A342218.P9772684769721222018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163337 n).toNat

end

end A342218.P9772684769721222018

/-! ## A342218.P1966061043672785590

`A166044(A166041(n))`
-/

namespace A342218.P1966061043672785590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A166041 n).toNat

end

end A342218.P1966061043672785590

/-! ## A342218.P793425546303680336

`A166042(A166043(n))`
-/

namespace A342218.P793425546303680336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A166043 n).toNat

end

end A342218.P793425546303680336

/-! ## A342218.P7699732822109323317

`A163334(A163341(n+1)-1)`
-/

namespace A342218.P7699732822109323317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163341 (n + 1) - 1).toNat

end

end A342218.P7699732822109323317

/-! ## A342218.P14254659016657757339

`A163333(A163332(A163327(n)))`
-/

namespace A342218.P14254659016657757339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163332 (A163327 n).toNat).toNat

end

end A342218.P14254659016657757339

/-! ## A342218.P17119543990086736690

`A163332(A163327(A163332(n)))`
-/

namespace A342218.P17119543990086736690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163327 (A163332 n).toNat).toNat

end

end A342218.P17119543990086736690

/-! ## A342218.P4640039513933818645

`A163333(A163327(A163333(n)))`
-/

namespace A342218.P4640039513933818645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163327 (A163333 n).toNat).toNat

end

end A342218.P4640039513933818645

/-! ## A342218.P6664353494402711866

`A163334(A163331(A163334(A163329(n))))`
-/

namespace A342218.P6664353494402711866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163331 (A163334 (A163329 n).toNat).toNat).toNat

end

end A342218.P6664353494402711866

/-! ## A342218.P3918608056127897460

`A163334(A163358(A166043(A163358(A163357(n)))))`
-/

namespace A342218.P3918608056127897460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163358 (A166043 (A163358 (A163357 n).toNat).toNat).toNat).toNat

end

end A342218.P3918608056127897460

/-! ## A342218.P12804561529767221669

`A166042(A163357(A163337(A166041(A166042(n)))))`
-/

namespace A342218.P12804561529767221669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163357 (A163337 (A166041 (A166042 n).toNat).toNat).toNat).toNat

end

end A342218.P12804561529767221669

/-! ## A342218.P14914305056674554221

`A166044(A163359(A163337(A166043(A166044(n)))))`
-/

namespace A342218.P14914305056674554221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163359 (A163337 (A166043 (A166044 n).toNat).toNat).toNat).toNat

end

end A342218.P14914305056674554221

/-! ## A342218.P10376186201436688950

`A163334(A163331(A163334(A061579(A163331(n)))))`
-/

namespace A342218.P10376186201436688950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163331 (A163334 (A061579 (A163331 n).toNat).toNat).toNat).toNat

end

end A342218.P10376186201436688950

/-! ## A342218.P5483896003049370415

`A163334(A163331(A163332(A163331(A163330(n)))))`
-/

namespace A342218.P5483896003049370415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163331 (A163332 (A163331 (A163330 n).toNat).toNat).toNat).toNat

end

end A342218.P5483896003049370415

/-! ## A342218.P16713468919924796159

`A163333(A163332(A163328(A163331(n))))`
-/

namespace A342218.P16713468919924796159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163332 (A163328 (A163331 n).toNat).toNat).toNat

end

end A342218.P16713468919924796159

/-! ## A342218.P14226229207390740647

`A163336(A163335(n))`
-/

namespace A342218.P14226229207390740647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163335 n).toNat

end

end A342218.P14226229207390740647

/-! ## A342218.P10228349947191758706

`A163336(A163339(n+1)-1)`
-/

namespace A342218.P10228349947191758706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163339 (n + 1) - 1).toNat

end

end A342218.P10228349947191758706

/-! ## A342218.P10285283450771674054

`A163340(A163335(n)+1)-1`
-/

namespace A342218.P10285283450771674054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163340 (A163335 n + 1).toNat - 1

end

end A342218.P10285283450771674054

/-! ## A342218.P3224694305635263023

`A163336(A061579(A163337(A061579(A061579(n)))))`
-/

namespace A342218.P3224694305635263023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A061579 (A163337 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A342218.P3224694305635263023

/-! ## A342218.P15667261034458173294

`A163336(A163329(A163332(A163329(A163328(n)))))`
-/

namespace A342218.P15667261034458173294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163329 (A163332 (A163329 (A163328 n).toNat).toNat).toNat).toNat

end

end A342218.P15667261034458173294

/-!
# A342219: a(1) = 1, a(2) = 2; for n > 2, a(n) = the number of terms in the maximal length sum of previous consecutive terms that equals n.

The programs for A342219, there is no canonical definition to state claims against.
-/

/-! ## A342219.P32353683359434124

`A007895(A015919(A237520(n))²)`
-/

namespace A342219.P32353683359434124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A015919 (A237520 n).toNat ^ 2).toNat

end

end A342219.P32353683359434124

/-! ## A342219.P5459961050975689516

`A359634(n)+A240465(A302832(n))`
-/

namespace A342219.P5459961050975689516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359634 n + A240465 (A302832 n).toNat

end

end A342219.P5459961050975689516

/-! ## A342219.P4349840494560301992

`A109129(A104557(2*(n+2))+A095062(n+1))`
-/

namespace A342219.P4349840494560301992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A104557 (2 * (n + 2)) + A095062 (n + 1)).toNat

end

end A342219.P4349840494560301992

/-! ## A342219.P16845894696869911922

`A060130(A289584(n)+A255641(n+1))`
-/

namespace A342219.P16845894696869911922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A289584 n + A255641 (n + 1)).toNat

end

end A342219.P16845894696869911922

/-! ## A342219.P656191630299183422

`A253589(A329800(n+1)+n)`
-/

namespace A342219.P656191630299183422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253589 (A329800 (n + 1) + (n : ℤ)).toNat

end

end A342219.P656191630299183422

/-!
# A342225: Total number of ordered graceful labelings of graphs with n edges.

The programs for A342225, there is no canonical definition to state claims against.
-/

/-! ## A342225.P8575477429719314744

`A075723(n+1)+A002264(A047781(n))`
-/

namespace A342225.P8575477429719314744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075723 (n + 1) + A002264 (A047781 n).toNat

end

end A342225.P8575477429719314744

/-! ## A342225.P8415359361284095400

`A126257(∑[(-1)^n+a(n-1)/n^(-1)])` with `a(0)=3`
-/

namespace A342225.P8415359361284095400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  ((-1) ^ n : ℚ) + f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A342225.P8415359361284095400

/-!
# A342226: Numbers k with digits in nondecreasing order and satisfying k < (product of digits of k) * (sum of digits of k).

The programs for A342226, there is no canonical definition to state claims against.
-/

/-! ## A342226.P2632002865447645835

`∩[A066310(n+1), A179239(n)]`
-/

namespace A342226.P2632002865447645835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342226.P2632002865447645835

/-! ## A342226.P18323446145534134486

`∩[A009994(n+1), A066310(n+1)]`
-/

namespace A342226.P18323446145534134486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342226.P18323446145534134486

/-! ## A342226.P17917198964851415018

`∩[A066310(n+1), A381509(n+1)]`
-/

namespace A342226.P17917198964851415018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342226.P17917198964851415018

/-! ## A342226.P12516721154311489107

`record[A004185(A066310(n+1))]`
-/

namespace A342226.P12516721154311489107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A066310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342226.P12516721154311489107

/-! ## A342226.P1495776377859278100

`lt[A147454(A213217(n)), n]`
-/

namespace A342226.P1495776377859278100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147454 (A213217 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342226.P1495776377859278100

/-!
# A342227: Number of anagrams of A342226(n) in A066310.

The programs for A342227, there is no canonical definition to state claims against.
-/

/-! ## A342227.P16898163370240831876

`A000079(C(A106608(n), A295300(n+1)))`
-/

namespace A342227.P16898163370240831876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.choose (A106608 n).toNat (A295300 (n + 1)).toNat)

end

end A342227.P16898163370240831876

/-! ## A342227.P13892722497894674366

`A100238(C(A106608(n), A295300(n+1)))`
-/

namespace A342227.P13892722497894674366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100238 (Nat.choose (A106608 n).toNat (A295300 (n + 1)).toNat)

end

end A342227.P13892722497894674366

/-! ## A342227.P12507931356200917098

`A334240(C(A106608(n), A295300(n+1)))`
-/

namespace A342227.P12507931356200917098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334240 (Nat.choose (A106608 n).toNat (A295300 (n + 1)).toNat)

end

end A342227.P12507931356200917098

/-! ## A342227.P2692853073424558792

`A349016(C(A106608(n), A295300(n+1)))`
-/

namespace A342227.P2692853073424558792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349016 (Nat.choose (A106608 n).toNat (A295300 (n + 1)).toNat)

end

end A342227.P2692853073424558792

/-! ## A342227.P10693988102813764967

`A363602(C(A106608(n), A295300(n+1)))`
-/

namespace A342227.P10693988102813764967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363602 (Nat.choose (A106608 n).toNat (A295300 (n + 1)).toNat)

end

end A342227.P10693988102813764967

/-!
# A342229: Total sum of parts which are cubes in all partitions of n.

The programs for A342229, there is no canonical definition to state claims against.
-/

/-! ## A342229.P2615273504075470478

`A000070(n)-A182803(n)%A216569(n+1)`
-/

namespace A342229.P2615273504075470478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - Int.tmod (A182803 n) (A216569 (n + 1))

end

end A342229.P2615273504075470478

/-! ## A342229.P15794609151404991508

`A345913(A307058(n))+n`
-/

namespace A342229.P15794609151404991508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A307058 n).toNat + (n : ℤ)

end

end A342229.P15794609151404991508

/-! ## A342229.P5596961986211360065

`∑[∑[A339660(A238351(n))]]`
-/

namespace A342229.P5596961986211360065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339660 (A238351 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342229.P5596961986211360065

/-! ## A342229.P12533967283747843039

`A086676(n+1)-(ceil(A006877(n+1)/2)+1)`
-/

namespace A342229.P12533967283747843039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086676 (n + 1) - (⌈(A006877 (n + 1) : ℚ) / 2⌉ + 1)

end

end A342229.P12533967283747843039

/-! ## A342229.P3267523496947231640

`A324741(n)-A010060(A340338(n))`
-/

namespace A342229.P3267523496947231640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324741 n - A010060 (A340338 n).toNat

end

end A342229.P3267523496947231640

/-!
# A342230: Total number of parts which are powers of 2 in all partitions of n.

The programs for A342230, there is no canonical definition to state claims against.
-/

/-! ## A342230.P8175480384979896399

`∑[A094275(A097097(n))]-A000016(n)`
-/

namespace A342230.P8175480384979896399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A097097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000016 n

end

end A342230.P8175480384979896399

/-! ## A342230.P5160997393969804182

`A000196(A014095(n)-A354394(n))`
-/

namespace A342230.P5160997393969804182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A014095 n - A354394 n).toNat

end

end A342230.P5160997393969804182

/-! ## A342230.P8943923434943983200

`A306202(A101277(n))-A010054(n)`
-/

namespace A342230.P8943923434943983200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A101277 n).toNat - A010054 n

end

end A342230.P8943923434943983200

/-! ## A342230.P5100527611679327346

`A077866(n)-A316496(A237345(n))`
-/

namespace A342230.P5100527611679327346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077866 n - A316496 (A237345 n).toNat

end

end A342230.P5100527611679327346

/-! ## A342230.P664054045571137522

`A326080(n)-A354582(A335443(n+1))`
-/

namespace A342230.P664054045571137522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326080 n - A354582 (A335443 (n + 1)).toNat

end

end A342230.P664054045571137522

/-!
# A342232: a(1) = 2, a(n) = smallest palindromic nontrivial multiple of a(n-1) containing all decimal digits of a(n-1).

The programs for A342232, there is no canonical definition to state claims against.
-/

/-! ## A342232.P8025298322039728990

`2*A342233(A037334(n+1))`
-/

namespace A342232.P8025298322039728990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342233 (A037334 (n + 1)).toNat

end

end A342232.P8025298322039728990

/-! ## A342232.P13428550369806320895

`A328579(A342196(n))*A342233(n+1)`
-/

namespace A342232.P13428550369806320895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A342196 n).toNat * A342233 (n + 1)

end

end A342232.P13428550369806320895

/-! ## A342232.P17205137498883301643

`A342233(A037334(n+1))+A342233(n+1)`
-/

namespace A342232.P17205137498883301643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342233 (A037334 (n + 1)).toNat + A342233 (n + 1)

end

end A342232.P17205137498883301643

/-!
# A342233: a(1) = 1, a(n) = smallest palindromic nontrivial multiple of a(n-1) containing all decimal digits of a(n-1).

The programs for A342233, there is no canonical definition to state claims against.
-/

/-! ## A342233.P17027185710250622423

`A342232(n+1)/A322900(A031157(n+1))`
-/

namespace A342233.P17027185710250622423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342232 (n + 1) : ℚ) / (A322900 (A031157 (n + 1)).toNat : ℚ)

end

end A342233.P17027185710250622423

/-! ## A342233.P17812475420788741281

`A342232(n+1)/A322900(A342244(n+1))`
-/

namespace A342233.P17812475420788741281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342232 (n + 1) : ℚ) / (A322900 (A342244 (n + 1)).toNat : ℚ)

end

end A342233.P17812475420788741281

/-!
# A342234: a(n) = (27^n - 9^n)/2 - 12^n + 6^n.

The programs for A342234, the canonical program `A342234.P17614203254126583182` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342234 has offset 0).

The definition of A342234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342234.P17614203254126583182

`(27^n-9^n)/2-12^n+6^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342234

/-- `(27^n-9^n)/2-12^n+6^n` -/
def P17614203254126583182.Spec : Prop :=
  ∀ n, P17614203254126583182.a n = (A342234 n : ℚ)

end A342234

/-! ## A342234.P1855794330317381476

`3^(n-1)*A305623(Δ[n²])`
-/

namespace A342234.P1855794330317381476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A305623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A342234.P1855794330317381476

namespace A342234

/-- `3^(n-1)*A305623(Δ[n²])` -/
def P1855794330317381476.Spec : Prop :=
  ∀ n, P1855794330317381476.a n = (A342234 n : ℚ)

end A342234

/-! ## A342234.P18067077259938612456

`(A000392(2*n+1)-A000392(n+1))*A140429(n+1)`
-/

namespace A342234.P18067077259938612456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000392 (2 * n + 1) - A000392 (n + 1)) * A140429 (n + 1)

end

end A342234.P18067077259938612456

namespace A342234

/-- `(A000392(2*n+1)-A000392(n+1))*A140429(n+1)` -/
def P18067077259938612456.Spec : Prop :=
  ∀ n, P18067077259938612456.a n = A342234 n

end A342234

/-! ## A342234.P18399968943701726790

`(A000392(2*n+1)-A000392(n+1))*A056449(2*n)`
-/

namespace A342234.P18399968943701726790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000392 (2 * n + 1) - A000392 (n + 1)) * A056449 (2 * n)

end

end A342234.P18399968943701726790

namespace A342234

/-- `(A000392(2*n+1)-A000392(n+1))*A056449(2*n)` -/
def P18399968943701726790.Spec : Prop :=
  ∀ n, P18399968943701726790.a n = A342234 n

end A342234

/-!
# A342235: Coordination sequence of David Eppstein's "Tetrastix" graph.

The programs for A342235, the canonical program `A342235.P6074913570153502342` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342235 has offset 0).

The definition of A342235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342235.P6074913570153502342

`A288699(n)+3*n²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342235

/-- `A288699(n)+3*n²` -/
def P6074913570153502342.Spec : Prop :=
  ∀ n, P6074913570153502342.a n = A342235 n

theorem P6074913570153502342.correct : P6074913570153502342.Spec := by
  intro n
  simp only [A342235]

end A342235

/-! ## A342235.P13057640243192151756

`xor(A288699(n), A397444(n))`
-/

namespace A342235.P13057640243192151756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288699 n) (A397444 n)

end

end A342235.P13057640243192151756

namespace A342235

/-- `xor(A288699(n), A397444(n))` -/
def P13057640243192151756.Spec : Prop :=
  ∀ n, P13057640243192151756.a n = A342235 n

end A342235

/-! ## A342235.P4837766585778114304

`A056107(n)+A288699(n)-1`
-/

namespace A342235.P4837766585778114304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n + (A288699 n - 1)

end

end A342235.P4837766585778114304

namespace A342235

/-- `A056107(n)+A288699(n)-1` -/
def P4837766585778114304.Spec : Prop :=
  ∀ n, P4837766585778114304.a n = A342235 n

end A342235

/-! ## A342235.P8671934426818571263

`A008261(n)-2*A069905(n)`
-/

namespace A342235.P8671934426818571263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008261 n - 2 * A069905 n

end

end A342235.P8671934426818571263

namespace A342235

/-- `A008261(n)-2*A069905(n)` -/
def P8671934426818571263.Spec : Prop :=
  ∀ n, P8671934426818571263.a n = A342235 n

end A342235

/-! ## A342235.P4050672685314534485

`A049450(n)+A288699(n)+n`
-/

namespace A342235.P4050672685314534485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + (A288699 n + (n : ℤ))

end

end A342235.P4050672685314534485

namespace A342235

/-- `A049450(n)+A288699(n)+n` -/
def P4050672685314534485.Spec : Prop :=
  ∀ n, P4050672685314534485.a n = A342235 n

end A342235

/-! ## A342235.P10542029794581531421

`A008261(n)-A005843(A069905(n))`
-/

namespace A342235.P10542029794581531421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008261 n - A005843 (A069905 n).toNat

end

end A342235.P10542029794581531421

namespace A342235

/-- `A008261(n)-A005843(A069905(n))` -/
def P10542029794581531421.Spec : Prop :=
  ∀ n, P10542029794581531421.a n = A342235 n

end A342235

/-!
# A342237: Table read by upward antidiagonals: T(n,k) is the number of strings of length k over an n-letter alphabet that begin with a palindrome of two or more letters; n, k >= 1.

The programs for A342237, there is no canonical definition to state claims against.
-/

/-! ## A342237.P16646365933361666026

`A051128(n+1)-A342238(n+1)`
-/

namespace A342237.P16646365933361666026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A342238 (n + 1)

end

end A342237.P16646365933361666026

/-! ## A342237.P11492050754763371621

`A009999(A014132(n+1))-A342238(n+1)`
-/

namespace A342237.P11492050754763371621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A014132 (n + 1)).toNat - A342238 (n + 1)

end

end A342237.P11492050754763371621

/-! ## A342237.P357621047230283041

`A342239(n+1)+A342240(n+1)-A342238(n+1)`
-/

namespace A342237.P357621047230283041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342239 (n + 1) + (A342240 (n + 1) - A342238 (n + 1))

end

end A342237.P357621047230283041

/-! ## A342237.P3181886305584625230

`A051129(A038722(n+1))-A342238(n+1)`
-/

namespace A342237.P3181886305584625230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat - A342238 (n + 1)

end

end A342237.P3181886305584625230

/-! ## A342237.P11600192341525069752

`A133300(A185870(n+1))-A342238(n+1)`
-/

namespace A342237.P11600192341525069752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133300 (A185870 (n + 1)).toNat - A342238 (n + 1)

end

end A342237.P11600192341525069752

/-! ## A342237.P17304319233065046800

`A000720(A347000(n+1))-A342238(n+1)`
-/

namespace A342237.P17304319233065046800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A347000 (n + 1)).toNat - A342238 (n + 1)

end

end A342237.P17304319233065046800

/-!
# A342238: Table read by upward antidiagonals: T(n,k) is the number of strings of length k over an n-letter alphabet that do not begin with a palindrome of two or more letters; n, k >= 1.

The programs for A342238, there is no canonical definition to state claims against.
-/

/-! ## A342238.P2426170921786103501

`A051128(n+1)-A342237(n+1)`
-/

namespace A342238.P2426170921786103501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A342237 (n + 1)

end

end A342238.P2426170921786103501

/-! ## A342238.P16733496529242734846

`A009999(A014132(n+1))-A342237(n+1)`
-/

namespace A342238.P16733496529242734846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A014132 (n + 1)).toNat - A342237 (n + 1)

end

end A342238.P16733496529242734846

/-! ## A342238.P12614281282536774643

`A004736(n+1)^A193738(n)-A342237(n+1)`
-/

namespace A342238.P12614281282536774643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A193738 n : ℤ) - (A342237 (n + 1) : ℚ)

end

end A342238.P12614281282536774643

/-! ## A342238.P2941722726107699845

`A004736(n+1)^A002260(n+1)-A342237(n+1)`
-/

namespace A342238.P2941722726107699845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ) - (A342237 (n + 1) : ℚ)

end

end A342238.P2941722726107699845

/-! ## A342238.P6433593238100375300

`A051129(A038722(n+1))-A342237(n+1)`
-/

namespace A342238.P6433593238100375300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat - A342237 (n + 1)

end

end A342238.P6433593238100375300

/-! ## A342238.P13675709146468138807

`A133300(A185870(n+1))-A342237(n+1)`
-/

namespace A342238.P13675709146468138807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133300 (A185870 (n + 1)).toNat - A342237 (n + 1)

end

end A342238.P13675709146468138807

/-! ## A342238.P80313344837500763

`A000720(A347000(n+1))-A342237(n+1)`
-/

namespace A342238.P80313344837500763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A347000 (n + 1)).toNat - A342237 (n + 1)

end

end A342238.P80313344837500763

/-!
# A342239: Table read by upward antidiagonals: T(n,k) is the number of strings of length k over an n-letter alphabet that are bifix free; n >= 1, k >= 1.

The programs for A342239, there is no canonical definition to state claims against.
-/

/-! ## A342239.P18221028517751379296

`A051128(n+1)-A342240(n+1)`
-/

namespace A342239.P18221028517751379296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A342240 (n + 1)

end

end A342239.P18221028517751379296

/-! ## A342239.P5725571750088113804

`A009999(A014132(n+1))-A342240(n+1)`
-/

namespace A342239.P5725571750088113804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A014132 (n + 1)).toNat - A342240 (n + 1)

end

end A342239.P5725571750088113804

/-! ## A342239.P14909567511061757760

`A342237(n+1)+A342238(n+1)-A342240(n+1)`
-/

namespace A342239.P14909567511061757760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342237 (n + 1) + (A342238 (n + 1) - A342240 (n + 1))

end

end A342239.P14909567511061757760

/-! ## A342239.P15959562055821839715

`A051129(A038722(n+1))-A342240(n+1)`
-/

namespace A342239.P15959562055821839715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat - A342240 (n + 1)

end

end A342239.P15959562055821839715

/-! ## A342239.P7693300176695147346

`A133300(A185870(n+1))-A342240(n+1)`
-/

namespace A342239.P7693300176695147346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133300 (A185870 (n + 1)).toNat - A342240 (n + 1)

end

end A342239.P7693300176695147346

/-! ## A342239.P12944267330020861228

`A000720(A347000(n+1))-A342240(n+1)`
-/

namespace A342239.P12944267330020861228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A347000 (n + 1)).toNat - A342240 (n + 1)

end

end A342239.P12944267330020861228

/-!
# A342240: Table read by upward antidiagonals: T(n,k) is the number of strings of length k over an n-letter alphabet that have a bifix; n, k >= 1.

The programs for A342240, there is no canonical definition to state claims against.
-/

/-! ## A342240.P9244975393314476766

`A051128(n+1)-A342239(n+1)`
-/

namespace A342240.P9244975393314476766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) - A342239 (n + 1)

end

end A342240.P9244975393314476766

/-! ## A342240.P8463914442774438044

`A009999(A014132(n+1))-A342239(n+1)`
-/

namespace A342240.P8463914442774438044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A014132 (n + 1)).toNat - A342239 (n + 1)

end

end A342240.P8463914442774438044

/-! ## A342240.P11182408588614562575

`A051129(A038722(n+1))-A342239(n+1)`
-/

namespace A342240.P11182408588614562575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat - A342239 (n + 1)

end

end A342240.P11182408588614562575

/-! ## A342240.P5397264090208785944

`A133300(A185870(n+1))-A342239(n+1)`
-/

namespace A342240.P5397264090208785944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133300 (A185870 (n + 1)).toNat - A342239 (n + 1)

end

end A342240.P5397264090208785944

/-! ## A342240.P5831305713092724826

`A095887(n+1)/A095890(n+1)-A342239(n+1)`
-/

namespace A342240.P5831305713092724826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095887 (n + 1) : ℚ) / (A095890 (n + 1) : ℚ) - (A342239 (n + 1) : ℚ)

end

end A342240.P5831305713092724826

/-! ## A342240.P1329950314479523349

`A000720(A347000(n+1))-A342239(n+1)`
-/

namespace A342240.P1329950314479523349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A347000 (n + 1)).toNat - A342239 (n + 1)

end

end A342240.P1329950314479523349

/-!
# A342241: a(n) is the least k > 0 such that the first k bits and the last k bits in the binary expansion of n are the same.

The programs for A342241, there is no canonical definition to state claims against.
-/

/-! ## A342241.P12171845210675285811

`A070939(A342242(n))`
-/

namespace A342241.P12171845210675285811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A342242 n).toNat

end

end A342241.P12171845210675285811

/-! ## A342241.P16055097345709430700

`A070940(A342242(n)+1)`
-/

namespace A342241.P16055097345709430700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A342242 n + 1).toNat

end

end A342241.P16055097345709430700

/-! ## A342241.P8935993250084917152

`A001511(A200322(n))`
-/

namespace A342241.P8935993250084917152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A200322 n).toNat

end

end A342241.P8935993250084917152

/-! ## A342241.P5571004259212196040

`A007814(2*A200322(n))`
-/

namespace A342241.P5571004259212196040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A200322 n).toNat

end

end A342241.P5571004259212196040

/-! ## A342241.P15074301001832940763

`A007814(A200322(n)+A200322(n))`
-/

namespace A342241.P15074301001832940763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A200322 n + A200322 n).toNat

end

end A342241.P15074301001832940763

/-! ## A342241.P5144944298104088659

`A361942(A342242(2*n-n))`
-/

namespace A342241.P5144944298104088659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361942 (A342242 (2 * n - n)).toNat

end

end A342241.P5144944298104088659

/-!
# A342242: For any n > 0, a(n) is the least positive number whose binary expansion is both a prefix and a suffix of the binary expansion of n; a(0) = 0.

The programs for A342242, there is no canonical definition to state claims against.
-/

/-! ## A342242.P6037888255044050711

`n%A000079(A342241(n))`
-/

namespace A342242.P6037888255044050711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000079 (A342241 n).toNat)

end

end A342242.P6037888255044050711

/-! ## A342242.P8054538080585018376

`and(A000225(A342241(n)), A065599(n))`
-/

namespace A342242.P8054538080585018376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A342241 n).toNat) (A065599 n)

end

end A342242.P8054538080585018376

/-! ## A342242.P9846161023097687659

`and(A000225(A342241(n)), A265228(n))`
-/

namespace A342242.P9846161023097687659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A342241 n).toNat) (A265228 n)

end

end A342242.P9846161023097687659

/-! ## A342242.P9229956179261769723

`and(A000225(A342241(n)), A325402(n))`
-/

namespace A342242.P9229956179261769723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A342241 n).toNat) (A325402 n)

end

end A342242.P9229956179261769723

/-! ## A342242.P13506573839318140114

`and(A000225(A342241(n)), A206332(n+1))`
-/

namespace A342242.P13506573839318140114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A342241 n).toNat) (A206332 (n + 1))

end

end A342242.P13506573839318140114

/-! ## A342242.P3818412260972365271

`and(A000225(A342241(n)), A147756(n))`
-/

namespace A342242.P3818412260972365271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A342241 n).toNat) (A147756 n)

end

end A342242.P3818412260972365271

/-! ## A342242.P4588664626865453301

`and(n, A038712(A200322(n)))`
-/

namespace A342242.P4588664626865453301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A038712 (A200322 n).toNat)

end

end A342242.P4588664626865453301

/-! ## A342242.P2603214083464741943

`gcd(A242869(n), A274593(A065599(n)))`
-/

namespace A342242.P2603214083464741943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242869 n) (A274593 (A065599 n).toNat)

end

end A342242.P2603214083464741943

/-!
# A342243: Triangle T(n,p) read by rows: the number of n-celled polyominoes with perimeter 2p, 2 <= p <= 1+n.

The programs for A342243, there is no canonical definition to state claims against.
-/

/-! ## A342243.P8954475443972978483

`A006694(A122950(n)^ceil(n/4))`
-/

namespace A342243.P8954475443972978483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (SequenceMachineLib.roundAway ((A122950 n : ℚ) ^ (⌈(n : ℚ) / 4⌉ : ℤ))).toNat

end

end A342243.P8954475443972978483

/-! ## A342243.P446752104015956002

`A002487(A259857(n+1)^A006694(n))`
-/

namespace A342243.P446752104015956002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((A259857 (n + 1) : ℚ) ^ (A006694 n : ℤ))).toNat

end

end A342243.P446752104015956002

/-! ## A342243.P1576566199957717005

`A002487(A259857(n+1))^A007318(A014198(n))`
-/

namespace A342243.P1576566199957717005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (A259857 (n + 1)).toNat : ℚ) ^ (A007318 (A014198 n).toNat : ℤ)

end

end A342243.P1576566199957717005

/-! ## A342243.P8844591574964572816

`A002487(A259857(n+1))^A007318(A086810(n))`
-/

namespace A342243.P8844591574964572816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002487 (A259857 (n + 1)).toNat : ℚ) ^ (A007318 (A086810 n).toNat : ℤ)

end

end A342243.P8844591574964572816

/-! ## A342243.P2532354786793982044

`C(A053735(A257515(n)), A104259(n))`
-/

namespace A342243.P2532354786793982044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053735 (A257515 n).toNat).toNat (A104259 n).toNat

end

end A342243.P2532354786793982044

/-!
# A342244: Primes whose binary representation is not the concatenation of the binary representations of smaller primes (allowing leading 0's).

The programs for A342244, there is no canonical definition to state claims against.
-/

/-! ## A342244.P124397359253699080

`p?[A063949(A117333(n+1))]`
-/

namespace A342244.P124397359253699080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (A117333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342244.P124397359253699080

/-! ## A342244.P17234794519722525563

`p?[A063949(A153671(n+1))]`
-/

namespace A342244.P17234794519722525563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (A153671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342244.P17234794519722525563

/-! ## A342244.P8287346855046885461

`∩[A062353(n+1), A063949(n+1)]`
-/

namespace A342244.P8287346855046885461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342244.P8287346855046885461

/-!
# A342247: Number of partitions of n into seven powers of 2.

The programs for A342247, there is no canonical definition to state claims against.
-/

/-! ## A342247.P6063912238948814250

`A089052(A167487(n+6))`
-/

namespace A342247.P6063912238948814250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A167487 (n + 6)).toNat

end

end A342247.P6063912238948814250

/-! ## A342247.P7277710839633848943

`A089052(A167499(n+6)+2)`
-/

namespace A342247.P7277710839633848943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A167499 (n + 6) + 2).toNat

end

end A342247.P7277710839633848943

/-! ## A342247.P823568695539300132

`A089052(A167614(n+6)+4)`
-/

namespace A342247.P823568695539300132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A167614 (n + 6) + 4).toNat

end

end A342247.P823568695539300132

/-! ## A342247.P9722904480389543634

`A089052(A000124(n+7)+6)`
-/

namespace A342247.P9722904480389543634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000124 (n + 7) + 6).toNat

end

end A342247.P9722904480389543634

/-! ## A342247.P17207491061843293870

`A089052(A000096(n+6)+8)`
-/

namespace A342247.P17207491061843293870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000096 (n + 6) + 8).toNat

end

end A342247.P17207491061843293870

/-! ## A342247.P11923153692526911682

`A089052(A034856(n+6)+9)`
-/

namespace A342247.P11923153692526911682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A034856 (n + 6) + 9).toNat

end

end A342247.P11923153692526911682

/-! ## A342247.P16001387278781639170

`A089052(A055998(n+5)+10)`
-/

namespace A342247.P16001387278781639170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A055998 (n + 5) + 10).toNat

end

end A342247.P16001387278781639170

/-! ## A342247.P3481326654574714743

`A089052(A055999(n+4)+13)`
-/

namespace A342247.P3481326654574714743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A055999 (n + 4) + 13).toNat

end

end A342247.P3481326654574714743

/-! ## A342247.P11830678227685877709

`A089052(A000217(n+8)-(n+1))`
-/

namespace A342247.P11830678227685877709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A342247.P11830678227685877709

/-! ## A342247.P2439036259525188616

`A089052(Δ[A000292(n+7)]-(n+1))`
-/

namespace A342247.P2439036259525188616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (f1 (n + 1) - f1 n - (n + 1 : ℤ)).toNat

end

end A342247.P2439036259525188616

/-!
# A342248: Number of partitions of n into eight powers of 2.

The programs for A342248, there is no canonical definition to state claims against.
-/

/-! ## A342248.P9992058598460596311

`A089052(A167499(n+7)+3)`
-/

namespace A342248.P9992058598460596311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A167499 (n + 7) + 3).toNat

end

end A342248.P9992058598460596311

/-! ## A342248.P158561303878403669

`A089052(A167614(n+7)+5)`
-/

namespace A342248.P158561303878403669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A167614 (n + 7) + 5).toNat

end

end A342248.P158561303878403669

/-! ## A342248.P12345313211076061038

`A089052(A000096(n+7)+9)`
-/

namespace A342248.P12345313211076061038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000096 (n + 7) + 9).toNat

end

end A342248.P12345313211076061038

/-! ## A342248.P8961692312848794460

`A089052(A000217(n+8)+8)`
-/

namespace A342248.P8961692312848794460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000217 (n + 8) + 8).toNat

end

end A342248.P8961692312848794460

/-! ## A342248.P9670618567626595662

`A089052(A000124(n+9)-(n+2))`
-/

namespace A342248.P9670618567626595662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A342248.P9670618567626595662

/-! ## A342248.P16538903620209514951

`A089052(A166136(n+8)-(n+7))`
-/

namespace A342248.P16538903620209514951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A166136 (n + 8) - (n + 7 : ℤ)).toNat

end

end A342248.P16538903620209514951

/-! ## A342248.P7693636973467785673

`A089052(A167487(n+5)+2*(n+8))`
-/

namespace A342248.P7693636973467785673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A167487 (n + 5) + (2 * (n + 8) : ℤ)).toNat

end

end A342248.P7693636973467785673

/-! ## A342248.P14319422953471705414

`A089052(A103517(n+10)+A000124(n+6))`
-/

namespace A342248.P14319422953471705414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A103517 (n + 10) + A000124 (n + 6)).toNat

end

end A342248.P14319422953471705414

/-!
# A342249: Number of partitions of n into nine powers of 2.

The programs for A342249, there is no canonical definition to state claims against.
-/

/-! ## A342249.P16334410413357937024

`A089052(A166136(n+8)+3)`
-/

namespace A342249.P16334410413357937024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A166136 (n + 8) + 3).toNat

end

end A342249.P16334410413357937024

/-! ## A342249.P9919617591634568082

`A089052(A167499(n+8)+4)`
-/

namespace A342249.P9919617591634568082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A167499 (n + 8) + 4).toNat

end

end A342249.P9919617591634568082

/-! ## A342249.P5162506099389063971

`A089052(A000096(n+8)+10)`
-/

namespace A342249.P5162506099389063971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000096 (n + 8) + 10).toNat

end

end A342249.P5162506099389063971

/-! ## A342249.P3598720832425158598

`A089052(A000217(n+9)+9)`
-/

namespace A342249.P3598720832425158598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000217 (n + 9) + 9).toNat

end

end A342249.P3598720832425158598

/-! ## A342249.P3534530747559415927

`A089052(A000124(n+10)-(n+2))`
-/

namespace A342249.P3534530747559415927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A342249.P3534530747559415927

/-!
# A342250: Number of ways to write n as an ordered sum of seven powers of 2.

The programs for A342250, there is no canonical definition to state claims against.
-/

/-! ## A342250.P17187295658903963886

`A073266(A056119(n)+28)`
-/

namespace A342250.P17187295658903963886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A056119 n + 28).toNat

end

end A342250.P17187295658903963886

/-! ## A342250.P7846635511710589373

`A073266(A166136(n+5)+1)`
-/

namespace A342250.P7846635511710589373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A166136 (n + 5) + 1).toNat

end

end A342250.P7846635511710589373

/-! ## A342250.P2516642060812249293

`A073266(A000124(n+6)+6)`
-/

namespace A342250.P2516642060812249293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000124 (n + 6) + 6).toNat

end

end A342250.P2516642060812249293

/-! ## A342250.P16097664854236331036

`A073266(A000096(n+5)+8)`
-/

namespace A342250.P16097664854236331036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000096 (n + 5) + 8).toNat

end

end A342250.P16097664854236331036

/-! ## A342250.P4915656764273383322

`A073266(A000217(n+6)+7)`
-/

namespace A342250.P4915656764273383322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000217 (n + 6) + 7).toNat

end

end A342250.P4915656764273383322

/-!
# A342251: Number of ways to write n as an ordered sum of eight powers of 2.

The programs for A342251, there is no canonical definition to state claims against.
-/

/-! ## A342251.P9212604205676148526

`A073266(A167487(n+6)+1)`
-/

namespace A342251.P9212604205676148526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A167487 (n + 6) + 1).toNat

end

end A342251.P9212604205676148526

/-! ## A342251.P1624189353145745155

`A073266(A000124(n+7)+7)`
-/

namespace A342251.P1624189353145745155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000124 (n + 7) + 7).toNat

end

end A342251.P1624189353145745155

/-! ## A342251.P13649595508978432486

`A073266(A000217(n+7)+8)`
-/

namespace A342251.P13649595508978432486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000217 (n + 7) + 8).toNat

end

end A342251.P13649595508978432486

/-! ## A342251.P14395335546809061928

`A073266(A046691(n+5)+12)`
-/

namespace A342251.P14395335546809061928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A046691 (n + 5) + 12).toNat

end

end A342251.P14395335546809061928

/-!
# A342252: Number of ways to write n as an ordered sum of nine powers of 2.

The programs for A342252, there is no canonical definition to state claims against.
-/

/-! ## A342252.P4369281419358728431

`A073266(A000217(n+8)+9)`
-/

namespace A342252.P4369281419358728431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000217 (n + 8) + 9).toNat

end

end A342252.P4369281419358728431

/-! ## A342252.P5530760623086046235

`A073266(eq[10, A131818(n+1)])`
-/

namespace A342252.P5530760623086046235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342252.P5530760623086046235

/-! ## A342252.P11211745718976975533

`A073266(eq[10, A135223(n+1)])`
-/

namespace A342252.P11211745718976975533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342252.P11211745718976975533

/-! ## A342252.P4810617221092836910

`A073266(eq[8, A144328(n+1)]+1)`
-/

namespace A342252.P4810617221092836910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342252.P4810617221092836910

/-!
# A342253: a(n) = (n-6)*sqrt((n-5)^2) + 2*n + 31.

The programs for A342253, the canonical program `A342253.P13360778165326430785` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342253 has offset 1).

The definition of A342253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342253.P13360778165326430785

`(n-5)*abs(n-4)+2*(n+1)+31`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342253

/-- `(n-5)*abs(n-4)+2*(n+1)+31` -/
def P13360778165326430785.Spec : Prop :=
  ∀ n, P13360778165326430785.a n = A342253 (n + 1)

theorem P13360778165326430785.correct : P13360778165326430785.Spec := by
  intro n
  simp only [A342253, Nat.add_sub_cancel]

end A342253

/-! ## A342253.P17949242364450870223

`(n-5)*sqrt((n-4)²)+2*(n+1)+31`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342253.P17949242364450870223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5 : ℝ) * Real.sqrt (((n : ℤ) - 4) ^ 2 : ℝ) + (2 * (n + 1) : ℝ) + 31

end

end A342253.P17949242364450870223

namespace A342253

/-- `(n-5)*sqrt((n-4)²)+2*(n+1)+31` -/
def P17949242364450870223.Spec : Prop :=
  ∀ n, P17949242364450870223.a n = (A342253 (n + 1) : ℝ)

end A342253

/-! ## A342253.P13624021763963416394

`A005408(∑[abs(5-n)+1])`
-/

namespace A342253.P13624021763963416394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342253.P13624021763963416394

namespace A342253

/-- `A005408(∑[abs(5-n)+1])` -/
def P13624021763963416394.Spec : Prop :=
  ∀ n, P13624021763963416394.a n = A342253 (n + 1)

end A342253

/-! ## A342253.P18225917758926762705

`A267872(∑[abs(5-n)+1])`
-/

namespace A342253.P18225917758926762705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342253.P18225917758926762705

namespace A342253

/-- `A267872(∑[abs(5-n)+1])` -/
def P18225917758926762705.Spec : Prop :=
  ∀ n, P18225917758926762705.a n = A342253 (n + 1)

end A342253

/-! ## A342253.P13484647970817201091

`A267881(∑[abs(5-n)+1])`
-/

namespace A342253.P13484647970817201091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267881 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342253.P13484647970817201091

namespace A342253

/-- `A267881(∑[abs(5-n)+1])` -/
def P13484647970817201091.Spec : Prop :=
  ∀ n, P13484647970817201091.a n = A342253 (n + 1)

end A342253

/-! ## A342253.P15604029040510783915

`A004273(∑[abs(5-n)+1]+1)`
-/

namespace A342253.P15604029040510783915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A342253.P15604029040510783915

namespace A342253

/-- `A004273(∑[abs(5-n)+1]+1)` -/
def P15604029040510783915.Spec : Prop :=
  ∀ n, P15604029040510783915.a n = A342253 (n + 1)

end A342253

/-! ## A342253.P2443346968260632800

`or(1, A005843(∑[abs(5-n)+1]))`
-/

namespace A342253.P2443346968260632800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A342253.P2443346968260632800

namespace A342253

/-- `or(1, A005843(∑[abs(5-n)+1]))` -/
def P2443346968260632800.Spec : Prop :=
  ∀ n, P2443346968260632800.a n = A342253 (n + 1)

end A342253

/-! ## A342253.P15703919667141992542

`A004442(2*∑[abs(5-n)+1])`
-/

namespace A342253.P15703919667141992542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A342253.P15703919667141992542

namespace A342253

/-- `A004442(2*∑[abs(5-n)+1])` -/
def P15703919667141992542.Spec : Prop :=
  ∀ n, P15703919667141992542.a n = A342253 (n + 1)

end A342253

/-! ## A342253.P12724428071876691517

`A133310(3*∑[abs(5-n)+1])`
-/

namespace A342253.P12724428071876691517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (3 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A342253.P12724428071876691517

namespace A342253

/-- `A133310(3*∑[abs(5-n)+1])` -/
def P12724428071876691517.Spec : Prop :=
  ∀ n, P12724428071876691517.a n = A342253 (n + 1)

end A342253

/-! ## A342253.P14979352853146738125

`A008619(4*∑[abs(5-n)+1])`
-/

namespace A342253.P14979352853146738125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A342253.P14979352853146738125

namespace A342253

/-- `A008619(4*∑[abs(5-n)+1])` -/
def P14979352853146738125.Spec : Prop :=
  ∀ n, P14979352853146738125.a n = A342253 (n + 1)

end A342253

/-!
# A342254: Number of ways to write n as an ordered sum of ten powers of 2.

The programs for A342254, there is no canonical definition to state claims against.
-/

/-! ## A342254.P3716995330266269758

`A073266(A000124(n+9)+9)`
-/

namespace A342254.P3716995330266269758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000124 (n + 9) + 9).toNat

end

end A342254.P3716995330266269758

/-! ## A342254.P7748581932394198663

`A073266(A000217(n+9)+10)`
-/

namespace A342254.P7748581932394198663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (A000217 (n + 9) + 10).toNat

end

end A342254.P7748581932394198663

/-! ## A342254.P4337454603781560211

`A073266(eq[10, A130270(n+1)])`
-/

namespace A342254.P4337454603781560211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342254.P4337454603781560211

/-! ## A342254.P11210897457093530974

`A073266(eq[11, A131818(n+1)])`
-/

namespace A342254.P11210897457093530974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342254.P11210897457093530974

/-!
# A342255: Square array read by ascending antidiagonals: T(n,k) = gcd(k, Phi_k(n)), where Phi_k is the k-th cyclotomic polynomial, n >= 1, k >= 1.

The programs for A342255, there is no canonical definition to state claims against.
-/

/-! ## A342255.P9312837916417743788

`A342323(A007401(n+1))`
-/

namespace A342255.P9312837916417743788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342323 (A007401 (n + 1)).toNat

end

end A342255.P9312837916417743788

/-! ## A342255.P10883509829800069185

`A342323(A014132(n+1)-1)`
-/

namespace A342255.P10883509829800069185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342323 (A014132 (n + 1) - 1).toNat

end

end A342255.P10883509829800069185

/-! ## A342255.P1657190633608221778

`A342323(A002024(n+1)+n)`
-/

namespace A342255.P1657190633608221778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342323 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A342255.P1657190633608221778

/-! ## A342255.P5051117368571536719

`A342323(A003056(n)+1+n)`
-/

namespace A342255.P5051117368571536719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342323 (A003056 n + 1 + (n : ℤ)).toNat

end

end A342255.P5051117368571536719

/-! ## A342255.P7193364404714368320

`A342323(eq[A061579(n+1)+1, A061579(n)])`
-/

namespace A342255.P7193364404714368320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342323 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342255.P7193364404714368320

/-!
# A342256: Numbers k such that gcd(k, Phi_k(a)) > 1 for some a, where Phi_k is the k-th cyclotomic polynomial.

The programs for A342256, the canonical program `A342256.P11382523242793014882` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342256 has offset 1).

The definition of A342256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342256.P11382523242793014882

`lt[0, A253236(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A342256

/-- `lt[0, A253236(n+1)]+1` -/
def P11382523242793014882.Spec : Prop :=
  ∀ n, (P11382523242793014882.a n : ℤ) = A342256 (n + 1)

theorem P11382523242793014882.correct : P11382523242793014882.Spec := by
  intro n
  simp only [A342256, Nat.add_sub_cancel]

end A342256

/-! ## A342256.P16564433015696396870

`lt[1, A342257(n+1)]+1`
-/

namespace A342256.P16564433015696396870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342256.P16564433015696396870

namespace A342256

/-- `lt[1, A342257(n+1)]+1` -/
def P16564433015696396870.Spec : Prop :=
  ∀ n, (P16564433015696396870.a n : ℤ) = A342256 (n + 1)

end A342256

/-! ## A342256.P4391995093384337625

`eq[char[A253235(n+1)], A000007(n)]`
-/

namespace A342256.P4391995093384337625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253235 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A342256.P4391995093384337625

namespace A342256

/-- `eq[char[A253235(n+1)], A000007(n)]` -/
def P4391995093384337625.Spec : Prop :=
  ∀ n, (P4391995093384337625.a n : ℤ) = A342256 (n + 1)

end A342256

/-! ## A342256.P16530785417044158910

`eq[A006530(n+1), A253236(n+1)]+1`
-/

namespace A342256.P16530785417044158910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342256.P16530785417044158910

namespace A342256

/-- `eq[A006530(n+1), A253236(n+1)]+1` -/
def P16530785417044158910.Spec : Prop :=
  ∀ n, (P16530785417044158910.a n : ℤ) = A342256 (n + 1)

end A342256

/-! ## A342256.P6953772598385069926

`eq[A253236(n+1), A342257(n+1)]+1`
-/

namespace A342256.P6953772598385069926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A342256.P6953772598385069926

namespace A342256

/-- `eq[A253236(n+1), A342257(n+1)]+1` -/
def P6953772598385069926.Spec : Prop :=
  ∀ n, (P6953772598385069926.a n : ℤ) = A342256 (n + 1)

end A342256

/-!
# A342257: Period of the sequence {gcd(n, Phi_n(a)): a in Z}, where Phi_n is the n-th cyclotomic polynomial.

The programs for A342257, the canonical program `A342257.P6467292194329378218` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342257 has offset 1).

The definition of A342257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342257.P6467292194329378218

`∏{d}[A253236(n+1), #]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A342257

/-- `∏{d}[A253236(n+1), #]` -/
def P6467292194329378218.Spec : Prop :=
  ∀ n, (P6467292194329378218.a n : ℤ) = A342257 (n + 1)

theorem P6467292194329378218.correct : P6467292194329378218.Spec := by
  intro n
  simp only [A342257, Nat.add_sub_cancel]

end A342257

/-! ## A342257.P16762532792992787211

`A028310(A253236(n+1))`
-/

namespace A342257.P16762532792992787211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A253236 (n + 1)).toNat

end

end A342257.P16762532792992787211

namespace A342257

/-- `A028310(A253236(n+1))` -/
def P16762532792992787211.Spec : Prop :=
  ∀ n, P16762532792992787211.a n = A342257 (n + 1)

end A342257

/-! ## A342257.P10199155945497874672

`A014963(A275823(n+1))`
-/

namespace A342257.P10199155945497874672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A275823 (n + 1)).toNat

end

end A342257.P10199155945497874672

namespace A342257

/-- `A014963(A275823(n+1))` -/
def P10199155945497874672.Spec : Prop :=
  ∀ n, P10199155945497874672.a n = A342257 (n + 1)

end A342257

/-! ## A342257.P6131036251583511651

`∏{p}[A253236(n+1), A253236(#)]`
-/

namespace A342257.P6131036251583511651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253236 p

end

end A342257.P6131036251583511651

namespace A342257

/-- `∏{p}[A253236(n+1), A253236(#)]` -/
def P6131036251583511651.Spec : Prop :=
  ∀ n, P6131036251583511651.a n = A342257 (n + 1)

end A342257

/-! ## A342257.P5280241782803225999

`A014963((n+1)/gcd(n+1, 1-A006530(n+1)))`
-/

namespace A342257.P5280241782803225999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (1 - A006530 (n + 1)) : ℚ))).toNat

end

end A342257.P5280241782803225999

namespace A342257

/-- `A014963((n+1)/gcd(n+1, 1-A006530(n+1)))` -/
def P5280241782803225999.Spec : Prop :=
  ∀ n, P5280241782803225999.a n = A342257 (n + 1)

end A342257

/-! ## A342257.P7185843715224295982

`A253236(n+1)+A000007(2*A253236(n+1))`
-/

namespace A342257.P7185843715224295982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1) + A000007 (2 * A253236 (n + 1)).toNat

end

end A342257.P7185843715224295982

namespace A342257

/-- `A253236(n+1)+A000007(2*A253236(n+1))` -/
def P7185843715224295982.Spec : Prop :=
  ∀ n, P7185843715224295982.a n = A342257 (n + 1)

end A342257

/-! ## A342257.P6519362099077159162

`A029579(A253236(A029579(2*n)))`
-/

namespace A342257.P6519362099077159162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A253236 (A029579 (2 * n)).toNat).toNat

end

end A342257.P6519362099077159162

namespace A342257

/-- `A029579(A253236(A029579(2*n)))` -/
def P6519362099077159162.Spec : Prop :=
  ∀ n, P6519362099077159162.a n = A342257 (n + 1)

end A342257

/-! ## A342257.P829524347827624005

`A014963((n+1)/A346094(n+1))`
-/

namespace A342257.P829524347827624005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A346094 (n + 1) : ℚ))).toNat

end

end A342257.P829524347827624005

namespace A342257

/-- `A014963((n+1)/A346094(n+1))` -/
def P829524347827624005.Spec : Prop :=
  ∀ n, P829524347827624005.a n = A342257 (n + 1)

end A342257

/-! ## A342257.P1412523960867282068

`A253236(n+1)+A000007(A253236(n+1)²)`
-/

namespace A342257.P1412523960867282068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253236 (n + 1) + A000007 (A253236 (n + 1) ^ 2).toNat

end

end A342257.P1412523960867282068

namespace A342257

/-- `A253236(n+1)+A000007(A253236(n+1)²)` -/
def P1412523960867282068.Spec : Prop :=
  ∀ n, P1412523960867282068.a n = A342257 (n + 1)

end A342257

/-!
# A342262: Numbers divisible both by the product of their nonzero digits (A055471) and by the sum of their digits (A005349).

The programs for A342262, there is no canonical definition to state claims against.
-/

/-! ## A342262.P5641720048351247965

`∩[A005349(n+1), A055471(n+1)]`
-/

namespace A342262.P5641720048351247965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342262.P5641720048351247965

/-! ## A342262.P17793911534904527282

`∩[A055471(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A342262.P17793911534904527282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342262.P17793911534904527282

/-! ## A342262.P424989145223310137

`∩[A055471(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A342262.P424989145223310137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342262.P424989145223310137

/-! ## A342262.P7453750572821045942

`record[A360074(A055471(n+1))]`
-/

namespace A342262.P7453750572821045942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (A055471 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342262.P7453750572821045942

/-! ## A342262.P2423553343474276648

`filter[A055471(n+1), A188641(#)]`
-/

namespace A342262.P2423553343474276648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A342262.P2423553343474276648

/-! ## A342262.P432707889655958608

`∩[eq[0, A070635(n+1)]+1, A055471(n+1)]`
-/

namespace A342262.P432707889655958608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A342262.P432707889655958608

/-! ## A342262.P3977714524786677113

`∩[A055471(n+1), lt[(n+1)%A007953(n+1), 1]+1]`
-/

namespace A342262.P3977714524786677113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (n + 1))

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A342262.P3977714524786677113

/-!
# A342269: Take a regular (2*n+1)-gon with all diagonals drawn; a(n) = number of edges in next-to-largest cell.

The programs for A342269, there is no canonical definition to state claims against.
-/

/-! ## A342269.P10904885464890509728

`A349784(2*n+5)`
-/

namespace A342269.P10904885464890509728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349784 (2 * n + 5)

end

end A342269.P10904885464890509728

/-! ## A342269.P443480865876081952

`A349784(Δ[(n+2)²])%15`
-/

namespace A342269.P443480865876081952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 15

end

end A342269.P443480865876081952

/-! ## A342269.P4130513482868851834

`abs(A349784(n+5+n)-1)+1`
-/

namespace A342269.P4130513482868851834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349784 (n + 5 + n) - 1| + 1

end

end A342269.P4130513482868851834

/-! ## A342269.P12338839331727096776

`A000027(A349784(n+5+n))`
-/

namespace A342269.P12338839331727096776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A349784 (n + 5 + n)).toNat

end

end A342269.P12338839331727096776

/-! ## A342269.P10065929706533785221

`A087156(A349784(Δ[(n+2)²]))`
-/

namespace A342269.P10065929706533785221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A349784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A342269.P10065929706533785221

/-! ## A342269.P4110171987267447690

`A001222(2^A349784(Δ[(n+2)²]))`
-/

namespace A342269.P4110171987267447690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A349784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ))).toNat

end

end A342269.P4110171987267447690

/-! ## A342269.P792152663612376092

`∑{d}[A349784(Δ[(n+2)²]), A000010(#)]`
-/

namespace A342269.P792152663612376092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349784 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A342269.P792152663612376092

/-! ## A342269.P16785014472817172637

`A349784(Δ[(n+2)²])/A007318(C(2, n))`
-/

namespace A342269.P16785014472817172637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A342269.P16785014472817172637

/-! ## A342269.P5050905593724023402

`A349784(Δ[(n+2)²])/A007318(and(1, -n))`
-/

namespace A342269.P5050905593724023402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A342269.P5050905593724023402

/-! ## A342269.P4885551285642548270

`A349784(Δ[(n+2)²])^A000108(C(n, n²))`
-/

namespace A342269.P4885551285642548270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A000108 (Nat.choose n (n ^ 2)) : ℤ)

end

end A342269.P4885551285642548270

/-!
# A342271: A161645(n)/3.

The programs for A342271, there is no canonical definition to state claims against.
-/

/-! ## A342271.P12873301182245085445

`A161645(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342271.P12873301182245085445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161645 (n + 2) : ℚ) / 3

end

end A342271.P12873301182245085445

/-! ## A342271.P9015345662767514629

`Δ[A161644(n+1)/3]`
-/

namespace A342271.P9015345662767514629
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161644 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342271.P9015345662767514629

/-! ## A342271.P2449635082738391158

`Δ[Δ[A170883(n)]]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A342271.P2449635082738391158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A342271.P2449635082738391158

/-! ## A342271.P14908260654346166394

`A161207(n+1)-2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A342271.P14908260654346166394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A161207 (n + 1) - 2 * a (n - 2)

end

end A342271.P14908260654346166394

/-! ## A342271.P17068453958606300041

`A002264(A161645(n+2))`
-/

namespace A342271.P17068453958606300041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A161645 (n + 2)).toNat

end

end A342271.P17068453958606300041

/-! ## A342271.P3702808302025851079

`A002264(Δ[A161644(n+1)])`
-/

namespace A342271.P3702808302025851079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (n + 1) - f1 n).toNat

end

end A342271.P3702808302025851079

/-! ## A342271.P2354072773849848388

`A051176(Δ[A161644(n+1)])`
-/

namespace A342271.P2354072773849848388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (f1 (n + 1) - f1 n).toNat

end

end A342271.P2354072773849848388

/-! ## A342271.P4493427494997171931

`A226576(Δ[A161644(n+1)])`
-/

namespace A342271.P4493427494997171931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226576 (f1 (n + 1) - f1 n).toNat

end

end A342271.P4493427494997171931

/-! ## A342271.P1731414661726948097

`A154958(Δ[A161644(n+1)]-2)`
-/

namespace A342271.P1731414661726948097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (f1 (n + 1) - f1 n - 2).toNat

end

end A342271.P1731414661726948097

/-! ## A342271.P12853538298354270156

`Δ[A154958(A161644(A000027(n+1)))]`
-/

namespace A342271.P12853538298354270156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A161644 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342271.P12853538298354270156

/-!
# A342272: The rows of the triangle A170899 converge to this sequence.

The programs for A342272, there is no canonical definition to state claims against.
-/

/-! ## A342272.P11664683894716223082

`A342276(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A342272.P11664683894716223082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A342276 (n - 1) + a (n - 1)

end

end A342272.P11664683894716223082

/-! ## A342272.P16031540813919893018

`A170899(A004757(n+1)-2)`
-/

namespace A342272.P16031540813919893018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170899 (A004757 (n + 1) - 2).toNat

end

end A342272.P16031540813919893018

/-! ## A342272.P23214468457345581

`floor((A151724(n+1)+A151724(n))/6)`
-/

namespace A342272.P23214468457345581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151724 (n + 1) + A151724 n : ℚ) / 6⌋

end

end A342272.P23214468457345581

/-! ## A342272.P726689949975261583

`∑[A342276(n)]-A342276(n)`
-/

namespace A342272.P726689949975261583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A342276 n

end

end A342272.P726689949975261583

/-! ## A342272.P17749561362967753108

`A008615(A151724(n+1)+A151724(n))`
-/

namespace A342272.P17749561362967753108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A151724 (n + 1) + A151724 n).toNat

end

end A342272.P17749561362967753108

/-! ## A342272.P4293028959787021871

`∑[A342276(A025581(A167614(n+1)))]`
-/

namespace A342272.P4293028959787021871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 (A025581 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342272.P4293028959787021871

/-! ## A342272.P2983753291022362213

`A169787(n+1)-1`
-/

namespace A342272.P2983753291022362213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169787 (n + 1) - 1

end

end A342272.P2983753291022362213

/-! ## A342272.P18330973496683259245

`A023443(A169787(n+1))`
-/

namespace A342272.P18330973496683259245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A169787 (n + 1)).toNat

end

end A342272.P18330973496683259245

/-! ## A342272.P12674946662290432654

`xor(A169787(n+1), A358692(n+1))`
-/

namespace A342272.P12674946662290432654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169787 (n + 1)) (A358692 (n + 1))

end

end A342272.P12674946662290432654

/-! ## A342272.P9353720226220258522

`floor(A256537(n+1)/2)`
-/

namespace A342272.P9353720226220258522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256537 (n + 1) : ℚ) / 2⌋

end

end A342272.P9353720226220258522

/-!
# A342273: Consider the k-th row of triangle A170899 starting at the 3 in the middle of the row; the row from that point on converges to this sequence as k increases.

The programs for A342273, there is no canonical definition to state claims against.
-/

/-! ## A342273.P13686780169713701482

`A342277(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A342273.P13686780169713701482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A342277 (n - 1) + a (n - 1)

end

end A342273.P13686780169713701482

/-! ## A342273.P15898962259698448335

`∑[A342277(floor(n-n/(n+1)))]`
-/

namespace A342273.P15898962259698448335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342277 ⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342273.P15898962259698448335

/-! ## A342273.P8089706070822461351

`A342272(n)+A005408(A342272(n+1))`
-/

namespace A342273.P8089706070822461351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n + A005408 (A342272 (n + 1)).toNat

end

end A342273.P8089706070822461351

/-! ## A342273.P2719579771851682836

`∑[A342278(A028310(n)-1)]-(A342272(n)+1)`
-/

namespace A342273.P2719579771851682836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342278 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A342272 n + 1)

end

end A342273.P2719579771851682836

/-! ## A342273.P11296079066097333886

`A342272(A004755(2*n+1)-n)-(A342272(n)+1)`
-/

namespace A342273.P11296079066097333886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (A004755 (2 * n + 1) - (n : ℤ)).toNat - (A342272 n + 1)

end

end A342273.P11296079066097333886

/-! ## A342273.P12465226811281550245

`A342272(A004755(2*n+1)-n)-A141310(A342272(n))`
-/

namespace A342273.P12465226811281550245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (A004755 (2 * n + 1) - (n : ℤ)).toNat - A141310 (A342272 n).toNat

end

end A342273.P12465226811281550245

/-! ## A342273.P1337600916650228264

`A342272(A003817(2*n+1)+n+2)-A141310(A342272(n))`
-/

namespace A342273.P1337600916650228264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (A003817 (2 * n + 1) + (n + 2 : ℤ)).toNat - A141310 (A342272 n).toNat

end

end A342273.P1337600916650228264

/-! ## A342273.P16793034789344786995

`A342272(A004757(n+1))-(A342272(n)+1)`
-/

namespace A342273.P16793034789344786995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (A004757 (n + 1)).toNat - (A342272 n + 1)

end

end A342273.P16793034789344786995

/-! ## A342273.P12793337100390136294

`∑[A342278(A028310(n)-1)]-A169787(n+1)`
-/

namespace A342273.P12793337100390136294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342278 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A169787 (n + 1)

end

end A342273.P12793337100390136294

/-! ## A342273.P323115850282261981

`A342272(n+1)+A342272(n)+A169787(n+2)`
-/

namespace A342273.P323115850282261981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (n + 1) + (A342272 n + A169787 (n + 2))

end

end A342273.P323115850282261981

/-!
# A342274: Consider the k-th row of triangle A170899, which has 2^k terms; discard the first quarter of the terms in the row; the remainder of the row converges to this sequence as k increases.

The programs for A342274, there is no canonical definition to state claims against.
-/

/-! ## A342274.P5957143089015240718

`A342278(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A342274.P5957143089015240718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A342278 (n - 1) + a (n - 1)

end

end A342274.P5957143089015240718

/-! ## A342274.P14069507674502173260

`∑[A342278(round(sqrt(n²+1))-1)]`
-/

namespace A342274.P14069507674502173260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342274.P14069507674502173260

/-! ## A342274.P670632162133588490

`A342272(2*lt[xor(n, 2*n), 2*n]-(n+1))`
-/

namespace A342274.P670632162133588490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n - (n + 1))

end

end A342274.P670632162133588490

/-! ## A342274.P15663499639652862409

`A342272(A004757(n+1))`
-/

namespace A342274.P15663499639652862409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (A004757 (n + 1)).toNat

end

end A342274.P15663499639652862409

/-! ## A342274.P6635290375404857310

`A342273(n)+A169787(n+1)`
-/

namespace A342274.P6635290375404857310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 n + A169787 (n + 1)

end

end A342274.P6635290375404857310

/-! ## A342274.P16061727376903503518

`A342272(n)+A342273(n)+1`
-/

namespace A342274.P16061727376903503518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n + (A342273 n + 1)

end

end A342274.P16061727376903503518

/-! ## A342274.P3135186655097221177

`A256537(n+1)+A256537(n+2)`
-/

namespace A342274.P3135186655097221177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256537 (n + 1) + A256537 (n + 2)

end

end A342274.P3135186655097221177

/-! ## A342274.P16347847222218788020

`A342272(A004755(2*n+1)-n)`
-/

namespace A342274.P16347847222218788020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (A004755 (2 * n + 1) - (n : ℤ)).toNat

end

end A342274.P16347847222218788020

/-! ## A342274.P11625911215621315182

`2*(A342272(n)+A169787(n+2))`
-/

namespace A342274.P11625911215621315182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A342272 n + A169787 (n + 2))

end

end A342274.P11625911215621315182

/-!
# A342275: First differences of A170899.

The programs for A342275, there is no canonical definition to state claims against.
-/

/-! ## A342275.P11093841067092590539

`Δ[A170899(n)]`
-/

namespace A342275.P11093841067092590539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342275.P11093841067092590539

/-! ## A342275.P1777800908429098910

`Δ[A151724(n+2)/6]/2`
-/

namespace A342275.P1777800908429098910
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151724 (n + 2) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A342275.P1777800908429098910

/-! ## A342275.P14163127770922409874

`A170899(n+1)-A170899(n)`
-/

namespace A342275.P14163127770922409874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170899 (n + 1) - A170899 n

end

end A342275.P14163127770922409874

/-! ## A342275.P2644682992001729938

`Δ[A170898(n)/2]`
-/

namespace A342275.P2644682992001729938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170898 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342275.P2644682992001729938

/-! ## A342275.P7675337526716163724

`Δ[A170905(n+2)/2]`
-/

namespace A342275.P7675337526716163724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170905 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342275.P7675337526716163724

/-! ## A342275.P2543610362765057094

`Δ[Δ[A169780(n+1)/2]]`
-/

namespace A342275.P2543610362765057094
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169780 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342275.P2543610362765057094

/-! ## A342275.P4014526969343872534

`Δ[A004524(A170898(n))]`
-/

namespace A342275.P4014526969343872534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A170898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342275.P4014526969343872534

/-! ## A342275.P4406040000777148936

`Δ[A006370(Δ[A169780(n+1)])]`
-/

namespace A342275.P4406040000777148936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169780 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342275.P4406040000777148936

/-! ## A342275.P9050239199157429227

`(A170898(n+1)-A170898(n))/2`
-/

namespace A342275.P9050239199157429227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170898 (n + 1) - A170898 n : ℚ) / 2

end

end A342275.P9050239199157429227

/-! ## A342275.P17455354549853237515

`Δ[A169778(n+2)]`
-/

namespace A342275.P17455354549853237515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169778 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342275.P17455354549853237515

/-!
# A342276: First differences of A342272.

The programs for A342276, there is no canonical definition to state claims against.
-/

/-! ## A342276.P1108666975888050966

`Δ[A342272(n)]`
-/

namespace A342276.P1108666975888050966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342276.P1108666975888050966

/-! ## A342276.P10569860244316345841

`A342272(n+1)-A342272(n)`
-/

namespace A342276.P10569860244316345841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (n + 1) - A342272 n

end

end A342276.P10569860244316345841

/-! ## A342276.P5658795804628202369

`A342278(n)-A342277(n)`
-/

namespace A342276.P5658795804628202369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342278 n - A342277 n

end

end A342276.P5658795804628202369

/-! ## A342276.P1426085953110026632

`A342278(n)-Δ[A342273(n)]`
-/

namespace A342276.P1426085953110026632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342278 n - (f1 (n + 1) - f1 n)

end

end A342276.P1426085953110026632

/-! ## A342276.P8929018192439619788

`A342273(n)+A342278(n)-A342273(n+1)`
-/

namespace A342276.P8929018192439619788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 n + (A342278 n - A342273 (n + 1))

end

end A342276.P8929018192439619788

/-! ## A342276.P12198335659211454732

`Δ[A169787(n+1)]`
-/

namespace A342276.P12198335659211454732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342276.P12198335659211454732

/-! ## A342276.P7208975808216738183

`A169787(n+2)-A169787(n+1)`
-/

namespace A342276.P7208975808216738183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169787 (n + 2) - A169787 (n + 1)

end

end A342276.P7208975808216738183

/-! ## A342276.P13358391112660021948

`Δ[A256537(n+1)/2]`
-/

namespace A342276.P13358391112660021948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256537 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342276.P13358391112660021948

/-! ## A342276.P316068473298224408

`Δ[A065033(A256537(n+1))]`
-/

namespace A342276.P316068473298224408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A256537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342276.P316068473298224408

/-! ## A342276.P15507852512648626618

`A342274(n+1)-(A342277(n)+A342274(n))`
-/

namespace A342276.P15507852512648626618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342274 (n + 1) - (A342277 n + A342274 n)

end

end A342276.P15507852512648626618

/-!
# A342277: First differences of A342273.

The programs for A342277, there is no canonical definition to state claims against.
-/

/-! ## A342277.P527467666072295246

`Δ[A342273(n)]`
-/

namespace A342277.P527467666072295246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342277.P527467666072295246

/-! ## A342277.P6412229721531944505

`A342278(n)-A342276(n)`
-/

namespace A342277.P6412229721531944505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342278 n - A342276 n

end

end A342277.P6412229721531944505

/-! ## A342277.P4733855200536255467

`A342278(n)-Δ[A342272(n)]`
-/

namespace A342277.P4733855200536255467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342278 n - (f1 (n + 1) - f1 n)

end

end A342277.P4733855200536255467

/-! ## A342277.P8118507570246113909

`A342273(n+1)-A342273(n)`
-/

namespace A342277.P8118507570246113909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 (n + 1) - A342273 n

end

end A342277.P8118507570246113909

/-! ## A342277.P6518325547694647806

`A342272(n)+A342278(n)-A342272(n+1)`
-/

namespace A342277.P6518325547694647806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n + (A342278 n - A342272 (n + 1))

end

end A342277.P6518325547694647806

/-! ## A342277.P7719719435267166739

`A342276(n+1)+A342276(n+1)+A342276(n)`
-/

namespace A342277.P7719719435267166739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 (n + 1) + (A342276 (n + 1) + A342276 n)

end

end A342277.P7719719435267166739

/-! ## A342277.P15345241002733539790

`A342276(A004757(n+1))-A342276(n)`
-/

namespace A342277.P15345241002733539790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 (A004757 (n + 1)).toNat - A342276 n

end

end A342277.P15345241002733539790

/-! ## A342277.P18126399160529046167

`A169787(n+1)+A342278(n)-A169787(n+2)`
-/

namespace A342277.P18126399160529046167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169787 (n + 1) + (A342278 n - A169787 (n + 2))

end

end A342277.P18126399160529046167

/-! ## A342277.P5568327536949310789

`Δ[A342274(n)-A169787(n+1)]`
-/

namespace A342277.P5568327536949310789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342274 n - A169787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342277.P5568327536949310789

/-! ## A342277.P434677045410292472

`A342274(n+1)-(A342276(n)+A342274(n))`
-/

namespace A342277.P434677045410292472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342274 (n + 1) - (A342276 n + A342274 n)

end

end A342277.P434677045410292472

/-!
# A342278: First differences of A342274.

The programs for A342278, there is no canonical definition to state claims against.
-/

/-! ## A342278.P10032321503471796344

`A342277(n)+A342276(n)`
-/

namespace A342278.P10032321503471796344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342277 n + A342276 n

end

end A342278.P10032321503471796344

/-! ## A342278.P4410141642413999995

`Δ[A342273(n)+A342272(n)]`
-/

namespace A342278.P4410141642413999995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 n + A342272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342278.P4410141642413999995

/-! ## A342278.P9313038433807849226

`A342276(n)+Δ[A342273(n)]`
-/

namespace A342278.P9313038433807849226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 n + (f1 (n + 1) - f1 n)

end

end A342278.P9313038433807849226

/-! ## A342278.P5701023340908272171

`A342277(n)+Δ[A342272(n)]`
-/

namespace A342278.P5701023340908272171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342277 n + (f1 (n + 1) - f1 n)

end

end A342278.P5701023340908272171

/-! ## A342278.P14973958919147127545

`2*(A342276(n+1)+A342276(n))`
-/

namespace A342278.P14973958919147127545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A342276 (n + 1) + A342276 n)

end

end A342278.P14973958919147127545

/-! ## A342278.P12893931952998399392

`2*(A342272(n+2)-A342272(n))`
-/

namespace A342278.P12893931952998399392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A342272 (n + 2) - A342272 n)

end

end A342278.P12893931952998399392

/-! ## A342278.P18442669025131179825

`Δ[A005843(A342272(n+1)+A342272(n))]`
-/

namespace A342278.P18442669025131179825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A342272 (n + 1) + A342272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342278.P18442669025131179825

/-! ## A342278.P881287819761646217

`A342272(n+1)+A342277(n)-A342272(n)`
-/

namespace A342278.P881287819761646217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (n + 1) + (A342277 n - A342272 n)

end

end A342278.P881287819761646217

/-! ## A342278.P6888997419590938729

`A342273(n+1)+A342276(n)-A342273(n)`
-/

namespace A342278.P6888997419590938729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342273 (n + 1) + (A342276 n - A342273 n)

end

end A342278.P6888997419590938729

/-! ## A342278.P10001331579680047722

`A342276(A004757(n+1))`
-/

namespace A342278.P10001331579680047722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342276 (A004757 (n + 1)).toNat

end

end A342278.P10001331579680047722

/-!
# A342279: A bisection of A000201: a(n) = A000201(2*n+1).

The programs for A342279, the canonical program `A342279.P4434841639031500385` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342279 has offset 0).

The definition of A342279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000201(2*n+1)` (program `A342279.P4434841639031500385`, by `A342279.P4434841639031500385.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342279.P4434841639031500385

`A000201(2*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342279

/-- `A000201(2*n+1)` -/
def P4434841639031500385.Spec : Prop :=
  ∀ n, P4434841639031500385.a n = A342279 n

theorem P4434841639031500385.correct : P4434841639031500385.Spec := by
  intro n
  simp only [A342279]

end A342279

/-! ## A342279.P9297216119320612370

`floor(Δ[ϕ*n²])`
-/

namespace A342279.P9297216119320612370
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A342279.P9297216119320612370

namespace A342279

/-- `floor(Δ[ϕ*n²])` -/
def P9297216119320612370.Spec : Prop :=
  ∀ n, P9297216119320612370.a n = A342279 n

end A342279

/-! ## A342279.P11280938544531830635

`record[floor(ϕ*xor(1, n))]`
-/

namespace A342279.P11280938544531830635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.xor 1 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342279.P11280938544531830635

namespace A342279

/-- `record[floor(ϕ*xor(1, n))]` -/
def P11280938544531830635.Spec : Prop :=
  ∀ n, P11280938544531830635.a n = A342279 n

end A342279

/-! ## A342279.P6743160276958445773

`ceil(ϕ*or(1, 2*n))-1`
-/

namespace A342279.P6743160276958445773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ)⌉ - 1

end

end A342279.P6743160276958445773

namespace A342279

/-- `ceil(ϕ*or(1, 2*n))-1` -/
def P6743160276958445773.Spec : Prop :=
  ∀ n, P6743160276958445773.a n = A342279 n

end A342279

/-! ## A342279.P7170694019481380452

`ceil(ϕ*xor(1, 2*n))-1`
-/

namespace A342279.P7170694019481380452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)⌉ - 1

end

end A342279.P7170694019481380452

namespace A342279

/-- `ceil(ϕ*xor(1, 2*n))-1` -/
def P7170694019481380452.Spec : Prop :=
  ∀ n, P7170694019481380452.a n = A342279 n

end A342279

/-! ## A342279.P15016030500751700032

`-ceil(ϕ*xor(2*n, -1))`
-/

namespace A342279.P15016030500751700032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.goldenRatio * (Int.xor (2 * n : ℤ) (-1) : ℝ)⌉

end

end A342279.P15016030500751700032

namespace A342279

/-- `-ceil(ϕ*xor(2*n, -1))` -/
def P15016030500751700032.Spec : Prop :=
  ∀ n, P15016030500751700032.a n = A342279 n

end A342279

/-! ## A342279.P6561888652143915006

`ceil(or(1, 2*n)/ϕ+2*n)`
-/

namespace A342279.P6561888652143915006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) / Real.goldenRatio + (2 * n : ℝ)⌉

end

end A342279.P6561888652143915006

namespace A342279

/-- `ceil(or(1, 2*n)/ϕ+2*n)` -/
def P6561888652143915006.Spec : Prop :=
  ∀ n, P6561888652143915006.a n = A342279 n

end A342279

/-! ## A342279.P14129675246869963671

`ceil(xor(1, 2*n)/ϕ+2*n)`
-/

namespace A342279.P14129675246869963671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) / Real.goldenRatio + (2 * n : ℝ)⌉

end

end A342279.P14129675246869963671

namespace A342279

/-- `ceil(xor(1, 2*n)/ϕ+2*n)` -/
def P14129675246869963671.Spec : Prop :=
  ∀ n, P14129675246869963671.a n = A342279 n

end A342279

/-! ## A342279.P8831379804258269315

`xor(-1, floor(-(ϕ*(2*n+1))))`
-/

namespace A342279.P8831379804258269315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ⌊-(Real.goldenRatio * (2 * n + 1 : ℝ))⌋

end

end A342279.P8831379804258269315

namespace A342279

/-- `xor(-1, floor(-(ϕ*(2*n+1))))` -/
def P8831379804258269315.Spec : Prop :=
  ∀ n, P8831379804258269315.a n = A342279 n

end A342279

/-! ## A342279.P12817888035752119331

`-ceil(ϕ*or(1, -(2*n+1)))`
-/

namespace A342279.P12817888035752119331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.goldenRatio * (Int.lor 1 (-(2 * n + 1 : ℤ)) : ℝ)⌉

end

end A342279.P12817888035752119331

namespace A342279

/-- `-ceil(ϕ*or(1, -(2*n+1)))` -/
def P12817888035752119331.Spec : Prop :=
  ∀ n, P12817888035752119331.a n = A342279 n

end A342279

/-! ## A342279.P17043439927432950425

`floor(ϕ*(2*n+1))%(n+2)²`
-/

namespace A342279.P17043439927432950425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ ((n + 2) ^ 2 : ℤ)

end

end A342279.P17043439927432950425

namespace A342279

/-- `floor(ϕ*(2*n+1))%(n+2)²` -/
def P17043439927432950425.Spec : Prop :=
  ∀ n, P17043439927432950425.a n = A342279 n

end A342279

/-! ## A342279.P16447926387347540628

`floor(ϕ*(2*n+1))+and(2, n²)`
-/

namespace A342279.P16447926387347540628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ + (Nat.land 2 (n ^ 2) : ℤ)

end

end A342279.P16447926387347540628

namespace A342279

/-- `floor(ϕ*(2*n+1))+and(2, n²)` -/
def P16447926387347540628.Spec : Prop :=
  ∀ n, P16447926387347540628.a n = A342279 n

end A342279

/-! ## A342279.P15130321373026538085

`lcm(ϕ-ϕ², floor(ϕ*(2*n+1)))`
-/

namespace A342279.P15130321373026538085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋

end

end A342279.P15130321373026538085

namespace A342279

/-- `lcm(ϕ-ϕ², floor(ϕ*(2*n+1)))` -/
def P15130321373026538085.Spec : Prop :=
  ∀ n, (P15130321373026538085.a n : ℤ) = A342279 n

end A342279

/-! ## A342279.P10994650631760739402

`C(floor(ϕ*(2*n+1)), ϕ²-ϕ)`
-/

namespace A342279.P10994650631760739402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋.toNat (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A342279.P10994650631760739402

namespace A342279

/-- `C(floor(ϕ*(2*n+1)), ϕ²-ϕ)` -/
def P10994650631760739402.Spec : Prop :=
  ∀ n, (P10994650631760739402.a n : ℤ) = A342279 n

end A342279

/-! ## A342279.P3901638960194751326

`ceil(lcm(2, 2*n)+(2*n+1)/ϕ)`
-/

namespace A342279.P3901638960194751326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n) : ℝ) + (2 * n + 1 : ℝ) / Real.goldenRatio⌉

end

end A342279.P3901638960194751326

namespace A342279

/-- `ceil(lcm(2, 2*n)+(2*n+1)/ϕ)` -/
def P3901638960194751326.Spec : Prop :=
  ∀ n, P3901638960194751326.a n = A342279 n

end A342279

/-! ## A342279.P7698578900253617295

`floor(ϕ*(2*n+1))+C(2, n+3)`
-/

namespace A342279.P7698578900253617295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (2 * n + 1 : ℝ)⌋ + (Nat.choose 2 (n + 3) : ℤ)

end

end A342279.P7698578900253617295

namespace A342279

/-- `floor(ϕ*(2*n+1))+C(2, n+3)` -/
def P7698578900253617295.Spec : Prop :=
  ∀ n, P7698578900253617295.a n = A342279 n

end A342279

/-! ## A342279.P16062343151462487411

`ceil(ϕ*C(2*n+1, 2*n))-1`
-/

namespace A342279.P16062343151462487411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (2 * n + 1) (2 * n) : ℝ)⌉ - 1

end

end A342279.P16062343151462487411

namespace A342279

/-- `ceil(ϕ*C(2*n+1, 2*n))-1` -/
def P16062343151462487411.Spec : Prop :=
  ∀ n, P16062343151462487411.a n = A342279 n

end A342279

/-! ## A342279.P9635017355394116407

`floor(or(1, 2*n)/ϕ)+2*n+1`
-/

namespace A342279.P9635017355394116407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℝ) / Real.goldenRatio⌋ + (2 * n + 1 : ℤ)

end

end A342279.P9635017355394116407

namespace A342279

/-- `floor(or(1, 2*n)/ϕ)+2*n+1` -/
def P9635017355394116407.Spec : Prop :=
  ∀ n, P9635017355394116407.a n = A342279 n

end A342279

/-! ## A342279.P16540070221243052516

`floor((2*n+1)/ϕ)+xor(1, 2*n)`
-/

namespace A342279.P16540070221243052516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ + (Nat.xor 1 (2 * n) : ℤ)

end

end A342279.P16540070221243052516

namespace A342279

/-- `floor((2*n+1)/ϕ)+xor(1, 2*n)` -/
def P16540070221243052516.Spec : Prop :=
  ∀ n, P16540070221243052516.a n = A342279 n

end A342279

/-! ## A342279.P10498281773704662523

`ceil(ϕ*(2*n+1))-gcd(n, n+1)`
-/

namespace A342279.P10498281773704662523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (2 * n + 1 : ℝ)⌉ - (Nat.gcd n (n + 1) : ℤ)

end

end A342279.P10498281773704662523

namespace A342279

/-- `ceil(ϕ*(2*n+1))-gcd(n, n+1)` -/
def P10498281773704662523.Spec : Prop :=
  ∀ n, P10498281773704662523.a n = A342279 n

end A342279

/-!
# A342280: a(n) = A001952(2*n+1).

The programs for A342280, the canonical program `A342280.P17811864972205335063` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342280 has offset 0).

The definition of A342280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001952(2*n+1)` (program `A342280.P17811864972205335063`, by `A342280.P17811864972205335063.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342280.P17811864972205335063

`A001952(2*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A342280

/-- `A001952(2*n+1)` -/
def P17811864972205335063.Spec : Prop :=
  ∀ n, P17811864972205335063.a n = A342280 n

theorem P17811864972205335063.correct : P17811864972205335063.Spec := by
  intro n
  simp only [A342280]

end A342280

/-! ## A342280.P13342478559699882327

`floor((2+sqrt(2))*(2*n+1))`
-/

namespace A342280.P13342478559699882327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 + Real.sqrt (2 : ℝ)) * (2 * n + 1 : ℝ)⌋

end

end A342280.P13342478559699882327

namespace A342280

/-- `floor((2+sqrt(2))*(2*n+1))` -/
def P13342478559699882327.Spec : Prop :=
  ∀ n, P13342478559699882327.a n = A342280 n

end A342280

/-! ## A342280.P9450383336215851781

`A215247(n+1)+Δ[n²]`
-/

namespace A342280.P9450383336215851781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215247 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A342280.P9450383336215851781

namespace A342280

/-- `A215247(n+1)+Δ[n²]` -/
def P9450383336215851781.Spec : Prop :=
  ∀ n, P9450383336215851781.a n = A342280 n

end A342280

/-! ## A342280.P2216086098541888431

`A342281(n)+A016825(n)`
-/

namespace A342280.P2216086098541888431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n + A016825 n

end

end A342280.P2216086098541888431

namespace A342280

/-- `A342281(n)+A016825(n)` -/
def P2216086098541888431.Spec : Prop :=
  ∀ n, P2216086098541888431.a n = A342280 n

end A342280

/-! ## A342280.P6557715910610091598

`A063957(n+1)+A001954(n)`
-/

namespace A342280.P6557715910610091598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1) + A001954 n

end

end A342280.P6557715910610091598

namespace A342280

/-- `A063957(n+1)+A001954(n)` -/
def P6557715910610091598.Spec : Prop :=
  ∀ n, P6557715910610091598.a n = A342280 n

end A342280

/-! ## A342280.P610443483216866232

`A184922(Δ[n²])+1`
-/

namespace A342280.P610443483216866232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A342280.P610443483216866232

namespace A342280

/-- `A184922(Δ[n²])+1` -/
def P610443483216866232.Spec : Prop :=
  ∀ n, P610443483216866232.a n = A342280 n

end A342280

/-! ## A342280.P6960678225070908629

`A083051(Δ[n²])-1`
-/

namespace A342280.P6960678225070908629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A342280.P6960678225070908629

namespace A342280

/-- `A083051(Δ[n²])-1` -/
def P6960678225070908629.Spec : Prop :=
  ∀ n, P6960678225070908629.a n = A342280 n

end A342280

/-! ## A342280.P15546217637815190213

`A286927(Δ[n²])/2`
-/

namespace A342280.P15546217637815190213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286927 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A342280.P15546217637815190213

namespace A342280

/-- `A286927(Δ[n²])/2` -/
def P15546217637815190213.Spec : Prop :=
  ∀ n, P15546217637815190213.a n = (A342280 n : ℚ)

end A342280

/-! ## A342280.P687357709228657864

`record[A001952(n^(n%2))]`
-/

namespace A342280.P687357709228657864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342280.P687357709228657864

namespace A342280

/-- `record[A001952(n^(n%2))]` -/
def P687357709228657864.Spec : Prop :=
  ∀ n, P687357709228657864.a n = A342280 n

end A342280

/-! ## A342280.P7201741139341258562

`record[A001952(gcd(n, or(1, n)))]`
-/

namespace A342280.P7201741139341258562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (Nat.gcd n (Nat.lor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342280.P7201741139341258562

namespace A342280

/-- `record[A001952(gcd(n, or(1, n)))]` -/
def P7201741139341258562.Spec : Prop :=
  ∀ n, P7201741139341258562.a n = A342280 n

end A342280

/-! ## A342280.P14161569028977704194

`record[A001952(C(or(1, n), n))]`
-/

namespace A342280.P14161569028977704194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342280.P14161569028977704194

namespace A342280

/-- `record[A001952(C(or(1, n), n))]` -/
def P14161569028977704194.Spec : Prop :=
  ∀ n, P14161569028977704194.a n = A342280 n

end A342280

/-! ## A342280.P66472390660462322

`A289037(2*(n+1))-3`
-/

namespace A342280.P66472390660462322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (2 * (n + 1)) - 3

end

end A342280.P66472390660462322

namespace A342280

/-- `A289037(2*(n+1))-3` -/
def P66472390660462322.Spec : Prop :=
  ∀ n, P66472390660462322.a n = A342280 n

end A342280

/-! ## A342280.P5483182760524121477

`A189457(Δ[n²])+n+1`
-/

namespace A342280.P5483182760524121477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A342280.P5483182760524121477

namespace A342280

/-- `A189457(Δ[n²])+n+1` -/
def P5483182760524121477.Spec : Prop :=
  ∀ n, P5483182760524121477.a n = A342280 n

end A342280

/-! ## A342280.P1629565516311892202

`A190336(Δ[n²])+n+1`
-/

namespace A342280.P1629565516311892202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A342280.P1629565516311892202

namespace A342280

/-- `A190336(Δ[n²])+n+1` -/
def P1629565516311892202.Spec : Prop :=
  ∀ n, P1629565516311892202.a n = A342280 n

end A342280

/-! ## A342280.P11989937189630151434

`ceil(A286690(2*n+1)/2)`
-/

namespace A342280.P11989937189630151434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286690 (2 * n + 1) : ℚ) / 2⌉

end

end A342280.P11989937189630151434

namespace A342280

/-- `ceil(A286690(2*n+1)/2)` -/
def P11989937189630151434.Spec : Prop :=
  ∀ n, P11989937189630151434.a n = A342280 n

end A342280

/-! ## A342280.P13975607658695389693

`record[A001952(and(n, n+1)+1)]`
-/

namespace A342280.P13975607658695389693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342280.P13975607658695389693

namespace A342280

/-- `record[A001952(and(n, n+1)+1)]` -/
def P13975607658695389693.Spec : Prop :=
  ∀ n, P13975607658695389693.a n = A342280 n

end A342280

/-! ## A342280.P11741362871284726532

`A189457(2*n+1)+1+n`
-/

namespace A342280.P11741362871284726532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 (2 * n + 1) + 1 + (n : ℤ)

end

end A342280.P11741362871284726532

namespace A342280

/-- `A189457(2*n+1)+1+n` -/
def P11741362871284726532.Spec : Prop :=
  ∀ n, P11741362871284726532.a n = A342280 n

end A342280

/-! ## A342280.P16829054957826435493

`A190336(2*n+1)+1+n`
-/

namespace A342280.P16829054957826435493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190336 (2 * n + 1) + 1 + (n : ℤ)

end

end A342280.P16829054957826435493

namespace A342280

/-- `A190336(2*n+1)+1+n` -/
def P16829054957826435493.Spec : Prop :=
  ∀ n, P16829054957826435493.a n = A342280 n

end A342280

/-! ## A342280.P9438691015949849019

`A080754(2*n+1)+2*n`
-/

namespace A342280.P9438691015949849019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (2 * n + 1) + (2 * n : ℤ)

end

end A342280.P9438691015949849019

namespace A342280

/-- `A080754(2*n+1)+2*n` -/
def P9438691015949849019.Spec : Prop :=
  ∀ n, P9438691015949849019.a n = A342280 n

end A342280

/-!
# A342281: A bisection of A001951: a(n) = A001951(2*n+1).

The programs for A342281, the canonical program `A342281.P11173298735282036811` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342281 has offset 0).

The definition of A342281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342281.P11173298735282036811

`A001951(2*n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342281

/-- `A001951(2*n+1)` -/
def P11173298735282036811.Spec : Prop :=
  ∀ n, P11173298735282036811.a n = A342281 n

theorem P11173298735282036811.correct : P11173298735282036811.Spec := by
  intro n
  simp only [A342281]

end A342281

/-! ## A342281.P11153274736320898456

`floor(sqrt(2)*comp[2*n])`
-/

namespace A342281.P11153274736320898456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌋

end

end A342281.P11153274736320898456

namespace A342281

/-- `floor(sqrt(2)*comp[2*n])` -/
def P11153274736320898456.Spec : Prop :=
  ∀ n, P11153274736320898456.a n = A342281 n

end A342281

/-! ## A342281.P8214634726040881615

`record[floor(sqrt(2)*xor(1, n))]`
-/

namespace A342281.P8214634726040881615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (Nat.xor 1 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342281.P8214634726040881615

namespace A342281

/-- `record[floor(sqrt(2)*xor(1, n))]` -/
def P8214634726040881615.Spec : Prop :=
  ∀ n, P8214634726040881615.a n = A342281 n

end A342281

/-! ## A342281.P1372320350233749390

`record[floor(n*sqrt(2))^(n%2)]`
-/

namespace A342281.P1372320350233749390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342281.P1372320350233749390

namespace A342281

/-- `record[floor(n*sqrt(2))^(n%2)]` -/
def P1372320350233749390.Spec : Prop :=
  ∀ n, P1372320350233749390.a n = A342281 n

end A342281

/-! ## A342281.P9853950717339414487

`record[floor(n*sqrt(2))^and(1, n)]`
-/

namespace A342281.P9853950717339414487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342281.P9853950717339414487

namespace A342281

/-- `record[floor(n*sqrt(2))^and(1, n)]` -/
def P9853950717339414487.Spec : Prop :=
  ∀ n, P9853950717339414487.a n = A342281 n

end A342281

/-! ## A342281.P2123662347832948249

`record[floor((and(n, n+1)+1)*sqrt(2))]`
-/

namespace A342281.P2123662347832948249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land n (n + 1) + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342281.P2123662347832948249

namespace A342281

/-- `record[floor((and(n, n+1)+1)*sqrt(2))]` -/
def P2123662347832948249.Spec : Prop :=
  ∀ n, P2123662347832948249.a n = A342281 n

end A342281

/-! ## A342281.P5734244222296020998

`floor((2*n+1)*sqrt(2))+(2*n)%2`
-/

namespace A342281.P5734244222296020998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + ((2 * n % 2 : ℕ) : ℤ)

end

end A342281.P5734244222296020998

namespace A342281

/-- `floor((2*n+1)*sqrt(2))+(2*n)%2` -/
def P5734244222296020998.Spec : Prop :=
  ∀ n, P5734244222296020998.a n = A342281 n

end A342281

/-! ## A342281.P14109652444889916495

`A215247(n+1)-Δ[n²]`
-/

namespace A342281.P14109652444889916495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215247 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A342281.P14109652444889916495

namespace A342281

/-- `A215247(n+1)-Δ[n²]` -/
def P14109652444889916495.Spec : Prop :=
  ∀ n, P14109652444889916495.a n = A342281 n

end A342281

/-! ## A342281.P17820728549550201545

`floor((2*n+1)*sqrt(2))%A016969(n)`
-/

namespace A342281.P17820728549550201545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ (A016969 n)

end

end A342281.P17820728549550201545

namespace A342281

/-- `floor((2*n+1)*sqrt(2))%A016969(n)` -/
def P17820728549550201545.Spec : Prop :=
  ∀ n, P17820728549550201545.a n = A342281 n

end A342281

/-! ## A342281.P7674347753305358142

`A000027(floor(sqrt((2*n+1)*(4*n+2))))`
-/

namespace A342281.P7674347753305358142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Nat.sqrt ((2 * n + 1) * (4 * n + 2)))

end

end A342281.P7674347753305358142

namespace A342281

/-- `A000027(floor(sqrt((2*n+1)*(4*n+2))))` -/
def P7674347753305358142.Spec : Prop :=
  ∀ n, P7674347753305358142.a n = A342281 n

end A342281

/-! ## A342281.P8030368202715326163

`A327177(n)+A191405(n)`
-/

namespace A342281.P8030368202715326163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n + A191405 n

end

end A342281.P8030368202715326163

namespace A342281

/-- `A327177(n)+A191405(n)` -/
def P8030368202715326163.Spec : Prop :=
  ∀ n, P8030368202715326163.a n = A342281 n

end A342281

/-! ## A342281.P17544197895741501266

`A342280(n)-A016825(n)`
-/

namespace A342281.P17544197895741501266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342280 n - A016825 n

end

end A342281.P17544197895741501266

namespace A342281

/-- `A342280(n)-A016825(n)` -/
def P17544197895741501266.Spec : Prop :=
  ∀ n, P17544197895741501266.a n = A342281 n

end A342281

/-! ## A342281.P5092295597012449307

`A395101(Δ[n²])+1`
-/

namespace A342281.P5092295597012449307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A342281.P5092295597012449307

namespace A342281

/-- `A395101(Δ[n²])+1` -/
def P5092295597012449307.Spec : Prop :=
  ∀ n, P5092295597012449307.a n = A342281 n

end A342281

/-! ## A342281.P12255243661798639294

`A087057(Δ[n²])-1`
-/

namespace A342281.P12255243661798639294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A342281.P12255243661798639294

namespace A342281

/-- `A087057(Δ[n²])-1` -/
def P12255243661798639294.Spec : Prop :=
  ∀ n, P12255243661798639294.a n = A342281 n

end A342281

/-! ## A342281.P12903537110869008013

`A286909(Δ[n²])/2`
-/

namespace A342281.P12903537110869008013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A342281.P12903537110869008013

namespace A342281

/-- `A286909(Δ[n²])/2` -/
def P12903537110869008013.Spec : Prop :=
  ∀ n, P12903537110869008013.a n = (A342281 n : ℚ)

end A342281

/-! ## A342281.P4733416722662923101

`sqrt(A087055(2*n+1))`
-/

namespace A342281.P4733416722662923101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087055 (2 * n + 1) : ℝ)

end

end A342281.P4733416722662923101

namespace A342281

/-- `sqrt(A087055(2*n+1))` -/
def P4733416722662923101.Spec : Prop :=
  ∀ n, P4733416722662923101.a n = (A342281 n : ℝ)

end A342281

/-! ## A342281.P17155332799220673763

`record[A001951(n^and(1, n))]`
-/

namespace A342281.P17155332799220673763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342281.P17155332799220673763

namespace A342281

/-- `record[A001951(n^and(1, n))]` -/
def P17155332799220673763.Spec : Prop :=
  ∀ n, P17155332799220673763.a n = A342281 n

end A342281

/-! ## A342281.P17258136096652832140

`A054071(2*n+1)+2*n`
-/

namespace A342281.P17258136096652832140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (2 * n + 1) + (2 * n : ℤ)

end

end A342281.P17258136096652832140

namespace A342281

/-- `A054071(2*n+1)+2*n` -/
def P17258136096652832140.Spec : Prop :=
  ∀ n, P17258136096652832140.a n = A342281 n

end A342281

/-! ## A342281.P12990382327642052019

`A286666(2*n+1)-2*n`
-/

namespace A342281.P12990382327642052019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (2 * n + 1) - (2 * n : ℤ)

end

end A342281.P12990382327642052019

namespace A342281

/-- `A286666(2*n+1)-2*n` -/
def P12990382327642052019.Spec : Prop :=
  ∀ n, P12990382327642052019.a n = A342281 n

end A342281

/-! ## A342281.P8813323500205538243

`A097508(2*n+1)+Δ[n²]`
-/

namespace A342281.P8813323500205538243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A342281.P8813323500205538243

namespace A342281

/-- `A097508(2*n+1)+Δ[n²]` -/
def P8813323500205538243.Spec : Prop :=
  ∀ n, P8813323500205538243.a n = A342281 n

end A342281

/-!
# A342282: G.f. = 1-1/H(x) where H(x) = 1 + 2*x + 6*x^2 + 22*x^3 + 92*x^4 + 422*x^5 + 2074*x^6 + ... is a g.f. for the Baxter sequence A001181 with a different offset.

The programs for A342282, there is no canonical definition to state claims against.
-/

/-! ## A342282.P1091709267043364273

`2*A342283(n)`
-/

namespace A342282.P1091709267043364273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342283 n

end

end A342282.P1091709267043364273

/-! ## A342282.P2337408078175705300

`A342283(A254667(n))+A342283(n)`
-/

namespace A342282.P2337408078175705300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342283 (A254667 n).toNat + A342283 n

end

end A342282.P2337408078175705300

/-! ## A342282.P16358676353170827145

`lcm(A342283(n)+A342283(n), A000034(n))`
-/

namespace A342282.P16358676353170827145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A342283 n + A342283 n) (A000034 n)

end

end A342282.P16358676353170827145

/-! ## A342282.P11829819827095254085

`A342283(A118759(n))+A342283(n)`
-/

namespace A342282.P11829819827095254085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342283 (A118759 n).toNat + A342283 n

end

end A342282.P11829819827095254085

/-! ## A342282.P3355646524071726992

`A342284(A014963(∑[12*n+2])+n-1)`
-/

namespace A342282.P3355646524071726992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342284 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - 1)).toNat

end

end A342282.P3355646524071726992

/-!
# A342283: a(n) = A342282(n)/2.

The programs for A342283, there is no canonical definition to state claims against.
-/

/-! ## A342283.P11360364635008416940

`A342282(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342283.P11360364635008416940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342282 n : ℚ) / 2

end

end A342283.P11360364635008416940

/-! ## A342283.P3755768607498241033

`floor(A342284(A254667(n))/2)`
-/

namespace A342283.P3755768607498241033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342284 (A254667 n).toNat : ℚ) / 2⌋

end

end A342283.P3755768607498241033

/-! ## A342283.P16794844861992331581

`A342284(A254667(n)+A000007(n))/2`
-/

namespace A342283.P16794844861992331581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342284 (A254667 n + A000007 n).toNat : ℚ) / 2

end

end A342283.P16794844861992331581

/-! ## A342283.P4120260225579938883

`A057427(n)/2*A342284(A254667(n))`
-/

namespace A342283.P4120260225579938883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 2 * (A342284 (A254667 n).toNat : ℚ)

end

end A342283.P4120260225579938883

/-! ## A342283.P6362534294541617713

`round(A342284(A254667(n))/2)%A089946(n)`
-/

namespace A342283.P6362534294541617713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A342284 (A254667 n).toNat : ℚ) / 2)) (A089946 n)

end

end A342283.P6362534294541617713

/-!
# A342284: Number of friendly 3-watermelons of length n.

The programs for A342284, there is no canonical definition to state claims against.
-/

/-! ## A342284.P2502750634968869423

`abs(A130706(n)-A342282(n))`
-/

namespace A342284.P2502750634968869423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130706 n - A342282 n|

end

end A342284.P2502750634968869423

/-! ## A342284.P4294431714466782748

`xor(A061006(2*(n+1)), A342282(n))`
-/

namespace A342284.P4294431714466782748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061006 (2 * (n + 1))) (A342282 n)

end

end A342284.P4294431714466782748

/-!
# A342285: Coordination sequence with respect to the central vertex of a dodecagon-based tiling of the plane by copies of a certain Goldberg quadrilateral tile.

The programs for A342285, the canonical program `A342285.P10112151938194424123` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342285 has offset 0).

The definition of A342285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342285.P10112151938194424123

`A298026(record[A153152(A004273(n))])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A342285

/-- `A298026(record[A153152(A004273(n))])` -/
def P10112151938194424123.Spec : Prop :=
  ∀ n, P10112151938194424123.a n = A342285 n

theorem P10112151938194424123.correct : P10112151938194424123.Spec := by
  intro n
  simp only [A342285]

end A342285

/-!
# A342286: a(n) = number of n-variable nondegenerate self-reflecting truth-tables.

The programs for A342286, there is no canonical definition to state claims against.
-/

/-! ## A342286.P12835194297345479537

`A000371(n-1)-a(n-1)` with `a(0)=2, a(1)=0`
-/

namespace A342286.P12835194297345479537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n a =>
  A000371 (n - 1) - a (n - 1)

end

end A342286.P12835194297345479537

/-! ## A342286.P18347607077659927929

`xor(2, A342287(n))`
-/

namespace A342286.P18347607077659927929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A342287 n)

end

end A342286.P18347607077659927929

/-!
# A342287: a(n) = number of n-variable nondegenerate self-dual truth-tables.

The programs for A342287, there is no canonical definition to state claims against.
-/

/-! ## A342287.P5866257734235650547

`A000371(n-1)-a(n-1)` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A342287.P5866257734235650547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n a =>
  A000371 (n - 1) - a (n - 1)

end

end A342287.P5866257734235650547

/-! ## A342287.P13981136606489293721

`xor(2, A342286(n))`
-/

namespace A342287.P13981136606489293721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A342286 n)

end

end A342287.P13981136606489293721

/-!
# A342288: a(n) = C(n)*C(n+2), where C(n) is the n-th Catalan number A000108(n).

The programs for A342288, the canonical program `A342288.P15676750234496139575` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342288 has offset 0).

The definition of A342288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342288.P15676750234496139575

`a(n-1)*4*(2*n-1)*(2*n+3)/((n+1)*(n+3))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A342288

/-- `a(n-1)*4*(2*n-1)*(2*n+3)/((n+1)*(n+3))` -/
def P15676750234496139575.Spec : Prop :=
  ∀ n, P15676750234496139575.a n = (A342288 n : ℚ)

end A342288

/-! ## A342288.P2054027492610095189

`(n+2)/(2*n+1)*A000356(n+1)`
-/

namespace A342288.P2054027492610095189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (2 * n + 1 : ℚ) * (A000356 (n + 1) : ℚ)

end

end A342288.P2054027492610095189

namespace A342288

/-- `(n+2)/(2*n+1)*A000356(n+1)` -/
def P2054027492610095189.Spec : Prop :=
  ∀ n, P2054027492610095189.a n = (A342288 n : ℚ)

end A342288

/-! ## A342288.P17117238519933811126

`A005700(n)+A001246(n+1)`
-/

namespace A342288.P17117238519933811126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 n + A001246 (n + 1)

end

end A342288.P17117238519933811126

namespace A342288

/-- `A005700(n)+A001246(n+1)` -/
def P17117238519933811126.Spec : Prop :=
  ∀ n, P17117238519933811126.a n = A342288 n

end A342288

/-! ## A342288.P1750264886756273297

`A000108(n+2)*A000108(n)`
-/

namespace A342288.P1750264886756273297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) * A000108 n

end

end A342288.P1750264886756273297

namespace A342288

/-- `A000108(n+2)*A000108(n)` -/
def P1750264886756273297.Spec : Prop :=
  ∀ n, P1750264886756273297.a n = A342288 n

end A342288

/-! ## A342288.P5225770224067398281

`A168491(n+2)*A168491(n)`
-/

namespace A342288.P5225770224067398281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 (n + 2) * A168491 n

end

end A342288.P5225770224067398281

namespace A342288

/-- `A168491(n+2)*A168491(n)` -/
def P5225770224067398281.Spec : Prop :=
  ∀ n, P5225770224067398281.a n = A342288 n

end A342288

/-! ## A342288.P8362865601487249991

`A005700(n)+A000108(n+1)²`
-/

namespace A342288.P8362865601487249991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005700 n + A000108 (n + 1) ^ 2

end

end A342288.P8362865601487249991

namespace A342288

/-- `A005700(n)+A000108(n+1)²` -/
def P8362865601487249991.Spec : Prop :=
  ∀ n, P8362865601487249991.a n = A342288 n

end A342288

/-! ## A342288.P9588560265715934654

`A005817(2*n+1)+A005700(n)`
-/

namespace A342288.P9588560265715934654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 (2 * n + 1) + A005700 n

end

end A342288.P9588560265715934654

namespace A342288

/-- `A005817(2*n+1)+A005700(n)` -/
def P9588560265715934654.Spec : Prop :=
  ∀ n, P9588560265715934654.a n = A342288 n

end A342288

/-! ## A342288.P14088423581055727805

`A115140(n+1)*A115140(n+3)`
-/

namespace A342288.P14088423581055727805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1) * A115140 (n + 3)

end

end A342288.P14088423581055727805

namespace A342288

/-- `A115140(n+1)*A115140(n+3)` -/
def P14088423581055727805.Spec : Prop :=
  ∀ n, P14088423581055727805.a n = A342288 n

end A342288

/-! ## A342288.P2564898622829318371

`A120588(n+1)*A120588(n+3)`
-/

namespace A342288.P2564898622829318371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) * A120588 (n + 3)

end

end A342288.P2564898622829318371

namespace A342288

/-- `A120588(n+1)*A120588(n+3)` -/
def P2564898622829318371.Spec : Prop :=
  ∀ n, P2564898622829318371.a n = A342288 n

end A342288

/-! ## A342288.P10297335650272747616

`A057977(2*n)*A063549(2*(n+2))`
-/

namespace A342288.P10297335650272747616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n) * A063549 (2 * (n + 2))

end

end A342288.P10297335650272747616

namespace A342288

/-- `A057977(2*n)*A063549(2*(n+2))` -/
def P10297335650272747616.Spec : Prop :=
  ∀ n, P10297335650272747616.a n = A342288 n

end A342288

/-!
# A342289: Number of 3-row-restricted Baxter slicings of size n.

The programs for A342289, there is no canonical definition to state claims against.
-/

/-! ## A342289.P927083163233724186

`A192543(A190343(n+2)-A001654(n))`
-/

namespace A342289.P927083163233724186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A190343 (n + 2) - A001654 n).toNat

end

end A342289.P927083163233724186

/-! ## A342289.P12861002807764155358

`A008615(∑[A176858(n)])`
-/

namespace A342289.P12861002807764155358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342289.P12861002807764155358

/-! ## A342289.P2876916282991262016

`∑[A008679(∑[A150856(n)])]`
-/

namespace A342289.P2876916282991262016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150856 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342289.P2876916282991262016

/-!
# A342290: Number of 4-row-restricted Baxter slicings of size n.

The programs for A342290, there is no canonical definition to state claims against.
-/

/-! ## A342290.P9340880516809538867

`Δ[A271271(n)+floor(A005408(n!)^γ)]`
-/

namespace A342290.P9340880516809538867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271271 n + ⌊(A005408 (Nat.factorial n) : ℝ) ^ Real.eulerMascheroniConstant⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342290.P9340880516809538867

/-! ## A342290.P12640080020917066368

`A342293(n)-(∏{e}[A076461(n+1), #]-1)`
-/

namespace A342290.P12640080020917066368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342293 n - (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1)

end

end A342290.P12640080020917066368

/-! ## A342290.P18309819438953293787

`A342292(n)+A058343(A293606(n))`
-/

namespace A342290.P18309819438953293787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342292 n + A058343 (A293606 n).toNat

end

end A342290.P18309819438953293787

/-!
# A342291: Number of 5-row-restricted Baxter slicings of size n.

The programs for A342291, there is no canonical definition to state claims against.
-/

/-! ## A342291.P1878391823909798406

`A008683(A135371(n))+A001181(n)`
-/

namespace A342291.P1878391823909798406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A135371 n).toNat + A001181 n

end

end A342291.P1878391823909798406

/-! ## A342291.P15104314392440542601

`A067535(A001181(n))-A011746(n)`
-/

namespace A342291.P15104314392440542601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A001181 n).toNat - A011746 n

end

end A342291.P15104314392440542601

/-! ## A342291.P17521233486166327657

`A001181(n)-A008683(A124005(n))`
-/

namespace A342291.P17521233486166327657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001181 n - A008683 (A124005 n).toNat

end

end A342291.P17521233486166327657

/-! ## A342291.P12169300342138519639

`A001181(n)-A010054(A154638(n))`
-/

namespace A342291.P12169300342138519639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001181 n - A010054 (A154638 n).toNat

end

end A342291.P12169300342138519639

/-!
# A342292: Number of 2-skinny Baxter slicings of size n.

The programs for A342292, there is no canonical definition to state claims against.
-/

/-! ## A342292.P10868097735311703358

`A105515(∑[∑[A005493(n)]])`
-/

namespace A342292.P10868097735311703358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342292.P10868097735311703358

/-! ## A342292.P4481384009094236115

`A303923(n+2)%A171075(n+1)`
-/

namespace A342292.P4481384009094236115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303923 (n + 2)) (A171075 (n + 1))

end

end A342292.P4481384009094236115

/-! ## A342292.P3232525047897176291

`A342290(n)-A026813(A014381(n))`
-/

namespace A342292.P3232525047897176291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342290 n - A026813 (A014381 n).toNat

end

end A342292.P3232525047897176291

/-!
# A342293: Number of 3-skinny Baxter slicings of size n.

The programs for A342293, there is no canonical definition to state claims against.
-/

/-! ## A342293.P10009386758183864879

`A342291(n)-A137579(A167034(n+4))`
-/

namespace A342293.P10009386758183864879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342291 n - A137579 (A167034 (n + 4)).toNat

end

end A342293.P10009386758183864879

/-! ## A342293.P13868126576206289092

`A342291(n)-A240855(A185203(3*(n+1)))`
-/

namespace A342293.P13868126576206289092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342291 n - A240855 (A185203 (3 * (n + 1))).toNat

end

end A342293.P13868126576206289092

/-!
# A342294: a(n) = Sum_{k = 0..n} binomial(n,k)^11.

The programs for A342294, there is no canonical definition to state claims against.
-/

/-! ## A342294.P5645821025201283410

`A309010(eq[11, A025581(n)])`
-/

namespace A342294.P5645821025201283410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342294.P5645821025201283410

/-! ## A342294.P10455188707017505636

`A309010(eq[12, A193739(n)])`
-/

namespace A342294.P10455188707017505636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342294.P10455188707017505636

/-! ## A342294.P15888678698641093004

`A309010(eq[12, A195663(n)])`
-/

namespace A342294.P15888678698641093004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342294.P15888678698641093004

/-! ## A342294.P3502662158506648560

`A309010(eq[12, A004736(n+1)])`
-/

namespace A342294.P3502662158506648560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342294.P3502662158506648560

/-! ## A342294.P17728397231142766425

`A309010(eq[13, A068049(n+1)])`
-/

namespace A342294.P17728397231142766425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342294.P17728397231142766425

/-!
# A342295: a(n) = Sum_{k = 0..n} binomial(n,k)^12.

The programs for A342295, there is no canonical definition to state claims against.
-/

/-! ## A342295.P12326054404689203761

`A309010(eq[12, A025581(n)])`
-/

namespace A342295.P12326054404689203761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342295.P12326054404689203761

/-! ## A342295.P16934666566112441401

`A309010(eq[13, A193739(n)])`
-/

namespace A342295.P16934666566112441401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342295.P16934666566112441401

/-! ## A342295.P1517259108345611575

`A309010(eq[12, A193592(n+1)])`
-/

namespace A342295.P1517259108345611575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342295.P1517259108345611575

/-! ## A342295.P18030586754843656773

`A309010(eq[13, A004736(n+1)])`
-/

namespace A342295.P18030586754843656773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342295.P18030586754843656773

/-! ## A342295.P11082630276379759157

`A309010(eq[16, A068049(n+1)])`
-/

namespace A342295.P11082630276379759157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342295.P11082630276379759157

/-!
# A342297: A Van Eck-like sequence based on the Fibonacci numbers. See Comments for definition.

The programs for A342297, there is no canonical definition to state claims against.
-/

/-! ## A342297.P14005778136492204498

`A352884(A290277(n+2))`
-/

namespace A342297.P14005778136492204498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352884 (A290277 (n + 2)).toNat

end

end A342297.P14005778136492204498

/-! ## A342297.P3136066494639598055

`A386776(A148016(n))`
-/

namespace A342297.P3136066494639598055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386776 (A148016 n).toNat

end

end A342297.P3136066494639598055

/-! ## A342297.P11200685895811408427

`∑{d}[A304970(n), A071027(#)]`
-/

namespace A342297.P11200685895811408427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A071027 d

end

end A342297.P11200685895811408427

/-! ## A342297.P1561601893214866552

`A046799(A014217(xor(1, n+2)))`
-/

namespace A342297.P1561601893214866552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046799 (A014217 (Nat.xor 1 (n + 2))).toNat

end

end A342297.P1561601893214866552

/-! ## A342297.P722588444544687776

`A000120(A236571(n)+A094443(n))`
-/

namespace A342297.P722588444544687776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A236571 n + A094443 n).toNat

end

end A342297.P722588444544687776

/-!
# A342299: Lesser of twin primes p,p+2 such that the absolute difference of p and the reverse of p+2 is a twin prime and the absolute difference of p+2 and the reverse of p is a twin prime.

The programs for A342299, there is no canonical definition to state claims against.
-/

/-! ## A342299.P11066072587892654198

`∩[A342216(n+1)-2, A342216(n+1)]`
-/

namespace A342299.P11066072587892654198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342216 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342299.P11066072587892654198

/-! ## A342299.P7523072458399184862

`∩[A342216(n+1), A064989(A342216(n+1))]`
-/

namespace A342299.P7523072458399184862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A342216 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342299.P7523072458399184862

/-! ## A342299.P17212201000684223001

`∩[A342216(n+1), A252463(A342216(n+2))]`
-/

namespace A342299.P17212201000684223001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A342216 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342299.P17212201000684223001

