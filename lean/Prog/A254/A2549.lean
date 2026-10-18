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
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A254900: Number of (n+2) X (1+2) 0..1 arrays with every 3 X 3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254900, there is no canonical definition to state claims against.
-/

/-! ## A254900.P666223246014693407

`A254907(∑[n]+1)`
-/

namespace A254900.P666223246014693407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254900.P666223246014693407

/-! ## A254900.P6102161826303596327

`record[A254907(n+1)]`
-/

namespace A254900.P6102161826303596327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254900.P6102161826303596327

/-! ## A254900.P15490669209467634157

`A254907(A000124(n))*A319689(2*(n+1))`
-/

namespace A254900.P15490669209467634157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 n).toNat * A319689 (2 * (n + 1))

end

end A254900.P15490669209467634157

/-! ## A254900.P1962600962011253312

`A254907(A000124(n))+A008683(A001248(n+1))`
-/

namespace A254900.P1962600962011253312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 n).toNat + A008683 (A001248 (n + 1)).toNat

end

end A254900.P1962600962011253312

/-! ## A254900.P4727168549014414056

`A007318(A000217(n+1))*A254907(A000217(n+1))`
-/

namespace A254900.P4727168549014414056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1)).toNat * A254907 (A000217 (n + 1)).toNat

end

end A254900.P4727168549014414056

/-! ## A254900.P9883214301026036910

`A007318(A008805(n+1))*A254907(A008805(2*n))`
-/

namespace A254900.P9883214301026036910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A008805 (n + 1)).toNat * A254907 (A008805 (2 * n)).toNat

end

end A254900.P9883214301026036910

/-! ## A254900.P7649841400561346845

`A257209(∑[n]+1)`
-/

namespace A254900.P7649841400561346845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254900.P7649841400561346845

/-! ## A254900.P11858054655407678901

`record[A257209(A010054(n+1)+n)]`
-/

namespace A254900.P11858054655407678901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257209 (A010054 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254900.P11858054655407678901

/-! ## A254900.P17059802136513120486

`record[A257209(n+1)/A174032(n)]`
-/

namespace A254900.P17059802136513120486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257209 (n + 1) : ℚ) / (A174032 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254900.P17059802136513120486

/-! ## A254900.P13667668364354823221

`record[gcd(A141169(n), A257209(n+1))]`
-/

namespace A254900.P13667668364354823221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A257209 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254900.P13667668364354823221

/-!
# A254901: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254901, there is no canonical definition to state claims against.
-/

/-! ## A254901.P15762544479119069374

`A254907(∑[n+2])`
-/

namespace A254901.P15762544479119069374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254901.P15762544479119069374

/-! ## A254901.P1257315820663474223

`A254907(A000096(n+1))+2-4/2`
-/

namespace A254901.P1257315820663474223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254907 (A000096 (n + 1)).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A254901.P1257315820663474223

/-! ## A254901.P4446914553268630987

`record[A254907(A000096(A032742(n+1)))]`
-/

namespace A254901.P4446914553268630987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254901.P4446914553268630987

/-! ## A254901.P3131490211618868490

`or(A000007(n), A254907(A000096(n+1)))`
-/

namespace A254901.P3131490211618868490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254907 (A000096 (n + 1)).toNat)

end

end A254901.P3131490211618868490

/-! ## A254901.P14887674320255090336

`A254907(A000096(n+1))%A234820(n+1)`
-/

namespace A254901.P14887674320255090336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254907 (A000096 (n + 1)).toNat) (A234820 (n + 1))

end

end A254901.P14887674320255090336

/-!
# A254902: Number of (n+2) X (3+2) 0..1 arrays with every 3 X 3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254902, there is no canonical definition to state claims against.
-/

/-! ## A254902.P14110327052114879274

`A254907(∑[n+3]+1)`
-/

namespace A254902.P14110327052114879274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254902.P14110327052114879274

/-! ## A254902.P17682663213808363136

`A254907(A052905(n)+3)%A017047(n)`
-/

namespace A254902.P17682663213808363136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254907 (A052905 n + 3).toNat) (A017047 n)

end

end A254902.P17682663213808363136

/-! ## A254902.P12615080717775838517

`lcm(A158388(n), A254907(A052905(n)+3))`
-/

namespace A254902.P12615080717775838517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A254907 (A052905 n + 3).toNat)

end

end A254902.P12615080717775838517

/-! ## A254902.P17002746374205463795

`or(A000007(n), A254907(A052905(n)+3))`
-/

namespace A254902.P17002746374205463795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254907 (A052905 n + 3).toNat)

end

end A254902.P17002746374205463795

/-! ## A254902.P13578250847297082271

`A254907(Δ[A008778(n)])%A254910(n+1)`
-/

namespace A254902.P13578250847297082271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254907 (f1 (n + 1) - f1 n).toNat) (A254910 (n + 1))

end

end A254902.P13578250847297082271

/-! ## A254902.P5564827293388059246

`gcd(2, A191106(n+1))*A254907(A052905(n)+3)`
-/

namespace A254902.P5564827293388059246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A191106 (n + 1)) : ℤ) * A254907 (A052905 n + 3).toNat

end

end A254902.P5564827293388059246

/-!
# A254903: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254903, there is no canonical definition to state claims against.
-/

/-! ## A254903.P12181157787872278285

`A254907(∑[n+4]+3)`
-/

namespace A254903.P12181157787872278285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254903.P12181157787872278285

/-! ## A254903.P13837404337870429692

`lcm((-1)^n, A254907(A155212(n)+5))`
-/

namespace A254903.P13837404337870429692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A254907 (A155212 n + 5).toNat)

end

end A254903.P13837404337870429692

/-! ## A254903.P14830250011443891321

`or(A151933(n), A254907(A155212(n)+5))`
-/

namespace A254903.P14830250011443891321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A254907 (A155212 n + 5).toNat)

end

end A254903.P14830250011443891321

/-! ## A254903.P9610448842694270760

`A254907(A155212(n)+5)%A345616(n+1)`
-/

namespace A254903.P9610448842694270760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254907 (A155212 n + 5).toNat) (A345616 (n + 1))

end

end A254903.P9610448842694270760

/-! ## A254903.P1264952619900060075

`A000034(A140513(n))*A254907(A056000(n)+7)`
-/

namespace A254903.P1264952619900060075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A140513 n).toNat * A254907 (A056000 n + 7).toNat

end

end A254903.P1264952619900060075

/-!
# A254904: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254904, there is no canonical definition to state claims against.
-/

/-! ## A254904.P8388324457875329491

`A254907(∑[n+5]+6)`
-/

namespace A254904.P8388324457875329491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A254904.P8388324457875329491

/-! ## A254904.P17728578057684894908

`A158388(n+1)*A254907(Δ[A023545(n+1)])`
-/

namespace A254904.P17728578057684894908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A254907 (f1 (n + 1) - f1 n).toNat

end

end A254904.P17728578057684894908

/-! ## A254904.P4027085472305105414

`A254907(Δ[A023545(n+1)])%A254891(n+1)`
-/

namespace A254904.P4027085472305105414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254907 (f1 (n + 1) - f1 n).toNat) (A254891 (n + 1))

end

end A254904.P4027085472305105414

/-! ## A254904.P14725155288197890413

`A254907(Δ[A023545(n+1)])+A035363(2*n+1)`
-/

namespace A254904.P14725155288197890413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (f1 (n + 1) - f1 n).toNat + A035363 (2 * n + 1)

end

end A254904.P14725155288197890413

/-! ## A254904.P12949197127716602736

`A254907(Δ[A023545(n+1)])+A035444(2*n+1)`
-/

namespace A254904.P12949197127716602736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (f1 (n + 1) - f1 n).toNat + A035444 (2 * n + 1)

end

end A254904.P12949197127716602736

/-!
# A254905: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254905, there is no canonical definition to state claims against.
-/

/-! ## A254905.P16323117499413844126

`A254907(∑[n+6]+10)`
-/

namespace A254905.P16323117499413844126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A254905.P16323117499413844126

/-! ## A254905.P16600739423958399748

`gcd(n, n+1)*A254907(A000124(n+6)-6)`
-/

namespace A254905.P16600739423958399748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A254907 (A000124 (n + 6) - 6).toNat

end

end A254905.P16600739423958399748

/-! ## A254905.P15565344645191582425

`A254907(A000124(n+6)-6)%A178203(n+1)`
-/

namespace A254905.P15565344645191582425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254907 (A000124 (n + 6) - 6).toNat) (A178203 (n + 1))

end

end A254905.P15565344645191582425

/-! ## A254905.P14279033212398785709

`A000041(C(2, n+2))*A254907(A000124(n+6)-6)`
-/

namespace A254905.P14279033212398785709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A254907 (A000124 (n + 6) - 6).toNat

end

end A254905.P14279033212398785709

/-! ## A254905.P16273770600049332866

`A014963(78*(n+1))*A254907(A000124(n+6)-6)`
-/

namespace A254905.P16273770600049332866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (78 * (n + 1)) * A254907 (A000124 (n + 6) - 6).toNat

end

end A254905.P16273770600049332866

/-! ## A254905.P3333861005494471579

`A254907(A000124(n+6)-6)*A319689((2*(n+1))²)`
-/

namespace A254905.P3333861005494471579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 (n + 6) - 6).toNat * A319689 ((2 * (n + 1)) ^ 2)

end

end A254905.P3333861005494471579

/-! ## A254905.P257898479750156192

`A254907(A000124(n+6)-6)+A008683(A001248(n+1))`
-/

namespace A254905.P257898479750156192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 (n + 6) - 6).toNat + A008683 (A001248 (n + 1)).toNat

end

end A254905.P257898479750156192

/-!
# A254906: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254906, there is no canonical definition to state claims against.
-/

/-! ## A254906.P8605720772035524578

`A254907(A055999(n+4))`
-/

namespace A254906.P8605720772035524578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A055999 (n + 4)).toNat

end

end A254906.P8605720772035524578

/-! ## A254906.P15222993122643593220

`A254907(Δ[A023551(n+2)])`
-/

namespace A254906.P15222993122643593220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (f1 (n + 1) - f1 n).toNat

end

end A254906.P15222993122643593220

/-! ## A254906.P16133190483812569378

`A254907(A000124(n+7)-7)`
-/

namespace A254906.P16133190483812569378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 (n + 7) - 7).toNat

end

end A254906.P16133190483812569378

/-! ## A254906.P3048354340428441374

`A254907(A000096(n+5)+n+2)`
-/

namespace A254906.P3048354340428441374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A254906.P3048354340428441374

/-! ## A254906.P601194788226330485

`A254907(A000217(n+6)+n+1)`
-/

namespace A254906.P601194788226330485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A254906.P601194788226330485

/-!
# A254908: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254908, there is no canonical definition to state claims against.
-/

/-! ## A254908.P7796256301373637667

`A254907(∑[n+1]+2)`
-/

namespace A254908.P7796256301373637667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254908.P7796256301373637667

/-! ## A254908.P18156921802291565340

`or(char[24], A254907(C(n+2, 2)+2))`
-/

namespace A254908.P18156921802291565340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254907 (Nat.choose (n + 2) 2 + 2))

end

end A254908.P18156921802291565340

/-! ## A254908.P14519689267207324235

`record[root(A254907(n+3), A130270(n+3))]`
-/

namespace A254908.P14519689267207324235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254907 (n + 3) : ℝ) ^ (1 / (A130270 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254908.P14519689267207324235

/-! ## A254908.P2830611512082592371

`lcm(2-A010684(n), A254907(C(n+2, 2)+2))`
-/

namespace A254908.P2830611512082592371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A010684 n) (A254907 (Nat.choose (n + 2) 2 + 2))

end

end A254908.P2830611512082592371

/-! ## A254908.P9578916495402998592

`A254907(C(n+2, 2)+2)+A000007(A061674(n))`
-/

namespace A254908.P9578916495402998592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (Nat.choose (n + 2) 2 + 2) + A000007 (A061674 n).toNat

end

end A254908.P9578916495402998592

/-!
# A254909: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254909, there is no canonical definition to state claims against.
-/

/-! ## A254909.P7341964413519635087

`A254907(∑[n+2]+4)`
-/

namespace A254909.P7341964413519635087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254909.P7341964413519635087

/-! ## A254909.P11779794618544811068

`or(char[3], A254907(A167614(n+1)))`
-/

namespace A254909.P11779794618544811068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254907 (A167614 (n + 1)).toNat)

end

end A254909.P11779794618544811068

/-! ## A254909.P12373175450558987844

`A254907(A000096(n+1)+4)+2-4/2`
-/

namespace A254909.P12373175450558987844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254907 (A000096 (n + 1) + 4).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A254909.P12373175450558987844

/-! ## A254909.P4064786353894918314

`A254907(A167614(Δ[n²]-n))-log2(1/2)-1`
-/

namespace A254909.P4064786353894918314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254907 (A167614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - 1

end

end A254909.P4064786353894918314

/-! ## A254909.P10216495625897295444

`lcm(A033999(n), A254907(A167614(n+1)))`
-/

namespace A254909.P10216495625897295444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254907 (A167614 (n + 1)).toNat)

end

end A254909.P10216495625897295444

/-! ## A254909.P11526917132419304149

`char[A002262(n)]*A254907(A167614(n+1))`
-/

namespace A254909.P11526917132419304149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A254907 (A167614 (n + 1)).toNat

end

end A254909.P11526917132419304149

/-! ## A254909.P11642342418987399042

`(A000041(n)%2)!*A254907(A167614(n+1))`
-/

namespace A254909.P11642342418987399042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A254907 (A167614 (n + 1)).toNat

end

end A254909.P11642342418987399042

/-! ## A254909.P7517649377343432261

`A007318(A000217(n))*A254907(A167614(n+1))`
-/

namespace A254909.P7517649377343432261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A254907 (A167614 (n + 1)).toNat

end

end A254909.P7517649377343432261

/-! ## A254909.P1093803225330321654

`A254907(A167614(n+1))+A046660(A020639(n+1))`
-/

namespace A254909.P1093803225330321654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167614 (n + 1)).toNat + A046660 (A020639 (n + 1)).toNat

end

end A254909.P1093803225330321654

/-!
# A254910: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254910, there is no canonical definition to state claims against.
-/

/-! ## A254910.P12012618847016614203

`A254907(∑[a(n-1)+1]+2)` with `a(0)=8, a(1)=4`
-/

namespace A254910.P12012618847016614203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254910.P12012618847016614203

/-! ## A254910.P9582962747756883187

`A254907(A145018(n+4))`
-/

namespace A254910.P9582962747756883187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A145018 (n + 4)).toNat

end

end A254910.P9582962747756883187

/-! ## A254910.P16719922899803946862

`A254907(A052905(n)+9)`
-/

namespace A254910.P16719922899803946862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A052905 n + 9).toNat

end

end A254910.P16719922899803946862

/-! ## A254910.P5680332677035977477

`A254907(A055999(n)+10)`
-/

namespace A254910.P5680332677035977477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A055999 n + 10).toNat

end

end A254910.P5680332677035977477

/-! ## A254910.P11742836976902813098

`A254907(Δ[A005286(n)]+5)`
-/

namespace A254910.P11742836976902813098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (f1 (n + 1) - f1 n + 5).toNat

end

end A254910.P11742836976902813098

/-! ## A254910.P12380871925215442379

`A254907(A167614(n+2)+1)`
-/

namespace A254910.P12380871925215442379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167614 (n + 2) + 1).toNat

end

end A254910.P12380871925215442379

/-! ## A254910.P11187607565320523185

`A254907(A167487(n+2)-3)`
-/

namespace A254910.P11187607565320523185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167487 (n + 2) - 3).toNat

end

end A254910.P11187607565320523185

/-! ## A254910.P7467027512158290644

`A254907(Δ[A023545(n+1)-n²])`
-/

namespace A254910.P7467027512158290644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (f1 (n + 1) - f1 n).toNat

end

end A254910.P7467027512158290644

/-!
# A254911: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254911, there is no canonical definition to state claims against.
-/

/-! ## A254911.P7590599559673278

`A254907(A167499(n+3))`
-/

namespace A254911.P7590599559673278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167499 (n + 3)).toNat

end

end A254911.P7590599559673278

/-! ## A254911.P10411888332914959383

`A254907(A145018(n+5)+1)`
-/

namespace A254911.P10411888332914959383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A145018 (n + 5) + 1).toNat

end

end A254911.P10411888332914959383

/-! ## A254911.P3126868051750583042

`A254907(A167487(n+3)-2)`
-/

namespace A254911.P3126868051750583042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167487 (n + 3) - 2).toNat

end

end A254911.P3126868051750583042

/-! ## A254911.P10297515649614142586

`A254907(A000124(n+4)+4)`
-/

namespace A254911.P10297515649614142586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 (n + 4) + 4).toNat

end

end A254911.P10297515649614142586

/-! ## A254911.P4633433573130369922

`A254907(A000217(n+4)+5)`
-/

namespace A254911.P4633433573130369922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000217 (n + 4) + 5).toNat

end

end A254911.P4633433573130369922

/-! ## A254911.P16462094041136284241

`A254907(A038722(Δ[A023545(n+1)]))`
-/

namespace A254911.P16462094041136284241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A254911.P16462094041136284241

/-!
# A254912: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254912, there is no canonical definition to state claims against.
-/

/-! ## A254912.P7442093906705879541

`A254907(A167487(n+4)-1)`
-/

namespace A254912.P7442093906705879541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167487 (n + 4) - 1).toNat

end

end A254912.P7442093906705879541

/-! ## A254912.P9316738918550519049

`A254907(A167614(n+4)+3)`
-/

namespace A254912.P9316738918550519049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167614 (n + 4) + 3).toNat

end

end A254912.P9316738918550519049

/-! ## A254912.P2523833001209817054

`A254907(A145018(n+6)+2)`
-/

namespace A254912.P2523833001209817054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A145018 (n + 6) + 2).toNat

end

end A254912.P2523833001209817054

/-! ## A254912.P8382363928249186860

`A254907(A000124(n+5)+5)`
-/

namespace A254912.P8382363928249186860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 (n + 5) + 5).toNat

end

end A254912.P8382363928249186860

/-! ## A254912.P949608496860885852

`A254907(A000217(n+5)+6)`
-/

namespace A254912.P949608496860885852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000217 (n + 5) + 6).toNat

end

end A254912.P949608496860885852

/-!
# A254913: Number of (7+2) X (n+2) 0..1 arrays with every 3 X 3 subblock sum of the two sums of the diagonal and antidiagonal minus the two minimums of the central column and central row nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254913, there is no canonical definition to state claims against.
-/

/-! ## A254913.P11182878084237668228

`A254907(A167487(n+5))`
-/

namespace A254913.P11182878084237668228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A167487 (n + 5)).toNat

end

end A254913.P11182878084237668228

/-! ## A254913.P2248167169450939991

`A254907(A000124(n+6)+6)`
-/

namespace A254913.P2248167169450939991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000124 (n + 6) + 6).toNat

end

end A254913.P2248167169450939991

/-! ## A254913.P11749542214932342706

`A254907(A000217(n+6)+7)`
-/

namespace A254913.P11749542214932342706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A000217 (n + 6) + 7).toNat

end

end A254913.P11749542214932342706

/-! ## A254913.P12385455455648539378

`A254907(A145018(n+8)-(n+4))`
-/

namespace A254913.P12385455455648539378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A145018 (n + 8) - (n + 4 : ℤ)).toNat

end

end A254913.P12385455455648539378

/-! ## A254913.P13168888595945243664

`A254907(A133263(n+1)+A008706(n+5))`
-/

namespace A254913.P13168888595945243664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A133263 (n + 1) + A008706 (n + 5)).toNat

end

end A254913.P13168888595945243664

/-! ## A254913.P17636042908061716666

`A254907(A055998(n+6)-A004273(n+3))`
-/

namespace A254913.P17636042908061716666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A055998 (n + 6) - A004273 (n + 3)).toNat

end

end A254913.P17636042908061716666

/-! ## A254913.P10038580803278258619

`A254907(A133263(n+13)-A017005(n+9))`
-/

namespace A254913.P10038580803278258619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254907 (A133263 (n + 13) - A017005 (n + 9)).toNat

end

end A254913.P10038580803278258619

/-!
# A254914: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254914, there is no canonical definition to state claims against.
-/

/-! ## A254914.P5480141117335398061

`A254922((n+1)²+n²)`
-/

namespace A254914.P5480141117335398061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 ((n + 1) ^ 2 + n ^ 2)

end

end A254914.P5480141117335398061

/-! ## A254914.P7632569409167417855

`record[A003982(n)*A254922(n+1)]`
-/

namespace A254914.P7632569409167417855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254914.P7632569409167417855

/-! ## A254914.P16114657156383221634

`record[gcd(A049581(n), A254922(n+1))]`
-/

namespace A254914.P16114657156383221634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A254922 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254914.P16114657156383221634

/-! ## A254914.P4528598216145031753

`A254922(A001844(n))+A025444(n)`
-/

namespace A254914.P4528598216145031753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A001844 n).toNat + A025444 n

end

end A254914.P4528598216145031753

/-! ## A254914.P11113651930332034305

`(A000040(n+1)%2)!*A254922(A001844(n))`
-/

namespace A254914.P11113651930332034305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℤ) * A254922 (A001844 n).toNat

end

end A254914.P11113651930332034305

/-!
# A254915: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254915, there is no canonical definition to state claims against.
-/

/-! ## A254915.P10673266519225895124

`A258530(∑[n]+1)`
-/

namespace A254915.P10673266519225895124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254915.P10673266519225895124

/-! ## A254915.P13633025120017899632

`lcm(2, A258530(A000124(n)))`
-/

namespace A254915.P13633025120017899632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A258530 (A000124 n).toNat)

end

end A254915.P13633025120017899632

/-! ## A254915.P10554107449860831903

`record[A010054(n)*A258530(n+1)]`
-/

namespace A254915.P10554107449860831903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A258530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254915.P10554107449860831903

/-! ## A254915.P3656995508275853003

`record[root(A258530(n+1), A059268(n))]`
-/

namespace A254915.P3656995508275853003
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258530 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254915.P3656995508275853003

/-! ## A254915.P2553958580051565122

`record[gcd(A002262(n), A258530(n+1))]`
-/

namespace A254915.P2553958580051565122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A258530 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254915.P2553958580051565122

/-!
# A254916: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254916, there is no canonical definition to state claims against.
-/

/-! ## A254916.P13121965621209755090

`A254922(∑[n+1]+2)`
-/

namespace A254916.P13121965621209755090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254916.P13121965621209755090

/-! ## A254916.P738726626657351149

`A254922(A133263(n+1))+A000035(2*n)`
-/

namespace A254916.P738726626657351149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A254916.P738726626657351149

/-! ## A254916.P7598116911907659396

`A254922(A133263(n+1))+n*A000007(n)`
-/

namespace A254916.P7598116911907659396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A133263 (n + 1)).toNat + (n : ℤ) * A000007 n

end

end A254916.P7598116911907659396

/-! ## A254916.P11949526846436224526

`A254922(A133263(n+1))+n*A000038(n)`
-/

namespace A254916.P11949526846436224526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A133263 (n + 1)).toNat + (n : ℤ) * A000038 n

end

end A254916.P11949526846436224526

/-!
# A254917: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254917, there is no canonical definition to state claims against.
-/

/-! ## A254917.P5895696971044061833

`A254922(∑[n+2]+4)`
-/

namespace A254917.P5895696971044061833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254917.P5895696971044061833

/-! ## A254917.P1333096578721012991

`A000034(2*n)*A254922(A167614(n+1))`
-/

namespace A254917.P1333096578721012991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A254922 (A167614 (n + 1)).toNat

end

end A254917.P1333096578721012991

/-! ## A254917.P11381332197548824178

`A254922(A167614(n+1))%A254919(n+1)`
-/

namespace A254917.P11381332197548824178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254922 (A167614 (n + 1)).toNat) (A254919 (n + 1))

end

end A254917.P11381332197548824178

/-! ## A254917.P8400414908306523924

`A254922(A167499(n)+n)%A254919(n+1)`
-/

namespace A254917.P8400414908306523924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254922 (A167499 n + (n : ℤ)).toNat) (A254919 (n + 1))

end

end A254917.P8400414908306523924

/-! ## A254917.P14940721755803896445

`A254922(A167614(n+1))+A008683(A139280(n+1))`
-/

namespace A254917.P14940721755803896445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A167614 (n + 1)).toNat + A008683 (A139280 (n + 1)).toNat

end

end A254917.P14940721755803896445

/-!
# A254918: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254918, there is no canonical definition to state claims against.
-/

/-! ## A254918.P14084532449921913533

`A254922(A374004(n+1))`
-/

namespace A254918.P14084532449921913533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A374004 (n + 1)).toNat

end

end A254918.P14084532449921913533

/-! ## A254918.P8043501459982032326

`A254922(A055999(n)+10)`
-/

namespace A254918.P8043501459982032326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A055999 n + 10).toNat

end

end A254918.P8043501459982032326

/-! ## A254918.P4944757659925621899

`A254922(A167614(n+2)+1)`
-/

namespace A254918.P4944757659925621899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A167614 (n + 2) + 1).toNat

end

end A254918.P4944757659925621899

/-! ## A254918.P9557451386478187589

`A254922(A167499(n+2)-1)`
-/

namespace A254918.P9557451386478187589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A167499 (n + 2) - 1).toNat

end

end A254918.P9557451386478187589

/-! ## A254918.P1315973820609580013

`A254922(Δ[A264443(n)-n²])`
-/

namespace A254918.P1315973820609580013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (f1 (n + 1) - f1 n).toNat

end

end A254918.P1315973820609580013

/-!
# A254919: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254919, there is no canonical definition to state claims against.
-/

/-! ## A254919.P5376284411288782770

`A254922(A374005(n+1))`
-/

namespace A254919.P5376284411288782770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A374005 (n + 1)).toNat

end

end A254919.P5376284411288782770

/-! ## A254919.P8185350552779709260

`A254922(A167499(n+3))`
-/

namespace A254919.P8185350552779709260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A167499 (n + 3)).toNat

end

end A254919.P8185350552779709260

/-! ## A254919.P4894140002967887162

`A254922(A155212(n)+13)`
-/

namespace A254919.P4894140002967887162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A155212 n + 13).toNat

end

end A254919.P4894140002967887162

/-! ## A254919.P14448516543024285272

`A254922(A056000(n)+15)`
-/

namespace A254919.P14448516543024285272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A056000 n + 15).toNat

end

end A254919.P14448516543024285272

/-! ## A254919.P2702289356760335342

`A254922(A020710(n)+A055999(n)+10)`
-/

namespace A254919.P2702289356760335342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A020710 n + (A055999 n + 10)).toNat

end

end A254919.P2702289356760335342

/-!
# A254920: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254920, there is no canonical definition to state claims against.
-/

/-! ## A254920.P14413662182757427019

`A254922(A374007(n+1))`
-/

namespace A254920.P14413662182757427019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A374007 (n + 1)).toNat

end

end A254920.P14413662182757427019

/-! ## A254920.P12835657990773552435

`A254922(A056115(n)+21)`
-/

namespace A254920.P12835657990773552435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A056115 n + 21).toNat

end

end A254920.P12835657990773552435

/-! ## A254920.P11703375352622431371

`A254922(eq[7, A131818(n+1)])`
-/

namespace A254920.P11703375352622431371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254920.P11703375352622431371

/-! ## A254920.P3427088719190021309

`A254922(Δ[A023545(n+1)]+10)`
-/

namespace A254920.P3427088719190021309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (f1 (n + 1) - f1 n + 10).toNat

end

end A254920.P3427088719190021309

/-! ## A254920.P14753162790044737982

`A254922(eq[5, A193592(n)])`
-/

namespace A254920.P14753162790044737982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254920.P14753162790044737982

/-!
# A254921: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the central row and central column plus the two minimums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254921, there is no canonical definition to state claims against.
-/

/-! ## A254921.P5835288243787607290

`A254922(A374008(n+1))`
-/

namespace A254921.P5835288243787607290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A374008 (n + 1)).toNat

end

end A254921.P5835288243787607290

/-! ## A254921.P17963425718515346451

`A254922(A056119(n)+28)`
-/

namespace A254921.P17963425718515346451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (A056119 n + 28).toNat

end

end A254921.P17963425718515346451

/-! ## A254921.P18056675922680782268

`A254922(eq[11, A066657(n)])`
-/

namespace A254921.P18056675922680782268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254921.P18056675922680782268

/-! ## A254921.P17506478697547309455

`A254922(eq[8, A131818(n+1)])`
-/

namespace A254921.P17506478697547309455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254921.P17506478697547309455

/-! ## A254921.P10903012049199780545

`A254922(eq[6, A193592(n)])`
-/

namespace A254921.P10903012049199780545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254921.P10903012049199780545

/-!
# A254923: The slowest increasing sequence of semiprimes with alternating parity.

The programs for A254923, there is no canonical definition to state claims against.
-/

/-! ## A254923.P16850607935675204543

`A001358(lt[A238385(2*n+1), A366868(n+1)])`
-/

namespace A254923.P16850607935675204543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238385 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254923.P16850607935675204543

/-! ## A254923.P4390726732958486466

`record[A001358(n+1)%A037189(n+5)]`
-/

namespace A254923.P4390726732958486466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) (A037189 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254923.P4390726732958486466

/-! ## A254923.P1053660093455270899

`A001358(lt[A335448(3*n+1)%8, 1])`
-/

namespace A254923.P1053660093455270899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335448 (3 * n + 1)) 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A254923.P1053660093455270899

/-! ## A254923.P7718550738089717485

`A001358(lt[A055102(n), A194607(n+1)])`
-/

namespace A254923.P7718550738089717485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254923.P7718550738089717485

/-! ## A254923.P15708615438261996357

`A001358(lt[A126295(n), A330530(n+1)])`
-/

namespace A254923.P15708615438261996357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254923.P15708615438261996357

/-!
# A254924: a(n) = (A060371(n) - A094998(n))/A056604(n) for n > 1, with a(1)=1.

The programs for A254924, there is no canonical definition to state claims against.
-/

/-! ## A254924.P15901147121615139495

`floor(A060371(n+1)/A056604(n+1))`
-/

namespace A254924.P15901147121615139495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060371 (n + 1) : ℚ) / (A056604 (n + 1) : ℚ)⌋

end

end A254924.P15901147121615139495

/-! ## A254924.P5293445492799159397

`A311526(A222807(3*n+5))-A324796(n+1)`
-/

namespace A254924.P5293445492799159397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311526 (A222807 (3 * n + 5)).toNat - A324796 (n + 1)

end

end A254924.P5293445492799159397

/-!
# A254926: There are a(n) numbers m such that 1 <= m <= n and gcd(m,n) is cubefree.

The programs for A254926, the canonical program `A254926.P1478616090771883199` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254926 has offset 1).

The definition of A254926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254926.P13181322669264330322

`∑{d}[n+1, A007431(#)*A073184((n+1)/#)]`
-/

namespace A254926.P13181322669264330322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P13181322669264330322

namespace A254926

/-- `∑{d}[n+1, A007431(#)*A073184((n+1)/#)]` -/
def P13181322669264330322.Spec : Prop :=
  ∀ n, P13181322669264330322.a n = A254926 (n + 1)

end A254926

/-! ## A254926.P13785540546784509027

`∑{d}[n+1, A053822(#)*A060983((n+1)/#)]`
-/

namespace A254926.P13785540546784509027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A060983 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P13785540546784509027

namespace A254926

/-- `∑{d}[n+1, A053822(#)*A060983((n+1)/#)]` -/
def P13785540546784509027.Spec : Prop :=
  ∀ n, P13785540546784509027.a n = A254926 (n + 1)

end A254926

/-! ## A254926.P9793031441535827895

`∑{d}[n+1, A056624(#)*A130107((n+1)/#)]`
-/

namespace A254926.P9793031441535827895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P9793031441535827895

namespace A254926

/-- `∑{d}[n+1, A056624(#)*A130107((n+1)/#)]` -/
def P9793031441535827895.Spec : Prop :=
  ∀ n, P9793031441535827895.a n = A254926 (n + 1)

end A254926

/-! ## A254926.P8335611393241287046

`∑{d}[n+1, A000010(#)*A212793((n+1)/#)]`
-/

namespace A254926.P8335611393241287046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P8335611393241287046

namespace A254926

/-- `∑{d}[n+1, A000010(#)*A212793((n+1)/#)]` -/
def P8335611393241287046.Spec : Prop :=
  ∀ n, P8335611393241287046.a n = A254926 (n + 1)

end A254926

/-! ## A254926.P1478616090771883199

`∑{d}[n+1, A007432(#)*A226602((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254926

/-- `∑{d}[n+1, A007432(#)*A226602((n+1)/#)]` -/
def P1478616090771883199.Spec : Prop :=
  ∀ n, P1478616090771883199.a n = A254926 (n + 1)

theorem P1478616090771883199.correct : P1478616090771883199.Spec := by
  intro n
  simp only [A254926, Nat.add_sub_cancel]

end A254926

/-! ## A254926.P14827647079721189288

`∑{d}[n+1, A008683(#)*A254981((n+1)/#)]`
-/

namespace A254926.P14827647079721189288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A254981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P14827647079721189288

namespace A254926

/-- `∑{d}[n+1, A008683(#)*A254981((n+1)/#)]` -/
def P14827647079721189288.Spec : Prop :=
  ∀ n, P14827647079721189288.a n = A254926 (n + 1)

end A254926

/-! ## A254926.P15490696061446554696

`∑{d}[n+1, A001615(#)*A307428((n+1)/#)]`
-/

namespace A254926.P15490696061446554696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A307428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P15490696061446554696

namespace A254926

/-- `∑{d}[n+1, A001615(#)*A307428((n+1)/#)]` -/
def P15490696061446554696.Spec : Prop :=
  ∀ n, P15490696061446554696.a n = A254926 (n + 1)

end A254926

/-! ## A254926.P2118218025136248463

`∑{d}[n+1, A063659(#)*A307423((n+1)/#)]`
-/

namespace A254926.P2118218025136248463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A307423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P2118218025136248463

namespace A254926

/-- `∑{d}[n+1, A063659(#)*A307423((n+1)/#)]` -/
def P2118218025136248463.Spec : Prop :=
  ∀ n, P2118218025136248463.a n = A254926 (n + 1)

end A254926

/-! ## A254926.P1596070279248949974

`∑{d}[n+1, A206369(#)*A307425((n+1)/#)]`
-/

namespace A254926.P1596070279248949974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254926.P1596070279248949974

namespace A254926

/-- `∑{d}[n+1, A206369(#)*A307425((n+1)/#)]` -/
def P1596070279248949974.Spec : Prop :=
  ∀ n, P1596070279248949974.a n = A254926 (n + 1)

end A254926

/-!
# A254929: Fundamental positive solution y = y2(n) of the second class of the Pell equation x^2 - 2*y^2 = A007522(n), n>=1 (primes congruent to 7 mod 8).

The programs for A254929, there is no canonical definition to state claims against.
-/

/-! ## A254929.P2224527507604857064

`2*A254764(n+1)-3*A254765(n+1)`
-/

namespace A254929.P2224527507604857064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254764 (n + 1) - 3 * A254765 (n + 1)

end

end A254929.P2224527507604857064

/-! ## A254929.P7752287396481754694

`A254765(n+1)+2*A254938(n+1)`
-/

namespace A254929.P7752287396481754694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254765 (n + 1) + 2 * A254938 (n + 1)

end

end A254929.P7752287396481754694

/-! ## A254929.P17211832213835880321

`A254938(n+1)+2*A255232(n+1)`
-/

namespace A254929.P17211832213835880321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254938 (n + 1) + 2 * A255232 (n + 1)

end

end A254929.P17211832213835880321

/-! ## A254929.P16609457079872063137

`(A254938(n+1)+A254766(n+1))/2`
-/

namespace A254929.P16609457079872063137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254938 (n + 1) + A254766 (n + 1) : ℚ) / 2

end

end A254929.P16609457079872063137

/-! ## A254929.P3318835672378399349

`A254766(n+1)-2*A255232(n+1)`
-/

namespace A254929.P3318835672378399349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254766 (n + 1) - 2 * A255232 (n + 1)

end

end A254929.P3318835672378399349

/-! ## A254929.P13343458393875279925

`4*A255232(n+1)-A254765(n+1)`
-/

namespace A254929.P13343458393875279925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A255232 (n + 1) - A254765 (n + 1)

end

end A254929.P13343458393875279925

/-! ## A254929.P13112911247636380284

`5*A255232(n+1)-A255234(n+1)`
-/

namespace A254929.P13112911247636380284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A255232 (n + 1) - A255234 (n + 1)

end

end A254929.P13112911247636380284

/-! ## A254929.P16595487661613203681

`A000265(A254938(n+1)+A254766(n+1))`
-/

namespace A254929.P16595487661613203681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A254938 (n + 1) + A254766 (n + 1)).toNat

end

end A254929.P16595487661613203681

/-! ## A254929.P11815144196248902355

`A001281(A254938(n+1)+A254766(n+1))`
-/

namespace A254929.P11815144196248902355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A254938 (n + 1) + A254766 (n + 1)).toNat

end

end A254929.P11815144196248902355

/-! ## A254929.P2195114105422904863

`A254765(n+1)+A004277(A254938(n+1))`
-/

namespace A254929.P2195114105422904863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254765 (n + 1) + A004277 (A254938 (n + 1)).toNat

end

end A254929.P2195114105422904863

/-!
# A254930: Fundamental positive solution x = x2(n) of the second class of the Pell equation x^2 - 2*y^2 = A001132(n), n >= 1 (primes congruent to 1 or 7 mod 8).

The programs for A254930, there is no canonical definition to state claims against.
-/

/-! ## A254930.P18189301648454593703

`3*A002334(n+2)-4*A002335(n+2)`
-/

namespace A254930.P18189301648454593703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002334 (n + 2) - 4 * A002335 (n + 2)

end

end A254930.P18189301648454593703

/-! ## A254930.P7304547840301257677

`A255246(n+2)+A254931(n+1)`
-/

namespace A254930.P7304547840301257677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (n + 2) + A254931 (n + 1)

end

end A254930.P7304547840301257677

/-! ## A254930.P16632909118116870918

`A002334(n+2)+2*A255235(n+2)`
-/

namespace A254930.P16632909118116870918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002334 (n + 2) + 2 * A255235 (n + 2)

end

end A254930.P16632909118116870918

/-! ## A254930.P16946388920074251748

`A255235(n+2)+2*A255246(n+2)`
-/

namespace A254930.P16946388920074251748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255235 (n + 2) + 2 * A255246 (n + 2)

end

end A254930.P16946388920074251748

/-! ## A254930.P8915767515511361040

`3*A255246(n+2)-A002335(n+2)`
-/

namespace A254930.P8915767515511361040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255246 (n + 2) - A002335 (n + 2)

end

end A254930.P8915767515511361040

/-!
# A254931: Fundamental positive solution y = y2(n) of the second class of the Pell equation x^2 - 2*y^2 = A001132(n), n >= 1, (primes congruent to 1 or 7 mod 8).

The programs for A254931, there is no canonical definition to state claims against.
-/

/-! ## A254931.P8026107115292676624

`2*A002334(n+2)-3*A002335(n+2)`
-/

namespace A254931.P8026107115292676624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002334 (n + 2) - 3 * A002335 (n + 2)

end

end A254931.P8026107115292676624

/-! ## A254931.P9913647275766621573

`A255246(n+2)+A255235(n+2)`
-/

namespace A254931.P9913647275766621573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (n + 2) + A255235 (n + 2)

end

end A254931.P9913647275766621573

/-! ## A254931.P421525293163881303

`A002335(n+2)+2*A255235(n+2)`
-/

namespace A254931.P421525293163881303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002335 (n + 2) + 2 * A255235 (n + 2)

end

end A254931.P421525293163881303

/-! ## A254931.P12531634977902484836

`2*A255246(n+2)-A002335(n+2)`
-/

namespace A254931.P12531634977902484836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255246 (n + 2) - A002335 (n + 2)

end

end A254931.P12531634977902484836

/-! ## A254931.P8751429905331082063

`A004277(A255235(n+2))+A002335(n+2)`
-/

namespace A254931.P8751429905331082063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A255235 (n + 2)).toNat + A002335 (n + 2)

end

end A254931.P8751429905331082063

/-! ## A254931.P15235806024153849531

`A004277(A255246(n+2))-A002335(n+2)`
-/

namespace A254931.P15235806024153849531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A255246 (n + 2)).toNat - A002335 (n + 2)

end

end A254931.P15235806024153849531

/-! ## A254931.P10839421067244470975

`A002334(n+2)+A255235(n+2)-A002335(n+2)`
-/

namespace A254931.P10839421067244470975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002334 (n + 2) + (A255235 (n + 2) - A002335 (n + 2))

end

end A254931.P10839421067244470975

/-!
# A254934: Fundamental positive solution x = x1(n) of the first class of the Pell equation x^2 - 2*y^2 = -A007519(n), n>=1 (primes congruent to 1 mod 8).

The programs for A254934, there is no canonical definition to state claims against.
-/

/-! ## A254934.P14141468363453076155

`A254935(n+1)+A254937(n+1)-A254936(n+1)`
-/

namespace A254934.P14141468363453076155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254935 (n + 1) + (A254937 (n + 1) - A254936 (n + 1))

end

end A254934.P14141468363453076155

/-! ## A254934.P6990482179802024058

`A254763(n+1)-A254761(n+1)`
-/

namespace A254934.P6990482179802024058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) - A254761 (n + 1)

end

end A254934.P6990482179802024058

/-! ## A254934.P14993949261222843956

`A254936(n+1)-A008590(A254761(n+1))`
-/

namespace A254934.P14993949261222843956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254936 (n + 1) - A008590 (A254761 (n + 1)).toNat

end

end A254934.P14993949261222843956

/-! ## A254934.P14924256715902571628

`A004277(A254763(n+1)+3*A254761(n+1))%A254936(n+1)`
-/

namespace A254934.P14924256715902571628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004277 (A254763 (n + 1) + 3 * A254761 (n + 1)).toNat) (A254936 (n + 1))

end

end A254934.P14924256715902571628

/-! ## A254934.P14645722818557889498

`A005843(A254763(n+1)+3*A254761(n+1))%A254936(n+1)`
-/

namespace A254934.P14645722818557889498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A254763 (n + 1) + 3 * A254761 (n + 1)).toNat) (A254936 (n + 1))

end

end A254934.P14645722818557889498

/-! ## A254934.P6063907014734074937

`A254936(n+1)-7*A254761(n+1)-A254761(A004525(2*(n+1)))`
-/

namespace A254934.P6063907014734074937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254936 (n + 1) - 7 * A254761 (n + 1) - A254761 (A004525 (2 * (n + 1))).toNat

end

end A254934.P6063907014734074937

/-!
# A254935: Fundamental positive solution y = y1(n) of the first class of the Pell equation x^2 - 2*y^2 = -A007519(n), n>=1 (primes congruent to 1 mod 8).

The programs for A254935, there is no canonical definition to state claims against.
-/

/-! ## A254935.P9619492003506790868

`A254934(n+1)+A254936(n+1)-A254937(n+1)`
-/

namespace A254935.P9619492003506790868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254934 (n + 1) + (A254936 (n + 1) - A254937 (n + 1))

end

end A254935.P9619492003506790868

/-! ## A254935.P3683933707680747845

`A254763(n+1)+A254761(n+1)`
-/

namespace A254935.P3683933707680747845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) + A254761 (n + 1)

end

end A254935.P3683933707680747845

/-! ## A254935.P1593745836999940621

`A254934(n+1)+2*A254761(n+1)`
-/

namespace A254935.P1593745836999940621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254934 (n + 1) + 2 * A254761 (n + 1)

end

end A254935.P1593745836999940621

/-! ## A254935.P8049660195028265905

`A254763(n+1)+A254763(n+1)-A254934(n+1)`
-/

namespace A254935.P8049660195028265905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) + (A254763 (n + 1) - A254934 (n + 1))

end

end A254935.P8049660195028265905

/-! ## A254935.P16327804767188363683

`A254760(n+1)-2*A254761(n+1)`
-/

namespace A254935.P16327804767188363683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (n + 1) - 2 * A254761 (n + 1)

end

end A254935.P16327804767188363683

/-!
# A254936: Fundamental positive solution x = x2(n) of the second class of the Pell equation x^2 - 2*y^2 = -A007519(n), n >= 1 (primes congruent to 1 mod 8).

The programs for A254936, there is no canonical definition to state claims against.
-/

/-! ## A254936.P14416835569283513366

`A254935(n+1)+A254937(n+1)-A254934(n+1)`
-/

namespace A254936.P14416835569283513366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254935 (n + 1) + (A254937 (n + 1) - A254934 (n + 1))

end

end A254936.P14416835569283513366

/-! ## A254936.P2519083823028552067

`A254937(n+1)+2*A254761(n+1)`
-/

namespace A254936.P2519083823028552067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254937 (n + 1) + 2 * A254761 (n + 1)

end

end A254936.P2519083823028552067

/-! ## A254936.P15633691070486624260

`A254763(n+1)+7*A254761(n+1)`
-/

namespace A254936.P15633691070486624260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) + 7 * A254761 (n + 1)

end

end A254936.P15633691070486624260

/-! ## A254936.P2824585689888472933

`A254763(n+1)+A008589(A254761(n+1))`
-/

namespace A254936.P2824585689888472933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) + A008589 (A254761 (n + 1)).toNat

end

end A254936.P2824585689888472933

/-! ## A254936.P3054868293501253222

`A254934(n+1)+A008590(A254761(n+1))`
-/

namespace A254936.P3054868293501253222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254934 (n + 1) + A008590 (A254761 (n + 1)).toNat

end

end A254936.P3054868293501253222

/-! ## A254936.P11361152863966214720

`A254763(n+1)+A008589(A254763(n+1)-A254934(n+1))`
-/

namespace A254936.P11361152863966214720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) + A008589 (A254763 (n + 1) - A254934 (n + 1)).toNat

end

end A254936.P11361152863966214720

/-!
# A254937: Fundamental positive solution y = y2(n) of the second class of the Pell equation x^2 - 2*y^2 = -A007519(n), n>=1 (primes congruent to 1 mod 8).

The programs for A254937, there is no canonical definition to state claims against.
-/

/-! ## A254937.P11144381483991150171

`A254934(n+1)+A254936(n+1)-A254935(n+1)`
-/

namespace A254937.P11144381483991150171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254934 (n + 1) + (A254936 (n + 1) - A254935 (n + 1))

end

end A254937.P11144381483991150171

/-! ## A254937.P1493358464821256542

`A254936(n+1)-2*A254761(n+1)`
-/

namespace A254937.P1493358464821256542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254936 (n + 1) - 2 * A254761 (n + 1)

end

end A254937.P1493358464821256542

/-! ## A254937.P18370731250096569320

`A254763(n+1)+5*A254761(n+1)`
-/

namespace A254937.P18370731250096569320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254763 (n + 1) + 5 * A254761 (n + 1)

end

end A254937.P18370731250096569320

/-! ## A254937.P13844042450267167415

`A254934(n+1)+6*A254761(n+1)`
-/

namespace A254937.P13844042450267167415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254934 (n + 1) + 6 * A254761 (n + 1)

end

end A254937.P13844042450267167415

/-! ## A254937.P7929684873000919512

`A254760(n+1)+2*A254761(n+1)`
-/

namespace A254937.P7929684873000919512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254760 (n + 1) + 2 * A254761 (n + 1)

end

end A254937.P7929684873000919512

/-!
# A254938: Fundamental positive solution x = x1(n) of the first class of the Pell equation x^2 - 2*y^2 = -A007522(n), n >= 1 (primes congruent to 7 mod 8).

The programs for A254938, there is no canonical definition to state claims against.
-/

/-! ## A254938.P4439519356373967802

`3*A255232(n+1)-A255234(n+1)`
-/

namespace A254938.P4439519356373967802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A255232 (n + 1) - A255234 (n + 1)

end

end A254938.P4439519356373967802

/-! ## A254938.P13759485465423422086

`A008486(A255232(n+1))-A255234(n+1)`
-/

namespace A254938.P13759485465423422086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A255232 (n + 1)).toNat - A255234 (n + 1)

end

end A254938.P13759485465423422086

/-! ## A254938.P6244757639166170859

`A008590(A255234(n+1))%A255233(n+1)`
-/

namespace A254938.P6244757639166170859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008590 (A255234 (n + 1)).toNat) (A255233 (n + 1))

end

end A254938.P6244757639166170859

/-! ## A254938.P7382668725636037499

`A008486(A255232(n+1))+A001478(A255234(n+1)+1)+1`
-/

namespace A254938.P7382668725636037499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A255232 (n + 1)).toNat + A001478 (A255234 (n + 1) + 1).toNat + 1

end

end A254938.P7382668725636037499

/-! ## A254938.P8871414169155499643

`A004277(A255234(n+1)+A255232(n+1))-A255233(n+1)`
-/

namespace A254938.P8871414169155499643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A255234 (n + 1) + A255232 (n + 1)).toNat - A255233 (n + 1)

end

end A254938.P8871414169155499643

/-! ## A254938.P5241533514249035084

`A005843(A255234(n+1)+A255232(n+1))-A255233(n+1)`
-/

namespace A254938.P5241533514249035084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255234 (n + 1) + A255232 (n + 1)).toNat - A255233 (n + 1)

end

end A254938.P5241533514249035084

/-! ## A254938.P1130925770027003652

`A254764(n+1)-2*A254765(n+1)`
-/

namespace A254938.P1130925770027003652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (n + 1) - 2 * A254765 (n + 1)

end

end A254938.P1130925770027003652

/-! ## A254938.P11702228143690722774

`2*A254929(n+1)-A254766(n+1)`
-/

namespace A254938.P11702228143690722774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254929 (n + 1) - A254766 (n + 1)

end

end A254938.P11702228143690722774

/-! ## A254938.P8533281468362166555

`2*A255232(n+1)-A254765(n+1)`
-/

namespace A254938.P8533281468362166555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255232 (n + 1) - A254765 (n + 1)

end

end A254938.P8533281468362166555

/-! ## A254938.P2928197628719027499

`A254929(n+1)-2*A255232(n+1)`
-/

namespace A254938.P2928197628719027499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254929 (n + 1) - 2 * A255232 (n + 1)

end

end A254938.P2928197628719027499

/-!
# A254939: a(n) = (A099795(n)^-1 mod p)*A099795(n), where p = prime(n).

The programs for A254939, there is no canonical definition to state claims against.
-/

/-! ## A254939.P5433359913933301638

`A255010(n+1)*A099795(n+1)`
-/

namespace A254939.P5433359913933301638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255010 (n + 1) * A099795 (n + 1)

end

end A254939.P5433359913933301638

/-! ## A254939.P9966132773250782945

`A056604(n+1)/A000040(n+1)*A255010(n+1)`
-/

namespace A254939.P9966132773250782945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056604 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A255010 (n + 1) : ℚ)

end

end A254939.P9966132773250782945

/-! ## A254939.P7080990320813318748

`A234423(n+1)+A033999(A000079(n))`
-/

namespace A254939.P7080990320813318748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234423 (n + 1) + A033999 (A000079 n).toNat

end

end A254939.P7080990320813318748

/-! ## A254939.P6817044438613928056

`A234423(n+1)-A008683(A008578(n+1))`
-/

namespace A254939.P6817044438613928056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234423 (n + 1) - A008683 (A008578 (n + 1)).toNat

end

end A254939.P6817044438613928056

/-! ## A254939.P9761399295006086048

`A234423(n+1)-A008683(A064555(n+1))`
-/

namespace A254939.P9761399295006086048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234423 (n + 1) - A008683 (A064555 (n + 1)).toNat

end

end A254939.P9761399295006086048

/-!
# A254940: Number of length n 1..(1+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254940, there is no canonical definition to state claims against.
-/

/-! ## A254940.P17201352786172135498

`A254947(∑[n+1])`
-/

namespace A254940.P17201352786172135498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254940.P17201352786172135498

/-! ## A254940.P15125593509076790913

`record[A023531(n)*A254947(n+1)]`
-/

namespace A254940.P15125593509076790913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A254947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254940.P15125593509076790913

/-! ## A254940.P14251198031021660184

`record[gcd(A185937(n), A254947(n+1))]`
-/

namespace A254940.P14251198031021660184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185937 n) (A254947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254940.P14251198031021660184

/-! ## A254940.P14189782017039259215

`record[A254947(A000217(A032742(n+1)))]`
-/

namespace A254940.P14189782017039259215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254940.P14189782017039259215

/-! ## A254940.P11965690406313887331

`record[root(A254947(n+1), A105599(n+1))]`
-/

namespace A254940.P11965690406313887331
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254947 (n + 1) : ℝ) ^ (1 / (A105599 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254940.P11965690406313887331

/-!
# A254941: Number of length n 1..(2+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254941, there is no canonical definition to state claims against.
-/

/-! ## A254941.P12890803590688715657

`A254947(∑[n+2])`
-/

namespace A254941.P12890803590688715657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254941.P12890803590688715657

/-! ## A254941.P17096696581996574119

`record[A254947(A000096(A152271(n)))]`
-/

namespace A254941.P17096696581996574119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000096 (A152271 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254941.P17096696581996574119

/-! ## A254941.P11564292205238299848

`record[A254947(A000096(A304097(n)))]`
-/

namespace A254941.P11564292205238299848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000096 (A304097 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254941.P11564292205238299848

/-! ## A254941.P16227586729343152297

`record[A254947(A000096(A323161(n+1)))]`
-/

namespace A254941.P16227586729343152297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000096 (A323161 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254941.P16227586729343152297

/-! ## A254941.P8552527038706355728

`record[A254947(A000096(A331297(n+1)))]`
-/

namespace A254941.P8552527038706355728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000096 (A331297 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254941.P8552527038706355728

/-!
# A254942: Number of length n 1..(3+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254942, there is no canonical definition to state claims against.
-/

/-! ## A254942.P5664175183712958932

`A254947(∑[n+3]+1)`
-/

namespace A254942.P5664175183712958932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254942.P5664175183712958932

/-! ## A254942.P14880152707687816584

`A254947(A034856(n+2))%(4^(n+1))`
-/

namespace A254942.P14880152707687816584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254947 (A034856 (n + 2)).toNat) (4 ^ (n + 1) : ℤ)

end

end A254942.P14880152707687816584

/-! ## A254942.P14585476600509982499

`A254947(A034856(n+2))/A000034(2*n)`
-/

namespace A254942.P14585476600509982499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254947 (A034856 (n + 2)).toNat : ℚ) / (A000034 (2 * n) : ℚ)

end

end A254942.P14585476600509982499

/-! ## A254942.P5201512338092903600

`A254947(A034856(n+2))+2%A000034(n)`
-/

namespace A254942.P5201512338092903600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A034856 (n + 2)).toNat + Int.tmod 2 (A000034 n)

end

end A254942.P5201512338092903600

/-! ## A254942.P8680777406009593157

`A254947(A034856(n+2))/gcd(2, A208675(n))`
-/

namespace A254942.P8680777406009593157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254947 (A034856 (n + 2)).toNat : ℚ) / (Int.gcd 2 (A208675 n) : ℚ)

end

end A254942.P8680777406009593157

/-! ## A254942.P2068570225662512146

`A254947(A034856(n+2))/gcd(3, A158117(n))`
-/

namespace A254942.P2068570225662512146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254947 (A034856 (n + 2)).toNat : ℚ) / (Int.gcd 3 (A158117 n) : ℚ)

end

end A254942.P2068570225662512146

/-! ## A254942.P18009574165218978743

`A007318(A000217(n))*A254947(A034856(n+2))`
-/

namespace A254942.P18009574165218978743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A254947 (A034856 (n + 2)).toNat

end

end A254942.P18009574165218978743

/-! ## A254942.P1421711162171922178

`A001222(A033199(n+1))*A254947(A034856(n+2))`
-/

namespace A254942.P1421711162171922178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033199 (n + 1)).toNat * A254947 (A034856 (n + 2)).toNat

end

end A254942.P1421711162171922178

/-! ## A254942.P5646415440284068487

`A001222(A033204(n+1))*A254947(A034856(n+2))`
-/

namespace A254942.P5646415440284068487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033204 (n + 1)).toNat * A254947 (A034856 (n + 2)).toNat

end

end A254942.P5646415440284068487

/-! ## A254942.P13459631548307207604

`A254947(A034856(n+2))/A007318(A000217(n+6))`
-/

namespace A254942.P13459631548307207604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254947 (A034856 (n + 2)).toNat : ℚ) / (A007318 (A000217 (n + 6)).toNat : ℚ)

end

end A254942.P13459631548307207604

/-!
# A254943: Number of length n 1..(4+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254943, there is no canonical definition to state claims against.
-/

/-! ## A254943.P9234440444861147300

`A254947(Δ[∑[∑[n+1]]+(n+1)²]+1)`
-/

namespace A254943.P9234440444861147300
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A254943.P9234440444861147300

/-! ## A254943.P3535707166742632711

`or(char[5], A254947(A155212(n)+5))`
-/

namespace A254943.P3535707166742632711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254947 (A155212 n + 5).toNat)

end

end A254943.P3535707166742632711

/-! ## A254943.P17544616918625625139

`A033999(n)²*A254947(A155212(n)+5)`
-/

namespace A254943.P17544616918625625139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A254947 (A155212 n + 5).toNat

end

end A254943.P17544616918625625139

/-! ## A254943.P7842408455487490215

`A007318(∑[n])*A254947(A155212(n)+5)`
-/

namespace A254943.P7842408455487490215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A254947 (A155212 n + 5).toNat

end

end A254943.P7842408455487490215

/-! ## A254943.P12037787866286695759

`A254947(A155212(n)+5)+A000007(n+1)`
-/

namespace A254943.P12037787866286695759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A155212 n + 5).toNat + A000007 (n + 1)

end

end A254943.P12037787866286695759

/-! ## A254943.P11769436695270433021

`A054977(n+1)*A254947(A155212(n)+5)`
-/

namespace A254943.P11769436695270433021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A254947 (A155212 n + 5).toNat

end

end A254943.P11769436695270433021

/-! ## A254943.P1774195410715031325

`A254947(A155212(n)+5)%A254944(n+1)`
-/

namespace A254943.P1774195410715031325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254947 (A155212 n + 5).toNat) (A254944 (n + 1))

end

end A254943.P1774195410715031325

/-! ## A254943.P18115753244435068524

`A309873(n+1)²*A254947(A155212(n)+5)`
-/

namespace A254943.P18115753244435068524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * A254947 (A155212 n + 5).toNat

end

end A254943.P18115753244435068524

/-! ## A254943.P9392461195025555177

`A254947(A155212(n)+5)+A056594(2*n+1)`
-/

namespace A254943.P9392461195025555177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A155212 n + 5).toNat + A056594 (2 * n + 1)

end

end A254943.P9392461195025555177

/-! ## A254943.P8939473794263095069

`A020639(gcd(n, n+1))*A254947(A155212(n)+5)`
-/

namespace A254943.P8939473794263095069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A254947 (A155212 n + 5).toNat

end

end A254943.P8939473794263095069

/-!
# A254944: Number of length n 1..(5+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254944, there is no canonical definition to state claims against.
-/

/-! ## A254944.P2056175123761656868

`A254947(∑[n+5]+6)`
-/

namespace A254944.P2056175123761656868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A254944.P2056175123761656868

/-! ## A254944.P6689095500642089983

`A254947(Δ[A023545(n+1)])%A254467(n)`
-/

namespace A254944.P6689095500642089983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254947 (f1 (n + 1) - f1 n).toNat) (A254467 n)

end

end A254944.P6689095500642089983

/-! ## A254944.P6415785382148592772

`A254947(Δ[A023545(n+1)])+A130507(n²)`
-/

namespace A254944.P6415785382148592772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n).toNat + A130507 (n ^ 2)

end

end A254944.P6415785382148592772

/-! ## A254944.P13674988588947569681

`A254947(Δ[A023545(n+1)])+A000007(n+1)`
-/

namespace A254944.P13674988588947569681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A254944.P13674988588947569681

/-! ## A254944.P10110771165657306131

`A254947(Δ[A023545(n+1)])+A000035(2*n)`
-/

namespace A254944.P10110771165657306131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n).toNat + A000035 (2 * n)

end

end A254944.P10110771165657306131

/-! ## A254944.P1148228001616364880

`A211666(n+2)*A254947(Δ[A023545(n+1)])`
-/

namespace A254944.P1148228001616364880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 2) * A254947 (f1 (n + 1) - f1 n).toNat

end

end A254944.P1148228001616364880

/-! ## A254944.P2502169918675643809

`A254947(Δ[A023545(n+1)])+A226728(2*(n+1))`
-/

namespace A254944.P2502169918675643809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n).toNat + A226728 (2 * (n + 1))

end

end A254944.P2502169918675643809

/-!
# A254945: Number of length n 1..(6+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254945, there is no canonical definition to state claims against.
-/

/-! ## A254945.P7706919771088187596

`A254947(A052905(n+3))`
-/

namespace A254945.P7706919771088187596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A052905 (n + 3)).toNat

end

end A254945.P7706919771088187596

/-! ## A254945.P8121444812342959341

`A254947(A055999(n+3)+1)`
-/

namespace A254945.P8121444812342959341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A055999 (n + 3) + 1).toNat

end

end A254945.P8121444812342959341

/-! ## A254945.P14133543524024488024

`A254947(Δ[A023551(n+1)]+1)`
-/

namespace A254945.P14133543524024488024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n + 1).toNat

end

end A254945.P14133543524024488024

/-! ## A254945.P8120882842666075037

`A254947(Δ[A023545(n+2)]-1)`
-/

namespace A254945.P8120882842666075037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n - 1).toNat

end

end A254945.P8120882842666075037

/-! ## A254945.P16221142253551716221

`A254947(A167614(n+1)+4*n+10)`
-/

namespace A254945.P16221142253551716221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A167614 (n + 1) + (4 * n + 10 : ℤ)).toNat

end

end A254945.P16221142253551716221

/-! ## A254945.P3424971418685219307

`A254947(A014132(Δ[A023545(n+1)]))`
-/

namespace A254945.P3424971418685219307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A254945.P3424971418685219307

/-! ## A254945.P13908203189352688669

`A254947(A000124(n+9)-A008585(n+10))`
-/

namespace A254945.P13908203189352688669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000124 (n + 9) - A008585 (n + 10)).toNat

end

end A254945.P13908203189352688669

/-!
# A254946: Number of length n 1..(7+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254946, there is no canonical definition to state claims against.
-/

/-! ## A254946.P3798940292277703550

`A254947(A055999(n+4))`
-/

namespace A254946.P3798940292277703550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A055999 (n + 4)).toNat

end

end A254946.P3798940292277703550

/-! ## A254946.P14275085167284044973

`A254947(eq[6, A193592(n)])`
-/

namespace A254946.P14275085167284044973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254946.P14275085167284044973

/-! ## A254946.P1484511126563301351

`A254947(Δ[A023551(n+2)])`
-/

namespace A254946.P1484511126563301351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n).toNat

end

end A254946.P1484511126563301351

/-! ## A254946.P5353371445992709037

`A254947(A052905(n+4)-1)`
-/

namespace A254946.P5353371445992709037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A052905 (n + 4) - 1).toNat

end

end A254946.P5353371445992709037

/-! ## A254946.P3351172245003361673

`A254947(A000124(n+7)-7)`
-/

namespace A254946.P3351172245003361673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000124 (n + 7) - 7).toNat

end

end A254946.P3351172245003361673

/-! ## A254946.P1640643810194758000

`A254947(eq[7, A004736(n+1)]+1)`
-/

namespace A254946.P1640643810194758000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A254946.P1640643810194758000

/-! ## A254946.P16167420499869279979

`A254947(A000217(n+6)+n+1)`
-/

namespace A254946.P16167420499869279979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A254946.P16167420499869279979

/-! ## A254946.P4876041976545187204

`A254947(A005448(n+11)-(n+12)²)`
-/

namespace A254946.P4876041976545187204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A005448 (n + 11) - ((n + 12) ^ 2 : ℤ)).toNat

end

end A254946.P4876041976545187204

/-! ## A254946.P1733977342609786023

`A254947(A005408(n)+A055998(n+3)+9)`
-/

namespace A254946.P1733977342609786023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A005408 n + (A055998 (n + 3) + 9)).toNat

end

end A254946.P1733977342609786023

/-!
# A254947: T(n,k) is the number of length n 1..(k+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254947, there is no canonical definition to state claims against.
-/

/-! ## A254947.P10487303956984941488

`A106737(A249544(n+1)-1)`
-/

namespace A254947.P10487303956984941488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A249544 (n + 1) - 1).toNat

end

end A254947.P10487303956984941488

/-! ## A254947.P12663971447008853997

`A106737(xor(1, A249544(n+1)))`
-/

namespace A254947.P12663971447008853997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (Int.xor 1 (A249544 (n + 1))).toNat

end

end A254947.P12663971447008853997

/-! ## A254947.P15959954080480737013

`A106737(A260196(n+2)+A249544(n+1))`
-/

namespace A254947.P15959954080480737013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A260196 (n + 2) + A249544 (n + 1)).toNat

end

end A254947.P15959954080480737013

/-! ## A254947.P6140069582540301423

`A000005(lcm(A079474(n+1), A079474(n+2)))`
-/

namespace A254947.P6140069582540301423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A079474 (n + 1)) (A079474 (n + 2)))

end

end A254947.P6140069582540301423

/-! ## A254947.P7773829944551568508

`A085388(lt[A107823(2*n+1), A193842(n)])`
-/

namespace A254947.P7773829944551568508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107823 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085388 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254947.P7773829944551568508

/-!
# A254948: Number of length 1 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254948, the canonical program `A254948.P14189672227231438604` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254948 has offset 1).

The definition of A254948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254948.P14189672227231438604

`∑[char[lt[A014963(n+2), 12]]]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A254948

/-- `∑[char[lt[A014963(n+2), 12]]]` -/
def P14189672227231438604.Spec : Prop :=
  ∀ n, (P14189672227231438604.a n : ℤ) = A254948 (n + 1)

theorem P14189672227231438604.correct : P14189672227231438604.Spec := by
  intro n
  simp only [A254948, Nat.add_sub_cancel]

end A254948

/-! ## A254948.P8438031696498314770

`∑[char[lt[A020639(n+2), 12]]]`
-/

namespace A254948.P8438031696498314770
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P8438031696498314770

namespace A254948

/-- `∑[char[lt[A020639(n+2), 12]]]` -/
def P8438031696498314770.Spec : Prop :=
  ∀ n, (P8438031696498314770.a n : ℤ) = A254948 (n + 1)

end A254948

/-! ## A254948.P12585132384701382805

`∑[round(4/(A289508(n+2)+3))]`
-/

namespace A254948.P12585132384701382805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (A289508 (n + 2) + 3 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P12585132384701382805

namespace A254948

/-- `∑[round(4/(A289508(n+2)+3))]` -/
def P12585132384701382805.Spec : Prop :=
  ∀ n, P12585132384701382805.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P12976458701379181430

`∑[1-char[A008365(n+1)-2]]`
-/

namespace A254948.P12976458701379181430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P12976458701379181430

namespace A254948

/-- `∑[1-char[A008365(n+1)-2]]` -/
def P12976458701379181430.Spec : Prop :=
  ∀ n, P12976458701379181430.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P8829082662941491288

`∑[A188642(A014963(n+2))]`
-/

namespace A254948.P8829082662941491288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P8829082662941491288

namespace A254948

/-- `∑[A188642(A014963(n+2))]` -/
def P8829082662941491288.Spec : Prop :=
  ∀ n, P8829082662941491288.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P13644767283417180465

`∑[A188642(A020639(n+2))]`
-/

namespace A254948.P13644767283417180465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P13644767283417180465

namespace A254948

/-- `∑[A188642(A020639(n+2))]` -/
def P13644767283417180465.Spec : Prop :=
  ∀ n, P13644767283417180465.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P2833510847491032487

`∑[A188642(A079879(n+2))]`
-/

namespace A254948.P2833510847491032487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A079879 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P2833510847491032487

namespace A254948

/-- `∑[A188642(A079879(n+2))]` -/
def P2833510847491032487.Spec : Prop :=
  ∀ n, P2833510847491032487.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P13111935229699980992

`∑[A188642(A092028(n+3))]`
-/

namespace A254948.P13111935229699980992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A092028 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P13111935229699980992

namespace A254948

/-- `∑[A188642(A092028(n+3))]` -/
def P13111935229699980992.Spec : Prop :=
  ∀ n, P13111935229699980992.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P14092145467124094396

`∑[A015252(A014963(n+2)-1)]`
-/

namespace A254948.P14092145467124094396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015252 (A014963 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P14092145467124094396

namespace A254948

/-- `∑[A015252(A014963(n+2)-1)]` -/
def P14092145467124094396.Spec : Prop :=
  ∀ n, P14092145467124094396.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P9378658107414591790

`∑[A188642(A014673(2*(n+2)))]`
-/

namespace A254948.P9378658107414591790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A014673 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P9378658107414591790

namespace A254948

/-- `∑[A188642(A014673(2*(n+2)))]` -/
def P9378658107414591790.Spec : Prop :=
  ∀ n, P9378658107414591790.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P5887848924376997983

`∑[A015252(n%A014963(n+2))]`
-/

namespace A254948.P5887848924376997983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015252 (Int.tmod (n : ℤ) (A014963 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P5887848924376997983

namespace A254948

/-- `∑[A015252(n%A014963(n+2))]` -/
def P5887848924376997983.Spec : Prop :=
  ∀ n, P5887848924376997983.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P17822416170829252862

`∑[2-A043567(A020639(n+2)+2)]`
-/

namespace A254948.P17822416170829252862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A043567 (A020639 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P17822416170829252862

namespace A254948

/-- `∑[2-A043567(A020639(n+2)+2)]` -/
def P17822416170829252862.Spec : Prop :=
  ∀ n, P17822416170829252862.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P907053785300256276

`∑[round(2/A000010(A020639(n+2)+1))]`
-/

namespace A254948.P907053785300256276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (A000010 (A020639 (n + 2) + 1).toNat : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P907053785300256276

namespace A254948

/-- `∑[round(2/A000010(A020639(n+2)+1))]` -/
def P907053785300256276.Spec : Prop :=
  ∀ n, P907053785300256276.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P11762672781457480976

`∑[A001221(A000005(A335037(n+2)))]`
-/

namespace A254948.P11762672781457480976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (A335037 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P11762672781457480976

namespace A254948

/-- `∑[A001221(A000005(A335037(n+2)))]` -/
def P11762672781457480976.Spec : Prop :=
  ∀ n, P11762672781457480976.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P1447755865868585097

`∑[A000010(A096396(A020639(n+2)+1))%2]`
-/

namespace A254948.P1447755865868585097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A096396 (A020639 (n + 2) + 1).toNat).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P1447755865868585097

namespace A254948

/-- `∑[A000010(A096396(A020639(n+2)+1))%2]` -/
def P1447755865868585097.Spec : Prop :=
  ∀ n, P1447755865868585097.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P9687593814276077187

`A258632(n+1)+A173667(A258632(n+1)+A173667(n+1))`
-/

namespace A254948.P9687593814276077187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258632 (n + 1) + A173667 (A258632 (n + 1) + A173667 (n + 1)).toNat

end

end A254948.P9687593814276077187

namespace A254948

/-- `A258632(n+1)+A173667(A258632(n+1)+A173667(n+1))` -/
def P9687593814276077187.Spec : Prop :=
  ∀ n, P9687593814276077187.a n = A254948 (n + 1)

end A254948

/-! ## A254948.P16747440783446726934

`∑[C(A106494(n+1), A049084(n+2))]`
-/

namespace A254948.P16747440783446726934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106494 (n + 1)).toNat (A049084 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254948.P16747440783446726934

namespace A254948

/-- `∑[C(A106494(n+1), A049084(n+2))]` -/
def P16747440783446726934.Spec : Prop :=
  ∀ n, (P16747440783446726934.a n : ℤ) = A254948 (n + 1)

end A254948

/-! ## A254948.P10673417467296338076

`A254947(∑[n]+1)`
-/

namespace A254948.P10673417467296338076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254948.P10673417467296338076

namespace A254948

/-- `A254947(∑[n]+1)` -/
def P10673417467296338076.Spec : Prop :=
  ∀ n, P10673417467296338076.a n = A254948 (n + 1)

end A254948

/-!
# A254949: Number of length 2 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254949, there is no canonical definition to state claims against.
-/

/-! ## A254949.P16651371655415844566

`A254947(∑[n+1]+2)`
-/

namespace A254949.P16651371655415844566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254949.P16651371655415844566

/-! ## A254949.P14181542378407093138

`record[root(A254947(n+2), A059268(n))]`
-/

namespace A254949.P14181542378407093138
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254947 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254949.P14181542378407093138

/-! ## A254949.P15795501131168254529

`record[gcd(A002262(n), A254947(n+2))]`
-/

namespace A254949.P15795501131168254529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254947 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254949.P15795501131168254529

/-! ## A254949.P11585112666969847281

`A254947(A133263(n+1))%A000230(n+1)`
-/

namespace A254949.P11585112666969847281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254947 (A133263 (n + 1)).toNat) (A000230 (n + 1))

end

end A254949.P11585112666969847281

/-! ## A254949.P5915426996939754592

`A088705(2*n+1)*A254947(A133263(n+1))`
-/

namespace A254949.P5915426996939754592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n + 1) * A254947 (A133263 (n + 1)).toNat

end

end A254949.P5915426996939754592

/-!
# A254950: Number of length 3 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254950, there is no canonical definition to state claims against.
-/

/-! ## A254950.P9382225691853532375

`A254947(∑[n+2]+4)`
-/

namespace A254950.P9382225691853532375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254950.P9382225691853532375

/-! ## A254950.P5980197045247788665

`A254947(A167614(n+1))%A017298(n)`
-/

namespace A254950.P5980197045247788665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254947 (A167614 (n + 1)).toNat) (A017298 n)

end

end A254950.P5980197045247788665

/-! ## A254950.P3120034180956739755

`lcm(A020985(n), A254947(A167614(n+1)))`
-/

namespace A254950.P3120034180956739755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A254947 (A167614 (n + 1)).toNat)

end

end A254950.P3120034180956739755

/-! ## A254950.P1708372460822955411

`A254947(A167499(n)+n)%A184536(n+1)`
-/

namespace A254950.P1708372460822955411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254947 (A167499 n + (n : ℤ)).toNat) (A184536 (n + 1))

end

end A254950.P1708372460822955411

/-! ## A254950.P14990942625145253318

`A254947(A167614(n+1))+A010051((n+1)²)`
-/

namespace A254950.P14990942625145253318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A167614 (n + 1)).toNat + A010051 ((n + 1) ^ 2)

end

end A254950.P14990942625145253318

/-!
# A254951: Number of length 4 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254951, there is no canonical definition to state claims against.
-/

/-! ## A254951.P4994248565720397408

`A254947(A052905(n)+9)`
-/

namespace A254951.P4994248565720397408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A052905 n + 9).toNat

end

end A254951.P4994248565720397408

/-! ## A254951.P8723240263696186772

`A254947(A055999(n)+10)`
-/

namespace A254951.P8723240263696186772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A055999 n + 10).toNat

end

end A254951.P8723240263696186772

/-! ## A254951.P14510496222034704925

`A254947(A167614(n+2)+1)`
-/

namespace A254951.P14510496222034704925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A167614 (n + 2) + 1).toNat

end

end A254951.P14510496222034704925

/-! ## A254951.P15718305381215316011

`A254947(A000096(n+2)+5)`
-/

namespace A254951.P15718305381215316011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000096 (n + 2) + 5).toNat

end

end A254951.P15718305381215316011

/-! ## A254951.P11739242191669785352

`A254947(Δ[A023545(n+1)-n²])`
-/

namespace A254951.P11739242191669785352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n).toNat

end

end A254951.P11739242191669785352

/-! ## A254951.P11537505129811326935

`record[gcd(A002262(n+6), A254947(n+10))]`
-/

namespace A254951.P11537505129811326935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 6)) (A254947 (n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254951.P11537505129811326935

/-! ## A254951.P17318435783461066788

`A254947(A080036(A167614(n+1)))`
-/

namespace A254951.P17318435783461066788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A254951.P17318435783461066788

/-!
# A254952: Number of length 5 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254952, there is no canonical definition to state claims against.
-/

/-! ## A254952.P5463604523187903675

`A254947(A167499(n+3))`
-/

namespace A254952.P5463604523187903675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A167499 (n + 3)).toNat

end

end A254952.P5463604523187903675

/-! ## A254952.P12394982088320548419

`A254947(A155212(n)+13)`
-/

namespace A254952.P12394982088320548419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A155212 n + 13).toNat

end

end A254952.P12394982088320548419

/-! ## A254952.P6702031052086489537

`A254947(A056000(n)+15)`
-/

namespace A254952.P6702031052086489537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A056000 n + 15).toNat

end

end A254952.P6702031052086489537

/-! ## A254952.P1599310088811330661

`A254947(A000124(n+4)+4)`
-/

namespace A254952.P1599310088811330661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000124 (n + 4) + 4).toNat

end

end A254952.P1599310088811330661

/-! ## A254952.P5519012794683257991

`A254947(A000217(n+4)+5)`
-/

namespace A254952.P5519012794683257991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000217 (n + 4) + 5).toNat

end

end A254952.P5519012794683257991

/-! ## A254952.P15032739305498145740

`A254947(A027379(n+2)+8)`
-/

namespace A254952.P15032739305498145740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A027379 (n + 2) + 8).toNat

end

end A254952.P15032739305498145740

/-! ## A254952.P15057758352051912226

`A254947(A055999(n+3)-2*n)`
-/

namespace A254952.P15057758352051912226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A254952.P15057758352051912226

/-! ## A254952.P12160669184829312584

`A254947(Δ[A023551(n+1)]-2*n)`
-/

namespace A254952.P12160669184829312584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A254952.P12160669184829312584

/-! ## A254952.P2159493242321790572

`A254947(A038722(Δ[A023545(n+1)]))`
-/

namespace A254952.P2159493242321790572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A254952.P2159493242321790572

/-!
# A254953: Number of length 6 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254953, there is no canonical definition to state claims against.
-/

/-! ## A254953.P15592903370398714721

`A254947(A167614(n+4)+3)`
-/

namespace A254953.P15592903370398714721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A167614 (n + 4) + 3).toNat

end

end A254953.P15592903370398714721

/-! ## A254953.P11246392040535708449

`A254947(A000217(n+5)+6)`
-/

namespace A254953.P11246392040535708449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000217 (n + 5) + 6).toNat

end

end A254953.P11246392040535708449

/-! ## A254953.P9851957667843428985

`A254947(A246172(n+1)+20)`
-/

namespace A254953.P9851957667843428985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A246172 (n + 1) + 20).toNat

end

end A254953.P9851957667843428985

/-! ## A254953.P13416279202159837461

`A254947(A000124(n+6)-(n+1))`
-/

namespace A254953.P13416279202159837461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A254953.P13416279202159837461

/-! ## A254953.P9673487741962895462

`A254947(A026043(n+5)-A026040(n+4))`
-/

namespace A254953.P9673487741962895462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A026043 (n + 5) - A026040 (n + 4)).toNat

end

end A254953.P9673487741962895462

/-! ## A254953.P4546274898975079580

`A254947(A026043(n+5)%A026040(n+4))`
-/

namespace A254953.P4546274898975079580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (Int.tmod (A026043 (n + 5)) (A026040 (n + 4))).toNat

end

end A254953.P4546274898975079580

/-!
# A254954: Number of length 7 1..(n+1) arrays with every leading partial sum divisible by 2, 3, 5, 7 or 11.

The programs for A254954, there is no canonical definition to state claims against.
-/

/-! ## A254954.P12933775051044484739

`A254947(A133263(n+6)+5)`
-/

namespace A254954.P12933775051044484739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A133263 (n + 6) + 5).toNat

end

end A254954.P12933775051044484739

/-! ## A254954.P8352094339084036164

`A254947(A000217(n+6)+7)`
-/

namespace A254954.P8352094339084036164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000217 (n + 6) + 7).toNat

end

end A254954.P8352094339084036164

/-! ## A254954.P10502151780591756539

`A254947(A056000(n+5)-A016777(n+2))`
-/

namespace A254954.P10502151780591756539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A056000 (n + 5) - A016777 (n + 2)).toNat

end

end A254954.P10502151780591756539

/-! ## A254954.P15731696421682392370

`A254947(A005408(n+8)+A000124(n+4))`
-/

namespace A254954.P15731696421682392370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A254954.P15731696421682392370

/-! ## A254954.P7845326978231204623

`A254947(A000124(n+9)-A008585(n+6))`
-/

namespace A254954.P7845326978231204623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254947 (A000124 (n + 9) - A008585 (n + 6)).toNat

end

end A254954.P7845326978231204623

/-!
# A254955: Prime numbers indexed by oblong numbers.

The programs for A254955, the canonical program `A254955.P9309173547505421412` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254955 has offset 1).

The definition of A254955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254955.P9309173547505421412

`A000040(A002378(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254955

/-- `A000040(A002378(n+1))` -/
def P9309173547505421412.Spec : Prop :=
  ∀ n, P9309173547505421412.a n = A254955 (n + 1)

theorem P9309173547505421412.correct : P9309173547505421412.Spec := by
  intro n
  simp only [A254955, Nat.add_sub_cancel]

end A254955

/-! ## A254955.P9954194267601651593

`A031215(∑[n+1])`
-/

namespace A254955.P9954194267601651593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254955.P9954194267601651593

namespace A254955

/-- `A031215(∑[n+1])` -/
def P9954194267601651593.Spec : Prop :=
  ∀ n, P9954194267601651593.a n = A254955 (n + 1)

end A254955

/-! ## A254955.P16144103878195735388

`A055670(∑[2*(n+1)])-1`
-/

namespace A254955.P16144103878195735388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A254955.P16144103878195735388

namespace A254955

/-- `A055670(∑[2*(n+1)])-1` -/
def P16144103878195735388.Spec : Prop :=
  ∀ n, P16144103878195735388.a n = A254955 (n + 1)

end A254955

/-! ## A254955.P885317470590193434

`A001748(∑[2*(n+1)])/3`
-/

namespace A254955.P885317470590193434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A254955.P885317470590193434

namespace A254955

/-- `A001748(∑[2*(n+1)])/3` -/
def P885317470590193434.Spec : Prop :=
  ∀ n, P885317470590193434.a n = (A254955 (n + 1) : ℚ)

end A254955

/-! ## A254955.P10310753190550521371

`A001749(∑[2*(n+1)])/4`
-/

namespace A254955.P10310753190550521371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A254955.P10310753190550521371

namespace A254955

/-- `A001749(∑[2*(n+1)])/4` -/
def P10310753190550521371.Spec : Prop :=
  ∀ n, P10310753190550521371.a n = (A254955 (n + 1) : ℚ)

end A254955

/-! ## A254955.P3806152427080008381

`or(1, A031215(A000217(n+1)))`
-/

namespace A254955.P3806152427080008381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031215 (A000217 (n + 1)).toNat)

end

end A254955.P3806152427080008381

namespace A254955

/-- `or(1, A031215(A000217(n+1)))` -/
def P3806152427080008381.Spec : Prop :=
  ∀ n, P3806152427080008381.a n = A254955 (n + 1)

end A254955

/-! ## A254955.P7091251624916746775

`A031215(A000217(n+1))%A034958(n+1)`
-/

namespace A254955.P7091251624916746775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031215 (A000217 (n + 1)).toNat) (A034958 (n + 1))

end

end A254955.P7091251624916746775

namespace A254955

/-- `A031215(A000217(n+1))%A034958(n+1)` -/
def P7091251624916746775.Spec : Prop :=
  ∀ n, P7091251624916746775.a n = A254955 (n + 1)

end A254955

/-! ## A254955.P1034599104081505026

`A000040(∑[2*(n+1)])`
-/

namespace A254955.P1034599104081505026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254955.P1034599104081505026

namespace A254955

/-- `A000040(∑[2*(n+1)])` -/
def P1034599104081505026.Spec : Prop :=
  ∀ n, P1034599104081505026.a n = A254955 (n + 1)

end A254955

/-! ## A254955.P3161917110658416598

`A006005(∑[2*(n+1)])`
-/

namespace A254955.P3161917110658416598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254955.P3161917110658416598

namespace A254955

/-- `A006005(∑[2*(n+1)])` -/
def P3161917110658416598.Spec : Prop :=
  ∀ n, P3161917110658416598.a n = A254955 (n + 1)

end A254955

/-! ## A254955.P15119799360320308411

`A062720(∑[2*(n+1)])`
-/

namespace A254955.P15119799360320308411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254955.P15119799360320308411

namespace A254955

/-- `A062720(∑[2*(n+1)])` -/
def P15119799360320308411.Spec : Prop :=
  ∀ n, P15119799360320308411.a n = A254955 (n + 1)

end A254955

/-!
# A254956: Zeroless numbers n with digits d_1, d_2, ..., d_k such that d_1*(d_1+1)/2 + ... + d_k*(d_k+1)/2 is a triangular number.

The programs for A254956, there is no canonical definition to state claims against.
-/

/-! ## A254956.P8724730159760958302

`∑[A147008(A011971(n))]`
-/

namespace A254956.P8724730159760958302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147008 (A011971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254956.P8724730159760958302

/-! ## A254956.P5018083237679576011

`lt[n/3, A095840(Δ[n²])]`
-/

namespace A254956.P5018083237679576011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095840 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A254956.P5018083237679576011

/-! ## A254956.P14381708379101544556

`record[gcd(n+1, A087082(n+1))]`
-/

namespace A254956.P14381708379101544556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A087082 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254956.P14381708379101544556

/-! ## A254956.P8377976079076305396

`record[gcd(13, A291790(3*(n+1)))+n]`
-/

namespace A254956.P8377976079076305396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A291790 (3 * (n + 1))) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254956.P8377976079076305396

/-! ## A254956.P12042014691175962344

`A146851(a(and(n, n-1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A254956.P12042014691175962344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146851 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat + a (n - 1)

end

end A254956.P12042014691175962344

/-!
# A254957: Triangular numbers n with digits d_1, d_2, ..., d_k such that d_1*(d_1+1)/2 + ... + d_k*(d_k+1)/2 is a triangular number.

The programs for A254957, there is no canonical definition to state claims against.
-/

/-! ## A254957.P5056141128650256657

`A000217(eq[A067721(n), A301569(n)])`
-/

namespace A254957.P5056141128650256657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A254957.P5056141128650256657

/-! ## A254957.P688181012332299453

`A000217(lt[A078414(3*n+4), A085821(n+1)])`
-/

namespace A254957.P688181012332299453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078414 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254957.P688181012332299453

/-! ## A254957.P13707715863517370805

`∩[∑[n], record[A337600(n)]]`
-/

namespace A254957.P13707715863517370805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337600 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A254957.P13707715863517370805

/-!
# A254958: Zeroless numbers n with digits d_1, d_2, ... d_k such that d_1^2 + ... + d_k^2 is a square.

The programs for A254958, the canonical program `A254958.P15726477760308022044` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254958 has offset 1).

The definition of A254958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254958.P15726477760308022044

`∩[A052382(n+1), A175396(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A254958

/-- `∩[A052382(n+1), A175396(n+1)]` -/
def P15726477760308022044.Spec : Prop :=
  ∀ n, (P15726477760308022044.a n : ℤ) = A254958 (n + 1)

theorem P15726477760308022044.correct : P15726477760308022044.Spec := by
  intro n
  simp only [A254958, Nat.add_sub_cancel]

end A254958

/-! ## A254958.P15399884001175398966

`filter[A175396(n+1), A168046(#)]`
-/

namespace A254958.P15399884001175398966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A254958.P15399884001175398966

namespace A254958

/-- `filter[A175396(n+1), A168046(#)]` -/
def P15399884001175398966.Spec : Prop :=
  ∀ n, P15399884001175398966.a n = A254958 (n + 1)

end A254958

/-! ## A254958.P17356318158572721492

`eq[A084608(A003132(n)), A168046(n)]`
-/

namespace A254958.P17356318158572721492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254958.P17356318158572721492

namespace A254958

/-- `eq[A084608(A003132(n)), A168046(n)]` -/
def P17356318158572721492.Spec : Prop :=
  ∀ n, (P17356318158572721492.a n : ℤ) = A254958 (n + 1)

end A254958

/-! ## A254958.P13991485590711150957

`∩[A175396(n+1), A277061(n+1)]`
-/

namespace A254958.P13991485590711150957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254958.P13991485590711150957

namespace A254958

/-- `∩[A175396(n+1), A277061(n+1)]` -/
def P13991485590711150957.Spec : Prop :=
  ∀ n, (P13991485590711150957.a n : ℤ) = A254958 (n + 1)

end A254958

/-! ## A254958.P3062988907201328248

`∩[A175396(n+1), A283161(n+1)]`
-/

namespace A254958.P3062988907201328248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254958.P3062988907201328248

namespace A254958

/-- `∩[A175396(n+1), A283161(n+1)]` -/
def P3062988907201328248.Spec : Prop :=
  ∀ n, (P3062988907201328248.a n : ℤ) = A254958 (n + 1)

end A254958

/-!
# A254959: Squares not divisible by 10 with digits d_1, d_2, ... d_k such that d_1^2 + ... + d_k^2 is a square.

The programs for A254959, there is no canonical definition to state claims against.
-/

/-! ## A254959.P5005178485416684482

`∩[A067251(n+1)², A175396(n+1)]`
-/

namespace A254959.P5005178485416684482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254959.P5005178485416684482

/-! ## A254959.P10702865787854857

`filter[A061090(n+1), A360128(#)]`
-/

namespace A254959.P10702865787854857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A254959.P10702865787854857

/-! ## A254959.P9167841811928373173

`filter[A061090(n+1), A294934(#)]`
-/

namespace A254959.P9167841811928373173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A254959.P9167841811928373173

/-! ## A254959.P8808319050844501726

`filter[A061090(n+1), A294935(#)]`
-/

namespace A254959.P8808319050844501726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A254959.P8808319050844501726

/-!
# A254960: Zeroless numbers n with digits d_1, d_2, ... d_k such that d_1^3 + ... + d_k^3 is a cube.

The programs for A254960, there is no canonical definition to state claims against.
-/

/-! ## A254960.P9563272774129782099

`eq[A062996(A051801(n)), A355221(n)]`
-/

namespace A254960.P9563272774129782099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254960.P9563272774129782099

/-! ## A254960.P6066818370013784294

`A064807(A066492(n+1)^A333805(n+1))`
-/

namespace A254960.P6066818370013784294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (SequenceMachineLib.roundAway ((A066492 (n + 1) : ℚ) ^ (A333805 (n + 1) : ℤ))).toNat

end

end A254960.P6066818370013784294

/-! ## A254960.P628030989054626390

`A179988(A179988(n+1))%A052218(n+1)`
-/

namespace A254960.P628030989054626390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179988 (A179988 (n + 1)).toNat) (A052218 (n + 1))

end

end A254960.P628030989054626390

/-! ## A254960.P18340597758629453790

`A185238(∑[n-(char[2]+1)]+1)+n+1`
-/

namespace A254960.P18340597758629453790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + (n + 1 : ℤ)

end

end A254960.P18340597758629453790

/-! ## A254960.P8609243652955586335

`A032905(A061805(n+1))`
-/

namespace A254960.P8609243652955586335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032905 (A061805 (n + 1)).toNat

end

end A254960.P8609243652955586335

/-!
# A254962: Indices of hexagonal numbers (A000384) that are also centered pentagonal numbers (A005891).

The programs for A254962, the canonical program `A254962.P6927119152319776871` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254962 has offset 1).

The definition of A254962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254962.P6927119152319776871

`a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=31, a(4)=211`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254962

/-- `a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` -/
def P6927119152319776871.Spec : Prop :=
  ∀ n, P6927119152319776871.a n = A254962 (n + 1)

theorem P6927119152319776871.correct : P6927119152319776871.Spec := by
  intro n
  simp only [A254962, Nat.add_sub_cancel]

end A254962

/-! ## A254962.P15472854685586230672

`ceil(A254626(n+1)/2)`
-/

namespace A254962.P15472854685586230672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254626 (n + 1) : ℚ) / 2⌉

end

end A254962.P15472854685586230672

namespace A254962

/-- `ceil(A254626(n+1)/2)` -/
def P15472854685586230672.Spec : Prop :=
  ∀ n, P15472854685586230672.a n = A254962 (n + 1)

end A254962

/-! ## A254962.P14705471158931844327

`A227047(A047235(n+1))`
-/

namespace A254962.P14705471158931844327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227047 (A047235 (n + 1)).toNat

end

end A254962.P14705471158931844327

namespace A254962

/-- `A227047(A047235(n+1))` -/
def P14705471158931844327.Spec : Prop :=
  ∀ n, P14705471158931844327.a n = A254962 (n + 1)

end A254962

/-! ## A254962.P9126679299020307472

`ceil(A100886(A047241(n+1))/2)`
-/

namespace A254962.P9126679299020307472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100886 (A047241 (n + 1)).toNat : ℚ) / 2⌉

end

end A254962.P9126679299020307472

namespace A254962

/-- `ceil(A100886(A047241(n+1))/2)` -/
def P9126679299020307472.Spec : Prop :=
  ∀ n, P9126679299020307472.a n = A254962 (n + 1)

end A254962

/-! ## A254962.P1031280014043296709

`(A071618(A001651(n+1))+1)/2`
-/

namespace A254962.P1031280014043296709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071618 (A001651 (n + 1)).toNat + 1 : ℚ) / 2

end

end A254962.P1031280014043296709

namespace A254962

/-- `(A071618(A001651(n+1))+1)/2` -/
def P1031280014043296709.Spec : Prop :=
  ∀ n, P1031280014043296709.a n = (A254962 (n + 1) : ℚ)

end A254962

/-! ## A254962.P2835762920636335111

`(A000032(Δ[A238410(n+1)])+1)/4`
-/

namespace A254962.P2835762920636335111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (f1 (n + 1) - f1 n).toNat + 1 : ℚ) / 4

end

end A254962.P2835762920636335111

namespace A254962

/-- `(A000032(Δ[A238410(n+1)])+1)/4` -/
def P2835762920636335111.Spec : Prop :=
  ∀ n, P2835762920636335111.a n = (A254962 (n + 1) : ℚ)

end A254962

/-! ## A254962.P14774754906998771200

`A254628(n+1)/A254626(n+1)`
-/

namespace A254962.P14774754906998771200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254628 (n + 1) : ℚ) / (A254626 (n + 1) : ℚ)

end

end A254962.P14774754906998771200

namespace A254962

/-- `A254628(n+1)/A254626(n+1)` -/
def P14774754906998771200.Spec : Prop :=
  ∀ n, P14774754906998771200.a n = (A254962 (n + 1) : ℚ)

end A254962

/-!
# A254963: a(n) = n*(11*n + 3)/2.

The programs for A254963, the canonical program `A254963.P14413098843753197950` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254963 has offset 0).

The definition of A254963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n+3)/2` (program `A254963.P829621734677093084`, by `A254963.P829621734677093084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254963.P829621734677093084

`n*(11*n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254963.P829621734677093084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((11 * n + 3 : ℚ) / 2)

end

end A254963.P829621734677093084

namespace A254963

/-- `n*(11*n+3)/2` -/
def P829621734677093084.Spec : Prop :=
  ∀ n, P829621734677093084.a n = (A254963 n : ℚ)

theorem P829621734677093084.correct : P829621734677093084.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A254963, Nat.add_sub_cancel, A254963.P829621734677093084.a, A254963.P14413098843753197950.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A254963, Nat.add_sub_cancel, A254963.P829621734677093084.a, A254963.P14413098843753197950.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A254963

/-! ## A254963.P14413098843753197950

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=7, a(2)=25`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254963

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P14413098843753197950.Spec : Prop :=
  ∀ n, P14413098843753197950.a n = A254963 n

theorem P14413098843753197950.correct : P14413098843753197950.Spec := by
  intro n
  simp only [A254963]

end A254963

/-! ## A254963.P17841903200622940335

`∑[a(n-1)+11]` with `a(0)=0, a(1)=7`
-/

namespace A254963.P17841903200622940335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254963.P17841903200622940335

namespace A254963

/-- `∑[a(n-1)+11]` -/
def P17841903200622940335.Spec : Prop :=
  ∀ n, (P17841903200622940335.a n : ℤ) = A254963 n

end A254963

/-! ## A254963.P8561603782593091992

`∑[record[lcm(4, n)]+n+n+n]`
-/

namespace A254963.P8561603782593091992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254963.P8561603782593091992

namespace A254963

/-- `∑[record[lcm(4, n)]+n+n+n]` -/
def P8561603782593091992.Spec : Prop :=
  ∀ n, (P8561603782593091992.a n : ℤ) = A254963 n

end A254963

/-! ## A254963.P7725838471518098064

`abs(5*C(n, 2)+n-8*n²)`
-/

namespace A254963.P7725838471518098064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * Nat.choose n 2 + n : ℤ) - (8 * n ^ 2 : ℤ)|

end

end A254963.P7725838471518098064

namespace A254963

/-- `abs(5*C(n, 2)+n-8*n²)` -/
def P7725838471518098064.Spec : Prop :=
  ∀ n, P7725838471518098064.a n = A254963 n

end A254963

/-! ## A254963.P4791230402939639777

`A022269(n)+n`
-/

namespace A254963.P4791230402939639777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + (n : ℤ)

end

end A254963.P4791230402939639777

namespace A254963

/-- `A022269(n)+n` -/
def P4791230402939639777.Spec : Prop :=
  ∀ n, P4791230402939639777.a n = A254963 n

end A254963

/-! ## A254963.P17048195779310477732

`A081266(n)+n²`
-/

namespace A254963.P17048195779310477732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + (n ^ 2 : ℤ)

end

end A254963.P17048195779310477732

namespace A254963

/-- `A081266(n)+n²` -/
def P17048195779310477732.Spec : Prop :=
  ∀ n, P17048195779310477732.a n = A254963 n

end A254963

/-! ## A254963.P17097134330547768060

`A202803(n)+∑[n]`
-/

namespace A254963.P17097134330547768060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254963.P17097134330547768060

namespace A254963

/-- `A202803(n)+∑[n]` -/
def P17097134330547768060.Spec : Prop :=
  ∀ n, P17097134330547768060.a n = A254963 n

end A254963

/-! ## A254963.P384437576682764874

`A033580(n)-∑[n]`
-/

namespace A254963.P384437576682764874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254963.P384437576682764874

namespace A254963

/-- `A033580(n)-∑[n]` -/
def P384437576682764874.Spec : Prop :=
  ∀ n, P384437576682764874.a n = A254963 n

end A254963

/-! ## A254963.P15844175200963216843

`A022268(n)+2*n`
-/

namespace A254963.P15844175200963216843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022268 n + (2 * n : ℤ)

end

end A254963.P15844175200963216843

namespace A254963

/-- `A022268(n)+2*n` -/
def P15844175200963216843.Spec : Prop :=
  ∀ n, P15844175200963216843.a n = A254963 n

end A254963

/-! ## A254963.P5317884797202445668

`A211013(n)-3*n`
-/

namespace A254963.P5317884797202445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n - (3 * n : ℤ)

end

end A254963.P5317884797202445668

namespace A254963

/-- `A211013(n)-3*n` -/
def P5317884797202445668.Spec : Prop :=
  ∀ n, P5317884797202445668.a n = A254963 n

end A254963

/-! ## A254963.P9348486870501012768

`A226492(n)+4*n`
-/

namespace A254963.P9348486870501012768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n + (4 * n : ℤ)

end

end A254963.P9348486870501012768

namespace A254963

/-- `A226492(n)+4*n` -/
def P9348486870501012768.Spec : Prop :=
  ∀ n, P9348486870501012768.a n = A254963 n

end A254963

/-! ## A254963.P12680483669630867065

`A152740(n)-4*n`
-/

namespace A254963.P12680483669630867065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n - (4 * n : ℤ)

end

end A254963.P12680483669630867065

namespace A254963

/-- `A152740(n)-4*n` -/
def P12680483669630867065.Spec : Prop :=
  ∀ n, P12680483669630867065.a n = A254963 n

end A254963

/-! ## A254963.P4557361138485394029

`A180223(n)+5*n`
-/

namespace A254963.P4557361138485394029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180223 n + (5 * n : ℤ)

end

end A254963.P4557361138485394029

namespace A254963

/-- `A180223(n)+5*n` -/
def P4557361138485394029.Spec : Prop :=
  ∀ n, P4557361138485394029.a n = A254963 n

end A254963

/-! ## A254963.P13655722412447309745

`(A063436(n)-n²)/2`
-/

namespace A254963.P13655722412447309745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063436 n - (n ^ 2 : ℤ) : ℚ) / 2

end

end A254963.P13655722412447309745

namespace A254963

/-- `(A063436(n)-n²)/2` -/
def P13655722412447309745.Spec : Prop :=
  ∀ n, P13655722412447309745.a n = (A254963 n : ℚ)

end A254963

/-! ## A254963.P9056161009888749424

`A085473(n)-∑[n+1]`
-/

namespace A254963.P9056161009888749424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254963.P9056161009888749424

namespace A254963

/-- `A085473(n)-∑[n+1]` -/
def P9056161009888749424.Spec : Prop :=
  ∀ n, P9056161009888749424.a n = A254963 n

end A254963

/-! ## A254963.P15153476693818197166

`A022267(n)+n²+n`
-/

namespace A254963.P15153476693818197166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + (n ^ 2 + n : ℤ)

end

end A254963.P15153476693818197166

namespace A254963

/-- `A022267(n)+n²+n` -/
def P15153476693818197166.Spec : Prop :=
  ∀ n, P15153476693818197166.a n = A254963 n

end A254963

/-! ## A254963.P13956053020647771023

`∑[A160912(n+1)+n-1]`
-/

namespace A254963.P13956053020647771023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254963.P13956053020647771023

namespace A254963

/-- `∑[A160912(n+1)+n-1]` -/
def P13956053020647771023.Spec : Prop :=
  ∀ n, P13956053020647771023.a n = A254963 n

end A254963

/-!
# A254964: Indices of heptagonal numbers (A000566) that are also centered hexagonal numbers (A003215).

The programs for A254964, the canonical program `A254964.P9984557311460132011` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254964 has offset 1).

The definition of A254964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254964.P9984557311460132011

`a(n-1)+22*a(n-2)-22*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=14, a(3)=37, a(4)=301`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254964

/-- `a(n-1)+22*a(n-2)-22*a(n-3)-a(n-4)+a(n-5)` -/
def P9984557311460132011.Spec : Prop :=
  ∀ n, P9984557311460132011.a n = A254964 (n + 1)

theorem P9984557311460132011.correct : P9984557311460132011.Spec := by
  intro n
  simp only [A254964, Nat.add_sub_cancel]

end A254964

/-!
# A254965: Indices of centered hexagonal numbers (A003215) that are also heptagonal numbers (A000566).

The programs for A254965, the canonical program `A254965.P285627626886960788` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254965 has offset 1).

The definition of A254965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254965.P285627626886960788

`a(n-1)+22*a(n-2)-22*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=34, a(4)=275`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A254965

/-- `a(n-1)+22*a(n-2)-22*a(n-3)-a(n-4)+a(n-5)` -/
def P285627626886960788.Spec : Prop :=
  ∀ n, P285627626886960788.a n = A254965 (n + 1)

theorem P285627626886960788.correct : P285627626886960788.Spec := by
  intro n
  simp only [A254965, Nat.add_sub_cancel]

end A254965

/-! ## A254965.P3865997953666626819

`ceil(sqrt(A254966(n+1)/3))`
-/

namespace A254965.P3865997953666626819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A254966 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A254965.P3865997953666626819

namespace A254965

/-- `ceil(sqrt(A254966(n+1)/3))` -/
def P3865997953666626819.Spec : Prop :=
  ∀ n, P3865997953666626819.a n = A254965 (n + 1)

end A254965

/-! ## A254965.P13632711594271053331

`∑[gcd(A133285(n+1), A254782(n+1))]`
-/

namespace A254965.P13632711594271053331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133285 (n + 1)) (A254782 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254965.P13632711594271053331

namespace A254965

/-- `∑[gcd(A133285(n+1), A254782(n+1))]` -/
def P13632711594271053331.Spec : Prop :=
  ∀ n, (P13632711594271053331.a n : ℤ) = A254965 (n + 1)

end A254965

/-!
# A254966: Heptagonal numbers (A000566) that are also centered hexagonal numbers (A003215).

The programs for A254966, there is no canonical definition to state claims against.
-/

/-! ## A254966.P17341354205392856122

`A014637(floor(A254964(n+1)/2))`
-/

namespace A254966.P17341354205392856122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014637 ⌊(A254964 (n + 1) : ℚ) / 2⌋.toNat

end

end A254966.P17341354205392856122

/-! ## A254966.P11344399341321768798

`A000566(A254964(n+1))`
-/

namespace A254966.P11344399341321768798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A254964 (n + 1)).toNat

end

end A254966.P11344399341321768798

/-! ## A254966.P3955485202744522863

`∩[A000566(n), A003215(n)]`
-/

namespace A254966.P3955485202744522863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254966.P3955485202744522863

/-!
# A254969: Central terms of the triangle of iterated absolute differences of lucky numbers.

The programs for A254969, there is no canonical definition to state claims against.
-/

/-! ## A254969.P8584532339951352196

`A254967(∑[4*n])`
-/

namespace A254969.P8584532339951352196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254969.P8584532339951352196

/-! ## A254969.P5091465581159930291

`dr(A254967(2*(n²+n)))`
-/

namespace A254969.P5091465581159930291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A254967 (2 * (n ^ 2 + n)))

end

end A254969.P5091465581159930291

/-! ## A254969.P7167264136718969882

`A254967((n+1)*2*n)%5`
-/

namespace A254969.P7167264136718969882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254967 ((n + 1) * (2 * n))) 5

end

end A254969.P7167264136718969882

/-! ## A254969.P5859901487341066565

`A007953(A254967((n+1)*2*n))`
-/

namespace A254969.P5859901487341066565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A254967 ((n + 1) * (2 * n))).toNat

end

end A254969.P5859901487341066565

/-! ## A254969.P10852809088006765803

`A172307(A254967(n*2*(n+1)))`
-/

namespace A254969.P10852809088006765803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 (A254967 (n * (2 * (n + 1)))).toNat

end

end A254969.P10852809088006765803

/-! ## A254969.P1991106635370225796

`A171829(A254967(2*(n²+n))+1)`
-/

namespace A254969.P1991106635370225796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171829 (A254967 (2 * (n ^ 2 + n)) + 1).toNat

end

end A254969.P1991106635370225796

/-! ## A254969.P7123175794168030378

`A001222(2^A254967(2*(n²+n)))`
-/

namespace A254969.P7123175794168030378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A254967 (2 * (n ^ 2 + n)) : ℤ))).toNat

end

end A254969.P7123175794168030378

/-! ## A254969.P17453584600881702153

`∑{d}[A254967(2*(n²+n)), A000010(#)]`
-/

namespace A254969.P17453584600881702153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254967 (2 * (n ^ 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A254969.P17453584600881702153

/-! ## A254969.P1608314475600759369

`A000108(C(2, n+2))*A254967(2*(n²+n))`
-/

namespace A254969.P1608314475600759369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A254967 (2 * (n ^ 2 + n))

end

end A254969.P1608314475600759369

/-! ## A254969.P9908075502905053076

`A000108(gcd(n, n+1))*A254967(2*(n²+n))`
-/

namespace A254969.P9908075502905053076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A254967 (2 * (n ^ 2 + n))

end

end A254969.P9908075502905053076

/-!
# A254970: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254970, there is no canonical definition to state claims against.
-/

/-! ## A254970.P9599067975933490503

`A254978(∑[4*n]+1)`
-/

namespace A254970.P9599067975933490503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254970.P9599067975933490503

/-! ## A254970.P9325811046545505510

`record[gcd(A114327(n), A254978(n+1))]`
-/

namespace A254970.P9325811046545505510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A254978 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254970.P9325811046545505510

/-! ## A254970.P6987098261860842494

`A254978(A001844(n))+A185238(n)`
-/

namespace A254970.P6987098261860842494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A001844 n).toNat + A185238 n

end

end A254970.P6987098261860842494

/-! ## A254970.P16681946721659187039

`A254978(A001844(n))^A007318(∑[n])`
-/

namespace A254970.P16681946721659187039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254978 (A001844 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A254970.P16681946721659187039

/-! ## A254970.P5405220077755206581

`A014963(gcd(n, n+1))*A254978(A001844(n))`
-/

namespace A254970.P5405220077755206581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A254978 (A001844 n).toNat

end

end A254970.P5405220077755206581

/-!
# A254971: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254971, there is no canonical definition to state claims against.
-/

/-! ## A254971.P10096908075828632517

`A254978(∑[n]+1)`
-/

namespace A254971.P10096908075828632517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254971.P10096908075828632517

/-! ## A254971.P17845155193698831932

`record[A010054(n)*A254978(n+1)]`
-/

namespace A254971.P17845155193698831932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254971.P17845155193698831932

/-! ## A254971.P2044207017456609019

`record[A103451(n)*A254978(n+1)]`
-/

namespace A254971.P2044207017456609019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A254978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254971.P2044207017456609019

/-! ## A254971.P8506191338276816355

`record[A254978(n+1)/A022166(n)]`
-/

namespace A254971.P8506191338276816355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254978 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254971.P8506191338276816355

/-! ## A254971.P10242616322783583307

`record[A254978(n+1)/A028412(n)]`
-/

namespace A254971.P10242616322783583307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254978 (n + 1) : ℚ) / (A028412 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254971.P10242616322783583307

/-!
# A254972: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254972, there is no canonical definition to state claims against.
-/

/-! ## A254972.P14392835222365879741

`A254978(∑[n+1]+2)`
-/

namespace A254972.P14392835222365879741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254972.P14392835222365879741

/-! ## A254972.P14879779629427481280

`record[A010054(n)*A254978(n+2)]`
-/

namespace A254972.P14879779629427481280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254972.P14879779629427481280

/-! ## A254972.P3127914539225559598

`record[root(A254978(n+2), A193588(n))]`
-/

namespace A254972.P3127914539225559598
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254978 (n + 2) : ℝ) ^ (1 / (A193588 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254972.P3127914539225559598

/-! ## A254972.P6990632837377451917

`record[A254978(A133263(A008611(n)))]`
-/

namespace A254972.P6990632837377451917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254972.P6990632837377451917

/-! ## A254972.P15136214569826997864

`record[A254978(A133263(A028242(n)))]`
-/

namespace A254972.P15136214569826997864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254972.P15136214569826997864

/-!
# A254973: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254973, there is no canonical definition to state claims against.
-/

/-! ## A254973.P12638936249655471242

`A254978(∑[n+2]+4)`
-/

namespace A254973.P12638936249655471242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254973.P12638936249655471242

/-! ## A254973.P17721261381377175259

`A254978(A167614(n+1))+A025469(n)`
-/

namespace A254973.P17721261381377175259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A167614 (n + 1)).toNat + A025469 n

end

end A254973.P17721261381377175259

/-! ## A254973.P12929798508616377233

`A254978(A167614(n+1))*A291168(n)`
-/

namespace A254973.P12929798508616377233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A167614 (n + 1)).toNat * A291168 n

end

end A254973.P12929798508616377233

/-! ## A254973.P2860470405996156392

`lcm(A131561(n), A254978(A167614(n+1)))`
-/

namespace A254973.P2860470405996156392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131561 n) (A254978 (A167614 (n + 1)).toNat)

end

end A254973.P2860470405996156392

/-! ## A254973.P8414986570006709124

`or(A063524(n), A254978(A167614(n+1)))`
-/

namespace A254973.P8414986570006709124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A254978 (A167614 (n + 1)).toNat)

end

end A254973.P8414986570006709124

/-!
# A254974: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254974, there is no canonical definition to state claims against.
-/

/-! ## A254974.P8905726417109714053

`A254978(A374004(n+1))`
-/

namespace A254974.P8905726417109714053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A374004 (n + 1)).toNat

end

end A254974.P8905726417109714053

/-! ## A254974.P7141712713234217245

`A254978(A141214(n)+7)`
-/

namespace A254974.P7141712713234217245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A141214 n + 7).toNat

end

end A254974.P7141712713234217245

/-! ## A254974.P17961515066393923236

`A254978(A052905(n)+9)`
-/

namespace A254974.P17961515066393923236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A052905 n + 9).toNat

end

end A254974.P17961515066393923236

/-! ## A254974.P13608672013871710054

`A254978(A167614(n+2)+1)`
-/

namespace A254974.P13608672013871710054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A167614 (n + 2) + 1).toNat

end

end A254974.P13608672013871710054

/-! ## A254974.P16491003039872472990

`A254978(Δ[A264443(n)-n²])`
-/

namespace A254974.P16491003039872472990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (f1 (n + 1) - f1 n).toNat

end

end A254974.P16491003039872472990

/-!
# A254975: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254975, there is no canonical definition to state claims against.
-/

/-! ## A254975.P9752698563711987095

`A254978(A374005(n+1))`
-/

namespace A254975.P9752698563711987095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A374005 (n + 1)).toNat

end

end A254975.P9752698563711987095

/-! ## A254975.P216651708581844883

`A254978(A056000(n)+15)`
-/

namespace A254975.P216651708581844883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A056000 n + 15).toNat

end

end A254975.P216651708581844883

/-! ## A254975.P12264013362941391281

`A254978(eq[6, A131818(n+1)])`
-/

namespace A254975.P12264013362941391281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254975.P12264013362941391281

/-! ## A254975.P5713585921350575651

`A254978(Δ[A264443(n)])`
-/

namespace A254975.P5713585921350575651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (f1 (n + 1) - f1 n).toNat

end

end A254975.P5713585921350575651

/-! ## A254975.P3258839628180258793

`A254978(eq[3, A152157(n)])`
-/

namespace A254975.P3258839628180258793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254975.P3258839628180258793

/-!
# A254976: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254976, there is no canonical definition to state claims against.
-/

/-! ## A254976.P16459335973228535579

`A254978(A374007(n+1))`
-/

namespace A254976.P16459335973228535579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A374007 (n + 1)).toNat

end

end A254976.P16459335973228535579

/-! ## A254976.P6897764647865771957

`A254978(eq[7, A131818(n+1)])`
-/

namespace A254976.P6897764647865771957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254976.P6897764647865771957

/-! ## A254976.P7266868769249600422

`A254978(Δ[A023545(n+1)]+10)`
-/

namespace A254976.P7266868769249600422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (f1 (n + 1) - f1 n + 10).toNat

end

end A254976.P7266868769249600422

/-! ## A254976.P3055473070051210328

`A254978(A052905(n+3))`
-/

namespace A254976.P3055473070051210328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A052905 (n + 3)).toNat

end

end A254976.P3055473070051210328

/-! ## A254976.P11347286899177318687

`A254978(eq[3, A219347(n)])`
-/

namespace A254976.P11347286899177318687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254976.P11347286899177318687

/-!
# A254977: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 and no column sum 0.

The programs for A254977, there is no canonical definition to state claims against.
-/

/-! ## A254977.P162290176699128183

`A254978(A374008(n+1))`
-/

namespace A254977.P162290176699128183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A374008 (n + 1)).toNat

end

end A254977.P162290176699128183

/-! ## A254977.P11454130090374853155

`A254978(A302537(n)+27)`
-/

namespace A254977.P11454130090374853155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (A302537 n + 27).toNat

end

end A254977.P11454130090374853155

/-! ## A254977.P11603948712608279365

`A254978(eq[8, A131818(n+1)])`
-/

namespace A254977.P11603948712608279365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254977.P11603948712608279365

/-! ## A254977.P14539757604932294375

`A254978(eq[4, A219347(n)])`
-/

namespace A254977.P14539757604932294375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254977.P14539757604932294375

/-! ## A254977.P4584153084183810999

`A254978(eq[6, A193592(n)])`
-/

namespace A254977.P4584153084183810999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254978 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254977.P4584153084183810999

/-!
# A254981: a(n) is the sum of the divisors d of n such that n/d is cubefree.

The programs for A254981, the canonical program `A254981.P1738555244851722157` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254981 has offset 1).

The definition of A254981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254981.P1738555244851722157

`∑{d}[n+1, A254926(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A254981

/-- `∑{d}[n+1, A254926(#)]` -/
def P1738555244851722157.Spec : Prop :=
  ∀ n, P1738555244851722157.a n = A254981 (n + 1)

theorem P1738555244851722157.correct : P1738555244851722157.Spec := by
  intro n
  simp only [A254981, Nat.add_sub_cancel]

end A254981

/-! ## A254981.P10611354241928668074

`∑{d}[n+1, #*A212793((n+1)/#)]`
-/

namespace A254981.P10611354241928668074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A212793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P10611354241928668074

namespace A254981

/-- `∑{d}[n+1, #*A212793((n+1)/#)]` -/
def P10611354241928668074.Spec : Prop :=
  ∀ n, P10611354241928668074.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P3025148554632133040

`A062378(n+1)*A073185(n+1)`
-/

namespace A254981.P3025148554632133040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 1) * A073185 (n + 1)

end

end A254981.P3025148554632133040

namespace A254981

/-- `A062378(n+1)*A073185(n+1)` -/
def P3025148554632133040.Spec : Prop :=
  ∀ n, P3025148554632133040.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P13793805668636605851

`∑{d}[n+1, A000010(#)*A073184((n+1)/#)]`
-/

namespace A254981.P13793805668636605851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P13793805668636605851

namespace A254981

/-- `∑{d}[n+1, A000010(#)*A073184((n+1)/#)]` -/
def P13793805668636605851.Spec : Prop :=
  ∀ n, P13793805668636605851.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P4655395157430726729

`∑{d}[n+1, A056624(#)*A063659((n+1)/#)]`
-/

namespace A254981.P4655395157430726729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P4655395157430726729

namespace A254981

/-- `∑{d}[n+1, A056624(#)*A063659((n+1)/#)]` -/
def P4655395157430726729.Spec : Prop :=
  ∀ n, P4655395157430726729.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P18187287345830220441

`∑{d}[n+1, A092520(#)*A130107((n+1)/#)]`
-/

namespace A254981.P18187287345830220441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092520 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P18187287345830220441

namespace A254981

/-- `∑{d}[n+1, A092520(#)*A130107((n+1)/#)]` -/
def P18187287345830220441.Spec : Prop :=
  ∀ n, P18187287345830220441.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P5422101628663065096

`∑{d}[n+1, A007431(#)*A226602((n+1)/#)]`
-/

namespace A254981.P5422101628663065096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A226602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P5422101628663065096

namespace A254981

/-- `∑{d}[n+1, A007431(#)*A226602((n+1)/#)]` -/
def P5422101628663065096.Spec : Prop :=
  ∀ n, P5422101628663065096.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P16568962183527153996

`∑{d}[n+1, A001615(#)*A307423((n+1)/#)]`
-/

namespace A254981.P16568962183527153996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A307423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P16568962183527153996

namespace A254981

/-- `∑{d}[n+1, A001615(#)*A307423((n+1)/#)]` -/
def P16568962183527153996.Spec : Prop :=
  ∀ n, P16568962183527153996.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P12639960832217022640

`∑{d}[n+1, A060648(#)*A307428((n+1)/#)]`
-/

namespace A254981.P12639960832217022640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A307428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P12639960832217022640

namespace A254981

/-- `∑{d}[n+1, A060648(#)*A307428((n+1)/#)]` -/
def P12639960832217022640.Spec : Prop :=
  ∀ n, P12639960832217022640.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P2428700662696631602

`∑{d}[n+1, A076752(#)*A307425((n+1)/#)]`
-/

namespace A254981.P2428700662696631602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P2428700662696631602

namespace A254981

/-- `∑{d}[n+1, A076752(#)*A307425((n+1)/#)]` -/
def P2428700662696631602.Spec : Prop :=
  ∀ n, P2428700662696631602.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P13302115814395154433

`∑{d}[n+1, A060983(#)*A334657((n+1)/#)]`
-/

namespace A254981.P13302115814395154433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060983 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P13302115814395154433

namespace A254981

/-- `∑{d}[n+1, A060983(#)*A334657((n+1)/#)]` -/
def P13302115814395154433.Spec : Prop :=
  ∀ n, P13302115814395154433.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P2104717736220259978

`∑{d}[n+1, A078429(#)*A369306((n+1)/#)]`
-/

namespace A254981.P2104717736220259978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078429 d * A369306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A254981.P2104717736220259978

namespace A254981

/-- `∑{d}[n+1, A078429(#)*A369306((n+1)/#)]` -/
def P2104717736220259978.Spec : Prop :=
  ∀ n, P2104717736220259978.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P2537415569437136360

`A003557(A003557(n+1))*A073185(n+1)`
-/

namespace A254981.P2537415569437136360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat * A073185 (n + 1)

end

end A254981.P2537415569437136360

namespace A254981

/-- `A003557(A003557(n+1))*A073185(n+1)` -/
def P2537415569437136360.Spec : Prop :=
  ∀ n, P2537415569437136360.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P9642225901642536386

`A062378(n+1)*A073183(A007948(n+1))`
-/

namespace A254981.P9642225901642536386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 1) * A073183 (A007948 (n + 1)).toNat

end

end A254981.P9642225901642536386

namespace A254981

/-- `A062378(n+1)*A073183(A007948(n+1))` -/
def P9642225901642536386.Spec : Prop :=
  ∀ n, P9642225901642536386.a n = A254981 (n + 1)

end A254981

/-! ## A254981.P11746712383469677427

`A003557(A003557(n+1))*A073183(A007948(n+1))`
-/

namespace A254981.P11746712383469677427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat * A073183 (A007948 (n + 1)).toNat

end

end A254981.P11746712383469677427

namespace A254981

/-- `A003557(A003557(n+1))*A073183(A007948(n+1))` -/
def P11746712383469677427.Spec : Prop :=
  ∀ n, P11746712383469677427.a n = A254981 (n + 1)

end A254981

/-!
# A254982: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254982, there is no canonical definition to state claims against.
-/

/-! ## A254982.P2697879222560550508

`A257189(∑[n]+1)`
-/

namespace A254982.P2697879222560550508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257189 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254982.P2697879222560550508

/-! ## A254982.P4409856245380632789

`record[A010054(n)*A257189(n+1)]`
-/

namespace A254982.P4409856245380632789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254982.P4409856245380632789

/-! ## A254982.P16839400513356454467

`record[A103451(n)*A257189(n+1)]`
-/

namespace A254982.P16839400513356454467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A257189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254982.P16839400513356454467

/-! ## A254982.P18301771870461371143

`record[A257189(n+1)/A193632(n)]`
-/

namespace A254982.P18301771870461371143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257189 (n + 1) : ℚ) / (A193632 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254982.P18301771870461371143

/-! ## A254982.P18186810659971303895

`record[root(A257189(n+1), A007318(n))]`
-/

namespace A254982.P18186810659971303895
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257189 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254982.P18186810659971303895

/-!
# A254983: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254983, there is no canonical definition to state claims against.
-/

/-! ## A254983.P16526570415986546874

`A254989(∑[n+1]+2)`
-/

namespace A254983.P16526570415986546874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254983.P16526570415986546874

/-! ## A254983.P13001213994324448423

`record[gcd(A244125(n), A254989(n+2))]`
-/

namespace A254983.P13001213994324448423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244125 n) (A254989 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254983.P13001213994324448423

/-! ## A254983.P17038773073587144782

`record[gcd(A229534(n+1), A254989(n+3))]`
-/

namespace A254983.P17038773073587144782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229534 (n + 1)) (A254989 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254983.P17038773073587144782

/-! ## A254983.P928180857391549554

`record[A254989(Δ[A003453(n+5)])]`
-/

namespace A254983.P928180857391549554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254983.P928180857391549554

/-! ## A254983.P13862024890941154689

`record[root(A254989(n+2), A007318(n+2))]`
-/

namespace A254983.P13862024890941154689
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254989 (n + 2) : ℝ) ^ (1 / (A007318 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254983.P13862024890941154689

/-!
# A254984: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254984, there is no canonical definition to state claims against.
-/

/-! ## A254984.P16329713041519871912

`A254989(∑[n+2]+4)`
-/

namespace A254984.P16329713041519871912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254984.P16329713041519871912

/-! ## A254984.P1187895789890168396

`A254989(A167614(n+1))+A025444(n)`
-/

namespace A254984.P1187895789890168396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A167614 (n + 1)).toNat + A025444 n

end

end A254984.P1187895789890168396

/-! ## A254984.P18235992616322375477

`A254989(A167614(n+1))+A178780(n)`
-/

namespace A254984.P18235992616322375477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A167614 (n + 1)).toNat + A178780 n

end

end A254984.P18235992616322375477

/-! ## A254984.P16374513840503717353

`A254989(A167614(n+1))+A185245(n)`
-/

namespace A254984.P16374513840503717353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A167614 (n + 1)).toNat + A185245 n

end

end A254984.P16374513840503717353

/-! ## A254984.P10956679756620810148

`A254989(A167614(n+1))+A185284(n)`
-/

namespace A254984.P10956679756620810148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A167614 (n + 1)).toNat + A185284 n

end

end A254984.P10956679756620810148

/-!
# A254985: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254985, there is no canonical definition to state claims against.
-/

/-! ## A254985.P13832838059195821328

`A254989(A374004(n+1))`
-/

namespace A254985.P13832838059195821328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A374004 (n + 1)).toNat

end

end A254985.P13832838059195821328

/-! ## A254985.P3499315679957397152

`A254989(A141214(n)+7)`
-/

namespace A254985.P3499315679957397152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A141214 n + 7).toNat

end

end A254985.P3499315679957397152

/-! ## A254985.P8631579894084639784

`A254989(A055999(n)+10)`
-/

namespace A254985.P8631579894084639784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A055999 n + 10).toNat

end

end A254985.P8631579894084639784

/-! ## A254985.P13400738394385452265

`A254989(A167614(n+2)+1)`
-/

namespace A254985.P13400738394385452265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A167614 (n + 2) + 1).toNat

end

end A254985.P13400738394385452265

/-! ## A254985.P921267634756205621

`A254989(A166136(n+2)-2)`
-/

namespace A254985.P921267634756205621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A166136 (n + 2) - 2).toNat

end

end A254985.P921267634756205621

/-!
# A254986: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254986, there is no canonical definition to state claims against.
-/

/-! ## A254986.P6410916507125563215

`A254989(A374005(n+1))`
-/

namespace A254986.P6410916507125563215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A374005 (n + 1)).toNat

end

end A254986.P6410916507125563215

/-! ## A254986.P3022369821513118968

`A254989(A167499(n+3))`
-/

namespace A254986.P3022369821513118968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A167499 (n + 3)).toNat

end

end A254986.P3022369821513118968

/-! ## A254986.P5472413826888983287

`A254989(A155212(n)+13)`
-/

namespace A254986.P5472413826888983287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A155212 n + 13).toNat

end

end A254986.P5472413826888983287

/-! ## A254986.P5779608677115467435

`A254989(A000096(n+3)+6)`
-/

namespace A254986.P5779608677115467435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A000096 (n + 3) + 6).toNat

end

end A254986.P5779608677115467435

/-! ## A254986.P7646781109563432270

`A254989(eq[6, A131818(n+1)])`
-/

namespace A254986.P7646781109563432270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254986.P7646781109563432270

/-!
# A254987: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254987, there is no canonical definition to state claims against.
-/

/-! ## A254987.P3116666427636938568

`A254989(A374007(n+1))`
-/

namespace A254987.P3116666427636938568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A374007 (n + 1)).toNat

end

end A254987.P3116666427636938568

/-! ## A254987.P11213262230924951049

`A254989(A166136(n+4))`
-/

namespace A254987.P11213262230924951049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A166136 (n + 4)).toNat

end

end A254987.P11213262230924951049

/-! ## A254987.P713159689957320477

`A254989(eq[7, A131818(n+1)])`
-/

namespace A254987.P713159689957320477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254987.P713159689957320477

/-! ## A254987.P4482403997401627578

`A254989(eq[3, A219347(n)])`
-/

namespace A254987.P4482403997401627578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254987.P4482403997401627578

/-! ## A254987.P2047831085646081894

`A254989(eq[5, A193592(n)])`
-/

namespace A254987.P2047831085646081894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254987.P2047831085646081894

/-!
# A254988: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254988, there is no canonical definition to state claims against.
-/

/-! ## A254988.P1845082832149771823

`A254989(A374008(n+1))`
-/

namespace A254988.P1845082832149771823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A374008 (n + 1)).toNat

end

end A254988.P1845082832149771823

/-! ## A254988.P6440616623935269186

`A254989(A000124(n+6)+6)`
-/

namespace A254988.P6440616623935269186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (A000124 (n + 6) + 6).toNat

end

end A254988.P6440616623935269186

/-! ## A254988.P14106097107113188355

`A254989(eq[8, A131818(n+1)])`
-/

namespace A254988.P14106097107113188355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254988.P14106097107113188355

/-! ## A254988.P4720284314238895609

`A254989(eq[4, A219347(n)])`
-/

namespace A254988.P4720284314238895609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254988.P4720284314238895609

/-! ## A254988.P16682345300066538165

`A254989(eq[6, A193592(n)])`
-/

namespace A254988.P16682345300066538165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254989 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254988.P16682345300066538165

/-!
# A254990: 4-bonacci word. Fixed point of morphism 0->01, 1->02, 2->03, 3->0.

The programs for A254990, there is no canonical definition to state claims against.
-/

/-! ## A254990.P7651816147105255870

`A317954(n+1)-1`
-/

namespace A254990.P7651816147105255870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317954 (n + 1) - 1

end

end A254990.P7651816147105255870

/-! ## A254990.P13509064209763844233

`A001538(n)%A317954(n+1)`
-/

namespace A254990.P13509064209763844233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A317954 (n + 1))

end

end A254990.P13509064209763844233

/-! ## A254990.P17259967070896353386

`A002146(n)%A317954(n+1)`
-/

namespace A254990.P17259967070896353386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002146 n) (A317954 (n + 1))

end

end A254990.P17259967070896353386

/-! ## A254990.P3297315467715697893

`A002148(n)%A317954(n+1)`
-/

namespace A254990.P3297315467715697893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A317954 (n + 1))

end

end A254990.P3297315467715697893

/-! ## A254990.P17147893585292940246

`A017653(n)%A317954(n+1)`
-/

namespace A254990.P17147893585292940246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017653 n) (A317954 (n + 1))

end

end A254990.P17147893585292940246

/-! ## A254990.P10085908800422969510

`A017655(n)%A317954(n+1)`
-/

namespace A254990.P10085908800422969510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017655 n) (A317954 (n + 1))

end

end A254990.P10085908800422969510

/-! ## A254990.P4367790843243002954

`A017657(n)%A317954(n+1)`
-/

namespace A254990.P4367790843243002954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017657 n) (A317954 (n + 1))

end

end A254990.P4367790843243002954

/-! ## A254990.P14230194303451438770

`A033300(n)%A317954(n+1)`
-/

namespace A254990.P14230194303451438770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033300 n) (A317954 (n + 1))

end

end A254990.P14230194303451438770

/-! ## A254990.P30925441402705684

`A065532(n)%A317954(n+1)`
-/

namespace A254990.P30925441402705684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065532 n) (A317954 (n + 1))

end

end A254990.P30925441402705684

/-! ## A254990.P1015601480842526294

`A073609(n)%A317954(n+1)`
-/

namespace A254990.P1015601480842526294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073609 n) (A317954 (n + 1))

end

end A254990.P1015601480842526294

/-! ## A254990.P10471287649176091721

`A094319(n)%A317954(n+1)`
-/

namespace A254990.P10471287649176091721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094319 n) (A317954 (n + 1))

end

end A254990.P10471287649176091721

/-! ## A254990.P4315341684692897277

`A152951(n)%A317954(n+1)`
-/

namespace A254990.P4315341684692897277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152951 n) (A317954 (n + 1))

end

end A254990.P4315341684692897277

/-! ## A254990.P8556590604678466694

`A158463(n)%A317954(n+1)`
-/

namespace A254990.P8556590604678466694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158463 n) (A317954 (n + 1))

end

end A254990.P8556590604678466694

/-! ## A254990.P5311153007413713612

`A183010(n)%A317954(n+1)`
-/

namespace A254990.P5311153007413713612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183010 n) (A317954 (n + 1))

end

end A254990.P5311153007413713612

/-! ## A254990.P15701623204221020778

`A000353(n+1)%A317954(n+1)`
-/

namespace A254990.P15701623204221020778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000353 (n + 1)) (A317954 (n + 1))

end

end A254990.P15701623204221020778

/-! ## A254990.P6468228567890121857

`A002515(n+1)%A317954(n+1)`
-/

namespace A254990.P6468228567890121857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002515 (n + 1)) (A317954 (n + 1))

end

end A254990.P6468228567890121857

/-! ## A254990.P6056262461673050712

`A005385(n+1)%A317954(n+1)`
-/

namespace A254990.P6056262461673050712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (A317954 (n + 1))

end

end A254990.P6056262461673050712

/-! ## A254990.P17966645482131328700

`A119859(n+1)%A317954(n+1)`
-/

namespace A254990.P17966645482131328700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119859 (n + 1)) (A317954 (n + 1))

end

end A254990.P17966645482131328700

/-! ## A254990.P13769403383678043475

`A180475(n+1)%A317954(n+1)`
-/

namespace A254990.P13769403383678043475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180475 (n + 1)) (A317954 (n + 1))

end

end A254990.P13769403383678043475

/-!
# A254991: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally and vertically.

The programs for A254991, there is no canonical definition to state claims against.
-/

/-! ## A254991.P12781680147775395970

`A258511(∑[n]+1)`
-/

namespace A254991.P12781680147775395970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254991.P12781680147775395970

/-! ## A254991.P10349679892084631401

`record[root(A258511(n+1), A007318(n))]`
-/

namespace A254991.P10349679892084631401
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258511 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254991.P10349679892084631401

/-! ## A254991.P16228182949462975776

`record[gcd(A215083(n), A258511(n+1))]`
-/

namespace A254991.P16228182949462975776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215083 n) (A258511 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254991.P16228182949462975776

/-! ## A254991.P4330270312126593731

`record[A258511(n+1)/A241171(n+1)]`
-/

namespace A254991.P4330270312126593731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258511 (n + 1) : ℚ) / (A241171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254991.P4330270312126593731

/-! ## A254991.P9181474728854135852

`record[root(A258511(n+1), A128077(n+1))]`
-/

namespace A254991.P9181474728854135852
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A258511 (n + 1) : ℝ) ^ (1 / (A128077 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254991.P9181474728854135852

/-!
# A254992: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally and vertically.

The programs for A254992, there is no canonical definition to state claims against.
-/

/-! ## A254992.P12368340151909457455

`A254998(∑[n+1]+2)`
-/

namespace A254992.P12368340151909457455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254992.P12368340151909457455

/-! ## A254992.P10525844339837087480

`record[A254998(abs(A201163(n)))]`
-/

namespace A254992.P10525844339837087480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254992.P10525844339837087480

/-! ## A254992.P3462710424979750744

`record[A254998(A000096(val(n+1, 2)+1))]`
-/

namespace A254992.P3462710424979750744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254992.P3462710424979750744

/-! ## A254992.P264467625597440527

`record[A254998(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A254992.P264467625597440527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254992.P264467625597440527

/-! ## A254992.P17915757483231397091

`A254998(A000096(n+1))%A316929(2*(n+2))`
-/

namespace A254992.P17915757483231397091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254998 (A000096 (n + 1)).toNat) (A316929 (2 * (n + 2)))

end

end A254992.P17915757483231397091

/-!
# A254993: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally and vertically.

The programs for A254993, there is no canonical definition to state claims against.
-/

/-! ## A254993.P15067546639312447387

`A254998(∑[n+2]+4)`
-/

namespace A254993.P15067546639312447387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254993.P15067546639312447387

/-! ## A254993.P3280122458322898569

`A254998(A167614(n+1))+A235145(n)`
-/

namespace A254993.P3280122458322898569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A167614 (n + 1)).toNat + A235145 n

end

end A254993.P3280122458322898569

/-! ## A254993.P16336081872340301880

`lcm(A025454(n), A254998(A167614(n+1)))`
-/

namespace A254993.P16336081872340301880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025454 n) (A254998 (A167614 (n + 1)).toNat)

end

end A254993.P16336081872340301880

/-! ## A254993.P16650442514282262258

`or(A000038(n), A254998(A167614(n+1)))`
-/

namespace A254993.P16650442514282262258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A254998 (A167614 (n + 1)).toNat)

end

end A254993.P16650442514282262258

/-! ## A254993.P17386553351116330882

`A304571(n+1)+A254998(A167614(n+1))`
-/

namespace A254993.P17386553351116330882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304571 (n + 1) + A254998 (A167614 (n + 1)).toNat

end

end A254993.P17386553351116330882

/-!
# A254994: Number of (n+2) X (4+2) 0..1 arrays with every 3 X 3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally and vertically.

The programs for A254994, there is no canonical definition to state claims against.
-/

/-! ## A254994.P659014415833502324

`A254998(A052905(n)+9)`
-/

namespace A254994.P659014415833502324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A052905 n + 9).toNat

end

end A254994.P659014415833502324

/-! ## A254994.P2761192264032178915

`A254998(A167614(n+2)+1)`
-/

namespace A254994.P2761192264032178915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A167614 (n + 2) + 1).toNat

end

end A254994.P2761192264032178915

/-! ## A254994.P7015758303849067194

`A254998(Δ[A264443(n)-n²])`
-/

namespace A254994.P7015758303849067194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (f1 (n + 1) - f1 n).toNat

end

end A254994.P7015758303849067194

/-! ## A254994.P1772160104096049478

`A254998(A000096(n+3)+1-n)`
-/

namespace A254994.P1772160104096049478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A000096 (n + 3) + 1 - (n : ℤ)).toNat

end

end A254994.P1772160104096049478

/-! ## A254994.P17676836924430115410

`A254998(A141214(n+1))`
-/

namespace A254994.P17676836924430115410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A141214 (n + 1)).toNat

end

end A254994.P17676836924430115410

/-!
# A254995: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally and vertically.

The programs for A254995, there is no canonical definition to state claims against.
-/

/-! ## A254995.P8973639928044099272

`A254998(A167499(n+3))`
-/

namespace A254995.P8973639928044099272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A167499 (n + 3)).toNat

end

end A254995.P8973639928044099272

/-! ## A254995.P18059628732783920929

`A254998(A056000(n)+15)`
-/

namespace A254995.P18059628732783920929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A056000 n + 15).toNat

end

end A254995.P18059628732783920929

/-! ## A254995.P2229546197633125909

`A254998(eq[7, A066657(n)])`
-/

namespace A254995.P2229546197633125909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254995.P2229546197633125909

/-! ## A254995.P2857968110141689756

`A254998(A000096(n+3)+6)`
-/

namespace A254995.P2857968110141689756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A000096 (n + 3) + 6).toNat

end

end A254995.P2857968110141689756

/-! ## A254995.P13598422848429556620

`A254998(Δ[A264443(n)])`
-/

namespace A254995.P13598422848429556620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (f1 (n + 1) - f1 n).toNat

end

end A254995.P13598422848429556620

/-!
# A254996: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally and vertically.

The programs for A254996, there is no canonical definition to state claims against.
-/

/-! ## A254996.P13024892618864841493

`A254998(eq[7, A131818(n+1)])`
-/

namespace A254996.P13024892618864841493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254996.P13024892618864841493

/-! ## A254996.P16656417094078811654

`A254998(A374007(n+1))`
-/

namespace A254996.P16656417094078811654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A374007 (n + 1)).toNat

end

end A254996.P16656417094078811654

/-! ## A254996.P767860460993240959

`A254998(A052905(n+3))`
-/

namespace A254996.P767860460993240959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A052905 (n + 3)).toNat

end

end A254996.P767860460993240959

/-! ## A254996.P7994486780834206140

`A254998(eq[3, A219347(n)])`
-/

namespace A254996.P7994486780834206140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254996.P7994486780834206140

/-! ## A254996.P16550389471682862647

`A254998(eq[5, A193592(n)])`
-/

namespace A254996.P16550389471682862647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254996.P16550389471682862647

/-!
# A254997: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the diagonal and antidiagonal minus the sum of the medians of the central row and column nondecreasing horizontally and vertically.

The programs for A254997, there is no canonical definition to state claims against.
-/

/-! ## A254997.P13361946511326634686

`A254998(eq[11, A066657(n)])`
-/

namespace A254997.P13361946511326634686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254997.P13361946511326634686

/-! ## A254997.P16602944842819463726

`A254998(eq[8, A131818(n+1)])`
-/

namespace A254997.P16602944842819463726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254997.P16602944842819463726

/-! ## A254997.P13106606290200791712

`A254998(A374008(n+1))`
-/

namespace A254997.P13106606290200791712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (A374008 (n + 1)).toNat

end

end A254997.P13106606290200791712

/-! ## A254997.P16602150450193513046

`A254998(eq[4, A219347(n)])`
-/

namespace A254997.P16602150450193513046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254997.P16602150450193513046

/-! ## A254997.P11746778613925127730

`A254998(eq[5, A332954(n)])`
-/

namespace A254997.P11746778613925127730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254997.P11746778613925127730

