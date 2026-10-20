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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C013
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
# A272400: Square array read by antidiagonals upwards in which T(n,k) is the product of the n-th noncomposite number and the sum of the divisors of k, n>=1, k>=1.

The programs for A272400, there is no canonical definition to state claims against.
-/

/-! ## A272400.P18289202130635868642

`A122111(A130321(n))*A245093(n+1)`
-/

namespace A272400.P18289202130635868642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A130321 n).toNat * A245093 (n + 1)

end

end A272400.P18289202130635868642

/-! ## A272400.P16115059935206118130

`A005180(A004736(n+1))*A245093(n+1)`
-/

namespace A272400.P16115059935206118130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (A004736 (n + 1)).toNat * A245093 (n + 1)

end

end A272400.P16115059935206118130

/-! ## A272400.P11320127122096347690

`A000203(A002260(n+1))*A242424(A130321(n))`
-/

namespace A272400.P11320127122096347690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A242424 (A130321 n).toNat

end

end A272400.P11320127122096347690

/-! ## A272400.P3434923540053225347

`A000203(A002260(n+1))*A005180(A004736(n+1))`
-/

namespace A272400.P3434923540053225347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A005180 (A004736 (n + 1)).toNat

end

end A272400.P3434923540053225347

/-! ## A272400.P14515786989618925510

`A000203(A002260(n+1))*A008578((A099375(n)+1)/2)`
-/

namespace A272400.P14515786989618925510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A008578 (SequenceMachineLib.roundAway ((A099375 n + 1 : ℚ) / 2)).toNat

end

end A272400.P14515786989618925510

/-! ## A272400.P9378392437850620410

`A000203(A002262(n)+1)*A008578((A099375(n)+1)/2)`
-/

namespace A272400.P9378392437850620410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002262 n + 1).toNat * A008578 (SequenceMachineLib.roundAway ((A099375 n + 1 : ℚ) / 2)).toNat

end

end A272400.P9378392437850620410

/-!
# A272402: Numbers k such that (26*10^k - 131)/3 is prime.

The programs for A272402, there is no canonical definition to state claims against.
-/

/-! ## A272402.P3295784989064558488

`A316843(A122109(n))`
-/

namespace A272402.P3295784989064558488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A122109 n).toNat

end

end A272402.P3295784989064558488

/-! ## A272402.P15714567426105466147

`A316846(A305876(n))`
-/

namespace A272402.P15714567426105466147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A305876 n).toNat

end

end A272402.P15714567426105466147

/-! ## A272402.P8450774140985038418

`∑[A337135(A189282(n))]`
-/

namespace A272402.P8450774140985038418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (A189282 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272402.P8450774140985038418

/-! ## A272402.P6600488724944958981

`A338006(A018141(n+1))`
-/

namespace A272402.P6600488724944958981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A018141 (n + 1)).toNat

end

end A272402.P6600488724944958981

/-! ## A272402.P15297396186848962104

`A338006(A067247(n+1))`
-/

namespace A272402.P15297396186848962104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (A067247 (n + 1)).toNat

end

end A272402.P15297396186848962104

/-!
# A272403: Numbers n = concat(x,y) such that (x - phi(x)) + (y - phi(y)) = n - phi(n), where n - phi(n) is the Euler cototient function of n.

The programs for A272403, there is no canonical definition to state claims against.
-/

/-! ## A272403.P12143995435021995373

`∩[A176882(n+1), A299791(n+1)]`
-/

namespace A272403.P12143995435021995373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272403.P12143995435021995373

/-! ## A272403.P4247783258561896317

`A176882(A044821(n+1)%A132275(3*n+5))`
-/

namespace A272403.P4247783258561896317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176882 (Int.tmod (A044821 (n + 1)) (A132275 (3 * n + 5))).toNat

end

end A272403.P4247783258561896317

/-!
# A272404: Primes p == 1 (mod 3) for which A261029(26*p) = 3.

The programs for A272404, there is no canonical definition to state claims against.
-/

/-! ## A272404.P564140667470528029

`A002476(lt[A266480(n), A176624(n+1)])`
-/

namespace A272404.P564140667470528029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272404.P564140667470528029

/-! ## A272404.P801490294864486231

`A002476(lt[A162396(n+1), A347587(3*n+4)])`
-/

namespace A272404.P801490294864486231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347587 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272404.P801490294864486231

/-! ## A272404.P10887972081181656930

`A002476(eq[A025811(n), A092278(n)])`
-/

namespace A272404.P10887972081181656930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272404.P10887972081181656930

/-! ## A272404.P8464196738015807568

`A272406(eq[A025811(n), A092278(n)])`
-/

namespace A272404.P8464196738015807568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272406 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272404.P8464196738015807568

/-! ## A272404.P3073938321340605407

`A272409(eq[A025811(n), A092278(n)])`
-/

namespace A272404.P3073938321340605407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272409 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272404.P3073938321340605407

/-!
# A272405: Numbers n such that sum of the divisors of n is not of the form x^2 + y^2 + z^2 where x, y, z are integers.

The programs for A272405, there is no canonical definition to state claims against.
-/

/-! ## A272405.P6619975318285707738

`lt[A000164(∑{d}[n, #]), 1]`
-/

namespace A272405.P6619975318285707738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A272405.P6619975318285707738

/-! ## A272405.P16718104483843331499

`eq[0, A000164(∑{d}[n+1, #])]+1`
-/

namespace A272405.P16718104483843331499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272405.P16718104483843331499

/-! ## A272405.P2408305287596596791

`eq[A000038(n), A000164(∑{d}[n, #])]`
-/

namespace A272405.P2408305287596596791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272405.P2408305287596596791

/-! ## A272405.P17453277085764676403

`eq[1, A000041(A000164(∑{d}[n, #])+1)]`
-/

namespace A272405.P17453277085764676403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000164 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272405.P17453277085764676403

/-! ## A272405.P4830033781976027331

`eq[1, A000084(A000164(∑{d}[n, #])+1)]`
-/

namespace A272405.P4830033781976027331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000084 (A000164 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272405.P4830033781976027331

/-! ## A272405.P8587131218550312236

`eq[1, A020639(A000164(∑{d}[n, #])+1)]`
-/

namespace A272405.P8587131218550312236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000164 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272405.P8587131218550312236

/-! ## A272405.P17575848032291504092

`eq[1, A258037(A000164(∑{d}[n, #])+1)]`
-/

namespace A272405.P17575848032291504092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (A000164 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272405.P17575848032291504092

/-! ## A272405.P2718471596449268518

`eq[2, A084598(A000164(∑{d}[n, #])+1)]`
-/

namespace A272405.P2718471596449268518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084598 (A000164 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272405.P2718471596449268518

/-! ## A272405.P11303158736279905368

`eq[4, A002828(A000203(A233583(n+1)))]`
-/

namespace A272405.P11303158736279905368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000203 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272405.P11303158736279905368

/-!
# A272406: Primes p == 1 (mod 3) for which A261029(34*p) = 2.

The programs for A272406, there is no canonical definition to state claims against.
-/

/-! ## A272406.P16046417045525382307

`A002476(∑[2^A185284(n)])`
-/

namespace A272406.P16046417045525382307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A185284 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A272406.P16046417045525382307

/-! ## A272406.P1107364341122902989

`A002476(∑[A260897(n+3)!])`
-/

namespace A272406.P1107364341122902989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A260897 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272406.P1107364341122902989

/-! ## A272406.P13403712687575623187

`A002476(∑[A090764(A185284(n))])`
-/

namespace A272406.P13403712687575623187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090764 (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272406.P13403712687575623187

/-! ## A272406.P5748562677175212405

`A002476(lt[A109389(2*n), A324696(n+1)])`
-/

namespace A272406.P5748562677175212405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272406.P5748562677175212405

/-! ## A272406.P16805284789145360419

`p?[A016777(n)-A151878(A039960(n))]`
-/

namespace A272406.P16805284789145360419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A151878 (A039960 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272406.P16805284789145360419

/-!
# A272407: Primes p == 1 (mod 3) for which A261029(38*p) = 3.

The programs for A272407, there is no canonical definition to state claims against.
-/

/-! ## A272407.P3892966659908523518

`p?[3*n+1-A010054(A056000(n))]`
-/

namespace A272407.P3892966659908523518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A010054 (A056000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272407.P3892966659908523518

/-! ## A272407.P15612047439024479918

`A002476(A293754(2*n+1)-n)`
-/

namespace A272407.P15612047439024479918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (A293754 (2 * n + 1) - (n : ℤ)).toNat

end

end A272407.P15612047439024479918

/-! ## A272407.P5174263832940602014

`∩[A034017(n+1), A000040(A219227(n+4))]`
-/

namespace A272407.P5174263832940602014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A219227 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272407.P5174263832940602014

/-! ## A272407.P15501359562946229571

`record[A007645(A061339(n)+A000523(2*n+5))]`
-/

namespace A272407.P15501359562946229571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (A061339 n + A000523 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272407.P15501359562946229571

/-!
# A272412: Numbers n such that sigma(n) is a Fibonacci number.

The programs for A272412, there is no canonical definition to state claims against.
-/

/-! ## A272412.P14685056557855489842

`eq[1, A007895(A000203(n+1))]+1`
-/

namespace A272412.P14685056557855489842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272412.P14685056557855489842

/-! ## A272412.P16956499225752469483

`eq[A000119(A039653(n)), A054977(n)]`
-/

namespace A272412.P16956499225752469483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272412.P16956499225752469483

/-! ## A272412.P11308765297596856057

`eq[A000119(A039653(n)), A057427(n)]`
-/

namespace A272412.P11308765297596856057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272412.P11308765297596856057

/-! ## A272412.P1894619134175038073

`eq[A000007(n), A095792(A039653(n))]`
-/

namespace A272412.P1894619134175038073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272412.P1894619134175038073

/-! ## A272412.P18245051150148015332

`eq[A000038(n), A095792(A039653(n))]`
-/

namespace A272412.P18245051150148015332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095792 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272412.P18245051150148015332

/-!
# A272416: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A272416, there is no canonical definition to state claims against.
-/

/-! ## A272416.P8216226043555923617

`A272313(n+1)-A270220(n)`
-/

namespace A272416.P8216226043555923617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (n + 1) - A270220 n

end

end A272416.P8216226043555923617

/-! ## A272416.P1104368579391535612

`Δ[∑[A272313(n)]-A270217(n)]`
-/

namespace A272416.P1104368579391535612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A270217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272416.P1104368579391535612

/-! ## A272416.P14589697843928825912

`A272313(n+1)-Δ[A270217(n)]`
-/

namespace A272416.P14589697843928825912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272313 (n + 1) - (f1 (n + 1) - f1 n)

end

end A272416.P14589697843928825912

/-! ## A272416.P8107759003721224137

`A272419(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272416.P8107759003721224137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272419 (n - 1) + a (n - 1)

end

end A272416.P8107759003721224137

/-! ## A272416.P11370288832569648286

`Δ[A272418(n)]-A272419(n)`
-/

namespace A272416.P11370288832569648286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272419 n

end

end A272416.P11370288832569648286

/-! ## A272416.P2127159100139545559

`A272418(n+1)-(A272419(n)+A272418(n))`
-/

namespace A272416.P2127159100139545559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272418 (n + 1) - (A272419 n + A272418 n)

end

end A272416.P2127159100139545559

/-! ## A272416.P2554545361796867414

`A270217(n)+A272418(n)-A272316(n)`
-/

namespace A272416.P2554545361796867414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270217 n + (A272418 n - A272316 n)

end

end A272416.P2554545361796867414

/-! ## A272416.P1477500112997947272

`Δ[A272316(n)-A270217(n)]`
-/

namespace A272416.P1477500112997947272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n - A270217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272416.P1477500112997947272

/-! ## A272416.P9258809423473630134

`Δ[A272316(n)]-A270220(n)`
-/

namespace A272416.P9258809423473630134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270220 n

end

end A272416.P9258809423473630134

/-!
# A272417: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A272417, the canonical program `A272417.P15488189795061203812` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272417 has offset 0).

The definition of A272417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272417.P16175589080182866006

`∑[ogf((1+x+2x^2)/(1-6x+8x^2))]`
-/

namespace A272417.P16175589080182866006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272417.P16175589080182866006

namespace A272417

/-- `∑[ogf((1+x+2x^2)/(1-6x+8x^2))]` -/
def P16175589080182866006.Spec : Prop :=
  ∀ n, P16175589080182866006.a n = A272417 n

end A272417

/-! ## A272417.P12376361160871549492

`4*(2^n+a(n-1)-1)` with `a(0)=1`
-/

namespace A272417.P12376361160871549492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((2 ^ n : ℤ) + (a (n - 1) - 1))

end

end A272417.P12376361160871549492

namespace A272417

/-- `4*(2^n+a(n-1)-1)` -/
def P12376361160871549492.Spec : Prop :=
  ∀ n, P12376361160871549492.a n = A272417 n

end A272417

/-! ## A272417.P4704473679264877791

`4*(2^n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A272417.P4704473679264877791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((2 ^ n : ℤ) - (1 - a (n - 1)))

end

end A272417.P4704473679264877791

namespace A272417

/-- `4*(2^n-(1-a(n-1)))` -/
def P4704473679264877791.Spec : Prop :=
  ∀ n, P4704473679264877791.a n = A272417 n

end A272417

/-! ## A272417.P11674746611843473881

`lcm(4, a(n-1)+2^n-1)` with `a(0)=1, a(1)=8`
-/

namespace A272417.P11674746611843473881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Int.lcm 4 ((a (n - 1) : ℤ) + ((2 ^ n : ℤ) - 1))

end

end A272417.P11674746611843473881

namespace A272417

/-- `lcm(4, a(n-1)+2^n-1)` -/
def P11674746611843473881.Spec : Prop :=
  ∀ n, (P11674746611843473881.a n : ℤ) = A272417 n

end A272417

/-! ## A272417.P2672437157786552666

`4*(a(n-1)+A000918(n)+1)` with `a(0)=1`
-/

namespace A272417.P2672437157786552666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + (A000918 n + 1))

end

end A272417.P2672437157786552666

namespace A272417

/-- `4*(a(n-1)+A000918(n)+1)` -/
def P2672437157786552666.Spec : Prop :=
  ∀ n, P2672437157786552666.a n = A272417 n

end A272417

/-! ## A272417.P5515601718322695792

`4*(a(n-1)-(n-A132736(n)))` with `a(0)=1`
-/

namespace A272417.P5515601718322695792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) - ((n : ℤ) - A132736 n))

end

end A272417.P5515601718322695792

namespace A272417

/-- `4*(a(n-1)-(n-A132736(n)))` -/
def P5515601718322695792.Spec : Prop :=
  ∀ n, P5515601718322695792.a n = A272417 n

end A272417

/-! ## A272417.P15488189795061203812

`4/3-2^(2+n)+11*4^n/3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272417

/-- `4/3-2^(2+n)+11*4^n/3` -/
def P15488189795061203812.Spec : Prop :=
  ∀ n, P15488189795061203812.a n = (A272417 n : ℚ)

end A272417

/-!
# A272418: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A272418, there is no canonical definition to state claims against.
-/

/-! ## A272418.P6971907941768231833

`∑[A272416(n)]`
-/

namespace A272418.P6971907941768231833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272418.P6971907941768231833

/-! ## A272418.P3970662535285315624

`A272416(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272418.P3970662535285315624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272416 n + a (A023443 n).toNat

end

end A272418.P3970662535285315624

/-! ## A272418.P5972910512204666321

`a(n-1)+A057427(n)*A272416(n)` with `a(0)=1`
-/

namespace A272418.P5972910512204666321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A272416 n

end

end A272418.P5972910512204666321

/-! ## A272418.P8498423346383625868

`∑[∑[A272419(n)]+1-A272419(n)]`
-/

namespace A272418.P8498423346383625868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272419 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272419 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272418.P8498423346383625868

/-! ## A272418.P8434699511173388909

`A272316(n)+A272416(n)-A270217(n)`
-/

namespace A272418.P8434699511173388909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n + (A272416 n - A270217 n)

end

end A272418.P8434699511173388909

/-! ## A272418.P2022419828588512587

`∑[Δ[A272316(n)]-A270220(n)]`
-/

namespace A272418.P2022419828588512587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A270220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272418.P2022419828588512587

/-! ## A272418.P10471493045739419984

`A272316(n+1)-A270217(n+1)`
-/

namespace A272418.P10471493045739419984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 (n + 1) - A270217 (n + 1)

end

end A272418.P10471493045739419984

/-!
# A272419: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

The programs for A272419, there is no canonical definition to state claims against.
-/

/-! ## A272419.P3931789410660088865

`Δ[A272416(n)]`
-/

namespace A272419.P3931789410660088865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272419.P3931789410660088865

/-! ## A272419.P17346674941592684313

`A272416(n+1)-A272416(n)`
-/

namespace A272419.P17346674941592684313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (n + 1) - A272416 n

end

end A272419.P17346674941592684313

/-! ## A272419.P12151620070954258254

`A272416(A004442(n))-A271285(n)`
-/

namespace A272419.P12151620070954258254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272416 (A004442 n).toNat - A271285 n

end

end A272419.P12151620070954258254

/-! ## A272419.P5859531440230043389

`Δ[Δ[A272316(n)-A270217(n)]]`
-/

namespace A272419.P5859531440230043389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n - A270217 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272419.P5859531440230043389

/-! ## A272419.P18019863439052182453

`Δ[Δ[A272316(n)]-A270220(n)]`
-/

namespace A272419.P18019863439052182453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272316 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A270220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272419.P18019863439052182453

/-!
# A272420: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A272420, there is no canonical definition to state claims against.
-/

/-! ## A272420.P4288212306249803950

`A253078(2^n-1)`
-/

namespace A272420.P4288212306249803950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253078 (2 ^ n - 1)

end

end A272420.P4288212306249803950

/-! ## A272420.P13952911494545053349

`record[A253078(A218616(n))]`
-/

namespace A272420.P13952911494545053349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253078 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272420.P13952911494545053349

/-! ## A272420.P15902581359729610873

`record[A253078(A227351(n))]`
-/

namespace A272420.P15902581359729610873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253078 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272420.P15902581359729610873

/-! ## A272420.P14349825444631875541

`record[A253078(Δ[A228693(n)])]`
-/

namespace A272420.P14349825444631875541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253078 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272420.P14349825444631875541

/-! ## A272420.P13085675795507698302

`and(-1, A253078(A000225(n)))`
-/

namespace A272420.P13085675795507698302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A253078 (A000225 n).toNat)

end

end A272420.P13085675795507698302

/-!
# A272421: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A272421, there is no canonical definition to state claims against.
-/

/-! ## A272421.P18418998968728970920

`∑[A253078(n)]`
-/

namespace A272421.P18418998968728970920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272421.P18418998968728970920

/-! ## A272421.P10624090587098010531

`a(n-1)+A253078(n)+A000007(n)` with `a(0)=1`
-/

namespace A272421.P10624090587098010531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A253078 n + A000007 n)

end

end A272421.P10624090587098010531

/-! ## A272421.P17071549198823800087

`∑[A272422(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272421.P17071549198823800087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272422 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272421.P17071549198823800087

/-! ## A272421.P8380277862730947293

`∑[A181385(A016825(n))-A273119(n)]`
-/

namespace A272421.P8380277862730947293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272421.P8380277862730947293

/-! ## A272421.P2501860729658045471

`∑[A008740(A008458(n))-A273119(n)]`
-/

namespace A272421.P2501860729658045471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272421.P2501860729658045471

/-! ## A272421.P1760293464494215465

`∑[A008740(A008458(n))]-A273121(n)`
-/

namespace A272421.P1760293464494215465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273121 n

end

end A272421.P1760293464494215465

/-! ## A272421.P7150553117770739494

`a(n-1)+A253078(n)%A321110(n+3)` with `a(0)=1`
-/

namespace A272421.P7150553117770739494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A253078 n) (A321110 (n + 3))

end

end A272421.P7150553117770739494

/-! ## A272421.P8323068091698212469

`A000027(a(n-1))+A253078(n)` with `a(0)=1`
-/

namespace A272421.P8323068091698212469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + A253078 n

end

end A272421.P8323068091698212469

/-!
# A272422: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 470", based on the 5-celled von Neumann neighborhood.

The programs for A272422, there is no canonical definition to state claims against.
-/

/-! ## A272422.P8936903589913817714

`Δ[A253078(n)]`
-/

namespace A272422.P8936903589913817714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272422.P8936903589913817714

/-! ## A272422.P4059990352185287636

`A253078(n+1)-A253078(n)`
-/

namespace A272422.P4059990352185287636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253078 (n + 1) - A253078 n

end

end A272422.P4059990352185287636

/-! ## A272422.P17910998309933515448

`Δ[A181385(A016825(n))-A273119(n)]`
-/

namespace A272422.P17910998309933515448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272422.P17910998309933515448

/-! ## A272422.P10121021914091994127

`Δ[A008740(A008458(n))-A273119(n)]`
-/

namespace A272422.P10121021914091994127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272422.P10121021914091994127

/-! ## A272422.P1144214748355142243

`Δ[A008740(A008458(n))]-A273122(n)`
-/

namespace A272422.P1144214748355142243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273122 n

end

end A272422.P1144214748355142243

/-!
# A272423: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A272423, there is no canonical definition to state claims against.
-/

/-! ## A272423.P314996466313787014

`A272426(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272423.P314996466313787014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272426 (n - 1) + a (n - 1)

end

end A272423.P314996466313787014

/-! ## A272423.P12534912495548557530

`Δ[A272425(n)]-A272426(n)`
-/

namespace A272423.P12534912495548557530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272426 n

end

end A272423.P12534912495548557530

/-! ## A272423.P10683324674254233680

`A272425(n+1)-(A272426(n)+A272425(n))`
-/

namespace A272423.P10683324674254233680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272425 (n + 1) - (A272426 n + A272425 n)

end

end A272423.P10683324674254233680

/-! ## A272423.P11661601503751771066

`∑[A272426(log2(A011782(n)))]-2`
-/

namespace A272423.P11661601503751771066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272426 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A272423.P11661601503751771066

/-!
# A272424: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A272424, there is no canonical definition to state claims against.
-/

/-! ## A272424.P8213468706511970893

`A272423(2^n-1)`
-/

namespace A272424.P8213468706511970893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 (2 ^ n - 1)

end

end A272424.P8213468706511970893

/-! ## A272424.P16843105227996830250

`record[A272423(A135481(n))]`
-/

namespace A272424.P16843105227996830250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272424.P16843105227996830250

/-! ## A272424.P17674807683020593925

`record[A272423(A173787(n))]`
-/

namespace A272424.P17674807683020593925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272424.P17674807683020593925

/-! ## A272424.P6148708822047533504

`record[A272423(A218616(n))]`
-/

namespace A272424.P6148708822047533504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272424.P6148708822047533504

/-! ## A272424.P3180033577795041244

`record[A272423(A227351(n))]`
-/

namespace A272424.P3180033577795041244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272424.P3180033577795041244

/-!
# A272425: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A272425, there is no canonical definition to state claims against.
-/

/-! ## A272425.P14312155944794053969

`∑[A272423(n)]`
-/

namespace A272425.P14312155944794053969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272425.P14312155944794053969

/-! ## A272425.P15758874971641082376

`A272423(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272425.P15758874971641082376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272423 n + a (A023443 n).toNat

end

end A272425.P15758874971641082376

/-! ## A272425.P9531338521173475113

`a(n-1)+A272423(n)+A000007(n)` with `a(0)=1, a(1)=5`
-/

namespace A272425.P9531338521173475113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (A272423 n + A000007 n)

end

end A272425.P9531338521173475113

/-! ## A272425.P13694416645688026284

`a(n-1)+A272423(n)%A017163(n)` with `a(0)=1, a(1)=5`
-/

namespace A272425.P13694416645688026284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + Int.tmod (A272423 n) (A017163 n)

end

end A272425.P13694416645688026284

/-! ## A272425.P719328873578169472

`A272423(n)+a(A025480(A004275(n)))` with `a(0)=1`
-/

namespace A272425.P719328873578169472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272423 n + a (A025480 (A004275 n).toNat).toNat

end

end A272425.P719328873578169472

/-! ## A272425.P6097351417077623865

`∑[∑[A272426(n)]+1-A272426(n)]`
-/

namespace A272425.P6097351417077623865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272426 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272425.P6097351417077623865

/-!
# A272426: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 473", based on the 5-celled von Neumann neighborhood.

The programs for A272426, there is no canonical definition to state claims against.
-/

/-! ## A272426.P6310114134839606515

`Δ[A272423(n)]`
-/

namespace A272426.P6310114134839606515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272426.P6310114134839606515

/-! ## A272426.P13210095649697376630

`A272423(n+1)-A272423(n)`
-/

namespace A272426.P13210095649697376630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272423 (n + 1) - A272423 n

end

end A272426.P13210095649697376630

/-! ## A272426.P5510356240480207962

`A272423(n+1)+A272423(n)/A153881(2*n+5)`
-/

namespace A272426.P5510356240480207962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272423 (n + 1) : ℚ) + (A272423 n : ℚ) / (A153881 (2 * n + 5) : ℚ)

end

end A272426.P5510356240480207962

/-!
# A272428: Expansion of the continued fraction x/(1-pi(2)*x/(1-pi(3)*x/(1-pi(4)*x/(1-...)))).

The programs for A272428, there is no canonical definition to state claims against.
-/

/-! ## A272428.P938085176762853193

`∑{e}[5^n, A003319(#)]`
-/

namespace A272428.P938085176762853193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003319 (Nat.factorization (f1 n) p)

end

end A272428.P938085176762853193

/-! ## A272428.P11718426548434133095

`A003319(n)%A057573(n)`
-/

namespace A272428.P11718426548434133095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003319 n) (A057573 n)

end

end A272428.P11718426548434133095

/-! ## A272428.P2452208777800579704

`-(A167894(n)%A326904(n))`
-/

namespace A272428.P2452208777800579704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A167894 n) (A326904 n)

end

end A272428.P2452208777800579704

/-! ## A272428.P8073105749961388397

`A010815(A118044(n))+A003319(n)`
-/

namespace A272428.P8073105749961388397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A118044 n).toNat + A003319 n

end

end A272428.P8073105749961388397

/-! ## A272428.P6205448906701230914

`A010815(A390657(n))+A003319(n)`
-/

namespace A272428.P6205448906701230914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A390657 n).toNat + A003319 n

end

end A272428.P6205448906701230914

/-!
# A272431: Number of ordered set partitions of {1,2,...,n} such that no part has the same size as any of its three immediate predecessors.

The programs for A272431, there is no canonical definition to state claims against.
-/

/-! ## A272431.P11827749723332434205

`A261959(∑[n+4]+2)`
-/

namespace A272431.P11827749723332434205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A272431.P11827749723332434205

/-! ## A272431.P9457214917064256609

`or(1, A261959(A034856(n+3)-2))`
-/

namespace A272431.P9457214917064256609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261959 (A034856 (n + 3) - 2).toNat)

end

end A272431.P9457214917064256609

/-! ## A272431.P11701235001388378185

`A261959(A034856(n+3)-2)+A000007(n+1)`
-/

namespace A272431.P11701235001388378185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A034856 (n + 3) - 2).toNat + A000007 (n + 1)

end

end A272431.P11701235001388378185

/-! ## A272431.P17816596877316026973

`A261959(A034856(n+3)-2)+and(8, A004737(n+1))`
-/

namespace A272431.P17816596877316026973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A034856 (n + 3) - 2).toNat + Int.land 8 (A004737 (n + 1))

end

end A272431.P17816596877316026973

/-! ## A272431.P4785240858063996336

`(A014634(n+1)-2)%2*A261959(A034856(n+3)-2)`
-/

namespace A272431.P4785240858063996336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014634 (n + 1) - 2) 2 * A261959 (A034856 (n + 3) - 2).toNat

end

end A272431.P4785240858063996336

/-!
# A272432: Number of ordered set partitions of {1,2,...,n} such that no part has the same size as any of its four immediate predecessors.

The programs for A272432, there is no canonical definition to state claims against.
-/

/-! ## A272432.P15093485792259572489

`A261959(A052905(n+2))`
-/

namespace A272432.P15093485792259572489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A052905 (n + 2)).toNat

end

end A272432.P15093485792259572489

/-! ## A272432.P3421511982418222086

`A261959(A055999(n+2)+1)`
-/

namespace A272432.P3421511982418222086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A055999 (n + 2) + 1).toNat

end

end A272432.P3421511982418222086

/-! ## A272432.P12322434921014764800

`A261959(A034856(n+3)+n+2)`
-/

namespace A272432.P12322434921014764800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A034856 (n + 3) + (n + 2 : ℤ)).toNat

end

end A272432.P12322434921014764800

/-! ## A272432.P5051178280834156059

`A261959(A167614(n+2)+A005408(n))`
-/

namespace A272432.P5051178280834156059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A167614 (n + 2) + A005408 n).toNat

end

end A272432.P5051178280834156059

/-! ## A272432.P2850844396289988968

`A261959(A253145(n+2)+A004277(n+2))`
-/

namespace A272432.P2850844396289988968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A253145 (n + 2) + A004277 (n + 2)).toNat

end

end A272432.P2850844396289988968

/-!
# A272433: Number of ordered set partitions of {1,2,...,n} such that no part has the same size as any of its five immediate predecessors.

The programs for A272433, there is no canonical definition to state claims against.
-/

/-! ## A272433.P18198484725478467166

`A261959(A055999(n+3))`
-/

namespace A272433.P18198484725478467166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A055999 (n + 3)).toNat

end

end A272433.P18198484725478467166

/-! ## A272433.P11292632070565679431

`A261959(Δ[A023551(n+1)])`
-/

namespace A272433.P11292632070565679431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (f1 (n + 1) - f1 n).toNat

end

end A272433.P11292632070565679431

/-! ## A272433.P16523991798897855631

`A261959(A167499(n+3)+2*n)`
-/

namespace A272433.P16523991798897855631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A272433.P16523991798897855631

/-! ## A272433.P6381093157735510249

`A261959(A167614(n+3)+A004277(n+1))`
-/

namespace A272433.P6381093157735510249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A167614 (n + 3) + A004277 (n + 1)).toNat

end

end A272433.P6381093157735510249

/-!
# A272435: Number of n-ominoes in n X n grid (i.e., rookwise connected sets of n cells in a square array with n rows and n columns).

The programs for A272435, there is no canonical definition to state claims against.
-/

/-! ## A272435.P583918895804239975

`A219642(n*5^n+1)`
-/

namespace A272435.P583918895804239975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 (n * 5 ^ n + 1)

end

end A272435.P583918895804239975

/-!
# A272436: Semiprimes such that sum of digits equals product of digits.

The programs for A272436, there is no canonical definition to state claims against.
-/

/-! ## A272436.P9792690297267870014

`filter[A034710(n+1), A064911(#)]`
-/

namespace A272436.P9792690297267870014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A272436.P9792690297267870014

/-! ## A272436.P12201629716355090045

`filter[A066307(n+1), A064911(#)]`
-/

namespace A272436.P12201629716355090045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A272436.P12201629716355090045

/-! ## A272436.P11396197365737830546

`filter[A066307(n+1), A101040(#)]`
-/

namespace A272436.P11396197365737830546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A272436.P11396197365737830546

/-! ## A272436.P9445790114923169921

`∩[A001358(n+1), A034710(n+1)]`
-/

namespace A272436.P9445790114923169921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272436.P9445790114923169921

/-! ## A272436.P2956149016188519495

`∩[A034710(n+1), A112381(n+1)]`
-/

namespace A272436.P2956149016188519495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272436.P2956149016188519495

/-!
# A272437: Nonnegative numbers n such that abs(-66n^3 + 3845n^2 - 60897n + 251831) is prime.

The programs for A272437, there is no canonical definition to state claims against.
-/

/-! ## A272437.P17695094261218640515

`lt[A194095(n+1), A298028(A346635(n+1))]`
-/

namespace A272437.P17695094261218640515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298028 (A346635 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272437.P17695094261218640515

/-! ## A272437.P7775642989794222058

`lt[A024327(A002153(n+1)), 8]`
-/

namespace A272437.P7775642989794222058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A002153 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272437.P7775642989794222058

/-! ## A272437.P17111147803955531367

`lt[A108602(A098395(n+1)), 9]`
-/

namespace A272437.P17111147803955531367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A098395 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272437.P17111147803955531367

/-! ## A272437.P6944970020916501123

`∑[ceil(A014535(n)/A000043(n+1))]`
-/

namespace A272437.P6944970020916501123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014535 n : ℚ) / (A000043 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272437.P6944970020916501123

/-! ## A272437.P1513676246794576246

`lt[A000217(n), A006218(A314993(n))]`
-/

namespace A272437.P1513676246794576246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A314993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272437.P1513676246794576246

/-! ## A272437.P11658985497148429642

`lt[A000607(n), A000203(A121023(n+1))]`
-/

namespace A272437.P11658985497148429642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A121023 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272437.P11658985497148429642

/-! ## A272437.P13558659481825752233

`lt[A001859(n), A001615(A233561(n+1))]`
-/

namespace A272437.P13558659481825752233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A233561 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272437.P13558659481825752233

/-! ## A272437.P11826673741125612007

`lt[A036033(n), A038026(A291636(n+1))]`
-/

namespace A272437.P11826673741125612007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038026 (A291636 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272437.P11826673741125612007

/-! ## A272437.P12841767211027526466

`lt[A000041(n), A176069(A196271(n+1))]`
-/

namespace A272437.P12841767211027526466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176069 (A196271 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272437.P12841767211027526466

/-! ## A272437.P9057011606506382749

`lt[A331530(A057354(n)), A048275(n+1)]`
-/

namespace A272437.P9057011606506382749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331530 (A057354 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272437.P9057011606506382749

/-!
# A272439: Sum of positive divisors of A000032(n).

The programs for A272439, the canonical program `A272439.P9688275424147345473` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272439 has offset 0).

The definition of A272439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272439.P9688275424147345473

`A000203(A000032(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272439

/-- `A000203(A000032(n))` -/
def P9688275424147345473.Spec : Prop :=
  ∀ n, P9688275424147345473.a n = A272439 n

theorem P9688275424147345473.correct : P9688275424147345473.Spec := by
  intro n
  simp only [A272439]

end A272439

/-! ## A272439.P388032108449829400

`∑{d}[floor((-ϕ)^n)+1, #]`
-/

namespace A272439.P388032108449829400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-Real.goldenRatio) ^ n⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A272439.P388032108449829400

namespace A272439

/-- `∑{d}[floor((-ϕ)^n)+1, #]` -/
def P388032108449829400.Spec : Prop :=
  ∀ n, (P388032108449829400.a n : ℤ) = A272439 n

end A272439

/-! ## A272439.P15364240517293618526

`2*∑{d}[a(n-1)+a(n-2), #/2]` with `a(0)=2, a(1)=1`
-/

namespace A272439.P15364240517293618526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2)

end

end A272439.P15364240517293618526

namespace A272439

/-- `2*∑{d}[a(n-1)+a(n-2), #/2]` -/
def P15364240517293618526.Spec : Prop :=
  ∀ n, P15364240517293618526.a n = (A272439 n : ℚ)

end A272439

/-! ## A272439.P2184666338930903170

`round(sqrt(∑{d}[A061084(n+1), #]²+1))`
-/

namespace A272439.P2184666338930903170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2 + 1 : ℕ) : ℝ))

end

end A272439.P2184666338930903170

namespace A272439

/-- `round(sqrt(∑{d}[A061084(n+1), #]²+1))` -/
def P2184666338930903170.Spec : Prop :=
  ∀ n, P2184666338930903170.a n = A272439 n

end A272439

/-! ## A272439.P10227985816266324050

`∑{d}[A000032(n), #]/A288120(n)`
-/

namespace A272439.P10227985816266324050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / (A288120 n : ℚ)

end

end A272439.P10227985816266324050

namespace A272439

/-- `∑{d}[A000032(n), #]/A288120(n)` -/
def P10227985816266324050.Spec : Prop :=
  ∀ n, P10227985816266324050.a n = (A272439 n : ℚ)

end A272439

/-!
# A272441: Primes with a prime number of binary digits.

The programs for A272441, the canonical program `A272441.P11204430094904168973` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272441 has offset 1).

The definition of A272441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1052 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272441.P11204430094904168973

`filter[A380788(n+1), A010051(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A272441

/-- `filter[A380788(n+1), A010051(#)]` -/
def P11204430094904168973.Spec : Prop :=
  ∀ n, P11204430094904168973.a n = A272441 (n + 1)

theorem P11204430094904168973.correct : P11204430094904168973.Spec := by
  intro n
  simp only [A272441, Nat.add_sub_cancel]

end A272441

/-! ## A272441.P12854974941126934283

`∩[A000040(n+1), A380788(n+1)]`
-/

namespace A272441.P12854974941126934283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272441.P12854974941126934283

namespace A272441

/-- `∩[A000040(n+1), A380788(n+1)]` -/
def P12854974941126934283.Spec : Prop :=
  ∀ n, (P12854974941126934283.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P989775355745286029

`∩[A008578(n+1), A380788(n+1)]`
-/

namespace A272441.P989775355745286029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272441.P989775355745286029

namespace A272441

/-- `∩[A008578(n+1), A380788(n+1)]` -/
def P989775355745286029.Spec : Prop :=
  ∀ n, (P989775355745286029.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P14748373614456181591

`∩[A158611(n+1), A380788(n+1)]`
-/

namespace A272441.P14748373614456181591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272441.P14748373614456181591

namespace A272441

/-- `∩[A158611(n+1), A380788(n+1)]` -/
def P14748373614456181591.Spec : Prop :=
  ∀ n, (P14748373614456181591.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P4917284775139348498

`∩[A182986(n+1), A380788(n+1)]`
-/

namespace A272441.P4917284775139348498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272441.P4917284775139348498

namespace A272441

/-- `∩[A182986(n+1), A380788(n+1)]` -/
def P4917284775139348498.Spec : Prop :=
  ∀ n, (P4917284775139348498.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P12434082092423708463

`∩[A189710(n+1), A380788(n+1)]`
-/

namespace A272441.P12434082092423708463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272441.P12434082092423708463

namespace A272441

/-- `∩[A189710(n+1), A380788(n+1)]` -/
def P12434082092423708463.Spec : Prop :=
  ∀ n, (P12434082092423708463.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P18345316698034209205

`eq[2, ∑{e}[n*A070939(n), #]]`
-/

namespace A272441.P18345316698034209205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070939 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272441.P18345316698034209205

namespace A272441

/-- `eq[2, ∑{e}[n*A070939(n), #]]` -/
def P18345316698034209205.Spec : Prop :=
  ∀ n, (P18345316698034209205.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P917181541208430093

`filter[A380788(n+1), A080339(#)]`
-/

namespace A272441.P917181541208430093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A272441.P917181541208430093

namespace A272441

/-- `filter[A380788(n+1), A080339(#)]` -/
def P917181541208430093.Spec : Prop :=
  ∀ n, P917181541208430093.a n = A272441 (n + 1)

end A272441

/-! ## A272441.P4601882075163792970

`eq[A050340(A070939(n)), A105700(n)]`
-/

namespace A272441.P4601882075163792970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050340 (A070939 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272441.P4601882075163792970

namespace A272441

/-- `eq[A050340(A070939(n)), A105700(n)]` -/
def P4601882075163792970.Spec : Prop :=
  ∀ n, (P4601882075163792970.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P4042153984930547220

`∩[A240960(n+1), A380788(n+1)]`
-/

namespace A272441.P4042153984930547220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272441.P4042153984930547220

namespace A272441

/-- `∩[A240960(n+1), A380788(n+1)]` -/
def P4042153984930547220.Spec : Prop :=
  ∀ n, (P4042153984930547220.a n : ℤ) = A272441 (n + 1)

end A272441

/-! ## A272441.P9656294812027050691

`eq[A003415(n), A112970(A070939(n))]`
-/

namespace A272441.P9656294812027050691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112970 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272441.P9656294812027050691

namespace A272441

/-- `eq[A003415(n), A112970(A070939(n))]` -/
def P9656294812027050691.Spec : Prop :=
  ∀ n, (P9656294812027050691.a n : ℤ) = A272441 (n + 1)

end A272441

/-!
# A272443: Nonnegative numbers n such that abs(n^5 - 99n^4 + 3588n^3 - 56822n^2 + 348272n - 286397) is prime.

The programs for A272443, there is no canonical definition to state claims against.
-/

/-! ## A272443.P3668386690408134296

`lt[A073270(A334966(n+1)), A293654(n+1)]`
-/

namespace A272443.P3668386690408134296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073270 (A334966 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P3668386690408134296

/-! ## A272443.P8287634727312480421

`lt[A193231(A112683(n+1)), A139612(n)+1]`
-/

namespace A272443.P8287634727312480421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A112683 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P8287634727312480421

/-! ## A272443.P7131116308869726130

`lt[A193231(A112683(n+1)), A139827(n+1)]`
-/

namespace A272443.P7131116308869726130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A112683 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P7131116308869726130

/-! ## A272443.P17132639044974039141

`lt[A082493(A000009(n)), A191113(2*n+1)]`
-/

namespace A272443.P17132639044974039141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082493 (A000009 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191113 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P17132639044974039141

/-! ## A272443.P4817931582550232143

`lt[A026593(A369715(n+3)), A182751(n+5)]`
-/

namespace A272443.P4817931582550232143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026593 (A369715 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182751 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P4817931582550232143

/-! ## A272443.P11167547040000264070

`lt[A053261(n), A269597(A145064(3*n+4))]`
-/

namespace A272443.P11167547040000264070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269597 (A145064 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P11167547040000264070

/-! ## A272443.P7446162600832834693

`lt[A074985(2*n+3), A274362(A176347(n+3))]`
-/

namespace A272443.P7446162600832834693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274362 (A176347 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P7446162600832834693

/-! ## A272443.P3340758051484685271

`lt[A026797(A195770(n+5)), A127285(2*(n+2))]`
-/

namespace A272443.P3340758051484685271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (A195770 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127285 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P3340758051484685271

/-! ## A272443.P18170632478187932130

`lt[A023438(n), A073051(n+1)²]`
-/

namespace A272443.P18170632478187932130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073051 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272443.P18170632478187932130

/-!
# A272446: Numbers n such that A054640(n) is not divisible by n.

The programs for A272446, there is no canonical definition to state claims against.
-/

/-! ## A272446.P1944822973688425835

`eq[A000695(A014963(n+1)), A214878(n)]`
-/

namespace A272446.P1944822973688425835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A014963 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272446.P1944822973688425835

/-!
# A272447: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A272447, there is no canonical definition to state claims against.
-/

/-! ## A272447.P13805270146844449506

`A272450(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272447.P13805270146844449506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272450 (n - 1) + a (n - 1)

end

end A272447.P13805270146844449506

/-! ## A272447.P5901348216249762799

`Δ[A272449(n)]-A272450(n)`
-/

namespace A272447.P5901348216249762799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272450 n

end

end A272447.P5901348216249762799

/-! ## A272447.P11794116216689588335

`A272450(n-1)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A272447.P11794116216689588335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272450 (n - 1) - (A000038 n - a (n - 1))

end

end A272447.P11794116216689588335

/-! ## A272447.P13510328682908722217

`A272449(n+1)-(A272450(n)+A272449(n))`
-/

namespace A272447.P13510328682908722217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272449 (n + 1) - (A272450 n + A272449 n)

end

end A272447.P13510328682908722217

/-! ## A272447.P708962485259743518

`A272450(n-1)-(A008683(A008574(n))-1)*a(n-1)` with `a(0)=1`
-/

namespace A272447.P708962485259743518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272450 (n - 1) - (A008683 (A008574 n).toNat - 1) * a (n - 1)

end

end A272447.P708962485259743518

/-!
# A272448: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A272448, there is no canonical definition to state claims against.
-/

/-! ## A272448.P627376020990429638

`A272447(2^n-1)`
-/

namespace A272448.P627376020990429638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 (2 ^ n - 1)

end

end A272448.P627376020990429638

/-! ## A272448.P7942852048417552484

`record[A272447(A173787(n))]`
-/

namespace A272448.P7942852048417552484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272448.P7942852048417552484

/-! ## A272448.P17440871176240238224

`record[A272447(A218616(n))]`
-/

namespace A272448.P17440871176240238224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272448.P17440871176240238224

/-! ## A272448.P6896468025980609801

`record[A272447(A255565(n))]`
-/

namespace A272448.P6896468025980609801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272448.P6896468025980609801

/-! ## A272448.P5544868860799243359

`record[A272447(A303765(n))]`
-/

namespace A272448.P5544868860799243359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272448.P5544868860799243359

/-!
# A272449: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A272449, there is no canonical definition to state claims against.
-/

/-! ## A272449.P14883822970615300380

`∑[∑[A272450(n)]+1-A272450(n)]`
-/

namespace A272449.P14883822970615300380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272450 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272449.P14883822970615300380

/-! ## A272449.P9873649901352551016

`∑[A272447(n)]`
-/

namespace A272449.P9873649901352551016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272449.P9873649901352551016

/-! ## A272449.P1936595555982280021

`A272447(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A272449.P1936595555982280021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272447 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A272449.P1936595555982280021

/-! ## A272449.P13880481122943024288

`a(n-1)+A272447(n)%A016754(n)` with `a(0)=1`
-/

namespace A272449.P13880481122943024288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272447 n) (A016754 n)

end

end A272449.P13880481122943024288

/-! ## A272449.P1325693206159217310

`A272447(lcm(n, A040001(n)))+a(n-1)` with `a(0)=1`
-/

namespace A272449.P1325693206159217310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272447 (Int.lcm (n : ℤ) (A040001 n)) + a (n - 1)

end

end A272449.P1325693206159217310

/-! ## A272449.P14913347901206209204

`a(n-1)+A272447(n)+A008683(16*(n+1))` with `a(0)=1`
-/

namespace A272449.P14913347901206209204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272447 n + A008683 (16 * (n + 1)))

end

end A272449.P14913347901206209204

/-!
# A272450: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

The programs for A272450, there is no canonical definition to state claims against.
-/

/-! ## A272450.P3911850197000104731

`Δ[A272447(n)]`
-/

namespace A272450.P3911850197000104731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272450.P3911850197000104731

/-! ## A272450.P2242681575484021305

`A272447(n+1)-A272447(n)`
-/

namespace A272450.P2242681575484021305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272447 (n + 1) - A272447 n

end

end A272450.P2242681575484021305

/-!
# A272451: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A272451, there is no canonical definition to state claims against.
-/

/-! ## A272451.P6958067967726857484

`A272454(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272451.P6958067967726857484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272454 (n - 1) + a (n - 1)

end

end A272451.P6958067967726857484

/-! ## A272451.P14154254029911373811

`Δ[A272453(n)]-A272454(n)`
-/

namespace A272451.P14154254029911373811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272454 n

end

end A272451.P14154254029911373811

/-! ## A272451.P5786311983134368304

`A272453(n+1)-(A272454(n)+A272453(n))`
-/

namespace A272451.P5786311983134368304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272453 (n + 1) - (A272454 n + A272453 n)

end

end A272451.P5786311983134368304

/-! ## A272451.P15562051409429632889

`A181385(A016825(n))-A272746(n)`
-/

namespace A272451.P15562051409429632889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272746 n

end

end A272451.P15562051409429632889

/-! ## A272451.P13659982808010785298

`A008740(A008458(n))-A272746(n)`
-/

namespace A272451.P13659982808010785298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272746 n

end

end A272451.P13659982808010785298

/-! ## A272451.P13610101359578463827

`(2*n+1)²-A272746(n)%A099014(n+1)`
-/

namespace A272451.P13610101359578463827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - Int.tmod (A272746 n) (A099014 (n + 1))

end

end A272451.P13610101359578463827

/-!
# A272452: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A272452, there is no canonical definition to state claims against.
-/

/-! ## A272452.P9558350414038021089

`A272451(2^n-1)`
-/

namespace A272452.P9558350414038021089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 (2 ^ n - 1)

end

end A272452.P9558350414038021089

/-! ## A272452.P17224174249630635252

`record[A272451(A253564(n+1))]`
-/

namespace A272452.P17224174249630635252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272452.P17224174249630635252

/-! ## A272452.P12246341422561248932

`record[A272451(A275715(n+1))]`
-/

namespace A272452.P12246341422561248932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 (A275715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272452.P12246341422561248932

/-! ## A272452.P11733071842778522437

`record[A272451(A297171(n+1))]`
-/

namespace A272452.P11733071842778522437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 (A297171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272452.P11733071842778522437

/-! ## A272452.P15225258973661404592

`record[A272451(A324865(n+1))]`
-/

namespace A272452.P15225258973661404592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272452.P15225258973661404592

/-!
# A272453: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A272453, there is no canonical definition to state claims against.
-/

/-! ## A272453.P7272529758076253363

`∑[∑[A272454(n)]+1-A272454(n)]`
-/

namespace A272453.P7272529758076253363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272454 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272454 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272453.P7272529758076253363

/-! ## A272453.P3622548292982350047

`∑[A272451(n)]`
-/

namespace A272453.P3622548292982350047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272453.P3622548292982350047

/-! ## A272453.P13729859400369226490

`A272451(n%A025716(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A272453.P13729859400369226490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272451 (Int.tmod (n : ℤ) (A025716 (n + 1))).toNat + a (n - 1)

end

end A272453.P13729859400369226490

/-! ## A272453.P3273372459902405891

`A272250(n)+A272736(n)-A272748(n)`
-/

namespace A272453.P3273372459902405891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272250 n + (A272736 n - A272748 n)

end

end A272453.P3273372459902405891

/-! ## A272453.P7261076221684087655

`A272700(n)+A272703(n)-A272748(n)`
-/

namespace A272453.P7261076221684087655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272700 n + (A272703 n - A272748 n)

end

end A272453.P7261076221684087655

/-! ## A272453.P14019625635822248773

`∑[A181385(A016825(n))-A272746(n)]`
-/

namespace A272453.P14019625635822248773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272453.P14019625635822248773

/-! ## A272453.P14779822961161117484

`∑[A181385(A016825(n))]-A272748(n)`
-/

namespace A272453.P14779822961161117484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272748 n

end

end A272453.P14779822961161117484

/-! ## A272453.P1605114161276418115

`∑[A008740(A008458(n))-A272746(n)]`
-/

namespace A272453.P1605114161276418115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272453.P1605114161276418115

/-! ## A272453.P4570816203649957827

`∑[A008740(A008458(n))]-A272748(n)`
-/

namespace A272453.P4570816203649957827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272748 n

end

end A272453.P4570816203649957827

/-!
# A272454: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 478", based on the 5-celled von Neumann neighborhood.

The programs for A272454, there is no canonical definition to state claims against.
-/

/-! ## A272454.P10729757869619101239

`Δ[A272451(n)]`
-/

namespace A272454.P10729757869619101239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272454.P10729757869619101239

/-! ## A272454.P9199976805255529687

`A272451(n+1)-A272451(n)`
-/

namespace A272454.P9199976805255529687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272451 (n + 1) - A272451 n

end

end A272454.P9199976805255529687

/-! ## A272454.P14146502377300700732

`Δ[A181385(A016825(n))-A272746(n)]`
-/

namespace A272454.P14146502377300700732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272454.P14146502377300700732

/-! ## A272454.P8945710850285268983

`Δ[A181385(A016825(n))]-A272749(n)`
-/

namespace A272454.P8945710850285268983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272749 n

end

end A272454.P8945710850285268983

/-! ## A272454.P18261094053462351663

`Δ[A008740(A008458(n))-A272746(n)]`
-/

namespace A272454.P18261094053462351663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272454.P18261094053462351663

/-! ## A272454.P2302032452588394214

`Δ[A008740(A008458(n))]-A272749(n)`
-/

namespace A272454.P2302032452588394214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272749 n

end

end A272454.P2302032452588394214

/-!
# A272455: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A272455, there is no canonical definition to state claims against.
-/

/-! ## A272455.P5000423848644002582

`A272458(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272455.P5000423848644002582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272458 (n - 1) + a (n - 1)

end

end A272455.P5000423848644002582

/-! ## A272455.P9224451994633635188

`A272458(n-1)-(A008683(A008574(n))-a(n-1))` with `a(0)=1`
-/

namespace A272455.P9224451994633635188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272458 (n - 1) - (A008683 (A008574 n).toNat - a (n - 1))

end

end A272455.P9224451994633635188

/-! ## A272455.P3172228552347028743

`A000007(n)+Δ[A272457(A028310(n)-1)]`
-/

namespace A272455.P3172228552347028743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272457 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A272455.P3172228552347028743

/-! ## A272455.P16425016710167264965

`Δ[A272457(n)]-A272458(n)`
-/

namespace A272455.P16425016710167264965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272458 n

end

end A272455.P16425016710167264965

/-! ## A272455.P16533091888206190336

`A272457(n+1)-(A272458(n)+A272457(n))`
-/

namespace A272455.P16533091888206190336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272457 (n + 1) - (A272458 n + A272457 n)

end

end A272455.P16533091888206190336

/-!
# A272456: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A272456, there is no canonical definition to state claims against.
-/

/-! ## A272456.P10564236007724265770

`A272455(2^n-1)`
-/

namespace A272456.P10564236007724265770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 (2 ^ n - 1)

end

end A272456.P10564236007724265770

/-! ## A272456.P10894169154714343158

`record[A272455(A173787(n))]`
-/

namespace A272456.P10894169154714343158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272456.P10894169154714343158

/-! ## A272456.P9577457809329150365

`record[A272455(A243071(n+1))]`
-/

namespace A272456.P9577457809329150365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272456.P9577457809329150365

/-! ## A272456.P6967674237439918434

`record[A272455(A336551(n+1))]`
-/

namespace A272456.P6967674237439918434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 (A336551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272456.P6967674237439918434

/-! ## A272456.P16396276953282704901

`record[A272455(A350770(n+1))]`
-/

namespace A272456.P16396276953282704901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 (A350770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272456.P16396276953282704901

/-!
# A272457: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A272457, there is no canonical definition to state claims against.
-/

/-! ## A272457.P91236841489010445

`∑[A272455(n)]`
-/

namespace A272457.P91236841489010445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272457.P91236841489010445

/-! ## A272457.P5709707253554960344

`∑[A272458(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272457.P5709707253554960344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272458 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272457.P5709707253554960344

/-! ## A272457.P15067471417439260799

`a(n-1)+A272455(n)+A000007(n)` with `a(0)=1`
-/

namespace A272457.P15067471417439260799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272455 n + A000007 n)

end

end A272457.P15067471417439260799

/-! ## A272457.P6807875179281617789

`a(n-1)+A272455(n)+A010816(A101881(n))` with `a(0)=1`
-/

namespace A272457.P6807875179281617789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272455 n + A010816 (A101881 n).toNat)

end

end A272457.P6807875179281617789

/-! ## A272457.P16106525949863868065

`A304491(a(n-1))+A272455(n)` with `a(0)=1`
-/

namespace A272457.P16106525949863868065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304491 (a (n - 1)).toNat + A272455 n

end

end A272457.P16106525949863868065

/-!
# A272458: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 481", based on the 5-celled von Neumann neighborhood.

The programs for A272458, there is no canonical definition to state claims against.
-/

/-! ## A272458.P4625879065189864946

`Δ[A272455(n)]`
-/

namespace A272458.P4625879065189864946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272458.P4625879065189864946

/-! ## A272458.P1791660503306684814

`A272455(n+1)-A272455(n)`
-/

namespace A272458.P1791660503306684814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272455 (n + 1) - A272455 n

end

end A272458.P1791660503306684814

/-! ## A272458.P2626140557805758759

`Δ[A000007(n)+Δ[A272457(A028310(n)-1)]]`
-/

namespace A272458.P2626140557805758759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272457 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272458.P2626140557805758759

/-!
# A272459: The total number of different isosceles trapezoids, excluding squares, that can be drawn on an n X n square grid where the corners of each individual trapezoid lie on a lattice point.

The programs for A272459, the canonical program `A272459.P12115707150098250776` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272459 has offset 1).

The definition of A272459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272459.P12115707150098250776

`∑[∑[n%or(1, n)]+n²]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272459

/-- `∑[∑[n%or(1, n)]+n²]` -/
def P12115707150098250776.Spec : Prop :=
  ∀ n, (P12115707150098250776.a n : ℤ) = A272459 (n + 1)

theorem P12115707150098250776.correct : P12115707150098250776.Spec := by
  intro n
  simp only [A272459, Nat.add_sub_cancel]

end A272459

/-! ## A272459.P17788737347498007631

`∑[∑[n*char[2*n]]+n²]`
-/

namespace A272459.P17788737347498007631
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272459.P17788737347498007631

namespace A272459

/-- `∑[∑[n*char[2*n]]+n²]` -/
def P17788737347498007631.Spec : Prop :=
  ∀ n, (P17788737347498007631.a n : ℤ) = A272459 (n + 1)

end A272459

/-! ## A272459.P1689931020182875496

`2*∑[A239767(n)/2]`
-/

namespace A272459.P1689931020182875496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239767 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272459.P1689931020182875496

namespace A272459

/-- `2*∑[A239767(n)/2]` -/
def P1689931020182875496.Spec : Prop :=
  ∀ n, P1689931020182875496.a n = (A272459 (n + 1) : ℚ)

end A272459

/-! ## A272459.P14344288313170683918

`∑[n²]+∑[A110660(n)]`
-/

namespace A272459.P14344288313170683918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A272459.P14344288313170683918

namespace A272459

/-- `∑[n²]+∑[A110660(n)]` -/
def P14344288313170683918.Spec : Prop :=
  ∀ n, P14344288313170683918.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P10864310502257067384

`A212692(n)-a(n-1)+n` with `a(0)=0`
-/

namespace A272459.P10864310502257067384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A212692 n - a (n - 1) + (n : ℤ)

end

end A272459.P10864310502257067384

namespace A272459

/-- `A212692(n)-a(n-1)+n` -/
def P10864310502257067384.Spec : Prop :=
  ∀ n, P10864310502257067384.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P9391571563400841864

`A000217(floor(n/2))+∑[floor(5*(n/2)²)]`
-/

namespace A272459.P9391571563400841864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(n : ℚ) / 2⌋.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272459.P9391571563400841864

namespace A272459

/-- `A000217(floor(n/2))+∑[floor(5*(n/2)²)]` -/
def P9391571563400841864.Spec : Prop :=
  ∀ n, P9391571563400841864.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P3611907568881127214

`∑[∑[n*gcd(2, n)²]+1]-A093005(n+1)`
-/

namespace A272459.P3611907568881127214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A093005 (n + 1)

end

end A272459.P3611907568881127214

namespace A272459

/-- `∑[∑[n*gcd(2, n)²]+1]-A093005(n+1)` -/
def P3611907568881127214.Spec : Prop :=
  ∀ n, P3611907568881127214.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P1085313969743577421

`A212578(n)+A032438(n)`
-/

namespace A272459.P1085313969743577421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 n + A032438 n

end

end A272459.P1085313969743577421

namespace A272459

/-- `A212578(n)+A032438(n)` -/
def P1085313969743577421.Spec : Prop :=
  ∀ n, P1085313969743577421.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P1339314499526654287

`A011934(n)-A006584(n)`
-/

namespace A272459.P1339314499526654287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n - A006584 n

end

end A272459.P1339314499526654287

namespace A272459

/-- `A011934(n)-A006584(n)` -/
def P1339314499526654287.Spec : Prop :=
  ∀ n, P1339314499526654287.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P458836871749337927

`A212967(n)-A093353(n)`
-/

namespace A272459.P458836871749337927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n - A093353 n

end

end A272459.P458836871749337927

namespace A272459

/-- `A212967(n)-A093353(n)` -/
def P458836871749337927.Spec : Prop :=
  ∀ n, P458836871749337927.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P12364257008527891085

`A162148(n)-A212967(n)`
-/

namespace A272459.P12364257008527891085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n - A212967 n

end

end A272459.P12364257008527891085

namespace A272459

/-- `A162148(n)-A212967(n)` -/
def P12364257008527891085.Spec : Prop :=
  ∀ n, P12364257008527891085.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P4318802146633849371

`A212968(n)-A000292(n+1)`
-/

namespace A272459.P4318802146633849371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - A000292 (n + 1)

end

end A272459.P4318802146633849371

namespace A272459

/-- `A212968(n)-A000292(n+1)` -/
def P4318802146633849371.Spec : Prop :=
  ∀ n, P4318802146633849371.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P12608957696107667163

`A246695(n)-A254749(n+1)`
-/

namespace A272459.P12608957696107667163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n - A254749 (n + 1)

end

end A272459.P12608957696107667163

namespace A272459

/-- `A246695(n)-A254749(n+1)` -/
def P12608957696107667163.Spec : Prop :=
  ∀ n, P12608957696107667163.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P7790381206423701784

`A037237(n)-A295622(n+5)`
-/

namespace A272459.P7790381206423701784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037237 n - A295622 (n + 5)

end

end A272459.P7790381206423701784

namespace A272459

/-- `A037237(n)-A295622(n+5)` -/
def P7790381206423701784.Spec : Prop :=
  ∀ n, P7790381206423701784.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P10554294796707676867

`A212970(n)-(n-A014682(n))²`
-/

namespace A272459.P10554294796707676867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212970 n - ((n : ℤ) - A014682 n) ^ 2

end

end A272459.P10554294796707676867

namespace A272459

/-- `A212970(n)-(n-A014682(n))²` -/
def P10554294796707676867.Spec : Prop :=
  ∀ n, P10554294796707676867.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P3112908659588281005

`A128624(n+1)-A081498(n+1)`
-/

namespace A272459.P3112908659588281005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128624 (n + 1) - A081498 (n + 1)

end

end A272459.P3112908659588281005

namespace A272459

/-- `A128624(n+1)-A081498(n+1)` -/
def P3112908659588281005.Spec : Prop :=
  ∀ n, P3112908659588281005.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P13600194201076561787

`A236364(n+1)-A088003(n+1)`
-/

namespace A272459.P13600194201076561787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236364 (n + 1) - A088003 (n + 1)

end

end A272459.P13600194201076561787

namespace A272459

/-- `A236364(n+1)-A088003(n+1)` -/
def P13600194201076561787.Spec : Prop :=
  ∀ n, P13600194201076561787.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P7625531658793935222

`A000330(n+1)+A000330(n)-A199771(n+1)`
-/

namespace A272459.P7625531658793935222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A000330 n - A199771 (n + 1))

end

end A272459.P7625531658793935222

namespace A272459

/-- `A000330(n+1)+A000330(n)-A199771(n+1)` -/
def P7625531658793935222.Spec : Prop :=
  ∀ n, P7625531658793935222.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P1402857792948890458

`A006584(n+1)+∑[n²]`
-/

namespace A272459.P1402857792948890458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006584 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A272459.P1402857792948890458

namespace A272459

/-- `A006584(n+1)+∑[n²]` -/
def P1402857792948890458.Spec : Prop :=
  ∀ n, P1402857792948890458.a n = A272459 (n + 1)

end A272459

/-! ## A272459.P15897255419980528413

`A212578(n+1)-∑[n+1]`
-/

namespace A272459.P15897255419980528413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212578 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A272459.P15897255419980528413

namespace A272459

/-- `A212578(n+1)-∑[n+1]` -/
def P15897255419980528413.Spec : Prop :=
  ∀ n, P15897255419980528413.a n = A272459 (n + 1)

end A272459

/-!
# A272460: G.f. A(x) satisfies: A( x - A(x^3)/x ) = x.

The programs for A272460, there is no canonical definition to state claims against.
-/

/-! ## A272460.P14854930720707258340

`A065033(ceil((∑[A026528(n+1)]-1)/(n+1)))`
-/

namespace A272460.P14854930720707258340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A272460.P14854930720707258340

/-! ## A272460.P10913828784913732802

`A097992(∑[A150043(n)])+char[7]`
-/

namespace A272460.P10913828784913732802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150043 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272460.P10913828784913732802

/-! ## A272460.P15216040245962839698

`A117910(∑[A150043(n)])+char[7]`
-/

namespace A272460.P15216040245962839698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150043 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272460.P15216040245962839698

/-! ## A272460.P16712075709948224392

`A195174(A070859(n)+2*(n+1))`
-/

namespace A272460.P16712075709948224392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A070859 n + (2 * (n + 1) : ℤ)).toNat

end

end A272460.P16712075709948224392

/-!
# A272461: G.f. A(x) satisfies: A( x - A(x^4)/x^2 ) = x.

The programs for A272461, there is no canonical definition to state claims against.
-/

/-! ## A272461.P8176961092814458891

`A276989(n+1)+A107846(A020063(n))`
-/

namespace A272461.P8176961092814458891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276989 (n + 1) + A107846 (A020063 n).toNat

end

end A272461.P8176961092814458891

/-! ## A272461.P107716725561952731

`A276989(n+1)+A107846(A036675(n))`
-/

namespace A272461.P107716725561952731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276989 (n + 1) + A107846 (A036675 n).toNat

end

end A272461.P107716725561952731

/-! ## A272461.P7434462810621870384

`A276989(n+1)+A067169(A125053(n))`
-/

namespace A272461.P7434462810621870384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276989 (n + 1) + A067169 ((A125053 n).toNat + 11)

end

end A272461.P7434462810621870384

/-!
# A272462: E.g.f.: (sin(3^2*x) + sin(4^2*x)) / sin(5^2*x).

The programs for A272462, there is no canonical definition to state claims against.
-/

/-! ## A272462.P17923737755623101397

`abs(A156978(2*n))`
-/

namespace A272462.P17923737755623101397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156978 (2 * n)|

end

end A272462.P17923737755623101397

/-! ## A272462.P15602884641066908318

`lcm(A001316(n), A156978(2*n))`
-/

namespace A272462.P15602884641066908318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A156978 (2 * n))

end

end A272462.P15602884641066908318

/-! ## A272462.P8913250498630524832

`lcm(-A156978(2*n), A006519(n+1))`
-/

namespace A272462.P8913250498630524832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A156978 (2 * n)) (A006519 (n + 1))

end

end A272462.P8913250498630524832

/-!
# A272463: G.f. A(x) satisfies: A( x^2*A(x) - x^2*A(x)^2 ) = x^3.

The programs for A272463, there is no canonical definition to state claims against.
-/

/-! ## A272463.P2282103001429180877

`A226022(n)+A065205(A014137(n))`
-/

namespace A272463.P2282103001429180877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226022 n + A065205 (A014137 n).toNat

end

end A272463.P2282103001429180877

/-! ## A272463.P13319482109057062346

`A226022(n)+A102683(A000111(n))`
-/

namespace A272463.P13319482109057062346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226022 n + A102683 (A000111 n).toNat

end

end A272463.P13319482109057062346

/-! ## A272463.P13073103768171976477

`A226022(n)+A025469(A089064(n))`
-/

namespace A272463.P13073103768171976477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226022 n + A025469 (A089064 n).toNat

end

end A272463.P13073103768171976477

/-! ## A272463.P1456447537821618660

`A226022(n)+A025469(A101879(n))`
-/

namespace A272463.P1456447537821618660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226022 n + A025469 (A101879 n).toNat

end

end A272463.P1456447537821618660

/-! ## A272463.P12355029826237229336

`A102683(n)+A028310(A226022(n))`
-/

namespace A272463.P12355029826237229336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n + A028310 (A226022 n).toNat

end

end A272463.P12355029826237229336

/-!
# A272464: Fractal sequence related to Stern's diatomic sequence (A002487).

The programs for A272464, there is no canonical definition to state claims against.
-/

/-! ## A272464.P14602963473909306319

`A112383(n)+A107846(A022358(n))`
-/

namespace A272464.P14602963473909306319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112383 n + A107846 (A022358 n).toNat

end

end A272464.P14602963473909306319

/-! ## A272464.P13153303457124068506

`A308064(A036256(n))+A112383(n)`
-/

namespace A272464.P13153303457124068506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308064 (A036256 n).toNat + A112383 n

end

end A272464.P13153303457124068506

/-! ## A272464.P3719928623685922955

`A287372(A113389(n))+A112383(n)`
-/

namespace A272464.P3719928623685922955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A113389 n).toNat + A112383 n

end

end A272464.P3719928623685922955

/-! ## A272464.P12200807785739396487

`or(A102683(A049863(n)), A112383(n))`
-/

namespace A272464.P12200807785739396487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A049863 n).toNat) (A112383 n)

end

end A272464.P12200807785739396487

/-! ## A272464.P10395186039095717914

`A112383(n)+A080885(A297595(3*n+4))`
-/

namespace A272464.P10395186039095717914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112383 n + A080885 (A297595 (3 * n + 4)).toNat

end

end A272464.P10395186039095717914

/-!
# A272465: Indices n such that A272464(n)=1.

The programs for A272465, there is no canonical definition to state claims against.
-/

/-! ## A272465.P10283200811859283763

`eq[1, A272464(n+1)]+1`
-/

namespace A272465.P10283200811859283763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272465.P10283200811859283763

/-! ## A272465.P2077146424671554879

`record[A000027(n+1)/A272464(n+1)]`
-/

namespace A272465.P2077146424671554879
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A272464 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272465.P2077146424671554879

/-! ## A272465.P12031789572454874469

`record[A028310(n+1)/A272464(n+1)]`
-/

namespace A272465.P12031789572454874469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A272464 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272465.P12031789572454874469

/-! ## A272465.P4947886298668300490

`eq[A054977(n), A272464(A028310(n))]`
-/

namespace A272465.P4947886298668300490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272464 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272465.P4947886298668300490

/-! ## A272465.P14130652869630208517

`eq[A057427(n), A272464(A028310(n))]`
-/

namespace A272465.P14130652869630208517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272464 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272465.P14130652869630208517

/-!
# A272466: Numbers missing from A272464.

The programs for A272466, there is no canonical definition to state claims against.
-/

/-! ## A272466.P11705566296408528097

`eq[char[A272464(n+1)], A151933(n)]`
-/

namespace A272466.P11705566296408528097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272464 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272466.P11705566296408528097

/-! ## A272466.P1045417455885337188

`A191910(A060003(n+1))+A005117(2*(n+2))`
-/

namespace A272466.P1045417455885337188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191910 (A060003 (n + 1)).toNat + A005117 (2 * (n + 2))

end

end A272466.P1045417455885337188

/-! ## A272466.P8347472640037287047

`A174058(n+5)+A174026(A174006(2*n+5))`
-/

namespace A272466.P8347472640037287047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174058 (n + 5) + A174026 (A174006 (2 * n + 5)).toNat

end

end A272466.P8347472640037287047

/-! ## A272466.P2373255135072298161

`A369937(2*n+5)-A010060(A071062(2*(n+1)))`
-/

namespace A272466.P2373255135072298161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369937 (2 * n + 5) - A010060 (A071062 (2 * (n + 1))).toNat

end

end A272466.P2373255135072298161

/-!
# A272467: Expansion of e.g.f. (sin(2*x) + sin(3*x)) / sin(5*x).

The programs for A272467, there is no canonical definition to state claims against.
-/

/-! ## A272467.P2804072940308636716

`abs(A156185(2*n))`
-/

namespace A272467.P2804072940308636716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156185 (2 * n)|

end

end A272467.P2804072940308636716

/-! ## A272467.P16569129711124837705

`record[abs(A156185(A068527(n)))]`
-/

namespace A272467.P16569129711124837705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156185 (A068527 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272467.P16569129711124837705

/-! ## A272467.P3229343036162507994

`record[gcd(A156185(n), A198631(n))]`
-/

namespace A272467.P3229343036162507994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156185 n) (A198631 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272467.P3229343036162507994

/-! ## A272467.P2345438583337125310

`A033999(n)*A156185(2*n)`
-/

namespace A272467.P2345438583337125310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A156185 (2 * n)

end

end A272467.P2345438583337125310

/-! ## A272467.P14601715076320163032

`gcd(A156185(2*n), A198631(2*n))`
-/

namespace A272467.P14601715076320163032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156185 (2 * n)) (A198631 (2 * n))

end

end A272467.P14601715076320163032

/-!
# A272469: Numbers of n-step paths of a king moving on an n X n chessboard, starting at a corner and not visiting any cell twice.

The programs for A272469, there is no canonical definition to state claims against.
-/

/-! ## A272469.P16434769338298909764

`A289139(A008574(n*A151148(n)))`
-/

namespace A272469.P16434769338298909764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 (A008574 ((n : ℤ) * A151148 n).toNat).toNat

end

end A272469.P16434769338298909764

/-!
# A272470: 7 times the primes.

The programs for A272470, the canonical program `A272470.P18354335613044509669` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272470 has offset 1).

The definition of A272470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272470.P18354335613044509669

`7*A000040(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272470

/-- `7*A000040(n+1)` -/
def P18354335613044509669.Spec : Prop :=
  ∀ n, P18354335613044509669.a n = A272470 (n + 1)

theorem P18354335613044509669.correct : P18354335613044509669.Spec := by
  intro n
  simp only [A272470, Nat.add_sub_cancel]

end A272470

/-! ## A272470.P3733649704419249849

`Δ[7*A007504(n)]`
-/

namespace A272470.P3733649704419249849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272470.P3733649704419249849

namespace A272470

/-- `Δ[7*A007504(n)]` -/
def P3733649704419249849.Spec : Prop :=
  ∀ n, P3733649704419249849.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P14054789985268858281

`A129073(n+1)-8`
-/

namespace A272470.P14054789985268858281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129073 (n + 1) - 8

end

end A272470.P14054789985268858281

namespace A272470

/-- `A129073(n+1)-8` -/
def P14054789985268858281.Spec : Prop :=
  ∀ n, P14054789985268858281.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P6030467447693516054

`abs(Δ[7*A008348(n)])`
-/

namespace A272470.P6030467447693516054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A272470.P6030467447693516054

namespace A272470

/-- `abs(Δ[7*A008348(n)])` -/
def P6030467447693516054.Spec : Prop :=
  ∀ n, P6030467447693516054.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P9483930097233980198

`abs(Δ[7*A022837(n)])`
-/

namespace A272470.P9483930097233980198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A272470.P9483930097233980198

namespace A272470

/-- `abs(Δ[7*A022837(n)])` -/
def P9483930097233980198.Spec : Prop :=
  ∀ n, P9483930097233980198.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P6510842630831447229

`abs(Δ[7*A064365(n)])`
-/

namespace A272470.P6510842630831447229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A272470.P6510842630831447229

namespace A272470

/-- `abs(Δ[7*A064365(n)])` -/
def P6510842630831447229.Spec : Prop :=
  ∀ n, P6510842630831447229.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P2835751763031602810

`7*sqrt(A001248(n+1))`
-/

namespace A272470.P2835751763031602810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  7 * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A272470.P2835751763031602810

namespace A272470

/-- `7*sqrt(A001248(n+1))` -/
def P2835751763031602810.Spec : Prop :=
  ∀ n, P2835751763031602810.a n = (A272470 (n + 1) : ℝ)

end A272470

/-! ## A272470.P3408974724746064423

`∑[7*A054541(n+1)]`
-/

namespace A272470.P3408974724746064423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272470.P3408974724746064423

namespace A272470

/-- `∑[7*A054541(n+1)]` -/
def P3408974724746064423.Spec : Prop :=
  ∀ n, P3408974724746064423.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P9948617112878198372

`record[7*A259153(n+2)]`
-/

namespace A272470.P9948617112878198372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272470.P9948617112878198372

namespace A272470

/-- `record[7*A259153(n+2)]` -/
def P9948617112878198372.Spec : Prop :=
  ∀ n, P9948617112878198372.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P4989969735412959880

`7*(A006093(n+1)+1)`
-/

namespace A272470.P4989969735412959880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A006093 (n + 1) + 1)

end

end A272470.P4989969735412959880

namespace A272470

/-- `7*(A006093(n+1)+1)` -/
def P4989969735412959880.Spec : Prop :=
  ∀ n, P4989969735412959880.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P12899649433059318024

`7*(A008864(n+1)-1)`
-/

namespace A272470.P12899649433059318024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A008864 (n + 1) - 1)

end

end A272470.P12899649433059318024

namespace A272470

/-- `7*(A008864(n+1)-1)` -/
def P12899649433059318024.Spec : Prop :=
  ∀ n, P12899649433059318024.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P8921352155239763393

`7*(A113935(n+1)-3)`
-/

namespace A272470.P8921352155239763393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A113935 (n + 1) - 3)

end

end A272470.P8921352155239763393

namespace A272470

/-- `7*(A113935(n+1)-3)` -/
def P8921352155239763393.Spec : Prop :=
  ∀ n, P8921352155239763393.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P13283131293491356364

`7*A001749(n+1)/4`
-/

namespace A272470.P13283131293491356364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((A001749 (n + 1) : ℚ) / 4)

end

end A272470.P13283131293491356364

namespace A272470

/-- `7*A001749(n+1)/4` -/
def P13283131293491356364.Spec : Prop :=
  ∀ n, P13283131293491356364.a n = (A272470 (n + 1) : ℚ)

end A272470

/-! ## A272470.P12354815247459212175

`7*root(A030078(n+1), 3)`
-/

namespace A272470.P12354815247459212175
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  7 * (A030078 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A272470.P12354815247459212175

namespace A272470

/-- `7*root(A030078(n+1), 3)` -/
def P12354815247459212175.Spec : Prop :=
  ∀ n, P12354815247459212175.a n = (A272470 (n + 1) : ℝ)

end A272470

/-! ## A272470.P47754819275775661

`7*(A014692(n+1)+n)`
-/

namespace A272470.P47754819275775661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A014692 (n + 1) + (n : ℤ))

end

end A272470.P47754819275775661

namespace A272470

/-- `7*(A014692(n+1)+n)` -/
def P47754819275775661.Spec : Prop :=
  ∀ n, P47754819275775661.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P11863389424717888222

`A001749(n+1)+A001748(n+1)`
-/

namespace A272470.P11863389424717888222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) + A001748 (n + 1)

end

end A272470.P11863389424717888222

namespace A272470

/-- `A001749(n+1)+A001748(n+1)` -/
def P11863389424717888222.Spec : Prop :=
  ∀ n, P11863389424717888222.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P17482893668452868108

`A100484(n+1)+A001750(n+1)`
-/

namespace A272470.P17482893668452868108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A001750 (n + 1)

end

end A272470.P17482893668452868108

namespace A272470

/-- `A100484(n+1)+A001750(n+1)` -/
def P17482893668452868108.Spec : Prop :=
  ∀ n, P17482893668452868108.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P13988342057033949951

`A138636(n+1)+A000040(n+1)`
-/

namespace A272470.P13988342057033949951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1) + A000040 (n + 1)

end

end A272470.P13988342057033949951

namespace A272470

/-- `A138636(n+1)+A000040(n+1)` -/
def P13988342057033949951.Spec : Prop :=
  ∀ n, P13988342057033949951.a n = A272470 (n + 1)

end A272470

/-! ## A272470.P13347090127950463742

`A132227(n+1)+A129070(n+1)`
-/

namespace A272470.P13347090127950463742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132227 (n + 1) + A129070 (n + 1)

end

end A272470.P13347090127950463742

namespace A272470

/-- `A132227(n+1)+A129070(n+1)` -/
def P13347090127950463742.Spec : Prop :=
  ∀ n, P13347090127950463742.a n = A272470 (n + 1)

end A272470

/-!
# A272474: Triangle T(n,m) by rows: the number of tatami tilings of the 5 X n floor with dimers and m monomers.

The programs for A272474, there is no canonical definition to state claims against.
-/

/-! ## A272474.P13296241106936163619

`C(A073453(2*n+3), A020639(A073419(n+1)))`
-/

namespace A272474.P13296241106936163619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A073453 (2 * n + 3)).toNat (A020639 (A073419 (n + 1)).toNat).toNat

end

end A272474.P13296241106936163619

/-!
# A272475: Numbers n such that 2^n-1 and 3^n-1 are not coprime.

The programs for A272475, the canonical program `A272475.P14322628035038619025` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272475 has offset 1).

The definition of A272475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272475.P14322628035038619025

`lt[1, A086892(n+1)]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272475

/-- `lt[1, A086892(n+1)]+1` -/
def P14322628035038619025.Spec : Prop :=
  ∀ n, (P14322628035038619025.a n : ℤ) = A272475 (n + 1)

theorem P14322628035038619025.correct : P14322628035038619025.Spec := by
  intro n
  simp only [A272475, Nat.add_sub_cancel]

end A272475

/-! ## A272475.P14498265946885590052

`lt[1, A214074(n+1)]+1`
-/

namespace A272475.P14498265946885590052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272475.P14498265946885590052

namespace A272475

/-- `lt[1, A214074(n+1)]+1` -/
def P14498265946885590052.Spec : Prop :=
  ∀ n, (P14498265946885590052.a n : ℤ) = A272475 (n + 1)

end A272475

/-! ## A272475.P7466875751364974746

`lt[3, A260119(A028310(n))]`
-/

namespace A272475.P7466875751364974746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272475.P7466875751364974746

namespace A272475

/-- `lt[3, A260119(A028310(n))]` -/
def P7466875751364974746.Spec : Prop :=
  ∀ n, (P7466875751364974746.a n : ℤ) = A272475 (n + 1)

end A272475

/-! ## A272475.P14842142536662889210

`A065475(lt[1, A214074(n+1)])`
-/

namespace A272475.P14842142536662889210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272475.P14842142536662889210

namespace A272475

/-- `A065475(lt[1, A214074(n+1)])` -/
def P14842142536662889210.Spec : Prop :=
  ∀ n, P14842142536662889210.a n = A272475 (n + 1)

end A272475

/-! ## A272475.P8520399454864328107

`eq[char[A263647(n+1)], A000007(n)]`
-/

namespace A272475.P8520399454864328107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263647 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A272475.P8520399454864328107

namespace A272475

/-- `eq[char[A263647(n+1)], A000007(n)]` -/
def P8520399454864328107.Spec : Prop :=
  ∀ n, (P8520399454864328107.a n : ℤ) = A272475 (n + 1)

end A272475

/-! ## A272475.P5804256349474540193

`lt[1, A086892(A233583(n+1))]`
-/

namespace A272475.P5804256349474540193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086892 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272475.P5804256349474540193

namespace A272475

/-- `lt[1, A086892(A233583(n+1))]` -/
def P5804256349474540193.Spec : Prop :=
  ∀ n, (P5804256349474540193.a n : ℤ) = A272475 (n + 1)

end A272475

/-! ## A272475.P3047913720229302610

`A189673(A247874(n+1))+eq[2, A214074(n+1)]`
-/

namespace A272475.P3047913720229302610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (A247874 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A272475.P3047913720229302610

namespace A272475

/-- `A189673(A247874(n+1))+eq[2, A214074(n+1)]` -/
def P3047913720229302610.Spec : Prop :=
  ∀ n, P3047913720229302610.a n = A272475 (n + 1)

end A272475

/-! ## A272475.P458314138045003531

`A072084(A059268(2*(n+1)))+eq[2, A214074(n+1)]`
-/

namespace A272475.P458314138045003531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072084 (A059268 (2 * (n + 1))).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A272475.P458314138045003531

namespace A272475

/-- `A072084(A059268(2*(n+1)))+eq[2, A214074(n+1)]` -/
def P458314138045003531.Spec : Prop :=
  ∀ n, P458314138045003531.a n = A272475 (n + 1)

end A272475

/-!
# A272476: a(n) = n if n is prime, a(n) = 2*n+3 otherwise.

The programs for A272476, the canonical program `A272476.P12077626384774782464` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272476 has offset 0).

The definition of A272476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272476.P7391374454651523813

`(n+3)*∏{p}[n, #%n/#]+n`
-/

namespace A272476.P7391374454651523813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p % n : ℕ) : ℚ) / (p : ℚ)) + (n : ℚ)

end

end A272476.P7391374454651523813

namespace A272476

/-- `(n+3)*∏{p}[n, #%n/#]+n` -/
def P7391374454651523813.Spec : Prop :=
  ∀ n, P7391374454651523813.a n = (A272476 n : ℚ)

end A272476

/-! ## A272476.P11648021098549946986

`(2*n+3)%(A062584(n)+3)`
-/

namespace A272476.P11648021098549946986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 3 : ℤ) (A062584 n + 3)

end

end A272476.P11648021098549946986

namespace A272476

/-- `(2*n+3)%(A062584(n)+3)` -/
def P11648021098549946986.Spec : Prop :=
  ∀ n, P11648021098549946986.a n = A272476 n

end A272476

/-! ## A272476.P12077626384774782464

`(n+3)%(A007918(n)+3)+n`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A272476

/-- `(n+3)%(A007918(n)+3)+n` -/
def P12077626384774782464.Spec : Prop :=
  ∀ n, P12077626384774782464.a n = A272476 n

theorem P12077626384774782464.correct : P12077626384774782464.Spec := by
  intro n
  simp only [A272476]

end A272476

/-! ## A272476.P17128909326325933137

`abs((n+3)*(char[A000040(n+1)]-1)-n)`
-/

namespace A272476.P17128909326325933137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) * (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1) - (n : ℤ)|

end

end A272476.P17128909326325933137

namespace A272476

/-- `abs((n+3)*(char[A000040(n+1)]-1)-n)` -/
def P17128909326325933137.Spec : Prop :=
  ∀ n, P17128909326325933137.a n = A272476 n

end A272476

/-! ## A272476.P11306634736072032720

`(n+3)*char[A253073(n+1)]+n`
-/

namespace A272476.P11306634736072032720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A272476.P11306634736072032720

namespace A272476

/-- `(n+3)*char[A253073(n+1)]+n` -/
def P11306634736072032720.Spec : Prop :=
  ∀ n, (P11306634736072032720.a n : ℤ) = A272476 n

end A272476

/-! ## A272476.P4085670765479951324

`(n+3)*char[A191558(n+1)]+n`
-/

namespace A272476.P4085670765479951324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A272476.P4085670765479951324

namespace A272476

/-- `(n+3)*char[A191558(n+1)]+n` -/
def P4085670765479951324.Spec : Prop :=
  ∀ n, (P4085670765479951324.a n : ℤ) = A272476 n

end A272476

/-! ## A272476.P3033180227178817635

`(n+3)*char[A103164(n)]+n`
-/

namespace A272476.P3033180227178817635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n

end

end A272476.P3033180227178817635

namespace A272476

/-- `(n+3)*char[A103164(n)]+n` -/
def P3033180227178817635.Spec : Prop :=
  ∀ n, (P3033180227178817635.a n : ℤ) = A272476 n

end A272476

/-! ## A272476.P4806334542025319553

`record[A165754(n)]%((n+3)*A053989(n+1))`
-/

namespace A272476.P4806334542025319553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((n + 3 : ℤ) * A053989 (n + 1))

end

end A272476.P4806334542025319553

namespace A272476

/-- `record[A165754(n)]%((n+3)*A053989(n+1))` -/
def P4806334542025319553.Spec : Prop :=
  ∀ n, P4806334542025319553.a n = A272476 n

end A272476

/-! ## A272476.P18099043996713689613

`(n+3)*A036987(A055671(n))+n`
-/

namespace A272476.P18099043996713689613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A036987 (A055671 n).toNat + (n : ℤ)

end

end A272476.P18099043996713689613

namespace A272476

/-- `(n+3)*A036987(A055671(n))+n` -/
def P18099043996713689613.Spec : Prop :=
  ∀ n, P18099043996713689613.a n = A272476 n

end A272476

/-! ## A272476.P15953635921584096984

`eq[A169585(n), A237420(n)]%(A038699(n+1)+3)`
-/

namespace A272476.P15953635921584096984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) (A038699 (n + 1) + 3)

end

end A272476.P15953635921584096984

namespace A272476

/-- `eq[A169585(n), A237420(n)]%(A038699(n+1)+3)` -/
def P15953635921584096984.Spec : Prop :=
  ∀ n, P15953635921584096984.a n = A272476 n

end A272476

/-!
# A272477: Numbers n that are coprime to the numerator of zeta(2*n)/(Pi^(2*n)).

The programs for A272477, the canonical program `A272477.P11613366699694065365` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272477 has offset 1).

The definition of A272477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272477.P16534087433705178796

`lt[4, A273501(n)]`
-/

namespace A272477.P16534087433705178796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272477.P16534087433705178796

namespace A272477

/-- `lt[4, A273501(n)]` -/
def P16534087433705178796.Spec : Prop :=
  ∀ n, (P16534087433705178796.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P1373387705283435791

`comp[2*comp[A233775(n)]]`
-/

namespace A272477.P1373387705283435791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272477.P1373387705283435791

namespace A272477

/-- `comp[2*comp[A233775(n)]]` -/
def P1373387705283435791.Spec : Prop :=
  ∀ n, (P1373387705283435791.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P11613366699694065365

`lt[Δ[A048678(n)], 2*n]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272477

/-- `lt[Δ[A048678(n)], 2*n]` -/
def P11613366699694065365.Spec : Prop :=
  ∀ n, (P11613366699694065365.a n : ℤ) = A272477 (n + 1)

theorem P11613366699694065365.correct : P11613366699694065365.Spec := by
  intro n
  simp only [A272477, Nat.add_sub_cancel]

end A272477

/-! ## A272477.P164699400080230077

`lt[A128975(n+1), 2]+1`
-/

namespace A272477.P164699400080230077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128975 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A272477.P164699400080230077

namespace A272477

/-- `lt[A128975(n+1), 2]+1` -/
def P164699400080230077.Spec : Prop :=
  ∀ n, (P164699400080230077.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P3841126870268206260

`∪[2*n+1, A173786(n)]`
-/

namespace A272477.P3841126870268206260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P3841126870268206260

namespace A272477

/-- `∪[2*n+1, A173786(n)]` -/
def P3841126870268206260.Spec : Prop :=
  ∀ n, (P3841126870268206260.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P10893845508930119011

`comp[2*comp[A048645(n+1)]]`
-/

namespace A272477.P10893845508930119011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272477.P10893845508930119011

namespace A272477

/-- `comp[2*comp[A048645(n+1)]]` -/
def P10893845508930119011.Spec : Prop :=
  ∀ n, (P10893845508930119011.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P10151990211224448574

`comp[A266214(n+1)-1]+1`
-/

namespace A272477.P10151990211224448574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266214 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A272477.P10151990211224448574

namespace A272477

/-- `comp[A266214(n+1)-1]+1` -/
def P10151990211224448574.Spec : Prop :=
  ∀ n, (P10151990211224448574.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P12322333945560706553

`comp[2*comp[lt[n, A073137(n)+1]+1]]`
-/

namespace A272477.P12322333945560706553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272477.P12322333945560706553

namespace A272477

/-- `comp[2*comp[lt[n, A073137(n)+1]+1]]` -/
def P12322333945560706553.Spec : Prop :=
  ∀ n, (P12322333945560706553.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P12307895043129390213

`∪[A173786(n), A223134(n)]`
-/

namespace A272477.P12307895043129390213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P12307895043129390213

namespace A272477

/-- `∪[A173786(n), A223134(n)]` -/
def P12307895043129390213.Spec : Prop :=
  ∀ n, (P12307895043129390213.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P8952293270316184259

`comp[A005843(comp[A233775(n)])]`
-/

namespace A272477.P8952293270316184259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272477.P8952293270316184259

namespace A272477

/-- `comp[A005843(comp[A233775(n)])]` -/
def P8952293270316184259.Spec : Prop :=
  ∀ n, (P8952293270316184259.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P1372164788946004950

`eq[2, lcm(2, A000120(A266073(n)))]`
-/

namespace A272477.P1372164788946004950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000120 (A266073 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272477.P1372164788946004950

namespace A272477

/-- `eq[2, lcm(2, A000120(A266073(n)))]` -/
def P1372164788946004950.Spec : Prop :=
  ∀ n, (P1372164788946004950.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P11740128923195694566

`∪[A048645(n+1), A004281(n)]`
-/

namespace A272477.P11740128923195694566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P11740128923195694566

namespace A272477

/-- `∪[A048645(n+1), A004281(n)]` -/
def P11740128923195694566.Spec : Prop :=
  ∀ n, (P11740128923195694566.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P18167535924668861392

`∪[A048645(n+1), A020742(n)]`
-/

namespace A272477.P18167535924668861392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P18167535924668861392

namespace A272477

/-- `∪[A048645(n+1), A020742(n)]` -/
def P18167535924668861392.Spec : Prop :=
  ∀ n, (P18167535924668861392.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P11135318534214721697

`∪[A048645(n+1), A223134(n)]`
-/

namespace A272477.P11135318534214721697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P11135318534214721697

namespace A272477

/-- `∪[A048645(n+1), A223134(n)]` -/
def P11135318534214721697.Spec : Prop :=
  ∀ n, (P11135318534214721697.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P12912883999257778808

`lt[1, A073267(n)+Δ[A007623(n)]]`
-/

namespace A272477.P12912883999257778808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 n + (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272477.P12912883999257778808

namespace A272477

/-- `lt[1, A073267(n)+Δ[A007623(n)]]` -/
def P12912883999257778808.Spec : Prop :=
  ∀ n, (P12912883999257778808.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P12160685861153628211

`lt[Δ[A000567(A073137(n))], 12*n]`
-/

namespace A272477.P12160685861153628211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A073137 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A272477.P12160685861153628211

namespace A272477

/-- `lt[Δ[A000567(A073137(n))], 12*n]` -/
def P12160685861153628211.Spec : Prop :=
  ∀ n, (P12160685861153628211.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P8426069292916299709

`eq[1, A358085(A092505(n+1))]+1`
-/

namespace A272477.P8426069292916299709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358085 (A092505 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272477.P8426069292916299709

namespace A272477

/-- `eq[1, A358085(A092505(n+1))]+1` -/
def P8426069292916299709.Spec : Prop :=
  ∀ n, (P8426069292916299709.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P15754287070515127420

`∪[A020735(n+1), A048645(n+1)]`
-/

namespace A272477.P15754287070515127420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P15754287070515127420

namespace A272477

/-- `∪[A020735(n+1), A048645(n+1)]` -/
def P15754287070515127420.Spec : Prop :=
  ∀ n, (P15754287070515127420.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P1490804097731530897

`∪[A048645(n+1), A140139(n+1)]`
-/

namespace A272477.P1490804097731530897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P1490804097731530897

namespace A272477

/-- `∪[A048645(n+1), A140139(n+1)]` -/
def P1490804097731530897.Spec : Prop :=
  ∀ n, (P1490804097731530897.a n : ℤ) = A272477 (n + 1)

end A272477

/-! ## A272477.P3722970258694199980

`∪[A088948(n+1), A262481(n+1)]`
-/

namespace A272477.P3722970258694199980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272477.P3722970258694199980

namespace A272477

/-- `∪[A088948(n+1), A262481(n+1)]` -/
def P3722970258694199980.Spec : Prop :=
  ∀ n, (P3722970258694199980.a n : ℤ) = A272477 (n + 1)

end A272477

/-!
# A272478: Primes with a prime number of binary digits, and with a prime number of 1's and a prime number of 0's.

The programs for A272478, there is no canonical definition to state claims against.
-/

/-! ## A272478.P2037358419567578589

`p?[A380786(n+1)]`
-/

namespace A272478.P2037358419567578589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272478.P2037358419567578589

/-! ## A272478.P11606554190707625339

`∩[A144214(n+1), A380786(n+1)]`
-/

namespace A272478.P11606554190707625339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272478.P11606554190707625339

/-! ## A272478.P8756033511660332305

`filter[A380786(n+1), A010051(#)]`
-/

namespace A272478.P8756033511660332305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A272478.P8756033511660332305

/-! ## A272478.P9022453884775489750

`filter[A380786(n+1), A080339(#)]`
-/

namespace A272478.P9022453884775489750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A272478.P9022453884775489750

/-! ## A272478.P1370469862993587331

`filter[A380786(n+1), A080545(#)]`
-/

namespace A272478.P1370469862993587331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A272478.P1370469862993587331

/-!
# A272480: Number of n-step tri-directional self-avoiding walks on the hexagonal lattice, after first step.

The programs for A272480, there is no canonical definition to state claims against.
-/

/-! ## A272480.P7442069748618228428

`A272265(n+2)/3`
-/

namespace A272480.P7442069748618228428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272265 (n + 2) : ℚ) / 3

end

end A272480.P7442069748618228428

/-! ## A272480.P5695283543280874294

`record[ratio[A272265(A004736(n+1))]]`
-/

namespace A272480.P5695283543280874294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272265 (A004736 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272480.P5695283543280874294

/-! ## A272480.P12068058140095424035

`record[ratio[A272265(A010766(n+1))]]`
-/

namespace A272480.P12068058140095424035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272265 (A010766 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272480.P12068058140095424035

/-! ## A272480.P6353447124859613065

`record[ratio[A272265(A055396(n+1))]]`
-/

namespace A272480.P6353447124859613065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272265 (A055396 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272480.P6353447124859613065

/-! ## A272480.P13921537718067891488

`record[ratio[A272265(A131821(n+1))]]`
-/

namespace A272480.P13921537718067891488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272265 (A131821 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272480.P13921537718067891488

/-!
# A272481: E.g.f. A(x,y) = cos((x - x*y)/2) / cos((x + x*y)/2) represented as a triangle, read by rows, where row n lists of coefficients T(n,k) of x^(2*n)*y^k/n! in A(x,y), for k=0..2*n.

The programs for A272481, there is no canonical definition to state claims against.
-/

/-! ## A272481.P14815473690367049150

`C(A027907(n), A001221(A335457(n+2)))`
-/

namespace A272481.P14815473690367049150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027907 n).toNat (A001221 (A335457 (n + 2)).toNat).toNat

end

end A272481.P14815473690367049150

/-!
# A272482: a(n) equals the coefficient of x^(2*n)*y^n/(2*n)! in cos((x - x*y)/2) / cos((x + x*y)/2).

The programs for A272482, there is no canonical definition to state claims against.
-/

/-! ## A272482.P11034695173836976388

`A005799(n)/2^n*(2*n)!/n!²`
-/

namespace A272482.P11034695173836976388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005799 n : ℚ) / (2 ^ n : ℚ) * (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A272482.P11034695173836976388

/-! ## A272482.P16986840662525920725

`A272481(∑[2*n])`
-/

namespace A272482.P16986840662525920725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272482.P16986840662525920725

/-! ## A272482.P2099327666114163653

`or(1, A272481(A002378(n)))`
-/

namespace A272482.P2099327666114163653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272481 (A002378 n).toNat)

end

end A272482.P2099327666114163653

/-! ## A272482.P13732838434496515486

`A272481(A002378(n))/A007318(∑[n])`
-/

namespace A272482.P13732838434496515486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272481 (A002378 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A272482.P13732838434496515486

/-! ## A272482.P13844676259061284552

`A272481(A002378(n))+A008683(12*(n+1))`
-/

namespace A272482.P13844676259061284552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272481 (A002378 n).toNat + A008683 (12 * (n + 1))

end

end A272482.P13844676259061284552

/-!
# A272483: G.f. A(x) satisfies: A( A(x)^2 ) = C(x) * A(x), where C(x) = x + C(x)^2, with A(0)=0, A'(0)=1.

The programs for A272483, there is no canonical definition to state claims against.
-/

/-! ## A272483.P2008729743472400451

`A256133(A000571(n))+A121244(n+1)`
-/

namespace A272483.P2008729743472400451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A000571 n).toNat + A121244 (n + 1)

end

end A272483.P2008729743472400451

/-! ## A272483.P1711665327847163759

`A194640(A159772(n+1))-A300068(n)`
-/

namespace A272483.P1711665327847163759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A159772 (n + 1)).toNat - A300068 n

end

end A272483.P1711665327847163759

/-! ## A272483.P15169496619734933999

`A256133(A077003(n+1))+A121244(n+1)`
-/

namespace A272483.P15169496619734933999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A077003 (n + 1)).toNat + A121244 (n + 1)

end

end A272483.P15169496619734933999

/-!
# A272484: G.f. A(x) satisfies: A( A(x)^3 ) = C(x) * A(x)^2, where C(x) = x + C(x)^2, with A(0)=0, A'(0)=1.

The programs for A272484, there is no canonical definition to state claims against.
-/

/-! ## A272484.P15474360070622958916

`2*A377898(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A272484.P15474360070622958916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A377898 (a (n - 1)).toNat

end

end A272484.P15474360070622958916

/-! ## A272484.P18331354562002162562

`A247911(A369073(n+1))`
-/

namespace A272484.P18331354562002162562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A369073 (n + 1)).toNat

end

end A272484.P18331354562002162562

/-! ## A272484.P6198441167054903309

`A024417(A148497(n)+A000599(n+2))`
-/

namespace A272484.P6198441167054903309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148497 n + A000599 (n + 2)).toNat

end

end A272484.P6198441167054903309

/-!
# A272485: G.f. A(x) satisfies: A(x)^3 = x * A( A(x)^2 + A(x)^3 ).

The programs for A272485, there is no canonical definition to state claims against.
-/

/-! ## A272485.P17921873110338924840

`A186576(n)+A067169(A129339(n+1))`
-/

namespace A272485.P17921873110338924840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186576 n + A067169 ((A129339 (n + 1)).toNat + 11)

end

end A272485.P17921873110338924840

/-! ## A272485.P7336051997813071399

`A000062(A361762(n))`
-/

namespace A272485.P7336051997813071399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000062 (A361762 n).toNat

end

end A272485.P7336051997813071399

/-! ## A272485.P7171095201976848772

`A101402(A157418(n+1))`
-/

namespace A272485.P7171095201976848772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A157418 (n + 1)).toNat

end

end A272485.P7171095201976848772

/-! ## A272485.P4127078173937536805

`A057364(A369481(n))+1`
-/

namespace A272485.P4127078173937536805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A369481 n).toNat + 1

end

end A272485.P4127078173937536805

/-!
# A272486: Numbers n > 1 such that the polynomial x^(n-k)*(x+1)^k+1 over GF(2) is reducible for all k from 1 to n-1.

The programs for A272486, there is no canonical definition to state claims against.
-/

/-! ## A272486.P602244794459659222

`eq[0, A335383(n+2)]+2`
-/

namespace A272486.P602244794459659222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335383 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A272486.P602244794459659222

/-! ## A272486.P9174251390872421058

`eq[0, A335383(A233583(n+1))]`
-/

namespace A272486.P9174251390872421058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335383 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272486.P9174251390872421058

/-! ## A272486.P13402369767730514096

`A009056(eq[0, A335383(n+2)])`
-/

namespace A272486.P13402369767730514096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272486.P13402369767730514096

/-! ## A272486.P2177857456697381568

`A057544(eq[0, A335383(n+2)])`
-/

namespace A272486.P2177857456697381568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272486.P2177857456697381568

/-! ## A272486.P834534866067035430

`A009056(lt[A335383(n+2), 1])`
-/

namespace A272486.P834534866067035430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335383 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272486.P834534866067035430

/-!
# A272492: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to two.

The programs for A272492, the canonical program `A272492.P953968435264940373` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272492 has offset 2).

The definition of A272492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272492.P953968435264940373

`(n+2)!*(1+((-1)^(n+2)*(sqrt(2)-1)-sqrt(2)-1)/2^((n+2)/2+1))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272492

/-- `(n+2)!*(1+((-1)^(n+2)*(sqrt(2)-1)-sqrt(2)-1)/2^((n+2)/2+1))` -/
def P953968435264940373.Spec : Prop :=
  ∀ n, P953968435264940373.a n = (A272492 (n + 2) : ℝ)

end A272492

/-! ## A272492.P2310949677471251697

`(∏[gcd(2, n)]-1)*∏[lcm(2, n+2)/2]`
-/

namespace A272492.P2310949677471251697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A272492.P2310949677471251697

namespace A272492

/-- `(∏[gcd(2, n)]-1)*∏[lcm(2, n+2)/2]` -/
def P2310949677471251697.Spec : Prop :=
  ∀ n, P2310949677471251697.a n = (A272492 (n + 2) : ℚ)

end A272492

/-! ## A272492.P14957108144149718919

`A262071(∑[n+2]+3)`
-/

namespace A272492.P14957108144149718919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A272492.P14957108144149718919

namespace A272492

/-- `A262071(∑[n+2]+3)` -/
def P14957108144149718919.Spec : Prop :=
  ∀ n, P14957108144149718919.a n = A272492 (n + 2)

end A272492

/-! ## A272492.P10179225270207936902

`record[A262071(A000124(n)+1)]`
-/

namespace A272492.P10179225270207936902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272492.P10179225270207936902

namespace A272492

/-- `record[A262071(A000124(n)+1)]` -/
def P10179225270207936902.Spec : Prop :=
  ∀ n, P10179225270207936902.a n = A272492 (n + 2)

end A272492

/-! ## A272492.P8093937212616119051

`record[A262071(A000217(n)+2)]`
-/

namespace A272492.P8093937212616119051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272492.P8093937212616119051

namespace A272492

/-- `record[A262071(A000217(n)+2)]` -/
def P8093937212616119051.Spec : Prop :=
  ∀ n, P8093937212616119051.a n = A272492 (n + 2)

end A272492

/-! ## A272492.P14024314027793631110

`record[A262071(2*(n+1)-A000194(n))]`
-/

namespace A272492.P14024314027793631110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 ((2 * (n + 1) : ℤ) - A000194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272492.P14024314027793631110

namespace A272492

/-- `record[A262071(2*(n+1)-A000194(n))]` -/
def P14024314027793631110.Spec : Prop :=
  ∀ n, P14024314027793631110.a n = A272492 (n + 2)

end A272492

/-!
# A272493: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to three.

The programs for A272493, there is no canonical definition to state claims against.
-/

/-! ## A272493.P16570367304457624792

`A262071(A167614(n+2))`
-/

namespace A272493.P16570367304457624792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A167614 (n + 2)).toNat

end

end A272493.P16570367304457624792

/-! ## A272493.P5831663630125884312

`A262071(eq[3, A002262(n)])`
-/

namespace A272493.P5831663630125884312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272493.P5831663630125884312

/-! ## A272493.P6441650709832453728

`A262071(eq[8, A059268(n)])`
-/

namespace A272493.P6441650709832453728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272493.P6441650709832453728

/-! ## A272493.P9142503917412273145

`A262071(A000124(n+3)+2)`
-/

namespace A272493.P9142503917412273145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000124 (n + 3) + 2).toNat

end

end A272493.P9142503917412273145

/-! ## A272493.P12849002800070686705

`A262071(A000096(n+2)+4)`
-/

namespace A272493.P12849002800070686705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000096 (n + 2) + 4).toNat

end

end A272493.P12849002800070686705

/-! ## A272493.P7435424582766447771

`A262071(A000217(n+3)+3)`
-/

namespace A272493.P7435424582766447771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000217 (n + 3) + 3).toNat

end

end A272493.P7435424582766447771

/-! ## A272493.P5584668433030508340

`A262071(eq[3, A144328(n+1)])`
-/

namespace A272493.P5584668433030508340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272493.P5584668433030508340

/-! ## A272493.P17435655506226558294

`A262071(eq[4, A002260(n+1)])`
-/

namespace A272493.P17435655506226558294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272493.P17435655506226558294

/-! ## A272493.P8470998135080665320

`A262071(eq[2, A134868(n+1)-2])`
-/

namespace A272493.P8470998135080665320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272493.P8470998135080665320

/-! ## A272493.P4040006666957157046

`A262071(eq[2, A134868(n+1)/2])`
-/

namespace A272493.P4040006666957157046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134868 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A272493.P4040006666957157046

/-!
# A272494: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to four.

The programs for A272494, there is no canonical definition to state claims against.
-/

/-! ## A272494.P15048127992205280952

`A262071(eq[4, A002262(n)])`
-/

namespace A272494.P15048127992205280952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272494.P15048127992205280952

/-! ## A272494.P12598349226880683964

`A262071(eq[16, A059268(n)])`
-/

namespace A272494.P12598349226880683964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272494.P12598349226880683964

/-! ## A272494.P17208715837676205428

`A262071(A000124(n+4)+3)`
-/

namespace A272494.P17208715837676205428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000124 (n + 4) + 3).toNat

end

end A272494.P17208715837676205428

/-! ## A272494.P4386272294800689381

`A262071(A000096(n+3)+5)`
-/

namespace A272494.P4386272294800689381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000096 (n + 3) + 5).toNat

end

end A272494.P4386272294800689381

/-! ## A272494.P2948920829926704849

`A262071(A000217(n+4)+4)`
-/

namespace A272494.P2948920829926704849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A000217 (n + 4) + 4).toNat

end

end A272494.P2948920829926704849

/-! ## A272494.P5615683202440252441

`A262071(eq[4, A144328(n+1)])`
-/

namespace A272494.P5615683202440252441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272494.P5615683202440252441

/-! ## A272494.P16796596637313497021

`A262071(eq[5, A002260(n+1)])`
-/

namespace A272494.P16796596637313497021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272494.P16796596637313497021

/-!
# A272495: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to five.

The programs for A272495, there is no canonical definition to state claims against.
-/

/-! ## A272495.P5628724606626947239

`A262071(A167499(n+4))`
-/

namespace A272495.P5628724606626947239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (A167499 (n + 4)).toNat

end

end A272495.P5628724606626947239

/-! ## A272495.P18410224644183176573

`A262071(eq[5, A002262(n)])`
-/

namespace A272495.P18410224644183176573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272495.P18410224644183176573

/-! ## A272495.P8897036626370266050

`A262071(eq[5, A144328(n+1)])`
-/

namespace A272495.P8897036626370266050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272495.P8897036626370266050

/-! ## A272495.P1657167942332674896

`A262071(eq[6, A002260(n+1)])`
-/

namespace A272495.P1657167942332674896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272495.P1657167942332674896

/-! ## A272495.P117887689458986922

`A262071(eq[13, A037126(n+1)])`
-/

namespace A272495.P117887689458986922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272495.P117887689458986922

/-!
# A272496: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to six.

The programs for A272496, there is no canonical definition to state claims against.
-/

/-! ## A272496.P14197332965788858915

`A262071(eq[6, A002262(n)])`
-/

namespace A272496.P14197332965788858915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272496.P14197332965788858915

/-! ## A272496.P5818443357507675275

`A262071(eq[64, A059268(n)])`
-/

namespace A272496.P5818443357507675275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272496.P5818443357507675275

/-! ## A272496.P6927766040170053443

`A262071(eq[6, A144328(n+1)])`
-/

namespace A272496.P6927766040170053443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272496.P6927766040170053443

/-! ## A272496.P4191226880801475296

`A262071(eq[7, A002260(n+1)])`
-/

namespace A272496.P4191226880801475296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272496.P4191226880801475296

/-! ## A272496.P2810884349590734174

`A262071(eq[8, A245093(n+1)])`
-/

namespace A272496.P2810884349590734174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272496.P2810884349590734174

/-!
# A272497: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to seven.

The programs for A272497, there is no canonical definition to state claims against.
-/

/-! ## A272497.P6812294853416895960

`A262071(eq[7, A002262(n)])`
-/

namespace A272497.P6812294853416895960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272497.P6812294853416895960

/-! ## A272497.P14651203971244581722

`A262071(eq[7, A144328(n+1)])`
-/

namespace A272497.P14651203971244581722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272497.P14651203971244581722

/-! ## A272497.P12817598216483442304

`A262071(eq[8, A002260(n+1)])`
-/

namespace A272497.P12817598216483442304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272497.P12817598216483442304

/-! ## A272497.P16911950461177179317

`A262071(eq[19, A037126(n+1)])`
-/

namespace A272497.P16911950461177179317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272497.P16911950461177179317

/-! ## A272497.P16554356916001980368

`A262071(eq[7, A133233(n)])`
-/

namespace A272497.P16554356916001980368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272497.P16554356916001980368

/-!
# A272498: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to eight.

The programs for A272498, there is no canonical definition to state claims against.
-/

/-! ## A272498.P728063327316978775

`A262071(eq[8, A002262(n)])`
-/

namespace A272498.P728063327316978775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272498.P728063327316978775

/-! ## A272498.P511508117914829948

`A262071(eq[8, A144328(n+1)])`
-/

namespace A272498.P511508117914829948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272498.P511508117914829948

/-! ## A272498.P3056572280624640207

`A262071(eq[9, A002260(n+1)])`
-/

namespace A272498.P3056572280624640207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272498.P3056572280624640207

/-! ## A272498.P3795359382429479450

`A262071(eq[13, A245093(n+1)])`
-/

namespace A272498.P3795359382429479450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272498.P3795359382429479450

/-! ## A272498.P8856643597075909411

`A262071(eq[23, A037126(n+1)])`
-/

namespace A272498.P8856643597075909411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272498.P8856643597075909411

/-!
# A272499: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to nine.

The programs for A272499, there is no canonical definition to state claims against.
-/

/-! ## A272499.P11227663623336695795

`A262071(eq[9, A002262(n)])`
-/

namespace A272499.P11227663623336695795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272499.P11227663623336695795

/-! ## A272499.P845576550468089050

`A262071(eq[9, A144328(n+1)])`
-/

namespace A272499.P845576550468089050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272499.P845576550468089050

/-! ## A272499.P12769920290851700368

`A262071(eq[10, A002260(n+1)])`
-/

namespace A272499.P12769920290851700368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272499.P12769920290851700368

/-! ## A272499.P11862743375347916788

`A262071(eq[29, A037126(n+1)])`
-/

namespace A272499.P11862743375347916788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272499.P11862743375347916788

/-! ## A272499.P3420562647317863923

`A262071(eq[9, A133233(n)])`
-/

namespace A272499.P3420562647317863923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272499.P3420562647317863923

