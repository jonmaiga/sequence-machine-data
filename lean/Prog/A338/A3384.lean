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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A338400: Inverse boustrophedon transform of the partition numbers.

The programs for A338400, there is no canonical definition to state claims against.
-/

/-! ## A338400.P5724345775795505431

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000111(n-#)*A000041(#)]`
-/

namespace A338400.P5724345775795505431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000111 (n - k) : ℚ) * (A000041 k : ℚ)

end

end A338400.P5724345775795505431

/-!
# A338401: a(n) is the numerator of the resistance R(n) = a(n)/A338402(n) of a triangular network of 3*n*(n+1)/2 one Ohm resistors in a hexagonal lattice arrangement.

The programs for A338401, there is no canonical definition to state claims against.
-/

/-! ## A338401.P17502698649231164415

`A130824(xor(A000096(n), A302535(n)))`
-/

namespace A338401.P17502698649231164415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (Int.xor (A000096 n) (A302535 n)).toNat

end

end A338401.P17502698649231164415

/-!
# A338402: a(n) is the denominator of the resistance R(n) = A338401(n)/a(n) of a triangular network of 3*n*(n+1)/2 one Ohm resistors in a hexagonal lattice arrangement.

The programs for A338402, there is no canonical definition to state claims against.
-/

/-! ## A338402.P3146409199129065195

`A003961(A108522(n+1)-A323915(3*(n+1)))`
-/

namespace A338402.P3146409199129065195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A108522 (n + 1) - A323915 (3 * (n + 1))).toNat

end

end A338402.P3146409199129065195

/-!
# A338405: a(n) is the smallest number with exactly n divisors d such that sigma(d)/d is an integer.

The programs for A338405, there is no canonical definition to state claims against.
-/

/-! ## A338405.P15002784415477844652

`A300906(∑{d}[n+1, #-1]+ceil(∑[3^(n-2)]))`
-/

namespace A338405.P15002784415477844652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300906 (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) + ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉).toNat

end

end A338405.P15002784415477844652

/-!
# A338406: Numbers m such that tau(m), sigma(m) and pod(m) are pairwise relatively prime.

The programs for A338406, there is no canonical definition to state claims against.
-/

/-! ## A338406.P8196761212754151133

`filter[A330606(n+1), A322980(#)]`
-/

namespace A338406.P8196761212754151133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A338406.P8196761212754151133

/-! ## A338406.P11694748047994710220

`∩[A066926(n+1), A225983(n+1)]`
-/

namespace A338406.P11694748047994710220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338406.P11694748047994710220

/-! ## A338406.P8405683346205855541

`∩[A066926(n+1), A298080(n+1)]`
-/

namespace A338406.P8405683346205855541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338406.P8405683346205855541

/-! ## A338406.P10422441981541425953

`∩[A225983(n+1), A139711(n+1)]`
-/

namespace A338406.P10422441981541425953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338406.P10422441981541425953

/-! ## A338406.P8720624637390566173

`∩[A216500(n+1), A225983(n+1)]`
-/

namespace A338406.P8720624637390566173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338406.P8720624637390566173

/-!
# A338407: Values m that allow maximum period in the Blum-Blum-Shub x^2 mod m pseudorandom number generator.

The programs for A338407, there is no canonical definition to state claims against.
-/

/-! ## A338407.P10687469300597484169

`A157356(A356750(n+1))`
-/

namespace A338407.P10687469300597484169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157356 (A356750 (n + 1)).toNat

end

end A338407.P10687469300597484169

/-!
# A338409: a(n) is the number of nodes with depth of n in a binary tree defined as: root = 1 and a child (C) of a node (N) is such that A338215(C) = N. For nodes with two children, the smaller child is assigned as the left child and the bigger one as the right child. A child of a one-child node is assigned as the left child.

The programs for A338409, there is no canonical definition to state claims against.
-/

/-! ## A338409.P11889410176479381676

`runs[-a(A338215(n+1)-1)]` with `a(0)=1`
-/

namespace A338409.P11889410176479381676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (A338215 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A338409.P11889410176479381676

/-! ## A338409.P5069516019176947762

`A104638(or(A048811(n+7), A284491(n+1)))`
-/

namespace A338409.P5069516019176947762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104638 (Int.lor (A048811 (n + 7)) (A284491 (n + 1))).toNat

end

end A338409.P5069516019176947762

/-!
# A338410: Primes p such that (p+2)/3 and (p+3)/2 are prime.

The programs for A338410, there is no canonical definition to state claims against.
-/

/-! ## A338410.P11708358333833685381

`A172365(3*(n+1))`
-/

namespace A338410.P11708358333833685381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172365 (3 * (n + 1))

end

end A338410.P11708358333833685381

/-! ## A338410.P7454096687484037318

`∩[A091180(n+1), A092109(n+1)]`
-/

namespace A338410.P7454096687484037318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338410.P7454096687484037318

/-! ## A338410.P17427582014975354043

`∩[A015819(n+1), A091180(n+1)]`
-/

namespace A338410.P17427582014975354043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338410.P17427582014975354043

/-! ## A338410.P10357795757853531049

`p?[A276626(n+1)-3]`
-/

namespace A338410.P10357795757853531049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276626 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338410.P10357795757853531049

/-! ## A338410.P2428107443585791451

`p?[2*A162336(n+1)-3]`
-/

namespace A338410.P2428107443585791451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162336 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338410.P2428107443585791451

/-! ## A338410.P4080171131064824566

`∩[A092109(n+1), A176003(n+1)]`
-/

namespace A338410.P4080171131064824566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338410.P4080171131064824566

/-! ## A338410.P15880043682691171009

`∩[A091180(n+1), A308169(n+1)]`
-/

namespace A338410.P15880043682691171009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338410.P15880043682691171009

/-! ## A338410.P7008862288734104401

`p?[3*A158709(n+1)-2]`
-/

namespace A338410.P7008862288734104401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A158709 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338410.P7008862288734104401

/-! ## A338410.P1838725552477966979

`∩[A091180(n+1), A131426(n+1)]`
-/

namespace A338410.P1838725552477966979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338410.P1838725552477966979

/-! ## A338410.P12257529933133540559

`record[A006530(A276626(n+1)-3)]`
-/

namespace A338410.P12257529933133540559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A276626 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338410.P12257529933133540559

/-! ## A338410.P12333661885150734901

`record[A020639(A276626(n+1)-3)]`
-/

namespace A338410.P12333661885150734901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A276626 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338410.P12333661885150734901

/-! ## A338410.P6753162689251023815

`record[A006530(2*A162336(n+1)-3)]`
-/

namespace A338410.P6753162689251023815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A162336 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338410.P6753162689251023815

/-! ## A338410.P9787782091402486195

`record[A020639(2*A162336(n+1)-3)]`
-/

namespace A338410.P9787782091402486195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A162336 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338410.P9787782091402486195

/-!
# A338411: Irregular triangle read by rows enumerating nonempty finite ballot sequences by increasing length and then by lexicographical order.

The programs for A338411, there is no canonical definition to state claims against.
-/

/-! ## A338411.P1142803403188194604

`gcd(A095684(n+1), A351104(n+1))`
-/

namespace A338411.P1142803403188194604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095684 (n + 1)) (A351104 (n + 1))

end

end A338411.P1142803403188194604

/-! ## A338411.P16773249459035067392

`gcd(A030073(A097003(n)), A095684(n+1))`
-/

namespace A338411.P16773249459035067392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030073 (A097003 n).toNat) (A095684 (n + 1))

end

end A338411.P16773249459035067392

/-! ## A338411.P17026491695107678699

`A095684(n+1)^A267163(A001316(n))`
-/

namespace A338411.P17026491695107678699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095684 (n + 1) : ℚ) ^ (A267163 (A001316 n).toNat : ℤ)

end

end A338411.P17026491695107678699

/-! ## A338411.P13631138740773024239

`gcd(A035062(n+1), A095684(n+1))`
-/

namespace A338411.P13631138740773024239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035062 (n + 1)) (A095684 (n + 1))

end

end A338411.P13631138740773024239

/-! ## A338411.P12761476639629663335

`A357186(3*n+4)%A095684(n+1)+1`
-/

namespace A338411.P12761476639629663335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357186 (3 * n + 4)) (A095684 (n + 1)) + 1

end

end A338411.P12761476639629663335

/-!
# A338414: Number of labeled 3-connected graphs with n edges.

The programs for A338414, there is no canonical definition to state claims against.
-/

/-! ## A338414.P13337644184652799516

`A005809(n)-A333755(A106421(n))`
-/

namespace A338414.P13337644184652799516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A333755 (A106421 n).toNat

end

end A338414.P13337644184652799516

/-!
# A338418: a(n) is the number of length-n ballot sequences whose reversals are also ballot sequences.

The programs for A338418, there is no canonical definition to state claims against.
-/

/-! ## A338418.P18111441274478086312

`A051889(A049075(n+1)+2)-1`
-/

namespace A338418.P18111441274478086312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A049075 (n + 1) + 2).toNat - 1

end

end A338418.P18111441274478086312

/-! ## A338418.P6851442903052962270

`A008616(4*A185712(Δ[floor((ϕ^n)²)]))`
-/

namespace A338418.P6851442903052962270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A185712 (f1 (n + 1) - f1 n).toNat).toNat

end

end A338418.P6851442903052962270

/-! ## A338418.P7818727597148092149

`A051889(A049075(n+1)-A004526(n))`
-/

namespace A338418.P7818727597148092149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A049075 (n + 1) - A004526 n).toNat

end

end A338418.P7818727597148092149

/-! ## A338418.P6623035761421781455

`A257639((A238426(n)+A345063(n+1)²)²)`
-/

namespace A338418.P6623035761421781455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ((A238426 n + A345063 (n + 1) ^ 2) ^ 2).toNat

end

end A338418.P6623035761421781455

/-! ## A338418.P918758635786231737

`A003059(A005034(n))`
-/

namespace A338418.P918758635786231737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A005034 n).toNat

end

end A338418.P918758635786231737

/-!
# A338419: (Smallest prime >= 5^n) - (largest prime <= 5^n).

The programs for A338419, there is no canonical definition to state claims against.
-/

/-! ## A338419.P10754508763752280639

`A104083(n+1)-A104090(n+1)`
-/

namespace A338419.P10754508763752280639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104083 (n + 1) - A104090 (n + 1)

end

end A338419.P10754508763752280639

/-! ## A338419.P7791598933778987426

`A104083(A000027(n+1))%A104090(n+1)`
-/

namespace A338419.P7791598933778987426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104083 (A000027 (n + 1)).toNat) (A104090 (n + 1))

end

end A338419.P7791598933778987426

/-! ## A338419.P7278783437848265138

`A104083(A069782(n+1))%A104090(n+1)`
-/

namespace A338419.P7278783437848265138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104083 (A069782 (n + 1)).toNat) (A104090 (n + 1))

end

end A338419.P7278783437848265138

/-! ## A338419.P16883096975686467991

`A104083(and(1, A103454(n))+n)%A104090(n+1)`
-/

namespace A338419.P16883096975686467991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104083 (Int.land 1 (A103454 n) + (n : ℤ)).toNat) (A104090 (n + 1))

end

end A338419.P16883096975686467991

/-!
# A338420: Numbers k having exactly one base b which is not a divisor of k+1, and k contains the digit b-1 in base b.

The programs for A338420, there is no canonical definition to state claims against.
-/

/-! ## A338420.P3857078771104119937

`eq[A000005(n+1), A337496(n)]`
-/

namespace A338420.P3857078771104119937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338420.P3857078771104119937

/-! ## A338420.P10948032267344540866

`eq[A325765(n)+1, A337496(n)]`
-/

namespace A338420.P10948032267344540866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338420.P10948032267344540866

/-! ## A338420.P8624941209919284418

`eq[2*A337496(n), A062011(n+1)]`
-/

namespace A338420.P8624941209919284418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337496 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338420.P8624941209919284418

/-! ## A338420.P3963765254422612587

`eq[A004526(A062011(n+1)), A337496(n)]`
-/

namespace A338420.P3963765254422612587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A062011 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338420.P3963765254422612587

/-! ## A338420.P13440393431531017981

`eq[A001227(n+1)*A001511(n+1), A337496(n)]`
-/

namespace A338420.P13440393431531017981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338420.P13440393431531017981

/-! ## A338420.P14750901472758517431

`eq[A096737(n+1), A337496(n)]`
-/

namespace A338420.P14750901472758517431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338420.P14750901472758517431

/-! ## A338420.P16262362301587240236

`eq[A179942(n+1), A337496(n)]`
-/

namespace A338420.P16262362301587240236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338420.P16262362301587240236

/-!
# A338421: Place four points evenly spaced on a circle, draw n evenly spaced rays from each of the points, a(n) is the number of regions thus created. See Comments for details.

The programs for A338421, there is no canonical definition to state claims against.
-/

/-! ## A338421.P2857006986085398477

`A338423(n+1)+1-A338422(n+1)`
-/

namespace A338421.P2857006986085398477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338423 (n + 1) + (1 - A338422 (n + 1))

end

end A338421.P2857006986085398477

/-! ## A338421.P378281722860537995

`A338423(n+1)+A024000(A338422(n+1))`
-/

namespace A338421.P378281722860537995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338423 (n + 1) + A024000 (A338422 (n + 1)).toNat

end

end A338421.P378281722860537995

/-!
# A338422: Place four points evenly spaced on a circle, draw n evenly spaced rays from each of the points, a(n) is the number of vertices thus created. See Comments for details.

The programs for A338422, there is no canonical definition to state claims against.
-/

/-! ## A338422.P7007114999227756935

`A338423(n+1)+1-A338421(n+1)`
-/

namespace A338422.P7007114999227756935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338423 (n + 1) + (1 - A338421 (n + 1))

end

end A338422.P7007114999227756935

/-! ## A338422.P10204370538603459672

`A338423(n+1)+A024000(A338421(n+1))`
-/

namespace A338422.P10204370538603459672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338423 (n + 1) + A024000 (A338421 (n + 1)).toNat

end

end A338422.P10204370538603459672

/-! ## A338422.P4440011399747621644

`A020725(A338423(n+1)-A338421(n+1))`
-/

namespace A338422.P4440011399747621644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A338423 (n + 1) - A338421 (n + 1)).toNat

end

end A338422.P4440011399747621644

/-! ## A338422.P15102707083096127807

`A065475(A338423(n+1)-A338421(n+1))`
-/

namespace A338422.P15102707083096127807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A338423 (n + 1) - A338421 (n + 1)).toNat

end

end A338422.P15102707083096127807

/-! ## A338422.P5831957971115297735

`A338423(A077168(n))-A338421(n+1)+1`
-/

namespace A338422.P5831957971115297735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338423 (A077168 n).toNat - A338421 (n + 1) + 1

end

end A338422.P5831957971115297735

/-!
# A338423: Place four points evenly spaced on a circle, draw n evenly spaced rays from each of the points, a(n) is the number of edges thus created. See Comments for details.

The programs for A338423, there is no canonical definition to state claims against.
-/

/-! ## A338423.P14389965754793609649

`A338421(n+1)+A338422(n+1)-1`
-/

namespace A338423.P14389965754793609649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338421 (n + 1) + (A338422 (n + 1) - 1)

end

end A338423.P14389965754793609649

/-! ## A338423.P14552603382410350946

`A338421(n+1)+A023443(A338422(n+1))`
-/

namespace A338423.P14552603382410350946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338421 (n + 1) + A023443 (A338422 (n + 1)).toNat

end

end A338423.P14552603382410350946

/-! ## A338423.P2209333483769107215

`A004442(A338422(n+1)+A338421(n+1))`
-/

namespace A338423.P2209333483769107215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A338422 (n + 1) + A338421 (n + 1)).toNat

end

end A338423.P2209333483769107215

/-! ## A338423.P8785244664227551396

`A065190(A338422(n+1)+A338421(n+1))`
-/

namespace A338423.P8785244664227551396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A338422 (n + 1) + A338421 (n + 1)).toNat

end

end A338423.P8785244664227551396

/-! ## A338423.P1727801379530405231

`A123882(A338422(n+1)+A338421(n+1))`
-/

namespace A338423.P1727801379530405231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (A338422 (n + 1) + A338421 (n + 1)).toNat

end

end A338423.P1727801379530405231

/-! ## A338423.P10687817515338910439

`-A024000(A338422(n+1)+A338421(n+1))`
-/

namespace A338423.P10687817515338910439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 (A338422 (n + 1) + A338421 (n + 1)).toNat

end

end A338423.P10687817515338910439

/-!
# A338425: Numbers k such that the points [prime(k), prime(k+1)], [prime(k+2), prime(k+3)] and [prime(k+4), prime(k+5)] are collinear.

The programs for A338425, there is no canonical definition to state claims against.
-/

/-! ## A338425.P1566194853386519116

`eq[0, A154924(n+1)]+1`
-/

namespace A338425.P1566194853386519116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338425.P1566194853386519116

/-! ## A338425.P17472173117857788301

`eq[0, A154924(A028310(n))]`
-/

namespace A338425.P17472173117857788301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154924 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338425.P17472173117857788301

/-! ## A338425.P15941707784694010547

`A020725(eq[0, A154924(n+1)])`
-/

namespace A338425.P15941707784694010547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338425.P15941707784694010547

/-! ## A338425.P16084466569284507198

`A065475(eq[0, A154924(n+1)])`
-/

namespace A338425.P16084466569284507198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338425.P16084466569284507198

/-! ## A338425.P3012431016658612634

`A114637(eq[0, A154924(n+1)])`
-/

namespace A338425.P3012431016658612634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338425.P3012431016658612634

/-!
# A338426: a(n) is the number of paths a chess king can take from (0,0) to (n+1,0) touching each point in {-1,0,1} X {1,2,...,n} exactly once.

The programs for A338426, there is no canonical definition to state claims against.
-/

/-! ## A338426.P13072510542937281606

`∑[∑[A243984(A346556(n+1))]]`
-/

namespace A338426.P13072510542937281606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243984 (A346556 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338426.P13072510542937281606

/-!
# A338428: Multiplicities for A111774(n), for n >= 1.

The programs for A338428, there is no canonical definition to state claims against.
-/

/-! ## A338428.P6194053188107269570

`A111775(A111774(n+1))-A283317(A277872(n))`
-/

namespace A338428.P6194053188107269570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A111774 (n + 1)).toNat - A283317 (A277872 n).toNat

end

end A338428.P6194053188107269570

/-! ## A338428.P4985525172325092669

`A111775(A111774(n+1))+A000007(A117846(n+1))`
-/

namespace A338428.P4985525172325092669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A111774 (n + 1)).toNat + A000007 (A117846 (n + 1)).toNat

end

end A338428.P4985525172325092669

/-! ## A338428.P17209294361195981508

`A111775(A111774(n+1))+A000007(A247973(n+1))`
-/

namespace A338428.P17209294361195981508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A111774 (n + 1)).toNat + A000007 (A247973 (n + 1)).toNat

end

end A338428.P17209294361195981508

/-! ## A338428.P933389735296368115

`A111775(A111774(n+1)^A304042(n))`
-/

namespace A338428.P933389735296368115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (SequenceMachineLib.roundAway ((A111774 (n + 1) : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A338428.P933389735296368115

/-! ## A338428.P6017245758222104490

`A111775(A111774(n+1))+A000007(A332102(n))`
-/

namespace A338428.P6017245758222104490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A111774 (n + 1)).toNat + A000007 (A332102 n).toNat

end

end A338428.P6017245758222104490

/-! ## A338428.P15308755736124885980

`A111775(A025019(n+1))+A111775(A111774(n+1))`
-/

namespace A338428.P15308755736124885980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A025019 (n + 1)).toNat + A111775 (A111774 (n + 1)).toNat

end

end A338428.P15308755736124885980

/-! ## A338428.P9715753964570486939

`A111775(A111774(n+1))+A111775(A121325(n+1))`
-/

namespace A338428.P9715753964570486939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A111774 (n + 1)).toNat + A111775 (A121325 (n + 1)).toNat

end

end A338428.P9715753964570486939

/-!
# A338429: Maximum number of copies of a 1234 permutation pattern in an alternating (or zig-zag) permutation of length n + 5.

The programs for A338429, the canonical program `A338429.P3880280820866491057` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338429 has offset 1).

The definition of A338429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338429.P3880280820866491057

`ogf((4+4x^2)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A338429

/-- `ogf((4+4x^2)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P3880280820866491057.Spec : Prop :=
  ∀ n, P3880280820866491057.a n = A338429 (n + 1)

theorem P3880280820866491057.correct : P3880280820866491057.Spec := by
  intro n
  simp only [A338429, Nat.add_sub_cancel]

end A338429

/-! ## A338429.P9814338599915036553

`∑[C(or(1, n)+3, 3)]`
-/

namespace A338429.P9814338599915036553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n + 3) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338429.P9814338599915036553

namespace A338429

/-- `∑[C(or(1, n)+3, 3)]` -/
def P9814338599915036553.Spec : Prop :=
  ∀ n, (P9814338599915036553.a n : ℤ) = A338429 (n + 1)

end A338429

/-! ## A338429.P15226473462872276280

`∑[C(and(n, -2)+4, 3)]`
-/

namespace A338429.P15226473462872276280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-2) + 4).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338429.P15226473462872276280

namespace A338429

/-- `∑[C(and(n, -2)+4, 3)]` -/
def P15226473462872276280.Spec : Prop :=
  ∀ n, (P15226473462872276280.a n : ℤ) = A338429 (n + 1)

end A338429

/-! ## A338429.P3217094613316207504

`∑[C(gcd(2, n)+2+n, 3)]`
-/

namespace A338429.P3217094613316207504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.gcd 2 n + 2 + n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338429.P3217094613316207504

namespace A338429

/-- `∑[C(gcd(2, n)+2+n, 3)]` -/
def P3217094613316207504.Spec : Prop :=
  ∀ n, (P3217094613316207504.a n : ℤ) = A338429 (n + 1)

end A338429

/-! ## A338429.P12528646910385262903

`∑[C(n+4-n%2, 3)]`
-/

namespace A338429.P12528646910385262903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 4 : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338429.P12528646910385262903

namespace A338429

/-- `∑[C(n+4-n%2, 3)]` -/
def P12528646910385262903.Spec : Prop :=
  ∀ n, (P12528646910385262903.a n : ℤ) = A338429 (n + 1)

end A338429

/-! ## A338429.P11055074610979166206

`∑[C(n-and(1, n)+4, 3)]`
-/

namespace A338429.P11055074610979166206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - (Nat.land 1 n : ℤ) + 4).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338429.P11055074610979166206

namespace A338429

/-- `∑[C(n-and(1, n)+4, 3)]` -/
def P11055074610979166206.Spec : Prop :=
  ∀ n, (P11055074610979166206.a n : ℤ) = A338429 (n + 1)

end A338429

/-! ## A338429.P5687331399607451001

`∑[∑[(n+2)²*∑[(-1)^n]]]`
-/

namespace A338429.P5687331399607451001
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338429.P5687331399607451001

namespace A338429

/-- `∑[∑[(n+2)²*∑[(-1)^n]]]` -/
def P5687331399607451001.Spec : Prop :=
  ∀ n, P5687331399607451001.a n = A338429 (n + 1)

end A338429

/-! ## A338429.P894018996390045985

`A394279(n+1)+A024862(n+2)`
-/

namespace A338429.P894018996390045985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394279 (n + 1) + A024862 (n + 2)

end

end A338429.P894018996390045985

namespace A338429

/-- `A394279(n+1)+A024862(n+2)` -/
def P894018996390045985.Spec : Prop :=
  ∀ n, P894018996390045985.a n = A338429 (n + 1)

end A338429

/-! ## A338429.P9610665131499690138

`2*A350050(n+3)`
-/

namespace A338429.P9610665131499690138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350050 (n + 3)

end

end A338429.P9610665131499690138

namespace A338429

/-- `2*A350050(n+3)` -/
def P9610665131499690138.Spec : Prop :=
  ∀ n, P9610665131499690138.a n = A338429 (n + 1)

end A338429

/-! ## A338429.P613706659619454063

`A143978(A035106(n+2))`
-/

namespace A338429.P613706659619454063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (A035106 (n + 2)).toNat

end

end A338429.P613706659619454063

namespace A338429

/-- `A143978(A035106(n+2))` -/
def P613706659619454063.Spec : Prop :=
  ∀ n, P613706659619454063.a n = A338429 (n + 1)

end A338429

/-! ## A338429.P13312855174961764604

`A056827(A178218(n+2))`
-/

namespace A338429.P13312855174961764604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 (A178218 (n + 2)).toNat

end

end A338429.P13312855174961764604

namespace A338429

/-- `A056827(A178218(n+2))` -/
def P13312855174961764604.Spec : Prop :=
  ∀ n, P13312855174961764604.a n = A338429 (n + 1)

end A338429

/-!
# A338430: Number of numbers less than sqrt(n) whose square does not divide n.

The programs for A338430, there is no canonical definition to state claims against.
-/

/-! ## A338430.P3585565544002747301

`A059995(A035280(n+1)-A063928(n+1))`
-/

namespace A338430.P3585565544002747301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A035280 (n + 1) - A063928 (n + 1)).toNat

end

end A338430.P3585565544002747301

/-! ## A338430.P7545893105564559737

`A184171(A054345(n))%A046956(n)`
-/

namespace A338430.P7545893105564559737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184171 (A054345 n).toNat) (A046956 n)

end

end A338430.P7545893105564559737

/-! ## A338430.P6999738584757206492

`A008647(or(n, A039999(A177335(n+1))))`
-/

namespace A338430.P6999738584757206492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (Int.lor (n : ℤ) (A039999 (A177335 (n + 1)).toNat)).toNat

end

end A338430.P6999738584757206492

/-! ## A338430.P18249824422580419353

`round(atan(A210716(∑{d}[n, #%#²])))`
-/

namespace A338430.P18249824422580419353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A210716 (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2) : ℝ))

end

end A338430.P18249824422580419353

/-! ## A338430.P3661443838172923393

`round(∑{p}[A181836(n), #]/∑{d}[n+1, #])`
-/

namespace A338430.P3661443838172923393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ))

end

end A338430.P3661443838172923393

/-!
# A338432: Triangle read by rows: T(n, k) = (n - k + 1)^2 + 2*k^2, for n >= 1, and k = 1, 2, ..., n.

The programs for A338432, the canonical program `A338432.P12837577350938608971` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338432 has offset 1).

The definition of A338432 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1)+1)²+2*(col(n)+1)²` (program `A338432.P12837577350938608971`, by `A338432.P12837577350938608971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A338432.P1016697011299797126

`(row(n)-col(n)+1)²+2*(col(n)+1)²`
-/

namespace A338432.P1016697011299797126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ 2 + (2 * (SequenceMachineLib.triCol n + 1) ^ 2 : ℤ)

end

end A338432.P1016697011299797126

namespace A338432

/-- `(row(n)-col(n)+1)²+2*(col(n)+1)²` -/
def P1016697011299797126.Spec : Prop :=
  ∀ n, P1016697011299797126.a n = A338432 (n + 1)

theorem P1016697011299797126.correct : P1016697011299797126.Spec := by
  intro n
  simp only [A338432, Nat.add_sub_cancel, A338432.P1016697011299797126.a, A338432.P12837577350938608971.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A338432

/-! ## A338432.P12837577350938608971

`(row(n)+1-(col(n)+1)+1)²+2*(col(n)+1)²`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A338432

/-- `(row(n)+1-(col(n)+1)+1)²+2*(col(n)+1)²` -/
def P12837577350938608971.Spec : Prop :=
  ∀ n, P12837577350938608971.a n = A338432 (n + 1)

theorem P12837577350938608971.correct : P12837577350938608971.Spec := by
  intro n
  simp only [A338432, Nat.add_sub_cancel]

end A338432

/-! ## A338432.P17960061733628737484

`A154614(n+1)+A349039(n)+1`
-/

namespace A338432.P17960061733628737484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) + (A349039 n + 1)

end

end A338432.P17960061733628737484

namespace A338432

/-- `A154614(n+1)+A349039(n)+1` -/
def P17960061733628737484.Spec : Prop :=
  ∀ n, P17960061733628737484.a n = A338432 (n + 1)

theorem P17960061733628737484.correct : P17960061733628737484.Spec := by
  intro n
  simp only [A338432, Nat.add_sub_cancel, A338432.P17960061733628737484.a, A338432.P12837577350938608971.a, A154614, A154614.P18255365017366743044.a, A349039, A349039.P8937323776347289677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338432

/-! ## A338432.P16966980610441652879

`A056203(n+1)-A098352(n+1)`
-/

namespace A338432.P16966980610441652879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (n + 1) - A098352 (n + 1)

end

end A338432.P16966980610441652879

namespace A338432

/-- `A056203(n+1)-A098352(n+1)` -/
def P16966980610441652879.Spec : Prop :=
  ∀ n, P16966980610441652879.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P3263092509860035374

`A055461(n+1)+2*A133819(n+1)`
-/

namespace A338432.P3263092509860035374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A133819 (n + 1)

end

end A338432.P3263092509860035374

namespace A338432

/-- `A055461(n+1)+2*A133819(n+1)` -/
def P3263092509860035374.Spec : Prop :=
  ∀ n, P3263092509860035374.a n = A338432 (n + 1)

theorem P3263092509860035374.correct : P3263092509860035374.Spec := by
  intro n
  simp only [A338432, Nat.add_sub_cancel, A338432.P3263092509860035374.a, A338432.P12837577350938608971.a, A055461, A055461.P13333228572909301680.a, A133819, A133819.P4652954550055324138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338432

/-! ## A338432.P14543446362309444359

`A055096(n+2)-2*A003991(n+1)`
-/

namespace A338432.P14543446362309444359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - 2 * A003991 (n + 1)

end

end A338432.P14543446362309444359

namespace A338432

/-- `A055096(n+2)-2*A003991(n+1)` -/
def P14543446362309444359.Spec : Prop :=
  ∀ n, P14543446362309444359.a n = A338432 (n + 1)

theorem P14543446362309444359.correct : P14543446362309444359.Spec := by
  intro n
  simp only [A338432, Nat.add_sub_cancel, A338432.P14543446362309444359.a, A338432.P12837577350938608971.a, A003991, A003991.P6365127437582401781.a, A055096, A055096.P17819275564351292767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338432

/-! ## A338432.P15961491706377481924

`2*A055096(n+2)-A056203(n+1)`
-/

namespace A338432.P15961491706377481924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055096 (n + 2) - A056203 (n + 1)

end

end A338432.P15961491706377481924

namespace A338432

/-- `2*A055096(n+2)-A056203(n+1)` -/
def P15961491706377481924.Spec : Prop :=
  ∀ n, P15961491706377481924.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P1331202476581237599

`A055096(n+2)-A098352(n+1)/2`
-/

namespace A338432.P1331202476581237599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055096 (n + 2) : ℚ) - (A098352 (n + 1) : ℚ) / 2

end

end A338432.P1331202476581237599

namespace A338432

/-- `A055096(n+2)-A098352(n+1)/2` -/
def P1331202476581237599.Spec : Prop :=
  ∀ n, P1331202476581237599.a n = (A338432 (n + 1) : ℚ)

theorem P1331202476581237599.correct : P1331202476581237599.Spec := by
  intro n
  simp only [A338432, Nat.add_sub_cancel, A338432.P1331202476581237599.a, A338432.P12837577350938608971.a, A055096, A055096.P17819275564351292767.a, A098352, A098352.P3707437164941693741.a, A003991, A003991.P6365127437582401781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338432

/-! ## A338432.P843533327593761439

`A055461(n+1)+2*A002260(n+1)²`
-/

namespace A338432.P843533327593761439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A002260 (n + 1) ^ 2

end

end A338432.P843533327593761439

namespace A338432

/-- `A055461(n+1)+2*A002260(n+1)²` -/
def P843533327593761439.Spec : Prop :=
  ∀ n, P843533327593761439.a n = A338432 (n + 1)

theorem P843533327593761439.correct : P843533327593761439.Spec := by
  intro n
  simp only [A338432, Nat.add_sub_cancel, A338432.P843533327593761439.a, A338432.P12837577350938608971.a, A002260, A002260.P9170571874073898642.a, A055461, A055461.P13333228572909301680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338432

/-! ## A338432.P6869147642123906790

`A004736(n+1)²+2*A133819(n+1)`
-/

namespace A338432.P6869147642123906790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 + 2 * A133819 (n + 1)

end

end A338432.P6869147642123906790

namespace A338432

/-- `A004736(n+1)²+2*A133819(n+1)` -/
def P6869147642123906790.Spec : Prop :=
  ∀ n, P6869147642123906790.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P5625983689767173158

`A057105(n+1)+A053439(A099375(n))`
-/

namespace A338432.P5625983689767173158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057105 (n + 1) + A053439 (A099375 n).toNat

end

end A338432.P5625983689767173158

namespace A338432

/-- `A057105(n+1)+A053439(A099375(n))` -/
def P5625983689767173158.Spec : Prop :=
  ∀ n, P5625983689767173158.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P3307927525928816144

`A070216(n+1)-A060747(A004247(n))`
-/

namespace A338432.P3307927525928816144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) - A060747 (A004247 n).toNat

end

end A338432.P3307927525928816144

namespace A338432

/-- `A070216(n+1)-A060747(A004247(n))` -/
def P3307927525928816144.Spec : Prop :=
  ∀ n, P3307927525928816144.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P13912922424837131135

`A120070(A061579(n)+2)+A114327(n)²`
-/

namespace A338432.P13912922424837131135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A061579 n + 2).toNat + A114327 n ^ 2

end

end A338432.P13912922424837131135

namespace A338432

/-- `A120070(A061579(n)+2)+A114327(n)²` -/
def P13912922424837131135.Spec : Prop :=
  ∀ n, P13912922424837131135.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P10232888187781219056

`A055461(n+1)+A001105(A002260(n+1))`
-/

namespace A338432.P10232888187781219056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + A001105 (A002260 (n + 1)).toNat

end

end A338432.P10232888187781219056

namespace A338432

/-- `A055461(n+1)+A001105(A002260(n+1))` -/
def P10232888187781219056.Spec : Prop :=
  ∀ n, P10232888187781219056.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P4810140314537722564

`A001283(n+2)-A008585(A003991(n+1))`
-/

namespace A338432.P4810140314537722564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001283 (n + 2) - A008585 (A003991 (n + 1)).toNat

end

end A338432.P4810140314537722564

namespace A338432

/-- `A001283(n+2)-A008585(A003991(n+1))` -/
def P4810140314537722564.Spec : Prop :=
  ∀ n, P4810140314537722564.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P16366982702058442900

`A001105(A002260(n+1))+A004736(n+1)²`
-/

namespace A338432.P16366982702058442900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A002260 (n + 1)).toNat + A004736 (n + 1) ^ 2

end

end A338432.P16366982702058442900

namespace A338432

/-- `A001105(A002260(n+1))+A004736(n+1)²` -/
def P16366982702058442900.Spec : Prop :=
  ∀ n, P16366982702058442900.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P876633582315715926

`A055461(n+1)+2*A055461(A038722(n+1))`
-/

namespace A338432.P876633582315715926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) + 2 * A055461 (A038722 (n + 1)).toNat

end

end A338432.P876633582315715926

namespace A338432

/-- `A055461(n+1)+2*A055461(A038722(n+1))` -/
def P876633582315715926.Spec : Prop :=
  ∀ n, P876633582315715926.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P11061141326545347804

`A055096(n+2)-A005843(A001283(n+2)-A055096(n+2))`
-/

namespace A338432.P11061141326545347804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - A005843 (A001283 (n + 2) - A055096 (n + 2)).toNat

end

end A338432.P11061141326545347804

namespace A338432

/-- `A055096(n+2)-A005843(A001283(n+2)-A055096(n+2))` -/
def P11061141326545347804.Spec : Prop :=
  ∀ n, P11061141326545347804.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P15407779224864043531

`A133819(A038722(n+1))+2*A133819(n+1)`
-/

namespace A338432.P15407779224864043531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (A038722 (n + 1)).toNat + 2 * A133819 (n + 1)

end

end A338432.P15407779224864043531

namespace A338432

/-- `A133819(A038722(n+1))+2*A133819(n+1)` -/
def P15407779224864043531.Spec : Prop :=
  ∀ n, P15407779224864043531.a n = A338432 (n + 1)

end A338432

/-! ## A338432.P12145483764371563895

`A133819(A278818(n))+2*A133819(n+1)`
-/

namespace A338432.P12145483764371563895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (A278818 n).toNat + 2 * A133819 (n + 1)

end

end A338432.P12145483764371563895

namespace A338432

/-- `A133819(A278818(n))+2*A133819(n+1)` -/
def P12145483764371563895.Spec : Prop :=
  ∀ n, P12145483764371563895.a n = A338432 (n + 1)

end A338432

/-!
# A338434: Sum of the numbers less than or equal to sqrt(n) whose square does not divide n.

The programs for A338434, the canonical program `A338434.P8736284508359745579` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338434 has offset 1).

The definition of A338434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338434.P2887491570679948472

`∑{#}[floor(sqrt(n+1))-1, (#+1)*(ceil((n+1)/(#+1)²)-floor((n+1)/(#+1)²))]`
-/

namespace A338434.P2887491570679948472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * (⌈(n + 1 : ℚ) / ((k + 1) ^ 2 : ℚ)⌉ - ⌊(n + 1 : ℚ) / ((k + 1) ^ 2 : ℚ)⌋)

end

end A338434.P2887491570679948472

namespace A338434

/-- `∑{#}[floor(sqrt(n+1))-1, (#+1)*(ceil((n+1)/(#+1)²)-floor((n+1)/(#+1)²))]` -/
def P2887491570679948472.Spec : Prop :=
  ∀ n, P2887491570679948472.a n = A338434 (n + 1)

end A338434

/-! ## A338434.P8736284508359745579

`floor(sqrt(n+1))*(floor(sqrt(n+1))+1)/2-A000203(sqrt((n+1)/A007913(n+1)))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A338434

/-- `floor(sqrt(n+1))*(floor(sqrt(n+1))+1)/2-A000203(sqrt((n+1)/A007913(n+1)))` -/
def P8736284508359745579.Spec : Prop :=
  ∀ n, P8736284508359745579.a n = (A338434 (n + 1) : ℚ)

end A338434

/-! ## A338434.P9436579086554595771

`∑[A037213(n+1)]-A069290(n+1)`
-/

namespace A338434.P9436579086554595771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069290 (n + 1)

end

end A338434.P9436579086554595771

namespace A338434

/-- `∑[A037213(n+1)]-A069290(n+1)` -/
def P9436579086554595771.Spec : Prop :=
  ∀ n, P9436579086554595771.a n = A338434 (n + 1)

end A338434

/-! ## A338434.P778531284508087459

`∑[A037213(n+1)]-∑{d}[n+1, A037213(#)]`
-/

namespace A338434.P778531284508087459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ d ∈ Nat.divisors (f2 n), A037213 d

end

end A338434.P778531284508087459

namespace A338434

/-- `∑[A037213(n+1)]-∑{d}[n+1, A037213(#)]` -/
def P778531284508087459.Spec : Prop :=
  ∀ n, P778531284508087459.a n = A338434 (n + 1)

end A338434

/-! ## A338434.P13775621227800481389

`A000217(A000196(n+1))-A069290(n+1)`
-/

namespace A338434.P13775621227800481389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000196 (n + 1)).toNat - A069290 (n + 1)

end

end A338434.P13775621227800481389

namespace A338434

/-- `A000217(A000196(n+1))-A069290(n+1)` -/
def P13775621227800481389.Spec : Prop :=
  ∀ n, P13775621227800481389.a n = A338434 (n + 1)

end A338434

/-! ## A338434.P10877709968636300210

`∑[A037213(n+1)]-A000203(A000188(n+1))`
-/

namespace A338434.P10877709968636300210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (A000188 (n + 1)).toNat

end

end A338434.P10877709968636300210

namespace A338434

/-- `∑[A037213(n+1)]-A000203(A000188(n+1))` -/
def P10877709968636300210.Spec : Prop :=
  ∀ n, P10877709968636300210.a n = A338434 (n + 1)

end A338434

/-! ## A338434.P10172984540516983811

`A000217(A000196(n+1))-A000203(A000188(n+1))`
-/

namespace A338434.P10172984540516983811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000196 (n + 1)).toNat - A000203 (A000188 (n + 1)).toNat

end

end A338434.P10172984540516983811

namespace A338434

/-- `A000217(A000196(n+1))-A000203(A000188(n+1))` -/
def P10172984540516983811.Spec : Prop :=
  ∀ n, P10172984540516983811.a n = A338434 (n + 1)

end A338434

/-!
# A338435: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = n!*LaguerreL(n, -k*n).

The programs for A338435, there is no canonical definition to state claims against.
-/

/-! ## A338435.P2278568471998444007

`A289192(C(col(n)+(row(n)-col(n))*col(n)+1, 2)+col(n))`
-/

namespace A338435.P2278568471998444007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289192 (Nat.choose ((SequenceMachineLib.triCol n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + 1).toNat 2 + SequenceMachineLib.triCol n)

end

end A338435.P2278568471998444007

/-! ## A338435.P15208081895426241206

`A351870(A233543(n)*A341014(n))`
-/

namespace A338435.P15208081895426241206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A233543 n * A341014 n).toNat

end

end A338435.P15208081895426241206

/-! ## A338435.P1925646292467951123

`A351870(lcm(A233543(n), A341014(n)))`
-/

namespace A338435.P1925646292467951123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (Int.lcm (A233543 n) (A341014 n))

end

end A338435.P1925646292467951123

/-! ## A338435.P17552846784594980619

`A000196((A233543(n)*A341014(n))²)`
-/

namespace A338435.P17552846784594980619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A233543 n * A341014 n) ^ 2).toNat

end

end A338435.P17552846784594980619

/-!
# A338436: a(n) = n! * [x^n] Product_{k=1..n, gcd(n,k) = 1} 1 / (1 - x^k/k!).

The programs for A338436, there is no canonical definition to state claims against.
-/

/-! ## A338436.P6769315609883772329

`A249818(lcm(A295733(n)+1, n!)+n)`
-/

namespace A338436.P6769315609883772329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (Int.lcm (A295733 n + 1) (Nat.factorial n : ℤ) + n)

end

end A338436.P6769315609883772329

/-! ## A338436.P10394041269473352251

`A363995(A098407(n))`
-/

namespace A338436.P10394041269473352251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363995 (A098407 n).toNat

end

end A338436.P10394041269473352251

/-!
# A338437: a(n) = n! * [x^n] Product_{k=1..n, gcd(n,k) = 1} 1 / (1 - x^k/k).

The programs for A338437, there is no canonical definition to state claims against.
-/

/-! ## A338437.P12958587007430813727

`A028310(A001563(n)/A298423(n))`
-/

namespace A338437.P12958587007430813727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A001563 n : ℚ) / (A298423 n : ℚ))).toNat

end

end A338437.P12958587007430813727

/-! ## A338437.P13427075053512871916

`A028310(A001563(n)/A322900(n))`
-/

namespace A338437.P13427075053512871916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A001563 n : ℚ) / (A322900 n : ℚ))).toNat

end

end A338437.P13427075053512871916

/-! ## A338437.P8821860384409926679

`A028310(A001563(n)/A328673(n))`
-/

namespace A338437.P8821860384409926679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A001563 n : ℚ) / (A328673 n : ℚ))).toNat

end

end A338437.P8821860384409926679

/-!
# A338438: a(n) = n! * [x^n] Product_{k=1..n, gcd(n,k) = 1} (1 + x^k/k!).

The programs for A338438, there is no canonical definition to state claims against.
-/

/-! ## A338438.P11328696131146768132

`lcm(A028310(n), A191312(A227363(n)))`
-/

namespace A338438.P11328696131146768132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A191312 (A227363 n).toNat)

end

end A338438.P11328696131146768132

/-!
# A338439: a(n) = n! * [x^n] Product_{k=1..n, gcd(n,k) = 1} (1 + x^k/k).

The programs for A338439, there is no canonical definition to state claims against.
-/

/-! ## A338439.P2867432094786755622

`A051162(A192446(n))-A000217(n)`
-/

namespace A338439.P2867432094786755622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A192446 n).toNat - A000217 n

end

end A338439.P2867432094786755622

/-! ## A338439.P15240627722488484110

`A369074(n)-A010051(A249477(n))`
-/

namespace A338439.P15240627722488484110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369074 n - A010051 (A249477 n).toNat

end

end A338439.P15240627722488484110

/-! ## A338439.P7644964945779106150

`A028310(n)*A130573(A328743(n))`
-/

namespace A338439.P7644964945779106150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A130573 (A328743 n).toNat

end

end A338439.P7644964945779106150

/-!
# A338440: a(n) is the greatest common divisor of A338338(n), A338338(n+1) and A338338(n+2).

The programs for A338440, there is no canonical definition to state claims against.
-/

/-! ## A338440.P2748979505824273639

`or(A026807(n+1), A257594(A257594(n)))`
-/

namespace A338440.P2748979505824273639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026807 (n + 1)) (A257594 (A257594 n).toNat)

end

end A338440.P2748979505824273639

/-! ## A338440.P12264960587915488206

`or(A026807(n+1), A035196(A256748(n+1)))`
-/

namespace A338440.P12264960587915488206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026807 (n + 1)) (A035196 (A256748 (n + 1)).toNat)

end

end A338440.P12264960587915488206

/-! ## A338440.P4161479925572483366

`A185216(A014382(n))+A026807(n+1)`
-/

namespace A338440.P4161479925572483366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (A014382 n).toNat + A026807 (n + 1)

end

end A338440.P4161479925572483366

/-! ## A338440.P250697787935064955

`A210713(A033483(n))+A026807(n+1)`
-/

namespace A338440.P250697787935064955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A033483 n).toNat + A026807 (n + 1)

end

end A338440.P250697787935064955

/-! ## A338440.P8373392848552547796

`A185225(A185213(n))+A026807(n+1)`
-/

namespace A338440.P8373392848552547796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 (A185213 n).toNat + A026807 (n + 1)

end

end A338440.P8373392848552547796

/-!
# A338445: Numbers m with integer solution to x^x == (x+1)^(x+1) (mod m) with 1<=x<m.

The programs for A338445, there is no canonical definition to state claims against.
-/

/-! ## A338445.P3104029630583755239

`eq[A053214(A316265(n+1)), A053214(n)]`
-/

namespace A338445.P3104029630583755239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (A316265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338445.P3104029630583755239

/-! ## A338445.P17549733990760789815

`A008846(n+1)-A301337(A000265(2*n+3))`
-/

namespace A338445.P17549733990760789815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1) - A301337 (A000265 (2 * n + 3)).toNat

end

end A338445.P17549733990760789815

/-!
# A338446: Numbers that are sums of consecutive odd primes.

The programs for A338446, there is no canonical definition to state claims against.
-/

/-! ## A338446.P5634430779957962713

`lt[char[A007504(n)], A054845(n)]`
-/

namespace A338446.P5634430779957962713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A338446.P5634430779957962713

/-! ## A338446.P12884395883337756011

`lt[char[A014284(n+1)-1], A054845(n)]`
-/

namespace A338446.P12884395883337756011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A338446.P12884395883337756011

/-! ## A338446.P5562743931481026885

`lt[char[A036439(n+1)-2], A054845(n)]`
-/

namespace A338446.P5562743931481026885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A338446.P5562743931481026885

/-! ## A338446.P10325841721160507095

`lt[char[A175965(n+1)-2], A054845(n)]`
-/

namespace A338446.P10325841721160507095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A338446.P10325841721160507095

/-! ## A338446.P12549529790746856306

`lt[2, A054845(n)*A327277(n+1)]`
-/

namespace A338446.P12549529790746856306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n * A327277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338446.P12549529790746856306

/-! ## A338446.P14129991205595591906

`lt[A007814(A327277(n+1)), A054845(n)]`
-/

namespace A338446.P14129991205595591906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A327277 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338446.P14129991205595591906

/-!
# A338447: Sums of consecutive odd positive cubes.

The programs for A338447, there is no canonical definition to state claims against.
-/

/-! ## A338447.P8223036571527117452

`A290276(∑[A278778(n+1)!])`
-/

namespace A338447.P8223036571527117452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278778 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338447.P8223036571527117452

/-! ## A338447.P6360116712201747219

`record[A290276(A063974(2*(n+1)+n)+1)]`
-/

namespace A338447.P6360116712201747219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290276 (A063974 (2 * (n + 1) + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338447.P6360116712201747219

/-!
# A338449: a(n) is the radical of A338338(n).

The programs for A338449, there is no canonical definition to state claims against.
-/

/-! ## A338449.P15693183039111925040

`A007947(A338338(n+1))`
-/

namespace A338449.P15693183039111925040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A338338 (n + 1)).toNat

end

end A338449.P15693183039111925040

/-! ## A338449.P11361248088990487207

`∏{p}[A338338(n+1), #]`
-/

namespace A338449.P11361248088990487207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A338449.P11361248088990487207

/-! ## A338449.P6691369589008459617

`gcd(A186944(n+1), A338338(n+1))`
-/

namespace A338449.P6691369589008459617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (n + 1)) (A338338 (n + 1))

end

end A338449.P6691369589008459617

/-! ## A338449.P9311129236373548477

`gcd(A128040(n+1), A338338(n+1))`
-/

namespace A338449.P9311129236373548477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128040 (n + 1)) (A338338 (n + 1))

end

end A338449.P9311129236373548477

/-! ## A338449.P10262634001723886805

`gcd(A002110(A091497(n)), A338338(n+1))`
-/

namespace A338449.P10262634001723886805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A091497 n).toNat) (A338338 (n + 1))

end

end A338449.P10262634001723886805

/-! ## A338449.P16276190136604653138

`gcd(A002110(n), A338338(n+1))`
-/

namespace A338449.P16276190136604653138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A338338 (n + 1))

end

end A338449.P16276190136604653138

/-!
# A338450: Numbers k such that A338338(k) and A338338(k+1) are coprime.

The programs for A338450, there is no canonical definition to state claims against.
-/

/-! ## A338450.P3562788620301139207

`eq[A338440(n+2), A338449(n+2)]+1`
-/

namespace A338450.P3562788620301139207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338449 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A338450.P3562788620301139207

/-! ## A338450.P7085193993392063893

`eq[A338449(A254667(n+1)), A338440(n+1)]`
-/

namespace A338450.P7085193993392063893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338449 (A254667 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338450.P7085193993392063893

/-! ## A338450.P18204175783366444494

`eq[A338440(n+1), A338449(A233583(n+2))]`
-/

namespace A338450.P18204175783366444494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338449 (A233583 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338450.P18204175783366444494

/-!
# A338451: a(n) is the least positive number that does not appear among the first n terms of A338338.

The programs for A338451, there is no canonical definition to state claims against.
-/

/-! ## A338451.P8403604233075750048

`p?[gcd(A098429(2*(n+1)), A098445(n+2))]`
-/

namespace A338451.P8403604233075750048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098429 (2 * (n + 1))) (A098445 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A338451.P8403604233075750048

/-! ## A338451.P16209684311804772958

`p?[A127321(A020892(A098029(n+1)))]`
-/

namespace A338451.P16209684311804772958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A020892 (A098029 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338451.P16209684311804772958

/-! ## A338451.P10115303723854342506

`p?[A213711(A008619(A307872(n+1)))]`
-/

namespace A338451.P10115303723854342506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A008619 (A307872 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338451.P10115303723854342506

/-!
# A338452: Numbers k such that k and k+1 have the same total binary weight of their divisors (A093653).

The programs for A338452, the canonical program `A338452.P13216430907170277132` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338452 has offset 1).

The definition of A338452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338452.P13216430907170277132

`eq[A093653(n+2), A093653(n+3)]+2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A338452

/-- `eq[A093653(n+2), A093653(n+3)]+2` -/
def P13216430907170277132.Spec : Prop :=
  ∀ n, (P13216430907170277132.a n : ℤ) = A338452 (n + 1)

theorem P13216430907170277132.correct : P13216430907170277132.Spec := by
  intro n
  simp only [A338452, Nat.add_sub_cancel]

end A338452

/-! ## A338452.P93758072027678615

`A065475(eq[A093653(n+1), A093653(n+2)])`
-/

namespace A338452.P93758072027678615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338452.P93758072027678615

namespace A338452

/-- `A065475(eq[A093653(n+1), A093653(n+2)])` -/
def P93758072027678615.Spec : Prop :=
  ∀ n, P93758072027678615.a n = A338452 (n + 1)

end A338452

/-! ## A338452.P14100343354687410556

`A114637(eq[A093653(n+1), A093653(n+2)])`
-/

namespace A338452.P14100343354687410556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338452.P14100343354687410556

namespace A338452

/-- `A114637(eq[A093653(n+1), A093653(n+2)])` -/
def P14100343354687410556.Spec : Prop :=
  ∀ n, P14100343354687410556.a n = A338452 (n + 1)

end A338452

/-!
# A338453: Starts of runs of 3 consecutive numbers with the same total binary weight of their divisors (A093653).

The programs for A338453, the canonical program `A338453.P14158950893179917223` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338453 has offset 1).

The definition of A338453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338453.P14158950893179917223

`∩[A338452(n+1)-1, A338452(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A338453

/-- `∩[A338452(n+1)-1, A338452(n+1)]` -/
def P14158950893179917223.Spec : Prop :=
  ∀ n, (P14158950893179917223.a n : ℤ) = A338453 (n + 1)

theorem P14158950893179917223.correct : P14158950893179917223.Spec := by
  intro n
  simp only [A338453, Nat.add_sub_cancel]

end A338453

/-! ## A338453.P16078450483467791144

`∩[A338452(n+1), A023443(A338452(n+1))]`
-/

namespace A338453.P16078450483467791144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A338452 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338453.P16078450483467791144

namespace A338453

/-- `∩[A338452(n+1), A023443(A338452(n+1))]` -/
def P16078450483467791144.Spec : Prop :=
  ∀ n, (P16078450483467791144.a n : ℤ) = A338453 (n + 1)

end A338453

/-!
# A338456: a(n) is the hafnian of a symmetric Toeplitz matrix M(2n) whose first row consists of a single zero followed by successive positive integers repeated (A004526).

The programs for A338456, there is no canonical definition to state claims against.
-/

/-! ## A338456.P12693861885087464697

`A048098(C(n!, ceil(n/2)))`
-/

namespace A338456.P12693861885087464697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (Nat.choose (Nat.factorial n) ⌈(n : ℚ) / 2⌉.toNat)

end

end A338456.P12693861885087464697

/-!
# A338457: Numbers k such that A338338(k) = k.

The programs for A338457, there is no canonical definition to state claims against.
-/

/-! ## A338457.P11497403084177655473

`eq[n, A338338(A028310(n))]`
-/

namespace A338457.P11497403084177655473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338338 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338457.P11497403084177655473

/-!
# A338458: Least number of heptagonal pyramidal numbers needed to represent n.

The programs for A338458, there is no canonical definition to state claims against.
-/

/-! ## A338458.P4927685964026099132

`A055401(A348553(n)%A269420(n+1))`
-/

namespace A338458.P4927685964026099132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (Int.tmod (A348553 n) (A269420 (n + 1))).toNat

end

end A338458.P4927685964026099132

/-! ## A338458.P6788689598669670654

`A055401(A348553(n))%A113758(n+2)`
-/

namespace A338458.P6788689598669670654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055401 (A348553 n).toNat) (A113758 (n + 2))

end

end A338458.P6788689598669670654

/-! ## A338458.P6525814804403715931

`A002376(lt[A319066(n), A162624(3*n+1)])`
-/

namespace A338458.P6525814804403715931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162624 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338458.P6525814804403715931

/-! ## A338458.P14220631193335542851

`A055401(A348553(n))+A000038(A181543(n))`
-/

namespace A338458.P14220631193335542851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A348553 n).toNat + A000038 (A181543 n).toNat

end

end A338458.P14220631193335542851

/-!
# A338463: Expansion of g.f.: (-1 + Product_{k>=1} 1 / (1 + (-x)^k))^2.

The programs for A338463, there is no canonical definition to state claims against.
-/

/-! ## A338463.P11270664375681671090

`A073252(n+2)-2*A000700(n+2)`
-/

namespace A338463.P11270664375681671090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073252 (n + 2) - 2 * A000700 (n + 2)

end

end A338463.P11270664375681671090

/-! ## A338463.P2842424773959201445

`A341279(∑[n+2]+3)`
-/

namespace A338463.P2842424773959201445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A338463.P2842424773959201445

/-! ## A338463.P401757647786033495

`or(char[4], A341279(A167614(n+1)-1))`
-/

namespace A338463.P401757647786033495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341279 (A167614 (n + 1) - 1).toNat)

end

end A338463.P401757647786033495

/-! ## A338463.P14419128883382941344

`A341279(A167614(1-char[1]+n)-1)-char[1]`
-/

namespace A338463.P14419128883382941344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A167614 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat - 1).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A338463.P14419128883382941344

/-! ## A338463.P3780549348711565702

`A341279(A167614(n+1)-1)%A000032(n)`
-/

namespace A338463.P3780549348711565702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341279 (A167614 (n + 1) - 1).toNat) (A000032 n)

end

end A338463.P3780549348711565702

/-! ## A338463.P11524784137539380512

`gcd(A000038(n), A341279(A167614(n+1)-1))`
-/

namespace A338463.P11524784137539380512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A341279 (A167614 (n + 1) - 1).toNat)

end

end A338463.P11524784137539380512

/-! ## A338463.P15510171044546758008

`xor(A000007(n+1), A341279(A167614(n+1)-1))`
-/

namespace A338463.P15510171044546758008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 1)) (A341279 (A167614 (n + 1) - 1).toNat)

end

end A338463.P15510171044546758008

/-! ## A338463.P8764472960451215167

`ceil(1/A007318(n))*A341279(A167614(n+1)-1)`
-/

namespace A338463.P8764472960451215167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A341279 (A167614 (n + 1) - 1).toNat

end

end A338463.P8764472960451215167

/-! ## A338463.P4823055605502013691

`A007318(C(n, 2))*A341279(A167614(n+1)-1)`
-/

namespace A338463.P4823055605502013691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A341279 (A167614 (n + 1) - 1).toNat

end

end A338463.P4823055605502013691

/-! ## A338463.P18437225366723684290

`A001221(A002385(n+1))*A341279(A167614(n+1)-1)`
-/

namespace A338463.P18437225366723684290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002385 (n + 1)).toNat * A341279 (A167614 (n + 1) - 1).toNat

end

end A338463.P18437225366723684290

/-!
# A338464: Number of ways to write 2*n as an ordered sum of n squares of positive integers.

The programs for A338464, there is no canonical definition to state claims against.
-/

/-! ## A338464.P11015187242582678506

`A337165(C(2*n+1, 2)+n)`
-/

namespace A338464.P11015187242582678506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (Nat.choose (2 * n + 1) 2 + n)

end

end A338464.P11015187242582678506

/-! ## A338464.P5971215560273240464

`A337165(∑[4*n])`
-/

namespace A338464.P5971215560273240464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338464.P5971215560273240464

/-! ## A338464.P14715437034665275142

`A337165(A046092(n))%A242986(n)`
-/

namespace A338464.P14715437034665275142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337165 (A046092 n).toNat) (A242986 n)

end

end A338464.P14715437034665275142

/-! ## A338464.P17886318580568954210

`or(A000007(n), A337165(A046092(n)))`
-/

namespace A338464.P17886318580568954210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A337165 (A046092 n).toNat)

end

end A338464.P17886318580568954210

/-! ## A338464.P625361188947153028

`A337165(A106232(n+1))+A000007(n)`
-/

namespace A338464.P625361188947153028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A106232 (n + 1)).toNat + A000007 n

end

end A338464.P625361188947153028

/-! ## A338464.P11717803138023844915

`A028920(2*n)*A337165(A046092(n))`
-/

namespace A338464.P11717803138023844915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) * A337165 (A046092 n).toNat

end

end A338464.P11717803138023844915

/-! ## A338464.P3389378630823393051

`A337165(A046092(n))+char[A005231(n+1)]`
-/

namespace A338464.P3389378630823393051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A338464.P3389378630823393051

/-! ## A338464.P12542565960557055909

`A337165(A046092(n))+A178225(2*(n+1))`
-/

namespace A338464.P12542565960557055909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A046092 n).toNat + A178225 (2 * (n + 1))

end

end A338464.P12542565960557055909

/-! ## A338464.P13970289592297085705

`A007318(A333616(n))*A337165(A046092(n))`
-/

namespace A338464.P13970289592297085705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A333616 n).toNat * A337165 (A046092 n).toNat

end

end A338464.P13970289592297085705

/-! ## A338464.P13507115569435990017

`A007318(A000096(n))*A337165(A046092(n))`
-/

namespace A338464.P13507115569435990017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A337165 (A046092 n).toNat

end

end A338464.P13507115569435990017

/-! ## A338464.P4251588301232385661

`A337165(A046092(n))+A002262(∑[n+1])`
-/

namespace A338464.P4251588301232385661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A046092 n).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338464.P4251588301232385661

/-!
# A338465: Number of ways to write 2*n as an ordered sum of n nonzero triangular numbers.

The programs for A338465, there is no canonical definition to state claims against.
-/

/-! ## A338465.P4169104022372443110

`A056040(n)%A166097(A000032(n))`
-/

namespace A338465.P4169104022372443110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056040 n) (A166097 (A000032 n).toNat)

end

end A338465.P4169104022372443110

/-! ## A338465.P10286370636168398636

`lcm(A191515(A191514(n+2)), A191529(n+2))`
-/

namespace A338465.P10286370636168398636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A191515 (A191514 (n + 2)).toNat) (A191529 (n + 2))

end

end A338465.P10286370636168398636

/-!
# A338467: a(n+1) = prime(n) + 2*n - a(n). a(1) = 1.

The programs for A338467, the canonical program `A338467.P10429500536160376014` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338467 has offset 1).

The definition of A338467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338467.P10429500536160376014

`A000040(n)+2*n-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A338467

/-- `A000040(n)+2*n-a(n-1)` -/
def P10429500536160376014.Spec : Prop :=
  ∀ n, P10429500536160376014.a n = A338467 (n + 1)

theorem P10429500536160376014.correct : P10429500536160376014.Spec := by
  intro n
  simp only [A338467, Nat.add_sub_cancel]

end A338467

/-! ## A338467.P13892057425327448766

`A008347(n)+or(1, n)`
-/

namespace A338467.P13892057425327448766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n + (Nat.lor 1 n : ℤ)

end

end A338467.P13892057425327448766

namespace A338467

/-- `A008347(n)+or(1, n)` -/
def P13892057425327448766.Spec : Prop :=
  ∀ n, P13892057425327448766.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P677853706619869092

`A078916(n)-a(n-1)` with `a(0)=1`
-/

namespace A338467.P677853706619869092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078916 n - a (n - 1)

end

end A338467.P677853706619869092

namespace A338467

/-- `A078916(n)-a(n-1)` -/
def P677853706619869092.Spec : Prop :=
  ∀ n, P677853706619869092.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P12849378075180832409

`n%2+A036467(n)+n`
-/

namespace A338467.P12849378075180832409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A036467 n + (n : ℤ))

end

end A338467.P12849378075180832409

namespace A338467

/-- `n%2+A036467(n)+n` -/
def P12849378075180832409.Spec : Prop :=
  ∀ n, P12849378075180832409.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P9419781084598497674

`A174008(n)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A338467.P9419781084598497674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A174008 n - a (n - 1)

end

end A338467.P9419781084598497674

namespace A338467

/-- `A174008(n)-a(n-1)` -/
def P9419781084598497674.Spec : Prop :=
  ∀ n, P9419781084598497674.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P9787829344646325279

`A014688(n)+n-a(n-1)` with `a(0)=1`
-/

namespace A338467.P9787829344646325279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014688 n + ((n : ℤ) - a (n - 1))

end

end A338467.P9787829344646325279

namespace A338467

/-- `A014688(n)+n-a(n-1)` -/
def P9787829344646325279.Spec : Prop :=
  ∀ n, P9787829344646325279.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P7645532827576045426

`A008578(n+1)+2*n-a(n-1)` with `a(0)=1`
-/

namespace A338467.P7645532827576045426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008578 (n + 1) + (2 * n : ℤ) - a (n - 1)

end

end A338467.P7645532827576045426

namespace A338467

/-- `A008578(n+1)+2*n-a(n-1)` -/
def P7645532827576045426.Spec : Prop :=
  ∀ n, P7645532827576045426.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P6798931093026313654

`A109613(n)+A008347(n)`
-/

namespace A338467.P6798931093026313654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A008347 n

end

end A338467.P6798931093026313654

namespace A338467

/-- `A109613(n)+A008347(n)` -/
def P6798931093026313654.Spec : Prop :=
  ∀ n, P6798931093026313654.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P5013019655131826211

`2*n+record[A006530(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A338467.P5013019655131826211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1))

end

end A338467.P5013019655131826211

namespace A338467

/-- `2*n+record[A006530(n+1)]-a(n-1)` -/
def P5013019655131826211.Spec : Prop :=
  ∀ n, P5013019655131826211.a n = A338467 (n + 1)

end A338467

/-! ## A338467.P18124158518179172728

`2*n+record[A020639(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A338467.P18124158518179172728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1))

end

end A338467.P18124158518179172728

namespace A338467

/-- `2*n+record[A020639(n+1)]-a(n-1)` -/
def P18124158518179172728.Spec : Prop :=
  ∀ n, P18124158518179172728.a n = A338467 (n + 1)

end A338467

/-!
# A338468: Odd squarefree numbers whose prime indices have no common divisor > 1.

The programs for A338468, there is no canonical definition to state claims against.
-/

/-! ## A338468.P7656258769568856691

`record[A316437(A024556(n+1))]`
-/

namespace A338468.P7656258769568856691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A024556 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338468.P7656258769568856691

/-! ## A338468.P3054865562404615462

`filter[A024556(n+1), A327532(#)]`
-/

namespace A338468.P3054865562404615462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A338468.P3054865562404615462

/-! ## A338468.P235693088227991833

`filter[A056911(n+1), A327532(#)]`
-/

namespace A338468.P235693088227991833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A338468.P235693088227991833

/-! ## A338468.P18349158282392386491

`filter[A289509(n+1), A323239(#)]`
-/

namespace A338468.P18349158282392386491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A338468.P18349158282392386491

/-! ## A338468.P15077540210636748020

`record[A316437(A007947(2*n+15))]`
-/

namespace A338468.P15077540210636748020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A007947 (2 * n + 15)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338468.P15077540210636748020

/-! ## A338468.P2997347035031231821

`filter[A215739(2*(n+1)), A327532(#)]`
-/

namespace A338468.P2997347035031231821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215739 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A338468.P2997347035031231821

/-! ## A338468.P3912135669406244382

`filter[A327529(2*n+1), A380469(#)]`
-/

namespace A338468.P3912135669406244382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A338468.P3912135669406244382

/-! ## A338468.P1386763695788945885

`filter[A385212(2*n+1), A327532(#)]`
-/

namespace A338468.P1386763695788945885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385212 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327532 (f1 j).toNat = 1) n)

end

end A338468.P1386763695788945885

/-! ## A338468.P82819059133058104

`∩[A024556(n+1), A289509(n+1)]`
-/

namespace A338468.P82819059133058104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338468.P82819059133058104

/-! ## A338468.P11644529430856323293

`∩[A056911(n+1), A289509(n+1)]`
-/

namespace A338468.P11644529430856323293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338468.P11644529430856323293

/-!
# A338469: Products of three odd prime numbers of odd index.

The programs for A338469, the canonical program `A338469.P2285265360204035828` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338469 has offset 1).

The definition of A338469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338469.P2285265360204035828

`∩[A338471(n+1), A038513(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A338469

/-- `∩[A338471(n+1), A038513(n)]` -/
def P2285265360204035828.Spec : Prop :=
  ∀ n, (P2285265360204035828.a n : ℤ) = A338469 (n + 1)

theorem P2285265360204035828.correct : P2285265360204035828.Spec := by
  intro n
  simp only [A338469, Nat.add_sub_cancel]

end A338469

/-! ## A338469.P16637553452375929555

`filter[A338471(n+1), A322980(#)]`
-/

namespace A338469.P16637553452375929555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A338469.P16637553452375929555

namespace A338469

/-- `filter[A338471(n+1), A322980(#)]` -/
def P16637553452375929555.Spec : Prop :=
  ∀ n, P16637553452375929555.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P16766137991582683100

`filter[A338471(n+1), A355450(#)]`
-/

namespace A338469.P16766137991582683100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A338469.P16766137991582683100

namespace A338469

/-- `filter[A338471(n+1), A355450(#)]` -/
def P16766137991582683100.Spec : Prop :=
  ∀ n, P16766137991582683100.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P11285464799357637078

`filter[A338471(n+1), A369058(#)]`
-/

namespace A338469.P11285464799357637078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A338469.P11285464799357637078

namespace A338469

/-- `filter[A338471(n+1), A369058(#)]` -/
def P11285464799357637078.Spec : Prop :=
  ∀ n, P11285464799357637078.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P8783161092611766952

`filter[A338471(n+1), A373141(#)]`
-/

namespace A338469.P8783161092611766952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A338469.P8783161092611766952

namespace A338469

/-- `filter[A338471(n+1), A373141(#)]` -/
def P8783161092611766952.Spec : Prop :=
  ∀ n, P8783161092611766952.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P11733538372800752789

`∩[A307515(n+1), A338471(n+1)]`
-/

namespace A338469.P11733538372800752789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P11733538372800752789

namespace A338469

/-- `∩[A307515(n+1), A338471(n+1)]` -/
def P11733538372800752789.Spec : Prop :=
  ∀ n, (P11733538372800752789.a n : ℤ) = A338469 (n + 1)

end A338469

/-! ## A338469.P15771516861295073310

`filter[A300272(n+1), A369058(#)]`
-/

namespace A338469.P15771516861295073310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A338469.P15771516861295073310

namespace A338469

/-- `filter[A300272(n+1), A369058(#)]` -/
def P15771516861295073310.Spec : Prop :=
  ∀ n, P15771516861295073310.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P16859916277279746057

`∩[A038513(n), A300272(n+1)]`
-/

namespace A338469.P16859916277279746057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P16859916277279746057

namespace A338469

/-- `∩[A038513(n), A300272(n+1)]` -/
def P16859916277279746057.Spec : Prop :=
  ∀ n, (P16859916277279746057.a n : ℤ) = A338469 (n + 1)

end A338469

/-! ## A338469.P10308280323963419598

`∩[A046316(n+1), A300272(n+1)]`
-/

namespace A338469.P10308280323963419598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P10308280323963419598

namespace A338469

/-- `∩[A046316(n+1), A300272(n+1)]` -/
def P10308280323963419598.Spec : Prop :=
  ∀ n, (P10308280323963419598.a n : ℤ) = A338469 (n + 1)

end A338469

/-! ## A338469.P18068400750965021870

`∩[A046316(n+1), A338471(n+1)]`
-/

namespace A338469.P18068400750965021870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P18068400750965021870

namespace A338469

/-- `∩[A046316(n+1), A338471(n+1)]` -/
def P18068400750965021870.Spec : Prop :=
  ∀ n, (P18068400750965021870.a n : ℤ) = A338469 (n + 1)

end A338469

/-! ## A338469.P5519134241738326553

`∩[A046340(n+1), A338471(n+1)]`
-/

namespace A338469.P5519134241738326553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P5519134241738326553

namespace A338469

/-- `∩[A046340(n+1), A338471(n+1)]` -/
def P5519134241738326553.Spec : Prop :=
  ∀ n, (P5519134241738326553.a n : ℤ) = A338469 (n + 1)

end A338469

/-! ## A338469.P9507970474508833178

`filter[A338471(n+1), A093719(#)]`
-/

namespace A338469.P9507970474508833178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A338469.P9507970474508833178

namespace A338469

/-- `filter[A338471(n+1), A093719(#)]` -/
def P9507970474508833178.Spec : Prop :=
  ∀ n, P9507970474508833178.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P16319788769169960299

`filter[A338471(n+1), A320106(#)]`
-/

namespace A338469.P16319788769169960299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A338469.P16319788769169960299

namespace A338469

/-- `filter[A338471(n+1), A320106(#)]` -/
def P16319788769169960299.Spec : Prop :=
  ∀ n, P16319788769169960299.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P9977347588564987710

`filter[A338471(n+1), A323158(#)]`
-/

namespace A338469.P9977347588564987710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A338469.P9977347588564987710

namespace A338469

/-- `filter[A338471(n+1), A323158(#)]` -/
def P9977347588564987710.Spec : Prop :=
  ∀ n, P9977347588564987710.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P14886319130850932374

`filter[A338471(n+1), A324908(#)]`
-/

namespace A338469.P14886319130850932374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A338469.P14886319130850932374

namespace A338469

/-- `filter[A338471(n+1), A324908(#)]` -/
def P14886319130850932374.Spec : Prop :=
  ∀ n, P14886319130850932374.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P15321052095881153452

`filter[A338471(n+1), A353558(#)]`
-/

namespace A338469.P15321052095881153452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A338469.P15321052095881153452

namespace A338469

/-- `filter[A338471(n+1), A353558(#)]` -/
def P15321052095881153452.Spec : Prop :=
  ∀ n, P15321052095881153452.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P9559372525101284180

`filter[A338471(n+1), A354354(#)]`
-/

namespace A338469.P9559372525101284180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A338469.P9559372525101284180

namespace A338469

/-- `filter[A338471(n+1), A354354(#)]` -/
def P9559372525101284180.Spec : Prop :=
  ∀ n, P9559372525101284180.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P13552843782209648647

`filter[A338471(n+1), A356172(#)]`
-/

namespace A338469.P13552843782209648647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356172 (f1 j).toNat = 1) n)

end

end A338469.P13552843782209648647

namespace A338469

/-- `filter[A338471(n+1), A356172(#)]` -/
def P13552843782209648647.Spec : Prop :=
  ∀ n, P13552843782209648647.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P6257214034005371778

`filter[A066208(n+1), A369058(#)]`
-/

namespace A338469.P6257214034005371778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A338469.P6257214034005371778

namespace A338469

/-- `filter[A066208(n+1), A369058(#)]` -/
def P6257214034005371778.Spec : Prop :=
  ∀ n, P6257214034005371778.a n = A338469 (n + 1)

end A338469

/-! ## A338469.P5229401323317290768

`∩[A066208(n+1), A038513(n)]`
-/

namespace A338469.P5229401323317290768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P5229401323317290768

namespace A338469

/-- `∩[A066208(n+1), A038513(n)]` -/
def P5229401323317290768.Spec : Prop :=
  ∀ n, (P5229401323317290768.a n : ℤ) = A338469 (n + 1)

end A338469

/-!
# A338470: Number of integer partitions of n with no part dividing all the others.

The programs for A338470, there is no canonical definition to state claims against.
-/

/-! ## A338470.P12001990084632573552

`A000041(n)-∑{d}[n, A000041(#-1)]`
-/

namespace A338470.P12001990084632573552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - ∑ d ∈ Nat.divisors (f1 n), A000041 (d - 1)

end

end A338470.P12001990084632573552

/-! ## A338470.P17924875207007481577

`A343344(C(2, n)+n)+A343342(n)`
-/

namespace A338470.P17924875207007481577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (Nat.choose 2 n + n) + A343342 n

end

end A338470.P17924875207007481577

/-! ## A338470.P4669087441050084650

`A343344(round(acot(n)+n))+A343342(n)`
-/

namespace A338470.P4669087441050084650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A343342 n

end

end A338470.P4669087441050084650

/-! ## A338470.P8229702782878359791

`A343344(abs(1-n)+1)+A343342(n)`
-/

namespace A338470.P8229702782878359791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (|1 - (n : ℤ)| + 1).toNat + A343342 n

end

end A338470.P8229702782878359791

/-! ## A338470.P17292812808538160892

`A343344(n)+A343342(n)%A282009(n)`
-/

namespace A338470.P17292812808538160892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 n + Int.tmod (A343342 n) (A282009 n)

end

end A338470.P17292812808538160892

/-! ## A338470.P6065125011692687828

`A343342(n)+A343344(n)%A343322(n+1)`
-/

namespace A338470.P6065125011692687828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343342 n + Int.tmod (A343344 n) (A343322 (n + 1))

end

end A338470.P6065125011692687828

/-!
# A338471: Products of three prime numbers of odd index.

The programs for A338471, the canonical program `A338471.P15632408290352518697` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338471 has offset 1).

The definition of A338471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1851 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338471.P15632408290352518697

`∩[A014612(n+1), A066208(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A338471

/-- `∩[A014612(n+1), A066208(n+1)]` -/
def P15632408290352518697.Spec : Prop :=
  ∀ n, (P15632408290352518697.a n : ℤ) = A338471 (n + 1)

theorem P15632408290352518697.correct : P15632408290352518697.Spec := by
  intro n
  simp only [A338471, Nat.add_sub_cancel]

end A338471

/-! ## A338471.P5562686142770748948

`∩[A014612(n+1), A300272(n+1)]`
-/

namespace A338471.P5562686142770748948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P5562686142770748948

namespace A338471

/-- `∩[A014612(n+1), A300272(n+1)]` -/
def P5562686142770748948.Spec : Prop :=
  ∀ n, (P5562686142770748948.a n : ℤ) = A338471 (n + 1)

end A338471

/-! ## A338471.P1021157141715303327

`∩[A066208(n+1), A110209(n+1)-A110209(n)]`
-/

namespace A338471.P1021157141715303327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 (n + 1) - A110209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P1021157141715303327

namespace A338471

/-- `∩[A066208(n+1), A110209(n+1)-A110209(n)]` -/
def P1021157141715303327.Spec : Prop :=
  ∀ n, (P1021157141715303327.a n : ℤ) = A338471 (n + 1)

end A338471

/-! ## A338471.P2441331526294127631

`∩[A300272(n+1), A326111(n+1)]`
-/

namespace A338471.P2441331526294127631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P2441331526294127631

namespace A338471

/-- `∩[A300272(n+1), A326111(n+1)]` -/
def P2441331526294127631.Spec : Prop :=
  ∀ n, (P2441331526294127631.a n : ℤ) = A338471 (n + 1)

end A338471

/-! ## A338471.P10949895824099311456

`∩[A168645(n+1), A300272(n+1)]`
-/

namespace A338471.P10949895824099311456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P10949895824099311456

namespace A338471

/-- `∩[A168645(n+1), A300272(n+1)]` -/
def P10949895824099311456.Spec : Prop :=
  ∀ n, (P10949895824099311456.a n : ℤ) = A338471 (n + 1)

end A338471

/-! ## A338471.P13927943059161392008

`record[A247503(A014612(n+1))]`
-/

namespace A338471.P13927943059161392008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A014612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338471.P13927943059161392008

namespace A338471

/-- `record[A247503(A014612(n+1))]` -/
def P13927943059161392008.Spec : Prop :=
  ∀ n, P13927943059161392008.a n = A338471 (n + 1)

end A338471

/-! ## A338471.P10131426408284530195

`filter[A066208(n+1), A101605(#)]`
-/

namespace A338471.P10131426408284530195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A338471.P10131426408284530195

namespace A338471

/-- `filter[A066208(n+1), A101605(#)]` -/
def P10131426408284530195.Spec : Prop :=
  ∀ n, P10131426408284530195.a n = A338471 (n + 1)

end A338471

/-! ## A338471.P15173645954225326994

`filter[A300272(n+1), A101605(#)]`
-/

namespace A338471.P15173645954225326994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A338471.P15173645954225326994

namespace A338471

/-- `filter[A300272(n+1), A101605(#)]` -/
def P15173645954225326994.Spec : Prop :=
  ∀ n, P15173645954225326994.a n = A338471 (n + 1)

end A338471

/-! ## A338471.P15265701962457680685

`∩[A066208(n+1), A000720(A124268(n+1))]`
-/

namespace A338471.P15265701962457680685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124268 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338471.P15265701962457680685

namespace A338471

/-- `∩[A066208(n+1), A000720(A124268(n+1))]` -/
def P15265701962457680685.Spec : Prop :=
  ∀ n, (P15265701962457680685.a n : ℤ) = A338471 (n + 1)

end A338471

/-!
# A338473: Numbers that can be written as the sum of two brilliant numbers (A078972).

The programs for A338473, there is no canonical definition to state claims against.
-/

/-! ## A338473.P2371545286741340477

`lt[A001057(A058348(n)), A072931(n)]`
-/

namespace A338473.P2371545286741340477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A058348 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338473.P2371545286741340477

/-! ## A338473.P6592449907056212130

`lt[11^A216190(3*n+4), ∑[9*32*n]+11]`
-/

namespace A338473.P6592449907056212130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A216190 (3 * n + 4) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (32 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A338473.P6592449907056212130

/-! ## A338473.P2731222648376523333

`lt[A216190(3*n+4)!, A345717(n+1)]`
-/

namespace A338473.P2731222648376523333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A216190 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338473.P2731222648376523333

/-! ## A338473.P6762535418666088732

`lt[A271513(n+4), A359930(A317715(n))]`
-/

namespace A338473.P6762535418666088732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271513 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359930 (A317715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338473.P6762535418666088732

/-! ## A338473.P4462920372106003336

`lt[A058348(n), A072931(n*A072931(n))]`
-/

namespace A338473.P4462920372106003336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 ((n : ℤ) * A072931 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338473.P4462920372106003336

/-!
# A338474: a(n) is the smallest number that can be partitioned into n ways as the sum of two brilliant numbers (A078972).

The programs for A338474, there is no canonical definition to state claims against.
-/

/-! ## A338474.P8178232120093094284

`A291750(A196912(2^n)²)`
-/

namespace A338474.P8178232120093094284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291750 (A196912 (2 ^ n) ^ 2).toNat

end

end A338474.P8178232120093094284

/-!
# A338476: Primes of the form 398*x^2-1.

The programs for A338476, there is no canonical definition to state claims against.
-/

/-! ## A338476.P6203327339272841853

`398*A338477(n+1)²-1`
-/

namespace A338476.P6203327339272841853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  398 * A338477 (n + 1) ^ 2 - 1

end

end A338476.P6203327339272841853

/-! ## A338476.P18279627562458424436

`p?[n²*398-1]`
-/

namespace A338476.P18279627562458424436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * 398 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338476.P18279627562458424436

/-!
# A338477: Numbers k such that 398*k^2 - 1 is prime.

The programs for A338477, there is no canonical definition to state claims against.
-/

/-! ## A338477.P14760125096799875838

`ceil(sqrt(A338476(n+1))/20)%A002189(n)`
-/

namespace A338477.P14760125096799875838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A338476 (n + 1) : ℝ) / 20⌉ (A002189 n)

end

end A338477.P14760125096799875838

/-! ## A338477.P17127846392800982250

`A000196(round(sqrt(A338476(n+1))/20)²)`
-/

namespace A338477.P17127846392800982250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.sqrt (A338476 (n + 1) : ℝ) / 20) ^ 2).toNat

end

end A338477.P17127846392800982250

/-! ## A338477.P16463847430566483440

`A003983(2*round(sqrt(A338476(n+1))/20)²+1)`
-/

namespace A338477.P16463847430566483440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (2 * SequenceMachineLib.roundAway (Real.sqrt (A338476 (n + 1) : ℝ) / 20) ^ 2 + 1).toNat

end

end A338477.P16463847430566483440

/-! ## A338477.P3205584845633914179

`round(sqrt(A338476(n+1))/20)%A161807(n)`
-/

namespace A338477.P3205584845633914179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A338476 (n + 1) : ℝ) / 20)) (A161807 n)

end

end A338477.P3205584845633914179

/-!
# A338479: Least number of hexagonal numbers needed to represent n.

The programs for A338479, there is no canonical definition to state claims against.
-/

/-! ## A338479.P17565959632198514062

`A193106(A090106(n+1)+1)`
-/

namespace A338479.P17565959632198514062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193106 (A090106 (n + 1) + 1).toNat

end

end A338479.P17565959632198514062

/-! ## A338479.P5741104958522524590

`gcd(A134856(n+2), A193106(n+2))`
-/

namespace A338479.P5741104958522524590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134856 (n + 2)) (A193106 (n + 2))

end

end A338479.P5741104958522524590

/-! ## A338479.P14421178883313475247

`A193106(or(n+2, A181340(n+1)))`
-/

namespace A338479.P14421178883313475247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193106 (Int.lor (n + 2 : ℤ) (A181340 (n + 1))).toNat

end

end A338479.P14421178883313475247

/-! ## A338479.P7920915599298342054

`A193106(n+2)+A169675(A016116(n+1))`
-/

namespace A338479.P7920915599298342054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193106 (n + 2) + A169675 (A016116 (n + 1)).toNat

end

end A338479.P7920915599298342054

/-! ## A338479.P16289119495581346925

`A193106(n+2)+A193095(A193094(n+1))`
-/

namespace A338479.P16289119495581346925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193106 (n + 2) + A193095 (A193094 (n + 1)).toNat

end

end A338479.P16289119495581346925

/-!
# A338482: Least number of centered triangular numbers that sum to n.

The programs for A338482, there is no canonical definition to state claims against.
-/

/-! ## A338482.P13411237925520214449

`A338484(eq[A338484(n+1)+1, A338484(n+2)]+1)`
-/

namespace A338482.P13411237925520214449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338484 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A338482.P13411237925520214449

/-! ## A338482.P14483632673132566853

`A104246(∑[A334924(4*n+3)])`
-/

namespace A338482.P14483632673132566853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338482.P14483632673132566853

/-! ## A338482.P172771290176560384

`A281367(∑[A334924(4*n+3)])`
-/

namespace A338482.P172771290176560384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338482.P172771290176560384

/-! ## A338482.P17733527987506730698

`A104246(∑[C(A122542(n), n)]+n)`
-/

namespace A338482.P17733527987506730698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122542 n).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A338482.P17733527987506730698

/-! ## A338482.P12101588075679769289

`A104246(lt[A025155(n), A104246(n+1)])`
-/

namespace A338482.P12101588075679769289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338482.P12101588075679769289

/-!
# A338483: a(n) is the smallest number having n smaller numbers with the same number of divisors.

The programs for A338483, there is no canonical definition to state claims against.
-/

/-! ## A338483.P6177247588164006574

`A033676(p?[A131738(n)]*A161918(n+1))`
-/

namespace A338483.P6177247588164006574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A161918 (n + 1)).toNat

end

end A338483.P6177247588164006574

/-! ## A338483.P4552590931468398267

`A033676(A045344(n+1)*A161918(n+1))`
-/

namespace A338483.P4552590931468398267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A045344 (n + 1) * A161918 (n + 1)).toNat

end

end A338483.P4552590931468398267

/-! ## A338483.P17330973087505117714

`A033676(A065091(n+1)*A161918(n+1))`
-/

namespace A338483.P17330973087505117714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A065091 (n + 1) * A161918 (n + 1)).toNat

end

end A338483.P17330973087505117714

/-! ## A338483.P11133425539289566227

`A060775(A045344(n+1)*A161918(n+1))`
-/

namespace A338483.P11133425539289566227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A045344 (n + 1) * A161918 (n + 1)).toNat

end

end A338483.P11133425539289566227

/-! ## A338483.P15017141191641183752

`A060775(A065091(n+1)*A161918(n+1))`
-/

namespace A338483.P15017141191641183752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A065091 (n + 1) * A161918 (n + 1)).toNat

end

end A338483.P15017141191641183752

/-!
# A338484: Least number of centered square numbers needed to represent n.

The programs for A338484, there is no canonical definition to state claims against.
-/

/-! ## A338484.P1109251428189522591

`A338491(record[Δ[A338491(n+1)]+n])`
-/

namespace A338484.P1109251428189522591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338484.P1109251428189522591

/-! ## A338484.P15322296856207447878

`A338491(eq[1, Δ[A338491(n+1)]]+1)`
-/

namespace A338484.P15322296856207447878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A338484.P15322296856207447878

/-! ## A338484.P11811331646853034482

`A338491(eq[A338491(n+1)+1, A338491(n+2)]+1)`
-/

namespace A338484.P11811331646853034482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338491 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A338484.P11811331646853034482

/-! ## A338484.P16598876752912972882

`A338493(∑[A341359(A211110(n))])`
-/

namespace A338484.P16598876752912972882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 (A211110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338493 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338484.P16598876752912972882

/-!
# A338485: Primitive numbers that are the sum of the squares of two of their distinct divisors.

The programs for A338485, there is no canonical definition to state claims against.
-/

/-! ## A338485.P9782484269399129052

`record[A344334(n+1)%A337670(3*n+4)]`
-/

namespace A338485.P9782484269399129052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344334 (n + 1)) (A337670 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338485.P9782484269399129052

/-! ## A338485.P1098098976106206818

`A344334(lcm(2^val(n+1, 2), A039265(n+2)))`
-/

namespace A338485.P1098098976106206818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344334 (Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A039265 (n + 2)))

end

end A338485.P1098098976106206818

/-! ## A338485.P1985812799114985190

`A344334(A005940(n+1)^A047130(n))`
-/

namespace A338485.P1985812799114985190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344334 (SequenceMachineLib.roundAway ((A005940 (n + 1) : ℚ) ^ (A047130 n : ℤ))).toNat

end

end A338485.P1985812799114985190

/-!
# A338486: Numbers n whose symmetric representation of sigma(n) consists of 3 regions with maximum width 2.

The programs for A338486, there is no canonical definition to state claims against.
-/

/-! ## A338486.P14655410783816568521

`∩[A279102(n+1), A376333(n+1)]`
-/

namespace A338486.P14655410783816568521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338486.P14655410783816568521

/-! ## A338486.P347497169114321917

`∩[A279102(n+1), A290965(n+1)]`
-/

namespace A338486.P347497169114321917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338486.P347497169114321917

/-! ## A338486.P2676701297391152455

`∩[A279102(n+1), A375611(n+1)]`
-/

namespace A338486.P2676701297391152455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338486.P2676701297391152455

/-! ## A338486.P8438559303824660475

`∩[A279102(n+1), A343281(n+1)]`
-/

namespace A338486.P8438559303824660475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338486.P8438559303824660475

/-! ## A338486.P5020001122273682522

`∩[A279102(n+1), A344883(n+1)]`
-/

namespace A338486.P5020001122273682522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338486.P5020001122273682522

/-!
# A338487: a(n) is the number of non-isomorphic, serial/parallel indecomposable resistor networks with n edges, n >= 5, allowing dead ends.

The programs for A338487, there is no canonical definition to state claims against.
-/

/-! ## A338487.P7464769542829665871

`A156077(A164176(3*n))+A027441(n)`
-/

namespace A338487.P7464769542829665871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A164176 (3 * n)).toNat + A027441 n

end

end A338487.P7464769542829665871

/-!
# A338488: Numbers n whose symmetric representation of sigma(n) has a maximum width of 2 that occurs exactly once (at the diagonal).

The programs for A338488, there is no canonical definition to state claims against.
-/

/-! ## A338488.P1931842608452046031

`filter[A302022(n+1), A365799(#)]`
-/

namespace A338488.P1931842608452046031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365799 (f1 j).toNat = 1) n)

end

end A338488.P1931842608452046031

/-! ## A338488.P9270218789980482772

`∩[A302022(n+1), A000217(n)]`
-/

namespace A338488.P9270218789980482772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338488.P9270218789980482772

/-! ## A338488.P4070962852721300041

`∩[A302022(n+1), A000384(n)]`
-/

namespace A338488.P4070962852721300041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338488.P4070962852721300041

/-! ## A338488.P2477601155591658570

`∩[A302296(n+1), A000384(n)]`
-/

namespace A338488.P2477601155591658570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338488.P2477601155591658570

/-! ## A338488.P13510127327023571578

`∩[A302022(n+1), A001972(n)]`
-/

namespace A338488.P13510127327023571578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338488.P13510127327023571578

/-!
# A338489: Let t be the closest triangular number to n! (in case n=2, the only case where we have a tie, take the larger t); then a(n) = n! - t.

The programs for A338489, the canonical program `A338489.P10710303634164486303` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338489 has offset 0).

The definition of A338489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338489.P10710303634164486303

`A000142(n)-A000217(A129960(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A338489

/-- `A000142(n)-A000217(A129960(n))` -/
def P10710303634164486303.Spec : Prop :=
  ∀ n, P10710303634164486303.a n = A338489 n

theorem P10710303634164486303.correct : P10710303634164486303.Spec := by
  intro n
  simp only [A338489]

end A338489

/-! ## A338489.P12083432565246874367

`n!-A000217(ceil(sqrt(2*n!+1))-1)`
-/

namespace A338489.P12083432565246874367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000217 (⌈Real.sqrt (2 * Nat.factorial n + 1 : ℝ)⌉ - 1).toNat

end

end A338489.P12083432565246874367

namespace A338489

/-- `n!-A000217(ceil(sqrt(2*n!+1))-1)` -/
def P12083432565246874367.Spec : Prop :=
  ∀ n, P12083432565246874367.a n = A338489 n

end A338489

/-! ## A338489.P13137773441646647161

`n!-A000217(ceil(sqrt(A098558(n)+1))-1)`
-/

namespace A338489.P13137773441646647161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000217 (⌈Real.sqrt (A098558 n + 1 : ℝ)⌉ - 1).toNat

end

end A338489.P13137773441646647161

namespace A338489

/-- `n!-A000217(ceil(sqrt(A098558(n)+1))-1)` -/
def P13137773441646647161.Spec : Prop :=
  ∀ n, P13137773441646647161.a n = A338489 n

end A338489

/-!
# A338490: Sum of indices of distinct odd prime factors of n.

The programs for A338490, the canonical program `A338490.P6074584885069442355` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338490 has offset 1).

The definition of A338490 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066328, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338490.P6074584885069442355

`A066328(A000265(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A338490

/-- `A066328(A000265(n+1))` -/
def P6074584885069442355.Spec : Prop :=
  ∀ n, P6074584885069442355.a n = A338490 (n + 1)

theorem P6074584885069442355.correct : P6074584885069442355.Spec := by
  intro n
  simp only [A338490, Nat.add_sub_cancel]

end A338490

/-! ## A338490.P18240125439590513974

`∑{p}[n+1, A338101(#)]`
-/

namespace A338490.P18240125439590513974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A338101 p

end

end A338490.P18240125439590513974

namespace A338490

/-- `∑{p}[n+1, A338101(#)]` -/
def P18240125439590513974.Spec : Prop :=
  ∀ n, P18240125439590513974.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P10907091718341308882

`A066328(2*(n+1))-1`
-/

namespace A338490.P10907091718341308882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * (n + 1)) - 1

end

end A338490.P10907091718341308882

namespace A338490

/-- `A066328(2*(n+1))-1` -/
def P10907091718341308882.Spec : Prop :=
  ∀ n, P10907091718341308882.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P1631078464473020060

`abs(A066328(n+1)-n%2)`
-/

namespace A338490.P1631078464473020060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066328 (n + 1) - ((n % 2 : ℕ) : ℤ)|

end

end A338490.P1631078464473020060

namespace A338490

/-- `abs(A066328(n+1)-n%2)` -/
def P1631078464473020060.Spec : Prop :=
  ∀ n, P1631078464473020060.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P9654335629144487422

`row(C(A066328(2*n+2), 2))`
-/

namespace A338490.P9654335629144487422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (Nat.choose (A066328 (2 * n + 2)).toNat 2)

end

end A338490.P9654335629144487422

namespace A338490

/-- `row(C(A066328(2*n+2), 2))` -/
def P9654335629144487422.Spec : Prop :=
  ∀ n, (P9654335629144487422.a n : ℤ) = A338490 (n + 1)

end A338490

/-! ## A338490.P11773284394722219295

`∑{p}[2*(n+1), A000720(#)]-1`
-/

namespace A338490.P11773284394722219295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000720 p - 1

end

end A338490.P11773284394722219295

namespace A338490

/-- `∑{p}[2*(n+1), A000720(#)]-1` -/
def P11773284394722219295.Spec : Prop :=
  ∀ n, P11773284394722219295.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P7845754094961747003

`∑{p}[2*(n+1), A290103(#)]-1`
-/

namespace A338490.P7845754094961747003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A290103 p - 1

end

end A338490.P7845754094961747003

namespace A338490

/-- `∑{p}[2*(n+1), A290103(#)]-1` -/
def P7845754094961747003.Spec : Prop :=
  ∀ n, P7845754094961747003.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P521325772458229395

`A056239(∏{p}[2*(n+1), #]/2)`
-/

namespace A338490.P521325772458229395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2)).toNat

end

end A338490.P521325772458229395

namespace A338490

/-- `A056239(∏{p}[2*(n+1), #]/2)` -/
def P521325772458229395.Spec : Prop :=
  ∀ n, P521325772458229395.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P10545185083854352100

`A066328((n+1)/2^val(n+1, 2))`
-/

namespace A338490.P10545185083854352100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A338490.P10545185083854352100

namespace A338490

/-- `A066328((n+1)/2^val(n+1, 2))` -/
def P10545185083854352100.Spec : Prop :=
  ∀ n, P10545185083854352100.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P3200912251561270860

`A056239(A204455(n+1))`
-/

namespace A338490.P3200912251561270860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A204455 (n + 1)).toNat

end

end A338490.P3200912251561270860

namespace A338490

/-- `A056239(A204455(n+1))` -/
def P3200912251561270860.Spec : Prop :=
  ∀ n, P3200912251561270860.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P13092892834714671354

`A056239(A007947(2*(n+1))/2)`
-/

namespace A338490.P13092892834714671354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A338490.P13092892834714671354

namespace A338490

/-- `A056239(A007947(2*(n+1))/2)` -/
def P13092892834714671354.Spec : Prop :=
  ∀ n, P13092892834714671354.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P1604592228841590663

`A066328(A007947(2*(n+1))/2)`
-/

namespace A338490.P1604592228841590663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A338490.P1604592228841590663

namespace A338490

/-- `A066328(A007947(2*(n+1))/2)` -/
def P1604592228841590663.Spec : Prop :=
  ∀ n, P1604592228841590663.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P1061400650408971031

`A066328(A028234(2*(n+1)))`
-/

namespace A338490.P1061400650408971031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A028234 (2 * (n + 1))).toNat

end

end A338490.P1061400650408971031

namespace A338490

/-- `A066328(A028234(2*(n+1)))` -/
def P1061400650408971031.Spec : Prop :=
  ∀ n, P1061400650408971031.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P1192375016728003375

`A056239(A007947(2*(n+1)))-1`
-/

namespace A338490.P1192375016728003375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A007947 (2 * (n + 1))).toNat - 1

end

end A338490.P1192375016728003375

namespace A338490

/-- `A056239(A007947(2*(n+1)))-1` -/
def P1192375016728003375.Spec : Prop :=
  ∀ n, P1192375016728003375.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P8368860804355629451

`A066328(A191871(n+1))`
-/

namespace A338490.P8368860804355629451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A191871 (n + 1)).toNat

end

end A338490.P8368860804355629451

namespace A338490

/-- `A066328(A191871(n+1))` -/
def P8368860804355629451.Spec : Prop :=
  ∀ n, P8368860804355629451.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P6491545121960229883

`A066328(A276234(n+1)²)`
-/

namespace A338490.P6491545121960229883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A276234 (n + 1) ^ 2).toNat

end

end A338490.P6491545121960229883

namespace A338490

/-- `A066328(A276234(n+1)²)` -/
def P6491545121960229883.Spec : Prop :=
  ∀ n, P6491545121960229883.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P12961793903509499495

`A066328(A083346(A007947(n+1)²))`
-/

namespace A338490.P12961793903509499495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A083346 (A007947 (n + 1) ^ 2).toNat).toNat

end

end A338490.P12961793903509499495

namespace A338490

/-- `A066328(A083346(A007947(n+1)²))` -/
def P12961793903509499495.Spec : Prop :=
  ∀ n, P12961793903509499495.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P15802444027842189863

`A333842(A328407(n+1))`
-/

namespace A338490.P15802444027842189863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (A328407 (n + 1)).toNat

end

end A338490.P15802444027842189863

namespace A338490

/-- `A333842(A328407(n+1))` -/
def P15802444027842189863.Spec : Prop :=
  ∀ n, P15802444027842189863.a n = A338490 (n + 1)

end A338490

/-! ## A338490.P5676226677508568388

`A333842((2*(n+1))²)-1`
-/

namespace A338490.P5676226677508568388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 ((2 * (n + 1)) ^ 2) - 1

end

end A338490.P5676226677508568388

namespace A338490

/-- `A333842((2*(n+1))²)-1` -/
def P5676226677508568388.Spec : Prop :=
  ∀ n, P5676226677508568388.a n = A338490 (n + 1)

end A338490

/-!
# A338491: Least number of centered pentagonal numbers needed to represent n.

The programs for A338491, there is no canonical definition to state claims against.
-/

/-! ## A338491.P18196122816982806660

`A101402(p?[Δ[A101412(n+1)²]])`
-/

namespace A338491.P18196122816982806660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338491.P18196122816982806660

/-! ## A338491.P904636817600275568

`A126760(p?[Δ[A101412(n+1)²]])`
-/

namespace A338491.P904636817600275568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338491.P904636817600275568

/-! ## A338491.P13413279438091147194

`A000720(p?[Δ[A101412(n+1)²]]-1)`
-/

namespace A338491.P13413279438091147194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A338491.P13413279438091147194

/-! ## A338491.P16309744884156394338

`A049084(p?[Δ[A101412(n+1)²]])-1`
-/

namespace A338491.P16309744884156394338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A338491.P16309744884156394338

/-! ## A338491.P820874919839562829

`A328879(p?[Δ[A101412(n+1)²]])-2`
-/

namespace A338491.P820874919839562829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328879 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 2

end

end A338491.P820874919839562829

/-!
# A338492: Least number of centered heptagonal numbers needed to represent n.

The programs for A338492, there is no canonical definition to state claims against.
-/

/-! ## A338492.P2440329680517507271

`A101412(record[Δ[A101412(n+1)]+n])`
-/

namespace A338492.P2440329680517507271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338492.P2440329680517507271

/-! ## A338492.P5231490552555147004

`A101412(eq[1, Δ[A101412(n+1)]]+1)`
-/

namespace A338492.P5231490552555147004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A338492.P5231490552555147004

/-! ## A338492.P12642522047105534138

`A101412(lt[A263765(n), A101412(n+1)])`
-/

namespace A338492.P12642522047105534138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338492.P12642522047105534138

/-! ## A338492.P3317527709606727991

`A101412(eq[A101412(n+1)+1, A101412(n+2)]+1)`
-/

namespace A338492.P3317527709606727991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A338492.P3317527709606727991

/-! ## A338492.P11893376115888335265

`A053829(A053829(∑[a(n-1)+21]))` with `a(0)=1, a(1)=1`
-/

namespace A338492.P11893376115888335265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A053829 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338492.P11893376115888335265

/-!
# A338493: Least number of square pyramidal numbers needed to represent n.

The programs for A338493, there is no canonical definition to state claims against.
-/

/-! ## A338493.P7474804106906526078

`A280053(n+1)+A010815(A000290(3*(n+1)))`
-/

namespace A338493.P7474804106906526078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280053 (n + 1) + A010815 (A000290 (3 * (n + 1))).toNat

end

end A338493.P7474804106906526078

/-!
# A338497: Least number of odd cubes needed to represent n.

The programs for A338497, there is no canonical definition to state claims against.
-/

/-! ## A338497.P7061692358827916601

`∑[2-27^val(n+1, 27)]`
-/

namespace A338497.P7061692358827916601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (27 ^ SequenceMachineLib.valuation (n + 1) 27 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338497.P7061692358827916601

/-! ## A338497.P14468191557252512697

`floor((n+1)/27)+(n+1)%27`
-/

namespace A338497.P14468191557252512697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 27⌋ + (((n + 1) % 27 : ℕ) : ℤ)

end

end A338497.P14468191557252512697

/-! ## A338497.P10216950410584039393

`∑[2-A008834(A000265(n+1))]`
-/

namespace A338497.P10216950410584039393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A008834 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338497.P10216950410584039393

/-! ## A338497.P1257285482960799464

`∑[2-A030101(A008834(n+1))]`
-/

namespace A338497.P1257285482960799464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A030101 (A008834 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338497.P1257285482960799464

/-! ## A338497.P15111095522737610614

`∑[2-A000265(A327939(n+1))]`
-/

namespace A338497.P15111095522737610614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000265 (A327939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338497.P15111095522737610614

/-! ## A338497.P4594770905260901767

`∑[2-A327939(A065883(n+1))]`
-/

namespace A338497.P4594770905260901767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A327939 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338497.P4594770905260901767

/-! ## A338497.P10718192900741204403

`(a(n-1)+1)%A245950(A006530(n+1))` with `a(0)=1`
-/

namespace A338497.P10718192900741204403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A245950 (A006530 (n + 1)).toNat)

end

end A338497.P10718192900741204403

/-! ## A338497.P8577737766801978716

`∑[2-A181721(gcd(n+1, A181721(n+1)))]`
-/

namespace A338497.P8577737766801978716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A181721 (Int.gcd (n + 1 : ℤ) (A181721 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338497.P8577737766801978716

/-!
# A338498: a(n) is the square root of n AND A335615(n) (where AND denotes the bitwise AND operator).

The programs for A338498, there is no canonical definition to state claims against.
-/

/-! ## A338498.P7321625225211633450

`sqrt(and(n, A335615(n)))`
-/

namespace A338498.P7321625225211633450
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land (n : ℤ) (A335615 n) : ℝ)

end

end A338498.P7321625225211633450

/-! ## A338498.P7123831801724995047

`A000196(and(n, A335615(n)))`
-/

namespace A338498.P7123831801724995047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.land (n : ℤ) (A335615 n)).toNat

end

end A338498.P7123831801724995047

/-! ## A338498.P7906173704567171488

`A018851(and(n, A335615(n)))`
-/

namespace A338498.P7906173704567171488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (Int.land (n : ℤ) (A335615 n)).toNat

end

end A338498.P7906173704567171488

/-! ## A338498.P9376290471291469232

`A037213(and(n, A335615(n)))`
-/

namespace A338498.P9376290471291469232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (Int.land (n : ℤ) (A335615 n)).toNat

end

end A338498.P9376290471291469232

/-! ## A338498.P17848500567060750301

`A056926(and(n, A335615(n)))`
-/

namespace A338498.P17848500567060750301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.land (n : ℤ) (A335615 n)).toNat

end

end A338498.P17848500567060750301

/-! ## A338498.P3607532050640925972

`A067693(and(n, A335615(n)))`
-/

namespace A338498.P3607532050640925972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (Int.land (n : ℤ) (A335615 n)).toNat

end

end A338498.P3607532050640925972

/-!
# A338499: Fixed points of A335615.

The programs for A338499, there is no canonical definition to state claims against.
-/

/-! ## A338499.P14714837945479891629

`eq[n, A335615(n)]`
-/

namespace A338499.P14714837945479891629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335615 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338499.P14714837945479891629

/-! ## A338499.P17741171569703605210

`eq[n, A338498(n)²]`
-/

namespace A338499.P17741171569703605210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338498 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338499.P17741171569703605210

/-! ## A338499.P15401705396252413533

`eq[A018851(n), A338498(n)]`
-/

namespace A338499.P15401705396252413533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338499.P15401705396252413533

/-! ## A338499.P14641965087722056355

`eq[A038690(n), A338498(n)]`
-/

namespace A338499.P14641965087722056355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338499.P14641965087722056355

/-! ## A338499.P2727037172848716980

`eq[A063772(n), A338498(n)]`
-/

namespace A338499.P2727037172848716980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338499.P2727037172848716980

