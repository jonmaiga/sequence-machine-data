import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024

/-!
# A331000: Unitary Ruth-Aaron numbers: numbers k such that A008475(k) = A008475(k+1).

The programs for A331000, there is no canonical definition to state claims against.
-/

/-! ## A331000.P13633890257051021235

`record[A330999(A206437(1-∑{e}[n+1, #]+n))]`
-/

namespace A331000.P13633890257051021235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330999 (A206437 (1 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331000.P13633890257051021235

/-! ## A331000.P3422604523751858787

`A330999(A190241(n+1)^A260340(3*n+1))`
-/

namespace A331000.P3422604523751858787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330999 (SequenceMachineLib.roundAway ((A190241 (n + 1) : ℚ) ^ (A260340 (3 * n + 1) : ℤ))).toNat

end

end A331000.P3422604523751858787

/-! ## A331000.P9799048197755438989

`A330999(comp[n*(2*n+3)]%A331015(n+1))`
-/

namespace A331000.P9799048197755438989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330999 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A331015 (n + 1))).toNat

end

end A331000.P9799048197755438989

/-!
# A331001: Number of symmetrical self-avoiding walks with maximum length on an n X n board which start in the upper left corner and go right on the first step.

The programs for A331001, there is no canonical definition to state claims against.
-/

/-! ## A331001.P17655589080137749122

`A109433(A105465(n+1))`
-/

namespace A331001.P17655589080137749122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109433 (A105465 (n + 1)).toNat

end

end A331001.P17655589080137749122

/-! ## A331001.P4755997213962338444

`A347656(A204512(n+2))`
-/

namespace A331001.P4755997213962338444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 (A204512 (n + 2)).toNat

end

end A331001.P4755997213962338444

/-! ## A331001.P3721992917448142827

`A274914(A003108(C(2*n, 2)))`
-/

namespace A331001.P3721992917448142827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274914 (A003108 (Nat.choose (2 * n) 2)).toNat

end

end A331001.P3721992917448142827

/-!
# A331007: Number of derangements of a set of n elements where 2 specific elements cannot appear in each other's positions.

The programs for A331007, there is no canonical definition to state claims against.
-/

/-! ## A331007.P2691227797102214355

`A000166(n)-A259834(n)`
-/

namespace A331007.P2691227797102214355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A259834 n

end

end A331007.P2691227797102214355

/-! ## A331007.P14626992883780826997

`abs(A182386(n))-A259834(n)`
-/

namespace A331007.P14626992883780826997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A259834 n

end

end A331007.P14626992883780826997

/-! ## A331007.P13045172888371407570

`A008290(A000217(n))-A259834(n)`
-/

namespace A331007.P13045172888371407570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A000217 n).toNat - A259834 n

end

end A331007.P13045172888371407570

/-! ## A331007.P6162558548881208085

`A047920(A000096(n))-A259834(n)`
-/

namespace A331007.P6162558548881208085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000096 n).toNat - A259834 n

end

end A331007.P6162558548881208085

/-! ## A331007.P3113752778903391059

`A259776(record[A003602(A008642(n))])`
-/

namespace A331007.P3113752778903391059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A008642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259776 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331007.P3113752778903391059

/-!
# A331008: Numbers m such that (11*prime(m)) mod Pi > (11*prime(m+1)) mod Pi.

The programs for A331008, there is no canonical definition to state claims against.
-/

/-! ## A331008.P722991113911243563

`A230980(A140801(n)-A017341(n))`
-/

namespace A331008.P722991113911243563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A140801 n - A017341 n).toNat

end

end A331008.P722991113911243563

/-!
# A331013: Number of unlabeled bicolored bipartite graphs on 2n nodes having n nodes of each color with no edges between vertices of the same color and edges having two colors and allowing the node color classes to be interchanged. Edge colors are swappable (permuted by the symmetric group).

The programs for A331013, there is no canonical definition to state claims against.
-/

/-! ## A331013.P11560708901916962609

`∑[or(A146775(n+1), A232471(n+1))]`
-/

namespace A331013.P11560708901916962609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146775 (n + 1)) (A232471 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331013.P11560708901916962609

/-!
# A331017: Numbers that are equal to the sum of their iterated absolute alternating sum-of-divisors function (A206369).

The programs for A331017, there is no canonical definition to state claims against.
-/

/-! ## A331017.P16230036172751268279

`A325209(A078707(n)+A014106(n))`
-/

namespace A331017.P16230036172751268279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325209 (A078707 n + A014106 n).toNat

end

end A331017.P16230036172751268279

/-!
# A331019: a(n) is the least k such that the denominator(sigma(sigma(k*n))/(k*n)) equals n.

The programs for A331019, there is no canonical definition to state claims against.
-/

/-! ## A331019.P18024788366096923369

`A331033(n+1)/(n+1)`
-/

namespace A331019.P18024788366096923369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331033 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A331019.P18024788366096923369

/-! ## A331019.P12753387433133670491

`A353751(A331033(n+1))`
-/

namespace A331019.P12753387433133670491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353751 (A331033 (n + 1)).toNat

end

end A331019.P12753387433133670491

/-!
# A331021: Numbers k such that gcd(k^2, 2^(k-1) - 1) > k.

The programs for A331021, there is no canonical definition to state claims against.
-/

/-! ## A331021.P10649315515776107546

`A291194(lt[A291189(n+1), A291213(3*n+1)])`
-/

namespace A331021.P10649315515776107546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291213 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291194 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331021.P10649315515776107546

/-! ## A331021.P10531020969083137841

`A291194(lt[A291190(n+1), A291213(3*n+1)])`
-/

namespace A331021.P10531020969083137841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291213 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291194 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331021.P10531020969083137841

/-! ## A331021.P16143471167764298840

`A291194(lt[A291211(n+1), A291213(3*n+1)])`
-/

namespace A331021.P16143471167764298840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291213 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291194 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331021.P16143471167764298840

/-!
# A331022: Numbers k such that the number of strict integer partitions of k is a power of 2.

The programs for A331022, there is no canonical definition to state claims against.
-/

/-! ## A331022.P16928065991016823186

`lt[A254269(n), 3]`
-/

namespace A331022.P16928065991016823186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254269 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A331022.P16928065991016823186

/-! ## A331022.P5037999746249358612

`lt[A334658(n+4), 17]`
-/

namespace A331022.P5037999746249358612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334658 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A331022.P5037999746249358612

/-! ## A331022.P13949909684756721235

`lt[∑{p}[A000009(n), #], 3]`
-/

namespace A331022.P13949909684756721235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A331022.P13949909684756721235

/-! ## A331022.P18112549667244643061

`eq[2, ∏{p}[A333147(n)+1, #]]`
-/

namespace A331022.P18112549667244643061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331022.P18112549667244643061

/-! ## A331022.P9188090475113865767

`eq[0, ∑{p}[A081360(n), 2%#]]`
-/

namespace A331022.P9188090475113865767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081360 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, 2 % p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331022.P9188090475113865767

/-!
# A331023: Numerator of number of factorizations of n divided by number of strict factorizations of n A001055(n)/A045778(n).

The programs for A331023, there is no canonical definition to state claims against.
-/

/-! ## A331023.P2942194532278347704

`A001055(n+1)/A045778(n+1)*A331024(n+1)`
-/

namespace A331023.P2942194532278347704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) / (A045778 (n + 1) : ℚ) * (A331024 (n + 1) : ℚ)

end

end A331023.P2942194532278347704

/-! ## A331023.P7633586232868937

`lcm(A344368(n+1), A344370(n+1))/A344370(n+1)`
-/

namespace A331023.P7633586232868937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A344368 (n + 1)) (A344370 (n + 1)) : ℚ) / (A344370 (n + 1) : ℚ)

end

end A331023.P7633586232868937

/-! ## A331023.P12582830967545803362

`A001055(n+1)/gcd(A344370(n+1)/(n+1), A001055(n+1))`
-/

namespace A331023.P12582830967545803362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((A344370 (n + 1) : ℚ) / (n + 1 : ℚ))) (A001055 (n + 1)) : ℚ)

end

end A331023.P12582830967545803362

/-! ## A331023.P10460419543287818633

`A001055(n+1)^A304118(∏{e}[n+1, 2^#-1])`
-/

namespace A331023.P10460419543287818633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) ^ (A304118 (∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat : ℤ)

end

end A331023.P10460419543287818633

/-! ## A331023.P9351745523565235570

`A001055(n+1)^A055396(A294875(n+1))`
-/

namespace A331023.P9351745523565235570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) ^ (A055396 (A294875 (n + 1)).toNat : ℤ)

end

end A331023.P9351745523565235570

/-! ## A331023.P16151802306021239592

`A001055(n+1)^A300384(A292589(n+1))`
-/

namespace A331023.P16151802306021239592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) ^ (A300384 (A292589 (n + 1)).toNat : ℤ)

end

end A331023.P16151802306021239592

/-! ## A331023.P17542249133819100346

`A001055(n+1)^A051904(A000041(A003557(n+1)))`
-/

namespace A331023.P17542249133819100346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) ^ (A051904 (A000041 (A003557 (n + 1)).toNat).toNat : ℤ)

end

end A331023.P17542249133819100346

/-! ## A331023.P7867937972320916286

`A001055(n+1)^A001221(A277885(n+1)+1)^9`
-/

namespace A331023.P7867937972320916286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001055 (n + 1) : ℚ) ^ (A001221 (A277885 (n + 1) + 1).toNat ^ 9 : ℤ)

end

end A331023.P7867937972320916286

/-! ## A331023.P9240184673456944437

`gcd(Δ[A100198(n)], A001055(n+1))`
-/

namespace A331023.P9240184673456944437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001055 (n + 1))

end

end A331023.P9240184673456944437

/-!
# A331024: Denominator: factorizations divided by strict factorizations A001055(n)/A045778(n).

The programs for A331024, there is no canonical definition to state claims against.
-/

/-! ## A331024.P33565550844598290

`lcm(A001055(n+1), A045778(n+1))/A001055(n+1)`
-/

namespace A331024.P33565550844598290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001055 (n + 1)) (A045778 (n + 1)) : ℚ) / (A001055 (n + 1) : ℚ)

end

end A331024.P33565550844598290

/-! ## A331024.P12443203125277040297

`lcm(A344368(n+1), A344370(n+1))/A344368(n+1)`
-/

namespace A331024.P12443203125277040297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A344368 (n + 1)) (A344370 (n + 1)) : ℚ) / (A344368 (n + 1) : ℚ)

end

end A331024.P12443203125277040297

/-! ## A331024.P13724304059446190851

`gcd(A008683(A283980(n+1)), A045778(n+1))`
-/

namespace A331024.P13724304059446190851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A283980 (n + 1)).toNat) (A045778 (n + 1))

end

end A331024.P13724304059446190851

/-! ## A331024.P7625931137709793875

`gcd(∏{e}[n+1, (3^#)%9], A332224(2^A088434(n+1)))`
-/

namespace A331024.P7625931137709793875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p % 9 : ℕ) : ℤ) (A332224 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A088434 (n + 1) : ℤ))).toNat)

end

end A331024.P7625931137709793875

/-! ## A331024.P8998339940536429472

`gcd(A008683(n+1), A332224(2^A088434(n+1)))`
-/

namespace A331024.P8998339940536429472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (n + 1)) (A332224 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A088434 (n + 1) : ℤ))).toNat)

end

end A331024.P8998339940536429472

/-! ## A331024.P8856401416748675787

`A045778(n+1)^A257196(A202535(n+1))`
-/

namespace A331024.P8856401416748675787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045778 (n + 1) : ℚ) ^ (A257196 (A202535 (n + 1)).toNat : ℤ)

end

end A331024.P8856401416748675787

/-! ## A331024.P1116157629114578418

`A033273(A038548(A002033(n))^A045778(n+1))`
-/

namespace A331024.P1116157629114578418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((A038548 (A002033 n).toNat : ℚ) ^ (A045778 (n + 1) : ℤ))).toNat

end

end A331024.P1116157629114578418

/-!
# A331025: Products of terms of A232803.

The programs for A331025, there is no canonical definition to state claims against.
-/

/-! ## A331025.P7406151156473047825

`∏{e}[A181821(n+1), A232803(#)]`
-/

namespace A331025.P7406151156473047825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A232803 (Nat.factorization (f1 n).natAbs p)

end

end A331025.P7406151156473047825

/-! ## A331025.P7960179587559876442

`∏{e}[A304660(n+1), A232803(#)]`
-/

namespace A331025.P7960179587559876442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A232803 (Nat.factorization (f1 n).natAbs p)

end

end A331025.P7960179587559876442

/-! ## A331025.P10000463590720021856

`∏{e}[A348199(n+1), A038567(#)+1]`
-/

namespace A331025.P10000463590720021856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A038567 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A331025.P10000463590720021856

/-! ## A331025.P12968875533838499984

`∏{e}[A348199(n+1), A291769(A038567(#))]`
-/

namespace A331025.P12968875533838499984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A291769 (A038567 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A331025.P12968875533838499984

/-! ## A331025.P5836398676330601848

`A366991(A074736(n+1))`
-/

namespace A331025.P5836398676330601848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366991 (A074736 (n + 1)).toNat

end

end A331025.P5836398676330601848

/-!
# A331028: Partition the terms of the harmonic series into groups sequentially so that the sum of each group is equal to or minimally greater than 1; then a(n) is the number of terms in the n-th group.

The programs for A331028, there is no canonical definition to state claims against.
-/

/-! ## A331028.P1271613814837447649

`Δ[A180224(A028310(n))]+C(2, n+2)`
-/

namespace A331028.P1271613814837447649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180224 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A331028.P1271613814837447649

/-! ## A331028.P9835522243488811635

`A000007(n)+Δ[A180224(A028310(n))]`
-/

namespace A331028.P9835522243488811635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180224 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A331028.P9835522243488811635

/-! ## A331028.P6716923530160967579

`Δ[A180224(A028310(n))+A040000(n)]`
-/

namespace A331028.P6716923530160967579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180224 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331028.P6716923530160967579

/-! ## A331028.P6602133826874035990

`Δ[A180224(A028310(n))%A018035(n)]`
-/

namespace A331028.P6602133826874035990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180224 (A028310 n).toNat) (A018035 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331028.P6602133826874035990

/-! ## A331028.P10156746170075074704

`Δ[A180224(A028310(n))-A000038(n)!]`
-/

namespace A331028.P10156746170075074704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180224 (A028310 n).toNat - (Nat.factorial (A000038 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331028.P10156746170075074704

/-!
# A331029: Least integer of each composite prime signature where primes ending in 1 or 9 are treated distinctly from those ending in 3 or 7.

The programs for A331029, there is no canonical definition to state claims against.
-/

/-! ## A331029.P13895747034928534454

`∩[A261141(n+1), A356930(n+1)]`
-/

namespace A331029.P13895747034928534454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331029.P13895747034928534454

/-!
# A331030: Divide the terms of the harmonic series into groups sequentially so that the sum of each group is minimally greater than 1. a(n) is the number of terms in the n-th group.

The programs for A331030, there is no canonical definition to state claims against.
-/

/-! ## A331030.P15656874312457343262

`A331028(n+1)+∑[A153583(∑[n]+n)]`
-/

namespace A331030.P15656874312457343262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153583 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331028 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331030.P15656874312457343262

/-! ## A331030.P17747672403505896285

`A331028(n+1)+∑[A028310(A153582(n))]`
-/

namespace A331030.P17747672403505896285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A153582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331028 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331030.P17747672403505896285

/-! ## A331030.P8632694563768213761

`A035187(n+1)+A022843(a(n-1))` with `a(0)=2`
-/

namespace A331030.P8632694563768213761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A035187 (n + 1) + A022843 (a (n - 1)).toNat

end

end A331030.P8632694563768213761

/-! ## A331030.P3494109364814454391

`A024581(n+1)-A153583(A000096(n+1))`
-/

namespace A331030.P3494109364814454391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024581 (n + 1) - A153583 (A000096 (n + 1)).toNat

end

end A331030.P3494109364814454391

/-! ## A331030.P3911891824068050320

`A331028(A141517(n+1)+n)+∑[A153582(n)]`
-/

namespace A331030.P3911891824068050320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331028 (A141517 (n + 1) + (n : ℤ)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331030.P3911891824068050320

/-!
# A331031: The prime numbers that are prime-indexed primes and whose digit sum, adjacent digit sum concatenation, and adjacent digit difference concatenation are also primes.

The programs for A331031, there is no canonical definition to state claims against.
-/

/-! ## A331031.P3626054793724526481

`∩[A006450(n+1), A330653(n+1)]`
-/

namespace A331031.P3626054793724526481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331031.P3626054793724526481

/-! ## A331031.P15849423476986222236

`∩[A302592(n+1), A330653(n+1)]`
-/

namespace A331031.P15849423476986222236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331031.P15849423476986222236

/-! ## A331031.P2489727029499210246

`∩[A162250(n+1), A330653(n+1)]`
-/

namespace A331031.P2489727029499210246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331031.P2489727029499210246

/-! ## A331031.P13127049123869041827

`∩[A000040(A000040(n+1)), A330653(n+1)]`
-/

namespace A331031.P13127049123869041827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331031.P13127049123869041827

/-!
# A331032: Number of iterations of n -> n + gpf(n) needed for the trajectory of n to join the trajectory of A076271, where gpf(n) is the greatest prime factor of n.

The programs for A331032, there is no canonical definition to state claims against.
-/

/-! ## A331032.P13326945663785465040

`and(A054384(n), A054404(A023108(n+1)))`
-/

namespace A331032.P13326945663785465040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054384 n) (A054404 (A023108 (n + 1)).toNat)

end

end A331032.P13326945663785465040

/-! ## A331032.P10256240288746820286

`A037882(A304255(n))`
-/

namespace A331032.P10256240288746820286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037882 (A304255 n).toNat

end

end A331032.P10256240288746820286

/-! ## A331032.P503737332786172726

`A213911(n^A143143(n+1))`
-/

namespace A331032.P503737332786172726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A143143 (n + 1) : ℤ))).toNat

end

end A331032.P503737332786172726

/-! ## A331032.P8459503554118573215

`A250030(A090076(2*(n+1)))%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A331032.P8459503554118573215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250030 (A090076 (2 * (n + 1))).toNat) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A331032.P8459503554118573215

/-! ## A331032.P9190394003121712702

`A001222(A028284(n)^A294783(n))`
-/

namespace A331032.P9190394003121712702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A028284 n : ℚ) ^ (A294783 n : ℤ))).toNat

end

end A331032.P9190394003121712702

/-!
# A331033: a(n) is the least k such that the denominator(sigma(sigma(k))/k) equals n.

The programs for A331033, there is no canonical definition to state claims against.
-/

/-! ## A331033.P6564016582919100841

`(n+1)*A331019(n+1)`
-/

namespace A331033.P6564016582919100841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A331019 (n + 1)

end

end A331033.P6564016582919100841

/-! ## A331033.P10021622266948424226

`A001203(A289126(n+1))^A046645(n+1)*(n+1)`
-/

namespace A331033.P10021622266948424226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001203 (A289126 (n + 1)).toNat : ℚ) ^ (A046645 (n + 1) : ℤ) * (n + 1 : ℚ)

end

end A331033.P10021622266948424226

/-!
# A331034: Consider an empty square array visited by antidiagonals downwards; when the current square is empty, place a 1 X 1 tile or a 1 X 2 tile on it (without overlapping any prior tile) such that the RUNS transform of the sequence of tile widths as they are placed on the grid equals the sequence of tile widths as they are visited; first place a 1 X 1 tile. This sequence corresponds to the tile widths as they are visited.

The programs for A331034, there is no canonical definition to state claims against.
-/

/-! ## A331034.P2550684321164212597

`runs[A331104(n+1)]`
-/

namespace A331034.P2550684321164212597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A331034.P2550684321164212597

/-! ## A331034.P18279115336815575513

`A000002(A113983(2*n)*A296119(n+3))`
-/

namespace A331034.P18279115336815575513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A113983 (2 * n) * A296119 (n + 3)).toNat

end

end A331034.P18279115336815575513

/-! ## A331034.P467718703290824453

`A026498(A235154(n+1)+A029877(n))`
-/

namespace A331034.P467718703290824453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 (A235154 (n + 1) + A029877 n).toNat

end

end A331034.P467718703290824453

/-! ## A331034.P15597449669719331013

`A270643(A003361(2*n+1)-A000695(n+2))`
-/

namespace A331034.P15597449669719331013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270643 (A003361 (2 * n + 1) - A000695 (n + 2)).toNat

end

end A331034.P15597449669719331013

/-! ## A331034.P9823083579703403098

`A080757(A117720(n))`
-/

namespace A331034.P9823083579703403098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (A117720 n).toNat

end

end A331034.P9823083579703403098

/-!
# A331035: a(n) = sigma^m(N)/N for N = A019276(n) (megaperfect numbers), where m(N) = min {m: N | sigma^m(N)} reaches record values; sigma^m is m-fold iteration of A000203.

The programs for A331035, there is no canonical definition to state claims against.
-/

/-! ## A331035.P17722231163976462333

`A019295(A019276(n+1))`
-/

namespace A331035.P17722231163976462333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019295 (A019276 (n + 1)).toNat

end

end A331035.P17722231163976462333

/-! ## A331035.P13591401537354870214

`record[A019295(A059126(n))]`
-/

namespace A331035.P13591401537354870214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019295 (A059126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331035.P13591401537354870214

/-!
# A331036: Odd values of the sum-of-divisors function sigma (A000203), listed by increasing size and with multiplicity.

The programs for A331036, there is no canonical definition to state claims against.
-/

/-! ## A331036.P7912799055649316003

`filter[A007609(n+1), A000035(#)]`
-/

namespace A331036.P7912799055649316003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A331036.P7912799055649316003

/-! ## A331036.P2764506576809138640

`or(A101435(A182185(n)), A182185(n))`
-/

namespace A331036.P2764506576809138640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101435 (A182185 n).toNat) (A182185 n)

end

end A331036.P2764506576809138640

/-! ## A331036.P15520557302324268613

`or(A099551(A081881(n+1)), A103139(n+1))`
-/

namespace A331036.P15520557302324268613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099551 (A081881 (n + 1)).toNat) (A103139 (n + 1))

end

end A331036.P15520557302324268613

/-! ## A331036.P14702736989713113334

`or(A007187(n+2), A135278(A048247(n)))`
-/

namespace A331036.P14702736989713113334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007187 (n + 2)) (A135278 (A048247 n).toNat)

end

end A331036.P14702736989713113334

/-!
# A331039: Array read by antidiagonals: A(n,k) is the number of T_0 n-regular set-systems on a k-set.

The programs for A331039, there is no canonical definition to state claims against.
-/

/-! ## A331039.P8625419835124022411

`A012265(A331569(n))`
-/

namespace A331039.P8625419835124022411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A331569 n).toNat

end

end A331039.P8625419835124022411

/-! ## A331039.P18138434190673685656

`A053735(A331569(n)²)`
-/

namespace A331039.P18138434190673685656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A331569 n ^ 2).toNat

end

end A331039.P18138434190673685656

/-! ## A331039.P10561465682142098660

`A174807(A331569(n)+1)`
-/

namespace A331039.P10561465682142098660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174807 (A331569 n + 1).toNat

end

end A331039.P10561465682142098660

/-! ## A331039.P11905398657389662196

`A156080(A331569(n)+2)`
-/

namespace A331039.P11905398657389662196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156080 (A331569 n + 2).toNat

end

end A331039.P11905398657389662196

/-! ## A331039.P8724287297987268888

`A297791(A331569(n)+2)`
-/

namespace A331039.P8724287297987268888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297791 (A331569 n + 2).toNat

end

end A331039.P8724287297987268888

/-!
# A331042: a(n) = 4 * squared radius of inscribed circles of triangles with integer sides i <= j <= k, such that the number of triangles with this radius sets a new record. If this radius is not a multiple of (1/4), a(n) = 0.

The programs for A331042, there is no canonical definition to state claims against.
-/

/-! ## A331042.P1766073766571310995

`A016754(A331041(n+1))%5*A331040(n+1)`
-/

namespace A331042.P1766073766571310995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 (A331041 (n + 1)).toNat) 5 * A331040 (n + 1)

end

end A331042.P1766073766571310995

/-!
# A331044: a(n) is the greatest prime number of the form floor(n/10^k) for some k >= 0, or 0 if no such prime number exists.

The programs for A331044, there is no canonical definition to state claims against.
-/

/-! ## A331044.P16766715431557181675

`A047814(n)%A167289(A051362(n+1))`
-/

namespace A331044.P16766715431557181675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 n) (A167289 (A051362 (n + 1)).toNat)

end

end A331044.P16766715431557181675

/-! ## A331044.P15287065051652747781

`A331045(and(n, A346161(n+1)))`
-/

namespace A331044.P15287065051652747781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (Int.land (n : ℤ) (A346161 (n + 1))).toNat

end

end A331044.P15287065051652747781

/-! ## A331044.P2714781790967396366

`A331045(lt[A000203(2*n+3), 57])`
-/

namespace A331044.P2714781790967396366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A331044.P2714781790967396366

/-! ## A331044.P11101628951010002591

`A331045(n)+A165878(A331039(n))`
-/

namespace A331044.P11101628951010002591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n + A165878 (A331039 n).toNat

end

end A331044.P11101628951010002591

/-! ## A331044.P15507553176149000780

`A331045(n)+A008683(A192135(n+1))`
-/

namespace A331044.P15507553176149000780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n + A008683 (A192135 (n + 1)).toNat

end

end A331044.P15507553176149000780

/-!
# A331045: a(n) is the least prime number of the form floor(n/10^k) for some k >= 0, or 0 if no such prime number exists.

The programs for A331045, there is no canonical definition to state claims against.
-/

/-! ## A331045.P1277882254452509241

`A331044(A326291(3*n+1)+n)`
-/

namespace A331045.P1277882254452509241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 (A326291 (3 * n + 1) + (n : ℤ)).toNat

end

end A331045.P1277882254452509241

/-! ## A331045.P4656313008945961338

`A331044(n%A304078(A229186(n)))`
-/

namespace A331045.P4656313008945961338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 (Int.tmod (n : ℤ) (A304078 (A229186 n).toNat)).toNat

end

end A331045.P4656313008945961338

/-! ## A331045.P356122845722324233

`A331044(n)%A101406(A101408(n+1))`
-/

namespace A331045.P356122845722324233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331044 n) (A101406 (A101408 (n + 1)).toNat)

end

end A331045.P356122845722324233

/-! ## A331045.P15892127422927237531

`A331044(n)%p?[A008796(A324000(n))]`
-/

namespace A331045.P15892127422927237531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (A324000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331044 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A331045.P15892127422927237531

/-! ## A331045.P6053261251836760055

`A331044(lt[A331026(n+1), 27])`
-/

namespace A331045.P6053261251836760055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331026 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A331045.P6053261251836760055

/-!
# A331046: Numbers k such that floor(k/10^m) is a prime number for some m >= 0.

The programs for A331046, there is no canonical definition to state claims against.
-/

/-! ## A331046.P8146620665578309762

`comp[A202259(n+1)]`
-/

namespace A331046.P8146620665578309762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A331046.P8146620665578309762

/-! ## A331046.P8997875137444187999

`lt[0, A331044(n)]`
-/

namespace A331046.P8997875137444187999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A331046.P8997875137444187999

/-! ## A331046.P1142569939318596670

`lt[0, A331045(n)]`
-/

namespace A331046.P1142569939318596670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A331046.P1142569939318596670

/-! ## A331046.P15679440147235070775

`comp[A329428(n)]`
-/

namespace A331046.P15679440147235070775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A331046.P15679440147235070775

/-! ## A331046.P18301576720966170290

`eq[char[A202259(n+1)], A035457(2*n+1)]`
-/

namespace A331046.P18301576720966170290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202259 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A331046.P18301576720966170290

/-! ## A331046.P2270414742649972217

`eq[char[A202259(n+1)], A154272(2*(n+2))]`
-/

namespace A331046.P2270414742649972217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202259 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A331046.P2270414742649972217

/-!
# A331048: Nearest integer to A001055(n)/A045778(n), where A001055 is factorizations and A045778 is strict factorizations.

The programs for A331048, there is no canonical definition to state claims against.
-/

/-! ## A331048.P317330237587977330

`ceil(∏{e}[n+1, sqrt(#)-1/3])`
-/

namespace A331048.P317330237587977330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (Real.sqrt (Nat.factorization (f1 n) p : ℝ) - ((1 : ℚ) / 3 : ℝ))⌉

end

end A331048.P317330237587977330

/-! ## A331048.P10340545040531819883

`ceil(sqrt(∏{e}[n+1, A000203(#)/2]))`
-/

namespace A331048.P10340545040531819883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), (A000203 (Nat.factorization (f1 n) p) : ℚ) / 2 : ℚ) : ℝ)⌉

end

end A331048.P10340545040531819883

/-! ## A331048.P13319580933580665466

`round(sqrt(∏{e}[n+1, A001615(#)/2]+1))`
-/

namespace A331048.P13319580933580665466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), (A001615 (Nat.factorization (f1 n) p) : ℚ) / 2 + 1 : ℚ) : ℝ))

end

end A331048.P13319580933580665466

/-! ## A331048.P6478336749678752955

`round(root(∑{e}[n+1, #]+1, A182860(n+1)))`
-/

namespace A331048.P6478336749678752955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℝ) ^ (1 / (A182860 (n + 1) : ℝ)))

end

end A331048.P6478336749678752955

/-! ## A331048.P6571779716496168134

`A204164(∏{e}[n+1, #]+round(n*∏{e}[n+1, #/n]))`
-/

namespace A331048.P6571779716496168134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p : ℚ) / (n : ℚ)))).toNat

end

end A331048.P6571779716496168134

/-! ## A331048.P10449954653104215954

`A325622(∏{e}[n+1, #]+round(n*∏{e}[n+1, #/n]))`
-/

namespace A331048.P10449954653104215954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325622 (((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p : ℚ) / (n : ℚ)))).toNat

end

end A331048.P10449954653104215954

/-! ## A331048.P6172859932146824577

`A007302(A265392(n+1))`
-/

namespace A331048.P6172859932146824577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A265392 (n + 1)).toNat

end

end A331048.P6172859932146824577

/-! ## A331048.P5286770198679479337

`A043559(4*A181819(n+1))`
-/

namespace A331048.P5286770198679479337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (4 * A181819 (n + 1)).toNat

end

end A331048.P5286770198679479337

/-! ## A331048.P5599467387840559613

`A001221(A316782(n+1)+2^∑{e}[n+1, #])`
-/

namespace A331048.P5599467387840559613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A316782 (n + 1) + (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)).toNat

end

end A331048.P5599467387840559613

/-! ## A331048.P5993279013756274302

`round(A106491(n+1)/2^A001222(∏{p}[n+1, #]))`
-/

namespace A331048.P5993279013756274302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A106491 (n + 1) : ℚ) / (2 : ℚ) ^ (A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ))

end

end A331048.P5993279013756274302

/-!
# A331049: Number of factorizations of A055932(n), the least representative of the n'th distinct unsorted prime signature, into factors > 1.

The programs for A331049, there is no canonical definition to state claims against.
-/

/-! ## A331049.P16116761249384540387

`A001055(A055932(n+1))`
-/

namespace A331049.P16116761249384540387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A055932 (n + 1)).toNat

end

end A331049.P16116761249384540387

/-! ## A331049.P11644146307123803949

`A001055(sqrt(A373559(n+1)))`
-/

namespace A331049.P11644146307123803949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway (Real.sqrt (A373559 (n + 1) : ℝ))).toNat

end

end A331049.P11644146307123803949

/-! ## A331049.P14978164029663235020

`A001055(record[A071364(n+1)])`
-/

namespace A331049.P14978164029663235020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331049.P14978164029663235020

/-! ## A331049.P6622744187394982355

`A001055(record[A083259(n+1)])`
-/

namespace A331049.P6622744187394982355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331049.P6622744187394982355

/-! ## A331049.P5056100615871640930

`∑{d}[A055932(n+1), A050370(#)]`
-/

namespace A331049.P5056100615871640930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A331049.P5056100615871640930

/-! ## A331049.P6774825976034332807

`A343785(3*n+4)+A028422(A055932(n+1))`
-/

namespace A331049.P6774825976034332807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (3 * n + 4) + A028422 (A055932 (n + 1)).toNat

end

end A331049.P6774825976034332807

/-! ## A331049.P7048678017713342467

`A028422(A055932(n+1))-A008683(A190911(n+1))`
-/

namespace A331049.P7048678017713342467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A055932 (n + 1)).toNat - A008683 (A190911 (n + 1)).toNat

end

end A331049.P7048678017713342467

/-! ## A331049.P11200681020075162908

`A028422(record[A340346(n+1)])+1`
-/

namespace A331049.P11200681020075162908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A331049.P11200681020075162908

/-!
# A331051: Numbers whose number of factorizations into factors > 1 (A001055) is even.

The programs for A331051, there is no canonical definition to state claims against.
-/

/-! ## A331051.P5026143779449773151

`A319240(n+1)%128`
-/

namespace A331051.P5026143779449773151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319240 (n + 1)) 128

end

end A331051.P5026143779449773151

/-! ## A331051.P2385898651833704795

`eq[0, A190938(n+1)]+1`
-/

namespace A331051.P2385898651833704795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331051.P2385898651833704795

/-! ## A331051.P11117408691847242264

`lt[A190938(n+2), 1]+2`
-/

namespace A331051.P11117408691847242264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190938 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A331051.P11117408691847242264

/-! ## A331051.P15224051546636593734

`comp[lcm(n, A316441(n+1))]+1`
-/

namespace A331051.P15224051546636593734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A316441 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A331051.P15224051546636593734

/-! ## A331051.P2143609779980572004

`eq[0, A001055(n+1)%2]+1`
-/

namespace A331051.P2143609779980572004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331051.P2143609779980572004

/-! ## A331051.P9855488523423095534

`eq[2, A020639(A001055(n+1))]+1`
-/

namespace A331051.P9855488523423095534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331051.P9855488523423095534

/-! ## A331051.P18217906917977454316

`∪[A001358(n+1), A360554(n+1)]`
-/

namespace A331051.P18217906917977454316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331051.P18217906917977454316

/-! ## A331051.P15766678836096018940

`∪[A001358(n+1), A388983(n+1)]`
-/

namespace A331051.P15766678836096018940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331051.P15766678836096018940

/-! ## A331051.P12745347142184376058

`∪[A349931(n+1), A397800(n+1)]`
-/

namespace A331051.P12745347142184376058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A331051.P12745347142184376058

/-!
# A331071: a(n) = Sum_{k <= n} r_2(k)^2*d(k+1), where r_2 = A004018, d = A000005.

The programs for A331071, there is no canonical definition to state claims against.
-/

/-! ## A331071.P4759996760015649496

`∑[A330574(n)]`
-/

namespace A331071.P4759996760015649496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331071.P4759996760015649496

/-! ## A331071.P3047816717053625334

`∑[A004018(n)²*A000005(n+1)]`
-/

namespace A331071.P3047816717053625334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n ^ 2 * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331071.P3047816717053625334

/-! ## A331071.P590498505677854552

`∑[A004018(n)²*A069733(n+1)]`
-/

namespace A331071.P590498505677854552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n ^ 2 * A069733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331071.P590498505677854552

/-! ## A331071.P12653140737370203348

`∑[A104794(n)²*A000005(n+1)]`
-/

namespace A331071.P12653140737370203348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n ^ 2 * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331071.P12653140737370203348

/-! ## A331071.P10056731585116100303

`∑[∑{d}[n+1, (A004018(n)%A118886(#))²]]`
-/

namespace A331071.P10056731585116100303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A004018 n) (A118886 d) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331071.P10056731585116100303

/-! ## A331071.P16328108173657388142

`∑[A004018(n)²*∏{e}[A338506(n+1), #]]`
-/

namespace A331071.P16328108173657388142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n ^ 2 * ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331071.P16328108173657388142

/-!
# A331072: a(n) = Sum_{k = 1..n} u_3(k), where u_3 = A034836.

The programs for A331072, the canonical program `A331072.P15370853631456897053` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331072 has offset 1).

The definition of A331072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331072.P15377910220434251429

`∑[A034836(1+n)]`
-/

namespace A331072.P15377910220434251429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331072.P15377910220434251429

namespace A331072

/-- `∑[A034836(1+n)]` -/
def P15377910220434251429.Spec : Prop :=
  ∀ n, P15377910220434251429.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P3741761702631304048

`A034836(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A331072.P3741761702631304048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034836 (n + 1) + a (n - 1)

end

end A331072.P3741761702631304048

namespace A331072

/-- `A034836(n+1)+a(n-1)` -/
def P3741761702631304048.Spec : Prop :=
  ∀ n, P3741761702631304048.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P15370853631456897053

`∑[A122179(n+1)+ceil(∏{e}[n+1, #+1]/2)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A331072

/-- `∑[A122179(n+1)+ceil(∏{e}[n+1, #+1]/2)]` -/
def P15370853631456897053.Spec : Prop :=
  ∀ n, P15370853631456897053.a n = A331072 (n + 1)

theorem P15370853631456897053.correct : P15370853631456897053.Spec := by
  intro n
  simp only [A331072, Nat.add_sub_cancel]

end A331072

/-! ## A331072.P8812391612679021659

`A000027(∑[A034836(Δ[n²]-n)])`
-/

namespace A331072.P8812391612679021659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331072.P8812391612679021659

namespace A331072

/-- `A000027(∑[A034836(Δ[n²]-n)])` -/
def P8812391612679021659.Spec : Prop :=
  ∀ n, P8812391612679021659.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P12761416021409660257

`∑[A088434(n+1)+A046951(n+1)]`
-/

namespace A331072.P12761416021409660257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) + A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331072.P12761416021409660257

namespace A331072

/-- `∑[A088434(n+1)+A046951(n+1)]` -/
def P12761416021409660257.Spec : Prop :=
  ∀ n, P12761416021409660257.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P3002023635601056824

`∑[A122179(n+1)+A038548(n+1)]`
-/

namespace A331072.P3002023635601056824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1) + A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331072.P3002023635601056824

namespace A331072

/-- `∑[A122179(n+1)+A038548(n+1)]` -/
def P3002023635601056824.Spec : Prop :=
  ∀ n, P3002023635601056824.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P14790306509379958695

`∑[A218320(n+1)-A321379(n+1)]`
-/

namespace A331072.P14790306509379958695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1) - A321379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331072.P14790306509379958695

namespace A331072

/-- `∑[A218320(n+1)-A321379(n+1)]` -/
def P14790306509379958695.Spec : Prop :=
  ∀ n, P14790306509379958695.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P3041485538868682973

`∑[A034836(Δ[n²]-n)]^A000038(n)!`
-/

namespace A331072.P3041485538868682973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.factorial (A000038 n).toNat

end

end A331072.P3041485538868682973

namespace A331072

/-- `∑[A034836(Δ[n²]-n)]^A000038(n)!` -/
def P3041485538868682973.Spec : Prop :=
  ∀ n, P3041485538868682973.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P8113333273088749327

`∑[A034836(Δ[n²]-n)]-A001222(((-1)^n)²)`
-/

namespace A331072.P8113333273088749327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (((-1) ^ n) ^ 2).toNat

end

end A331072.P8113333273088749327

namespace A331072

/-- `∑[A034836(Δ[n²]-n)]-A001222(((-1)^n)²)` -/
def P8113333273088749327.Spec : Prop :=
  ∀ n, P8113333273088749327.a n = A331072 (n + 1)

end A331072

/-! ## A331072.P11579142819224697529

`∑[A034836(Δ[n²]-n)]^A000203(((-1)^n)²)`
-/

namespace A331072.P11579142819224697529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A000203 (((-1) ^ n) ^ 2).toNat : ℤ)

end

end A331072.P11579142819224697529

namespace A331072

/-- `∑[A034836(Δ[n²]-n)]^A000203(((-1)^n)²)` -/
def P11579142819224697529.Spec : Prop :=
  ∀ n, P11579142819224697529.a n = (A331072 (n + 1) : ℚ)

end A331072

/-! ## A331072.P15531916169198352490

`A008486(∑[A034836(Δ[n²]-n)])/3`
-/

namespace A331072.P15531916169198352490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3

end

end A331072.P15531916169198352490

namespace A331072

/-- `A008486(∑[A034836(Δ[n²]-n)])/3` -/
def P15531916169198352490.Spec : Prop :=
  ∀ n, P15531916169198352490.a n = (A331072 (n + 1) : ℚ)

end A331072

/-!
# A331077: a(n) = Sum_{k = 1..n} [d(k)*d_3(k)], where d = A000005, d_3 = A007425.

The programs for A331077, the canonical program `A331077.P12939117020521321842` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331077 has offset 1).

The definition of A331077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331077.P12939117020521321842

`∑[∏{e}[n+1, #+1]*∏{e}[n+1, C(#+2, 2)]]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A331077

/-- `∑[∏{e}[n+1, #+1]*∏{e}[n+1, C(#+2, 2)]]` -/
def P12939117020521321842.Spec : Prop :=
  ∀ n, (P12939117020521321842.a n : ℤ) = A331077 (n + 1)

theorem P12939117020521321842.correct : P12939117020521321842.Spec := by
  intro n
  simp only [A331077, Nat.add_sub_cancel]

end A331077

/-! ## A331077.P13502028714335405377

`∑[A397549(n+1)]`
-/

namespace A331077.P13502028714335405377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P13502028714335405377

namespace A331077

/-- `∑[A397549(n+1)]` -/
def P13502028714335405377.Spec : Prop :=
  ∀ n, P13502028714335405377.a n = A331077 (n + 1)

end A331077

/-! ## A331077.P7488454815418687556

`∑[∑{d}[n+1, A061391(#)]]`
-/

namespace A331077.P7488454815418687556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A061391 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P7488454815418687556

namespace A331077

/-- `∑[∑{d}[n+1, A061391(#)]]` -/
def P7488454815418687556.Spec : Prop :=
  ∀ n, P7488454815418687556.a n = A331077 (n + 1)

end A331077

/-! ## A331077.P1791056796823698170

`∑[∏{e}[n+1, A002411(#+1)]]`
-/

namespace A331077.P1791056796823698170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A002411 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P1791056796823698170

namespace A331077

/-- `∑[∏{e}[n+1, A002411(#+1)]]` -/
def P1791056796823698170.Spec : Prop :=
  ∀ n, P1791056796823698170.a n = A331077 (n + 1)

end A331077

/-! ## A331077.P16996115438183615792

`∑[∏{e}[n+1, A144677(3*#)]]`
-/

namespace A331077.P16996115438183615792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A144677 (3 * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P16996115438183615792

namespace A331077

/-- `∑[∏{e}[n+1, A144677(3*#)]]` -/
def P16996115438183615792.Spec : Prop :=
  ∀ n, P16996115438183615792.a n = A331077 (n + 1)

end A331077

/-! ## A331077.P3319922925181905044

`∑[∑{d}[n+1, A007425(lcm(#, n+1))]]`
-/

namespace A331077.P3319922925181905044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007425 (Nat.lcm d (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P3319922925181905044

namespace A331077

/-- `∑[∑{d}[n+1, A007425(lcm(#, n+1))]]` -/
def P3319922925181905044.Spec : Prop :=
  ∀ n, P3319922925181905044.a n = A331077 (n + 1)

end A331077

/-! ## A331077.P12589945458258346598

`∑[∏{e}[n+1, A213771(A000124(#))]]`
-/

namespace A331077.P12589945458258346598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A213771 (A000124 (Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P12589945458258346598

namespace A331077

/-- `∑[∏{e}[n+1, A213771(A000124(#))]]` -/
def P12589945458258346598.Spec : Prop :=
  ∀ n, P12589945458258346598.a n = A331077 (n + 1)

end A331077

/-! ## A331077.P10618960943762504103

`∑[A000005(n+1)*A007425(n+1)]`
-/

namespace A331077.P10618960943762504103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P10618960943762504103

namespace A331077

/-- `∑[A000005(n+1)*A007425(n+1)]` -/
def P10618960943762504103.Spec : Prop :=
  ∀ n, P10618960943762504103.a n = A331077 (n + 1)

end A331077

/-! ## A331077.P1498073826621668348

`∑[sqrt(A097988(n+1))*A000005(n+1)]`
-/

namespace A331077.P1498073826621668348
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (n + 1) : ℝ) * (A000005 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P1498073826621668348

namespace A331077

/-- `∑[sqrt(A097988(n+1))*A000005(n+1)]` -/
def P1498073826621668348.Spec : Prop :=
  ∀ n, P1498073826621668348.a n = (A331077 (n + 1) : ℝ)

end A331077

/-! ## A331077.P4262256071038606005

`∑[∑{d}[n+1, A000005(n+1)*A000005(#)]]`
-/

namespace A331077.P4262256071038606005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 (n + 1) * A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331077.P4262256071038606005

namespace A331077

/-- `∑[∑{d}[n+1, A000005(n+1)*A000005(#)]]` -/
def P4262256071038606005.Spec : Prop :=
  ∀ n, P4262256071038606005.a n = A331077 (n + 1)

end A331077

/-!
# A331078: a(n) = Sum_{k = 1..n} [u_2(k)*u_3(k)], where u_2 = A038548, u_3 = A034836.

The programs for A331078, the canonical program `A331078.P2556841124686977371` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331078 has offset 1).

The definition of A331078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331078.P2556841124686977371

`∑[ceil(∏{e}[n+1, #+1]/2)*A034836(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331078

/-- `∑[ceil(∏{e}[n+1, #+1]/2)*A034836(n+1)]` -/
def P2556841124686977371.Spec : Prop :=
  ∀ n, P2556841124686977371.a n = A331078 (n + 1)

theorem P2556841124686977371.correct : P2556841124686977371.Spec := by
  intro n
  simp only [A331078, Nat.add_sub_cancel]

end A331078

/-! ## A331078.P9237202938260738855

`∑[A034836(n+1)*A038548(n+1)]`
-/

namespace A331078.P9237202938260738855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) * A038548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P9237202938260738855

namespace A331078

/-- `∑[A034836(n+1)*A038548(n+1)]` -/
def P9237202938260738855.Spec : Prop :=
  ∀ n, P9237202938260738855.a n = A331078 (n + 1)

end A331078

/-! ## A331078.P17131640570935045961

`∑[(A072670(n)+1)*A034836(n+1)]`
-/

namespace A331078.P17131640570935045961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072670 n + 1) * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P17131640570935045961

namespace A331078

/-- `∑[(A072670(n)+1)*A034836(n+1)]` -/
def P17131640570935045961.Spec : Prop :=
  ∀ n, P17131640570935045961.a n = A331078 (n + 1)

end A331078

/-! ## A331078.P18035656381141111166

`∑[Δ[A132106(n)/2]*A034836(n+1)]`
-/

namespace A331078.P18035656381141111166
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * (A034836 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P18035656381141111166

namespace A331078

/-- `∑[Δ[A132106(n)/2]*A034836(n+1)]` -/
def P18035656381141111166.Spec : Prop :=
  ∀ n, P18035656381141111166.a n = (A331078 (n + 1) : ℚ)

end A331078

/-! ## A331078.P2428415012358275353

`∑[A034836(n+1)/2*A161841(n+1)]`
-/

namespace A331078.P2428415012358275353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034836 (n + 1) : ℚ) / 2 * (A161841 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P2428415012358275353

namespace A331078

/-- `∑[A034836(n+1)/2*A161841(n+1)]` -/
def P2428415012358275353.Spec : Prop :=
  ∀ n, P2428415012358275353.a n = (A331078 (n + 1) : ℚ)

end A331078

/-! ## A331078.P10378491368987938453

`∑[∑{d}[n+1, A065043(#)]*A034836(n+1)]`
-/

namespace A331078.P10378491368987938453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A065043 d) * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P10378491368987938453

namespace A331078

/-- `∑[∑{d}[n+1, A065043(#)]*A034836(n+1)]` -/
def P10378491368987938453.Spec : Prop :=
  ∀ n, P10378491368987938453.a n = A331078 (n + 1)

end A331078

/-! ## A331078.P2485524350220707207

`∑[ceil(A000005(n+1)/2)*A034836(n+1)]`
-/

namespace A331078.P2485524350220707207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) : ℚ) / 2⌉ * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P2485524350220707207

namespace A331078

/-- `∑[ceil(A000005(n+1)/2)*A034836(n+1)]` -/
def P2485524350220707207.Spec : Prop :=
  ∀ n, P2485524350220707207.a n = A331078 (n + 1)

end A331078

/-! ## A331078.P4090746139404386913

`∑[round(A000005(2*n+1-n)/2)*A034836(n+1)]`
-/

namespace A331078.P4090746139404386913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (2 * n + 1 - n) : ℚ) / 2) * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P4090746139404386913

namespace A331078

/-- `∑[round(A000005(2*n+1-n)/2)*A034836(n+1)]` -/
def P4090746139404386913.Spec : Prop :=
  ∀ n, P4090746139404386913.a n = A331078 (n + 1)

end A331078

/-! ## A331078.P16426367708599552943

`∑[A034836(n+1)*A065033(A000005(n+1))]`
-/

namespace A331078.P16426367708599552943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) * A065033 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P16426367708599552943

namespace A331078

/-- `∑[A034836(n+1)*A065033(A000005(n+1))]` -/
def P16426367708599552943.Spec : Prop :=
  ∀ n, P16426367708599552943.a n = A331078 (n + 1)

end A331078

/-! ## A331078.P4548088406393168358

`∑[A008621(A086369(n+1))*A034836(n+1)]`
-/

namespace A331078.P4548088406393168358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A086369 (n + 1)).toNat * A034836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331078.P4548088406393168358

namespace A331078

/-- `∑[A008621(A086369(n+1))*A034836(n+1)]` -/
def P4548088406393168358.Spec : Prop :=
  ∀ n, P4548088406393168358.a n = A331078 (n + 1)

end A331078

/-!
# A331079: a(n) = Sum_{i=1..n} u_2(i)*u_2(i+1), where u_2(n) = A038548(n).

The programs for A331079, the canonical program `A331079.P2155090531484907639` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331079 has offset 1).

The definition of A331079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331079.P2155090531484907639

`∑[A038548(n+1)*A038548(n+2)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331079

/-- `∑[A038548(n+1)*A038548(n+2)]` -/
def P2155090531484907639.Spec : Prop :=
  ∀ n, P2155090531484907639.a n = A331079 (n + 1)

theorem P2155090531484907639.correct : P2155090531484907639.Spec := by
  intro n
  simp only [A331079, Nat.add_sub_cancel]

end A331079

/-!
# A331080: a(n) = Sum_{i=1..n} d_3(i)*d_3(i+1), where d_3(n) = A007425(n).

The programs for A331080, the canonical program `A331080.P324264719985017404` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331080 has offset 1).

The definition of A331080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331080.P6489344603353642869

`3*A331081(n+1)`
-/

namespace A331080.P6489344603353642869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A331081 (n + 1)

end

end A331080.P6489344603353642869

namespace A331080

/-- `3*A331081(n+1)` -/
def P6489344603353642869.Spec : Prop :=
  ∀ n, P6489344603353642869.a n = A331080 (n + 1)

end A331080

/-! ## A331080.P324264719985017404

`∑[A007425(n+1)*A007425(n+2)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A331080

/-- `∑[A007425(n+1)*A007425(n+2)]` -/
def P324264719985017404.Spec : Prop :=
  ∀ n, P324264719985017404.a n = A331080 (n + 1)

theorem P324264719985017404.correct : P324264719985017404.Spec := by
  intro n
  simp only [A331080, Nat.add_sub_cancel]

end A331080

/-! ## A331080.P3232514114428456712

`∑[sqrt(A097988(n+2)*A097988(n+1))]`
-/

namespace A331080.P3232514114428456712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (n + 2) * A097988 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P3232514114428456712

namespace A331080

/-- `∑[sqrt(A097988(n+2)*A097988(n+1))]` -/
def P3232514114428456712.Spec : Prop :=
  ∀ n, P3232514114428456712.a n = (A331080 (n + 1) : ℝ)

end A331080

/-! ## A331080.P12069841365103423767

`∑[∏{e}[A002378(n+1), C(#+2, 2)]]`
-/

namespace A331080.P12069841365103423767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.choose (Nat.factorization (f2 n).natAbs p + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P12069841365103423767

namespace A331080

/-- `∑[∏{e}[A002378(n+1), C(#+2, 2)]]` -/
def P12069841365103423767.Spec : Prop :=
  ∀ n, (P12069841365103423767.a n : ℤ) = A331080 (n + 1)

end A331080

/-! ## A331080.P18141653781371079941

`∑[sqrt(∏{e}[(n+1)*(n+2), A025747(#)²])]`
-/

namespace A331080.P18141653781371079941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f2 n), A025747 (Nat.factorization (f2 n) p) ^ 2 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P18141653781371079941

namespace A331080

/-- `∑[sqrt(∏{e}[(n+1)*(n+2), A025747(#)²])]` -/
def P18141653781371079941.Spec : Prop :=
  ∀ n, P18141653781371079941.a n = (A331080 (n + 1) : ℝ)

end A331080

/-! ## A331080.P9668267706729804654

`∑[∑{d}[∑[2*(n+1)], A000005(#)]]`
-/

namespace A331080.P9668267706729804654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P9668267706729804654

namespace A331080

/-- `∑[∑{d}[∑[2*(n+1)], A000005(#)]]` -/
def P9668267706729804654.Spec : Prop :=
  ∀ n, P9668267706729804654.a n = A331080 (n + 1)

end A331080

/-! ## A331080.P6163761140685064789

`∑[A007425(A278256(n+1))]`
-/

namespace A331080.P6163761140685064789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A278256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P6163761140685064789

namespace A331080

/-- `∑[A007425(A278256(n+1))]` -/
def P6163761140685064789.Spec : Prop :=
  ∀ n, P6163761140685064789.a n = A331080 (n + 1)

end A331080

/-! ## A331080.P16534993771799393368

`A008486(A331081(n+1))`
-/

namespace A331080.P16534993771799393368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A331081 (n + 1)).toNat

end

end A331080.P16534993771799393368

namespace A331080

/-- `A008486(A331081(n+1))` -/
def P16534993771799393368.Spec : Prop :=
  ∀ n, P16534993771799393368.a n = A331080 (n + 1)

end A331080

/-! ## A331080.P16624663530746295082

`lcm(A174971(n²), A331081(n+1))`
-/

namespace A331080.P16624663530746295082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174971 (n ^ 2)) (A331081 (n + 1))

end

end A331080.P16624663530746295082

namespace A331080

/-- `lcm(A174971(n²), A331081(n+1))` -/
def P16624663530746295082.Spec : Prop :=
  ∀ n, (P16624663530746295082.a n : ℤ) = A331080 (n + 1)

end A331080

/-! ## A331080.P2380583280827483888

`∑[A007425((n+1)*(n+2))]`
-/

namespace A331080.P2380583280827483888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 ((n + 1) * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331080.P2380583280827483888

namespace A331080

/-- `∑[A007425((n+1)*(n+2))]` -/
def P2380583280827483888.Spec : Prop :=
  ∀ n, P2380583280827483888.a n = A331080 (n + 1)

end A331080

/-!
# A331081: a(n) = Sum_{i=1..n} d_3(i)*d_3(i+1)/3, where d_3(n) = A007425(n).

The programs for A331081, the canonical program `A331081.P3947151091375407262` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331081 has offset 1).

The definition of A331081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331080, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331081.P3947151091375407262

`A331080(n+1)/3`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A331081

/-- `A331080(n+1)/3` -/
def P3947151091375407262.Spec : Prop :=
  ∀ n, P3947151091375407262.a n = (A331081 (n + 1) : ℚ)

end A331081

/-! ## A331081.P15602205449100245033

`∑[A007425(n+2)/3*A007425(n+1)]`
-/

namespace A331081.P15602205449100245033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 2) : ℚ) / 3 * (A007425 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331081.P15602205449100245033

namespace A331081

/-- `∑[A007425(n+2)/3*A007425(n+1)]` -/
def P15602205449100245033.Spec : Prop :=
  ∀ n, P15602205449100245033.a n = (A331081 (n + 1) : ℚ)

end A331081

/-! ## A331081.P15481284080788465006

`∑[sqrt(A097988(n+2)*A097988(n+1))]/3`
-/

namespace A331081.P15481284080788465006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A097988 (n + 2) * A097988 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 3

end

end A331081.P15481284080788465006

namespace A331081

/-- `∑[sqrt(A097988(n+2)*A097988(n+1))]/3` -/
def P15481284080788465006.Spec : Prop :=
  ∀ n, P15481284080788465006.a n = (A331081 (n + 1) : ℝ)

end A331081

/-! ## A331081.P15157523080350189790

`∑[sqrt(∏{e}[(n+1)*(n+2), A025747(#)²])]/3`
-/

namespace A331081.P15157523080350189790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f2 n), A025747 (Nat.factorization (f2 n) p) ^ 2 : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 3

end

end A331081.P15157523080350189790

namespace A331081

/-- `∑[sqrt(∏{e}[(n+1)*(n+2), A025747(#)²])]/3` -/
def P15157523080350189790.Spec : Prop :=
  ∀ n, P15157523080350189790.a n = (A331081 (n + 1) : ℝ)

end A331081

/-! ## A331081.P7281643269808240526

`∑[∑{d}[∑[2*(n+1)], A000005(#)]]/3`
-/

namespace A331081.P7281643269808240526
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A331081.P7281643269808240526

namespace A331081

/-- `∑[∑{d}[∑[2*(n+1)], A000005(#)]]/3` -/
def P7281643269808240526.Spec : Prop :=
  ∀ n, P7281643269808240526.a n = (A331081 (n + 1) : ℚ)

end A331081

/-! ## A331081.P9963462065176360642

`∑[A007425(A278256(n+1))/3]`
-/

namespace A331081.P9963462065176360642
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (A278256 (n + 1)).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331081.P9963462065176360642

namespace A331081

/-- `∑[A007425(A278256(n+1))/3]` -/
def P9963462065176360642.Spec : Prop :=
  ∀ n, P9963462065176360642.a n = (A331081 (n + 1) : ℚ)

end A331081

/-! ## A331081.P4739827547544198801

`A106610(A331080(n+1))`
-/

namespace A331081.P4739827547544198801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A331080 (n + 1)).toNat

end

end A331081.P4739827547544198801

namespace A331081

/-- `A106610(A331080(n+1))` -/
def P4739827547544198801.Spec : Prop :=
  ∀ n, P4739827547544198801.a n = A331081 (n + 1)

end A331081

/-! ## A331081.P12619588412675488557

`A090701(A331080(n+1)-2)`
-/

namespace A331081.P12619588412675488557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A331080 (n + 1) - 2).toNat

end

end A331081.P12619588412675488557

namespace A331081

/-- `A090701(A331080(n+1)-2)` -/
def P12619588412675488557.Spec : Prop :=
  ∀ n, P12619588412675488557.a n = A331081 (n + 1)

end A331081

/-! ## A331081.P18214601435564107537

`∑[A007425(∑[2*(n+1)])/3]`
-/

namespace A331081.P18214601435564107537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331081.P18214601435564107537

namespace A331081

/-- `∑[A007425(∑[2*(n+1)])/3]` -/
def P18214601435564107537.Spec : Prop :=
  ∀ n, P18214601435564107537.a n = (A331081 (n + 1) : ℚ)

end A331081

/-! ## A331081.P11977473743007931172

`A255588(∑[A007425((n+1)²+n+1)])`
-/

namespace A331081.P11977473743007931172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 ((n + 1) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331081.P11977473743007931172

namespace A331081

/-- `A255588(∑[A007425((n+1)²+n+1)])` -/
def P11977473743007931172.Spec : Prop :=
  ∀ n, P11977473743007931172.a n = A331081 (n + 1)

end A331081

/-!
# A331082: Smallest number having exactly n divisors ending with 3 or 7.

The programs for A331082, there is no canonical definition to state claims against.
-/

/-! ## A331082.P18058771095541712805

`filter[A326313(n+1), A323096(#)]`
-/

namespace A331082.P18058771095541712805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323096 (f1 j).toNat = 1) n)

end

end A331082.P18058771095541712805

/-! ## A331082.P9993877424355748983

`A326313(A086486(n+1))%A058465(n+1)`
-/

namespace A331082.P9993877424355748983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326313 (A086486 (n + 1)).toNat) (A058465 (n + 1))

end

end A331082.P9993877424355748983

/-!
# A331083: The number of terms in the negaFibonacci representation of n (A215022).

The programs for A331083, there is no canonical definition to state claims against.
-/

/-! ## A331083.P11549836602559724595

`∑{digits}[A215022(n+1), #]`
-/

namespace A331083.P11549836602559724595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A331083.P11549836602559724595

/-! ## A331083.P14534769219797827767

`A331084(A000201(n+1))`
-/

namespace A331083.P14534769219797827767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A000201 (n + 1)).toNat

end

end A331083.P14534769219797827767

/-! ## A331083.P15416385804058609348

`A331084(A066096(n+1))`
-/

namespace A331083.P15416385804058609348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A066096 (n + 1)).toNat

end

end A331083.P15416385804058609348

/-! ## A331083.P4437574456282305280

`A331084(A022342(n+1)+1)`
-/

namespace A331083.P4437574456282305280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A022342 (n + 1) + 1).toNat

end

end A331083.P4437574456282305280

/-! ## A331083.P2882654072310790129

`A331084(A026352(n+1)-(n+2))`
-/

namespace A331083.P2882654072310790129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A026352 (n + 1) - (n + 2 : ℤ)).toNat

end

end A331083.P2882654072310790129

/-! ## A331083.P13310449568399572522

`A331084(A035336(n+1))-1`
-/

namespace A331083.P13310449568399572522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A035336 (n + 1)).toNat - 1

end

end A331083.P13310449568399572522

/-! ## A331083.P5619283384028007267

`A331084(A003623(n+1))`
-/

namespace A331083.P5619283384028007267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A003623 (n + 1)).toNat

end

end A331083.P5619283384028007267

/-! ## A331083.P8400608211500550382

`A331084(A035336(n+1)+1)`
-/

namespace A331083.P8400608211500550382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A035336 (n + 1) + 1).toNat

end

end A331083.P8400608211500550382

/-! ## A331083.P6900616799115928721

`A000120(A215024(n+1))`
-/

namespace A331083.P6900616799115928721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A215024 (n + 1)).toNat

end

end A331083.P6900616799115928721

/-! ## A331083.P12667832779348710504

`A160385(A345291(n+1))`
-/

namespace A331083.P12667832779348710504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A345291 (n + 1)).toNat

end

end A331083.P12667832779348710504

/-!
# A331084: The number of terms in the negaFibonacci representation of -n (A215023).

The programs for A331084, there is no canonical definition to state claims against.
-/

/-! ## A331084.P3030737902429371711

`∑{digits}[A215023(n+1), #]`
-/

namespace A331084.P3030737902429371711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A331084.P3030737902429371711

/-! ## A331084.P14367112388731247178

`A331083(A004956(n+1))`
-/

namespace A331084.P14367112388731247178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A004956 (n + 1)).toNat

end

end A331084.P14367112388731247178

/-! ## A331084.P16087571048703301092

`A331083(A026351(n+1))`
-/

namespace A331084.P16087571048703301092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A026351 (n + 1)).toNat

end

end A331084.P16087571048703301092

/-! ## A331084.P7306448975381330371

`A331083(A000201(n+1)+1)`
-/

namespace A331084.P7306448975381330371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A000201 (n + 1) + 1).toNat

end

end A331084.P7306448975381330371

/-! ## A331084.P10447587108496962646

`A331083(A026352(n+1)-(n+1))`
-/

namespace A331084.P10447587108496962646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A026352 (n + 1) - (n + 1 : ℤ)).toNat

end

end A331084.P10447587108496962646

/-! ## A331084.P15748537447873612670

`A331083(∑[2-A215022(n+1)%2]+1)`
-/

namespace A331084.P15748537447873612670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (A215022 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A331084.P15748537447873612670

/-! ## A331084.P9912759042461041171

`A331083(A101868(n+1))`
-/

namespace A331084.P9912759042461041171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A101868 (n + 1)).toNat

end

end A331084.P9912759042461041171

/-! ## A331084.P12125591047168133468

`A331083(A188434(n+2))`
-/

namespace A331084.P12125591047168133468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A188434 (n + 2)).toNat

end

end A331084.P12125591047168133468

/-! ## A331084.P764200276131220022

`A331083(A089910(n+1)+1)`
-/

namespace A331084.P764200276131220022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A089910 (n + 1) + 1).toNat

end

end A331084.P764200276131220022

/-! ## A331084.P6303374846058893568

`A331083(A101870(n+1))`
-/

namespace A331084.P6303374846058893568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A101870 (n + 1)).toNat

end

end A331084.P6303374846058893568

/-! ## A331084.P7303380637717690399

`A331083(A188471(n+2))`
-/

namespace A331084.P7303380637717690399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331083 (A188471 (n + 2)).toNat

end

end A331084.P7303380637717690399

/-! ## A331084.P4604837651174032872

`A160385(A345292(n+1))`
-/

namespace A331084.P4604837651174032872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A345292 (n + 1)).toNat

end

end A331084.P4604837651174032872

/-! ## A331084.P11211634135793333807

`A000120(A215025(n+1))`
-/

namespace A331084.P11211634135793333807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A215025 (n + 1)).toNat

end

end A331084.P11211634135793333807

/-! ## A331084.P6339615617436999887

`dr(A341722(A198082(n+1)))`
-/

namespace A331084.P6339615617436999887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A341722 (A198082 (n + 1)).toNat)

end

end A331084.P6339615617436999887

/-! ## A331084.P3450603319735882511

`dr(A341722(A050140(n+2)))`
-/

namespace A331084.P3450603319735882511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A341722 (A050140 (n + 2)).toNat)

end

end A331084.P3450603319735882511

/-! ## A331084.P5137231845022852049

`dr(A341722(A184586(n+2)))`
-/

namespace A331084.P5137231845022852049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A341722 (A184586 (n + 2)).toNat)

end

end A331084.P5137231845022852049

/-!
# A331085: Positive negaFibonacci-Niven numbers: positive numbers divisible by the number of terms in their negaFibonacci representation (A331083).

The programs for A331085, there is no canonical definition to state claims against.
-/

/-! ## A331085.P3304581081814531862

`eq[n+1, lcm(n+1, A331083(n+1))]+1`
-/

namespace A331085.P3304581081814531862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A331083 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331085.P3304581081814531862

/-! ## A331085.P14508817927488171338

`lt[A279329(A185544(2*(n+1))), A028234(2*n+3)]`
-/

namespace A331085.P14508817927488171338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A185544 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A331085.P14508817927488171338

/-! ## A331085.P2455734880798382304

`eq[A062842(n+1), A124765(A316293(n))]`
-/

namespace A331085.P2455734880798382304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A316293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331085.P2455734880798382304

/-! ## A331085.P5286240951410774277

`eq[A267116(n+1), A301507(A301508(n))]`
-/

namespace A331085.P5286240951410774277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301507 (A301508 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331085.P5286240951410774277

/-!
# A331086: Positive numbers k such that k and k + 1 are both negaFibonacci-Niven numbers (A331085).

The programs for A331086, there is no canonical definition to state claims against.
-/

/-! ## A331086.P6974506949870617918

`∩[A331085(n+1)-1, A331085(n+1)]`
-/

namespace A331086.P6974506949870617918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331085 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331086.P6974506949870617918

/-! ## A331086.P14212453753156677980

`A331085(eq[1, A331085(n+2)-A331085(n+1)]+1)`
-/

namespace A331086.P14212453753156677980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331085 (n + 2) - A331085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331085 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331086.P14212453753156677980

/-! ## A331086.P17173065150197815007

`∩[A331085(n+1), A023443(A331085(n+1))]`
-/

namespace A331086.P17173065150197815007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331085 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331086.P17173065150197815007

/-!
# A331087: Starts of runs of 3 consecutive positive negaFibonacci-Niven numbers (A331085).

The programs for A331087, there is no canonical definition to state claims against.
-/

/-! ## A331087.P5613518723286732366

`∩[A331086(n+1)-1, A331086(n+1)]`
-/

namespace A331087.P5613518723286732366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331086 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331087.P5613518723286732366

/-! ## A331087.P15455393508089054521

`A331086(eq[1, A331086(n+2)-A331086(n+1)]+1)`
-/

namespace A331087.P15455393508089054521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331086 (n + 2) - A331086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331087.P15455393508089054521

/-! ## A331087.P10800683868979505570

`A331086(eq[1, A331086(n+2)%A331086(n+1)]+1)`
-/

namespace A331087.P10800683868979505570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331086 (n + 2)) (A331086 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331087.P10800683868979505570

/-! ## A331087.P8744461051571317954

`∩[A331086(n+1), A023443(A331086(n+1))]`
-/

namespace A331087.P8744461051571317954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331086 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331087.P8744461051571317954

/-!
# A331089: Positive numbers k such that -k and -(k + 1) are both negative negaFibonacci-Niven numbers (A331088).

The programs for A331089, there is no canonical definition to state claims against.
-/

/-! ## A331089.P16772779817800283396

`∩[A331088(n+1)-1, A331088(n+1)]`
-/

namespace A331089.P16772779817800283396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331088 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331089.P16772779817800283396

/-! ## A331089.P7250778027466742755

`A331088(eq[1, A331088(n+2)-A331088(n+1)]+1)`
-/

namespace A331089.P7250778027466742755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331088 (n + 2) - A331088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331089.P7250778027466742755

/-!
# A331090: Positive numbers k such that -k, -(k + 1), and -(k + 2) are 3 consecutive negative negaFibonacci-Niven numbers (A331088).

The programs for A331090, there is no canonical definition to state claims against.
-/

/-! ## A331090.P685475762022823045

`∩[A331089(n+1)-1, A331089(n+1)]`
-/

namespace A331090.P685475762022823045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331089 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331090.P685475762022823045

/-! ## A331090.P9967603836908195584

`A331089(eq[1, A331089(n+2)-A331089(n+1)]+1)`
-/

namespace A331090.P9967603836908195584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331089 (n + 2) - A331089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A331090.P9967603836908195584

/-! ## A331090.P3515937814157261018

`∩[A331089(n+1), A023443(A331089(n+1))]`
-/

namespace A331090.P3515937814157261018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331089 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331090.P3515937814157261018

/-!
# A331091: Positive negaFibonacci-Niven numbers k (A331085) such that -k is a negative negaFibonacci-Niven number (A331088).

The programs for A331091, there is no canonical definition to state claims against.
-/

/-! ## A331091.P5577221932046813822

`∩[A331085(n+1), A331088(n+1)]`
-/

namespace A331091.P5577221932046813822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331091.P5577221932046813822

/-! ## A331091.P9174828826401602968

`record[A156752(n)*A216326(n+1)]`
-/

namespace A331091.P9174828826401602968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156752 n * A216326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331091.P9174828826401602968

/-! ## A331091.P16619215955750315707

`record[A174273(A080997(n+1)*A080999(n+1))]`
-/

namespace A331091.P16619215955750315707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174273 (A080997 (n + 1) * A080999 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331091.P16619215955750315707

/-! ## A331091.P3629146168950314982

`∑[dr(A046523(A047042(n)))]`
-/

namespace A331091.P3629146168950314982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046523 (A047042 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331091.P3629146168950314982

/-! ## A331091.P14112726353578949559

`∑[A330231(record[A131955(n+1)])]`
-/

namespace A331091.P14112726353578949559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330231 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331091.P14112726353578949559

/-!
# A331092: Positive numbers k such that k and k + 1 are both positive negaFibonacci-Niven numbers (A331085) and -k and -(k + 1) are both negative negaFibonacci-Niven numbers (A331088).

The programs for A331092, there is no canonical definition to state claims against.
-/

/-! ## A331092.P4394971124523958727

`∩[A331086(n+1), A331089(n+1)]`
-/

namespace A331092.P4394971124523958727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331092.P4394971124523958727

/-! ## A331092.P5654990488511816596

`∩[A331091(n+1)-1, A331091(n+1)]`
-/

namespace A331092.P5654990488511816596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331091 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331092.P5654990488511816596

/-! ## A331092.P9501787608671439804

`∩[A331091(n+1), A023443(A331091(n+1))]`
-/

namespace A331092.P9501787608671439804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331091 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331092.P9501787608671439804

/-!
# A331096: Numbers k such that the sum of all divisors except k, minus the sum of the digits of k, is equal to k.

The programs for A331096, there is no canonical definition to state claims against.
-/

/-! ## A331096.P9880217550649316294

`eq[A007953(n), A033880(A028310(n))]`
-/

namespace A331096.P9880217550649316294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331096.P9880217550649316294

/-! ## A331096.P2577798769482299146

`eq[A033885(A028310(n)), A066568(n)]`
-/

namespace A331096.P2577798769482299146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331096.P2577798769482299146

/-! ## A331096.P16517151375360160317

`eq[A007953(n), A033880(A066182(n+1))]`
-/

namespace A331096.P16517151375360160317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331096.P16517151375360160317

/-! ## A331096.P1740181102646080583

`eq[A007953(n+1)+A004275(n), A039653(n)]`
-/

namespace A331096.P1740181102646080583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A004275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331096.P1740181102646080583

/-! ## A331096.P14762749826898378490

`eq[A007953(n), A033880(A233583(n+1))]`
-/

namespace A331096.P14762749826898378490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331096.P14762749826898378490

/-!
# A331097: a(n) is the greatest prime number of the form n mod (10^k) for some k > 0, or 0 if no such prime number exists.

The programs for A331097, there is no canonical definition to state claims against.
-/

/-! ## A331097.P15955021269315458496

`C(A047814(n), A123352(A225244(n)))`
-/

namespace A331097.P15955021269315458496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047814 n).toNat (A123352 (A225244 n).toNat).toNat

end

end A331097.P15955021269315458496

/-! ## A331097.P9627282438648786622

`A047814(n*A196368(A222048(n)))`
-/

namespace A331097.P9627282438648786622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 ((n : ℤ) * A196368 (A222048 n).toNat).toNat

end

end A331097.P9627282438648786622

/-! ## A331097.P2872748861762043592

`A047814(n)*A162549(A045344(n+1))`
-/

namespace A331097.P2872748861762043592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n * A162549 (A045344 (n + 1)).toNat

end

end A331097.P2872748861762043592

/-! ## A331097.P18431071726092849747

`A047814(n*A162549(A236937(n)))`
-/

namespace A331097.P18431071726092849747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 ((n : ℤ) * A162549 (A236937 n).toNat).toNat

end

end A331097.P18431071726092849747

/-! ## A331097.P1217560420867179226

`A047814(A047814(n)^A295520(n)!)`
-/

namespace A331097.P1217560420867179226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A047814 n ^ Nat.factorial (A295520 n).toNat).toNat

end

end A331097.P1217560420867179226

/-!
# A331099: The numbers such that the sum of their proper divisors plus the product of their digits equals the number.

The programs for A331099, there is no canonical definition to state claims against.
-/

/-! ## A331099.P12080279934347729397

`eq[A007954(n), A033879(A028310(n))]`
-/

namespace A331099.P12080279934347729397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331099.P12080279934347729397

/-! ## A331099.P3598572519542949990

`eq[A007954(n), A033879(A233583(n+1))]`
-/

namespace A331099.P3598572519542949990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A331099.P3598572519542949990

