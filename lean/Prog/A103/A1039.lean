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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A103903: Square array T(n,k) read by antidiagonals: coordination sequence for lattice D_n.

The programs for A103903, there is no canonical definition to state claims against.
-/

/-! ## A103903.P5442468629417210255

`A028628(A329697((n+1)^n))`
-/

namespace A103903.P5442468629417210255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028628 (A329697 ((n + 1) ^ n)).toNat

end

end A103903.P5442468629417210255

/-! ## A103903.P10136506178523313831

`A144463(A029960(3*(n+1))+4)`
-/

namespace A103903.P10136506178523313831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144463 (A029960 (3 * (n + 1)) + 4).toNat

end

end A103903.P10136506178523313831

/-!
# A103904: a(n) = n*(n-1)/2 * 2^(n*(n-1)/2).

The programs for A103904, there is no canonical definition to state claims against.
-/

/-! ## A103904.P9071175592404120344

`2*A095351(n+1)`
-/

namespace A103904.P9071175592404120344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095351 (n + 1)

end

end A103904.P9071175592404120344

/-! ## A103904.P12853790119788704953

`2^∑[n]*∑[n]`
-/

namespace A103904.P12853790119788704953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A103904.P12853790119788704953

/-! ## A103904.P1929785055239409667

`A036289(∑[n])`
-/

namespace A103904.P1929785055239409667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103904.P1929785055239409667

/-! ## A103904.P702748362205160222

`A097064(∑[n]+1)`
-/

namespace A103904.P702748362205160222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A103904.P702748362205160222

/-! ## A103904.P13612008059725546205

`A002064(∑[n])-1`
-/

namespace A103904.P13612008059725546205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A103904.P13612008059725546205

/-!
# A103905: Square array T(n,k) read by antidiagonals: number of tilings of an hexagon.

The programs for A103905, there is no canonical definition to state claims against.
-/

/-! ## A103905.P882934522759675789

`A120258(comp[∑[n+1]])`
-/

namespace A103905.P882934522759675789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120258 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A103905.P882934522759675789

/-! ## A103905.P3880303878609540667

`and(-1, A120258(comp[∑[n-1]]))`
-/

namespace A103905.P3880303878609540667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A120258 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A103905.P3880303878609540667

/-! ## A103905.P1006108033681060029

`(n%2)!*A120258(A002024(n+1)+n)`
-/

namespace A103905.P1006108033681060029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A120258 (A002024 (n + 1) + (n : ℤ)).toNat

end

end A103905.P1006108033681060029

/-! ## A103905.P5429684934187876726

`A120258(A007401(n+1))%A016938(n)`
-/

namespace A103905.P5429684934187876726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120258 (A007401 (n + 1)).toNat) (A016938 n)

end

end A103905.P5429684934187876726

/-! ## A103905.P11730524883750179114

`lcm(A033999(n), A120258(A007401(n+1)))`
-/

namespace A103905.P11730524883750179114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A120258 (A007401 (n + 1)).toNat)

end

end A103905.P11730524883750179114

/-!
# A103910: Triangle T read by rows: inverse of fibonomial triangle (A010048).

The programs for A103910, there is no canonical definition to state claims against.
-/

/-! ## A103910.P186159817363814653

`A010048(n)*A103995(A004736(n+1))`
-/

namespace A103910.P186159817363814653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n * A103995 (A004736 (n + 1)).toNat

end

end A103910.P186159817363814653

/-! ## A103910.P2098661770861973607

`A010048(n)*A103995(A025581(n)+1)`
-/

namespace A103910.P2098661770861973607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 n * A103995 (A025581 n + 1).toNat

end

end A103910.P2098661770861973607

/-! ## A103910.P15982835533015772885

`abs(A055870(n))*A103995(A004736(n+1))`
-/

namespace A103910.P15982835533015772885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055870 n| * A103995 (A004736 (n + 1)).toNat

end

end A103910.P15982835533015772885

/-! ## A103910.P7804409700205542547

`Δ[A087116(A000217(A131222(n)))]`
-/

namespace A103910.P7804409700205542547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A000217 (A131222 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103910.P7804409700205542547

/-! ## A103910.P17132222868709968843

`A055138(n)+A025466(A286198(n))`
-/

namespace A103910.P17132222868709968843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055138 n + A025466 (A286198 n).toNat

end

end A103910.P17132222868709968843

/-!
# A103916: Column k=2 sequence (without zero entries) of table A060524.

The programs for A103916, there is no canonical definition to state claims against.
-/

/-! ## A103916.P704653547067605260

`record[A060524(∑[n]+2)]`
-/

namespace A103916.P704653547067605260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103916.P704653547067605260

/-! ## A103916.P15287328301795800600

`record[A060338(∑[n+3])]`
-/

namespace A103916.P15287328301795800600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103916.P15287328301795800600

/-! ## A103916.P3243351586685517925

`A060338((2*n+1)*(n+3))`
-/

namespace A103916.P3243351586685517925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 ((2 * n + 1) * (n + 3))

end

end A103916.P3243351586685517925

/-! ## A103916.P7243136323422674247

`A060524(A096376(n+1))`
-/

namespace A103916.P7243136323422674247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A096376 (n + 1)).toNat

end

end A103916.P7243136323422674247

/-! ## A103916.P10252009621777582320

`A060524(eq[4, A130125(n)])`
-/

namespace A103916.P10252009621777582320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103916.P10252009621777582320

/-!
# A103917: Column k=3 sequence (without zero entries) of table A060524.

The programs for A103917, there is no canonical definition to state claims against.
-/

/-! ## A103917.P6807672485308500686

`record[A060524(∑[n]+3)]`
-/

namespace A103917.P6807672485308500686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103917.P6807672485308500686

/-! ## A103917.P14258803731056823673

`A060524(A100037(n+2))`
-/

namespace A103917.P14258803731056823673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A100037 (n + 2)).toNat

end

end A103917.P14258803731056823673

/-! ## A103917.P15603688390998028948

`A060524(A100038(n+1)-2)`
-/

namespace A103917.P15603688390998028948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A100038 (n + 1) - 2).toNat

end

end A103917.P15603688390998028948

/-! ## A103917.P7908120771391165913

`A060524(A167614(2*(n+1)))`
-/

namespace A103917.P7908120771391165913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A167614 (2 * (n + 1))).toNat

end

end A103917.P7908120771391165913

/-!
# A103918: Column k=4 sequence (without zero entries) of table A060524.

The programs for A103918, there is no canonical definition to state claims against.
-/

/-! ## A103918.P15901089376526965018

`A060524(eq[16, A130125(n)])`
-/

namespace A103918.P15901089376526965018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103918.P15901089376526965018

/-! ## A103918.P1112777024510444170

`A060524(eq[5, A140756(n+1)])`
-/

namespace A103918.P1112777024510444170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103918.P1112777024510444170

/-! ## A103918.P14713933868662878485

`A060524(A167614(2*n+3)+1)`
-/

namespace A103918.P14713933868662878485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A167614 (2 * n + 3) + 1).toNat

end

end A103918.P14713933868662878485

/-! ## A103918.P2741573176641879433

`A060524(A000217(2*(n+2))+4)`
-/

namespace A103918.P2741573176641879433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A000217 (2 * (n + 2)) + 4).toNat

end

end A103918.P2741573176641879433

/-! ## A103918.P13674350342972331553

`A060524(A100038(n+1)+2*n+3)`
-/

namespace A103918.P13674350342972331553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060524 (A100038 (n + 1) + (2 * n + 3 : ℤ)).toNat

end

end A103918.P13674350342972331553

/-!
# A103919: Triangle of numbers of partitions of n with total number of odd parts equal to k from {0,...,n}.

The programs for A103919, there is no canonical definition to state claims against.
-/

/-! ## A103919.P10687020720823370613

`A007302(lcm(A145972(n), A282252(n)))`
-/

namespace A103919.P10687020720823370613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Int.lcm (A145972 n) (A282252 n))

end

end A103919.P10687020720823370613

/-! ## A103919.P2214986176136305144

`A007302(A033273(n+1)*A282252(n))`
-/

namespace A103919.P2214986176136305144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A033273 (n + 1) * A282252 n).toNat

end

end A103919.P2214986176136305144

/-! ## A103919.P3350351838683473540

`A007302(A282252(n)*A295279(n+1))`
-/

namespace A103919.P3350351838683473540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A282252 n * A295279 (n + 1)).toNat

end

end A103919.P3350351838683473540

/-! ## A103919.P16803690932420786999

`and(A099174(n), A319416(A327126(n)))`
-/

namespace A103919.P16803690932420786999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099174 n) (A319416 (A327126 n).toNat)

end

end A103919.P16803690932420786999

/-! ## A103919.P15687202508243644029

`A000120(A099239(n)*A282252(n))`
-/

namespace A103919.P15687202508243644029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A099239 n * A282252 n).toNat

end

end A103919.P15687202508243644029

/-!
# A103920: Central numbers in triangle A103728.

The programs for A103920, there is no canonical definition to state claims against.
-/

/-! ## A103920.P9446309197732499968

`A103728(A073612(n+2))`
-/

namespace A103920.P9446309197732499968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103728 (A073612 (n + 2)).toNat

end

end A103920.P9446309197732499968

/-! ## A103920.P13635601975970359573

`A103728(A283623(n+1)+A007504(n))`
-/

namespace A103920.P13635601975970359573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103728 (A283623 (n + 1) + A007504 n).toNat

end

end A103920.P13635601975970359573

/-!
# A103921: Irregular triangle T(n,m) (n >= 0) read by rows: row n lists numbers of distinct parts of partitions of n in Abramowitz-Stegun order.

The programs for A103921, there is no canonical definition to state claims against.
-/

/-! ## A103921.P10974964218341299085

`A001221(A185974(n))`
-/

namespace A103921.P10974964218341299085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A185974 n).toNat

end

end A103921.P10974964218341299085

/-! ## A103921.P4961764249982514140

`∑{p}[A185974(n), A000001(#)]`
-/

namespace A103921.P4961764249982514140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000001 p

end

end A103921.P4961764249982514140

/-! ## A103921.P6941121565619337285

`∑{p}[A185974(n), A000188(#)]`
-/

namespace A103921.P6941121565619337285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A103921.P6941121565619337285

/-! ## A103921.P2233498186942037912

`∑{p}[A185974(n), A001222(#)]`
-/

namespace A103921.P2233498186942037912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A103921.P2233498186942037912

/-! ## A103921.P1402312917124844121

`∑{p}[A185974(n), A009194(#)]`
-/

namespace A103921.P1402312917124844121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A009194 p

end

end A103921.P1402312917124844121

/-! ## A103921.P5971635624039628231

`A001222(∏{p}[A185974(n), #])`
-/

namespace A103921.P5971635624039628231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A103921.P5971635624039628231

/-! ## A103921.P3816355139527979113

`∑{d}[A185974(n), A010051(#)]`
-/

namespace A103921.P3816355139527979113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A103921.P3816355139527979113

/-! ## A103921.P16450539073236066485

`A001221(A334434(n))`
-/

namespace A103921.P16450539073236066485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A334434 n).toNat

end

end A103921.P16450539073236066485

/-! ## A103921.P15354131781147049226

`A001221(gcd(A227955(n), A344122(n+2)))`
-/

namespace A103921.P15354131781147049226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A227955 n) (A344122 (n + 2)))

end

end A103921.P15354131781147049226

/-! ## A103921.P12702942203005239701

`A001221(∏{p}[A344122(n+2)/2, #])-1`
-/

namespace A103921.P12702942203005239701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344122 (n + 2) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) - 1

end

end A103921.P12702942203005239701

/-! ## A103921.P871688204200927492

`∑{p}[A344122(n+2), A000035(#)]`
-/

namespace A103921.P871688204200927492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 p

end

end A103921.P871688204200927492

/-! ## A103921.P5159494371243719486

`∑{p}[A344122(n+2), A035263(#)]`
-/

namespace A103921.P5159494371243719486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A035263 p

end

end A103921.P5159494371243719486

/-! ## A103921.P914167222854696220

`∑{p}[A344122(n+2), A087436(#)]`
-/

namespace A103921.P914167222854696220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087436 p

end

end A103921.P914167222854696220

/-! ## A103921.P11939905445223093967

`∑{p}[A344122(n+2), A322811(#)]`
-/

namespace A103921.P11939905445223093967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A322811 p

end

end A103921.P11939905445223093967

/-! ## A103921.P10599017203528334095

`A087436(∏{p}[A344122(n+2), #])`
-/

namespace A103921.P10599017203528334095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A103921.P10599017203528334095

/-! ## A103921.P4863911623245010159

`A001222(∏{p}[A344122(n+2), #])-1`
-/

namespace A103921.P4863911623245010159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) - 1

end

end A103921.P4863911623245010159

/-! ## A103921.P3181046311755350250

`∑{e}[A344122(n+2), A271837(#)]-1`
-/

namespace A103921.P3181046311755350250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A271837 (Nat.factorization (f1 n).natAbs p) - 1

end

end A103921.P3181046311755350250

/-! ## A103921.P7261499267469040293

`A001221(∏{p}[A344122(n+2), #]/2)`
-/

namespace A103921.P7261499267469040293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / 2)).toNat

end

end A103921.P7261499267469040293

/-! ## A103921.P14411642044808290268

`A001222(∏{p}[A344122(n+2), #]/2)`
-/

namespace A103921.P14411642044808290268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / 2)).toNat

end

end A103921.P14411642044808290268

/-! ## A103921.P12961938066429501131

`A001221(∏{p}[A344122(n+2), A000265(#)])`
-/

namespace A103921.P12961938066429501131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344122 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p).toNat

end

end A103921.P12961938066429501131

/-!
# A103923: Triangle of partitions of n with parts of sizes 1,2,...,m, each of two different kinds, m>=1.

The programs for A103923, there is no canonical definition to state claims against.
-/

/-! ## A103923.P18245053515641040081

`A103919(A128116(n+2)+n)`
-/

namespace A103923.P18245053515641040081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A128116 (n + 2) + (n : ℤ)).toNat

end

end A103923.P18245053515641040081

/-! ## A103923.P4995106547885047994

`A344651(A163255(n+1)-1)`
-/

namespace A103923.P4995106547885047994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (A163255 (n + 1) - 1).toNat

end

end A103923.P4995106547885047994

/-! ## A103923.P4770768723436065915

`A235402(A209164(n+1))`
-/

namespace A103923.P4770768723436065915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A209164 (n + 1)).toNat

end

end A103923.P4770768723436065915

/-! ## A103923.P5073441313367474279

`A301461(A131249(n)+2)`
-/

namespace A103923.P5073441313367474279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301461 (A131249 n + 2).toNat

end

end A103923.P5073441313367474279

/-! ## A103923.P6763549199576754263

`A274011(A112339(n+3))`
-/

namespace A103923.P6763549199576754263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274011 (A112339 (n + 3)).toNat

end

end A103923.P6763549199576754263

/-!
# A103924: Number of partitions of n into parts but with two kinds of parts of sizes 1,2,3,4 and 5.

The programs for A103924, there is no canonical definition to state claims against.
-/

/-! ## A103924.P17363946678572437918

`A239829(∑[n+2]+4)`
-/

namespace A103924.P17363946678572437918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A103924.P17363946678572437918

/-! ## A103924.P2770640316937993490

`or(char[2], A239829(A167614(n+1)))`
-/

namespace A103924.P2770640316937993490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239829 (A167614 (n + 1)).toNat)

end

end A103924.P2770640316937993490

/-! ## A103924.P1217499939721051108

`or(char[2], A239829(A046691(n)+7))`
-/

namespace A103924.P1217499939721051108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239829 (A046691 n + 7).toNat)

end

end A103924.P1217499939721051108

/-! ## A103924.P6964664059785125495

`xor(1, xor(1, A239829(A167499(n)+n)))`
-/

namespace A103924.P6964664059785125495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A239829 (A167499 n + (n : ℤ)).toNat))

end

end A103924.P6964664059785125495

/-! ## A103924.P2460838158060054969

`A239829(A055998(n)+6)^((n+2)%(n+1))`
-/

namespace A103924.P2460838158060054969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (A055998 n + 6).toNat ^ ((n + 2) % (n + 1))

end

end A103924.P2460838158060054969

/-! ## A103924.P2545787839595987541

`gcd(A000038(n), A239829(A167499(n)+n))`
-/

namespace A103924.P2545787839595987541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A239829 (A167499 n + (n : ℤ)).toNat)

end

end A103924.P2545787839595987541

/-! ## A103924.P10012287432076794539

`char[A105025(n)]*A239829(A046691(n)+7)`
-/

namespace A103924.P10012287432076794539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105025 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A239829 (A046691 n + 7).toNat

end

end A103924.P10012287432076794539

/-! ## A103924.P5444011801205164104

`A239829(A167614(n+1))+A000007(n+1)`
-/

namespace A103924.P5444011801205164104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A103924.P5444011801205164104

/-! ## A103924.P15233570664665257175

`A239829(A167614(n+1))+A000035(2*n)`
-/

namespace A103924.P15233570664665257175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A103924.P15233570664665257175

/-! ## A103924.P9647505392516181054

`A007318(C(2, n))*A239829(A167614(n+1))`
-/

namespace A103924.P9647505392516181054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A239829 (A167614 (n + 1)).toNat

end

end A103924.P9647505392516181054

/-! ## A103924.P16257769655263725624

`A007318(C(2, n))*A239829(A046691(n)+7)`
-/

namespace A103924.P16257769655263725624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A239829 (A046691 n + 7).toNat

end

end A103924.P16257769655263725624

/-! ## A103924.P4954386958263005323

`A007318(C(2, n))*A239829(A167499(n)+n)`
-/

namespace A103924.P4954386958263005323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A239829 (A167499 n + (n : ℤ)).toNat

end

end A103924.P4954386958263005323

/-! ## A103924.P5723574874401189623

`ceil(1/A000041(n))*A239829(A046691(n)+7)`
-/

namespace A103924.P5723574874401189623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A239829 (A046691 n + 7).toNat

end

end A103924.P5723574874401189623

/-! ## A103924.P2706046258526784044

`A007318(and(1, -n))*A239829(A167499(n)+n)`
-/

namespace A103924.P2706046258526784044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A239829 (A167499 n + (n : ℤ)).toNat

end

end A103924.P2706046258526784044

/-! ## A103924.P2032352166710082364

`A239829(A167614(n+1))+A008683(4*(n+1))`
-/

namespace A103924.P2032352166710082364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (A167614 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A103924.P2032352166710082364

/-! ## A103924.P10303258709042784044

`A014963(6*(n+1))*A239829(A167614(n+1))`
-/

namespace A103924.P10303258709042784044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A239829 (A167614 (n + 1)).toNat

end

end A103924.P10303258709042784044

/-! ## A103924.P13394632765252018665

`A239829(A167614(n+1))^A014963(C(n+3, 2))`
-/

namespace A103924.P13394632765252018665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239829 (A167614 (n + 1)).toNat : ℚ) ^ (A014963 (Nat.choose (n + 3) 2) : ℤ)

end

end A103924.P13394632765252018665

/-! ## A103924.P6401211450768325458

`A239829(A167614(n+1))^A000041(C(2, 2*n+1))`
-/

namespace A103924.P6401211450768325458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239829 (A167614 (n + 1)).toNat : ℚ) ^ (A000041 (Nat.choose 2 (2 * n + 1)) : ℤ)

end

end A103924.P6401211450768325458

/-! ## A103924.P12634750071434422223

`A239829(A046691(n)+7)/A000045(gcd(n+1, 2*n))`
-/

namespace A103924.P12634750071434422223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239829 (A046691 n + 7).toNat : ℚ) / (A000045 (Nat.gcd (n + 1) (2 * n)) : ℚ)

end

end A103924.P12634750071434422223

/-! ## A103924.P9536615372096698157

`A239829(A046691(n)+7)^A014963(A016825(n))`
-/

namespace A103924.P9536615372096698157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239829 (A046691 n + 7).toNat : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A103924.P9536615372096698157

/-!
# A103925: Number of partitions of n into parts but with two kinds of parts of sizes 1,2,3,4,5 and 6.

The programs for A103925, there is no canonical definition to state claims against.
-/

/-! ## A103925.P12658202653539453917

`A239830(∑[n+3]+6)`
-/

namespace A103925.P12658202653539453917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A103925.P12658202653539453917

/-! ## A103925.P11428757824621757936

`or(char[2], A239830(A167614(n+2)))`
-/

namespace A103925.P11428757824621757936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239830 (A167614 (n + 2)).toNat)

end

end A103925.P11428757824621757936

/-! ## A103925.P10370098432602451672

`gcd(A000038(n), A239830(A167614(n+2)))`
-/

namespace A103925.P10370098432602451672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A239830 (A167614 (n + 2)).toNat)

end

end A103925.P10370098432602451672

/-! ## A103925.P10933289702466145554

`A033999(n)²*A239830(A167614(n+2))`
-/

namespace A103925.P10933289702466145554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A239830 (A167614 (n + 2)).toNat

end

end A103925.P10933289702466145554

/-! ## A103925.P12170746875336084607

`char[A004469(n)]*A239830(A167614(n+2))`
-/

namespace A103925.P12170746875336084607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004469 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A239830 (A167614 (n + 2)).toNat

end

end A103925.P12170746875336084607

/-! ## A103925.P16083378790538941557

`A007318(C(2, n))*A239830(A167614(n+2))`
-/

namespace A103925.P16083378790538941557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A239830 (A167614 (n + 2)).toNat

end

end A103925.P16083378790538941557

/-! ## A103925.P14274075450596792738

`lcm(A000108(C(2, n)), A239830(A167614(n+2)))`
-/

namespace A103925.P14274075450596792738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000108 (Nat.choose 2 n)) (A239830 (A167614 (n + 2)).toNat)

end

end A103925.P14274075450596792738

/-! ## A103925.P17550703006057643023

`A007318(and(3, -n))*A239830(A167614(n+2))`
-/

namespace A103925.P17550703006057643023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A239830 (A167614 (n + 2)).toNat

end

end A103925.P17550703006057643023

/-! ## A103925.P17416422053016516601

`A239830(A167614(n+2))^A007318(C(n, n²))`
-/

namespace A103925.P17416422053016516601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239830 (A167614 (n + 2)).toNat : ℚ) ^ (A007318 (Nat.choose n (n ^ 2)) : ℤ)

end

end A103925.P17416422053016516601

/-! ## A103925.P4483748289597488669

`A239830(A167614(n+2))+A014349(2*n+1)`
-/

namespace A103925.P4483748289597488669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A167614 (n + 2)).toNat + A014349 (2 * n + 1)

end

end A103925.P4483748289597488669

/-! ## A103925.P115515633801250698

`A014963(6*(n+1))*A239830(A167614(n+2))`
-/

namespace A103925.P115515633801250698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A239830 (A167614 (n + 2)).toNat

end

end A103925.P115515633801250698

/-! ## A103925.P12581782054347920154

`A000041(C(2, n+2))*A239830(A167614(n+2))`
-/

namespace A103925.P12581782054347920154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A239830 (A167614 (n + 2)).toNat

end

end A103925.P12581782054347920154

/-! ## A103925.P6879221928670846911

`A239830(A167614(n+2))/A007318(C(2, n+2))`
-/

namespace A103925.P6879221928670846911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239830 (A167614 (n + 2)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A103925.P6879221928670846911

/-! ## A103925.P12791714153849618425

`A239830(A167614(n+2))+C(A001222(n+1), 8)`
-/

namespace A103925.P12791714153849618425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A167614 (n + 2)).toNat + (Nat.choose (A001222 (n + 1)).toNat 8 : ℤ)

end

end A103925.P12791714153849618425

/-! ## A103925.P4580701846882238874

`A239830(A167614(n+2))^and(1, A000040(n+1))`
-/

namespace A103925.P4580701846882238874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239830 (A167614 (n + 2)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A103925.P4580701846882238874

/-! ## A103925.P14125882566573810240

`A000108(gcd(n, n+1))*A239830(A167614(n+2))`
-/

namespace A103925.P14125882566573810240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A239830 (A167614 (n + 2)).toNat

end

end A103925.P14125882566573810240

/-! ## A103925.P17751267352821475156

`A000010(ceil(1/(n+1)))*A239830(A167614(n+2))`
-/

namespace A103925.P17751267352821475156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat * A239830 (A167614 (n + 2)).toNat

end

end A103925.P17751267352821475156

/-! ## A103925.P13189034032871885896

`A000032(ceil(1/(n+1)))*A239830(A167614(n+2))`
-/

namespace A103925.P13189034032871885896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌈1 / (n + 1 : ℚ)⌉.toNat * A239830 (A167614 (n + 2)).toNat

end

end A103925.P13189034032871885896

/-! ## A103925.P11665959518550751028

`A008835(A000040(n+1))*A239830(A167614(n+2))`
-/

namespace A103925.P11665959518550751028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A000040 (n + 1)).toNat * A239830 (A167614 (n + 2)).toNat

end

end A103925.P11665959518550751028

/-!
# A103926: Number of partitions of n into parts but with two kinds of parts of sizes 1 to 7.

The programs for A103926, there is no canonical definition to state claims against.
-/

/-! ## A103926.P7266857418608432052

`A239829(∑[n+3]+7)`
-/

namespace A103926.P7266857418608432052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A103926.P7266857418608432052

/-! ## A103926.P1201275357760949073

`or(char[2], A239829(A055999(n)+10))`
-/

namespace A103926.P1201275357760949073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239829 (A055999 n + 10).toNat)

end

end A103926.P1201275357760949073

/-! ## A103926.P234968054586064082

`A239829(A055999(n)+10)%A016794(n)`
-/

namespace A103926.P234968054586064082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239829 (A055999 n + 10).toNat) (A016794 n)

end

end A103926.P234968054586064082

/-! ## A103926.P12496399522666204075

`char[A006370(n)]*A239829(A055999(n)+10)`
-/

namespace A103926.P12496399522666204075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A239829 (A055999 n + 10).toNat

end

end A103926.P12496399522666204075

/-! ## A103926.P16876289684855841245

`char[A137936(n)]*A239829(A055999(n)+10)`
-/

namespace A103926.P16876289684855841245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137936 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A239829 (A055999 n + 10).toNat

end

end A103926.P16876289684855841245

/-! ## A103926.P11625794392639379121

`A007318(C(2, n))*A239829(A055999(n)+10)`
-/

namespace A103926.P11625794392639379121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A239829 (A055999 n + 10).toNat

end

end A103926.P11625794392639379121

/-! ## A103926.P8887912257051393303

`A007318(C(3, n))+A239829(A055999(n)+10)-1`
-/

namespace A103926.P8887912257051393303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + (A239829 (A055999 n + 10).toNat - 1)

end

end A103926.P8887912257051393303

/-! ## A103926.P8933206439544298181

`A239829(A055999(n)+10)/A007318(C(2, n+1))`
-/

namespace A103926.P8933206439544298181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239829 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 1)) : ℚ)

end

end A103926.P8933206439544298181

/-! ## A103926.P5038762944966231876

`A239829(A055999(n)+10)/A000041(C(2, n+2))`
-/

namespace A103926.P5038762944966231876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239829 (A055999 n + 10).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A103926.P5038762944966231876

/-! ## A103926.P265049286334653162

`A000041(gcd(n, n+1))*A239829(A055999(n)+10)`
-/

namespace A103926.P265049286334653162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A239829 (A055999 n + 10).toNat

end

end A103926.P265049286334653162

/-! ## A103926.P4089519705887761957

`A239829(A055999(n)+10)+A000005(3*n+2)%2`
-/

namespace A103926.P4089519705887761957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (A055999 n + 10).toNat + Int.tmod (A000005 (3 * n + 2)) 2

end

end A103926.P4089519705887761957

/-! ## A103926.P17500424896248869911

`A007318(A020639(2*(n+7)))*A239829(A055999(n)+10)`
-/

namespace A103926.P17500424896248869911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 7))).toNat * A239829 (A055999 n + 10).toNat

end

end A103926.P17500424896248869911

/-! ## A103926.P5650106227515814659

`A103923(eq[7, A002262(n)])`
-/

namespace A103926.P5650106227515814659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103926.P5650106227515814659

/-! ## A103926.P5639469799464042815

`A103923(A167499(n+6)+2)`
-/

namespace A103926.P5639469799464042815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A167499 (n + 6) + 2).toNat

end

end A103926.P5639469799464042815

/-! ## A103926.P7203228323922491769

`A103923(A000096(n+6)+8)`
-/

namespace A103926.P7203228323922491769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000096 (n + 6) + 8).toNat

end

end A103926.P7203228323922491769

/-! ## A103926.P2238209628857525163

`A103923(A000124(n+8)-(n+2))`
-/

namespace A103926.P2238209628857525163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000124 (n + 8) - (n + 2 : ℤ)).toNat

end

end A103926.P2238209628857525163

/-!
# A103927: Number of partitions of n into parts but with two kinds of parts of sizes 1 to 8.

The programs for A103927, there is no canonical definition to state claims against.
-/

/-! ## A103927.P764144357053838264

`A239830(A145018(n+5))`
-/

namespace A103927.P764144357053838264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A145018 (n + 5)).toNat

end

end A103927.P764144357053838264

/-! ## A103927.P12100198775067353291

`A239830(A155212(n)+12)`
-/

namespace A103927.P12100198775067353291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A155212 n + 12).toNat

end

end A103927.P12100198775067353291

/-! ## A103927.P6738230266575418200

`A239830(A056000(n)+14)`
-/

namespace A103927.P6738230266575418200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A056000 n + 14).toNat

end

end A103927.P6738230266575418200

/-! ## A103927.P11525059282422238395

`A239830(A167614(n+3)+1)`
-/

namespace A103927.P11525059282422238395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A167614 (n + 3) + 1).toNat

end

end A103927.P11525059282422238395

/-! ## A103927.P9591561540254791517

`A239830(A167499(n+3)-1)`
-/

namespace A103927.P9591561540254791517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A167499 (n + 3) - 1).toNat

end

end A103927.P9591561540254791517

/-! ## A103927.P1452849184480160728

`A239830(A133263(n+4)+2)`
-/

namespace A103927.P1452849184480160728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A133263 (n + 4) + 2).toNat

end

end A103927.P1452849184480160728

/-! ## A103927.P770509860541535867

`A239830(A000124(n+4)+3)`
-/

namespace A103927.P770509860541535867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000124 (n + 4) + 3).toNat

end

end A103927.P770509860541535867

/-! ## A103927.P17326496549057533839

`A239830(A000217(n+4)+4)`
-/

namespace A103927.P17326496549057533839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000217 (n + 4) + 4).toNat

end

end A103927.P17326496549057533839

/-! ## A103927.P14635149781311385490

`A239830(A034856(n+3)+6)`
-/

namespace A103927.P14635149781311385490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A034856 (n + 3) + 6).toNat

end

end A103927.P14635149781311385490

/-! ## A103927.P13290495783447126953

`A239830(A052905(n+1)+9)`
-/

namespace A103927.P13290495783447126953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A052905 (n + 1) + 9).toNat

end

end A103927.P13290495783447126953

/-! ## A103927.P11487969698762681334

`A239830(A020705(A000217(n+4)))`
-/

namespace A103927.P11487969698762681334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A020705 (A000217 (n + 4)).toNat).toNat

end

end A103927.P11487969698762681334

/-! ## A103927.P13012704574030307167

`record[A239830(A061579(A052905(n)))]`
-/

namespace A103927.P13012704574030307167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A061579 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103927.P13012704574030307167

/-!
# A103928: Number of partitions of n into parts but with two kinds of parts of sizes 1 to 9.

The programs for A103928, there is no canonical definition to state claims against.
-/

/-! ## A103928.P13565360372818751155

`A239829(∑[n+4]+11)`
-/

namespace A103928.P13565360372818751155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A103928.P13565360372818751155

/-! ## A103928.P11066320774006535618

`A350872(3*(n+1))+A239829(A000124(n+4)+4)`
-/

namespace A103928.P11066320774006535618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (3 * (n + 1)) + A239829 (A000124 (n + 4) + 4).toNat

end

end A103928.P11066320774006535618

/-! ## A103928.P14482683668934010955

`A103923(eq[9, A002262(n)])`
-/

namespace A103928.P14482683668934010955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103928.P14482683668934010955

/-! ## A103928.P4835294328330062708

`A103923(A000096(n+8)+10)`
-/

namespace A103928.P4835294328330062708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000096 (n + 8) + 10).toNat

end

end A103928.P4835294328330062708

/-! ## A103928.P8469125003231105495

`A103923(eq[9, A144328(n+1)])`
-/

namespace A103928.P8469125003231105495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103928.P8469125003231105495

/-! ## A103928.P13416893520371255708

`A103923(eq[10, A002260(n+1)])`
-/

namespace A103928.P13416893520371255708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103928.P13416893520371255708

/-!
# A103929: Number of partitions of n into parts but with two kinds of parts of sizes 1 to 10.

The programs for A103929, there is no canonical definition to state claims against.
-/

/-! ## A103929.P3465089613931718216

`A239830(A167499(n+4))`
-/

namespace A103929.P3465089613931718216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A167499 (n + 4)).toNat

end

end A103929.P3465089613931718216

/-! ## A103929.P17853052125114411747

`A239830(A056115(n)+20)`
-/

namespace A103929.P17853052125114411747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A056115 n + 20).toNat

end

end A103929.P17853052125114411747

/-! ## A103929.P9170587336140160639

`A239830(A166136(n+4)-1)`
-/

namespace A103929.P9170587336140160639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A166136 (n + 4) - 1).toNat

end

end A103929.P9170587336140160639

/-! ## A103929.P17208202708115911821

`A239830(A167614(n+4)+2)`
-/

namespace A103929.P17208202708115911821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A167614 (n + 4) + 2).toNat

end

end A103929.P17208202708115911821

/-! ## A103929.P13893768839854574314

`A239830(A000124(n+5)+4)`
-/

namespace A103929.P13893768839854574314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000124 (n + 5) + 4).toNat

end

end A103929.P13893768839854574314

/-! ## A103929.P335073779441396673

`A239830(A000096(n+4)+6)`
-/

namespace A103929.P335073779441396673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000096 (n + 4) + 6).toNat

end

end A103929.P335073779441396673

/-! ## A103929.P16238999362773274308

`A239830(A000217(n+5)+5)`
-/

namespace A103929.P16238999362773274308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000217 (n + 5) + 5).toNat

end

end A103929.P16238999362773274308

/-! ## A103929.P5013584494737992696

`A239830(A056119(n+3)-4*(n+1))`
-/

namespace A103929.P5013584494737992696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A056119 (n + 3) - (4 * (n + 1) : ℤ)).toNat

end

end A103929.P5013584494737992696

/-! ## A103929.P3959547997377694601

`A103923(A000217(n+10)+10)`
-/

namespace A103929.P3959547997377694601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000217 (n + 10) + 10).toNat

end

end A103929.P3959547997377694601

/-!
# A103930: Numerators of squares of harmonic numbers A001008/A002805.

The programs for A103930, there is no canonical definition to state claims against.
-/

/-! ## A103930.P8716032336143806634

`A001008(n+1)²`
-/

namespace A103930.P8716032336143806634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) ^ 2

end

end A103930.P8716032336143806634

/-! ## A103930.P12363434689805061544

`A322265(∑[n+2])²`
-/

namespace A103930.P12363434689805061544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322265 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A103930.P12363434689805061544

/-! ## A103930.P10672916112478569908

`A035048(2*(n+1))²`
-/

namespace A103930.P10672916112478569908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (2 * (n + 1)) ^ 2

end

end A103930.P10672916112478569908

/-! ## A103930.P4540753930804760458

`A213998(∑[n+2]-1)²`
-/

namespace A103930.P4540753930804760458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A103930.P4540753930804760458

/-! ## A103930.P13426247640322901129

`(∑[1/(n+1)]*A002805(n+1))²`
-/

namespace A103930.P13426247640322901129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ)) ^ 2

end

end A103930.P13426247640322901129

/-!
# A103931: Denominators of squares of harmonic numbers A001008/A002805.

The programs for A103931, there is no canonical definition to state claims against.
-/

/-! ## A103931.P12306514619917440052

`A002805(n+1)²`
-/

namespace A103931.P12306514619917440052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) ^ 2

end

end A103931.P12306514619917440052

/-! ## A103931.P145547255522564676

`A322266(∑[n+2])²`
-/

namespace A103931.P145547255522564676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322266 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A103931.P145547255522564676

/-! ## A103931.P8465529007892311801

`A002805(comp[65*n])^2`
-/

namespace A103931.P8465529007892311801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  65 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A103931.P8465529007892311801

/-! ## A103931.P18073903119641490875

`A213999(∑[n+2]-1)²`
-/

namespace A103931.P18073903119641490875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A103931.P18073903119641490875

/-! ## A103931.P4845955965015281260

`(A035047(2*(n+1))/2)²`
-/

namespace A103931.P4845955965015281260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A035047 (2 * (n + 1)) : ℚ) / 2) ^ 2

end

end A103931.P4845955965015281260

/-!
# A103932: Numerators of first difference of squares of harmonic numbers.

The programs for A103932, there is no canonical definition to state claims against.
-/

/-! ## A103932.P6012128431681887012

`record[A196385(2^n)]`
-/

namespace A103932.P6012128431681887012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196385 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103932.P6012128431681887012

/-!
# A103933: Denominators of first difference of squares of harmonic numbers A001008/A002805.

The programs for A103933, there is no canonical definition to state claims against.
-/

/-! ## A103933.P6700033314001072169

`3*A192177(a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A103933.P6700033314001072169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * A192177 (a (n - 1)).toNat

end

end A103933.P6700033314001072169

/-!
# A103936: Theta series of Barnes-Wall lattice in 64 dimensions.

The programs for A103936, there is no canonical definition to state claims against.
-/

/-! ## A103936.P16883318943416666937

`A000010(A019722(n))*A109142(n)`
-/

namespace A103936.P16883318943416666937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019722 n).toNat * A109142 n

end

end A103936.P16883318943416666937

/-!
# A103937: Number of unrooted n-edge maps in the plane (planar map with a distinguished outside face).

The programs for A103937, there is no canonical definition to state claims against.
-/

/-! ## A103937.P5599034712673260808

`A334436(n)+A057357(A069271(n))`
-/

namespace A103937.P5599034712673260808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334436 n + A057357 (A069271 n).toNat

end

end A103937.P5599034712673260808

/-! ## A103937.P16227760914164320085

`A097677(n)-A338648(A247611(n))`
-/

namespace A103937.P16227760914164320085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097677 n - A338648 (A247611 n).toNat

end

end A103937.P16227760914164320085

/-!
# A103938: Number of rooted non-separable n-edge maps in the plane (planar with a distinguished outside face).

The programs for A103938, the canonical program `A103938.P6046974057312831276` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103938 has offset 1).

The definition of A103938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103938.P13912956267703945087

`(n+3)/(n+1)*A001764(n)`
-/

namespace A103938.P13912956267703945087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A103938.P13912956267703945087

namespace A103938

/-- `(n+3)/(n+1)*A001764(n)` -/
def P13912956267703945087.Spec : Prop :=
  ∀ n, P13912956267703945087.a n = (A103938 (n + 1) : ℚ)

end A103938

/-! ## A103938.P6046974057312831276

`A001764(n)+A000139(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103938

/-- `A001764(n)+A000139(n)` -/
def P6046974057312831276.Spec : Prop :=
  ∀ n, P6046974057312831276.a n = A103938 (n + 1)

theorem P6046974057312831276.correct : P6046974057312831276.Spec := by
  intro n
  simp only [A103938, Nat.add_sub_cancel]

end A103938

/-! ## A103938.P4585440453713431451

`A110616(∑[n])+A000139(n)`
-/

namespace A103938.P4585440453713431451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (∑ j ∈ Finset.range (n + 1), f1 j) + A000139 n

end

end A103938.P4585440453713431451

namespace A103938

/-- `A110616(∑[n])+A000139(n)` -/
def P4585440453713431451.Spec : Prop :=
  ∀ n, P4585440453713431451.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P1947961993682455145

`A047749(2*n)+A000139(n)`
-/

namespace A103938.P1947961993682455145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n) + A000139 n

end

end A103938.P1947961993682455145

namespace A103938

/-- `A047749(2*n)+A000139(n)` -/
def P1947961993682455145.Spec : Prop :=
  ∀ n, P1947961993682455145.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P11892557669344544910

`A127898(C(n, 2))+A000139(n)`
-/

namespace A103938.P11892557669344544910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (Nat.choose n 2) + A000139 n

end

end A103938.P11892557669344544910

namespace A103938

/-- `A127898(C(n, 2))+A000139(n)` -/
def P11892557669344544910.Spec : Prop :=
  ∀ n, P11892557669344544910.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P7410539924152116544

`A127898(∑[n]-n)+A000139(n)`
-/

namespace A103938.P7410539924152116544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (∑ j ∈ Finset.range (n + 1), f1 j - n) + A000139 n

end

end A103938.P7410539924152116544

namespace A103938

/-- `A127898(∑[n]-n)+A000139(n)` -/
def P7410539924152116544.Spec : Prop :=
  ∀ n, P7410539924152116544.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P6651033460983357096

`A000139(n)+∑{d}[n+1, A251662(#)]`
-/

namespace A103938.P6651033460983357096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n + ∑ d ∈ Nat.divisors (f1 n), A251662 d

end

end A103938.P6651033460983357096

namespace A103938

/-- `A000139(n)+∑{d}[n+1, A251662(#)]` -/
def P6651033460983357096.Spec : Prop :=
  ∀ n, P6651033460983357096.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P2023943923818176783

`A047761(abs(1-2*n))+A000139(n)`
-/

namespace A103938.P2023943923818176783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 |1 - (2 * n : ℤ)|.toNat + A000139 n

end

end A103938.P2023943923818176783

namespace A103938

/-- `A047761(abs(1-2*n))+A000139(n)` -/
def P2023943923818176783.Spec : Prop :=
  ∀ n, P2023943923818176783.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P718606861697292213

`A047764(A017545(n))+A000139(n)`
-/

namespace A103938.P718606861697292213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A017545 n).toNat + A000139 n

end

end A103938.P718606861697292213

namespace A103938

/-- `A047764(A017545(n))+A000139(n)` -/
def P718606861697292213.Spec : Prop :=
  ∀ n, P718606861697292213.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P5503403199532856678

`A000007(n)+A000139(n)+abs(A179848(n))`
-/

namespace A103938.P5503403199532856678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000139 n + |A179848 n|)

end

end A103938.P5503403199532856678

namespace A103938

/-- `A000007(n)+A000139(n)+abs(A179848(n))` -/
def P5503403199532856678.Spec : Prop :=
  ∀ n, P5503403199532856678.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P17389058105692011203

`A361040(n+1)/A361041(n+1)*A000139(n)`
-/

namespace A103938.P17389058105692011203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361040 (n + 1) : ℚ) / (A361041 (n + 1) : ℚ) * (A000139 n : ℚ)

end

end A103938.P17389058105692011203

namespace A103938

/-- `A361040(n+1)/A361041(n+1)*A000139(n)` -/
def P17389058105692011203.Spec : Prop :=
  ∀ n, P17389058105692011203.a n = (A103938 (n + 1) : ℚ)

end A103938

/-! ## A103938.P3080528431107651382

`4*A001764(n)-A006013(n)`
-/

namespace A103938.P3080528431107651382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001764 n - A006013 n

end

end A103938.P3080528431107651382

namespace A103938

/-- `4*A001764(n)-A006013(n)` -/
def P3080528431107651382.Spec : Prop :=
  ∀ n, P3080528431107651382.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P1116358169202810419

`A000139(n)+ceil(A116637(2*n)/2)`
-/

namespace A103938.P1116358169202810419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n + ⌈(A116637 (2 * n) : ℚ) / 2⌉

end

end A103938.P1116358169202810419

namespace A103938

/-- `A000139(n)+ceil(A116637(2*n)/2)` -/
def P1116358169202810419.Spec : Prop :=
  ∀ n, P1116358169202810419.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P17410741700454466009

`A000139(n)+A007226(n)-A006013(n)`
-/

namespace A103938.P17410741700454466009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n + (A007226 n - A006013 n)

end

end A103938.P17410741700454466009

namespace A103938

/-- `A000139(n)+A007226(n)-A006013(n)` -/
def P17410741700454466009.Spec : Prop :=
  ∀ n, P17410741700454466009.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P8658983589394223041

`A000139(n)+A007226(n)-A071948(A000096(n))`
-/

namespace A103938.P8658983589394223041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n + (A007226 n - A071948 (A000096 n).toNat)

end

end A103938.P8658983589394223041

namespace A103938

/-- `A000139(n)+A007226(n)-A071948(A000096(n))` -/
def P8658983589394223041.Spec : Prop :=
  ∀ n, P8658983589394223041.a n = A103938 (n + 1)

end A103938

/-! ## A103938.P12253899356719866717

`A000139(n)+A174687(n)/(n+1)`
-/

namespace A103938.P12253899356719866717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000139 n : ℚ) + (A174687 n : ℚ) / (n + 1 : ℚ)

end

end A103938.P12253899356719866717

namespace A103938

/-- `A000139(n)+A174687(n)/(n+1)` -/
def P12253899356719866717.Spec : Prop :=
  ∀ n, P12253899356719866717.a n = (A103938 (n + 1) : ℚ)

end A103938

/-! ## A103938.P11908423641913680767

`A000139(n)+A005809(n)/(2*n+1)`
-/

namespace A103938.P11908423641913680767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000139 n : ℚ) + (A005809 n : ℚ) / (2 * n + 1 : ℚ)

end

end A103938.P11908423641913680767

namespace A103938

/-- `A000139(n)+A005809(n)/(2*n+1)` -/
def P11908423641913680767.Spec : Prop :=
  ∀ n, P11908423641913680767.a n = (A103938 (n + 1) : ℚ)

end A103938

/-! ## A103938.P17999169518796276263

`A000139(n)+A264772(∑[n])/(2*n+1)`
-/

namespace A103938.P17999169518796276263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000139 n : ℚ) + (A264772 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (2 * n + 1 : ℚ)

end

end A103938.P17999169518796276263

namespace A103938

/-- `A000139(n)+A264772(∑[n])/(2*n+1)` -/
def P17999169518796276263.Spec : Prop :=
  ∀ n, P17999169518796276263.a n = (A103938 (n + 1) : ℚ)

end A103938

/-! ## A103938.P10512676190167211267

`A094021(A000124(n))+A000139(n)`
-/

namespace A103938.P10512676190167211267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094021 (A000124 n).toNat + A000139 n

end

end A103938.P10512676190167211267

namespace A103938

/-- `A094021(A000124(n))+A000139(n)` -/
def P10512676190167211267.Spec : Prop :=
  ∀ n, P10512676190167211267.a n = A103938 (n + 1)

end A103938

/-!
# A103939: Number of unrooted Eulerian n-edge maps in the plane (planar with a distinguished outside face).

The programs for A103939, there is no canonical definition to state claims against.
-/

/-! ## A103939.P13887534608744090120

`A120750(or(1, A225688(n)))`
-/

namespace A103939.P13887534608744090120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (Int.lor 1 (A225688 n)).toNat

end

end A103939.P13887534608744090120

/-! ## A103939.P17080467882568499146

`A225688(n)-A025458(A004171(n))`
-/

namespace A103939.P17080467882568499146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225688 n - A025458 (A004171 n).toNat

end

end A103939.P17080467882568499146

/-! ## A103939.P9160504345107703507

`A225688(n)-A124735(A344040(n))`
-/

namespace A103939.P9160504345107703507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225688 n - A124735 (A344040 n).toNat

end

end A103939.P9160504345107703507

/-!
# A103940: Number of unrooted bipartite n-edge maps in the plane (planar with a distinguished outside face).

The programs for A103940, there is no canonical definition to state claims against.
-/

/-! ## A103940.P12556797795469103779

`A342498(∑[∑[A267610(n)]])`
-/

namespace A103940.P12556797795469103779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342498 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A103940.P12556797795469103779

/-! ## A103940.P6029070867381605155

`A088004(A162935(n+1)+n+1)`
-/

namespace A103940.P6029070867381605155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A162935 (n + 1) + (n + 1 : ℤ)).toNat

end

end A103940.P6029070867381605155

/-! ## A103940.P17244096216992056454

`A088004((A001710(n)+1)*(n+1))`
-/

namespace A103940.P17244096216992056454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 ((A001710 n + 1) * (n + 1 : ℤ)).toNat

end

end A103940.P17244096216992056454

/-!
# A103941: Number of unrooted loopless n-edge maps in the plane (planar with a distinguished outside face).

The programs for A103941, there is no canonical definition to state claims against.
-/

/-! ## A103941.P2603471567541430891

`A219652(A331608(n))`
-/

namespace A103941.P2603471567541430891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A331608 n).toNat

end

end A103941.P2603471567541430891

/-! ## A103941.P6241327953041491453

`A291983(A315214(n!))`
-/

namespace A103941.P6241327953041491453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291983 (A315214 (Nat.factorial n)).toNat

end

end A103941.P6241327953041491453

/-! ## A103941.P16348720642085601719

`A248227(A308336(n)+1)`
-/

namespace A103941.P16348720642085601719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A308336 n + 1).toNat

end

end A103941.P16348720642085601719

/-!
# A103942: Number of unrooted n-edge isthmusless maps in the plane (planar with a distinguished outside face).

The programs for A103942, there is no canonical definition to state claims against.
-/

/-! ## A103942.P10904978286149418646

`A110655(A003146(n!))`
-/

namespace A103942.P10904978286149418646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A003146 (Nat.factorial n)).toNat

end

end A103942.P10904978286149418646

/-! ## A103942.P14656214705224978019

`A071996(A189396(n!))`
-/

namespace A103942.P14656214705224978019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (A189396 (Nat.factorial n)).toNat

end

end A103942.P14656214705224978019

/-! ## A103942.P14579698059141073640

`A002264(A314850(n!))`
-/

namespace A103942.P14579698059141073640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A314850 (Nat.factorial n)).toNat

end

end A103942.P14579698059141073640

/-!
# A103943: Number of unrooted two-vertex n-edge maps in the plane (planar with a distinguished outside face).

The programs for A103943, the canonical program `A103943.P10707217721028067963` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103943 has offset 1).

The definition of A103943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103943.P10707217721028067963

`lcm(2, 4^n)-A032106(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A103943

/-- `lcm(2, 4^n)-A032106(n+1)` -/
def P10707217721028067963.Spec : Prop :=
  ∀ n, P10707217721028067963.a n = A103943 (n + 1)

theorem P10707217721028067963.correct : P10707217721028067963.Spec := by
  intro n
  simp only [A103943, Nat.add_sub_cancel]

end A103943

/-! ## A103943.P2133925772814862187

`A008549(n)+A005654(n+1)`
-/

namespace A103943.P2133925772814862187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008549 n + A005654 (n + 1)

end

end A103943.P2133925772814862187

namespace A103943

/-- `A008549(n)+A005654(n+1)` -/
def P2133925772814862187.Spec : Prop :=
  ∀ n, P2133925772814862187.a n = A103943 (n + 1)

end A103943

/-! ## A103943.P14108354986090508196

`A068551(n)+A007123(n+1)`
-/

namespace A103943.P14108354986090508196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068551 n + A007123 (n + 1)

end

end A103943.P14108354986090508196

namespace A103943

/-- `A068551(n)+A007123(n+1)` -/
def P14108354986090508196.Spec : Prop :=
  ∀ n, P14108354986090508196.a n = A103943 (n + 1)

end A103943

/-! ## A103943.P13124459703815204439

`A155543(n)-A032106(n+1)`
-/

namespace A103943.P13124459703815204439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A032106 (n + 1)

end

end A103943.P13124459703815204439

namespace A103943

/-- `A155543(n)-A032106(n+1)` -/
def P13124459703815204439.Spec : Prop :=
  ∀ n, P13124459703815204439.a n = A103943 (n + 1)

end A103943

/-! ## A103943.P8649391567441822236

`A045621(2*n)+A007123(n+1)`
-/

namespace A103943.P8649391567441822236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n) + A007123 (n + 1)

end

end A103943.P8649391567441822236

namespace A103943

/-- `A045621(2*n)+A007123(n+1)` -/
def P8649391567441822236.Spec : Prop :=
  ∀ n, P8649391567441822236.a n = A103943 (n + 1)

end A103943

/-! ## A103943.P10319391512796698168

`A307768(2*n)+A007123(n+1)`
-/

namespace A103943.P10319391512796698168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 (2 * n) + A007123 (n + 1)

end

end A103943.P10319391512796698168

namespace A103943

/-- `A307768(2*n)+A007123(n+1)` -/
def P10319391512796698168.Spec : Prop :=
  ∀ n, P10319391512796698168.a n = A103943 (n + 1)

end A103943

/-! ## A103943.P9991940246332090793

`A000302(n)+A001405(n)-A005654(n+1)`
-/

namespace A103943.P9991940246332090793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + (A001405 n - A005654 (n + 1))

end

end A103943.P9991940246332090793

namespace A103943

/-- `A000302(n)+A001405(n)-A005654(n+1)` -/
def P9991940246332090793.Spec : Prop :=
  ∀ n, P9991940246332090793.a n = A103943 (n + 1)

end A103943

/-! ## A103943.P5416656360090883963

`A005654(n+1)+A000302(n)-A001700(n)`
-/

namespace A103943.P5416656360090883963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) + (A000302 n - A001700 n)

end

end A103943.P5416656360090883963

namespace A103943

/-- `A005654(n+1)+A000302(n)-A001700(n)` -/
def P5416656360090883963.Spec : Prop :=
  ∀ n, P5416656360090883963.a n = A103943 (n + 1)

end A103943

/-! ## A103943.P7569549797323081339

`(A001405(n)+A000346(n))/2`
-/

namespace A103943.P7569549797323081339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n + A000346 n : ℚ) / 2

end

end A103943.P7569549797323081339

namespace A103943

/-- `(A001405(n)+A000346(n))/2` -/
def P7569549797323081339.Spec : Prop :=
  ∀ n, P7569549797323081339.a n = (A103943 (n + 1) : ℚ)

end A103943

/-! ## A103943.P7951048904090659186

`A005654(n+1)+A000346(n)-A000302(n)`
-/

namespace A103943.P7951048904090659186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005654 (n + 1) + (A000346 n - A000302 n)

end

end A103943.P7951048904090659186

namespace A103943

/-- `A005654(n+1)+A000346(n)-A000302(n)` -/
def P7951048904090659186.Spec : Prop :=
  ∀ n, P7951048904090659186.a n = A103943 (n + 1)

end A103943

/-!
# A103944: Number of rooted unicursal n-edge maps in the plane (planar with a distinguished outside face).

The programs for A103944, the canonical program `A103944.P4730550679544556026` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103944 has offset 1).

The definition of A103944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103944.P4730550679544556026

`(n+1)*A178792(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103944

/-- `(n+1)*A178792(n)` -/
def P4730550679544556026.Spec : Prop :=
  ∀ n, P4730550679544556026.a n = A103944 (n + 1)

theorem P4730550679544556026.correct : P4730550679544556026.Spec := by
  intro n
  simp only [A103944, Nat.add_sub_cancel]

end A103944

/-! ## A103944.P2594606714185943567

`(n+1)*A359066(Δ[n²])`
-/

namespace A103944.P2594606714185943567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359066 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A103944.P2594606714185943567

namespace A103944

/-- `(n+1)*A359066(Δ[n²])` -/
def P2594606714185943567.Spec : Prop :=
  ∀ n, P2594606714185943567.a n = A103944 (n + 1)

end A103944

/-! ## A103944.P10968874343760857333

`A178792(n)*A178804(A004767(n))`
-/

namespace A103944.P10968874343760857333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178792 n * A178804 (A004767 n).toNat

end

end A103944.P10968874343760857333

namespace A103944

/-- `A178792(n)*A178804(A004767(n))` -/
def P10968874343760857333.Spec : Prop :=
  ∀ n, P10968874343760857333.a n = A103944 (n + 1)

end A103944

/-! ## A103944.P16397228521444896242

`A178792(n)*A303700(A000217(n))`
-/

namespace A103944.P16397228521444896242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178792 n * A303700 (A000217 n).toNat

end

end A103944.P16397228521444896242

namespace A103944

/-- `A178792(n)*A303700(A000217(n))` -/
def P16397228521444896242.Spec : Prop :=
  ∀ n, P16397228521444896242.a n = A103944 (n + 1)

end A103944

/-! ## A103944.P243474209387809070

`(n+1)*A193845(∑[4*n])`
-/

namespace A103944.P243474209387809070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103944.P243474209387809070

namespace A103944

/-- `(n+1)*A193845(∑[4*n])` -/
def P243474209387809070.Spec : Prop :=
  ∀ n, P243474209387809070.a n = A103944 (n + 1)

end A103944

/-! ## A103944.P809138931172046625

`(n+1)*A119258(A056220(n+1))`
-/

namespace A103944.P809138931172046625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119258 (A056220 (n + 1)).toNat

end

end A103944.P809138931172046625

namespace A103944

/-- `(n+1)*A119258(A056220(n+1))` -/
def P809138931172046625.Spec : Prop :=
  ∀ n, P809138931172046625.a n = A103944 (n + 1)

end A103944

/-! ## A103944.P18302844148542870612

`A178792(n)*A319254(A000124(n))`
-/

namespace A103944.P18302844148542870612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178792 n * A319254 (A000124 n).toNat

end

end A103944.P18302844148542870612

namespace A103944

/-- `A178792(n)*A319254(A000124(n))` -/
def P18302844148542870612.Spec : Prop :=
  ∀ n, P18302844148542870612.a n = A103944 (n + 1)

end A103944

/-!
# A103945: Number of rooted dual-unicursal n-edge maps in the plane (planar with a distinguished outside face).

The programs for A103945, there is no canonical definition to state claims against.
-/

/-! ## A103945.P14504260675044521876

`A112378(A025237(n))+A019300(3*n+1)`
-/

namespace A103945.P14504260675044521876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112378 (A025237 n).toNat + A019300 (3 * n + 1)

end

end A103945.P14504260675044521876

/-!
# A103946: Indices of icosahedral numbers (A006564) which are semiprimes.

The programs for A103946, the canonical program `A103946.P5505250988808602755` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103946 has offset 1).

The definition of A103946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103946.P5505250988808602755

`p?[A145837(n+1)+1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A103946

/-- `p?[A145837(n+1)+1]` -/
def P5505250988808602755.Spec : Prop :=
  ∀ n, P5505250988808602755.a n = A103946 (n + 1)

theorem P5505250988808602755.correct : P5505250988808602755.Spec := by
  intro n
  simp only [A103946, Nat.add_sub_cancel]

end A103946

/-! ## A103946.P8780123436972731469

`∩[A000040(n+1), A145837(n+1)+1]`
-/

namespace A103946.P8780123436972731469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145837 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103946.P8780123436972731469

namespace A103946

/-- `∩[A000040(n+1), A145837(n+1)+1]` -/
def P8780123436972731469.Spec : Prop :=
  ∀ n, (P8780123436972731469.a n : ℤ) = A103946 (n + 1)

end A103946

/-! ## A103946.P14991975464456533198

`∩[A006005(n+1), A145837(n+1)+1]`
-/

namespace A103946.P14991975464456533198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145837 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103946.P14991975464456533198

namespace A103946

/-- `∩[A006005(n+1), A145837(n+1)+1]` -/
def P14991975464456533198.Spec : Prop :=
  ∀ n, (P14991975464456533198.a n : ℤ) = A103946 (n + 1)

end A103946

/-! ## A103946.P7112302910717987906

`p?[A004482(A145837(n+1))]`
-/

namespace A103946.P7112302910717987906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A145837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103946.P7112302910717987906

namespace A103946

/-- `p?[A004482(A145837(n+1))]` -/
def P7112302910717987906.Spec : Prop :=
  ∀ n, P7112302910717987906.a n = A103946 (n + 1)

end A103946

/-! ## A103946.P12217981600235408358

`p?[A004442(A145837(n+2))]`
-/

namespace A103946.P12217981600235408358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A145837 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103946.P12217981600235408358

namespace A103946

/-- `p?[A004442(A145837(n+2))]` -/
def P12217981600235408358.Spec : Prop :=
  ∀ n, P12217981600235408358.a n = A103946 (n + 1)

end A103946

/-!
# A103947: a(n) is the number of distinct n-th powers of functions {1, 2} -> {1, 2}.

The programs for A103947, the canonical program `A103947.P12145212956971038489` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103947 has offset 0).

The definition of A103947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103947.P12145212956971038489

`a(n-2)` with `a(0)=1, a(1)=4, a(2)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103947

/-- `a(n-2)` -/
def P12145212956971038489.Spec : Prop :=
  ∀ n, (P12145212956971038489.a n : ℤ) = A103947 n

theorem P12145212956971038489.correct : P12145212956971038489.Spec := by
  intro n
  simp only [A103947]

end A103947

/-!
# A103949: a(n) is the number of distinct n-th powers of functions {1, 2, 3, 4} -> {1, 2, 3, 4}.

The programs for A103949, there is no canonical definition to state claims against.
-/

/-! ## A103949.P8753173923734083570

`A247026(eq[4, A163351(n)])`
-/

namespace A103949.P8753173923734083570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A103949.P8753173923734083570

/-!
# A103950: a(n) is the number of distinct n-th powers of functions {1, 2, 3, 4, 5, 6} -> {1, 2, 3, 4, 5, 6}.

The programs for A103950, there is no canonical definition to state claims against.
-/

/-! ## A103950.P9837734805008794368

`A247026(A166136(n+5))`
-/

namespace A103950.P9837734805008794368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A166136 (n + 5)).toNat

end

end A103950.P9837734805008794368

/-!
# A103951: Procedure "Remove every 10th term!" executed 10 times.

The programs for A103951, there is no canonical definition to state claims against.
-/

/-! ## A103951.P9844906394491427030

`record[A048379(A007954(A098760(n)))]`
-/

namespace A103951.P9844906394491427030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A007954 (A098760 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103951.P9844906394491427030

/-! ## A103951.P669082616462195802

`eq[A017895(n), A159966(A017896(n))]`
-/

namespace A103951.P669082616462195802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A017896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103951.P669082616462195802

/-! ## A103951.P10942426201439362451

`record[A008615(A332246(A122641(n+1)))]`
-/

namespace A103951.P10942426201439362451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A332246 (A122641 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103951.P10942426201439362451

/-! ## A103951.P14380598115068019518

`A189506(record[A186442(n+1)+1])`
-/

namespace A103951.P14380598115068019518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186442 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103951.P14380598115068019518

/-! ## A103951.P7036213166900206384

`lt[A001222(A214775(n)), A007376(n)]`
-/

namespace A103951.P7036213166900206384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A214775 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A103951.P7036213166900206384

/-!
# A103952: Smallest powerful number such that a(n)-n is also powerful.

The programs for A103952, there is no canonical definition to state claims against.
-/

/-! ## A103952.P1176813371347789702

`A076444(n+1)+1+n`
-/

namespace A103952.P1176813371347789702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076444 (n + 1) + 1 + (n : ℤ)

end

end A103952.P1176813371347789702

/-! ## A103952.P16774503295317703809

`A076444(-xor(n, -1))-xor(n, -1)`
-/

namespace A103952.P16774503295317703809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076444 (-Int.xor (n : ℤ) (-1)).toNat - Int.xor (n : ℤ) (-1)

end

end A103952.P16774503295317703809

/-! ## A103952.P17409062722071709478

`A076444(A077168(n))+n+1`
-/

namespace A103952.P17409062722071709478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076444 (A077168 n).toNat + (n + 1 : ℤ)

end

end A103952.P17409062722071709478

/-! ## A103952.P1592569766570516822

`A077168(n)+A076444(A077168(n))`
-/

namespace A103952.P1592569766570516822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n + A076444 (A077168 n).toNat

end

end A103952.P1592569766570516822

/-!
# A103953: Smallest perfect power b^e such that b^e+n is also a perfect power, or 0 if no such perfect power exists.

The programs for A103953, there is no canonical definition to state claims against.
-/

/-! ## A103953.P1812424428403565010

`A074954(n+1)-(n+1)%A016825(A074954(n+1))`
-/

namespace A103953.P1812424428403565010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074954 (n + 1) - Int.tmod (n + 1 : ℤ) (A016825 (A074954 (n + 1)).toNat)

end

end A103953.P1812424428403565010

/-! ## A103953.P14572602079205206492

`A076444(n+1)%A058299(A074954(n+1))`
-/

namespace A103953.P14572602079205206492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076444 (n + 1)) (A058299 (A074954 (n + 1)).toNat)

end

end A103953.P14572602079205206492

/-! ## A103953.P4322360265401079008

`(A103952(n+1)-(n+1))%A058299(A074954(n+1))`
-/

namespace A103953.P4322360265401079008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103952 (n + 1) - (n + 1 : ℤ)) (A058299 (A074954 (n + 1)).toNat)

end

end A103953.P4322360265401079008

/-! ## A103953.P14616797499414517676

`abs(2*n-(n-1)-A103952(2*n-(n-1)))%A271095(A074954(n+1))`
-/

namespace A103953.P14616797499414517676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |(2 * n : ℤ) - ((n : ℤ) - 1) - A103952 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat| (A271095 (A074954 (n + 1)).toNat)

end

end A103953.P14616797499414517676

/-! ## A103953.P3453564687100220452

`((A103954(n+1)+A103952(n+1))%A103955(n+1))%A058299(A074954(n+1))`
-/

namespace A103953.P3453564687100220452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A103954 (n + 1) + A103952 (n + 1)) (A103955 (n + 1))) (A058299 (A074954 (n + 1)).toNat)

end

end A103953.P3453564687100220452

/-!
# A103954: a(n) is the least k such that k and k+n are adjacent powerful numbers.

The programs for A103954, there is no canonical definition to state claims against.
-/

/-! ## A103954.P10885930940884211070

`A103955(n+1)-(n+1)`
-/

namespace A103954.P10885930940884211070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103955 (n + 1) - (n + 1 : ℤ)

end

end A103954.P10885930940884211070

/-! ## A103954.P9680649223253911022

`A103955(n-log2(1/2))-n-1`
-/

namespace A103954.P9680649223253911022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103955 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ) - 1

end

end A103954.P9680649223253911022

/-! ## A103954.P11831219821725257075

`abs(2*n-(n-1)-A103955(2*n-(n-1)))`
-/

namespace A103954.P11831219821725257075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - ((n : ℤ) - 1) - A103955 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat|

end

end A103954.P11831219821725257075

/-! ## A103954.P16493608765091346545

`A156864(A000124(n+1))+A103955(n+1)`
-/

namespace A103954.P16493608765091346545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156864 (A000124 (n + 1)).toNat + A103955 (n + 1)

end

end A103954.P16493608765091346545

/-! ## A103954.P4479323299366535322

`A196838(A091823(n+1))+A103955(n+1)`
-/

namespace A103954.P4479323299366535322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (A091823 (n + 1)).toNat + A103955 (n + 1)

end

end A103954.P4479323299366535322

/-!
# A103955: a(n) is the least k such that k-n and k are adjacent powerful numbers.

The programs for A103955, there is no canonical definition to state claims against.
-/

/-! ## A103955.P6944519113865615812

`A103954(n+1)+1+n`
-/

namespace A103955.P6944519113865615812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103954 (n + 1) + 1 + (n : ℤ)

end

end A103955.P6944519113865615812

/-! ## A103955.P17263628633909456111

`A103954(A077168(n))+n+1`
-/

namespace A103955.P17263628633909456111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103954 (A077168 n).toNat + (n + 1 : ℤ)

end

end A103955.P17263628633909456111

/-!
# A103956: A nonsense sequence.

The programs for A103956, there is no canonical definition to state claims against.
-/

/-! ## A103956.P16036501045953676994

`A020915(gcd(A094578(n), A227185(n)))`
-/

namespace A103956.P16036501045953676994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.gcd (A094578 n) (A227185 n))

end

end A103956.P16036501045953676994

/-! ## A103956.P16454718933680530016

`gcd(A001221(A258654(3*n+4)), A326150(n+5))`
-/

namespace A103956.P16454718933680530016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A258654 (3 * n + 4)).toNat) (A326150 (n + 5))

end

end A103956.P16454718933680530016

/-! ## A103956.P14611615136306375155

`A103957(lcm(1-n, A026792(n+1)))`
-/

namespace A103956.P14611615136306375155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103957 (Int.lcm (1 - (n : ℤ)) (A026792 (n + 1)))

end

end A103956.P14611615136306375155

/-! ## A103956.P9103874941708812344

`A000161(A127388(A113127(n))²)`
-/

namespace A103956.P9103874941708812344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A127388 (A113127 n).toNat ^ 2).toNat

end

end A103956.P9103874941708812344

/-! ## A103956.P14832167860651889491

`gcd(∑{d}[n+1, (#%3)%2], A311003(A107742(n)))`
-/

namespace A103956.P14832167860651889491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d % 3 % 2 : ℕ) : ℤ) (A311003 (A107742 n).toNat)

end

end A103956.P14832167860651889491

/-!
# A103957: A nonsense sequence.

The programs for A103957, there is no canonical definition to state claims against.
-/

/-! ## A103957.P5199396476662458527

`A103956(record[A136400(n)+A008619(n)])`
-/

namespace A103957.P5199396476662458527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A103957.P5199396476662458527

/-! ## A103957.P12521173031819185436

`A103956(∪[A071009(n+1), A243903(n+1)])`
-/

namespace A103957.P12521173031819185436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A103957.P12521173031819185436

/-! ## A103957.P3771156959651582725

`A103956(∪[A243903(n+1), A243903(n+1)²²])`
-/

namespace A103957.P3771156959651582725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243903 (n + 1) ^ 2) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A103957.P3771156959651582725

/-! ## A103957.P13596537464663504157

`A103956(A243903(n+1))`
-/

namespace A103957.P13596537464663504157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (A243903 (n + 1)).toNat

end

end A103957.P13596537464663504157

/-! ## A103957.P5486890213189486930

`A103956(A319101(n+1)*A348553(n))`
-/

namespace A103957.P5486890213189486930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103956 (A319101 (n + 1) * A348553 n).toNat

end

end A103957.P5486890213189486930

/-!
# A103960: Number of primes p such that prime(n)*p - 2 is prime and p <= prime(n).

The programs for A103960, there is no canonical definition to state claims against.
-/

/-! ## A103960.P12380529798397071542

`A210481(n+1)+A010051(A049001(n+1))`
-/

namespace A103960.P12380529798397071542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210481 (n + 1) + A010051 (A049001 (n + 1)).toNat

end

end A103960.P12380529798397071542

/-! ## A103960.P14673612835821394468

`A043276(A123015(n)^A103377(n+3))`
-/

namespace A103960.P14673612835821394468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (SequenceMachineLib.roundAway ((A123015 n : ℚ) ^ (A103377 (n + 3) : ℤ))).toNat

end

end A103960.P14673612835821394468

/-! ## A103960.P9539169185992701668

`A001221(∪[A192466(n+1), A192461(n+2)])`
-/

namespace A103960.P9539169185992701668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192461 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A103960.P9539169185992701668

/-! ## A103960.P12110309121637531583

`A010051(A049001(n+1))+A001222(or(A001787(n), A082956(n+1)))`
-/

namespace A103960.P12110309121637531583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A049001 (n + 1)).toNat + A001222 (Int.lor (A001787 n) (A082956 (n + 1))).toNat

end

end A103960.P12110309121637531583

/-! ## A103960.P13223725341418908749

`A334461(A019466(n)+2)`
-/

namespace A103960.P13223725341418908749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334461 (A019466 n + 2).toNat

end

end A103960.P13223725341418908749

/-!
# A103961: Least k such that 2*n*k - 1 is a prime.

The programs for A103961, there is no canonical definition to state claims against.
-/

/-! ## A103961.P16962444698961989853

`A053989(2*(n+1))`
-/

namespace A103961.P16962444698961989853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (2 * (n + 1))

end

end A103961.P16962444698961989853

/-! ## A103961.P1167829521129527496

`A053989(n+2+n)+A000007(n+1)`
-/

namespace A103961.P1167829521129527496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 2 + n) + A000007 (n + 1)

end

end A103961.P1167829521129527496

/-! ## A103961.P10098162578086721096

`A053989(n+2+n)%A007742(n+1)`
-/

namespace A103961.P10098162578086721096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053989 (n + 2 + n)) (A007742 (n + 1))

end

end A103961.P10098162578086721096

/-! ## A103961.P10929794227172433742

`A103689(2*(n+1))+A200996(2*(n+1))-A034693(2*(n+1))`
-/

namespace A103961.P10929794227172433742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103689 (2 * (n + 1)) + (A200996 (2 * (n + 1)) - A034693 (2 * (n + 1)))

end

end A103961.P10929794227172433742

/-! ## A103961.P4421938206627452825

`A008864(A219109(2*(n+1)))/A219109(A008864(2*(n+1)))`
-/

namespace A103961.P4421938206627452825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (A219109 (2 * (n + 1))).toNat : ℚ) / (A219109 (A008864 (2 * (n + 1))).toNat : ℚ)

end

end A103961.P4421938206627452825

/-! ## A103961.P15182964248082654210

`A008619(A038700(2*(n+1)))/(n+1)`
-/

namespace A103961.P15182964248082654210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A038700 (2 * (n + 1))).toNat : ℚ) / (n + 1 : ℚ)

end

end A103961.P15182964248082654210

/-! ## A103961.P17960899157551093273

`floor(A004768(A038700(2*(n+1)))/A004771(2*n+1))`
-/

namespace A103961.P17960899157551093273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004768 (A038700 (2 * (n + 1))).toNat : ℚ) / (A004771 (2 * n + 1) : ℚ)⌋

end

end A103961.P17960899157551093273

/-!
# A103963: Record values in A040081.

The programs for A103963, there is no canonical definition to state claims against.
-/

/-! ## A103963.P2650313114934641056

`record[A040081(n+1)]`
-/

namespace A103963.P2650313114934641056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103963.P2650313114934641056

/-! ## A103963.P8514967350533243899

`A040081(A240113(n+1))`
-/

namespace A103963.P8514967350533243899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A240113 (n + 1)).toNat

end

end A103963.P8514967350533243899

/-! ## A103963.P12010256141069305009

`record[A050412(A002808(n+1))]`
-/

namespace A103963.P12010256141069305009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103963.P12010256141069305009

/-! ## A103963.P17436908599447909252

`record[A050412(A018252(n+2))]`
-/

namespace A103963.P17436908599447909252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103963.P17436908599447909252

/-! ## A103963.P1838385204292874344

`record[A050412(A250122(n+2))]`
-/

namespace A103963.P1838385204292874344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A250122 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103963.P1838385204292874344

/-!
# A103964: Record values in A040076.

The programs for A103964, there is no canonical definition to state claims against.
-/

/-! ## A103964.P12705450635070133231

`record[A040076(n+1)]`
-/

namespace A103964.P12705450635070133231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103964.P12705450635070133231

/-! ## A103964.P11389440633996914046

`record[A046067(n+1)]`
-/

namespace A103964.P11389440633996914046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103964.P11389440633996914046

/-! ## A103964.P9161584985583973720

`A040076(A064699(n+1))`
-/

namespace A103964.P9161584985583973720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A064699 (n + 1)).toNat

end

end A103964.P9161584985583973720

/-! ## A103964.P17815247533426656245

`A014682(2*A350119(n+1))`
-/

namespace A103964.P17815247533426656245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A350119 (n + 1)).toNat

end

end A103964.P17815247533426656245

/-! ## A103964.P215622009491785480

`A350119(n+1)%A350132(n+1)`
-/

namespace A103964.P215622009491785480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350119 (n + 1)) (A350132 (n + 1))

end

end A103964.P215622009491785480

/-!
# A103965: Numbers k such that the string k10k is the decimal expansion of a prime number.

The programs for A103965, there is no canonical definition to state claims against.
-/

/-! ## A103965.P1994414140438601058

`A145282(A356288(n+2))`
-/

namespace A103965.P1994414140438601058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145282 (A356288 (n + 2)).toNat

end

end A103965.P1994414140438601058

/-!
# A103966: Let p(k) = k-th prime. a(n) = smallest prime p(j) such that number of solutions to p(k)-p(k-1)=m is n, where 1

The programs for A103966, there is no canonical definition to state claims against.
-/

/-! ## A103966.P14014886264105823742

`A006512(n+1)-A309953(A127922(n+4))`
-/

namespace A103966.P14014886264105823742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - A309953 (A127922 (n + 4)).toNat

end

end A103966.P14014886264105823742

/-! ## A103966.P14537122487993775077

`A006512(n+1)-A005843(A058348(3*n))`
-/

namespace A103966.P14537122487993775077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - A005843 (A058348 (3 * n)).toNat

end

end A103966.P14537122487993775077

/-! ## A103966.P12638917122527403510

`p?[A127322(n)+A092860(n+1)]`
-/

namespace A103966.P12638917122527403510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n + A092860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103966.P12638917122527403510

/-! ## A103966.P3935209976833111734

`p?[A157419(n)-A068639(A034565(n+1))]`
-/

namespace A103966.P3935209976833111734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157419 n - A068639 (A034565 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A103966.P3935209976833111734

/-! ## A103966.P9823613882262648836

`A006512(n+1)-A014197(A054540(2*n))`
-/

namespace A103966.P9823613882262648836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - A014197 (A054540 (2 * n)).toNat

end

end A103966.P9823613882262648836

/-!
# A103967: Numbers n such that the string n1n is the decimal expansion of a prime number.

The programs for A103967, there is no canonical definition to state claims against.
-/

/-! ## A103967.P5879070537028797467

`record[A090261(n+2)/A090261(n+1)]`
-/

namespace A103967.P5879070537028797467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090261 (n + 2) : ℚ) / (A090261 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103967.P5879070537028797467

/-! ## A103967.P10692918855052309417

`A083207(n+1)-A095346(A175561(n+3))`
-/

namespace A103967.P10692918855052309417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1) - A095346 (A175561 (n + 3)).toNat

end

end A103967.P10692918855052309417

/-! ## A103967.P1608375008572162029

`eq[A011615(A125505(n+1)), A303386(n+2)]`
-/

namespace A103967.P1608375008572162029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 (A125505 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103967.P1608375008572162029

/-! ## A103967.P17350380293766620177

`eq[A229615(n+2), A275342(A285622(n+1))]`
-/

namespace A103967.P17350380293766620177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229615 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275342 (A285622 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103967.P17350380293766620177

/-!
# A103968: Sigma((8^n - 1)/7), where sigma(n) is the sum of positive divisors of n.

The programs for A103968, there is no canonical definition to state claims against.
-/

/-! ## A103968.P2151449249761445838

`∑{d}[∑[8^n], #]`
-/

namespace A103968.P2151449249761445838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A103968.P2151449249761445838

/-! ## A103968.P18167438845381691306

`record[∑{d}[8*a(n-1)+1, #]]` with `a(0)=1, a(1)=0`
-/

namespace A103968.P18167438845381691306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  8 * f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103968.P18167438845381691306

/-! ## A103968.P15680954577541554736

`record[∑{d}[∑{d}[and(n+1, -(n+1)), #^3], #]]`
-/

namespace A103968.P15680954577541554736
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103968.P15680954577541554736

/-!
# A103969: Positions n such that A005941(n) = A005940(n).

The programs for A103969, the canonical program `A103969.P4612187480005842417` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103969 has offset 1).

The definition of A103969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1654 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103969.P10154471342963769144

`∑[ceil(2^(floor(n/5)-1))]`
-/

namespace A103969.P10154471342963769144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (⌊(n : ℚ) / 5⌋ - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103969.P10154471342963769144

namespace A103969

/-- `∑[ceil(2^(floor(n/5)-1))]` -/
def P10154471342963769144.Spec : Prop :=
  ∀ n, P10154471342963769144.a n = A103969 (n + 1)

end A103969

/-! ## A103969.P4612187480005842417

`2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103969

/-- `2*a(n-5)` -/
def P4612187480005842417.Spec : Prop :=
  ∀ n, (P4612187480005842417.a n : ℤ) = A103969 (n + 1)

theorem P4612187480005842417.correct : P4612187480005842417.Spec := by
  intro n
  simp only [A103969, Nat.add_sub_cancel]

end A103969

/-! ## A103969.P13471044929236630735

`A011782(floor(n/5))+a(n-1)` with `a(0)=1`
-/

namespace A103969.P13471044929236630735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 ⌊(n : ℚ) / 5⌋.toNat + a (n - 1)

end

end A103969.P13471044929236630735

namespace A103969

/-- `A011782(floor(n/5))+a(n-1)` -/
def P13471044929236630735.Spec : Prop :=
  ∀ n, P13471044929236630735.a n = A103969 (n + 1)

end A103969

/-! ## A103969.P215553459029819525

`∩[A129523(n+1), A246075(n+1)]`
-/

namespace A103969.P215553459029819525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P215553459029819525

namespace A103969

/-- `∩[A129523(n+1), A246075(n+1)]` -/
def P215553459029819525.Spec : Prop :=
  ∀ n, (P215553459029819525.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P4971367670531022242

`∩[A129523(n+1), A246074(n+1)]`
-/

namespace A103969.P4971367670531022242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P4971367670531022242

namespace A103969

/-- `∩[A129523(n+1), A246074(n+1)]` -/
def P4971367670531022242.Spec : Prop :=
  ∀ n, (P4971367670531022242.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P8786876980872838657

`∩[A136490(n+1), A246074(n+1)]`
-/

namespace A103969.P8786876980872838657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P8786876980872838657

namespace A103969

/-- `∩[A136490(n+1), A246074(n+1)]` -/
def P8786876980872838657.Spec : Prop :=
  ∀ n, (P8786876980872838657.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P3306695293005004333

`∩[A136490(n+1), A246075(n+1)]`
-/

namespace A103969.P3306695293005004333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P3306695293005004333

namespace A103969

/-- `∩[A136490(n+1), A246075(n+1)]` -/
def P3306695293005004333.Spec : Prop :=
  ∀ n, (P3306695293005004333.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P5700829330584229815

`∩[A246074(n+1), A295235(n+1)]`
-/

namespace A103969.P5700829330584229815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P5700829330584229815

namespace A103969

/-- `∩[A246074(n+1), A295235(n+1)]` -/
def P5700829330584229815.Spec : Prop :=
  ∀ n, (P5700829330584229815.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P4918304522635563972

`∩[A246075(n+1), A295235(n+1)]`
-/

namespace A103969.P4918304522635563972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P4918304522635563972

namespace A103969

/-- `∩[A246075(n+1), A295235(n+1)]` -/
def P4918304522635563972.Spec : Prop :=
  ∀ n, (P4918304522635563972.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P16283356289851119895

`∩[A002473(n+1), A246075(n+1)]`
-/

namespace A103969.P16283356289851119895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P16283356289851119895

namespace A103969

/-- `∩[A002473(n+1), A246075(n+1)]` -/
def P16283356289851119895.Spec : Prop :=
  ∀ n, (P16283356289851119895.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P14237769653323671099

`∩[A171987(n+1), A246074(n+1)]`
-/

namespace A103969.P14237769653323671099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P14237769653323671099

namespace A103969

/-- `∩[A171987(n+1), A246074(n+1)]` -/
def P14237769653323671099.Spec : Prop :=
  ∀ n, (P14237769653323671099.a n : ℤ) = A103969 (n + 1)

end A103969

/-! ## A103969.P15217093757256501570

`∩[A002473(n+1), A246074(n+1)]`
-/

namespace A103969.P15217093757256501570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A103969.P15217093757256501570

namespace A103969

/-- `∩[A002473(n+1), A246074(n+1)]` -/
def P15217093757256501570.Spec : Prop :=
  ∀ n, (P15217093757256501570.a n : ℤ) = A103969 (n + 1)

end A103969

/-!
# A103970: Expansion of (1 - sqrt(1 - 4*x - 12*x^2))/(2*x).

The programs for A103970, the canonical program `A103970.P11872415913840163127` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103970 has offset 0).

The definition of A103970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103970.P11872415913840163127

`2^n*A007971(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A103970

/-- `2^n*A007971(n+1)` -/
def P11872415913840163127.Spec : Prop :=
  ∀ n, P11872415913840163127.a n = A103970 n

theorem P11872415913840163127.correct : P11872415913840163127.Spec := by
  intro n
  simp only [A103970]

end A103970

/-! ## A103970.P17086631863078909501

`record[A000079(n)*A168049(n)]`
-/

namespace A103970.P17086631863078909501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103970.P17086631863078909501

namespace A103970

/-- `record[A000079(n)*A168049(n)]` -/
def P17086631863078909501.Spec : Prop :=
  ∀ n, P17086631863078909501.a n = A103970 n

end A103970

/-! ## A103970.P6578913100487268942

`record[A011782(n)*A168055(n)]`
-/

namespace A103970.P6578913100487268942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A168055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103970.P6578913100487268942

namespace A103970

/-- `record[A011782(n)*A168055(n)]` -/
def P6578913100487268942.Spec : Prop :=
  ∀ n, P6578913100487268942.a n = A103970 n

end A103970

/-! ## A103970.P8514968098136124282

`record[abs(A000079(n)*A168051(n))]`
-/

namespace A103970.P8514968098136124282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A168051 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103970.P8514968098136124282

namespace A103970

/-- `record[abs(A000079(n)*A168051(n))]` -/
def P8514968098136124282.Spec : Prop :=
  ∀ n, P8514968098136124282.a n = A103970 n

end A103970

/-! ## A103970.P4663773913603936135

`record[record[A059268(n)]*A168049(n)]`
-/

namespace A103970.P4663773913603936135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103970.P4663773913603936135

namespace A103970

/-- `record[record[A059268(n)]*A168049(n)]` -/
def P4663773913603936135.Spec : Prop :=
  ∀ n, P4663773913603936135.a n = A103970 n

end A103970

/-! ## A103970.P17399648654953260101

`abs(A167022(n+1))*A000079(n)`
-/

namespace A103970.P17399648654953260101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167022 (n + 1)| * A000079 n

end

end A103970.P17399648654953260101

namespace A103970

/-- `abs(A167022(n+1))*A000079(n)` -/
def P17399648654953260101.Spec : Prop :=
  ∀ n, P17399648654953260101.a n = A103970 n

end A103970

/-! ## A103970.P13509377161505838646

`A007971(n+1)*A077957(2*n)`
-/

namespace A103970.P13509377161505838646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007971 (n + 1) * A077957 (2 * n)

end

end A103970.P13509377161505838646

namespace A103970

/-- `A007971(n+1)*A077957(2*n)` -/
def P13509377161505838646.Spec : Prop :=
  ∀ n, P13509377161505838646.a n = A103970 n

end A103970

/-! ## A103970.P17851024657590974401

`A007971(n+1)/A168053(n)*A168054(n)`
-/

namespace A103970.P17851024657590974401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007971 (n + 1) : ℚ) / (A168053 n : ℚ) * (A168054 n : ℚ)

end

end A103970.P17851024657590974401

namespace A103970

/-- `A007971(n+1)/A168053(n)*A168054(n)` -/
def P17851024657590974401.Spec : Prop :=
  ∀ n, P17851024657590974401.a n = (A103970 n : ℚ)

end A103970

/-! ## A103970.P13634417611933949888

`A007971(n+1)/A168056(n)*A168057(n)`
-/

namespace A103970.P13634417611933949888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007971 (n + 1) : ℚ) / (A168056 n : ℚ) * (A168057 n : ℚ)

end

end A103970.P13634417611933949888

namespace A103970

/-- `A007971(n+1)/A168056(n)*A168057(n)` -/
def P13634417611933949888.Spec : Prop :=
  ∀ n, P13634417611933949888.a n = (A103970 n : ℚ)

end A103970

/-!
# A103971: Expansion of (1 - sqrt(1 - 4*x - 16*x^2))/(2*x).

The programs for A103971, there is no canonical definition to state claims against.
-/

/-! ## A103971.P12655787442241489795

`A048896(n)*A178693(n+1)`
-/

namespace A103971.P12655787442241489795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A178693 (n + 1)

end

end A103971.P12655787442241489795

/-! ## A103971.P9598157265721928093

`lcm(A048896(A028310(n)), A178693(n+1))`
-/

namespace A103971.P9598157265721928093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048896 (A028310 n).toNat) (A178693 (n + 1))

end

end A103971.P9598157265721928093

/-!
# A103972: Expansion of (1-sqrt(1-4*x-20*x^2))/(2*x).

The programs for A103972, there is no canonical definition to state claims against.
-/

/-! ## A103972.P15269898100582706959

`record[lcm(A003586(n+1), A096220(n))]`
-/

namespace A103972.P15269898100582706959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003586 (n + 1)) (A096220 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103972.P15269898100582706959

/-! ## A103972.P4494606883958793438

`A000010(A183369(n+1)+A152745(n))`
-/

namespace A103972.P4494606883958793438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A183369 (n + 1) + A152745 n).toNat

end

end A103972.P4494606883958793438

/-!
# A103973: Expansion of (sqrt(1-8*x^2)+8*x^2+2*x-1)/(2*x*sqrt(1-8*x^2)).

The programs for A103973, the canonical program `A103973.P3322991728647571882` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103973 has offset 0).

The definition of A103973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103973.P3322991728647571882

`A060546(n)*A089849(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103973

/-- `A060546(n)*A089849(n)` -/
def P3322991728647571882.Spec : Prop :=
  ∀ n, P3322991728647571882.a n = A103973 n

theorem P3322991728647571882.correct : P3322991728647571882.Spec := by
  intro n
  simp only [A103973]

end A103973

/-! ## A103973.P4396603433350867969

`A013609(floor(cosh(log((n+1)²))))/n^(n%2)`
-/

namespace A103973.P4396603433350867969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 ⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋.toNat : ℚ) / (n ^ (n % 2) : ℚ)

end

end A103973.P4396603433350867969

namespace A103973

/-- `A013609(floor(cosh(log((n+1)²))))/n^(n%2)` -/
def P4396603433350867969.Spec : Prop :=
  ∀ n, P4396603433350867969.a n = (A103973 n : ℚ)

end A103973

/-! ## A103973.P17552799645708785346

`A013609(A080476(n+1))/A093178(n)`
-/

namespace A103973.P17552799645708785346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 (A080476 (n + 1)).toNat : ℚ) / (A093178 n : ℚ)

end

end A103973.P17552799645708785346

namespace A103973

/-- `A013609(A080476(n+1))/A093178(n)` -/
def P17552799645708785346.Spec : Prop :=
  ∀ n, P17552799645708785346.a n = (A103973 n : ℚ)

end A103973

/-! ## A103973.P8482220181595370079

`A016116(n)*A182073(A027379(n))`
-/

namespace A103973.P8482220181595370079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A182073 (A027379 n).toNat

end

end A103973.P8482220181595370079

namespace A103973

/-- `A016116(n)*A182073(A027379(n))` -/
def P8482220181595370079.Spec : Prop :=
  ∀ n, P8482220181595370079.a n = A103973 n

end A103973

/-! ## A103973.P13840464210313605049

`A016116(n)*A182073(A055998(n))`
-/

namespace A103973.P13840464210313605049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A182073 (A055998 n).toNat

end

end A103973.P13840464210313605049

namespace A103973

/-- `A016116(n)*A182073(A055998(n))` -/
def P13840464210313605049.Spec : Prop :=
  ∀ n, P13840464210313605049.a n = A103973 n

end A103973

/-!
# A103974: Smaller sides (a) in (a,a,a+1)-integer triangle with integer area.

The programs for A103974, the canonical program `A103974.P1959018112211554838` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103974 has offset 1).

The definition of A103974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103974.P1959018112211554838

`14*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103974

/-- `14*a(n-1)-a(n-2)-4` -/
def P1959018112211554838.Spec : Prop :=
  ∀ n, P1959018112211554838.a n = A103974 (n + 1)

theorem P1959018112211554838.correct : P1959018112211554838.Spec := by
  intro n
  simp only [A103974, Nat.add_sub_cancel]

end A103974

/-! ## A103974.P18247456218220365327

`((2+sqrt(3))^(2*n)+(2-sqrt(3))^(2*n)+1)/3`
-/

namespace A103974.P18247456218220365327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) ^ (2 * n) + (2 - Real.sqrt (3 : ℝ)) ^ (2 * n) + 1) / 3

end

end A103974.P18247456218220365327

namespace A103974

/-- `((2+sqrt(3))^(2*n)+(2-sqrt(3))^(2*n)+1)/3` -/
def P18247456218220365327.Spec : Prop :=
  ∀ n, P18247456218220365327.a n = (A103974 (n + 1) : ℝ)

end A103974

/-! ## A103974.P9650565897778470834

`A120893(2*n)`
-/

namespace A103974.P9650565897778470834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 (2 * n)

end

end A103974.P9650565897778470834

namespace A103974

/-- `A120893(2*n)` -/
def P9650565897778470834.Spec : Prop :=
  ∀ n, P9650565897778470834.a n = A103974 (n + 1)

end A103974

/-! ## A103974.P14384214911060920749

`A052530(n)²+1`
-/

namespace A103974.P14384214911060920749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n ^ 2 + 1

end

end A103974.P14384214911060920749

namespace A103974

/-- `A052530(n)²+1` -/
def P14384214911060920749.Spec : Prop :=
  ∀ n, P14384214911060920749.a n = A103974 (n + 1)

end A103974

/-! ## A103974.P16264608167340844490

`2*A011922(n)-1`
-/

namespace A103974.P16264608167340844490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011922 n - 1

end

end A103974.P16264608167340844490

namespace A103974

/-- `2*A011922(n)-1` -/
def P16264608167340844490.Spec : Prop :=
  ∀ n, P16264608167340844490.a n = A103974 (n + 1)

end A103974

/-! ## A103974.P7476028689192776637

`4*A098301(n)+1`
-/

namespace A103974.P7476028689192776637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A098301 n + 1

end

end A103974.P7476028689192776637

namespace A103974

/-- `4*A098301(n)+1` -/
def P7476028689192776637.Spec : Prop :=
  ∀ n, P7476028689192776637.a n = A103974 (n + 1)

end A103974

/-! ## A103974.P7885880997476043761

`Δ[A001835(n)]²+1`
-/

namespace A103974.P7885880997476043761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A103974.P7885880997476043761

namespace A103974

/-- `Δ[A001835(n)]²+1` -/
def P7885880997476043761.Spec : Prop :=
  ∀ n, P7885880997476043761.a n = A103974 (n + 1)

end A103974

/-! ## A103974.P11715632449323996560

`A055793(n+2)+A098301(n)`
-/

namespace A103974.P11715632449323996560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055793 (n + 2) + A098301 n

end

end A103974.P11715632449323996560

namespace A103974

/-- `A055793(n+2)+A098301(n)` -/
def P11715632449323996560.Spec : Prop :=
  ∀ n, P11715632449323996560.a n = A103974 (n + 1)

end A103974

/-! ## A103974.P4972801589392554197

`A046184(n+1)-A001353(2*n)`
-/

namespace A103974.P4972801589392554197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046184 (n + 1) - A001353 (2 * n)

end

end A103974.P4972801589392554197

namespace A103974

/-- `A046184(n+1)-A001353(2*n)` -/
def P4972801589392554197.Spec : Prop :=
  ∀ n, P4972801589392554197.a n = A103974 (n + 1)

end A103974

/-!
# A103975: Smaller side in (a,a+1,a+1)-integer triangle with integer area.

The programs for A103975, the canonical program `A103975.P1075848612096770561` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103975 has offset 1).

The definition of A103975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A103975.P1075848612096770561

`4/3*(A001570(n+2)-1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103975

/-- `4/3*(A001570(n+2)-1)` -/
def P1075848612096770561.Spec : Prop :=
  ∀ n, P1075848612096770561.a n = (A103975 (n + 1) : ℚ)

end A103975

/-! ## A103975.P17548100046774121603

`abs(floor((sqrt(3)+2)²*a(n-1))+7)+11` with `a(0)=16`
-/

namespace A103975.P17548100046774121603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  |⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 7| + 11

end

end A103975.P17548100046774121603

namespace A103975

/-- `abs(floor((sqrt(3)+2)²*a(n-1))+7)+11` -/
def P17548100046774121603.Spec : Prop :=
  ∀ n, P17548100046774121603.a n = A103975 (n + 1)

end A103975

/-! ## A103975.P14279775922624006149

`A103772(n+2)-1`
-/

namespace A103975.P14279775922624006149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103772 (n + 2) - 1

end

end A103975.P14279775922624006149

namespace A103975

/-- `A103772(n+2)-1` -/
def P14279775922624006149.Spec : Prop :=
  ∀ n, P14279775922624006149.a n = A103975 (n + 1)

end A103975

/-! ## A103975.P17248991015606041179

`2*A045899(n+2)`
-/

namespace A103975.P17248991015606041179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045899 (n + 2)

end

end A103975.P17248991015606041179

namespace A103975

/-- `2*A045899(n+2)` -/
def P17248991015606041179.Spec : Prop :=
  ∀ n, P17248991015606041179.a n = A103975 (n + 1)

end A103975

/-! ## A103975.P2130479826794031452

`2*A051047(n+3)`
-/

namespace A103975.P2130479826794031452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051047 (n + 3)

end

end A103975.P2130479826794031452

namespace A103975

/-- `2*A051047(n+3)` -/
def P2130479826794031452.Spec : Prop :=
  ∀ n, P2130479826794031452.a n = A103975 (n + 1)

end A103975

/-! ## A103975.P2713450832300496617

`4*A123480(n+1)`
-/

namespace A103975.P2713450832300496617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123480 (n + 1)

end

end A103975.P2713450832300496617

namespace A103975

/-- `4*A123480(n+1)` -/
def P2713450832300496617.Spec : Prop :=
  ∀ n, P2713450832300496617.a n = A103975 (n + 1)

end A103975

/-! ## A103975.P11766864605699709215

`8*A217855(n+1)`
-/

namespace A103975.P11766864605699709215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A217855 (n + 1)

end

end A103975.P11766864605699709215

namespace A103975

/-- `8*A217855(n+1)` -/
def P11766864605699709215.Spec : Prop :=
  ∀ n, P11766864605699709215.a n = A103975 (n + 1)

end A103975

/-! ## A103975.P1737747337234493944

`16*A076139(n+1)`
-/

namespace A103975.P1737747337234493944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A076139 (n + 1)

end

end A103975.P1737747337234493944

namespace A103975

/-- `16*A076139(n+1)` -/
def P1737747337234493944.Spec : Prop :=
  ∀ n, P1737747337234493944.a n = A103975 (n + 1)

end A103975

/-!
# A103976: Partial sums of A040976 (= primes-2).

The programs for A103976, the canonical program `A103976.P1403983906248291407` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103976 has offset 1).

The definition of A103976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103976.P1403983906248291407

`∑[A040976(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A103976

/-- `∑[A040976(n+1)]` -/
def P1403983906248291407.Spec : Prop :=
  ∀ n, P1403983906248291407.a n = A103976 (n + 1)

theorem P1403983906248291407.correct : P1403983906248291407.Spec := by
  intro n
  simp only [A103976, Nat.add_sub_cancel]

end A103976

/-! ## A103976.P10423351916470261438

`∑[∑[A075526(n)]-1]`
-/

namespace A103976.P10423351916470261438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P10423351916470261438

namespace A103976

/-- `∑[∑[A075526(n)]-1]` -/
def P10423351916470261438.Spec : Prop :=
  ∀ n, P10423351916470261438.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P17552406121211281258

`∑[Δ[A007504(n)]-2]`
-/

namespace A103976.P17552406121211281258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P17552406121211281258

namespace A103976

/-- `∑[Δ[A007504(n)]-2]` -/
def P17552406121211281258.Spec : Prop :=
  ∀ n, P17552406121211281258.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P17777153083313047733

`∑[p?[A259153(n)]-2]`
-/

namespace A103976.P17777153083313047733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P17777153083313047733

namespace A103976

/-- `∑[p?[A259153(n)]-2]` -/
def P17777153083313047733.Spec : Prop :=
  ∀ n, P17777153083313047733.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P18329898577893874952

`∑[A086801(n+1)+1]`
-/

namespace A103976.P18329898577893874952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P18329898577893874952

namespace A103976

/-- `∑[A086801(n+1)+1]` -/
def P18329898577893874952.Spec : Prop :=
  ∀ n, P18329898577893874952.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P5829808775583186795

`∑[A006093(n+1)-1]`
-/

namespace A103976.P5829808775583186795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P5829808775583186795

namespace A103976

/-- `∑[A006093(n+1)-1]` -/
def P5829808775583186795.Spec : Prop :=
  ∀ n, P5829808775583186795.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P10772846467372901010

`∑[A000040(n+1)-2]`
-/

namespace A103976.P10772846467372901010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P10772846467372901010

namespace A103976

/-- `∑[A000040(n+1)-2]` -/
def P10772846467372901010.Spec : Prop :=
  ∀ n, P10772846467372901010.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P6701099621623386639

`∑[A008864(n+1)-3]`
-/

namespace A103976.P6701099621623386639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P6701099621623386639

namespace A103976

/-- `∑[A008864(n+1)-3]` -/
def P6701099621623386639.Spec : Prop :=
  ∀ n, P6701099621623386639.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P3516180825800984542

`∑[A028815(n+1)-3]`
-/

namespace A103976.P3516180825800984542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P3516180825800984542

namespace A103976

/-- `∑[A028815(n+1)-3]` -/
def P3516180825800984542.Spec : Prop :=
  ∀ n, P3516180825800984542.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P17069344896140368483

`∑[A052147(n+1)-4]`
-/

namespace A103976.P17069344896140368483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P17069344896140368483

namespace A103976

/-- `∑[A052147(n+1)-4]` -/
def P17069344896140368483.Spec : Prop :=
  ∀ n, P17069344896140368483.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P1132633309855708486

`∑[A140777(n+1)/2]`
-/

namespace A103976.P1132633309855708486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140777 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P1132633309855708486

namespace A103976

/-- `∑[A140777(n+1)/2]` -/
def P1132633309855708486.Spec : Prop :=
  ∀ n, P1132633309855708486.a n = (A103976 (n + 1) : ℚ)

end A103976

/-! ## A103976.P10247304007002636756

`∑[A113935(n+1)-5]`
-/

namespace A103976.P10247304007002636756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P10247304007002636756

namespace A103976

/-- `∑[A113935(n+1)-5]` -/
def P10247304007002636756.Spec : Prop :=
  ∀ n, P10247304007002636756.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P9566081836534438892

`∑[A065890(n+1)+n]`
-/

namespace A103976.P9566081836534438892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A103976.P9566081836534438892

namespace A103976

/-- `∑[A065890(n+1)+n]` -/
def P9566081836534438892.Spec : Prop :=
  ∀ n, P9566081836534438892.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P3551487247718056097

`A101301(n+1)-(n+1)`
-/

namespace A103976.P3551487247718056097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) - (n + 1 : ℤ)

end

end A103976.P3551487247718056097

namespace A103976

/-- `A101301(n+1)-(n+1)` -/
def P3551487247718056097.Spec : Prop :=
  ∀ n, P3551487247718056097.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P6704696122958249606

`A237589(n+1)-Δ[n²]`
-/

namespace A103976.P6704696122958249606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A103976.P6704696122958249606

namespace A103976

/-- `A237589(n+1)-Δ[n²]` -/
def P6704696122958249606.Spec : Prop :=
  ∀ n, P6704696122958249606.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P12065744371125554585

`A135267(n+1)+n²+n`
-/

namespace A103976.P12065744371125554585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1) + (n ^ 2 + n : ℤ)

end

end A103976.P12065744371125554585

namespace A103976

/-- `A135267(n+1)+n²+n` -/
def P12065744371125554585.Spec : Prop :=
  ∀ n, P12065744371125554585.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P11575991354167162590

`A007504(n+1)-2*(n+1)`
-/

namespace A103976.P11575991354167162590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (2 * (n + 1) : ℤ)

end

end A103976.P11575991354167162590

namespace A103976

/-- `A007504(n+1)-2*(n+1)` -/
def P11575991354167162590.Spec : Prop :=
  ∀ n, P11575991354167162590.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P11476740664740198840

`A060939(n+1)-3*(n+1)`
-/

namespace A103976.P11476740664740198840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060939 (n + 1) - (3 * (n + 1) : ℤ)

end

end A103976.P11476740664740198840

namespace A103976

/-- `A060939(n+1)-3*(n+1)` -/
def P11476740664740198840.Spec : Prop :=
  ∀ n, P11476740664740198840.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P6719564308867206908

`-∑[2-A000040(2*n-(n-1))]`
-/

namespace A103976.P6719564308867206908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103976.P6719564308867206908

namespace A103976

/-- `-∑[2-A000040(2*n-(n-1))]` -/
def P6719564308867206908.Spec : Prop :=
  ∀ n, P6719564308867206908.a n = A103976 (n + 1)

end A103976

/-! ## A103976.P1652395285921456680

`A000040(C(n+1, n))+a(n-1)-2` with `a(0)=0`
-/

namespace A103976.P1652395285921456680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 (Nat.choose (n + 1) n) + (a (n - 1) - 2)

end

end A103976.P1652395285921456680

namespace A103976

/-- `A000040(C(n+1, n))+a(n-1)-2` -/
def P1652395285921456680.Spec : Prop :=
  ∀ n, P1652395285921456680.a n = A103976 (n + 1)

end A103976

/-!
# A103977: Zumkeller deficiency of n: Let d_1 ... d_k be the divisors of n. Then a(n) = min_{ e_1 = +-1, ... e_k = +-1 } | Sum_i e_i d_i |.

The programs for A103977, there is no canonical definition to state claims against.
-/

/-! ## A103977.P2026076917973705133

`abs(A378600(n+1))`
-/

namespace A103977.P2026076917973705133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A378600 (n + 1)|

end

end A103977.P2026076917973705133

/-! ## A103977.P12404832163733646143

`2*A378647(n+1)-A378648(n+1)`
-/

namespace A103977.P12404832163733646143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A378647 (n + 1) - A378648 (n + 1)

end

end A103977.P12404832163733646143

/-! ## A103977.P9859087507001591647

`∑{d}[n+1, A378644(#)]`
-/

namespace A103977.P9859087507001591647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378644 d

end

end A103977.P9859087507001591647

/-! ## A103977.P16738614997976118144

`∑{d}[n+1, #*A378645((n+1)/#)]`
-/

namespace A103977.P16738614997976118144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A103977.P16738614997976118144

/-! ## A103977.P6828234866436424451

`gcd(A000038(n), A378600(n+1))`
-/

namespace A103977.P6828234866436424451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A378600 (n + 1))

end

end A103977.P6828234866436424451

/-! ## A103977.P15641020229651396493

`lcm(A014709(n), A378600(n+1))`
-/

namespace A103977.P15641020229651396493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A378600 (n + 1))

end

end A103977.P15641020229651396493

/-! ## A103977.P10655274209160137803

`A378600(n+1)²/A082729(n+1)`
-/

namespace A103977.P10655274209160137803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378600 (n + 1) ^ 2 : ℚ) / (A082729 (n + 1) : ℚ)

end

end A103977.P10655274209160137803

/-! ## A103977.P1629747608181584996

`(1-A179527(n+1))*A082729(n+1)`
-/

namespace A103977.P1629747608181584996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A179527 (n + 1)) * A082729 (n + 1)

end

end A103977.P1629747608181584996

/-! ## A103977.P12762870415906276558

`A119347(n+1)%2*A082729(n+1)`
-/

namespace A103977.P12762870415906276558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119347 (n + 1)) 2 * A082729 (n + 1)

end

end A103977.P12762870415906276558

/-! ## A103977.P14849303675842991262

`floor(acot(A083206(n+1)))*A082729(n+1)`
-/

namespace A103977.P14849303675842991262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A083206 (n + 1) : ℝ)⌋ * A082729 (n + 1)

end

end A103977.P14849303675842991262

/-! ## A103977.P6114531119456913791

`∑{d}[n+1, A378216(#)*A378649((n+1)/#)]`
-/

namespace A103977.P6114531119456913791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378216 d * A378649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A103977.P6114531119456913791

/-! ## A103977.P4054285549119296066

`∑{d}[n+1, A378225(#)*A378648((n+1)/#)]`
-/

namespace A103977.P4054285549119296066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378225 d * A378648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A103977.P4054285549119296066

/-! ## A103977.P6335658470597343859

`C(A082729(n+1), A010127(A119347(n+1)))`
-/

namespace A103977.P6335658470597343859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A082729 (n + 1)).toNat (A010127 (A119347 (n + 1)).toNat).toNat

end

end A103977.P6335658470597343859

/-! ## A103977.P2282683536783899994

`A082729(n+1)-A010673(A308605(n+1))`
-/

namespace A103977.P2282683536783899994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082729 (n + 1) - A010673 (A308605 (n + 1)).toNat

end

end A103977.P2282683536783899994

/-! ## A103977.P16206384424277680307

`A000007(A083206(n+1))*A082729(n+1)`
-/

namespace A103977.P16206384424277680307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A083206 (n + 1)).toNat * A082729 (n + 1)

end

end A103977.P16206384424277680307

/-!
# A103978: Expansion of (sqrt(1-12*x^2)+12*x^2+2*x-1)/(2*x*sqrt(1-12*x^2)).

The programs for A103978, the canonical program `A103978.P10574377061937498485` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103978 has offset 0).

The definition of A103978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103978.P10574377061937498485

`A056449(n)*A089849(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A103978

/-- `A056449(n)*A089849(n)` -/
def P10574377061937498485.Spec : Prop :=
  ∀ n, P10574377061937498485.a n = A103978 n

theorem P10574377061937498485.correct : P10574377061937498485.Spec := by
  intro n
  simp only [A103978]

end A103978

/-! ## A103978.P17697247024084841790

`A089849(n)*A108411(n+1)`
-/

namespace A103978.P17697247024084841790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 n * A108411 (n + 1)

end

end A103978.P17697247024084841790

namespace A103978

/-- `A089849(n)*A108411(n+1)` -/
def P17697247024084841790.Spec : Prop :=
  ∀ n, P17697247024084841790.a n = A103978 n

end A103978

/-! ## A103978.P925406397235363869

`Δ[A062318(n+2)]*A089849(n)`
-/

namespace A103978.P925406397235363869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A089849 n

end

end A103978.P925406397235363869

namespace A103978

/-- `Δ[A062318(n+2)]*A089849(n)` -/
def P925406397235363869.Spec : Prop :=
  ∀ n, P925406397235363869.a n = A103978 n

end A103978

/-! ## A103978.P733493550163900925

`A000244(A110654(n))*A089849(n)`
-/

namespace A103978.P733493550163900925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A110654 n).toNat * A089849 n

end

end A103978.P733493550163900925

namespace A103978

/-- `A000244(A110654(n))*A089849(n)` -/
def P733493550163900925.Spec : Prop :=
  ∀ n, P733493550163900925.a n = A103978 n

end A103978

/-! ## A103978.P14927509605876158298

`A013610(A080476(n+1))/A093178(n)`
-/

namespace A103978.P14927509605876158298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 (A080476 (n + 1)).toNat : ℚ) / (A093178 n : ℚ)

end

end A103978.P14927509605876158298

namespace A103978

/-- `A013610(A080476(n+1))/A093178(n)` -/
def P14927509605876158298.Spec : Prop :=
  ∀ n, P14927509605876158298.a n = (A103978 n : ℚ)

end A103978

/-!
# A103979: Reduced numerators of x^(2n) in the series expansion of erf(x)^2 Pi/4 about 0.

The programs for A103979, there is no canonical definition to state claims against.
-/

/-! ## A103979.P6394426386204126445

`A000720(A134829(lcm(4, 1-(n+2)²)/4)+1)-(n+1)`
-/

namespace A103979.P6394426386204126445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A134829 (SequenceMachineLib.roundAway ((Int.lcm 4 (1 - ((n + 2) ^ 2 : ℤ)) : ℚ) / 4)).toNat + 1).toNat - (n + 1 : ℤ)

end

end A103979.P6394426386204126445

/-!
# A103980: Reduced denominators of x^(2n) in the series expansion of erf(x)^2 Pi/4 about 0.

The programs for A103980, there is no canonical definition to state claims against.
-/

/-! ## A103980.P15248566806803396322

`gcd(A001783(2*n+1), A094889(A164161(2*n+1)))`
-/

namespace A103980.P15248566806803396322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001783 (2 * n + 1)) (A094889 (A164161 (2 * n + 1)).toNat)

end

end A103980.P15248566806803396322

/-! ## A103980.P9434913937857785840

`A099377(∏[abs(1-2*n)]*A059366(n))`
-/

namespace A103980.P9434913937857785840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099377 ((∏ j ∈ Finset.range (n + 1), f1 j) * A059366 n).toNat

end

end A103980.P9434913937857785840

/-!
# A103981: Number of prime factors (with multiplicity) of octahedral numbers (A005900).

The programs for A103981, the canonical program `A103981.P618022532631533443` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103981 has offset 0).

The definition of A103981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103981.P618022532631533443

`∑{e}[∑[4*C(n, 2)]+n, #]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103981

/-- `∑{e}[∑[4*C(n, 2)]+n, #]` -/
def P618022532631533443.Spec : Prop :=
  ∀ n, (P618022532631533443.a n : ℤ) = A103981 n

theorem P618022532631533443.correct : P618022532631533443.Spec := by
  intro n
  simp only [A103981]

end A103981

/-! ## A103981.P5782273303579894892

`∑{e}[∑[2*n²]-n², #]`
-/

namespace A103981.P5782273303579894892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A103981.P5782273303579894892

namespace A103981

/-- `∑{e}[∑[2*n²]-n², #]` -/
def P5782273303579894892.Spec : Prop :=
  ∀ n, (P5782273303579894892.a n : ℤ) = A103981 n

end A103981

/-! ## A103981.P6757824532001264953

`dr(∑{e}[(2*n^3+n)/3, #])`
-/

namespace A103981.P6757824532001264953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℕ) : ℤ)

end

end A103981.P6757824532001264953

namespace A103981

/-- `dr(∑{e}[(2*n^3+n)/3, #])` -/
def P6757824532001264953.Spec : Prop :=
  ∀ n, (P6757824532001264953.a n : ℤ) = A103981 n

end A103981

/-! ## A103981.P3450381781595594896

`log(∏{e}[(2*n*n²+n)/3, exp(#)])`
-/

namespace A103981.P3450381781595594896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n * n ^ 2) + n : ℚ) / 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Real.exp (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℝ))

end

end A103981.P3450381781595594896

namespace A103981

/-- `log(∏{e}[(2*n*n²+n)/3, exp(#)])` -/
def P3450381781595594896.Spec : Prop :=
  ∀ n, P3450381781595594896.a n = (A103981 n : ℝ)

end A103981

/-! ## A103981.P4724522761693725485

`∑{e}[A005900(n), #]%10`
-/

namespace A103981.P4724522761693725485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 10

end

end A103981.P4724522761693725485

namespace A103981

/-- `∑{e}[A005900(n), #]%10` -/
def P4724522761693725485.Spec : Prop :=
  ∀ n, (P4724522761693725485.a n : ℤ) = A103981 n

end A103981

/-! ## A103981.P5479002119641486336

`A007095(∑{e}[A005900(n), #])`
-/

namespace A103981.P5479002119641486336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A103981.P5479002119641486336

namespace A103981

/-- `A007095(∑{e}[A005900(n), #])` -/
def P5479002119641486336.Spec : Prop :=
  ∀ n, P5479002119641486336.a n = A103981 n

end A103981

/-! ## A103981.P10613163521527236012

`A025482(∑{e}[A005900(n), #])`
-/

namespace A103981.P10613163521527236012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025482 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A103981.P10613163521527236012

namespace A103981

/-- `A025482(∑{e}[A005900(n), #])` -/
def P10613163521527236012.Spec : Prop :=
  ∀ n, P10613163521527236012.a n = A103981 n

end A103981

/-! ## A103981.P11892157755304877539

`A025483(∑{e}[A005900(n), #])`
-/

namespace A103981.P11892157755304877539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025483 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A103981.P11892157755304877539

namespace A103981

/-- `A025483(∑{e}[A005900(n), #])` -/
def P11892157755304877539.Spec : Prop :=
  ∀ n, P11892157755304877539.a n = A103981 n

end A103981

/-! ## A103981.P5388049364659020924

`A055646(∑{e}[A005900(n), #])`
-/

namespace A103981.P5388049364659020924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A103981.P5388049364659020924

namespace A103981

/-- `A055646(∑{e}[A005900(n), #])` -/
def P5388049364659020924.Spec : Prop :=
  ∀ n, P5388049364659020924.a n = A103981 n

end A103981

/-! ## A103981.P10483818105390605351

`A001222(2^∑{e}[A005900(n), #])`
-/

namespace A103981.P10483818105390605351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A103981.P10483818105390605351

namespace A103981

/-- `A001222(2^∑{e}[A005900(n), #])` -/
def P10483818105390605351.Spec : Prop :=
  ∀ n, P10483818105390605351.a n = A103981 n

end A103981

/-! ## A103981.P8839308698276352936

`A001222(∏{e}[A005900(n), 2^#])`
-/

namespace A103981.P8839308698276352936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p)

end

end A103981.P8839308698276352936

namespace A103981

/-- `A001222(∏{e}[A005900(n), 2^#])` -/
def P8839308698276352936.Spec : Prop :=
  ∀ n, P8839308698276352936.a n = A103981 n

end A103981

/-! ## A103981.P2161835533051934639

`∑{d}[∑{e}[A005900(n), #], A000010(#)]`
-/

namespace A103981.P2161835533051934639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A103981.P2161835533051934639

namespace A103981

/-- `∑{d}[∑{e}[A005900(n), #], A000010(#)]` -/
def P2161835533051934639.Spec : Prop :=
  ∀ n, P2161835533051934639.a n = A103981 n

end A103981

/-! ## A103981.P12333802262919602524

`A000005(∏{e}[A005900(n), 2^#])-1`
-/

namespace A103981.P12333802262919602524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p) - 1

end

end A103981.P12333802262919602524

namespace A103981

/-- `A000005(∏{e}[A005900(n), 2^#])-1` -/
def P12333802262919602524.Spec : Prop :=
  ∀ n, P12333802262919602524.a n = A103981 n

end A103981

/-! ## A103981.P16071883248684818446

`A001414(∏{e}[A005900(n), 2^#])/2`
-/

namespace A103981.P16071883248684818446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p) : ℚ) / 2

end

end A103981.P16071883248684818446

namespace A103981

/-- `A001414(∏{e}[A005900(n), 2^#])/2` -/
def P16071883248684818446.Spec : Prop :=
  ∀ n, P16071883248684818446.a n = (A103981 n : ℚ)

end A103981

/-! ## A103981.P6281806238564023593

`∑{d}[∏{e}[A005900(n), 2^#], A001221(#)]`
-/

namespace A103981.P6281806238564023593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, 2 ^ Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d

end

end A103981.P6281806238564023593

namespace A103981

/-- `∑{d}[∏{e}[A005900(n), 2^#], A001221(#)]` -/
def P6281806238564023593.Spec : Prop :=
  ∀ n, P6281806238564023593.a n = A103981 n

end A103981

/-! ## A103981.P5478062495622406529

`A014963(3*A000010(n+1))*∑{e}[A005900(n), #]`
-/

namespace A103981.P5478062495622406529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * A000010 (n + 1)).toNat * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A103981.P5478062495622406529

namespace A103981

/-- `A014963(3*A000010(n+1))*∑{e}[A005900(n), #]` -/
def P5478062495622406529.Spec : Prop :=
  ∀ n, P5478062495622406529.a n = A103981 n

end A103981

/-!
# A103982: Indices of octahedral numbers (A005900) which are semiprimes.

The programs for A103982, the canonical program `A103982.P552433682598118556` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103982 has offset 1).

The definition of A103982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103982.P552433682598118556

`eq[2, A103981(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A103982

/-- `eq[2, A103981(n)]` -/
def P552433682598118556.Spec : Prop :=
  ∀ n, (P552433682598118556.a n : ℤ) = A103982 (n + 1)

theorem P552433682598118556.correct : P552433682598118556.Spec := by
  intro n
  simp only [A103982, Nat.add_sub_cancel]

end A103982

/-! ## A103982.P2026750140129487160

`lt[A103954(A103981(n)+1), 2]`
-/

namespace A103982.P2026750140129487160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103954 (A103981 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A103982.P2026750140129487160

namespace A103982

/-- `lt[A103954(A103981(n)+1), 2]` -/
def P2026750140129487160.Spec : Prop :=
  ∀ n, (P2026750140129487160.a n : ℤ) = A103982 (n + 1)

end A103982

/-! ## A103982.P18414165523611159458

`eq[2, A001222(A058331(n))*A105700(n)]`
-/

namespace A103982.P18414165523611159458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A058331 n).toNat * A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103982.P18414165523611159458

namespace A103982

/-- `eq[2, A001222(A058331(n))*A105700(n)]` -/
def P18414165523611159458.Spec : Prop :=
  ∀ n, (P18414165523611159458.a n : ℤ) = A103982 (n + 1)

end A103982

/-! ## A103982.P5361312161638701301

`eq[2, ∑{e}[A005900(n), #]]`
-/

namespace A103982.P5361312161638701301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A103982.P5361312161638701301

namespace A103982

/-- `eq[2, ∑{e}[A005900(n), #]]` -/
def P5361312161638701301.Spec : Prop :=
  ∀ n, (P5361312161638701301.a n : ℤ) = A103982 (n + 1)

end A103982

/-! ## A103982.P615110964839774115

`eq[4, A001414(∏{e}[A005900(n), 2^#])]`
-/

namespace A103982.P615110964839774115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, 2 ^ Nat.factorization (f3 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A103982.P615110964839774115

namespace A103982

/-- `eq[4, A001414(∏{e}[A005900(n), 2^#])]` -/
def P615110964839774115.Spec : Prop :=
  ∀ n, (P615110964839774115.a n : ℤ) = A103982 (n + 1)

end A103982

/-!
# A103990: Reduced numerators of the hypercube line-picking integrand sqrt(Pi)*I(n,0).

The programs for A103990, there is no canonical definition to state claims against.
-/

/-! ## A103990.P17129688993157345995

`A146307((n²+2+n)*(n+1)+1)`
-/

namespace A103990.P17129688993157345995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 ((n ^ 2 + 2 + n) * (n + 1) + 1)

end

end A103990.P17129688993157345995

/-! ## A103990.P4547523146789996446

`A068217(A261893(n)+2)`
-/

namespace A103990.P4547523146789996446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 (A261893 n + 2).toNat

end

end A103990.P4547523146789996446

/-! ## A103990.P13409208366308012804

`A068217(2*A006000(n)+1)`
-/

namespace A103990.P13409208366308012804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 (2 * A006000 n + 1).toNat

end

end A103990.P13409208366308012804

/-! ## A103990.P6387910219757837076

`A068217(A006000(n)+A006000(n)+1)`
-/

namespace A103990.P6387910219757837076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 (A006000 n + (A006000 n + 1)).toNat

end

end A103990.P6387910219757837076

/-! ## A103990.P534789904676539749

`A145064(4*A006000(n))`
-/

namespace A103990.P534789904676539749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (4 * A006000 n).toNat

end

end A103990.P534789904676539749

/-!
# A103991: Reduced denominators of the hypercube line-picking integrand sqrt(Pi)*I(n,0).

The programs for A103991, the canonical program `A103991.P15002794807171161004` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A103991 has offset 1).

The definition of A103991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A103991.P15002794807171161004

`lcm(2*n+3, gcd(3, ∑[n]))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A103991

/-- `lcm(2*n+3, gcd(3, ∑[n]))` -/
def P15002794807171161004.Spec : Prop :=
  ∀ n, (P15002794807171161004.a n : ℤ) = A103991 (n + 1)

theorem P15002794807171161004.correct : P15002794807171161004.Spec := by
  intro n
  simp only [A103991, Nat.add_sub_cancel]

end A103991

/-! ## A103991.P216104868484990237

`or(1, n%3)*(2*n+3)`
-/

namespace A103991.P216104868484990237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n % 3) * (2 * n + 3)

end

end A103991.P216104868484990237

namespace A103991

/-- `or(1, n%3)*(2*n+3)` -/
def P216104868484990237.Spec : Prop :=
  ∀ n, (P216104868484990237.a n : ℤ) = A103991 (n + 1)

end A103991

/-! ## A103991.P10149497161546300266

`gcd(6*n+9, ∑[8*n]-3)`
-/

namespace A103991.P10149497161546300266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 * n + 9 : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3)

end

end A103991.P10149497161546300266

namespace A103991

/-- `gcd(6*n+9, ∑[8*n]-3)` -/
def P10149497161546300266.Spec : Prop :=
  ∀ n, (P10149497161546300266.a n : ℤ) = A103991 (n + 1)

end A103991

/-! ## A103991.P3522371553282045885

`(2*n+3)*gcd(n+1, n-2)`
-/

namespace A103991.P3522371553282045885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * Int.gcd (n + 1 : ℤ) ((n : ℤ) - 2)

end

end A103991.P3522371553282045885

namespace A103991

/-- `(2*n+3)*gcd(n+1, n-2)` -/
def P3522371553282045885.Spec : Prop :=
  ∀ n, (P3522371553282045885.a n : ℤ) = A103991 (n + 1)

end A103991

/-! ## A103991.P8808990597863099831

`(2*n+3)*A109007(n+1)`
-/

namespace A103991.P8808990597863099831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A109007 (n + 1)

end

end A103991.P8808990597863099831

namespace A103991

/-- `(2*n+3)*A109007(n+1)` -/
def P8808990597863099831.Spec : Prop :=
  ∀ n, P8808990597863099831.a n = A103991 (n + 1)

end A103991

/-! ## A103991.P14908840370102245868

`A014105(n+1)/A051176(n+1)`
-/

namespace A103991.P14908840370102245868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014105 (n + 1) : ℚ) / (A051176 (n + 1) : ℚ)

end

end A103991.P14908840370102245868

namespace A103991

/-- `A014105(n+1)/A051176(n+1)` -/
def P14908840370102245868.Spec : Prop :=
  ∀ n, P14908840370102245868.a n = (A103991 (n + 1) : ℚ)

end A103991

/-! ## A103991.P4979088343002811730

`A203648(n+1)+A203648(n+1)+A109007(n+1)`
-/

namespace A103991.P4979088343002811730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203648 (n + 1) + (A203648 (n + 1) + A109007 (n + 1))

end

end A103991.P4979088343002811730

namespace A103991

/-- `A203648(n+1)+A203648(n+1)+A109007(n+1)` -/
def P4979088343002811730.Spec : Prop :=
  ∀ n, P4979088343002811730.a n = A103991 (n + 1)

end A103991

/-! ## A103991.P8214680058181809053

`A146535(n+2)*A169609(n+2)`
-/

namespace A103991.P8214680058181809053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 2) * A169609 (n + 2)

end

end A103991.P8214680058181809053

namespace A103991

/-- `A146535(n+2)*A169609(n+2)` -/
def P8214680058181809053.Spec : Prop :=
  ∀ n, P8214680058181809053.a n = A103991 (n + 1)

end A103991

/-! ## A103991.P2894028544616605482

`A168059(2*(n+1))/A051176(n+1)`
-/

namespace A103991.P2894028544616605482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168059 (2 * (n + 1)) : ℚ) / (A051176 (n + 1) : ℚ)

end

end A103991.P2894028544616605482

namespace A103991

/-- `A168059(2*(n+1))/A051176(n+1)` -/
def P2894028544616605482.Spec : Prop :=
  ∀ n, P2894028544616605482.a n = (A103991 (n + 1) : ℚ)

end A103991

/-! ## A103991.P12309520881452496299

`A144437(n+2)*A145064(2*n+1)`
-/

namespace A103991.P12309520881452496299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144437 (n + 2) * A145064 (2 * n + 1)

end

end A103991.P12309520881452496299

namespace A103991

/-- `A144437(n+2)*A145064(2*n+1)` -/
def P12309520881452496299.Spec : Prop :=
  ∀ n, P12309520881452496299.a n = A103991 (n + 1)

end A103991

/-! ## A103991.P5540515398940940266

`A253145(2*n+1)/A051176(n+1)`
-/

namespace A103991.P5540515398940940266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253145 (2 * n + 1) : ℚ) / (A051176 (n + 1) : ℚ)

end

end A103991.P5540515398940940266

namespace A103991

/-- `A253145(2*n+1)/A051176(n+1)` -/
def P5540515398940940266.Spec : Prop :=
  ∀ n, P5540515398940940266.a n = (A103991 (n + 1) : ℚ)

end A103991

/-! ## A103991.P2449575235598718751

`A145064(2*n+1)*A169609(n+2)`
-/

namespace A103991.P2449575235598718751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (2 * n + 1) * A169609 (n + 2)

end

end A103991.P2449575235598718751

namespace A103991

/-- `A145064(2*n+1)*A169609(n+2)` -/
def P2449575235598718751.Spec : Prop :=
  ∀ n, P2449575235598718751.a n = A103991 (n + 1)

end A103991

/-! ## A103991.P12670621754446426330

`A294178(A047236(n+2))`
-/

namespace A103991.P12670621754446426330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (A047236 (n + 2)).toNat

end

end A103991.P12670621754446426330

namespace A103991

/-- `A294178(A047236(n+2))` -/
def P12670621754446426330.Spec : Prop :=
  ∀ n, P12670621754446426330.a n = A103991 (n + 1)

end A103991

/-! ## A103991.P4383777260835001642

`A221920(A221920(2*n+3))`
-/

namespace A103991.P4383777260835001642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221920 (A221920 (2 * n + 3)).toNat

end

end A103991.P4383777260835001642

namespace A103991

/-- `A221920(A221920(2*n+3))` -/
def P4383777260835001642.Spec : Prop :=
  ∀ n, P4383777260835001642.a n = A103991 (n + 1)

end A103991

/-!
# A103994: Triangle read by rows: A129360 * A115361 as infinite lower triangular matrices.

The programs for A103994, there is no canonical definition to state claims against.
-/

/-! ## A103994.P17847988116882714937

`round(atan(A129501(n+1)))`
-/

namespace A103994.P17847988116882714937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A129501 (n + 1) : ℝ))

end

end A103994.P17847988116882714937

/-! ## A103994.P704013655639347599

`A129501(n+1)/A001511(A010766(n+1))`
-/

namespace A103994.P704013655639347599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129501 (n + 1) : ℚ) / (A001511 (A010766 (n + 1)).toNat : ℚ)

end

end A103994.P704013655639347599

/-! ## A103994.P133375742418597696

`A129501(n+1)/A001511(A054531(n+1))`
-/

namespace A103994.P133375742418597696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129501 (n + 1) : ℚ) / (A001511 (A054531 (n + 1)).toNat : ℚ)

end

end A103994.P133375742418597696

/-! ## A103994.P13661630460301846270

`A129501(n+1)/A137734(A129501(n+1)²)`
-/

namespace A103994.P13661630460301846270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129501 (n + 1) : ℚ) / (A137734 (A129501 (n + 1) ^ 2).toNat : ℚ)

end

end A103994.P13661630460301846270

/-! ## A103994.P17901735304826086772

`A129501(n+1)/A137735(A129501(n+1)²)`
-/

namespace A103994.P17901735304826086772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129501 (n + 1) : ℚ) / (A137735 (A129501 (n + 1) ^ 2).toNat : ℚ)

end

end A103994.P17901735304826086772

/-! ## A103994.P8612298587477687920

`A129501(n+1)/gcd(A129501(n+1), A290126(n+1))`
-/

namespace A103994.P8612298587477687920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129501 (n + 1) : ℚ) / (Int.gcd (A129501 (n + 1)) (A290126 (n + 1)) : ℚ)

end

end A103994.P8612298587477687920

/-!
# A103995: First column of triangle A103910.

The programs for A103995, there is no canonical definition to state claims against.
-/

/-! ## A103995.P15789533035979266350

`A103910(∑[n]+1)`
-/

namespace A103995.P15789533035979266350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A103995.P15789533035979266350

/-! ## A103995.P17193214776398005162

`A185237(n)+A103910(A000124(n))`
-/

namespace A103995.P17193214776398005162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n + A103910 (A000124 n).toNat

end

end A103995.P17193214776398005162

/-! ## A103995.P17068427438072913982

`or(A017877(n), A103910(A000124(n)))`
-/

namespace A103995.P17068427438072913982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017877 n) (A103910 (A000124 n).toNat)

end

end A103995.P17068427438072913982

/-! ## A103995.P16098217190507338726

`or(A103910(A000124(n)), A216513(n))`
-/

namespace A103995.P16098217190507338726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103910 (A000124 n).toNat) (A216513 n)

end

end A103995.P16098217190507338726

/-!
# A103997: Square array T(M,N) read by antidiagonals: number of dimer tilings of a 2*M X 2*N Moebius strip.

The programs for A103997, there is no canonical definition to state claims against.
-/

/-! ## A103997.P6029161299349879420

`A096646(A059300(n))`
-/

namespace A103997.P6029161299349879420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096646 (A059300 n).toNat

end

end A103997.P6029161299349879420

/-! ## A103997.P17469772920164519851

`A096646(A132813(n))`
-/

namespace A103997.P17469772920164519851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096646 (A132813 n).toNat

end

end A103997.P17469772920164519851

/-! ## A103997.P149616592250800068

`A012265(A108625(n)²)`
-/

namespace A103997.P149616592250800068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A108625 n ^ 2).toNat

end

end A103997.P149616592250800068

/-! ## A103997.P16330661338403689343

`A175210(A058711(n+1))`
-/

namespace A103997.P16330661338403689343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175210 (A058711 (n + 1)).toNat

end

end A103997.P16330661338403689343

/-! ## A103997.P15767556700496607868

`A128282(A221828(n+1))`
-/

namespace A103997.P15767556700496607868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128282 (A221828 (n + 1)).toNat

end

end A103997.P15767556700496607868

/-!
# A103998: Number of dimer tilings of a 4 x 2n Moebius strip.

The programs for A103998, there is no canonical definition to state claims against.
-/

/-! ## A103998.P7430784828056081756

`A103997(∑[n+3])`
-/

namespace A103998.P7430784828056081756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A103998.P7430784828056081756

/-! ## A103998.P7396899676121075902

`A103997(A141214(n))+char[8]`
-/

namespace A103998.P7396899676121075902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A103998.P7396899676121075902

/-! ## A103998.P18190101873452596639

`record[A103997(and(n, A106467(n)))]`
-/

namespace A103998.P18190101873452596639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 (Int.land (n : ℤ) (A106467 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103998.P18190101873452596639

/-! ## A103998.P9448531140252243749

`record[gcd(A103997(n), A173018(n+2))]`
-/

namespace A103998.P9448531140252243749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103997 n) (A173018 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A103998.P9448531140252243749

/-!
# A103999: Square array T(M,N) read by antidiagonals: number of dimer tilings of a 2M x 2N Klein bottle.

The programs for A103999, there is no canonical definition to state claims against.
-/

/-! ## A103999.P9524465925957443019

`A375590(A119726(n+1))`
-/

namespace A103999.P9524465925957443019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375590 (A119726 (n + 1)).toNat

end

end A103999.P9524465925957443019

/-! ## A103999.P1608624125270994918

`A032581(A152602(n))%A055025(n+1)`
-/

namespace A103999.P1608624125270994918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032581 (A152602 n).toNat) (A055025 (n + 1))

end

end A103999.P1608624125270994918

/-! ## A103999.P5743564990989878195

`A319608(A272523(n+1))`
-/

namespace A103999.P5743564990989878195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319608 (A272523 (n + 1)).toNat

end

end A103999.P5743564990989878195

/-! ## A103999.P3099857696975714576

`A216672(p?[Δ[A207467(n+1)]])`
-/

namespace A103999.P3099857696975714576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207467 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103999.P3099857696975714576

/-! ## A103999.P13415542449753743540

`A263597(A122797(n+1)^floor(sqrt(n))!)`
-/

namespace A103999.P13415542449753743540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A122797 (n + 1) ^ Nat.factorial (Nat.sqrt n)).toNat

end

end A103999.P13415542449753743540

