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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A300300: Number of ways to choose a multiset of strict partitions, or odd partitions, of odd numbers, whose weights sum to n.

The programs for A300300, there is no canonical definition to state claims against.
-/

/-! ## A300300.P7570725917373322669

`A120882(A374762(n))`
-/

namespace A300300.P7570725917373322669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120882 (A374762 n).toNat

end

end A300300.P7570725917373322669

/-! ## A300300.P13435917476448880789

`A338006(A206268(n))`
-/

namespace A300300.P13435917476448880789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A206268 n).toNat

end

end A300300.P13435917476448880789

/-! ## A300300.P523537585204331880

`A338006(A349977(n+2))`
-/

namespace A300300.P523537585204331880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A349977 (n + 2)).toNat

end

end A300300.P523537585204331880

/-! ## A300300.P13945497438514787997

`A338006(Δ[Δ[A208354(n)]])`
-/

namespace A300300.P13945497438514787997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (f1 (n + 1) - f1 n).toNat

end

end A300300.P13945497438514787997

/-! ## A300300.P4913608897592659330

`Δ[A000196(xor(3, A137531(n)))]`
-/

namespace A300300.P4913608897592659330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor 3 (A137531 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300300.P4913608897592659330

/-!
# A300301: Number of ways to choose a partition, with odd parts, of each part of a partition of n into odd parts.

The programs for A300301, there is no canonical definition to state claims against.
-/

/-! ## A300301.P15072511566749353181

`A380649(A265506(n))`
-/

namespace A300301.P15072511566749353181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380649 (A265506 n).toNat

end

end A300301.P15072511566749353181

/-! ## A300301.P8622919210163995734

`A338466(A366317(n))`
-/

namespace A300301.P8622919210163995734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A366317 n).toNat

end

end A300301.P8622919210163995734

/-! ## A300301.P11289135011630699454

`A338466(C(A111133(n)+2, 2))`
-/

namespace A300301.P11289135011630699454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (Nat.choose (A111133 n + 2).toNat 2)

end

end A300301.P11289135011630699454

/-! ## A300301.P3303067881891030422

`A345388(A229887(n))+A265506(n)`
-/

namespace A300301.P3303067881891030422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345388 (A229887 n).toNat + A265506 n

end

end A300301.P3303067881891030422

/-! ## A300301.P1449427886671226369

`A338466(A265508(n)+A265506(n))`
-/

namespace A300301.P1449427886671226369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (A265508 n + A265506 n).toNat

end

end A300301.P1449427886671226369

/-!
# A300302: Square array T(n, k) (n >= 1, k >= 1) read by antidiagonals upwards: T(n, k) is the k-th positive number whose binary representation contains the binary representation of n as a substring.

The programs for A300302, there is no canonical definition to state claims against.
-/

/-! ## A300302.P14693816584348424938

`A232615(A036561(n))+A193592(n)`
-/

namespace A300302.P14693816584348424938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232615 (A036561 n).toNat + A193592 n

end

end A300302.P14693816584348424938

/-! ## A300302.P3460817686456687538

`A051162(A038722(n+1)%A139205(n+1))`
-/

namespace A300302.P3460817686456687538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Int.tmod (A038722 (n + 1)) (A139205 (n + 1))).toNat

end

end A300302.P3460817686456687538

/-! ## A300302.P15018929299873484976

`A193592(n)+A001221(A036484(n))`
-/

namespace A300302.P15018929299873484976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n + A001221 (A036484 n).toNat

end

end A300302.P15018929299873484976

/-! ## A300302.P8666450331964299017

`A001222(A120458(n)*A182944(n+1))`
-/

namespace A300302.P8666450331964299017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A120458 n * A182944 (n + 1)).toNat

end

end A300302.P8666450331964299017

/-! ## A300302.P8970747371141108737

`A001222(lcm(A120458(n), A182944(n+1)))`
-/

namespace A300302.P8970747371141108737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A120458 n) (A182944 (n + 1)))

end

end A300302.P8970747371141108737

/-!
# A300303: Squares that are not of the form x^2 + x*y + y^2, where x and y are positive integers.

The programs for A300303, there is no canonical definition to state claims against.
-/

/-! ## A300303.P16750433308689417333

`eq[0, A374099(n)]²`
-/

namespace A300303.P16750433308689417333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A300303.P16750433308689417333

/-! ## A300303.P17406039019035583587

`comp[A050931(n+1)]²`
-/

namespace A300303.P17406039019035583587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A300303.P17406039019035583587

/-! ## A300303.P2106753148161076047

`comp[A195867(n+1)]²`
-/

namespace A300303.P2106753148161076047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A300303.P2106753148161076047

/-! ## A300303.P7536790572459337774

`comp[A246918(n+5)]²`
-/

namespace A300303.P7536790572459337774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246918 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A300303.P7536790572459337774

/-! ## A300303.P4509144395555141462

`eq[1, A088534(n²)]²`
-/

namespace A300303.P4509144395555141462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A300303.P4509144395555141462

/-! ## A300303.P14791446271282139873

`∩[A198772(n+1), n²]`
-/

namespace A300303.P14791446271282139873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A300303.P14791446271282139873

/-! ## A300303.P2781096622492029303

`∪[A230780(n+1), n²²]²`
-/

namespace A300303.P2781096622492029303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n ^ 2

end

end A300303.P2781096622492029303

/-! ## A300303.P15878647328374375303

`comp[lt[1, A115069(n+1)]+1]²`
-/

namespace A300303.P15878647328374375303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115069 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A300303.P15878647328374375303

/-! ## A300303.P12842465812655292725

`comp[lt[1, A170824(n+1)]+1]²`
-/

namespace A300303.P12842465812655292725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A300303.P12842465812655292725

/-! ## A300303.P15025829230415093267

`comp[lt[1, A248909(n+1)]+1]²`
-/

namespace A300303.P15025829230415093267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A300303.P15025829230415093267

/-!
# A300305: Expected rounded number of draws until two persons simultaneously drawing cards with replacement from two decks of cards with m and n cards, respectively, both obtain complete collections, written as triangle T(m,n), 1 <= n <= m.

The programs for A300305, there is no canonical definition to state claims against.
-/

/-! ## A300305.P16013340899924940835

`A130253(A002062(n)*A059779(n))`
-/

namespace A300305.P16013340899924940835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130253 (A002062 n * A059779 n).toNat

end

end A300305.P16013340899924940835

/-! ## A300305.P348320753663370914

`∑[A003137(A047486(A048584(n)))]`
-/

namespace A300305.P348320753663370914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A047486 (A048584 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300305.P348320753663370914

/-! ## A300305.P3427414886655077288

`A091497(lt[A091453(n), A091467(2*(n+1))])`
-/

namespace A300305.P3427414886655077288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091467 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091497 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A300305.P3427414886655077288

/-! ## A300305.P229840272602376296

`∑[A204179(A078740(n+1))+A147781(n+1)]`
-/

namespace A300305.P229840272602376296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204179 (A078740 (n + 1)).toNat + A147781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300305.P229840272602376296

/-! ## A300305.P15848884222302186172

`A189726(n+1)+A001221(A236096(n+1))`
-/

namespace A300305.P15848884222302186172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189726 (n + 1) + A001221 (A236096 (n + 1)).toNat

end

end A300305.P15848884222302186172

/-!
# A300306: Expected rounded number of draws until two persons simultaneously drawing cards with replacement from two separate decks of n cards, both obtain complete collections.

The programs for A300306, there is no canonical definition to state claims against.
-/

/-! ## A300306.P2925315223733269476

`floor(∑[log(A312608(2*n+1))])`
-/

namespace A300306.P2925315223733269476
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A312608 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A300306.P2925315223733269476

/-! ## A300306.P4011078126939016768

`round(∑[log(A184921(2*n+1))])`
-/

namespace A300306.P4011078126939016768
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A184921 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300306.P4011078126939016768

/-! ## A300306.P14355066483229945844

`ceil(∑[log(A269372(3*n+1))])`
-/

namespace A300306.P14355066483229945844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A269372 (3 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A300306.P14355066483229945844

/-! ## A300306.P8882856404596558925

`round(∑[log(A286666(4*n+2))])`
-/

namespace A300306.P8882856404596558925
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A286666 (4 * n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300306.P8882856404596558925

/-! ## A300306.P9412412597280935344

`ceil(log(Δ[A129505(n+1)]))`
-/

namespace A300306.P9412412597280935344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (f1 (n + 1) - f1 n : ℝ)⌉

end

end A300306.P9412412597280935344

/-!
# A300307: Number of solutions to 1 +- 3 +- 6 +- ... +- n*(n+1)/2 == 0 mod n.

The programs for A300307, there is no canonical definition to state claims against.
-/

/-! ## A300307.P16550536286801922581

`A300324(∑[n]+1)/2`
-/

namespace A300307.P16550536286801922581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300324 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A300307.P16550536286801922581

/-! ## A300307.P9833133563809988554

`floor(A300324(A000124(n))/2)`
-/

namespace A300307.P9833133563809988554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300324 (A000124 n).toNat : ℚ) / 2⌋

end

end A300307.P9833133563809988554

/-! ## A300307.P8893721685165344978

`or(A300324(A000124(n))/2, A000007(n))`
-/

namespace A300307.P8893721685165344978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A300324 (A000124 n).toNat : ℚ) / 2)) (A000007 n)

end

end A300307.P8893721685165344978

/-! ## A300307.P14317656715594389387

`A300324(A000124(n))/2*char[A057163(n)]`
-/

namespace A300307.P14317656715594389387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300324 (A000124 n).toNat : ℚ) / 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A300307.P14317656715594389387

/-! ## A300307.P11447204677061511239

`or(A300324(A000124(n))/2, A039975(2*n+1))`
-/

namespace A300307.P11447204677061511239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A300324 (A000124 n).toNat : ℚ) / 2)) (A039975 (2 * n + 1))

end

end A300307.P11447204677061511239

/-! ## A300307.P3416286262801300385

`A300324(A000124(n))/2*A014963(A008458(n))`
-/

namespace A300307.P3416286262801300385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300324 (A000124 n).toNat : ℚ) / 2 * (A014963 (A008458 n).toNat : ℚ)

end

end A300307.P3416286262801300385

/-!
# A300308: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300308, there is no canonical definition to state claims against.
-/

/-! ## A300308.P1463472722451182144

`A300314(∑[4*n]+1)`
-/

namespace A300308.P1463472722451182144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300308.P1463472722451182144

/-! ## A300308.P11793379902135838818

`record[A300314(A330613(n+1))]`
-/

namespace A300308.P11793379902135838818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300308.P11793379902135838818

/-! ## A300308.P6751011188292494119

`A300314(A001844(n))+char[10]`
-/

namespace A300308.P6751011188292494119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300308.P6751011188292494119

/-! ## A300308.P8426200949167429953

`record[A003982(n)*A300314(n+1)]`
-/

namespace A300308.P8426200949167429953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300308.P8426200949167429953

/-! ## A300308.P15532289174370352237

`record[A010052(2*n+1)*A300314(n+1)]`
-/

namespace A300308.P15532289174370352237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A300314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300308.P15532289174370352237

/-!
# A300309: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300309, there is no canonical definition to state claims against.
-/

/-! ## A300309.P5002128421272291081

`A300314(∑[n+2]+4)`
-/

namespace A300309.P5002128421272291081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300309.P5002128421272291081

/-! ## A300309.P16024854972017674029

`A300314(A167614(n+1))+A185284(n)`
-/

namespace A300309.P16024854972017674029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A167614 (n + 1)).toNat + A185284 n

end

end A300309.P16024854972017674029

/-! ## A300309.P16997294772814120136

`A300314(A167614(n+1))+A235145(n)`
-/

namespace A300309.P16997294772814120136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A167614 (n + 1)).toNat + A235145 n

end

end A300309.P16997294772814120136

/-! ## A300309.P3062520908630767815

`A300314(A167614(n+1))%A001552(n)`
-/

namespace A300309.P3062520908630767815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300314 (A167614 (n + 1)).toNat) (A001552 n)

end

end A300309.P3062520908630767815

/-! ## A300309.P12324289277539173075

`lcm(A033999(n), A300314(A167614(n+1)))`
-/

namespace A300309.P12324289277539173075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300314 (A167614 (n + 1)).toNat)

end

end A300309.P12324289277539173075

/-!
# A300310: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300310, there is no canonical definition to state claims against.
-/

/-! ## A300310.P3774937060798270086

`A300314(∑[n+3]+7)`
-/

namespace A300310.P3774937060798270086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300310.P3774937060798270086

/-! ## A300310.P165929878263075465

`A300314(A141214(n+1))+A025469(n)`
-/

namespace A300310.P165929878263075465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A141214 (n + 1)).toNat + A025469 n

end

end A300310.P165929878263075465

/-! ## A300310.P5693258587152222252

`A300314(A141214(n+1))+A184955(n)`
-/

namespace A300310.P5693258587152222252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A141214 (n + 1)).toNat + A184955 n

end

end A300310.P5693258587152222252

/-! ## A300310.P1668870790739334013

`A300314(A141214(n+1))+A185238(n)`
-/

namespace A300310.P1668870790739334013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A141214 (n + 1)).toNat + A185238 n

end

end A300310.P1668870790739334013

/-! ## A300310.P9618679981096448022

`A300314(A141214(n+1))+A235145(n)`
-/

namespace A300310.P9618679981096448022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A141214 (n + 1)).toNat + A235145 n

end

end A300310.P9618679981096448022

/-!
# A300311: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300311, there is no canonical definition to state claims against.
-/

/-! ## A300311.P7235952101969226915

`A300314(A374005(n+1))`
-/

namespace A300311.P7235952101969226915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A374005 (n + 1)).toNat

end

end A300311.P7235952101969226915

/-! ## A300311.P5080063367120153614

`A300314(A167499(n+3))`
-/

namespace A300311.P5080063367120153614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A167499 (n + 3)).toNat

end

end A300311.P5080063367120153614

/-! ## A300311.P5148726168183062335

`A300314(A155212(n)+13)`
-/

namespace A300311.P5148726168183062335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A155212 n + 13).toNat

end

end A300311.P5148726168183062335

/-! ## A300311.P3645673709041071444

`A300314(A056000(n)+15)`
-/

namespace A300311.P3645673709041071444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A056000 n + 15).toNat

end

end A300311.P3645673709041071444

/-! ## A300311.P1466389159657986800

`A300314(eq[7, A066657(n)])`
-/

namespace A300311.P1466389159657986800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300311.P1466389159657986800

/-!
# A300312: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300312, there is no canonical definition to state claims against.
-/

/-! ## A300312.P17759434282202607622

`A300314(A374007(n+1))`
-/

namespace A300312.P17759434282202607622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A374007 (n + 1)).toNat

end

end A300312.P17759434282202607622

/-! ## A300312.P16304081347924516181

`A300314(A056115(n)+21)`
-/

namespace A300312.P16304081347924516181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A056115 n + 21).toNat

end

end A300312.P16304081347924516181

/-! ## A300312.P4461872331471065106

`A300314(A027379(n+3)+9)`
-/

namespace A300312.P4461872331471065106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A027379 (n + 3) + 9).toNat

end

end A300312.P4461872331471065106

/-! ## A300312.P10608998471809705627

`A300314(eq[7, A131818(n+1)])`
-/

namespace A300312.P10608998471809705627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300312.P10608998471809705627

/-! ## A300312.P8240965219626143567

`A300314(Δ[A023545(n+1)]+10)`
-/

namespace A300312.P8240965219626143567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (f1 (n + 1) - f1 n + 10).toNat

end

end A300312.P8240965219626143567

/-!
# A300313: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300313, there is no canonical definition to state claims against.
-/

/-! ## A300313.P5755561692132593837

`A300314(A374008(n+1))`
-/

namespace A300313.P5755561692132593837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A374008 (n + 1)).toNat

end

end A300313.P5755561692132593837

/-! ## A300313.P12555350014063148110

`A300314(A167487(n+5))`
-/

namespace A300313.P12555350014063148110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A167487 (n + 5)).toNat

end

end A300313.P12555350014063148110

/-! ## A300313.P2630188068411821931

`A300314(A056119(n)+28)`
-/

namespace A300313.P2630188068411821931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (A056119 n + 28).toNat

end

end A300313.P2630188068411821931

/-! ## A300313.P14440245286205403717

`A300314(eq[11, A066657(n)])`
-/

namespace A300313.P14440245286205403717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300313.P14440245286205403717

/-! ## A300313.P2879543958117180362

`A300314(eq[8, A131818(n+1)])`
-/

namespace A300313.P2879543958117180362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300313.P2879543958117180362

/-!
# A300314: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300314, there is no canonical definition to state claims against.
-/

/-! ## A300314.P6253907950947623283

`A299682(n+1)+A025469(A240321(n+1))`
-/

namespace A300314.P6253907950947623283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (n + 1) + A025469 (A240321 (n + 1)).toNat

end

end A300314.P6253907950947623283

/-! ## A300314.P1666914590893869545

`A299682(n+1)+A003982(A256748(n+1))`
-/

namespace A300314.P1666914590893869545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (n + 1) + A003982 (A256748 (n + 1)).toNat

end

end A300314.P1666914590893869545

/-! ## A300314.P14324408098586198207

`A299682(n+1)+A102683(A072345(n))`
-/

namespace A300314.P14324408098586198207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (n + 1) + A102683 (A072345 n).toNat

end

end A300314.P14324408098586198207

/-! ## A300314.P5406695948778526555

`A299682(n+1)+A262693(A123382(n))`
-/

namespace A300314.P5406695948778526555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299682 (n + 1) + A262693 (A123382 n).toNat

end

end A300314.P5406695948778526555

/-!
# A300315: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300315, there is no canonical definition to state claims against.
-/

/-! ## A300315.P1968728682721501710

`A300321(∑[4*n]+1)`
-/

namespace A300315.P1968728682721501710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300315.P1968728682721501710

/-! ## A300315.P2295306506169951394

`record[gcd(A114327(n), A300321(n+1))]`
-/

namespace A300315.P2295306506169951394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A300321 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300315.P2295306506169951394

/-! ## A300315.P11786845235704618225

`record[and(A185917(n+1), A300321(n+1))]`
-/

namespace A300315.P11786845235704618225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A300321 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300315.P11786845235704618225

/-! ## A300315.P14662078325746119290

`A300321(A001844(n))+A027656(A001844(n))`
-/

namespace A300315.P14662078325746119290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A001844 n).toNat + A027656 (A001844 n).toNat

end

end A300315.P14662078325746119290

/-!
# A300316: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300316, there is no canonical definition to state claims against.
-/

/-! ## A300316.P3191931337572237906

`A300321(∑[n+2]+4)`
-/

namespace A300316.P3191931337572237906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300316.P3191931337572237906

/-! ## A300316.P15844581788802209620

`A300321(A167614(n+1))+A025469(n)`
-/

namespace A300316.P15844581788802209620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A167614 (n + 1)).toNat + A025469 n

end

end A300316.P15844581788802209620

/-! ## A300316.P4196638153954084169

`A300321(A167614(n+1))+A180472(n)`
-/

namespace A300316.P4196638153954084169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A167614 (n + 1)).toNat + A180472 n

end

end A300316.P4196638153954084169

/-! ## A300316.P8763850258488812171

`A300321(A167614(n+1))%A017501(n)`
-/

namespace A300316.P8763850258488812171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300321 (A167614 (n + 1)).toNat) (A017501 n)

end

end A300316.P8763850258488812171

/-! ## A300316.P379228177501980677

`lcm(A219347(n), A300321(A167614(n+1)))`
-/

namespace A300316.P379228177501980677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219347 n) (A300321 (A167614 (n + 1)).toNat)

end

end A300316.P379228177501980677

/-!
# A300317: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300317, there is no canonical definition to state claims against.
-/

/-! ## A300317.P16726776336340897632

`A300321(A374004(n+1))`
-/

namespace A300317.P16726776336340897632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A374004 (n + 1)).toNat

end

end A300317.P16726776336340897632

/-! ## A300317.P12234496080567146680

`A300321(A141214(n)+7)`
-/

namespace A300317.P12234496080567146680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A141214 n + 7).toNat

end

end A300317.P12234496080567146680

/-! ## A300317.P15533591476828683531

`A300321(A052905(n)+9)`
-/

namespace A300317.P15533591476828683531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A052905 n + 9).toNat

end

end A300317.P15533591476828683531

/-! ## A300317.P1992352144894554563

`A300321(A055999(n)+10)`
-/

namespace A300317.P1992352144894554563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A055999 n + 10).toNat

end

end A300317.P1992352144894554563

/-! ## A300317.P9481857727715702306

`A300321(A167614(n+2)+1)`
-/

namespace A300317.P9481857727715702306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A167614 (n + 2) + 1).toNat

end

end A300317.P9481857727715702306

/-!
# A300318: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300318, there is no canonical definition to state claims against.
-/

/-! ## A300318.P13303765099308712279

`A300321(A374005(n+1))`
-/

namespace A300318.P13303765099308712279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A374005 (n + 1)).toNat

end

end A300318.P13303765099308712279

/-! ## A300318.P9543486760998412087

`A300321(A167499(n+3))`
-/

namespace A300318.P9543486760998412087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A167499 (n + 3)).toNat

end

end A300318.P9543486760998412087

/-! ## A300318.P1745498859121431072

`A300321(A056000(n)+15)`
-/

namespace A300318.P1745498859121431072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A056000 n + 15).toNat

end

end A300318.P1745498859121431072

/-! ## A300318.P2904461949533494334

`A300321(A167614(n+3)+2)`
-/

namespace A300318.P2904461949533494334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A167614 (n + 3) + 2).toNat

end

end A300318.P2904461949533494334

/-! ## A300318.P10785494248443673047

`A300321(A000217(n+4)+5)`
-/

namespace A300318.P10785494248443673047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A000217 (n + 4) + 5).toNat

end

end A300318.P10785494248443673047

/-!
# A300319: Number of n X 6 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300319, there is no canonical definition to state claims against.
-/

/-! ## A300319.P4351276171614428791

`A300321(A374007(n+1))`
-/

namespace A300319.P4351276171614428791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A374007 (n + 1)).toNat

end

end A300319.P4351276171614428791

/-! ## A300319.P9108878574749711538

`A300321(A167614(n+4)+3)`
-/

namespace A300319.P9108878574749711538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A167614 (n + 4) + 3).toNat

end

end A300319.P9108878574749711538

/-! ## A300319.P9611843768505817235

`A300321(eq[7, A131818(n+1)])`
-/

namespace A300319.P9611843768505817235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300319.P9611843768505817235

/-! ## A300319.P15697392052982653282

`A300321(A052905(n+3))`
-/

namespace A300319.P15697392052982653282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A052905 (n + 3)).toNat

end

end A300319.P15697392052982653282

/-! ## A300319.P14281862465544786905

`A300321(eq[3, A219347(n)])`
-/

namespace A300319.P14281862465544786905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300319.P14281862465544786905

/-!
# A300320: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300320, there is no canonical definition to state claims against.
-/

/-! ## A300320.P18276866808313422286

`A300321(A374008(n+1))`
-/

namespace A300320.P18276866808313422286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A374008 (n + 1)).toNat

end

end A300320.P18276866808313422286

/-! ## A300320.P14331336967683320178

`A300321(eq[8, A131818(n+1)])`
-/

namespace A300320.P14331336967683320178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300320.P14331336967683320178

/-! ## A300320.P6182961934929316630

`A300321(A055999(n+4))`
-/

namespace A300320.P6182961934929316630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (A055999 (n + 4)).toNat

end

end A300320.P6182961934929316630

/-! ## A300320.P4354032193241891265

`A300321(eq[4, A219347(n)])`
-/

namespace A300320.P4354032193241891265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300320.P4354032193241891265

/-! ## A300320.P3184212695530450561

`A300321(eq[6, A193592(n)])`
-/

namespace A300320.P3184212695530450561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300320.P3184212695530450561

/-!
# A300321: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300321, there is no canonical definition to state claims against.
-/

/-! ## A300321.P16664885274849256631

`A299689(n+1)+A007660(A273712(n))`
-/

namespace A300321.P16664885274849256631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (n + 1) + A007660 (A273712 n).toNat

end

end A300321.P16664885274849256631

/-! ## A300321.P8938127044747922476

`A299689(n+1)+A001222(A273712(n)!)`
-/

namespace A300321.P8938127044747922476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (n + 1) + A001222 (Nat.factorial (A273712 n).toNat)

end

end A300321.P8938127044747922476

/-! ## A300321.P17863779395089359487

`A298154(A273712(n)!+n)`
-/

namespace A300321.P17863779395089359487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (Nat.factorial (A273712 n).toNat + n)

end

end A300321.P17863779395089359487

/-! ## A300321.P12673690909258149756

`A298230(A273712(n)!+n)`
-/

namespace A300321.P12673690909258149756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (Nat.factorial (A273712 n).toNat + n)

end

end A300321.P12673690909258149756

/-! ## A300321.P16035044301855026002

`A299052(A273712(n)!+n)`
-/

namespace A300321.P16035044301855026002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (Nat.factorial (A273712 n).toNat + n)

end

end A300321.P16035044301855026002

/-!
# A300322: Number T(n,k) of Dyck paths of semilength n such that 2*k is the difference between the area under the right half of the path and the area under the left half of the path; triangle T(n,k), n>=0, -floor(n*(n-1)/6) <= k <= floor(n*(n-1)/6), read by rows.

The programs for A300322, there is no canonical definition to state claims against.
-/

/-! ## A300322.P8259832082824149389

`A239707(A187618(n)+A136480(2*n))`
-/

namespace A300322.P8259832082824149389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239707 (A187618 n + A136480 (2 * n)).toNat

end

end A300322.P8259832082824149389

/-! ## A300322.P8808504681120835146

`A000120(C(A128008(n+1), A359363(n)))`
-/

namespace A300322.P8808504681120835146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A128008 (n + 1)).toNat (A359363 n).toNat)

end

end A300322.P8808504681120835146

/-! ## A300322.P4702104542326802984

`gcd(6, A275177(A103406(n)))`
-/

namespace A300322.P4702104542326802984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A275177 (A103406 n).toNat)

end

end A300322.P4702104542326802984

/-! ## A300322.P12358749348138232233

`A054989(A201461(n)+A057934(n+1))`
-/

namespace A300322.P12358749348138232233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (A201461 n + A057934 (n + 1)).toNat

end

end A300322.P12358749348138232233

/-! ## A300322.P5396717181792277773

`A135010(A014551(n)*A270559(n+2))`
-/

namespace A300322.P5396717181792277773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A014551 n * A270559 (n + 2)).toNat

end

end A300322.P5396717181792277773

/-!
# A300323: Number of Dyck paths of semilength n such that the area under the right half of the path equals the area under the left half of the path.

The programs for A300323, there is no canonical definition to state claims against.
-/

/-! ## A300323.P16229854052392971614

`A100196(∑[A007472(n)])`
-/

namespace A300323.P16229854052392971614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300323.P16229854052392971614

/-! ## A300323.P270701379289783413

`A243283(A115276(n)+n)`
-/

namespace A300323.P270701379289783413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A115276 n + (n : ℤ)).toNat

end

end A300323.P270701379289783413

/-! ## A300323.P5421601538485395401

`A243283(A343664(n)+n)`
-/

namespace A300323.P5421601538485395401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A343664 n + (n : ℤ)).toNat

end

end A300323.P5421601538485395401

/-! ## A300323.P11392432400936075037

`A001462(A278989(n)+A001250(n))`
-/

namespace A300323.P11392432400936075037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A278989 n + A001250 n).toNat

end

end A300323.P11392432400936075037

/-! ## A300323.P2585978824327731851

`A003237(n)+A000571(A029965(n+1))`
-/

namespace A300323.P2585978824327731851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003237 n + A000571 (A029965 (n + 1)).toNat

end

end A300323.P2585978824327731851

/-!
# A300324: Triangle read by rows: row n gives the number of solutions to +-1 +- 3 +- 6 +- ... +- n*(n+1)/2 == k (mod n).

The programs for A300324, there is no canonical definition to state claims against.
-/

/-! ## A300324.P17327584250905371501

`and(A260085(n+1), A292564(A052921(n)))`
-/

namespace A300324.P17327584250905371501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260085 (n + 1)) (A292564 (A052921 n).toNat)

end

end A300324.P17327584250905371501

/-! ## A300324.P16521366521159568039

`A179771(A273726(n+1))*A260085(n+1)`
-/

namespace A300324.P16521366521159568039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179771 (A273726 (n + 1)).toNat * A260085 (n + 1)

end

end A300324.P16521366521159568039

/-! ## A300324.P15916972168808700503

`and(A141429(n+1), A325821(A344789(3*n+5)))`
-/

namespace A300324.P15916972168808700503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141429 (n + 1)) (A325821 (A344789 (3 * n + 5)).toNat)

end

end A300324.P15916972168808700503

/-!
# A300325: Nonaliquot nontotient numbers.

The programs for A300325, there is no canonical definition to state claims against.
-/

/-! ## A300325.P6969653851040627820

`∩[A005114(n+1), A005277(n+1)]`
-/

namespace A300325.P6969653851040627820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300325.P6969653851040627820

/-! ## A300325.P5430700070447964015

`filter[A005114(n+2), A355451(#)]`
-/

namespace A300325.P5430700070447964015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355451 (f1 j).toNat = 1) n)

end

end A300325.P5430700070447964015

/-! ## A300325.P16280410341249383961

`eq[A070015(n), A307853(n+1)]`
-/

namespace A300325.P16280410341249383961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300325.P16280410341249383961

/-!
# A300326: Sum of the largest possible permutations that can be written without repetition of digits in each base from binary to n+1.

The programs for A300326, there is no canonical definition to state claims against.
-/

/-! ## A300326.P4815461312975333036

`∑[A062813(n+1)]`
-/

namespace A300326.P4815461312975333036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300326.P4815461312975333036

/-! ## A300326.P5555053194377033978

`∑[record[A062813(A020986(n))]]`
-/

namespace A300326.P5555053194377033978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300326.P5555053194377033978

/-! ## A300326.P18007029204147488056

`∑[record[A062813(A065648(n))]]`
-/

namespace A300326.P18007029204147488056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300326.P18007029204147488056

/-! ## A300326.P4302779455714848911

`∑[record[A062813(A152271(n))]]`
-/

namespace A300326.P4302779455714848911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300326.P4302779455714848911

/-! ## A300326.P13959579989390396752

`∑[record[A062813(A193592(n))]]`
-/

namespace A300326.P13959579989390396752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062813 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300326.P13959579989390396752

/-! ## A300326.P17957098095158718064

`∑[A062806(n+1)]-A062815(n+1)`
-/

namespace A300326.P17957098095158718064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062815 (n + 1)

end

end A300326.P17957098095158718064

/-!
# A300329: Number of solutions to +-1 +- 2 +- 3 +- ... +- n == n-1 (mod n).

The programs for A300329, there is no canonical definition to state claims against.
-/

/-! ## A300329.P3346248625279271587

`A300328(∑[n+1])`
-/

namespace A300329.P3346248625279271587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300329.P3346248625279271587

/-! ## A300329.P13741840623688236363

`char[xor(1, n)]*A300328(A000217(n+1))`
-/

namespace A300329.P13741840623688236363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A300328 (A000217 (n + 1)).toNat

end

end A300329.P13741840623688236363

/-! ## A300329.P15076851685905215961

`char[A173517(n)]*A300328(A000217(n+1))`
-/

namespace A300329.P15076851685905215961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A300328 (A000217 (n + 1)).toNat

end

end A300329.P15076851685905215961

/-! ## A300329.P7442419255907263183

`A300328(A000217(n+1))%Δ[A033434(n)]`
-/

namespace A300329.P7442419255907263183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300328 (A000217 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A300329.P7442419255907263183

/-! ## A300329.P10331053159380714524

`A300328(A000217(n+1))+A000035(A300328(n+1))`
-/

namespace A300329.P10331053159380714524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300328 (A000217 (n + 1)).toNat + A000035 (A300328 (n + 1)).toNat

end

end A300329.P10331053159380714524

/-!
# A300330: a(n) is the product over all prime powers p^e where p^e is the highest power of p dividing n and p-1 does not divide n.

The programs for A300330, there is no canonical definition to state claims against.
-/

/-! ## A300330.P6575865282114828354

`(n+1)/A193267(n+1)`
-/

namespace A300330.P6575865282114828354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A193267 (n + 1) : ℚ)

end

end A300330.P6575865282114828354

/-! ## A300330.P1673166919202180487

`(n+1)/gcd(n+1, A075180(n))`
-/

namespace A300330.P1673166919202180487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A075180 n) : ℚ)

end

end A300330.P1673166919202180487

/-! ## A300330.P7146144616557421191

`(n+1)*A027642(n+1)/A075180(n)`
-/

namespace A300330.P7146144616557421191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A027642 (n + 1) : ℚ) / (A075180 n : ℚ))

end

end A300330.P7146144616557421191

/-! ## A300330.P2395097121764012405

`(n+1)*A027760(n+1)/A185633(n+1)`
-/

namespace A300330.P2395097121764012405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A027760 (n + 1) : ℚ) / (A185633 (n + 1) : ℚ))

end

end A300330.P2395097121764012405

/-! ## A300330.P11393573901365565891

`lcm(n+1, A079612(n+1))/A079612(n+1)`
-/

namespace A300330.P11393573901365565891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A079612 (n + 1)) : ℚ) / (A079612 (n + 1) : ℚ)

end

end A300330.P11393573901365565891

/-! ## A300330.P243206687305604770

`A164869(n+1)/A075180(n)`
-/

namespace A300330.P243206687305604770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164869 (n + 1) : ℚ) / (A075180 n : ℚ)

end

end A300330.P243206687305604770

/-! ## A300330.P1244021867528810574

`A027760(n+1)/A001898(n+1)*A001898(n)`
-/

namespace A300330.P1244021867528810574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027760 (n + 1) : ℚ) / (A001898 (n + 1) : ℚ) * (A001898 n : ℚ)

end

end A300330.P1244021867528810574

/-! ## A300330.P16186308210491707170

`A141056(n+1)/A001898(n+1)*A001898(n)`
-/

namespace A300330.P16186308210491707170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (n + 1) : ℚ) / (A001898 (n + 1) : ℚ) * (A001898 n : ℚ)

end

end A300330.P16186308210491707170

/-! ## A300330.P4008856748498865078

`gcd(n+1, A027641(n+1))`
-/

namespace A300330.P4008856748498865078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A027641 (n + 1))

end

end A300330.P4008856748498865078

/-! ## A300330.P18195704167395916576

`(n+1)/A003557(A354139(n+1))`
-/

namespace A300330.P18195704167395916576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (A354139 (n + 1)).toNat : ℚ)

end

end A300330.P18195704167395916576

/-!
# A300331: Integers represented by a cyclotomic binary form Phi{k}(x,y) with positive integers x and y where max(x, y) >= 2 and the index k is not prime.

The programs for A300331, there is no canonical definition to state claims against.
-/

/-! ## A300331.P16561403323424050872

`∩[A296095(n+1), comp[A300332(n+1)]]`
-/

namespace A300331.P16561403323424050872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296095 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300332 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A300331.P16561403323424050872

/-! ## A300331.P16744055802458800281

`A337215(n+1)-A063667(A124497(n))`
-/

namespace A300331.P16744055802458800281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337215 (n + 1) - A063667 (A124497 n).toNat

end

end A300331.P16744055802458800281

/-! ## A300331.P794106548786148836

`A337215(n+1)-A063667(A187829(n+1)+n)`
-/

namespace A300331.P794106548786148836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337215 (n + 1) - A063667 (A187829 (n + 1) + (n : ℤ)).toNat

end

end A300331.P794106548786148836

/-! ## A300331.P17282692415145851211

`A337215(A187829(n+1))-A063667(A065262(n+1))`
-/

namespace A300331.P17282692415145851211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337215 (A187829 (n + 1)).toNat - A063667 (A065262 (n + 1)).toNat

end

end A300331.P17282692415145851211

/-! ## A300331.P12219453219863631833

`A001481(n+5)-A060175(A151514(n+1))`
-/

namespace A300331.P12219453219863631833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 5) - A060175 (A151514 (n + 1)).toNat

end

end A300331.P12219453219863631833

/-!
# A300332: Integers of the form Sum_{j in 0:p-1} x^j*y^(p-j-1) where x and y are positive integers with max(x, y) >= 2 and p is some prime.

The programs for A300332, there is no canonical definition to state claims against.
-/

/-! ## A300332.P3115963253988470839

`lt[0, A300333(n+1)]+1`
-/

namespace A300332.P3115963253988470839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A300332.P3115963253988470839

/-! ## A300332.P10021296689850630933

`lt[0, A300333(A028310(n))]`
-/

namespace A300332.P10021296689850630933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300333 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300332.P10021296689850630933

/-! ## A300332.P11292401286360908554

`A020725(lt[0, A300333(n+1)])`
-/

namespace A300332.P11292401286360908554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A300332.P11292401286360908554

/-! ## A300332.P13632365540895703732

`lt[1, A300333(A123108(2*n))]`
-/

namespace A300332.P13632365540895703732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300333 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300332.P13632365540895703732

/-! ## A300332.P14370272264194762249

`lt[1, A300333(A233583(n+1))]`
-/

namespace A300332.P14370272264194762249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300333 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300332.P14370272264194762249

/-!
# A300334: Primes of a056240-type 2.

The programs for A300334, there is no canonical definition to state claims against.
-/

/-! ## A300334.P17021789156923679712

`A289993(A187829(n+1)+A185274(n))`
-/

namespace A300334.P17021789156923679712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (A187829 (n + 1) + A185274 n).toNat

end

end A300334.P17021789156923679712

/-! ## A300334.P3938892764734939485

`A289993(A077168(n))`
-/

namespace A300334.P3938892764734939485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (A077168 n).toNat

end

end A300334.P3938892764734939485

/-! ## A300334.P12218603567399021965

`A289993(A122286(∑[n])+1)`
-/

namespace A300334.P12218603567399021965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (A122286 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A300334.P12218603567399021965

/-! ## A300334.P8545528403018130875

`record[A289993(A195107(n+1))]`
-/

namespace A300334.P8545528403018130875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (A195107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300334.P8545528403018130875

/-! ## A300334.P3101155397165150077

`A289993(A286558(∑[2^n]))`
-/

namespace A300334.P3101155397165150077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289993 (A286558 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A300334.P3101155397165150077

/-!
# A300335: Number of ordered set partitions of {1,...,n} with weakly increasing block-sums.

The programs for A300335, there is no canonical definition to state claims against.
-/

/-! ## A300335.P9275188567737512050

`A060715(A179865(n+1)+A045499(n))`
-/

namespace A300335.P9275188567737512050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A179865 (n + 1) + A045499 n).toNat

end

end A300335.P9275188567737512050

/-! ## A300335.P12635130850824410284

`A090930(A148481(n))`
-/

namespace A300335.P12635130850824410284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A148481 n).toNat

end

end A300335.P12635130850824410284

/-! ## A300335.P8971116580990789286

`A100196(∑[A256124(n)])`
-/

namespace A300335.P8971116580990789286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300335.P8971116580990789286

/-!
# A300336: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300336, there is no canonical definition to state claims against.
-/

/-! ## A300336.P1452293340404527407

`A300342(∑[4*n]+1)`
-/

namespace A300336.P1452293340404527407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300336.P1452293340404527407

/-! ## A300336.P4711532463559320158

`record[A300342(A152271(n²))]`
-/

namespace A300336.P4711532463559320158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300336.P4711532463559320158

/-! ## A300336.P13032839016000459736

`record[A003982(n)*A300342(n+1)]`
-/

namespace A300336.P13032839016000459736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300336.P13032839016000459736

/-! ## A300336.P1799295474838057270

`record[gcd(A114327(n), A300342(n+1))]`
-/

namespace A300336.P1799295474838057270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A300342 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300336.P1799295474838057270

/-! ## A300336.P16143497201818525218

`record[A203994(n+1)*A300342(n+1)]`
-/

namespace A300336.P16143497201818525218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A300342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300336.P16143497201818525218

/-!
# A300337: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300337, there is no canonical definition to state claims against.
-/

/-! ## A300337.P17249975255279767186

`A300342(∑[n+2]+4)`
-/

namespace A300337.P17249975255279767186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300337.P17249975255279767186

/-! ## A300337.P18225694006016038721

`A300342(A167614(n+1))+A025469(n)`
-/

namespace A300337.P18225694006016038721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A167614 (n + 1)).toNat + A025469 n

end

end A300337.P18225694006016038721

/-! ## A300337.P13965949863788890456

`gcd(A000038(n), A300342(A167614(n+1)))`
-/

namespace A300337.P13965949863788890456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300342 (A167614 (n + 1)).toNat)

end

end A300337.P13965949863788890456

/-! ## A300337.P8531423013335386458

`lcm(A033999(n), A300342(A167614(n+1)))`
-/

namespace A300337.P8531423013335386458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300342 (A167614 (n + 1)).toNat)

end

end A300337.P8531423013335386458

/-! ## A300337.P15318623513500482784

`or(A000007(n), A300342(A167614(n+1)))`
-/

namespace A300337.P15318623513500482784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300342 (A167614 (n + 1)).toNat)

end

end A300337.P15318623513500482784

/-!
# A300338: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300338, there is no canonical definition to state claims against.
-/

/-! ## A300338.P16326956111559623821

`A300342(A374004(n+1))`
-/

namespace A300338.P16326956111559623821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A374004 (n + 1)).toNat

end

end A300338.P16326956111559623821

/-! ## A300338.P1278634640423175242

`A300342(A052905(n)+9)`
-/

namespace A300338.P1278634640423175242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A052905 n + 9).toNat

end

end A300338.P1278634640423175242

/-! ## A300338.P13761632933367895100

`A300342(A055999(n)+10)`
-/

namespace A300338.P13761632933367895100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A055999 n + 10).toNat

end

end A300338.P13761632933367895100

/-! ## A300338.P13390241344310609683

`A300342(A167614(n+2)+1)`
-/

namespace A300338.P13390241344310609683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A167614 (n + 2) + 1).toNat

end

end A300338.P13390241344310609683

/-! ## A300338.P1889445546798743521

`A300342(eq[5, A131818(n+1)])`
-/

namespace A300338.P1889445546798743521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300338.P1889445546798743521

/-!
# A300339: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300339, there is no canonical definition to state claims against.
-/

/-! ## A300339.P3575463665271400011

`A300342(A374005(n+1))`
-/

namespace A300339.P3575463665271400011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A374005 (n + 1)).toNat

end

end A300339.P3575463665271400011

/-! ## A300339.P13567848073959698775

`A300342(A167499(n+3))`
-/

namespace A300339.P13567848073959698775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A167499 (n + 3)).toNat

end

end A300339.P13567848073959698775

/-! ## A300339.P794239770130242712

`A300342(A155212(n)+13)`
-/

namespace A300339.P794239770130242712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A155212 n + 13).toNat

end

end A300339.P794239770130242712

/-! ## A300339.P10783900200903110226

`A300342(A056000(n)+15)`
-/

namespace A300339.P10783900200903110226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A056000 n + 15).toNat

end

end A300339.P10783900200903110226

/-! ## A300339.P1594988106214044821

`A300342(A046691(n+2)+9)`
-/

namespace A300339.P1594988106214044821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A046691 (n + 2) + 9).toNat

end

end A300339.P1594988106214044821

/-!
# A300340: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300340, there is no canonical definition to state claims against.
-/

/-! ## A300340.P10356524824679446431

`A300342(C(n+7, 2)-n)`
-/

namespace A300340.P10356524824679446431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (Nat.choose (n + 7) 2 - n)

end

end A300340.P10356524824679446431

/-! ## A300340.P2144894214073903240

`A300342(A374007(n+1))`
-/

namespace A300340.P2144894214073903240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A374007 (n + 1)).toNat

end

end A300340.P2144894214073903240

/-! ## A300340.P5060214537352909147

`A300342(eq[7, A131818(n+1)])`
-/

namespace A300340.P5060214537352909147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300340.P5060214537352909147

/-! ## A300340.P16678489112270506381

`A300342(Δ[A023545(n+1)]+10)`
-/

namespace A300340.P16678489112270506381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (f1 (n + 1) - f1 n + 10).toNat

end

end A300340.P16678489112270506381

/-! ## A300340.P8985040462682463030

`A300342(A000124(n+6)-(n+1))`
-/

namespace A300340.P8985040462682463030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A300340.P8985040462682463030

/-!
# A300341: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300341, there is no canonical definition to state claims against.
-/

/-! ## A300341.P10966185523832214906

`A300342(A374008(n+1))`
-/

namespace A300341.P10966185523832214906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A374008 (n + 1)).toNat

end

end A300341.P10966185523832214906

/-! ## A300341.P12899578926745111545

`A300342(eq[11, A066657(n)])`
-/

namespace A300341.P12899578926745111545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300341.P12899578926745111545

/-! ## A300341.P16344826477295523101

`A300342(A000217(n+6)+7)`
-/

namespace A300341.P16344826477295523101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (A000217 (n + 6) + 7).toNat

end

end A300341.P16344826477295523101

/-! ## A300341.P2006601234476639114

`A300342(eq[8, A131818(n+1)])`
-/

namespace A300341.P2006601234476639114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300341.P2006601234476639114

/-! ## A300341.P299888053876047603

`A300342(eq[4, A219347(n)])`
-/

namespace A300341.P299888053876047603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300341.P299888053876047603

/-!
# A300342: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5, 6, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A300342, there is no canonical definition to state claims against.
-/

/-! ## A300342.P1488733970384017779

`A299721(n+1)+A014707(A022171(n))`
-/

namespace A300342.P1488733970384017779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (n + 1) + A014707 (A022171 n).toNat

end

end A300342.P1488733970384017779

/-! ## A300342.P17155224368753718415

`A299721(n+1)+A025465(A022345(n))`
-/

namespace A300342.P17155224368753718415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (n + 1) + A025465 (A022345 n).toNat

end

end A300342.P17155224368753718415

/-! ## A300342.P7174375438540448146

`A299721(n+1)+A079978(A344493(n))`
-/

namespace A300342.P7174375438540448146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299721 (n + 1) + A079978 (A344493 n).toNat

end

end A300342.P7174375438540448146

/-! ## A300342.P11081975866269178776

`A353495(A156303(n))+A299721(n+1)`
-/

namespace A300342.P11081975866269178776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353495 (A156303 n).toNat + A299721 (n + 1)

end

end A300342.P11081975866269178776

/-! ## A300342.P14053188242001086544

`or(A156241(A299721(3*n+1)), A299721(n+1))`
-/

namespace A300342.P14053188242001086544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156241 (A299721 (3 * n + 1)).toNat) (A299721 (n + 1))

end

end A300342.P14053188242001086544

/-!
# A300343: Number of n X n 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300343, there is no canonical definition to state claims against.
-/

/-! ## A300343.P13844192196493361849

`A300350(∑[4*n]+1)`
-/

namespace A300343.P13844192196493361849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300343.P13844192196493361849

/-! ## A300343.P6756095797627744122

`A300350(A001844(n))+char[21]`
-/

namespace A300343.P6756095797627744122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300343.P6756095797627744122

/-! ## A300343.P15405192481853086373

`A300350(∑[A008574(n)])+char[24]`
-/

namespace A300343.P15405192481853086373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300343.P15405192481853086373

/-! ## A300343.P6032077726928403676

`A007318(∑[n])*A300350(A001844(n))`
-/

namespace A300343.P6032077726928403676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A300350 (A001844 n).toNat

end

end A300343.P6032077726928403676

/-! ## A300343.P10253246530287495829

`char[A007318(n)]*A300350(A001844(n))`
-/

namespace A300343.P10253246530287495829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A300350 (A001844 n).toNat

end

end A300343.P10253246530287495829

/-!
# A300344: Number of n X 2 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300344, the canonical program `A300344.P328044221799417559` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300344 has offset 1).

The definition of A300344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300344.P328044221799417559

`a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=15, a(4)=37`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300344

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)+a(n-5)` -/
def P328044221799417559.Spec : Prop :=
  ∀ n, (P328044221799417559.a n : ℤ) = A300344 (n + 1)

theorem P328044221799417559.correct : P328044221799417559.Spec := by
  intro n
  simp only [A300344, Nat.add_sub_cancel]

end A300344

/-! ## A300344.P12269513589737955724

`Δ[Δ[Δ[A013983(2*n)]]]`
-/

namespace A300344.P12269513589737955724
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013983 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300344.P12269513589737955724

namespace A300344

/-- `Δ[Δ[Δ[A013983(2*n)]]]` -/
def P12269513589737955724.Spec : Prop :=
  ∀ n, P12269513589737955724.a n = A300344 (n + 1)

end A300344

/-! ## A300344.P4728806898477131688

`Δ[Δ[A060961(2*(n+1))-A060961(2*n+1)]]`
-/

namespace A300344.P4728806898477131688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060961 (2 * (n + 1)) - A060961 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300344.P4728806898477131688

namespace A300344

/-- `Δ[Δ[A060961(2*(n+1))-A060961(2*n+1)]]` -/
def P4728806898477131688.Spec : Prop :=
  ∀ n, P4728806898477131688.a n = A300344 (n + 1)

end A300344

/-! ## A300344.P395489754552070299

`record[A300350(n+2)]`
-/

namespace A300344.P395489754552070299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300344.P395489754552070299

namespace A300344

/-- `record[A300350(n+2)]` -/
def P395489754552070299.Spec : Prop :=
  ∀ n, P395489754552070299.a n = A300344 (n + 1)

end A300344

/-! ## A300344.P708322664823865930

`A300350(∑[n+1]+2)`
-/

namespace A300344.P708322664823865930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300344.P708322664823865930

namespace A300344

/-- `A300350(∑[n+1]+2)` -/
def P708322664823865930.Spec : Prop :=
  ∀ n, P708322664823865930.a n = A300344 (n + 1)

end A300344

/-!
# A300345: Number of nX3 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300345, there is no canonical definition to state claims against.
-/

/-! ## A300345.P7648457267987799674

`A300350(∑[n+2]+4)`
-/

namespace A300345.P7648457267987799674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300345.P7648457267987799674

/-! ## A300345.P14920405764868068613

`or(char[2], A300350(A167614(n+1)))`
-/

namespace A300345.P14920405764868068613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300350 (A167614 (n + 1)).toNat)

end

end A300345.P14920405764868068613

/-! ## A300345.P11261655125802176305

`or(char[2], A300350(A000124(n+2)+2))`
-/

namespace A300345.P11261655125802176305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300350 (A000124 (n + 2) + 2).toNat)

end

end A300345.P11261655125802176305

/-! ## A300345.P7107516434513908173

`gcd(A000038(n), A300350(A167614(n+1)))`
-/

namespace A300345.P7107516434513908173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300350 (A167614 (n + 1)).toNat)

end

end A300345.P7107516434513908173

/-! ## A300345.P13550423855755660674

`A300350(A167614(n+1))%A300344(n+5)`
-/

namespace A300345.P13550423855755660674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300350 (A167614 (n + 1)).toNat) (A300344 (n + 5))

end

end A300345.P13550423855755660674

/-!
# A300346: Number of nX4 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300346, there is no canonical definition to state claims against.
-/

/-! ## A300346.P13768767621471025697

`A300350(∑[n+3]+7)`
-/

namespace A300346.P13768767621471025697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300346.P13768767621471025697

/-! ## A300346.P16770051247910147848

`record[A300350(n+5)/A209149(n+1)]`
-/

namespace A300346.P16770051247910147848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300350 (n + 5) : ℚ) / (A209149 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300346.P16770051247910147848

/-! ## A300346.P16590618586013208051

`gcd(A000038(n)², A300350(A167614(n+2)+1))`
-/

namespace A300346.P16590618586013208051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A300350 (A167614 (n + 2) + 1).toNat)

end

end A300346.P16590618586013208051

/-! ## A300346.P6015970558650989856

`A300350(A167614(n+2)+1)%A300349(n+1)`
-/

namespace A300346.P6015970558650989856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300350 (A167614 (n + 2) + 1).toNat) (A300349 (n + 1))

end

end A300346.P6015970558650989856

/-! ## A300346.P17486867019257981427

`record[A300350(A141214(val(n+1, 2)+1))]`
-/

namespace A300346.P17486867019257981427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300346.P17486867019257981427

/-!
# A300347: Number of nX5 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300347, there is no canonical definition to state claims against.
-/

/-! ## A300347.P6910238253070844244

`A300350(∑[n+4]+11)`
-/

namespace A300347.P6910238253070844244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300347.P6910238253070844244

/-!
# A300348: Number of nX6 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300348, there is no canonical definition to state claims against.
-/

/-! ## A300348.P10374403447159949882

`A300350(∑[n+5]+16)`
-/

namespace A300348.P10374403447159949882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A300348.P10374403447159949882

/-!
# A300349: Number of n X 7 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300349, there is no canonical definition to state claims against.
-/

/-! ## A300349.P6561230888536826577

`A300350(A374008(n+1))`
-/

namespace A300349.P6561230888536826577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (A374008 (n + 1)).toNat

end

end A300349.P6561230888536826577

/-! ## A300349.P9140962416213885635

`A300350(A167487(n+5))`
-/

namespace A300349.P9140962416213885635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (A167487 (n + 5)).toNat

end

end A300349.P9140962416213885635

/-! ## A300349.P473082480209027184

`A300350(A166136(n+5)+1)`
-/

namespace A300349.P473082480209027184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (A166136 (n + 5) + 1).toNat

end

end A300349.P473082480209027184

/-! ## A300349.P3241746631630764027

`A300350(A167499(n+5)+2)`
-/

namespace A300349.P3241746631630764027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (A167499 (n + 5) + 2).toNat

end

end A300349.P3241746631630764027

/-! ## A300349.P2638741501736034254

`A300350(A167614(n+5)+4)`
-/

namespace A300349.P2638741501736034254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300350 (A167614 (n + 5) + 4).toNat

end

end A300349.P2638741501736034254

/-!
# A300350: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1 or 2 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300350, there is no canonical definition to state claims against.
-/

/-! ## A300350.P16343092105860057117

`A301361(n+1)-A167688(C(n, ceil(n/2)+2)+1)`
-/

namespace A300350.P16343092105860057117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (n + 1) - A167688 (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat + 1)

end

end A300350.P16343092105860057117

/-! ## A300350.P12630156123617658636

`A300435(n+1)+A088194(A294950(n))`
-/

namespace A300350.P12630156123617658636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (n + 1) + A088194 (A294950 n).toNat

end

end A300350.P12630156123617658636

/-! ## A300350.P2397970272302083766

`A300639(n+1)+A088194(A294950(n))`
-/

namespace A300350.P2397970272302083766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (n + 1) + A088194 (A294950 n).toNat

end

end A300350.P2397970272302083766

/-! ## A300350.P9340508005024474713

`A300769(n+1)+A088194(A294950(n))`
-/

namespace A300350.P9340508005024474713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (n + 1) + A088194 (A294950 n).toNat

end

end A300350.P9340508005024474713

/-! ## A300350.P13679768318253262293

`A301361(n+1)+A088194(A294950(n))`
-/

namespace A300350.P13679768318253262293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (n + 1) + A088194 (A294950 n).toNat

end

end A300350.P13679768318253262293

/-!
# A300352: Number of strict trees of weight n with distinct leaves.

The programs for A300352, there is no canonical definition to state claims against.
-/

/-! ## A300352.P10110104845070260631

`floor(root(A244851(n+1), 7))`
-/

namespace A300352.P10110104845070260631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A244851 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A300352.P10110104845070260631

/-! ## A300352.P9822472569675453930

`A178786(∑[∏[A051852(n+1)]])`
-/

namespace A300352.P9822472569675453930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051852 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300352.P9822472569675453930

/-! ## A300352.P16690554029132157078

`A218074(n)+A060369(A095062(n+1))`
-/

namespace A300352.P16690554029132157078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218074 n + A060369 (A095062 (n + 1)).toNat

end

end A300352.P16690554029132157078

/-!
# A300355: Number of enriched p-trees of weight n with odd leaves.

The programs for A300355, there is no canonical definition to state claims against.
-/

/-! ## A300355.P266132004335348515

`∑[A229950(A141523(n))]`
-/

namespace A300355.P266132004335348515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229950 (A141523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300355.P266132004335348515

/-! ## A300355.P3659653580892596588

`A277488(A149853(n+1))`
-/

namespace A300355.P3659653580892596588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277488 (A149853 (n + 1)).toNat

end

end A300355.P3659653580892596588

/-! ## A300355.P2500551470278865208

`A106432(∑[A107383(n)²])`
-/

namespace A300355.P2500551470278865208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300355.P2500551470278865208

/-!
# A300357: a(n) is the smallest number whose number of divisors is the n-th odd square.

The programs for A300357, there is no canonical definition to state claims against.
-/

/-! ## A300357.P16700925027657030225

`A061707(Δ[n²])`
-/

namespace A300357.P16700925027657030225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A300357.P16700925027657030225

/-! ## A300357.P9639588355324923308

`A061708(n+1)²`
-/

namespace A300357.P9639588355324923308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061708 (n + 1) ^ 2

end

end A300357.P9639588355324923308

/-! ## A300357.P17063915497790164828

`A061708(n+1)^A020639(A061715(n+1))`
-/

namespace A300357.P17063915497790164828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061708 (n + 1) : ℚ) ^ (A020639 (A061715 (n + 1)).toNat : ℤ)

end

end A300357.P17063915497790164828

/-! ## A300357.P2096560431669525568

`A061708(n+1)^A000005(A061733(n+1))`
-/

namespace A300357.P2096560431669525568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061708 (n + 1) : ℚ) ^ (A000005 (A061733 (n + 1)).toNat : ℤ)

end

end A300357.P2096560431669525568

/-!
# A300359: Primes of a056240-type 3.

The programs for A300359, there is no canonical definition to state claims against.
-/

/-! ## A300359.P3501592170665439962

`A065091(eq[3, A299912(n+1)])`
-/

namespace A300359.P3501592170665439962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300359.P3501592170665439962

/-!
# A300361: a(n) = 2^A000325(n).

The programs for A300361, the canonical program `A300361.P5125295162513310737` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300361 has offset 0).

The definition of A300361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300361.P5125295162513310737

`2^(2^n-n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300361

/-- `2^(2^n-n)` -/
def P5125295162513310737.Spec : Prop :=
  ∀ n, P5125295162513310737.a n = (A300361 n : ℚ)

end A300361

/-! ## A300361.P12928023267859846889

`2^A000325(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300361.P12928023267859846889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000325 n : ℤ)

end

end A300361.P12928023267859846889

namespace A300361

/-- `2^A000325(n)` -/
def P12928023267859846889.Spec : Prop :=
  ∀ n, P12928023267859846889.a n = (A300361 n : ℚ)

end A300361

/-! ## A300361.P422217700514159631

`∏[2*a(n-1)²]` with `a(0)=2, a(1)=1`
-/

namespace A300361.P422217700514159631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A300361.P422217700514159631

namespace A300361

/-- `∏[2*a(n-1)²]` -/
def P422217700514159631.Spec : Prop :=
  ∀ n, (P422217700514159631.a n : ℤ) = A300361 n

end A300361

/-! ## A300361.P10596387621280521065

`∏[2*a(n-1)*a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A300361.P10596387621280521065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  2 * f1 (n - 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A300361.P10596387621280521065

namespace A300361

/-- `∏[2*a(n-1)*a(n-1)]` -/
def P10596387621280521065.Spec : Prop :=
  ∀ n, (P10596387621280521065.a n : ℤ) = A300361 n

end A300361

/-! ## A300361.P5208611939681609274

`A000079(A000325(n))`
-/

namespace A300361.P5208611939681609274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000325 n).toNat

end

end A300361.P5208611939681609274

namespace A300361

/-- `A000079(A000325(n))` -/
def P5208611939681609274.Spec : Prop :=
  ∀ n, P5208611939681609274.a n = A300361 n

end A300361

/-!
# A300366: Number of n X n 0..1 arrays with every element equal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300366, there is no canonical definition to state claims against.
-/

/-! ## A300366.P11380683621244284378

`A300372(∑[4*n]+1)`
-/

namespace A300366.P11380683621244284378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300366.P11380683621244284378

/-! ## A300366.P5453532557700365681

`A300372(A001844(n))+char[19]`
-/

namespace A300366.P5453532557700365681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300366.P5453532557700365681

/-! ## A300366.P8966383036485918567

`A326455(n)+A300372(A001844(n))`
-/

namespace A300366.P8966383036485918567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A300372 (A001844 n).toNat

end

end A300366.P8966383036485918567

/-! ## A300366.P6845784157642327075

`char[A007318(n)]*A300372(A001844(n))`
-/

namespace A300366.P6845784157642327075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A300372 (A001844 n).toNat

end

end A300366.P6845784157642327075

/-! ## A300366.P3696831105605871187

`char[A105587(n)]*A300372(A001844(n))`
-/

namespace A300366.P3696831105605871187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A300372 (A001844 n).toNat

end

end A300366.P3696831105605871187

/-!
# A300367: Number of nX3 0..1 arrays with every element equal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300367, there is no canonical definition to state claims against.
-/

/-! ## A300367.P11181323197458492444

`A300372(∑[n+2]+4)`
-/

namespace A300367.P11181323197458492444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300367.P11181323197458492444

/-! ## A300367.P12735489836180857587

`or(char[1], A300372(A167614(n+1)))`
-/

namespace A300367.P12735489836180857587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300372 (A167614 (n + 1)).toNat)

end

end A300367.P12735489836180857587

/-! ## A300367.P13148716904700235324

`A300372(A046691(n)+7)+char[22]`
-/

namespace A300367.P13148716904700235324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300367.P13148716904700235324

/-! ## A300367.P13076045323306890361

`A300372(A167614(n+1))+A185284(n)`
-/

namespace A300367.P13076045323306890361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A167614 (n + 1)).toNat + A185284 n

end

end A300367.P13076045323306890361

/-! ## A300367.P16655544322627868994

`A300372(A167614(n+1))+A264668(n)`
-/

namespace A300367.P16655544322627868994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A167614 (n + 1)).toNat + A264668 n

end

end A300367.P16655544322627868994

/-!
# A300368: Number of nX4 0..1 arrays with every element equal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300368, there is no canonical definition to state claims against.
-/

/-! ## A300368.P13873135480659664847

`A300372(∑[n+3]+7)`
-/

namespace A300368.P13873135480659664847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300368.P13873135480659664847

/-! ## A300368.P16018937794639028950

`A300372(A055999(n)+10)+char[20]`
-/

namespace A300368.P16018937794639028950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300368.P16018937794639028950

/-! ## A300368.P8224361338506956847

`A014963(4*n+2)*A300372(A055999(n)+10)`
-/

namespace A300368.P8224361338506956847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A300372 (A055999 n + 10).toNat

end

end A300368.P8224361338506956847

/-! ## A300368.P2874618514624982914

`A300372(A055999(n)+10)%A000045(2*(n+1))`
-/

namespace A300368.P2874618514624982914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300372 (A055999 n + 10).toNat) (A000045 (2 * (n + 1)))

end

end A300368.P2874618514624982914

/-! ## A300368.P2714756828268613948

`A000005(gcd(n, n+1))*A300372(A055999(n)+10)`
-/

namespace A300368.P2714756828268613948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A300372 (A055999 n + 10).toNat

end

end A300368.P2714756828268613948

/-!
# A300369: Number of nX5 0..1 arrays with every element equal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300369, there is no canonical definition to state claims against.
-/

/-! ## A300369.P7703712435869330771

`A300372(A374005(n+1))`
-/

namespace A300369.P7703712435869330771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A374005 (n + 1)).toNat

end

end A300369.P7703712435869330771

/-! ## A300369.P5676822982786798757

`A300372(A167499(n+3))`
-/

namespace A300369.P5676822982786798757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A167499 (n + 3)).toNat

end

end A300369.P5676822982786798757

/-! ## A300369.P1556184481294013118

`A300372(A155212(n)+13)`
-/

namespace A300369.P1556184481294013118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A155212 n + 13).toNat

end

end A300369.P1556184481294013118

/-! ## A300369.P14613278533211357523

`A300372(A056000(n)+15)`
-/

namespace A300369.P14613278533211357523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A056000 n + 15).toNat

end

end A300369.P14613278533211357523

/-! ## A300369.P13857825283668789090

`A300372(A000124(n+4)+4)`
-/

namespace A300369.P13857825283668789090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A000124 (n + 4) + 4).toNat

end

end A300369.P13857825283668789090

/-!
# A300370: Number of nX6 0..1 arrays with every element equal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300370, there is no canonical definition to state claims against.
-/

/-! ## A300370.P5213825240559829867

`A300372(A374007(n+1))`
-/

namespace A300370.P5213825240559829867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A374007 (n + 1)).toNat

end

end A300370.P5213825240559829867

/-! ## A300370.P14704466494600518532

`A300372(A166136(n+4))`
-/

namespace A300370.P14704466494600518532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A166136 (n + 4)).toNat

end

end A300370.P14704466494600518532

/-! ## A300370.P10568416002894578022

`A300372(A056115(n)+21)`
-/

namespace A300370.P10568416002894578022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A056115 n + 21).toNat

end

end A300370.P10568416002894578022

/-! ## A300370.P12118921849733844176

`A300372(A167614(n+4)+3)`
-/

namespace A300370.P12118921849733844176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A167614 (n + 4) + 3).toNat

end

end A300370.P12118921849733844176

/-! ## A300370.P15035317147372493905

`A300372(A000124(n+5)+5)`
-/

namespace A300370.P15035317147372493905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A000124 (n + 5) + 5).toNat

end

end A300370.P15035317147372493905

/-!
# A300371: Number of nX7 0..1 arrays with every element equal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300371, there is no canonical definition to state claims against.
-/

/-! ## A300371.P5552506516391826993

`A300372(A374008(n+1))`
-/

namespace A300371.P5552506516391826993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A374008 (n + 1)).toNat

end

end A300371.P5552506516391826993

/-! ## A300371.P4875538765837788632

`A300372(A056119(n)+28)`
-/

namespace A300371.P4875538765837788632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A056119 n + 28).toNat

end

end A300371.P4875538765837788632

/-! ## A300371.P2479434712970418903

`A300372(A166136(n+5)+1)`
-/

namespace A300371.P2479434712970418903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A166136 (n + 5) + 1).toNat

end

end A300371.P2479434712970418903

/-! ## A300371.P6429467322262776857

`A300372(A167499(n+5)+2)`
-/

namespace A300371.P6429467322262776857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A167499 (n + 5) + 2).toNat

end

end A300371.P6429467322262776857

/-! ## A300371.P6600414814952996912

`A300372(A167614(n+5)+4)`
-/

namespace A300371.P6600414814952996912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300372 (A167614 (n + 5) + 4).toNat

end

end A300371.P6600414814952996912

/-!
# A300372: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300372, there is no canonical definition to state claims against.
-/

/-! ## A300372.P4945207838632116847

`A134023(xor(3, A168292(n)))`
-/

namespace A300372.P4945207838632116847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (Int.xor 3 (A168292 n)).toNat

end

end A300372.P4945207838632116847

/-! ## A300372.P3432749564278530251

`A187283(n+1)%A003506(A007318(n))`
-/

namespace A300372.P3432749564278530251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187283 (n + 1)) (A003506 (A007318 n).toNat)

end

end A300372.P3432749564278530251

/-! ## A300372.P1965619252921669128

`A032799(gcd(A009963(n), A252157(n+1)))`
-/

namespace A300372.P1965619252921669128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032799 (Int.gcd (A009963 n) (A252157 (n + 1)))

end

end A300372.P1965619252921669128

/-! ## A300372.P537806524954886487

`A194400(2*n+5)%A000120(A174450(n))`
-/

namespace A300372.P537806524954886487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194400 (2 * n + 5)) (A000120 (A174450 n).toNat)

end

end A300372.P537806524954886487

/-! ## A300372.P3360954843622513464

`A165414(A008300(n)+1)`
-/

namespace A300372.P3360954843622513464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165414 (A008300 n + 1).toNat

end

end A300372.P3360954843622513464

/-!
# A300373: Number of n X n 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300373, there is no canonical definition to state claims against.
-/

/-! ## A300373.P18055146854015853247

`A300380(∑[4*n]+1)`
-/

namespace A300373.P18055146854015853247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300373.P18055146854015853247

/-! ## A300373.P12185802206848102756

`record[A300380(∑[A266981(n)])]`
-/

namespace A300373.P12185802206848102756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300373.P12185802206848102756

/-! ## A300373.P16174587328000970659

`xor(1, xor(1, A300380(A001844(n))))`
-/

namespace A300373.P16174587328000970659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A300380 (A001844 n).toNat))

end

end A300373.P16174587328000970659

/-! ## A300373.P15667867674350118497

`record[A300380(A226725(n+1)+1)]`
-/

namespace A300373.P15667867674350118497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A226725 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300373.P15667867674350118497

/-! ## A300373.P226981458312200308

`record[A003982(n)*A300380(n+1)]`
-/

namespace A300373.P226981458312200308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300373.P226981458312200308

/-!
# A300374: Number of nX2 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300374, the canonical program `A300374.P9766366193239129148` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300374 has offset 1).

The definition of A300374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300374.P9766366193239129148

`4*a(n-2)+2*a(n-3)+a(n-5)-3*a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=10, a(4)=13, a(5)=42, a(6)=74`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300374

/-- `4*a(n-2)+2*a(n-3)+a(n-5)-3*a(n-6)+a(n-7)` -/
def P9766366193239129148.Spec : Prop :=
  ∀ n, P9766366193239129148.a n = A300374 (n + 1)

theorem P9766366193239129148.correct : P9766366193239129148.Spec := by
  intro n
  simp only [A300374, Nat.add_sub_cancel]

end A300374

/-! ## A300374.P18360773383353047105

`A300380(∑[n+1]+2)`
-/

namespace A300374.P18360773383353047105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A300374.P18360773383353047105

namespace A300374

/-- `A300380(∑[n+1]+2)` -/
def P18360773383353047105.Spec : Prop :=
  ∀ n, P18360773383353047105.a n = A300374 (n + 1)

end A300374

/-! ## A300374.P14476025716173082317

`or(char[1], A300380(A167487(n)-5))`
-/

namespace A300374.P14476025716173082317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300380 (A167487 n - 5).toNat)

end

end A300374.P14476025716173082317

namespace A300374

/-- `or(char[1], A300380(A167487(n)-5))` -/
def P14476025716173082317.Spec : Prop :=
  ∀ n, P14476025716173082317.a n = A300374 (n + 1)

end A300374

/-! ## A300374.P11056272809189807991

`A007318(∑[n])*A300380(A167487(n)-5)`
-/

namespace A300374.P11056272809189807991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A300380 (A167487 n - 5).toNat

end

end A300374.P11056272809189807991

namespace A300374

/-- `A007318(∑[n])*A300380(A167487(n)-5)` -/
def P11056272809189807991.Spec : Prop :=
  ∀ n, P11056272809189807991.a n = A300374 (n + 1)

end A300374

/-! ## A300374.P1057461719858532181

`A300380(A167487(n)-5)/A007318(C(2, n))`
-/

namespace A300374.P1057461719858532181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300380 (A167487 n - 5).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A300374.P1057461719858532181

namespace A300374

/-- `A300380(A167487(n)-5)/A007318(C(2, n))` -/
def P1057461719858532181.Spec : Prop :=
  ∀ n, P1057461719858532181.a n = (A300374 (n + 1) : ℚ)

end A300374

/-!
# A300375: Number of nX3 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300375, there is no canonical definition to state claims against.
-/

/-! ## A300375.P15736143588177627746

`A300677(n+1)-char[2]`
-/

namespace A300375.P15736143588177627746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300677 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300375.P15736143588177627746

/-! ## A300375.P7545215705638835868

`xor(A185012(n), A300677(n+1))`
-/

namespace A300375.P7545215705638835868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A300677 (n + 1))

end

end A300375.P7545215705638835868

/-! ## A300375.P11935509151945279620

`xor(A209229(C(n, 2)), A300677(n+1))`
-/

namespace A300375.P11935509151945279620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A209229 (Nat.choose n 2)) (A300677 (n + 1))

end

end A300375.P11935509151945279620

/-! ## A300375.P17848038859238026689

`xor(A209229(n²+12), A300677(n+1))`
-/

namespace A300375.P17848038859238026689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A209229 (n ^ 2 + 12)) (A300677 (n + 1))

end

end A300375.P17848038859238026689

/-! ## A300375.P9576678163466284268

`xor(A055672(A342272(n)), A300677(n+1))`
-/

namespace A300375.P9576678163466284268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055672 (A342272 n).toNat) (A300677 (n + 1))

end

end A300375.P9576678163466284268

/-!
# A300376: Number of nX4 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300376, there is no canonical definition to state claims against.
-/

/-! ## A300376.P1441663494130627331

`A300380(∑[n+3]+7)`
-/

namespace A300376.P1441663494130627331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300376.P1441663494130627331

/-! ## A300376.P520497315493302742

`record[A300380(A019304(n))]`
-/

namespace A300376.P520497315493302742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300376.P520497315493302742

/-! ## A300376.P2039413812358213205

`record[gcd(A182888(n+2), A300380(n+1))]`
-/

namespace A300376.P2039413812358213205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182888 (n + 2)) (A300380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300376.P2039413812358213205

/-! ## A300376.P5024116310877427379

`A300380(A027379(n+2))+A025469(n)`
-/

namespace A300376.P5024116310877427379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A027379 (n + 2)).toNat + A025469 n

end

end A300376.P5024116310877427379

/-! ## A300376.P12495985020179821322

`or(A185012(n), A300380(A027379(n+2)))`
-/

namespace A300376.P12495985020179821322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A300380 (A027379 (n + 2)).toNat)

end

end A300376.P12495985020179821322

/-!
# A300377: Number of nX5 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300377, there is no canonical definition to state claims against.
-/

/-! ## A300377.P13145042068097428710

`A300380(A167499(n+3))`
-/

namespace A300377.P13145042068097428710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A167499 (n + 3)).toNat

end

end A300377.P13145042068097428710

/-! ## A300377.P992401345018004892

`A300380(A155212(n)+13)`
-/

namespace A300377.P992401345018004892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A155212 n + 13).toNat

end

end A300377.P992401345018004892

/-! ## A300377.P10836948441207559924

`A300380(A056000(n)+15)`
-/

namespace A300377.P10836948441207559924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A056000 n + 15).toNat

end

end A300377.P10836948441207559924

/-! ## A300377.P5288895261803551585

`A300380(eq[7, A066657(n)])`
-/

namespace A300377.P5288895261803551585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300377.P5288895261803551585

/-! ## A300377.P6108172852502813658

`A300380(A166136(n+3)-1)`
-/

namespace A300377.P6108172852502813658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A166136 (n + 3) - 1).toNat

end

end A300377.P6108172852502813658

/-!
# A300378: Number of nX6 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300378, there is no canonical definition to state claims against.
-/

/-! ## A300378.P9624843215935176558

`A300380(A166136(n+4))`
-/

namespace A300378.P9624843215935176558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A166136 (n + 4)).toNat

end

end A300378.P9624843215935176558

/-! ## A300378.P5814487676207038706

`A300380(A056115(n)+21)`
-/

namespace A300378.P5814487676207038706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A056115 n + 21).toNat

end

end A300378.P5814487676207038706

/-! ## A300378.P4210507345974797101

`A300380(eq[6, A256910(n)])`
-/

namespace A300378.P4210507345974797101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300378.P4210507345974797101

/-! ## A300378.P17723268042700545426

`A300380(A167499(n+4)+1)`
-/

namespace A300378.P17723268042700545426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A167499 (n + 4) + 1).toNat

end

end A300378.P17723268042700545426

/-! ## A300378.P7181887124742711021

`A300380(A167487(n+4)-1)`
-/

namespace A300378.P7181887124742711021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A167487 (n + 4) - 1).toNat

end

end A300378.P7181887124742711021

/-!
# A300379: Number of nX7 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300379, there is no canonical definition to state claims against.
-/

/-! ## A300379.P13766618338017326592

`A300380(A056119(n)+28)`
-/

namespace A300379.P13766618338017326592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A056119 n + 28).toNat

end

end A300379.P13766618338017326592

/-! ## A300379.P6640232751981991112

`A300380(eq[11, A066657(n)])`
-/

namespace A300379.P6640232751981991112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300379.P6640232751981991112

/-! ## A300379.P2734099486726510733

`A300380(A167614(n+5)+4)`
-/

namespace A300379.P2734099486726510733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A167614 (n + 5) + 4).toNat

end

end A300379.P2734099486726510733

/-! ## A300379.P12103820106963941844

`A300380(A000124(n+6)+6)`
-/

namespace A300379.P12103820106963941844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A000124 (n + 6) + 6).toNat

end

end A300379.P12103820106963941844

/-! ## A300379.P13443089194097051386

`A300380(A000217(n+6)+7)`
-/

namespace A300379.P13443089194097051386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (A000217 (n + 6) + 7).toNat

end

end A300379.P13443089194097051386

/-!
# A300380: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2 or 3 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300380, there is no canonical definition to state claims against.
-/

/-! ## A300380.P8370847174264114880

`A300682(n+1)-A014646(A271456(n))`
-/

namespace A300380.P8370847174264114880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (n + 1) - A014646 (A271456 n).toNat

end

end A300380.P8370847174264114880

/-! ## A300380.P12706987733867792646

`A300682(n+1)-A025469(A333218(2*(n+1)))`
-/

namespace A300380.P12706987733867792646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (n + 1) - A025469 (A333218 (2 * (n + 1))).toNat

end

end A300380.P12706987733867792646

/-! ## A300380.P2650784344160835605

`A300682(n+1)+A014063(A008300(n))`
-/

namespace A300380.P2650784344160835605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (n + 1) + A014063 (A008300 n).toNat

end

end A300380.P2650784344160835605

/-! ## A300380.P7695629116961575863

`A300682(n+1)-A025469(A296548(n))`
-/

namespace A300380.P7695629116961575863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (n + 1) - A025469 (A296548 n).toNat

end

end A300380.P7695629116961575863

/-! ## A300380.P2789765455581887169

`A300682(n+1)+A014324(A199256(n+1))`
-/

namespace A300380.P2789765455581887169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (n + 1) + A014324 (A199256 (n + 1)).toNat

end

end A300380.P2789765455581887169

/-!
# A300383: In the ranked poset of integer partitions ordered by refinement, a(n) is the size of the lower ideal generated by the partition with Heinz number n.

The programs for A300383, there is no canonical definition to state claims against.
-/

/-! ## A300383.P500298812310737357

`A243055(A331732(2*(n+1)))+A001055(A331732(2*(n+1)))`
-/

namespace A300383.P500298812310737357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A331732 (2 * (n + 1))).toNat + A001055 (A331732 (2 * (n + 1))).toNat

end

end A300383.P500298812310737357

/-! ## A300383.P15263631121705712120

`A000041(A318995(n+1)+A000041(A243831(n)))`
-/

namespace A300383.P15263631121705712120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A318995 (n + 1) + A000041 (A243831 n).toNat).toNat

end

end A300383.P15263631121705712120

/-! ## A300383.P8880630308448640524

`A000041(A318995(3*(n+1)))%A194697(n+1)`
-/

namespace A300383.P8880630308448640524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A318995 (3 * (n + 1))).toNat) (A194697 (n + 1))

end

end A300383.P8880630308448640524

/-! ## A300383.P13690118816293633574

`A243288(2^A318995(n+1))`
-/

namespace A300383.P13690118816293633574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243288 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A318995 (n + 1) : ℤ))).toNat

end

end A300383.P13690118816293633574

/-! ## A300383.P8687223394367495022

`A299200(n+1)-A052400(A299200(n+1))`
-/

namespace A300383.P8687223394367495022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (n + 1) - A052400 (A299200 (n + 1)).toNat

end

end A300383.P8687223394367495022

/-!
# A300384: In the ranked poset of integer partitions ordered by refinement, number of maximal chains from the local minimum to the partition with Heinz number n.

The programs for A300384, there is no canonical definition to state claims against.
-/

/-! ## A300384.P17464013019870002535

`A300385(A241909(n+1))%A306316(n+1)`
-/

namespace A300384.P17464013019870002535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300385 (A241909 (n + 1)).toNat) (A306316 (n + 1))

end

end A300384.P17464013019870002535

/-! ## A300384.P14219201314850232570

`A300385(A241909(n+1))+A220164(n+1)%((-1)^floor(n/2))`
-/

namespace A300384.P14219201314850232570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300385 (A241909 (n + 1)).toNat + Int.tmod (A220164 (n + 1)) (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A300384.P14219201314850232570

/-! ## A300384.P18184234816326023921

`A300385(A241909(n+1))^A000188(A273366(n))`
-/

namespace A300384.P18184234816326023921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300385 (A241909 (n + 1)).toNat : ℚ) ^ (A000188 (A273366 n).toNat : ℤ)

end

end A300384.P18184234816326023921

/-! ## A300384.P11548892721383508530

`A300385(A241909(n+1))%A031338(A306343(n))`
-/

namespace A300384.P11548892721383508530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300385 (A241909 (n + 1)).toNat) (A031338 (A306343 n).toNat)

end

end A300384.P11548892721383508530

/-! ## A300384.P4103013992756978433

`A300385(A241909(n+1)%A185223(2*n+1))`
-/

namespace A300384.P4103013992756978433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300385 (Int.tmod (A241909 (n + 1)) (A185223 (2 * n + 1))).toNat

end

end A300384.P4103013992756978433

/-!
# A300385: In the ranked poset of integer partitions ordered by refinement, number of maximal chains from the partition with Heinz number n to the local maximum.

The programs for A300385, there is no canonical definition to state claims against.
-/

/-! ## A300385.P13068481618301536548

`A320105(A297002(n+1))%∑[A316313(n+1)]`
-/

namespace A300385.P13068481618301536548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320105 (A297002 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300385.P13068481618301536548

/-! ## A300385.P8678931657752106100

`A320105(A064614(n+1))%A117991(n+1)`
-/

namespace A300385.P8678931657752106100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320105 (A064614 (n + 1)).toNat) (A117991 (n + 1))

end

end A300385.P8678931657752106100

/-! ## A300385.P8606420032405971955

`A320105(A064614(n+1))-A000007(A117991(n+1)-1)`
-/

namespace A300385.P8606420032405971955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320105 (A064614 (n + 1)).toNat - A000007 (A117991 (n + 1) - 1).toNat

end

end A300385.P8606420032405971955

/-! ## A300385.P8129923684186633270

`A320105(A064614(n+1))%A224214(n)`
-/

namespace A300385.P8129923684186633270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320105 (A064614 (n + 1)).toNat) (A224214 n)

end

end A300385.P8129923684186633270

/-! ## A300385.P2562577112830555740

`A353853(A330665(n+1)%A267180(n+1))`
-/

namespace A300385.P2562577112830555740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (Int.tmod (A330665 (n + 1)) (A267180 (n + 1))).toNat

end

end A300385.P2562577112830555740

/-!
# A300393: Least squarefree number with n prime factors whose average is an integer.

The programs for A300393, there is no canonical definition to state claims against.
-/

/-! ## A300393.P9439762722500335187

`A007947(C(A345051(n+1), A008732(n)))`
-/

namespace A300393.P9439762722500335187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.choose (A345051 (n + 1)).toNat (A008732 n).toNat)

end

end A300393.P9439762722500335187

/-!
# A300396: 

The programs for A300396, there is no canonical definition to state claims against.
-/

/-! ## A300396.P14271995901073195573

`and(A198275(n), A300360(n+1))`
-/

namespace A300396.P14271995901073195573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A300360 (n + 1))

end

end A300396.P14271995901073195573

/-! ## A300396.P10689174289596076740

`and(A171389(n), A300360(n+1))`
-/

namespace A300396.P10689174289596076740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A300360 (n + 1))

end

end A300396.P10689174289596076740

/-! ## A300396.P11838563682452945102

`and(A198276(n), A300360(n+1))`
-/

namespace A300396.P11838563682452945102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A300360 (n + 1))

end

end A300396.P11838563682452945102

/-! ## A300396.P7556717251565195306

`and(A291557(n), A300360(n+1))`
-/

namespace A300396.P7556717251565195306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291557 n) (A300360 (n + 1))

end

end A300396.P7556717251565195306

/-! ## A300396.P10750043552560279675

`and(A171390(n+1), A300360(n+1))`
-/

namespace A300396.P10750043552560279675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171390 (n + 1)) (A300360 (n + 1))

end

end A300396.P10750043552560279675

/-! ## A300396.P7246119978408996417

`and(A118883(n+1), A300360(n+1))`
-/

namespace A300396.P7246119978408996417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A300360 (n + 1))

end

end A300396.P7246119978408996417

/-! ## A300396.P3882211739074202949

`A300360(n+1)%A001792(n)`
-/

namespace A300396.P3882211739074202949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300360 (n + 1)) (A001792 n)

end

end A300396.P3882211739074202949

/-! ## A300396.P5966666353922244909

`and(A127582(n), A300360(n+1))`
-/

namespace A300396.P5966666353922244909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A300360 (n + 1))

end

end A300396.P5966666353922244909

/-! ## A300396.P13915345885498513526

`and(A201914(n), A300360(n+1))`
-/

namespace A300396.P13915345885498513526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201914 n) (A300360 (n + 1))

end

end A300396.P13915345885498513526

/-! ## A300396.P7819459652894425005

`and(A300360(n+1), A375155(n+1))`
-/

namespace A300396.P7819459652894425005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A300360 (n + 1)) (A375155 (n + 1))

end

end A300396.P7819459652894425005

/-! ## A300396.P17905148359279072909

`and(A087323(n), A300360(n+1))`
-/

namespace A300396.P17905148359279072909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087323 n) (A300360 (n + 1))

end

end A300396.P17905148359279072909

/-! ## A300396.P8417709881349699244

`and(A099035(n+1), A300360(n+1))`
-/

namespace A300396.P8417709881349699244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099035 (n + 1)) (A300360 (n + 1))

end

end A300396.P8417709881349699244

/-! ## A300396.P10173229197420893246

`and(A003261(n+1), A300360(n+1))`
-/

namespace A300396.P10173229197420893246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A300360 (n + 1))

end

end A300396.P10173229197420893246

/-! ## A300396.P2794741459649221203

`and(A163383(n+1), A300360(n+1))`
-/

namespace A300396.P2794741459649221203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A300360 (n + 1))

end

end A300396.P2794741459649221203

/-! ## A300396.P6898119300799035274

`and(A135972(n+1), A300360(n+1))`
-/

namespace A300396.P6898119300799035274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135972 (n + 1)) (A300360 (n + 1))

end

end A300396.P6898119300799035274

/-! ## A300396.P16913009797316874951

`and(A278477(n+1), A300360(n+1))`
-/

namespace A300396.P16913009797316874951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A278477 (n + 1)) (A300360 (n + 1))

end

end A300396.P16913009797316874951

/-! ## A300396.P16142579986178700400

`and(A063396(n), A300360(n+1))`
-/

namespace A300396.P16142579986178700400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063396 n) (A300360 (n + 1))

end

end A300396.P16142579986178700400

/-! ## A300396.P11155015452086138388

`and(A055580(n), A300360(n+1))`
-/

namespace A300396.P11155015452086138388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A300360 (n + 1))

end

end A300396.P11155015452086138388

/-! ## A300396.P14759494423023666501

`and(A107392(n), A300360(n+1))`
-/

namespace A300396.P14759494423023666501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A300360 (n + 1))

end

end A300396.P14759494423023666501

/-! ## A300396.P8489256817471611060

`and(A107464(n), A300360(n+1))`
-/

namespace A300396.P8489256817471611060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A300360 (n + 1))

end

end A300396.P8489256817471611060

