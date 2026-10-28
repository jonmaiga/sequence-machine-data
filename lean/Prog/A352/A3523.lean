import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A352300: Expansion of e.g.f. 1/(2 - exp(x) - x^4).

The programs for A352300, there is no canonical definition to state claims against.
-/

/-! ## A352300.P8679468340599189711

`A052652(n)+A004525(A076726(n))`
-/

namespace A352300.P8679468340599189711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052652 n + A004525 (A076726 n).toNat

end

end A352300.P8679468340599189711

/-! ## A352300.P14446681718886242494

`A109613(A000670(n))+A052652(n)`
-/

namespace A352300.P14446681718886242494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A000670 n).toNat + A052652 n

end

end A352300.P14446681718886242494

/-!
# A352302: Expansion of e.g.f. 1/(exp(x) - x^2).

The programs for A352302, there is no canonical definition to state claims against.
-/

/-! ## A352302.P17251722480274306500

`A293125(n)-A006924(A014371(n))`
-/

namespace A352302.P17251722480274306500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293125 n - A006924 (A014371 n).toNat

end

end A352302.P17251722480274306500

/-! ## A352302.P4119515660628880251

`A012970(n)-A002262(A352293(n))`
-/

namespace A352302.P4119515660628880251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012970 n - A002262 (A352293 n).toNat

end

end A352302.P4119515660628880251

/-!
# A352303: Expansion of e.g.f. 1/(exp(x) - x^3).

The programs for A352303, there is no canonical definition to state claims against.
-/

/-! ## A352303.P10795044087775382855

`A057077(A001541(n))*A362430(n)`
-/

namespace A352303.P10795044087775382855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A001541 n).toNat * A362430 n

end

end A352303.P10795044087775382855

/-! ## A352303.P17508521025098646120

`A076479(A002110(n))*A362430(n)`
-/

namespace A352303.P17508521025098646120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (A002110 n).toNat * A362430 n

end

end A352303.P17508521025098646120

/-!
# A352304: Expansion of e.g.f. 1/(exp(x) - x^4).

The programs for A352304, there is no canonical definition to state claims against.
-/

/-! ## A352304.P6347695706675710207

`(-1)^n*A004442((n-3)*(n-2)*(n-1)*n*2^(n-4))`
-/

namespace A352304.P6347695706675710207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A004442 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat

end

end A352304.P6347695706675710207

/-! ## A352304.P6368740873381395792

`(-1)^n*A109613((n-3)*(n-2)*(n-1)*n*2^(n-4))`
-/

namespace A352304.P6368740873381395792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109613 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat

end

end A352304.P6368740873381395792

/-! ## A352304.P1138382806176216461

`xor((n-3)*(n-2)*(n-1)*n*2^(n-4), A062157(A084518(n+1)))`
-/

namespace A352304.P1138382806176216461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))) (A062157 (A084518 (n + 1)).toNat)

end

end A352304.P1138382806176216461

/-! ## A352304.P1610134029208705119

`A004442(A052796(n))*A033999(n)`
-/

namespace A352304.P1610134029208705119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A052796 n).toNat * A033999 n

end

end A352304.P1610134029208705119

/-!
# A352305: a(n) is the (conjectured) largest even number that can be expressed as the sum of two distinct primes in exactly n ways.

The programs for A352305, there is no canonical definition to state claims against.
-/

/-! ## A352305.P178846767845140193

`∑[A278224(A223151(n+1)+8)]`
-/

namespace A352305.P178846767845140193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A223151 (n + 1) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352305.P178846767845140193

/-!
# A352306: Expansion of e.g.f. 1/(2 - exp(x) - x^2/2).

The programs for A352306, there is no canonical definition to state claims against.
-/

/-! ## A352306.P1393970159612386358

`A357004(A305986(n))`
-/

namespace A352306.P1393970159612386358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357004 (A305986 n).toNat

end

end A352306.P1393970159612386358

/-! ## A352306.P7345512162345460005

`A050292(Δ[A003713(n)])`
-/

namespace A352306.P7345512162345460005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (f1 (n + 1) - f1 n).toNat

end

end A352306.P7345512162345460005

/-!
# A352307: Expansion of e.g.f. 1/(2 - exp(x) - x^3/6).

The programs for A352307, there is no canonical definition to state claims against.
-/

/-! ## A352307.P13554031101660126549

`A156563(n*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A352307.P13554031101660126549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A156563 ((n : ℤ) * a (n - 1)).toNat

end

end A352307.P13554031101660126549

/-! ## A352307.P15626767094839779688

`A089792(A182969(n))`
-/

namespace A352307.P15626767094839779688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 (A182969 n).toNat

end

end A352307.P15626767094839779688

/-!
# A352308: Expansion of e.g.f. 1/(2 - exp(x) - x^4/24).

The programs for A352308, there is no canonical definition to state claims against.
-/

/-! ## A352308.P18395825227305812512

`A004526(A000670(n)-A205572(n))+A000670(n)`
-/

namespace A352308.P18395825227305812512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000670 n - A205572 n).toNat + A000670 n

end

end A352308.P18395825227305812512

/-! ## A352308.P8797001558068096686

`A006370(A000670(n)-A205572(n))+A000670(n)`
-/

namespace A352308.P8797001558068096686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A000670 n - A205572 n).toNat + A000670 n

end

end A352308.P8797001558068096686

/-! ## A352308.P13735574394521087968

`A076726(n)+A018843(A177510(n))-A343787(n)`
-/

namespace A352308.P13735574394521087968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076726 n + (A018843 (A177510 n).toNat - A343787 n)

end

end A352308.P13735574394521087968

/-! ## A352308.P1735928782487418431

`A000038(A299317(n+1))+A076726(n)-A343787(n)`
-/

namespace A352308.P1735928782487418431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A299317 (n + 1)).toNat + (A076726 n - A343787 n)

end

end A352308.P1735928782487418431

/-!
# A352309: Expansion of e.g.f. 1/(exp(x) - x^2/2).

The programs for A352309, there is no canonical definition to state claims against.
-/

/-! ## A352309.P9733990699366580652

`A009132(n)-A351572(A008542(n))`
-/

namespace A352309.P9733990699366580652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009132 n - A351572 (A008542 n).toNat

end

end A352309.P9733990699366580652

/-!
# A352313: a(n) is -2^(2n) times the derivative of order 2n of the logarithm of J_0(x) (the Bessel function of the first kind of order zero) evaluated at zero.

The programs for A352313, there is no canonical definition to state claims against.
-/

/-! ## A352313.P8502218100780057885

`abs(A352284(n))`
-/

namespace A352313.P8502218100780057885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352284 n|

end

end A352313.P8502218100780057885

/-! ## A352313.P9116319953349642278

`A000984(n)*A002190(n)`
-/

namespace A352313.P9116319953349642278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002190 n

end

end A352313.P9116319953349642278

/-! ## A352313.P12436372946686157062

`lcm(A007318(n), A352284(n))`
-/

namespace A352313.P12436372946686157062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A352284 n)

end

end A352313.P12436372946686157062

/-! ## A352313.P12456137700699141874

`abs(A000984(n)*A101981(n))`
-/

namespace A352313.P12456137700699141874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000984 n * A101981 n|

end

end A352313.P12456137700699141874

/-! ## A352313.P8163558322751865280

`gcd(A352245(A352246(n)), A352284(n))`
-/

namespace A352313.P8163558322751865280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A352245 (A352246 n).toNat) (A352284 n)

end

end A352313.P8163558322751865280

/-!
# A352316: Perimeter of primitive integer-sided triangles such that the distance d = OI between the circumcenter O and the incenter I is also a positive integer.

The programs for A352316, there is no canonical definition to state claims against.
-/

/-! ## A352316.P18349188115536568290

`A133481(n+5)*A254045(A293741(2*(n+2)))`
-/

namespace A352316.P18349188115536568290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133481 (n + 5) * A254045 (A293741 (2 * (n + 2))).toNat

end

end A352316.P18349188115536568290

/-!
# A352317: Numbers m such that A352688(m) = 1.

The programs for A352317, there is no canonical definition to state claims against.
-/

/-! ## A352317.P586549523293247314

`a(n-3)+9` with `a(0)=3, a(1)=9, a(2)=10`
-/

namespace A352317.P586549523293247314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 10] fun n a =>
  a (n - 3) + 9

end

end A352317.P586549523293247314

/-! ## A352317.P10648635832685186877

`∑[xor(2, n%3)!]+1`
-/

namespace A352317.P10648635832685186877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 2 (n % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A352317.P10648635832685186877

/-! ## A352317.P3352744427311081552

`record[n+3-lcm(4, dr(n))]`
-/

namespace A352317.P3352744427311081552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.lcm 4 (SequenceMachineLib.digitalRoot (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352317.P3352744427311081552

/-! ## A352317.P10136908645937937984

`∑[abs(a(n-3))]` with `a(0)=3, a(1)=6, a(2)=1, a(3)=2`
-/

namespace A352317.P10136908645937937984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352317.P10136908645937937984

/-! ## A352317.P4109528478127835351

`∑[dr(a(n-3))]` with `a(0)=3, a(1)=6, a(2)=1, a(3)=2`
-/

namespace A352317.P4109528478127835351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352317.P4109528478127835351

/-! ## A352317.P8391046256276006447

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=6, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A352317.P8391046256276006447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352317.P8391046256276006447

/-! ## A352317.P8315828037243806517

`∑[ceil(a(n-3))]` with `a(0)=3, a(1)=6, a(2)=1, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A352317.P8315828037243806517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352317.P8315828037243806517

/-! ## A352317.P6779509370121670564

`∑[round(a(n-3))]` with `a(0)=3, a(1)=6, a(2)=1, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A352317.P6779509370121670564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352317.P6779509370121670564

/-! ## A352317.P4794566675147223459

`∑[gcd(6, a(n-3))]` with `a(0)=3, a(1)=6, a(2)=1, a(3)=2`
-/

namespace A352317.P4794566675147223459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 1, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352317.P4794566675147223459

/-! ## A352317.P5500748831720158579

`record[n+3-dr((2*n+1)²-(n+1))]`
-/

namespace A352317.P5500748831720158579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (SequenceMachineLib.digitalRoot (((2 * n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352317.P5500748831720158579

/-!
# A352319: Numbers whose minimal (or greedy) Pell representation (A317204) is palindromic.

The programs for A352319, there is no canonical definition to state claims against.
-/

/-! ## A352319.P8863975506900314436

`eq[A004086(A317204(n)), A317204(n)]`
-/

namespace A352319.P8863975506900314436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A317204 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352319.P8863975506900314436

/-! ## A352319.P10872738437489338871

`A111660(∑[A055948(n)])`
-/

namespace A352319.P10872738437489338871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352319.P10872738437489338871

/-! ## A352319.P8292821485046727402

`A111660(∑[A319804(n)])`
-/

namespace A352319.P8292821485046727402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352319.P8292821485046727402

/-! ## A352319.P14733345374710211235

`∑[A360679(record[A323767(n)])]`
-/

namespace A352319.P14733345374710211235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352319.P14733345374710211235

/-! ## A352319.P3603411425838870414

`A305231(n+1)-A001222(A001764(n))`
-/

namespace A352319.P3603411425838870414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1) - A001222 (A001764 n).toNat

end

end A352319.P3603411425838870414

/-!
# A352320: Pell-Niven numbers: numbers that are divisible by the sum of the digits in their minimal (or greedy) representation in terms of the Pell numbers (A317204).

The programs for A352320, there is no canonical definition to state claims against.
-/

/-! ## A352320.P3833039467639560014

`lt[Δ[A098566(n+1)], A098514(n+1)]`
-/

namespace A352320.P3833039467639560014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098566 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098514 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A352320.P3833039467639560014

/-! ## A352320.P2535234443413493581

`A137291(n+1)+A010051(A005176(n))`
-/

namespace A352320.P2535234443413493581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137291 (n + 1) + A010051 (A005176 n).toNat

end

end A352320.P2535234443413493581

/-! ## A352320.P16724090265637638983

`A028310(lt[A303727(n+1), A007444(n+1)])`
-/

namespace A352320.P16724090265637638983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352320.P16724090265637638983

/-! ## A352320.P8138805251514802459

`A248888(lt[A015128(n), A248846(3*n+4)])`
-/

namespace A352320.P8138805251514802459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248846 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352320.P8138805251514802459

/-! ## A352320.P16659428646005759320

`A248888(lt[A286938(n), A248846(3*n+4)])`
-/

namespace A352320.P16659428646005759320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248846 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248888 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352320.P16659428646005759320

/-!
# A352321: Numbers k such that k and k+1 are both Pell-Niven numbers (A352320).

The programs for A352321, there is no canonical definition to state claims against.
-/

/-! ## A352321.P8156004405172837150

`∩[A352320(n+1)-1, A352320(n+1)]`
-/

namespace A352321.P8156004405172837150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352320 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352321.P8156004405172837150

/-!
# A352322: Starts of runs of 3 consecutive Pell-Niven numbers (A352320).

The programs for A352322, there is no canonical definition to state claims against.
-/

/-! ## A352322.P15548281424481442679

`∩[A352321(n+1)-1, A352321(n+1)]`
-/

namespace A352322.P15548281424481442679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352321 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352322.P15548281424481442679

/-! ## A352322.P2940444296861626950

`∩[A352321(n+1), A023443(A352321(n+1))]`
-/

namespace A352322.P2940444296861626950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352321 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352322.P2940444296861626950

/-!
# A352323: Positive numbers that are not the sum of distinct Pell numbers (A000129).

The programs for A352323, there is no canonical definition to state claims against.
-/

/-! ## A352323.P9529848058770224512

`eq[0, A290808(n)]`
-/

namespace A352323.P9529848058770224512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352323.P9529848058770224512

/-! ## A352323.P11333009419649655374

`A000027(lt[A290808(n), 1])`
-/

namespace A352323.P11333009419649655374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A352323.P11333009419649655374

/-! ## A352323.P10786062439232430135

`lt[A290808(n), acot(A003107(n))]`
-/

namespace A352323.P10786062439232430135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A003107 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352323.P10786062439232430135

/-! ## A352323.P9522323339964942141

`lt[A290808(n), acot(A007000(n))]`
-/

namespace A352323.P9522323339964942141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A007000 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352323.P9522323339964942141

/-! ## A352323.P16422723681817412879

`lt[A290808(n), acot(A067595(n))]`
-/

namespace A352323.P16422723681817412879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A067595 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352323.P16422723681817412879

/-! ## A352323.P16331408274365508836

`lt[A290808(n), acot(A117546(n))]`
-/

namespace A352323.P16331408274365508836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A117546 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352323.P16331408274365508836

/-! ## A352323.P14997885851224840081

`lt[A290808(n), acot(A000119(n))]`
-/

namespace A352323.P14997885851224840081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000119 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352323.P14997885851224840081

/-! ## A352323.P5284659805560909040

`lt[A290808(n), acot(A000121(n))]`
-/

namespace A352323.P5284659805560909040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000121 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352323.P5284659805560909040

/-! ## A352323.P10846577951205491256

`lt[A290808(n), acot(A013583(n+1))]`
-/

namespace A352323.P10846577951205491256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A013583 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A352323.P10846577951205491256

/-! ## A352323.P1856065238606075505

`eq[0, A006996(A352417(n))]`
-/

namespace A352323.P1856065238606075505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (A352417 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352323.P1856065238606075505

/-!
# A352326: Expansion of e.g.f.: 1/(2 - exp(x) - sinh(x)).

The programs for A352326, there is no canonical definition to state claims against.
-/

/-! ## A352326.P8827549278764078390

`A004526((10^n+8)/9)+floor(22^(n/5))`
-/

namespace A352326.P8827549278764078390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((10 ^ n + 8 : ℚ) / 9)).toNat + ⌊(22 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A352326.P8827549278764078390

/-!
# A352327: Expansion of e.g.f.: 1/(3 - exp(x) - cosh(x)).

The programs for A352327, there is no canonical definition to state claims against.
-/

/-! ## A352327.P9641077535095289171

`A006368(A258369(n))`
-/

namespace A352327.P9641077535095289171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A258369 n).toNat

end

end A352327.P9641077535095289171

/-! ## A352327.P12910805643405362575

`A057353(A258369(n)+1)`
-/

namespace A352327.P12910805643405362575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A258369 n + 1).toNat

end

end A352327.P12910805643405362575

/-!
# A352328: Nonnegative numbers that are the sum of distinct Pell numbers (A000129).

The programs for A352328, there is no canonical definition to state claims against.
-/

/-! ## A352328.P1408415445398497422

`2*a(floor(n/2))+a(floor(n/4))+n%2` with `a(0)=0`
-/

namespace A352328.P1408415445398497422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + (a ⌊(n : ℚ) / 4⌋.toNat + n % 2)

end

end A352328.P1408415445398497422

/-! ## A352328.P10284951761413446078

`lt[0, A290808(n)]`
-/

namespace A352328.P10284951761413446078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A352328.P10284951761413446078

/-! ## A352328.P12976091953690365637

`comp[A352323(n+1)]`
-/

namespace A352328.P12976091953690365637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A352328.P12976091953690365637

/-! ## A352328.P13193283373095380255

`lt[2*(n-2), A352417(n)]`
-/

namespace A352328.P13193283373095380255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352417 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352328.P13193283373095380255

/-! ## A352328.P2854760394647931069

`eq[1, A290808(round(sqrt(n²+1)))]`
-/

namespace A352328.P2854760394647931069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290808 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352328.P2854760394647931069

/-! ## A352328.P18084827694493623305

`A352416(record[A060372(n)])`
-/

namespace A352328.P18084827694493623305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352328.P18084827694493623305

/-! ## A352328.P2731435140506617849

`A352416(record[A352417(n)])`
-/

namespace A352328.P2731435140506617849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352328.P2731435140506617849

/-! ## A352328.P15598874908739301232

`A352416(A005836(n+1))`
-/

namespace A352328.P15598874908739301232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352416 (A005836 (n + 1)).toNat

end

end A352328.P15598874908739301232

/-! ## A352328.P16137669336019850731

`filter[A352416(n), A290808(#)]`
-/

namespace A352328.P16137669336019850731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290808 (f1 j).toNat = 1) n)

end

end A352328.P16137669336019850731

/-!
# A352333: a(1) = 1. For n >= 2, a(n) is the number whose base a(n-1) + 1 digit values, written in base 10, are the terms from a(1) through a(n-1).

The programs for A352333, there is no canonical definition to state claims against.
-/

/-! ## A352333.P7775467165306443268

`or(1, A153984(A153949(n+2)))`
-/

namespace A352333.P7775467165306443268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A153984 (A153949 (n + 2)).toNat)

end

end A352333.P7775467165306443268

/-!
# A352335: Numbers whose representation in the Fibonacci base is a cubefree word.

The programs for A352335, there is no canonical definition to state claims against.
-/

/-! ## A352335.P3285832740053216555

`eq[A003714(n), A337223(A003714(n))]`
-/

namespace A352335.P3285832740053216555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352335.P3285832740053216555

/-! ## A352335.P1594103311723801757

`eq[A049347(A279168(n+5)), A344606(n+1)]`
-/

namespace A352335.P1594103311723801757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A279168 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352335.P1594103311723801757

/-!
# A352336: Define a sequence B = {b(i): i >= 1} by b(i) = smallest unused number when A109812(i) is being calculated, and then remove duplicates from B.

The programs for A352336, there is no canonical definition to state claims against.
-/

/-! ## A352336.P16157009887063651567

`A109812(A352359(n+1))`
-/

namespace A352336.P16157009887063651567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (A352359 (n + 1)).toNat

end

end A352336.P16157009887063651567

/-! ## A352336.P7230520702542738396

`A109812(record[A113233(n+1)])`
-/

namespace A352336.P7230520702542738396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109812 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A352336.P7230520702542738396

/-! ## A352336.P494050968615839795

`A352792(record[A113233(n+1)])+1`
-/

namespace A352336.P494050968615839795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A352336.P494050968615839795

/-! ## A352336.P2873128109825281410

`A352792(A352359(n+1))+A178334(n+1)`
-/

namespace A352336.P2873128109825281410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A352359 (n + 1)).toNat + A178334 (n + 1)

end

end A352336.P2873128109825281410

/-! ## A352336.P12406366024774854176

`A352792(A352359(n+1))+A000034(2*n)`
-/

namespace A352336.P12406366024774854176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A352359 (n + 1)).toNat + A000034 (2 * n)

end

end A352336.P12406366024774854176

/-! ## A352336.P8990339417902072300

`A352792(A352359(n+1))+A007318(C(2, n))`
-/

namespace A352336.P8990339417902072300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A352359 (n + 1)).toNat + A007318 (Nat.choose 2 n)

end

end A352336.P8990339417902072300

/-! ## A352336.P8968557251938726218

`A352792(A352359(n+1))+A014963(12*(n+1))`
-/

namespace A352336.P8968557251938726218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A352359 (n + 1)).toNat + A014963 (12 * (n + 1))

end

end A352336.P8968557251938726218

/-! ## A352336.P6463229809055843299

`A352792(A352359(n+1))+A007318(val(n+1, 9))`
-/

namespace A352336.P6463229809055843299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A352359 (n + 1)).toNat + A007318 (SequenceMachineLib.valuation (n + 1) 9)

end

end A352336.P6463229809055843299

/-! ## A352336.P8373966209732939657

`A352792(A352359(n+1))+A000108(A178334(n))`
-/

namespace A352336.P8373966209732939657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352792 (A352359 (n + 1)).toNat + A000108 (A178334 n).toNat

end

end A352336.P8373966209732939657

/-! ## A352336.P156110085284685555

`A113233(A113232(A352359(A113234(A113232(n+1)))))`
-/

namespace A352336.P156110085284685555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A113232 (A352359 (A113234 (A113232 (n + 1)).toNat).toNat).toNat).toNat

end

end A352336.P156110085284685555

/-!
# A352337: Numbers m such that A_m(j) = 1 for some value of j, where A_m(k+1) = 2*A_m(k) - sigma(A_m(k)), sigma(m) = sum of the divisors of m, and A_m(1) = m.

The programs for A352337, there is no canonical definition to state claims against.
-/

/-! ## A352337.P14440408857517801857

`lt[A358371(3*(n+1)), A010879(A000201(n+1))]`
-/

namespace A352337.P14440408857517801857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A000201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352337.P14440408857517801857

/-!
# A352338: Prime numbers of the form (i+1)*A352185(i) + A352186(i) for some i > 0.

The programs for A352338, there is no canonical definition to state claims against.
-/

/-! ## A352338.P7354042354098805173

`A007918(A085420(A362850(n+2)))`
-/

namespace A352338.P7354042354098805173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A085420 (A362850 (n + 2)).toNat).toNat

end

end A352338.P7354042354098805173

/-! ## A352338.P15994881081171626591

`record[A358238(n+2)/A164645(A164645(n+1))]`
-/

namespace A352338.P15994881081171626591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358238 (n + 2) : ℚ) / (A164645 (A164645 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352338.P15994881081171626591

/-! ## A352338.P17069226946492604301

`A358238(lt[A224873(n+1), A358228(n+1)]+2)`
-/

namespace A352338.P17069226946492604301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358238 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A352338.P17069226946492604301

/-!
# A352339: a(n) is the maximal (or lazy) Pell representation of n using a ternary system of vectors.

The programs for A352339, there is no canonical definition to state claims against.
-/

/-! ## A352339.P11443648619903590901

`eq[A051801(n), A113143(A097508(n))]`
-/

namespace A352339.P11443648619903590901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113143 (A097508 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352339.P11443648619903590901

/-! ## A352339.P14010038554357147445

`eq[A054055(n), A178090(A088468(n))]`
-/

namespace A352339.P14010038554357147445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (A088468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352339.P14010038554357147445

/-! ## A352339.P13291508552793716070

`eq[A054055(n), A328616(A277022(n))]`
-/

namespace A352339.P13291508552793716070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328616 (A277022 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352339.P13291508552793716070

/-! ## A352339.P14888564492284851407

`A007089(lt[A006999(n), A144879(n+1)])`
-/

namespace A352339.P14888564492284851407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A352339.P14888564492284851407

/-! ## A352339.P8133586758444006146

`A007089(eq[A032568(n+1), A306211(2^n)])`
-/

namespace A352339.P8133586758444006146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A352339.P8133586758444006146

/-!
# A352340: a(n) is the sum of digits of n in the maximal Pell representation of n (A352339).

The programs for A352340, there is no canonical definition to state claims against.
-/

/-! ## A352340.P2112343194943009569

`A007953(A352339(n))`
-/

namespace A352340.P2112343194943009569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A352339 n).toNat

end

end A352340.P2112343194943009569

/-! ## A352340.P14301875113792263321

`∑{digits}[A352339(n), #]`
-/

namespace A352340.P14301875113792263321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A352340.P14301875113792263321

/-! ## A352340.P15544684544340108171

`dr(A010170(A056809(n+1))*A352339(n))`
-/

namespace A352340.P15544684544340108171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A010170 (A056809 (n + 1)).toNat * A352339 n)

end

end A352340.P15544684544340108171

/-! ## A352340.P17448429280315716363

`dr(A352339(n)%A000420(n))`
-/

namespace A352340.P17448429280315716363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A352339 n) (A000420 n))

end

end A352340.P17448429280315716363

/-! ## A352340.P9513392787822740

`A109578(A166559(n+1))+dr(A352339(n))`
-/

namespace A352340.P9513392787822740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (A166559 (n + 1)).toNat + (SequenceMachineLib.digitalRoot (A352339 n) : ℤ)

end

end A352340.P9513392787822740

/-! ## A352340.P17522745963673209147

`dr(A245477(A000384(n))*A352339(n))`
-/

namespace A352340.P17522745963673209147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A245477 (A000384 n).toNat * A352339 n)

end

end A352340.P17522745963673209147

/-!
# A352341: Numbers whose maximal Pell representation (A352339) is palindromic.

The programs for A352341, there is no canonical definition to state claims against.
-/

/-! ## A352341.P13642153868643590467

`eq[A004086(A352339(n)), A352339(n)]`
-/

namespace A352341.P13642153868643590467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A352339 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352341.P13642153868643590467

/-! ## A352341.P16016277443877512432

`eq[0, A056965(A352339(n))]`
-/

namespace A352341.P16016277443877512432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A352339 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352341.P16016277443877512432

/-! ## A352341.P5218608337870093191

`record[A101876(n+1)-A272863(2*n+5)]`
-/

namespace A352341.P5218608337870093191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101876 (n + 1) - A272863 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352341.P5218608337870093191

/-! ## A352341.P3548414872288853282

`lt[A256756(A352339(n)), A028310(n)]`
-/

namespace A352341.P3548414872288853282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A352339 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352341.P3548414872288853282

/-!
# A352342: Lazy-Pell-Niven numbers: numbers that are divisible by the sum of the digits in their maximal (or lazy) representation in terms of the Pell numbers (A352339).

The programs for A352342, there is no canonical definition to state claims against.
-/

/-! ## A352342.P503826239283747172

`A071562(A161873(n+1)-A242998(3*n+2))`
-/

namespace A352342.P503826239283747172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (A161873 (n + 1) - A242998 (3 * n + 2)).toNat

end

end A352342.P503826239283747172

/-!
# A352343: Numbers k such that k and k+1 are both lazy-Pell-Niven numbers (A352342).

The programs for A352343, there is no canonical definition to state claims against.
-/

/-! ## A352343.P6861125087582345779

`∩[A352342(n+1)-1, A352342(n+1)]`
-/

namespace A352343.P6861125087582345779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352342 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352343.P6861125087582345779

/-!
# A352344: Starts of runs of 3 consecutive lazy-Pell-Niven numbers (A352342).

The programs for A352344, there is no canonical definition to state claims against.
-/

/-! ## A352344.P14704627542500385660

`∩[A352343(n+1)-1, A352343(n+1)]`
-/

namespace A352344.P14704627542500385660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352343 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A352344.P14704627542500385660

/-!
# A352348: Maximum determinant of n X n matrix composed of {-1, 0, 1} with pairwise orthogonal rows.

The programs for A352348, there is no canonical definition to state claims against.
-/

/-! ## A352348.P8189025143644488221

`A017666(A057567(n+1)^A243349(n+1))`
-/

namespace A352348.P8189025143644488221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (SequenceMachineLib.roundAway ((A057567 (n + 1) : ℚ) ^ (A243349 (n + 1) : ℤ))).toNat

end

end A352348.P8189025143644488221

/-! ## A352348.P17224030701736141545

`A028310(A057567(n+1)^A243349(n+1))`
-/

namespace A352348.P17224030701736141545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A057567 (n + 1) : ℚ) ^ (A243349 (n + 1) : ℤ))).toNat

end

end A352348.P17224030701736141545

/-! ## A352348.P7682986269434182241

`A098988(A057567(n+1)^A243349(n+1))`
-/

namespace A352348.P7682986269434182241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098988 (SequenceMachineLib.roundAway ((A057567 (n + 1) : ℚ) ^ (A243349 (n + 1) : ℤ))).toNat

end

end A352348.P7682986269434182241

/-!
# A352351: Primes "p" corresponding to the even numbers with exactly 1 pair of Goldbach partitions, (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352351, there is no canonical definition to state claims against.
-/

/-! ## A352351.P7215696134493175213

`A352297(n+1)-A352352(n+1)`
-/

namespace A352351.P7215696134493175213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352297 (n + 1) - A352352 (n + 1)

end

end A352351.P7215696134493175213

/-! ## A352351.P12940525578655889001

`A064989(A352353(n+1))`
-/

namespace A352351.P12940525578655889001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A352353 (n + 1)).toNat

end

end A352351.P12940525578655889001

/-! ## A352351.P5873978943332315672

`A335285(A352353(n+1)+1)`
-/

namespace A352351.P5873978943332315672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A352353 (n + 1) + 1).toNat

end

end A352351.P5873978943332315672

/-! ## A352351.P307549113559837039

`A007917(A352353(n+1)-1)`
-/

namespace A352351.P307549113559837039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A352353 (n + 1) - 1).toNat

end

end A352351.P307549113559837039

/-! ## A352351.P4167383079218832269

`A079068(2*A352353(n+1))`
-/

namespace A352351.P4167383079218832269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (2 * A352353 (n + 1)).toNat

end

end A352351.P4167383079218832269

/-! ## A352351.P377623604590751261

`A352354(n+1)+A352353(n+1)-A352352(n+1)`
-/

namespace A352351.P377623604590751261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352354 (n + 1) + A352353 (n + 1) - A352352 (n + 1)

end

end A352351.P377623604590751261

/-!
# A352352: Primes "q" corresponding to the even numbers with exactly 1 pair of Goldbach partitions, (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352352, there is no canonical definition to state claims against.
-/

/-! ## A352352.P11946088186120717896

`A352297(n+1)-A352351(n+1)`
-/

namespace A352352.P11946088186120717896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352297 (n + 1) - A352351 (n + 1)

end

end A352352.P11946088186120717896

/-! ## A352352.P11106017476531277481

`A003961(A352354(n+1))`
-/

namespace A352352.P11106017476531277481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A352354 (n + 1)).toNat

end

end A352352.P11106017476531277481

/-! ## A352352.P16139729731991465228

`A007918(A352354(n+1)+1)`
-/

namespace A352352.P16139729731991465228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A352354 (n + 1) + 1).toNat

end

end A352352.P16139729731991465228

/-! ## A352352.P14614376239856179457

`A352354(n+1)+A352353(n+1)-A352351(n+1)`
-/

namespace A352352.P14614376239856179457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352354 (n + 1) + A352353 (n + 1) - A352351 (n + 1)

end

end A352352.P14614376239856179457

/-!
# A352353: Primes "r" corresponding to the even numbers with exactly 1 pair of Goldbach partitions, (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352353, there is no canonical definition to state claims against.
-/

/-! ## A352353.P15672223544529646472

`A352297(n+1)-A352354(n+1)`
-/

namespace A352353.P15672223544529646472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352297 (n + 1) - A352354 (n + 1)

end

end A352353.P15672223544529646472

/-! ## A352353.P10102399781071791806

`A003961(A352351(n+1))`
-/

namespace A352353.P10102399781071791806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A352351 (n + 1)).toNat

end

end A352353.P10102399781071791806

/-! ## A352353.P71106081415241069

`A007918(A352351(n+1)+1)`
-/

namespace A352353.P71106081415241069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A352351 (n + 1) + 1).toNat

end

end A352353.P71106081415241069

/-! ## A352353.P125483930037193075

`A151800(A352351(n+1)+1)`
-/

namespace A352353.P125483930037193075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A352351 (n + 1) + 1).toNat

end

end A352353.P125483930037193075

/-! ## A352353.P11033774695988628895

`A352352(n+1)+A352351(n+1)-A352354(n+1)`
-/

namespace A352353.P11033774695988628895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352352 (n + 1) + A352351 (n + 1) - A352354 (n + 1)

end

end A352353.P11033774695988628895

/-!
# A352354: Primes "s" corresponding to the even numbers with exactly 1 pair of Goldbach partitions, (p,q) and (r,s) with p,q,r,s prime and p < r <= s < q, such that all integers in the open intervals (p,r) and (s,q) are composite.

The programs for A352354, there is no canonical definition to state claims against.
-/

/-! ## A352354.P1866683923535012917

`A352297(n+1)-A352353(n+1)`
-/

namespace A352354.P1866683923535012917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352297 (n + 1) - A352353 (n + 1)

end

end A352354.P1866683923535012917

/-! ## A352354.P17282100323075234984

`A064989(A352352(1+n))`
-/

namespace A352354.P17282100323075234984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A352352 (1 + n)).toNat

end

end A352354.P17282100323075234984

/-! ## A352354.P2691459350036826304

`A342654(A352352(n+1))`
-/

namespace A352354.P2691459350036826304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342654 (A352352 (n + 1)).toNat

end

end A352354.P2691459350036826304

/-! ## A352354.P10262452869543345940

`A335285(A352352(n+1)+1)`
-/

namespace A352354.P10262452869543345940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A352352 (n + 1) + 1).toNat

end

end A352354.P10262452869543345940

/-! ## A352354.P15601241763970170141

`A007917(A352352(n+1)-1)`
-/

namespace A352354.P15601241763970170141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A352352 (n + 1) - 1).toNat

end

end A352354.P15601241763970170141

/-! ## A352354.P9484829241817128369

`A352352(n+1)+A352351(n+1)-A352353(n+1)`
-/

namespace A352354.P9484829241817128369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352352 (n + 1) + A352351 (n + 1) - A352353 (n + 1)

end

end A352354.P9484829241817128369

/-!
# A352355: a(n) is the least prime == prime(i-1) (mod prime(i)) for 2 <= i <= n.

The programs for A352355, there is no canonical definition to state claims against.
-/

/-! ## A352355.P2542168536720924426

`p?[A116151(n+1)+A031436(n)]`
-/

namespace A352355.P2542168536720924426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116151 (n + 1) + A031436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352355.P2542168536720924426

/-!
# A352356: Number of ways to write 12*n + 5 as 2*x^2 + 5*y^2 + 9*z^2 + x*y*z, where x, y and z are nonnegative integers.

The programs for A352356, there is no canonical definition to state claims against.
-/

/-! ## A352356.P2733429594627210604

`A001222(A103287(n)+A055544(n+1))`
-/

namespace A352356.P2733429594627210604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A103287 n + A055544 (n + 1)).toNat

end

end A352356.P2733429594627210604

/-! ## A352356.P2978240944531590388

`A001222(A181355(n+1)+A000930(n))`
-/

namespace A352356.P2978240944531590388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181355 (n + 1) + A000930 n).toNat

end

end A352356.P2978240944531590388

/-! ## A352356.P1999169358996515686

`A131240(n)+A112765(A001599(n+1))`
-/

namespace A352356.P1999169358996515686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131240 n + A112765 (A001599 (n + 1)).toNat

end

end A352356.P1999169358996515686

/-! ## A352356.P14320957276426616685

`A326191(A287963(n)+A141497(n+1))`
-/

namespace A352356.P14320957276426616685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326191 (A287963 n + A141497 (n + 1)).toNat

end

end A352356.P14320957276426616685

/-! ## A352356.P18239070786648857358

`A030717(A114994(n+3)^A277822(n))`
-/

namespace A352356.P18239070786648857358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030717 (SequenceMachineLib.roundAway ((A114994 (n + 3) : ℚ) ^ (A277822 n : ℤ))).toNat

end

end A352356.P18239070786648857358

/-!
# A352357: Expansion of e.g.f. 1/(1 - Sum_{k>=1} binomial(k+2,3) * x^k/k!).

The programs for A352357, there is no canonical definition to state claims against.
-/

/-! ## A352357.P16004067565548594978

`A188028(n*a(n-1))` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A352357.P16004067565548594978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  A188028 ((n : ℤ) * a (n - 1)).toNat

end

end A352357.P16004067565548594978

/-!
# A352358: Expansion of e.g.f. 1/(1 - Sum_{k>=1} binomial(k+3,4) * x^k/k!).

The programs for A352358, there is no canonical definition to state claims against.
-/

/-! ## A352358.P16596724689185490582

`A181713(n^A106444(n))`
-/

namespace A352358.P16596724689185490582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181713 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A106444 n : ℤ))).toNat

end

end A352358.P16596724689185490582

/-!
# A352359: Indices of local minima in A109812.

The programs for A352359, there is no canonical definition to state claims against.
-/

/-! ## A352359.P17831939014655485950

`record[A113233(n+1)]`
-/

namespace A352359.P17831939014655485950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352359.P17831939014655485950

/-! ## A352359.P4320872939105337448

`A113233(A352336(n+1))`
-/

namespace A352359.P4320872939105337448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113233 (A352336 (n + 1)).toNat

end

end A352359.P4320872939105337448

/-! ## A352359.P16283415857947574093

`A113234(A109812(A352336(A113234(A113232(n+1)))))`
-/

namespace A352359.P16283415857947574093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (A109812 (A352336 (A113234 (A113232 (n + 1)).toNat).toNat).toNat).toNat

end

end A352359.P16283415857947574093

/-! ## A352359.P17468133305630898665

`record[A113234(A109812(n+1))]`
-/

namespace A352359.P17468133305630898665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 (A109812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352359.P17468133305630898665

/-! ## A352359.P4202414704004217820

`record[A113234(floor(A305369(2*(n+1))/2))]`
-/

namespace A352359.P4202414704004217820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113234 ⌊(A305369 (2 * (n + 1)) : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352359.P4202414704004217820

/-!
# A352360: Three-column array giving list of primitive triples for integer-sided triangles with A < B < C < 2*Pi/3 and such that FA, FB, FC are also integers where F is the Fermat point of the triangle.

The programs for A352360, there is no canonical definition to state claims against.
-/

/-! ## A352360.P4119452301286217284

`A336328(n+1)*A351477(A008620(n))`
-/

namespace A352360.P4119452301286217284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336328 (n + 1) * A351477 (A008620 n).toNat

end

end A352360.P4119452301286217284

/-! ## A352360.P6772898664977584146

`7*A336328(A100793(n))`
-/

namespace A352360.P6772898664977584146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A336328 (A100793 n).toNat

end

end A352360.P6772898664977584146

/-!
# A352361: Array read by ascending antidiagonals. A(n, k) = Fibonacci(k, n), where Fibonacci(n, x) are the Fibonacci polynomials.

The programs for A352361, there is no canonical definition to state claims against.
-/

/-! ## A352361.P14887893779603180847

`A125005(A326323(n))+A059848(n)`
-/

namespace A352361.P14887893779603180847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A326323 n).toNat + A059848 n

end

end A352361.P14887893779603180847

/-! ## A352361.P6646828173098231152

`A059848(n)+A025469(A163661(n))`
-/

namespace A352361.P6646828173098231152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 n + A025469 (A163661 n).toNat

end

end A352361.P6646828173098231152

/-! ## A352361.P4771755477421497603

`A059848(n)+A025469(A256116(n))`
-/

namespace A352361.P4771755477421497603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059848 n + A025469 (A256116 n).toNat

end

end A352361.P4771755477421497603

/-! ## A352361.P15784908219481245464

`A249832(A001248(n+1))+A059848(n)`
-/

namespace A352361.P15784908219481245464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A001248 (n + 1)).toNat + A059848 n

end

end A352361.P15784908219481245464

/-! ## A352361.P15804412125300328503

`A059848(n)%A323289(n)`
-/

namespace A352361.P15804412125300328503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059848 n) (A323289 n)

end

end A352361.P15804412125300328503

/-!
# A352362: Array read by ascending antidiagonals. T(n, k) = L(k, n) where L are the Lucas polynomials.

The programs for A352362, there is no canonical definition to state claims against.
-/

/-! ## A352362.P15520388350367969668

`A292627(n)+A008683(A195278(n+1))`
-/

namespace A352362.P15520388350367969668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 n + A008683 (A195278 (n + 1)).toNat

end

end A352362.P15520388350367969668

/-! ## A352362.P8264742514653848579

`A292627(n)+A036987(A241171(n+1))`
-/

namespace A352362.P8264742514653848579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 n + A036987 (A241171 (n + 1)).toNat

end

end A352362.P8264742514653848579

/-! ## A352362.P4674555504865149592

`A320032(n)+A164885(A347630(3*n+1))`
-/

namespace A352362.P4674555504865149592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320032 n + A164885 (A347630 (3 * n + 1)).toNat

end

end A352362.P4674555504865149592

/-!
# A352363: Triangle read by rows. The incomplete Bell transform of the swinging factorials A056040.

The programs for A352363, there is no canonical definition to state claims against.
-/

/-! ## A352363.P15470865173828263004

`A132393(n)%A165998(A129455(n))`
-/

namespace A352363.P15470865173828263004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132393 n) (A165998 (A129455 n).toNat)

end

end A352363.P15470865173828263004

/-! ## A352363.P368356021159063005

`A264433(n)%A165998(A129455(n))`
-/

namespace A352363.P368356021159063005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264433 n) (A165998 (A129455 n).toNat)

end

end A352363.P368356021159063005

/-! ## A352363.P9868277148494577926

`gcd(A048994(n), A221240(A069777(n)))`
-/

namespace A352363.P9868277148494577926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048994 n) (A221240 (A069777 n).toNat)

end

end A352363.P9868277148494577926

/-! ## A352363.P16425261177144779546

`A132393(n)/A053164(A079262(n)+1)`
-/

namespace A352363.P16425261177144779546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132393 n : ℚ) / (A053164 (A079262 n + 1).toNat : ℚ)

end

end A352363.P16425261177144779546

/-! ## A352363.P2612887007957659496

`A038690(A048994(n)²)%Δ[-A066591(2*n+3)]`
-/

namespace A352363.P2612887007957659496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A066591 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038690 (A048994 n ^ 2).toNat) (f1 (n + 1) - f1 n)

end

end A352363.P2612887007957659496

/-!
# A352364: Row sums of A352363.

The programs for A352364, there is no canonical definition to state claims against.
-/

/-! ## A352364.P3113185366473363118

`A324102(ceil(∑[3^(n-2)]))/2`
-/

namespace A352364.P3113185366473363118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324102 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat : ℚ) / 2

end

end A352364.P3113185366473363118

/-! ## A352364.P14316078080018037741

`A095775(A279564(n))`
-/

namespace A352364.P14316078080018037741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (A279564 n).toNat

end

end A352364.P14316078080018037741

/-! ## A352364.P18315903132882832943

`A132015(∏[A023816(n+1)])`
-/

namespace A352364.P18315903132882832943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352364.P18315903132882832943

/-!
# A352366: Triangle read by rows. The incomplete Bell transform of the Catalan numbers.

The programs for A352366, there is no canonical definition to state claims against.
-/

/-! ## A352366.P14323568392053108050

`A264428(n)+A016389(A181332(n))`
-/

namespace A352366.P14323568392053108050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n + A016389 (A181332 n).toNat

end

end A352366.P14323568392053108050

/-! ## A352366.P12068329528059740945

`A264428(n)-A016389(A060637(n))`
-/

namespace A352366.P12068329528059740945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n - A016389 (A060637 n).toNat

end

end A352366.P12068329528059740945

/-! ## A352366.P14724965612930917828

`A264428(n)-A184964(A008550(n))`
-/

namespace A352366.P14724965612930917828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n - A184964 (A008550 n).toNat

end

end A352366.P14724965612930917828

/-! ## A352366.P11545971251158214714

`A264428(n)-A085982(A118968(n))`
-/

namespace A352366.P11545971251158214714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n - A085982 (A118968 n).toNat

end

end A352366.P11545971251158214714

/-! ## A352366.P7699449193983269288

`A264428(n)-A185274(A055807(n))`
-/

namespace A352366.P7699449193983269288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n - A185274 (A055807 n).toNat

end

end A352366.P7699449193983269288

/-!
# A352367: Row sums of A352366.

The programs for A352367, there is no canonical definition to state claims against.
-/

/-! ## A352367.P2141592845024149950

`A082288(A004211(n)+n)-n`
-/

namespace A352367.P2141592845024149950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082288 (A004211 n + (n : ℤ)).toNat - (n : ℤ)

end

end A352367.P2141592845024149950

/-!
# A352369: Triangle read by rows. The incomplete Bell transform of the central binomial numbers.

The programs for A352369, there is no canonical definition to state claims against.
-/

/-! ## A352369.P1423514328693726633

`A007318(n)*A294498(A061579(n))`
-/

namespace A352369.P1423514328693726633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A294498 (A061579 n).toNat

end

end A352369.P1423514328693726633

/-! ## A352369.P14272874735669369467

`A206735(n)*A294498(A061579(n))`
-/

namespace A352369.P14272874735669369467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n * A294498 (A061579 n).toNat

end

end A352369.P14272874735669369467

/-! ## A352369.P3794710027716560922

`lcm(2, A132046(n))/2*A294498(A061579(n))`
-/

namespace A352369.P3794710027716560922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A132046 n) : ℚ) / 2 * (A294498 (A061579 n).toNat : ℚ)

end

end A352369.P3794710027716560922

/-! ## A352369.P6984775212576288134

`A373948(A350463(n))`
-/

namespace A352369.P6984775212576288134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373948 (A350463 n).toNat

end

end A352369.P6984775212576288134

/-! ## A352369.P4679317318786147129

`A211317(A266042(n+2))`
-/

namespace A352369.P4679317318786147129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211317 (A266042 (n + 2)).toNat

end

end A352369.P4679317318786147129

/-!
# A352371: Alternating row sums of A352369.

The programs for A352371, there is no canonical definition to state claims against.
-/

/-! ## A352371.P13192519392608701412

`A148493(n)-A003056(A300461(n+1))`
-/

namespace A352371.P13192519392608701412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148493 n - A003056 (A300461 (n + 1)).toNat

end

end A352371.P13192519392608701412

/-!
# A352372: Triangle read by rows. Let R(n, k) = Y(n, k, B) where Y are the partial Bell polynomials and B is the list [Bernoulli(j, 1), j = 0..n]. T(n, k) are R(n, k) normalized by the lcm of the denominators of the terms in row n (A048803).

The programs for A352372, there is no canonical definition to state claims against.
-/

/-! ## A352372.P10944980139951267506

`A056564(A137199(n))*A226874(n)`
-/

namespace A352372.P10944980139951267506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056564 (A137199 n).toNat * A226874 n

end

end A352372.P10944980139951267506

/-! ## A352372.P6248873140286455631

`lcm(A040829(A020707(n)), A111967(n))`
-/

namespace A352372.P6248873140286455631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040829 (A020707 n).toNat) (A111967 n)

end

end A352372.P6248873140286455631

/-! ## A352372.P15087208565806983980

`A084938(A265228(n)^A265170(n+1))`
-/

namespace A352372.P15087208565806983980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (SequenceMachineLib.roundAway ((A265228 n : ℚ) ^ (A265170 (n + 1) : ℤ))).toNat

end

end A352372.P15087208565806983980

/-! ## A352372.P12467512989346862366

`A277536(n)^A357183(A277536(n+1))`
-/

namespace A352372.P12467512989346862366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277536 n : ℚ) ^ (A357183 (A277536 (n + 1)).toNat : ℤ)

end

end A352372.P12467512989346862366

/-! ## A352372.P10030380065227345347

`A326017(C(A000203(3*(n+1)), A048993(n)))`
-/

namespace A352372.P10030380065227345347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (Nat.choose (A000203 (3 * (n + 1))).toNat (A048993 n).toNat)

end

end A352372.P10030380065227345347

/-!
# A352373: a(n) = [x^n] ( 1/((1 - x)^2*(1 - x^2)) )^n for n >= 1.

The programs for A352373, the canonical program `A352373.P8291047676932121950` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352373 has offset 1).

The definition of A352373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A352373.P8291047676932121950

`∑{#}[floor((n+1)/2), C(3*(n+1)-2*#-1, n+1-2*#)*C(n+1+#-1, #)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A352373

/-- `∑{#}[floor((n+1)/2), C(3*(n+1)-2*#-1, n+1-2*#)*C(n+1+#-1, #)]` -/
def P8291047676932121950.Spec : Prop :=
  ∀ n, (P8291047676932121950.a n : ℤ) = A352373 (n + 1)

theorem P8291047676932121950.correct : P8291047676932121950.Spec := by
  intro n
  simp only [A352373, Nat.add_sub_cancel]

end A352373

/-! ## A352373.P9599060008931014840

`∑{#}[n+1, (-1)^#*C(4*(n+1)-#-1, n+1-#)*C(n+1+#-1, #)]`
-/

namespace A352373.P9599060008931014840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose ((4 * (n + 1) : ℤ) - (k : ℤ) - 1).toNat ((n + 1 : ℤ) - (k : ℤ)).toNat : ℤ) * (Nat.choose ((n + 1 + k : ℤ) - 1).toNat k : ℤ)

end

end A352373.P9599060008931014840

namespace A352373

/-- `∑{#}[n+1, (-1)^#*C(4*(n+1)-#-1, n+1-#)*C(n+1+#-1, #)]` -/
def P9599060008931014840.Spec : Prop :=
  ∀ n, P9599060008931014840.a n = A352373 (n + 1)

end A352373

/-!
# A352375: Sum of digits of A007618.

The programs for A352375, the canonical program `A352375.P700649589614720325` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A352375 has offset 1).

The definition of A352375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007618, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A352375.P700649589614720325

`A007618(n+2)-A007618(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A352375

/-- `A007618(n+2)-A007618(n+1)` -/
def P700649589614720325.Spec : Prop :=
  ∀ n, P700649589614720325.a n = A352375 (n + 1)

theorem P700649589614720325.correct : P700649589614720325.Spec := by
  intro n
  simp only [A352375, Nat.add_sub_cancel]

end A352375

/-! ## A352375.P14984419334915568624

`A007953(A007618(n+1))`
-/

namespace A352375.P14984419334915568624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007618 (n + 1)).toNat

end

end A352375.P14984419334915568624

namespace A352375

/-- `A007953(A007618(n+1))` -/
def P14984419334915568624.Spec : Prop :=
  ∀ n, P14984419334915568624.a n = A352375 (n + 1)

end A352375

/-! ## A352375.P13146847205847328940

`Δ[A007618(n+1)]`
-/

namespace A352375.P13146847205847328940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352375.P13146847205847328940

namespace A352375

/-- `Δ[A007618(n+1)]` -/
def P13146847205847328940.Spec : Prop :=
  ∀ n, P13146847205847328940.a n = A352375 (n + 1)

theorem P13146847205847328940.correct : P13146847205847328940.Spec := by
  intro n
  simp only [A352375, Nat.add_sub_cancel, A352375.P13146847205847328940.f1, A352375.P13146847205847328940.a, A352375.P700649589614720325.a, SequenceMachineLib.memo_apply]

end A352375

/-! ## A352375.P15723618751577877951

`Δ[A160931(a(n-1))]` with `a(0)=4`
-/

namespace A352375.P15723618751577877951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A160931 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352375.P15723618751577877951

namespace A352375

/-- `Δ[A160931(a(n-1))]` -/
def P15723618751577877951.Spec : Prop :=
  ∀ n, P15723618751577877951.a n = A352375 (n + 1)

end A352375

/-! ## A352375.P12492811578074509758

`Δ[A062028(a(n-1))]` with `a(0)=5`
-/

namespace A352375.P12492811578074509758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A062028 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352375.P12492811578074509758

namespace A352375

/-- `Δ[A062028(a(n-1))]` -/
def P12492811578074509758.Spec : Prop :=
  ∀ n, P12492811578074509758.a n = A352375 (n + 1)

theorem P12492811578074509758.correct : P12492811578074509758.Spec := by
  intro n
  simp only [A352375, Nat.add_sub_cancel, A352375.P12492811578074509758.f1, A352375.P12492811578074509758.a, A352375.P700649589614720325.a, A007618, A007618.P6018863421737465196.a, A062028, A062028.P8420805724104474199.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A352375

/-! ## A352375.P14610584053818844444

`∑{digits}[A160939(a(n-1)+1)-1, #]` with `a(0)=5`
-/

namespace A352375.P14610584053818844444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A160939 (f1 (n - 1) + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A352375.P14610584053818844444

namespace A352375

/-- `∑{digits}[A160939(a(n-1)+1)-1, #]` -/
def P14610584053818844444.Spec : Prop :=
  ∀ n, (P14610584053818844444.a n : ℤ) = A352375 (n + 1)

end A352375

/-! ## A352375.P16534772756724009035

`Δ[A007953(a(n-1))+a(n-1)]` with `a(0)=5`
-/

namespace A352375.P16534772756724009035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A007953 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352375.P16534772756724009035

namespace A352375

/-- `Δ[A007953(a(n-1))+a(n-1)]` -/
def P16534772756724009035.Spec : Prop :=
  ∀ n, P16534772756724009035.a n = A352375 (n + 1)

end A352375

/-! ## A352375.P7707568824929980337

`Δ[A160939(a(n-1))]` with `a(0)=6`
-/

namespace A352375.P7707568824929980337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A160939 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A352375.P7707568824929980337

namespace A352375

/-- `Δ[A160939(a(n-1))]` -/
def P7707568824929980337.Spec : Prop :=
  ∀ n, P7707568824929980337.a n = A352375 (n + 1)

end A352375

/-! ## A352375.P34613459164800520

`A004092(5*A007618(n+1))`
-/

namespace A352375.P34613459164800520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A007618 (n + 1)).toNat

end

end A352375.P34613459164800520

namespace A352375

/-- `A004092(5*A007618(n+1))` -/
def P34613459164800520.Spec : Prop :=
  ∀ n, P34613459164800520.a n = A352375 (n + 1)

end A352375

/-!
# A352379: Numbers k such that no nonzero digit of 2*k divides 2*k.

The programs for A352379, there is no canonical definition to state claims against.
-/

/-! ## A352379.P15443056451200052596

`∩[2*n, A038772(n+1)]/2`
-/

namespace A352379.P15443056451200052596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A352379.P15443056451200052596

/-! ## A352379.P14194538812100774251

`lt[A038769(2*(n+1)), 1]+1`
-/

namespace A352379.P14194538812100774251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A352379.P14194538812100774251

/-! ## A352379.P14194152325098228085

`eq[0, A038769(A004277(n))]`
-/

namespace A352379.P14194152325098228085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352379.P14194152325098228085

/-! ## A352379.P13432320803009043647

`eq[0, A038769(A316571(n+1))]`
-/

namespace A352379.P13432320803009043647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A316571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352379.P13432320803009043647

/-! ## A352379.P9523747882777068959

`lt[A038769(A028310(2*n)), 1]`
-/

namespace A352379.P9523747882777068959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A028310 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352379.P9523747882777068959

/-! ## A352379.P13592469857526709671

`lt[A038769(A028310(n)+n), 1]`
-/

namespace A352379.P13592469857526709671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A028310 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352379.P13592469857526709671

/-! ## A352379.P6485215984441694375

`lt[A038769(A008486(n)-n), 1]`
-/

namespace A352379.P6485215984441694375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008486 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352379.P6485215984441694375

/-! ## A352379.P1571712540367721379

`lt[A038769(A004277(n)), A060576(n)]`
-/

namespace A352379.P1571712540367721379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352379.P1571712540367721379

/-! ## A352379.P12063052602694454146

`record[A078898(A342844(n+2))]`
-/

namespace A352379.P12063052602694454146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A342844 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352379.P12063052602694454146

/-! ## A352379.P17366705704668044192

`eq[0, A038769(A233583(2*n+1))]`
-/

namespace A352379.P17366705704668044192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352379.P17366705704668044192

/-!
# A352380: Numbers k such that no nonzero digit of 3*k divides 3*k.

The programs for A352380, there is no canonical definition to state claims against.
-/

/-! ## A352380.P4579526884377341366

`eq[0, A038769(n^floor(atan(n))+2*n)]`
-/

namespace A352380.P4579526884377341366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ) + (2 * n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352380.P4579526884377341366

/-! ## A352380.P12606202800279622185

`eq[0, A038769(A008486(n))]`
-/

namespace A352380.P12606202800279622185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352380.P12606202800279622185

/-! ## A352380.P14304527761080335624

`record[A135997(A038772(n+2))]`
-/

namespace A352380.P14304527761080335624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A038772 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352380.P14304527761080335624

/-! ## A352380.P12047501671681371911

`lt[A038769(A004277(n)+n), 1]`
-/

namespace A352380.P12047501671681371911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A004277 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352380.P12047501671681371911

/-! ## A352380.P4435058713254401799

`lt[A038769(A008574(n)-n), 1]`
-/

namespace A352380.P4435058713254401799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008574 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352380.P4435058713254401799

/-! ## A352380.P15191970715870221526

`lt[A038769(A316571(n+1)+n), 1]`
-/

namespace A352380.P15191970715870221526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A316571 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352380.P15191970715870221526

/-! ## A352380.P18300538873899057734

`lt[A038769(A008486(n)), A060576(n)]`
-/

namespace A352380.P18300538873899057734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352380.P18300538873899057734

/-! ## A352380.P8695629373766481504

`record[A135997(A342844(n+1))]`
-/

namespace A352380.P8695629373766481504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A342844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352380.P8695629373766481504

/-!
# A352381: Numbers k such that no nonzero digit of 4*k divides 4*k.

The programs for A352381, there is no canonical definition to state claims against.
-/

/-! ## A352381.P16704667175542688388

`eq[0, A038769(A008574(n))]`
-/

namespace A352381.P16704667175542688388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352381.P16704667175542688388

/-! ## A352381.P9933628661711294913

`lt[A038769(A004277(2*n)), 1]`
-/

namespace A352381.P9933628661711294913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A004277 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352381.P9933628661711294913

/-! ## A352381.P2467419285790841391

`lt[A038769(A008486(n)+n), 1]`
-/

namespace A352381.P2467419285790841391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008486 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352381.P2467419285790841391

/-! ## A352381.P7558523960544709404

`lt[A038769(A008706(n)-n), 1]`
-/

namespace A352381.P7558523960544709404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008706 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352381.P7558523960544709404

/-! ## A352381.P11869888810785234742

`lt[A038769(A008574(n+1)), 1]+1`
-/

namespace A352381.P11869888810785234742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008574 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A352381.P11869888810785234742

/-! ## A352381.P13617938261554738851

`lt[A038769(2*A316571(n+1)), 1]`
-/

namespace A352381.P13617938261554738851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (2 * A316571 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352381.P13617938261554738851

/-! ## A352381.P1649301772726546793

`lt[A038769(A008574(2*n-n)), 1]`
-/

namespace A352381.P1649301772726546793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008574 (2 * n - n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352381.P1649301772726546793

/-! ## A352381.P15337472697438680850

`lt[A007318(n)*A038769(A008574(n)), 1]`
-/

namespace A352381.P15337472697438680850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A038769 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352381.P15337472697438680850

/-! ## A352381.P10217925939769326250

`lt[(A000041(n)%2)!*A038769(A008574(n)), 1]`
-/

namespace A352381.P10217925939769326250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A038769 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352381.P10217925939769326250

/-!
# A352382: Numbers k such that no nonzero digit of 5*k divides 5*k.

The programs for A352382, there is no canonical definition to state claims against.
-/

/-! ## A352382.P16531763098617767465

`eq[0, A038769(A008706(n))]`
-/

namespace A352382.P16531763098617767465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A352382.P16531763098617767465

/-! ## A352382.P16868217644163525884

`lt[A038769(A008574(n)+n), 1]`
-/

namespace A352382.P16868217644163525884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008574 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352382.P16868217644163525884

/-! ## A352382.P4919314717953179831

`lt[A038769(A008706(n)), A060576(n)]`
-/

namespace A352382.P4919314717953179831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352382.P4919314717953179831

/-! ## A352382.P12501272002447783008

`lt[A038769(A008706(n)), A206774(2*n+1)]`
-/

namespace A352382.P12501272002447783008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352382.P12501272002447783008

/-! ## A352382.P3759032456596982819

`lt[A038769(A008706(n))*A069142(n+1), 4]`
-/

namespace A352382.P3759032456596982819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008706 n).toNat * A069142 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352382.P3759032456596982819

/-! ## A352382.P3407173298604023605

`lt[A038769(A008706(n)), A000040(n+1)%2]`
-/

namespace A352382.P3407173298604023605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352382.P3407173298604023605

/-! ## A352382.P12312038931900798020

`lt[A038769(A008706(n))*A043048(n+1), n]`
-/

namespace A352382.P12312038931900798020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A008706 n).toNat * A043048 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352382.P12312038931900798020

/-! ## A352382.P9571779655642504523

`lt[(A155212(n+5)-1)*A038769(A008706(n)), 4]`
-/

namespace A352382.P9571779655642504523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155212 (n + 5) - 1) * A038769 (A008706 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A352382.P9571779655642504523

/-!
# A352383: G.f. A(x) satisfies: A(x) = (1 + 2*x*A(x)^3)^2 / (1 + x*A(x)^3).

The programs for A352383, there is no canonical definition to state claims against.
-/

/-! ## A352383.P1326966912455017868

`record[A351771(n)]`
-/

namespace A352383.P1326966912455017868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352383.P1326966912455017868

/-! ## A352383.P11618574834568447501

`A351771(Δ[n²])`
-/

namespace A352383.P11618574834568447501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351771 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A352383.P11618574834568447501

/-! ## A352383.P3696705909579690703

`abs(A351771(2*n+1))`
-/

namespace A352383.P3696705909579690703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A351771 (2 * n + 1)|

end

end A352383.P3696705909579690703

/-! ## A352383.P2291502674187965498

`gcd(A000038(n), A351771(2*n+1))`
-/

namespace A352383.P2291502674187965498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A351771 (2 * n + 1))

end

end A352383.P2291502674187965498

/-! ## A352383.P15963262699680971060

`A351771(2*n+1)+A000038(n+1)`
-/

namespace A352383.P15963262699680971060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351771 (2 * n + 1) + A000038 (n + 1)

end

end A352383.P15963262699680971060

/-! ## A352383.P8985203820706354450

`A033999(2*n)*A351771(2*n+1)`
-/

namespace A352383.P8985203820706354450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A351771 (2 * n + 1)

end

end A352383.P8985203820706354450

/-!
# A352384: G.f. A(x) satisfies: A(x) = (1 + 2*x*A(x))^6 / (1 + x*A(x))^3.

The programs for A352384, there is no canonical definition to state claims against.
-/

/-! ## A352384.P9943538270270925229

`A188110(∑[n+2]+4)`
-/

namespace A352384.P9943538270270925229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188110 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A352384.P9943538270270925229

/-! ## A352384.P17022737871431413858

`A188110(A167614(n+1))+A165110(n)`
-/

namespace A352384.P17022737871431413858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188110 (A167614 (n + 1)).toNat + A165110 n

end

end A352384.P17022737871431413858

/-! ## A352384.P4087811197818350778

`A152844(n)*A188110(A167614(n+1))`
-/

namespace A352384.P4087811197818350778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 n * A188110 (A167614 (n + 1)).toNat

end

end A352384.P4087811197818350778

/-! ## A352384.P3844672531139926162

`lcm(A007318(n), A188110(A167614(n+1)))`
-/

namespace A352384.P3844672531139926162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A188110 (A167614 (n + 1)).toNat)

end

end A352384.P3844672531139926162

/-!
# A352388: Number of solutions to Snake Number Problem for snakes with n-periodic instructions in an infinite square grid (see Comments).

The programs for A352388, there is no canonical definition to state claims against.
-/

/-! ## A352388.P12759248378029145735

`∑[A089361(∑{e}[n!, #]!)]`
-/

namespace A352388.P12759248378029145735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A352388.P12759248378029145735

/-! ## A352388.P12212140112764208970

`A065718(Δ[n!]-∑{e}[n+1, #])`
-/

namespace A352388.P12212140112764208970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)).toNat

end

end A352388.P12212140112764208970

/-! ## A352388.P7917610598659375407

`A065744(A108447(n))`
-/

namespace A352388.P7917610598659375407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A108447 n).toNat

end

end A352388.P7917610598659375407

/-!
# A352392: a(n) is the least prime prime(k) such that prime(k+n-1)^2 - prime(k)^2 + prime(i) for i=k..k+n-1 are consecutive primes.

The programs for A352392, there is no canonical definition to state claims against.
-/

/-! ## A352392.P13764147271212085706

`A067364(∏[A282422(n)])`
-/

namespace A352392.P13764147271212085706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067364 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A352392.P13764147271212085706

/-!
# A352393: Numbers k such that 3^k + 5^k + 7^k + 11^k + 13^k is prime.

The programs for A352393, there is no canonical definition to state claims against.
-/

/-! ## A352393.P18246830353350292705

`eq[A226247(n+1), A355745(n+1)]`
-/

namespace A352393.P18246830353350292705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352393.P18246830353350292705

/-! ## A352393.P12691637949915613947

`record[∑{d}[A090501(2*n+3)+A000045(n), 2%#]]`
-/

namespace A352393.P12691637949915613947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (2 * n + 3) + A000045 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, 2 % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A352393.P12691637949915613947

/-! ## A352393.P3559216324567720357

`eq[A162911(A162911(n+2)), A162912(n+1)]`
-/

namespace A352393.P3559216324567720357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162911 (A162911 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162912 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A352393.P3559216324567720357

/-! ## A352393.P10591610337418811359

`lt[A020651(n+4), A047679(A233513(n+3))]`
-/

namespace A352393.P10591610337418811359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (A233513 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A352393.P10591610337418811359

/-!
# A352398: Denominators of partial sums of the Madhava series for Pi/(2*sqrt(3)) = A093766.

The programs for A352398, there is no canonical definition to state claims against.
-/

/-! ## A352398.P9070779503545638368

`A003961(A037992(n)*A284325(n+5))`
-/

namespace A352398.P9070779503545638368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A037992 n * A284325 (n + 5)).toNat

end

end A352398.P9070779503545638368

