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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A400102: Composite numbers k coprime to 10 such that the decimal expansion of i/k has the same period for i = 1..k-1; also overpseudoprimes to base 10.

The programs for A400102, there is no canonical definition to state claims against.
-/

/-! ## A400102.P12519970910115205714

`filter[A020236(n+1), A093879(#)]`
-/

namespace A400102.P12519970910115205714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093879 (f1 j).toNat = 1) n)

end

end A400102.P12519970910115205714

/-!
# A400103: Number of endofunctions on [n] whose second-largest component has size 1.

The programs for A400103, there is no canonical definition to state claims against.
-/

/-! ## A400103.P6517844110966719030

`A156878(or(A092530(n), A136222(n)))`
-/

namespace A400103.P6517844110966719030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156878 (Int.lor (A092530 n) (A136222 n)).toNat

end

end A400103.P6517844110966719030

/-! ## A400103.P1534944464920158675

`A156878(A136222(n)+A099549(n+1))`
-/

namespace A400103.P1534944464920158675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156878 (A136222 n + A099549 (n + 1)).toNat

end

end A400103.P1534944464920158675

/-!
# A400106: a(n) is the least k >= 0 such that abs(A377091(k+1) - A377091(k)) = n^2, or -1 if no such k exists.

The programs for A400106, there is no canonical definition to state claims against.
-/

/-! ## A400106.P5705392816321418435

`fp[abs(A379062(n))]`
-/

namespace A400106.P5705392816321418435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A379062 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A400106.P5705392816321418435

/-! ## A400106.P3276936386142632879

`or(∑[2*n], A373749(A003410(n+2)))`
-/

namespace A400106.P3276936386142632879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A373749 (A003410 (n + 2)).toNat)

end

end A400106.P3276936386142632879

/-!
# A400108: a(n) is the position, in the row of A077569 where it appears, of the least integer with same prime signature as n.

The programs for A400108, there is no canonical definition to state claims against.
-/

/-! ## A400108.P12580944268192065571

`A100063(A050358(n+1)-1)`
-/

namespace A400108.P12580944268192065571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A050358 (n + 1) - 1).toNat

end

end A400108.P12580944268192065571

/-! ## A400108.P5349558301879077624

`gcd(2, A113370(A308063(n+1)))`
-/

namespace A400108.P5349558301879077624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A113370 (A308063 (n + 1)).toNat)

end

end A400108.P5349558301879077624

/-! ## A400108.P12577018656914001692

`A100063(and(-2, A050358(n+1)))`
-/

namespace A400108.P12577018656914001692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (Int.land (-2) (A050358 (n + 1))).toNat

end

end A400108.P12577018656914001692

/-! ## A400108.P11265820452778215396

`∏{e}[A340653(n+1)*(A381995(n+1)+1)+1, #!]`
-/

namespace A400108.P11265820452778215396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340653 (n + 1) * (A381995 (n + 1) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A400108.P11265820452778215396

/-! ## A400108.P8943488643502164207

`A365460(A343652(n+1)+2)`
-/

namespace A400108.P8943488643502164207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365460 (A343652 (n + 1) + 2).toNat

end

end A400108.P8943488643502164207

/-! ## A400108.P8958255719367691674

`gcd(A016003(n+1), A323303(n+1))`
-/

namespace A400108.P8958255719367691674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016003 (n + 1)) (A323303 (n + 1))

end

end A400108.P8958255719367691674

/-! ## A400108.P2055984799698686915

`gcd(A072499(A181796(n+1)), A280136(n+1))`
-/

namespace A400108.P2055984799698686915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072499 (A181796 (n + 1)).toNat) (A280136 (n + 1))

end

end A400108.P2055984799698686915

/-! ## A400108.P17164669261787904747

`gcd(A124830(A000005(n+1)), A317144(n+1))`
-/

namespace A400108.P17164669261787904747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124830 (A000005 (n + 1)).toNat) (A317144 (n + 1))

end

end A400108.P17164669261787904747

/-! ## A400108.P16836433468142467369

`A366625(and(A317144(n+1), A001222(3*(n+1))+1)+1)`
-/

namespace A400108.P16836433468142467369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366625 (Int.land (A317144 (n + 1)) (A001222 (3 * (n + 1)) + 1) + 1).toNat

end

end A400108.P16836433468142467369

/-! ## A400108.P11144853406707693493

`gcd(A298911(3*n+5), A329348(A181796(n+1)))`
-/

namespace A400108.P11144853406707693493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A298911 (3 * n + 5)) (A329348 (A181796 (n + 1)).toNat)

end

end A400108.P11144853406707693493

/-!
# A400110: a(n) = n - 1 - A400000(n).

The programs for A400110, there is no canonical definition to state claims against.
-/

/-! ## A400110.P15481108837490621631

`n-A400000(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400110.P15481108837490621631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400000 (n + 1)

end

end A400110.P15481108837490621631

/-! ## A400110.P2819073650130634172

`n-Δ[A397740(round(sqrt(n²+1)))]`
-/

namespace A400110.P2819073650130634172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397740 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A400110.P2819073650130634172

/-! ## A400110.P14373198184948258066

`abs(A400000(abs(Δ[n²]-n))-n)`
-/

namespace A400110.P14373198184948258066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A400000 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|.toNat - (n : ℤ))|

end

end A400110.P14373198184948258066

/-! ## A400110.P14180275372012244719

`n-Δ[A397740(n)+a((n+1)%2)]` with `a(0)=0`
-/

namespace A400110.P14180275372012244719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A397740 n + f1 ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A400110.P14180275372012244719

/-! ## A400110.P12610658117585266001

`abs(n-Δ[A397740(A028310(n))])`
-/

namespace A400110.P12610658117585266001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397740 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (f1 (n + 1) - f1 n)|

end

end A400110.P12610658117585266001

/-! ## A400110.P13792522777536038121

`A024000(A400000(1+n)+1)+n`
-/

namespace A400110.P13792522777536038121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A400000 (1 + n) + 1).toNat + (n : ℤ)

end

end A400110.P13792522777536038121

/-! ## A400110.P4291410729642268801

`A001478(A400000(n+1)+1)+n+1`
-/

namespace A400110.P4291410729642268801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A400000 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A400110.P4291410729642268801

/-! ## A400110.P95279181475673948

`A000027(n+1)+xor(A400000(n+1), -1)`
-/

namespace A400110.P95279181475673948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + Int.xor (A400000 (n + 1)) (-1)

end

end A400110.P95279181475673948

/-! ## A400110.P11575068975468393892

`A024000(A400000(n+1))+A023443(n)`
-/

namespace A400110.P11575068975468393892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A400000 (n + 1)).toNat + A023443 n

end

end A400110.P11575068975468393892

/-! ## A400110.P7494223177141351463

`n-(A397740(n+1)-A397740(A028310(n)))`
-/

namespace A400110.P7494223177141351463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A397740 (n + 1) - A397740 (A028310 n).toNat)

end

end A400110.P7494223177141351463

/-! ## A400110.P9237752868777197080

`A025581(A400000(n+1)+A000217(n))`
-/

namespace A400110.P9237752868777197080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A400000 (n + 1) + A000217 n).toNat

end

end A400110.P9237752868777197080

/-!
# A400112: Number of self-avoiding lattice paths from (0,0) to (n,n) in an n X n square grid such that no two consecutive maximal straight segments have equal length.

The programs for A400112, there is no canonical definition to state claims against.
-/

/-! ## A400112.P10155934179893066355

`A000720(22+A396088(n+1)*a(n-2))` with `a(0)=1, a(1)=0, a(2)=4, a(3)=20`
-/

namespace A400112.P10155934179893066355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 20] fun n a =>
  A000720 (22 + A396088 (n + 1) * a (n - 2)).toNat

end

end A400112.P10155934179893066355

/-!
# A400114: Numbers whose substrings are pairwise coprime.

The programs for A400114, there is no canonical definition to state claims against.
-/

/-! ## A400114.P10661960040974671264

`lt[A284839(n), A304442(A087980(n+1))]`
-/

namespace A400114.P10661960040974671264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284839 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 (A087980 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400114.P10661960040974671264

/-! ## A400114.P7461540667204997537

`lt[n+a(n-1), A122988(n)]` with `a(0)=1, a(1)=4, a(2)=2`
-/

namespace A400114.P7461540667204997537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2] fun n f1 =>
  n + f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400114.P7461540667204997537

/-! ## A400114.P1468097448171134892

`lt[A048883(A326679(3*n)), A278240(n+1)]`
-/

namespace A400114.P1468097448171134892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A326679 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400114.P1468097448171134892

/-! ## A400114.P14080825107901702885

`lt[A001359(A399743(n+1)), A399747(2*(n+1))]`
-/

namespace A400114.P14080825107901702885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A399743 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399747 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400114.P14080825107901702885

/-! ## A400114.P12313679482768495894

`lt[A341417(n+4), A026339(A232465(2*n+5))]`
-/

namespace A400114.P12313679482768495894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341417 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026339 (A232465 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400114.P12313679482768495894

/-!
# A400115: a(n) is the least k such that A399194(n)-A399194(1) <> A399194(n+k)-A399194(1+k).

The programs for A400115, there is no canonical definition to state claims against.
-/

/-! ## A400115.P10735073654449424089

`gcd(A033677(n+1), A045818(A383194(n+5)))`
-/

namespace A400115.P10735073654449424089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033677 (n + 1)) (A045818 (A383194 (n + 5)).toNat)

end

end A400115.P10735073654449424089

/-! ## A400115.P12363450704462258049

`gcd(A224240(n), A294650(n+1))`
-/

namespace A400115.P12363450704462258049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224240 n) (A294650 (n + 1))

end

end A400115.P12363450704462258049

/-! ## A400115.P11485170596524758609

`gcd(A168533(n+1), A294484(n+1))`
-/

namespace A400115.P11485170596524758609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168533 (n + 1)) (A294484 (n + 1))

end

end A400115.P11485170596524758609

/-! ## A400115.P15539523639272781572

`A053164(A084313(2*(n+1))*A316854(n+1))`
-/

namespace A400115.P15539523639272781572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (A084313 (2 * (n + 1)) * A316854 (n + 1)).toNat

end

end A400115.P15539523639272781572

/-! ## A400115.P18110023403808352807

`gcd(A053638(n+1), A329900(A000712(n)))`
-/

namespace A400115.P18110023403808352807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053638 (n + 1)) (A329900 (A000712 n).toNat)

end

end A400115.P18110023403808352807

/-!
# A400121: Indices of new terms in A400000.

The programs for A400121, there is no canonical definition to state claims against.
-/

/-! ## A400121.P205934011749477089

`A399763(A397493(n))`
-/

namespace A400121.P205934011749477089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 (A397493 n).toNat

end

end A400121.P205934011749477089

/-! ## A400121.P459319321857572482

`record[A399763(A400000(n+1))]`
-/

namespace A400121.P459319321857572482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 (A400000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400121.P459319321857572482

/-! ## A400121.P13092488705004469722

`record[A399763(n-A400110(n+1))]`
-/

namespace A400121.P13092488705004469722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399763 ((n : ℤ) - A400110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400121.P13092488705004469722

/-! ## A400121.P4115768502376285113

`A006643(A085280(n))`
-/

namespace A400121.P4115768502376285113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006643 (A085280 n).toNat

end

end A400121.P4115768502376285113

/-!
# A400122: Number of unlabeled reducible flow graphs with n nodes containing a global source and a global sink, self-loops allowed.

The programs for A400122, there is no canonical definition to state claims against.
-/

/-! ## A400122.P4801719611254160602

`A032903(A032896(n^n))`
-/

namespace A400122.P4801719611254160602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032903 (A032896 (n ^ n)).toNat

end

end A400122.P4801719611254160602

/-!
# A400125: a(n) is the number of nontrivial adjacent divisibilities in the strictly increasing half of row n of the Narayana triangle.

The programs for A400125, there is no canonical definition to state claims against.
-/

/-! ## A400125.P3231684427439543828

`and(A231610(2*(n+1)), A257991(A000203(n+1)))`
-/

namespace A400125.P3231684427439543828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A231610 (2 * (n + 1))) (A257991 (A000203 (n + 1)).toNat)

end

end A400125.P3231684427439543828

/-! ## A400125.P7621549554768768969

`A072670(A056459(n+1)+A004277(n))`
-/

namespace A400125.P7621549554768768969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A056459 (n + 1) + A004277 n).toNat

end

end A400125.P7621549554768768969

/-! ## A400125.P2475485354142370680

`A350723(A333737(3*n+2))+A350723(n+1)`
-/

namespace A400125.P2475485354142370680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350723 (A333737 (3 * n + 2)).toNat + A350723 (n + 1)

end

end A400125.P2475485354142370680

/-! ## A400125.P3097664597762265594

`A193238(A342575(2*n+3)%A054543(n+1))`
-/

namespace A400125.P3097664597762265594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (Int.tmod (A342575 (2 * n + 3)) (A054543 (n + 1))).toNat

end

end A400125.P3097664597762265594

/-! ## A400125.P15293962880466831675

`A056977(A023550(n+1))`
-/

namespace A400125.P15293962880466831675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A023550 (n + 1)).toNat

end

end A400125.P15293962880466831675

/-!
# A400126: Nonnegative integers such that every adjacent pair of digits sums to exactly 9.

The programs for A400126, the canonical program `A400126.P6385519365283133117` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400126 has offset 1).

The definition of A400126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400126.P6385519365283133117

`ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9)/(1-x-9x^9+9x^10-10x^18+10x^19))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400126

/-- `ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9)/(1-x-9x^9+9x^10-10x^18+10x^19))` -/
def P6385519365283133117.Spec : Prop :=
  ∀ n, P6385519365283133117.a n = A400126 (n + 1)

theorem P6385519365283133117.correct : P6385519365283133117.Spec := by
  intro n
  simp only [A400126, Nat.add_sub_cancel]

end A400126

/-! ## A400126.P1459225904382606315

`lt[A004086(A160542(n+1)), 10]`
-/

namespace A400126.P1459225904382606315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A160542 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A400126.P1459225904382606315

namespace A400126

/-- `lt[A004086(A160542(n+1)), 10]` -/
def P1459225904382606315.Spec : Prop :=
  ∀ n, (P1459225904382606315.a n : ℤ) = A400126 (n + 1)

end A400126

/-! ## A400126.P16684282982025740716

`lt[A113019(n+1), 3]`
-/

namespace A400126.P16684282982025740716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113019 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A400126.P16684282982025740716

namespace A400126

/-- `lt[A113019(n+1), 3]` -/
def P16684282982025740716.Spec : Prop :=
  ∀ n, (P16684282982025740716.a n : ℤ) = A400126 (n + 1)

end A400126

/-! ## A400126.P17479149256554908964

`lt[floor(n/9)*n%9, A353846(floor(n/9)*n%9)]`
-/

namespace A400126.P17479149256554908964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋ * ((n % 9 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (⌊(n : ℚ) / 9⌋ * ((n % 9 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400126.P17479149256554908964

namespace A400126

/-- `lt[floor(n/9)*n%9, A353846(floor(n/9)*n%9)]` -/
def P17479149256554908964.Spec : Prop :=
  ∀ n, (P17479149256554908964.a n : ℤ) = A400126 (n + 1)

end A400126

/-! ## A400126.P857499629509171327

`A028898(A061479(n))`
-/

namespace A400126.P857499629509171327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A061479 n).toNat

end

end A400126.P857499629509171327

namespace A400126

/-- `A028898(A061479(n))` -/
def P857499629509171327.Spec : Prop :=
  ∀ n, P857499629509171327.a n = A400126 (n + 1)

end A400126

/-!
# A400128: Number of recursively defined forms of weight n, where a form is either a unit, an ordered fusion of two forms, or a propagation of one form whose weight is tripled.

The programs for A400128, there is no canonical definition to state claims against.
-/

/-! ## A400128.P17810203681833272585

`A187184(A076866(n+1))`
-/

namespace A400128.P17810203681833272585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (A076866 (n + 1)).toNat

end

end A400128.P17810203681833272585

/-! ## A400128.P7205232378451813378

`A309250(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A400128.P7205232378451813378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A309250 (a (n - 1) ^ 2).toNat

end

end A400128.P7205232378451813378

/-! ## A400128.P10266017303295230558

`A275824(A255117(n))`
-/

namespace A400128.P10266017303295230558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275824 (A255117 n).toNat

end

end A400128.P10266017303295230558

/-!
# A400129: Number of unlabeled connected planar simple graphs G on n vertices for which there exist a vertex v of degree 5 and a proper 4-coloring of G-v in which all four colors occur on the neighbors of v.

The programs for A400129, there is no canonical definition to state claims against.
-/

/-! ## A400129.P2378484837763337756

`5*∑[A034329(A034329(n))]`
-/

namespace A400129.P2378484837763337756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034329 (A034329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400129.P2378484837763337756

/-! ## A400129.P8443899404489431499

`A154443(n²*A014381(n))`
-/

namespace A400129.P8443899404489431499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 ((n ^ 2 : ℤ) * A014381 n).toNat

end

end A400129.P8443899404489431499

/-! ## A400129.P13010981936895936211

`∑{p}[A014377(n), A001694(#+1)]`
-/

namespace A400129.P13010981936895936211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001694 (p + 1)

end

end A400129.P13010981936895936211

/-!
# A400131: Positive integers k that are not narcissistic (Armstrong) numbers in any base b with 2 <= b <= k-2.

The programs for A400131, there is no canonical definition to state claims against.
-/

/-! ## A400131.P1538031365065609281

`lt[A347801(n), A029837(A268448(n+1))]`
-/

namespace A400131.P1538031365065609281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A268448 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400131.P1538031365065609281

/-! ## A400131.P14503476056236743374

`lt[A347801(n), A001222(A140113(3*n+1))]`
-/

namespace A400131.P14503476056236743374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140113 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400131.P14503476056236743374

/-! ## A400131.P3807815411036540784

`eq[A010815(A360800(2*(n+1))+1), A025426(n)]`
-/

namespace A400131.P3807815411036540784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A360800 (2 * (n + 1)) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400131.P3807815411036540784

/-!
# A400132: Numbers k such that A007504(k) - 1 is a perfect square.

The programs for A400132, there is no canonical definition to state claims against.
-/

/-! ## A400132.P16295362701494734382

`A094307(A105309(n+1))`
-/

namespace A400132.P16295362701494734382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094307 (A105309 (n + 1)).toNat

end

end A400132.P16295362701494734382

/-! ## A400132.P5910166907040322417

`∑[A060246(A309951(∑[n]))]`
-/

namespace A400132.P5910166907040322417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060246 (A309951 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400132.P5910166907040322417

/-!
# A400133: a(n) = (A400184(n)-1)/2.

The programs for A400133, there is no canonical definition to state claims against.
-/

/-! ## A400133.P6394636587301692226

`(A400184(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400133.P6394636587301692226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400184 (n + 1) - 1 : ℚ) / 2

end

end A400133.P6394636587301692226

/-! ## A400133.P7256317282856872389

`floor(A400184(1+n)/2)`
-/

namespace A400133.P7256317282856872389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A400184 (1 + n) : ℚ) / 2⌋

end

end A400133.P7256317282856872389

/-! ## A400133.P1599698230735094681

`A004525(A400184(1+n)-1)`
-/

namespace A400133.P1599698230735094681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A400184 (1 + n) - 1).toNat

end

end A400133.P1599698230735094681

/-! ## A400133.P12301171733594667139

`A026741(A400184(n+1)-1)`
-/

namespace A400133.P12301171733594667139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A400184 (n + 1) - 1).toNat

end

end A400133.P12301171733594667139

/-! ## A400133.P3322086038457019561

`A029578(A400184(n+1)-1)`
-/

namespace A400133.P3322086038457019561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A400184 (n + 1) - 1).toNat

end

end A400133.P3322086038457019561

/-! ## A400133.P16167820547644218317

`lt[A400110(2*n+1)/(2*n-1), 1]`
-/

namespace A400133.P16167820547644218317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400110 (2 * n + 1) : ℚ) / ((2 * n : ℤ) - 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A400133.P16167820547644218317

/-! ## A400133.P4321463411469329215

`A004524(A400184(n+1))`
-/

namespace A400133.P4321463411469329215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A400184 (n + 1)).toNat

end

end A400133.P4321463411469329215

/-! ## A400133.P10864223526961619137

`A006370(A400184(n+1)-1)`
-/

namespace A400133.P10864223526961619137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A400184 (n + 1) - 1).toNat

end

end A400133.P10864223526961619137

/-! ## A400133.P1477475680115727012

`lt[0, A361726(A400000(2*n+1))]`
-/

namespace A400133.P1477475680115727012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361726 (A400000 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A400133.P1477475680115727012

/-! ## A400133.P15797676187155714139

`lt[A011705(n), A004442(A400000(2*n+1))]`
-/

namespace A400133.P15797676187155714139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A400000 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400133.P15797676187155714139

/-! ## A400133.P1413397042143063828

`lt[A353483(n+1), A004442(A400000(2*n+1))]`
-/

namespace A400133.P1413397042143063828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A400000 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400133.P1413397042143063828

/-! ## A400133.P12248730230147825765

`comp[eq[1, A400000(2*n+1)]]`
-/

namespace A400133.P12248730230147825765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A400133.P12248730230147825765

/-! ## A400133.P8338658941908073531

`A059995(5*A400184(n+1))`
-/

namespace A400133.P8338658941908073531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (5 * A400184 (n + 1)).toNat

end

end A400133.P8338658941908073531

/-!
# A400135: Numbers k such that (k/p)^2 + 1 is prime for every prime factor p of k.

The programs for A400135, there is no canonical definition to state claims against.
-/

/-! ## A400135.P10330957100793100969

`∪[A257408(n+1), A267301(A108479(2*(n+1)))]`
-/

namespace A400135.P10330957100793100969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (A108479 (2 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A400135.P10330957100793100969

/-! ## A400135.P8162359165096916273

`∪[A257408(n+1), A321453(A172451(n+1))]`
-/

namespace A400135.P8162359165096916273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321453 (A172451 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A400135.P8162359165096916273

/-! ## A400135.P9476879575206681560

`∪[A257408(n+1), A270339(A399453(n+1))]`
-/

namespace A400135.P9476879575206681560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (A399453 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A400135.P9476879575206681560

/-!
# A400137: Triangle T(n, k) read by rows: the n-th row gives the greatest common infinitary divisor of n and k, n >= 1, 1 < = k <= n.

The programs for A400137, there is no canonical definition to state claims against.
-/

/-! ## A400137.P4068304013673466038

`A059895(A286146(1+n))`
-/

namespace A400137.P4068304013673466038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (A286146 (1 + n)).toNat

end

end A400137.P4068304013673466038

/-! ## A400137.P7612119753650059271

`gcd(A000720(A248669(n+1)), A050873(n+1))`
-/

namespace A400137.P7612119753650059271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (A248669 (n + 1)).toNat) (A050873 (n + 1))

end

end A400137.P7612119753650059271

/-! ## A400137.P12165339116595548045

`A050873(n+1)^A144074(A144074(n))`
-/

namespace A400137.P12165339116595548045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) : ℚ) ^ (A144074 (A144074 n).toNat : ℤ)

end

end A400137.P12165339116595548045

/-! ## A400137.P6787231501207560311

`A307662(n+1)^A144074(A144074(n))`
-/

namespace A400137.P6787231501207560311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307662 (n + 1) : ℚ) ^ (A144074 (A144074 n).toNat : ℤ)

end

end A400137.P6787231501207560311

/-! ## A400137.P4572869383660455500

`gcd(A132013(A390552(2*(n+1))), A307662(n+1))`
-/

namespace A400137.P4572869383660455500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132013 (A390552 (2 * (n + 1))).toNat) (A307662 (n + 1))

end

end A400137.P4572869383660455500

/-!
# A400138: The number of divisors d of n such that gcid(d, n/d) is squarefree, where gcid is the greatest common infinitary divisor.

The programs for A400138, the canonical program `A400138.P7100333575480106552` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400138 has offset 1).

The definition of A400138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400138.P11723316541963440427

`∏{e}[1+n, A114212(#)]`
-/

namespace A400138.P11723316541963440427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A114212 (Nat.factorization (f1 n) p)

end

end A400138.P11723316541963440427

namespace A400138

/-- `∏{e}[1+n, A114212(#)]` -/
def P11723316541963440427.Spec : Prop :=
  ∀ n, P11723316541963440427.a n = A400138 (n + 1)

end A400138

/-! ## A400138.P7100333575480106552

`∑{d}[n+1, A008966(#)*A358260((n+1)/#)]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400138

/-- `∑{d}[n+1, A008966(#)*A358260((n+1)/#)]` -/
def P7100333575480106552.Spec : Prop :=
  ∀ n, P7100333575480106552.a n = A400138 (n + 1)

theorem P7100333575480106552.correct : P7100333575480106552.Spec := by
  intro n
  simp only [A400138, Nat.add_sub_cancel]

end A400138

/-!
# A400139: The number of divisors d of n such that gcid(d, n/d) is a powerful number (A001694), where gcid is the greatest common infinitary divisor.

The programs for A400139, the canonical program `A400139.P17584258265863310281` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400139 has offset 1).

The definition of A400139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400139.P17584258265863310281

`A366763(A011262(1+n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A400139

/-- `A366763(A011262(1+n))` -/
def P17584258265863310281.Spec : Prop :=
  ∀ n, P17584258265863310281.a n = A400139 (n + 1)

theorem P17584258265863310281.correct : P17584258265863310281.Spec := by
  intro n
  simp only [A400139, Nat.add_sub_cancel]

end A400139

/-!
# A400140: The number of divisors d of n such that gcid(d, n/d) is a square, where gcid is the greatest common infinitary divisor.

The programs for A400140, the canonical program `A400140.P15113358589886893370` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400140 has offset 1).

The definition of A400140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400140.P3820439795937085456

`A046951(n+1)*A055076(n+1)`
-/

namespace A400140.P3820439795937085456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) * A055076 (n + 1)

end

end A400140.P3820439795937085456

namespace A400140

/-- `A046951(n+1)*A055076(n+1)` -/
def P3820439795937085456.Spec : Prop :=
  ∀ n, P3820439795937085456.a n = A400140 (n + 1)

end A400140

/-! ## A400140.P15627493657052554110

`A365402(n+1)*A367987(n+1)`
-/

namespace A400140.P15627493657052554110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 (n + 1) * A367987 (n + 1)

end

end A400140.P15627493657052554110

namespace A400140

/-- `A365402(n+1)*A367987(n+1)` -/
def P15627493657052554110.Spec : Prop :=
  ∀ n, P15627493657052554110.a n = A400140 (n + 1)

end A400140

/-! ## A400140.P17961561472083021090

`A000005((1+n)/A071974(n+1))`
-/

namespace A400140.P17961561472083021090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((1 + n : ℚ) / (A071974 (n + 1) : ℚ))).toNat

end

end A400140.P17961561472083021090

namespace A400140

/-- `A000005((1+n)/A071974(n+1))` -/
def P17961561472083021090.Spec : Prop :=
  ∀ n, P17961561472083021090.a n = A400140 (n + 1)

end A400140

/-! ## A400140.P12994011111346921166

`A365348(n+1)/A056624(n+1)`
-/

namespace A400140.P12994011111346921166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365348 (n + 1) : ℚ) / (A056624 (n + 1) : ℚ)

end

end A400140.P12994011111346921166

namespace A400140

/-- `A365348(n+1)/A056624(n+1)` -/
def P12994011111346921166.Spec : Prop :=
  ∀ n, P12994011111346921166.a n = (A400140 (n + 1) : ℚ)

end A400140

/-! ## A400140.P7069464748453086646

`A000005(sqrt((n+1)*A350389(n+1)))`
-/

namespace A400140.P7069464748453086646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * A350389 (n + 1) : ℝ))).toNat

end

end A400140.P7069464748453086646

namespace A400140

/-- `A000005(sqrt((n+1)*A350389(n+1)))` -/
def P7069464748453086646.Spec : Prop :=
  ∀ n, P7069464748453086646.a n = A400140 (n + 1)

end A400140

/-! ## A400140.P13317061572087296161

`A000005((n+1)/sqrt(A350388(n+1)))`
-/

namespace A400140.P13317061572087296161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.sqrt (A350388 (n + 1) : ℝ))).toNat

end

end A400140.P13317061572087296161

namespace A400140

/-- `A000005((n+1)/sqrt(A350388(n+1)))` -/
def P13317061572087296161.Spec : Prop :=
  ∀ n, P13317061572087296161.a n = A400140 (n + 1)

end A400140

/-! ## A400140.P11670594652872004091

`∑{d}[n+1, A046951(#)*A162511((n+1)/#)]`
-/

namespace A400140.P11670594652872004091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A162511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400140.P11670594652872004091

namespace A400140

/-- `∑{d}[n+1, A046951(#)*A162511((n+1)/#)]` -/
def P11670594652872004091.Spec : Prop :=
  ∀ n, P11670594652872004091.a n = A400140 (n + 1)

end A400140

/-! ## A400140.P15113358589886893370

`∑{d}[n+1, A074823(#)*A369308((n+1)/#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400140

/-- `∑{d}[n+1, A074823(#)*A369308((n+1)/#)]` -/
def P15113358589886893370.Spec : Prop :=
  ∀ n, P15113358589886893370.a n = A400140 (n + 1)

theorem P15113358589886893370.correct : P15113358589886893370.Spec := by
  intro n
  simp only [A400140, Nat.add_sub_cancel]

end A400140

/-! ## A400140.P5101597181784260662

`A034444(n+1)*A046951(n+1)/A056624(n+1)`
-/

namespace A400140.P5101597181784260662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) * A046951 (n + 1) : ℚ) / (A056624 (n + 1) : ℚ)

end

end A400140.P5101597181784260662

namespace A400140

/-- `A034444(n+1)*A046951(n+1)/A056624(n+1)` -/
def P5101597181784260662.Spec : Prop :=
  ∀ n, P5101597181784260662.a n = (A400140 (n + 1) : ℚ)

end A400140

/-! ## A400140.P14483653377285626763

`A037445(n+1)*A046951(n+1)/A358260(n+1)`
-/

namespace A400140.P14483653377285626763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) * A046951 (n + 1) : ℚ) / (A358260 (n + 1) : ℚ)

end

end A400140.P14483653377285626763

namespace A400140

/-- `A037445(n+1)*A046951(n+1)/A358260(n+1)` -/
def P14483653377285626763.Spec : Prop :=
  ∀ n, P14483653377285626763.a n = (A400140 (n + 1) : ℚ)

end A400140

/-! ## A400140.P5209131410713635427

`A000005(n+1)*A367987(n+1)/A365401(n+1)`
-/

namespace A400140.P5209131410713635427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A367987 (n + 1) : ℚ) / (A365401 (n + 1) : ℚ)

end

end A400140.P5209131410713635427

namespace A400140

/-- `A000005(n+1)*A367987(n+1)/A365401(n+1)` -/
def P5209131410713635427.Spec : Prop :=
  ∀ n, P5209131410713635427.a n = (A400140 (n + 1) : ℚ)

end A400140

/-! ## A400140.P17303487593829414369

`A368470(A350390((n+1)*A350389(n+1)))`
-/

namespace A400140.P17303487593829414369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (A350390 ((n + 1 : ℤ) * A350389 (n + 1)).toNat).toNat

end

end A400140.P17303487593829414369

namespace A400140

/-- `A368470(A350390((n+1)*A350389(n+1)))` -/
def P17303487593829414369.Spec : Prop :=
  ∀ n, P17303487593829414369.a n = A400140 (n + 1)

end A400140

/-!
# A400142: The number of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

The programs for A400142, the canonical program `A400142.P15885049014009625684` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400142 has offset 1).

The definition of A400142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400142.P15121591466924280852

`A000005(n+1)*A037445(n+1)/A400143(n+1)`
-/

namespace A400142.P15121591466924280852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A037445 (n + 1) : ℚ) / (A400143 (n + 1) : ℚ)

end

end A400142.P15121591466924280852

namespace A400142

/-- `A000005(n+1)*A037445(n+1)/A400143(n+1)` -/
def P15121591466924280852.Spec : Prop :=
  ∀ n, P15121591466924280852.a n = (A400142 (n + 1) : ℚ)

end A400142

/-! ## A400142.P15885049014009625684

`A000005(n+1)*A001316(A007814(n+1))/(A007814(n+1)+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400142

/-- `A000005(n+1)*A001316(A007814(n+1))/(A007814(n+1)+1)` -/
def P15885049014009625684.Spec : Prop :=
  ∀ n, P15885049014009625684.a n = (A400142 (n + 1) : ℚ)

end A400142

/-! ## A400142.P4799900675915438769

`∑{d}[n+1, #%2]*A001316(val(n+1, 2))`
-/

namespace A400142.P4799900675915438769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) * A001316 (SequenceMachineLib.valuation (n + 1) 2)

end

end A400142.P4799900675915438769

namespace A400142

/-- `∑{d}[n+1, #%2]*A001316(val(n+1, 2))` -/
def P4799900675915438769.Spec : Prop :=
  ∀ n, P4799900675915438769.a n = A400142 (n + 1)

end A400142

/-! ## A400142.P1149801404293879132

`A001227(n+1)*A001316(val(n+1, 2))`
-/

namespace A400142.P1149801404293879132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001316 (SequenceMachineLib.valuation (n + 1) 2)

end

end A400142.P1149801404293879132

namespace A400142

/-- `A001227(n+1)*A001316(val(n+1, 2))` -/
def P1149801404293879132.Spec : Prop :=
  ∀ n, P1149801404293879132.a n = A400142 (n + 1)

end A400142

/-! ## A400142.P13353784062963008074

`∑{d}[n+1, #%2]*A001316(A007814(n+1))`
-/

namespace A400142.P13353784062963008074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ) * A001316 (A007814 (n + 1)).toNat

end

end A400142.P13353784062963008074

namespace A400142

/-- `∑{d}[n+1, #%2]*A001316(A007814(n+1))` -/
def P13353784062963008074.Spec : Prop :=
  ∀ n, P13353784062963008074.a n = A400142 (n + 1)

end A400142

/-! ## A400142.P10826362582137312028

`A001227(n+1)*A001316(log2(or(n, n+1)-n))`
-/

namespace A400142.P10826362582137312028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001316 (SequenceMachineLib.roundAway (Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ))).toNat

end

end A400142.P10826362582137312028

namespace A400142

/-- `A001227(n+1)*A001316(log2(or(n, n+1)-n))` -/
def P10826362582137312028.Spec : Prop :=
  ∀ n, P10826362582137312028.a n = A400142 (n + 1)

end A400142

/-! ## A400142.P4586065993008781730

`A001227(n+1)*A001316(log2(and(n+1, -(n+1))))`
-/

namespace A400142.P4586065993008781730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A001316 (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ))).toNat

end

end A400142.P4586065993008781730

namespace A400142

/-- `A001227(n+1)*A001316(log2(and(n+1, -(n+1))))` -/
def P4586065993008781730.Spec : Prop :=
  ∀ n, P4586065993008781730.a n = A400142 (n + 1)

end A400142

/-! ## A400142.P7220962093350624129

`A001227(n+1)*A037445(A006519(n+1))`
-/

namespace A400142.P7220962093350624129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A037445 (A006519 (n + 1)).toNat

end

end A400142.P7220962093350624129

namespace A400142

/-- `A001227(n+1)*A037445(A006519(n+1))` -/
def P7220962093350624129.Spec : Prop :=
  ∀ n, P7220962093350624129.a n = A400142 (n + 1)

end A400142

/-!
# A400143: The number of divisors d of n such that gcid(d, n/d) is a power of 2, where gcid is the greatest common infinitary divisor.

The programs for A400143, the canonical program `A400143.P16016371540924763515` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400143 has offset 1).

The definition of A400143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400143.P16016371540924763515

`A000005(n+1)*A037445(n+1)/A400142(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A400143

/-- `A000005(n+1)*A037445(n+1)/A400142(n+1)` -/
def P16016371540924763515.Spec : Prop :=
  ∀ n, P16016371540924763515.a n = (A400143 (n + 1) : ℚ)

end A400143

/-! ## A400143.P17793098465056295683

`(val(n+1, 2)+1)*A037445((n+1)/2^val(n+1, 2))`
-/

namespace A400143.P17793098465056295683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A037445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A400143.P17793098465056295683

namespace A400143

/-- `(val(n+1, 2)+1)*A037445((n+1)/2^val(n+1, 2))` -/
def P17793098465056295683.Spec : Prop :=
  ∀ n, P17793098465056295683.a n = A400143 (n + 1)

end A400143

/-! ## A400143.P16134995840435983579

`A001511(n+1)*A037445(A064989(n+1))`
-/

namespace A400143.P16134995840435983579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A037445 (A064989 (n + 1)).toNat

end

end A400143.P16134995840435983579

namespace A400143

/-- `A001511(n+1)*A037445(A064989(n+1))` -/
def P16134995840435983579.Spec : Prop :=
  ∀ n, P16134995840435983579.a n = A400143 (n + 1)

end A400143

/-! ## A400143.P9508944304228827036

`A037445(A000265(n+1))*A067029(2*(n+1))`
-/

namespace A400143.P9508944304228827036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A000265 (n + 1)).toNat * A067029 (2 * (n + 1))

end

end A400143.P9508944304228827036

namespace A400143

/-- `A037445(A000265(n+1))*A067029(2*(n+1))` -/
def P9508944304228827036.Spec : Prop :=
  ∀ n, P9508944304228827036.a n = A400143 (n + 1)

end A400143

/-!
# A400144: The sum of divisors d of n such that gcid(d, n/d) is a square, where gcid is the greatest common infinitary divisor.

The programs for A400144, the canonical program `A400144.P1155357798941404441` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400144 has offset 1).

The definition of A400144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400144.P1155357798941404441

`A035316(n+1)*A367991(n+1)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400144

/-- `A035316(n+1)*A367991(n+1)` -/
def P1155357798941404441.Spec : Prop :=
  ∀ n, P1155357798941404441.a n = A400144 (n + 1)

theorem P1155357798941404441.correct : P1155357798941404441.Spec := by
  intro n
  simp only [A400144, Nat.add_sub_cancel]

end A400144

/-! ## A400144.P5988669575133959500

`A351569(1+n)*A367989(n+1)`
-/

namespace A400144.P5988669575133959500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (1 + n) * A367989 (n + 1)

end

end A400144.P5988669575133959500

namespace A400144

/-- `A351569(1+n)*A367989(n+1)` -/
def P5988669575133959500.Spec : Prop :=
  ∀ n, P5988669575133959500.a n = A400144 (n + 1)

end A400144

/-! ## A400144.P15786430948285216075

`A365349(n+1)/A367990(n+1)`
-/

namespace A400144.P15786430948285216075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365349 (n + 1) : ℚ) / (A367990 (n + 1) : ℚ)

end

end A400144.P15786430948285216075

namespace A400144

/-- `A365349(n+1)/A367990(n+1)` -/
def P15786430948285216075.Spec : Prop :=
  ∀ n, P15786430948285216075.a n = (A400144 (n + 1) : ℚ)

end A400144

/-! ## A400144.P7478173421424749680

`A000203(A007913(n+1))*A035316(n+1)`
-/

namespace A400144.P7478173421424749680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007913 (n + 1)).toNat * A035316 (n + 1)

end

end A400144.P7478173421424749680

namespace A400144

/-- `A000203(A007913(n+1))*A035316(n+1)` -/
def P7478173421424749680.Spec : Prop :=
  ∀ n, P7478173421424749680.a n = A400144 (n + 1)

end A400144

/-! ## A400144.P5360080938165589522

`(1-A326058(n+1)+n)*A365347(A007913(n+1))`
-/

namespace A400144.P5360080938165589522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A326058 (n + 1) + (n : ℤ)) * A365347 (A007913 (n + 1)).toNat

end

end A400144.P5360080938165589522

namespace A400144

/-- `(1-A326058(n+1)+n)*A365347(A007913(n+1))` -/
def P5360080938165589522.Spec : Prop :=
  ∀ n, P5360080938165589522.a n = A400144 (n + 1)

end A400144

/-!
# A400145: The sum of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

The programs for A400145, the canonical program `A400145.P3159819875312283188` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400145 has offset 1).

The definition of A400145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400145.P18329029038077682358

`A000203(n+1)*A049417(n+1)/A400146(n+1)`
-/

namespace A400145.P18329029038077682358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A049417 (n + 1) : ℚ) / (A400146 (n + 1) : ℚ)

end

end A400145.P18329029038077682358

namespace A400145

/-- `A000203(n+1)*A049417(n+1)/A400146(n+1)` -/
def P18329029038077682358.Spec : Prop :=
  ∀ n, P18329029038077682358.a n = (A400145 (n + 1) : ℚ)

end A400145

/-! ## A400145.P17564260093047756580

`∑{d}[n+1, #%2*#]*A049417(2^val(n+1, 2))`
-/

namespace A400145.P17564260093047756580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d % 2 * d : ℕ) : ℤ) * A049417 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A400145.P17564260093047756580

namespace A400145

/-- `∑{d}[n+1, #%2*#]*A049417(2^val(n+1, 2))` -/
def P17564260093047756580.Spec : Prop :=
  ∀ n, P17564260093047756580.a n = A400145 (n + 1)

end A400145

/-! ## A400145.P3159819875312283188

`A000593(n+1)*A193231(A006519(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A400145

/-- `A000593(n+1)*A193231(A006519(n+1))` -/
def P3159819875312283188.Spec : Prop :=
  ∀ n, P3159819875312283188.a n = A400145 (n + 1)

theorem P3159819875312283188.correct : P3159819875312283188.Spec := by
  intro n
  simp only [A400145, Nat.add_sub_cancel]

end A400145

/-!
# A400146: The sum of divisors d of n such that gcid(d, n/d) is a power of 2, where gcid is the greatest common infinitary divisor.

The programs for A400146, there is no canonical definition to state claims against.
-/

/-! ## A400146.P7095588566412564521

`A000203(n+1)*A049417(n+1)/A400145(n+1)`
-/

namespace A400146.P7095588566412564521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A049417 (n + 1) : ℚ) / (A400145 (n + 1) : ℚ)

end

end A400146.P7095588566412564521

/-!
# A400149: Number of distinct multisets {k_1, ..., k_r}, 3 <= k_i <= n, such that some n-set has subsets of sizes k_1, ..., k_r with any two of them sharing at most one element.

The programs for A400149, there is no canonical definition to state claims against.
-/

/-! ## A400149.P16383631492924476390

`A182210(A148561(n))`
-/

namespace A400149.P16383631492924476390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A148561 n).toNat

end

end A400149.P16383631492924476390

/-! ## A400149.P14139856026757711387

`A003059(A148731(n))`
-/

namespace A400149.P14139856026757711387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A148731 n).toNat

end

end A400149.P14139856026757711387

/-! ## A400149.P16847231385987711760

`A181578(A026034(n))`
-/

namespace A400149.P16847231385987711760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A026034 n).toNat

end

end A400149.P16847231385987711760

/-! ## A400149.P7971987871715096389

`A181578(A061551(n))`
-/

namespace A400149.P7971987871715096389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A061551 n).toNat

end

end A400149.P7971987871715096389

/-! ## A400149.P8855904211257769476

`A003005(A359019(n))`
-/

namespace A400149.P8855904211257769476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A359019 n).toNat

end

end A400149.P8855904211257769476

/-!
# A400150: a(n) = |2*a(n-1) - a(n-2) - 2|, with a(0) = 0 and a(1) = 1.

The programs for A400150, the canonical program `A400150.P11417170207411611835` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400150 has offset 0).

The definition of A400150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400150.P11417170207411611835

`abs(2*a(n-1)-a(n-2)-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400150

/-- `abs(2*a(n-1)-a(n-2)-2)` -/
def P11417170207411611835.Spec : Prop :=
  ∀ n, P11417170207411611835.a n = A400150 n

theorem P11417170207411611835.correct : P11417170207411611835.Spec := by
  intro n
  simp only [A400150]

end A400150

/-! ## A400150.P8106769405011021924

`floor(sqrt(n)+1/2)²-A053188(n)²`
-/

namespace A400150.P8106769405011021924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ ^ 2 - A053188 n ^ 2

end

end A400150.P8106769405011021924

namespace A400150

/-- `floor(sqrt(n)+1/2)²-A053188(n)²` -/
def P8106769405011021924.Spec : Prop :=
  ∀ n, P8106769405011021924.a n = A400150 n

end A400150

/-! ## A400150.P8219757279102622661

`n-A028391(A124258(n+1))`
-/

namespace A400150.P8219757279102622661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028391 (A124258 (n + 1)).toNat

end

end A400150.P8219757279102622661

namespace A400150

/-- `n-A028391(A124258(n+1))` -/
def P8219757279102622661.Spec : Prop :=
  ∀ n, P8219757279102622661.a n = A400150 n

end A400150

/-! ## A400150.P347533027361496848

`A053187(n)-A000290(A053188(n))`
-/

namespace A400150.P347533027361496848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n - A000290 (A053188 n).toNat

end

end A400150.P347533027361496848

namespace A400150

/-- `A053187(n)-A000290(A053188(n))` -/
def P347533027361496848.Spec : Prop :=
  ∀ n, P347533027361496848.a n = A400150 n

end A400150

/-! ## A400150.P16633348896977196968

`(A001670(n+1)-A253515(n+1))*A253515(n+1)`
-/

namespace A400150.P16633348896977196968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001670 (n + 1) - A253515 (n + 1)) * A253515 (n + 1)

end

end A400150.P16633348896977196968

namespace A400150

/-- `(A001670(n+1)-A253515(n+1))*A253515(n+1)` -/
def P16633348896977196968.Spec : Prop :=
  ∀ n, P16633348896977196968.a n = A400150 n

end A400150

/-! ## A400150.P13348566029747779627

`A074294(n+1)*A253515(n+1)-A253515(n+1)`
-/

namespace A400150.P13348566029747779627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (n + 1) * A253515 (n + 1) - A253515 (n + 1)

end

end A400150.P13348566029747779627

namespace A400150

/-- `A074294(n+1)*A253515(n+1)-A253515(n+1)` -/
def P13348566029747779627.Spec : Prop :=
  ∀ n, P13348566029747779627.a n = A400150 n

end A400150

/-! ## A400150.P670067929694765224

`A094053(A162917(n+1))`
-/

namespace A400150.P670067929694765224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (A162917 (n + 1)).toNat

end

end A400150.P670067929694765224

namespace A400150

/-- `A094053(A162917(n+1))` -/
def P670067929694765224.Spec : Prop :=
  ∀ n, P670067929694765224.a n = A400150 n

end A400150

/-! ## A400150.P8338201968512158374

`(n-2*C(round(sqrt(n+1)), 2))*A171176(n+1)`
-/

namespace A400150.P8338201968512158374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (2 * Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ))).toNat 2 : ℤ)) * A171176 (n + 1)

end

end A400150.P8338201968512158374

namespace A400150

/-- `(n-2*C(round(sqrt(n+1)), 2))*A171176(n+1)` -/
def P8338201968512158374.Spec : Prop :=
  ∀ n, P8338201968512158374.a n = A400150 n

end A400150

/-! ## A400150.P929786995912626123

`A183299(n+1)-A289762(n+1)`
-/

namespace A400150.P929786995912626123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183299 (n + 1) - A289762 (n + 1)

end

end A400150.P929786995912626123

namespace A400150

/-- `A183299(n+1)-A289762(n+1)` -/
def P929786995912626123.Spec : Prop :=
  ∀ n, P929786995912626123.a n = A400150 n

end A400150

/-! ## A400150.P16783344685223383526

`A171176(n+1)*A293497(n)`
-/

namespace A400150.P16783344685223383526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 (n + 1) * A293497 n

end

end A400150.P16783344685223383526

namespace A400150

/-- `A171176(n+1)*A293497(n)` -/
def P16783344685223383526.Spec : Prop :=
  ∀ n, P16783344685223383526.a n = A400150 n

end A400150

/-!
# A400151: a(n) = A328571(A003415(n)).

The programs for A400151, there is no canonical definition to state claims against.
-/

/-! ## A400151.P12638623928893939596

`A328571(A003415(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400151.P12638623928893939596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A003415 n).toNat

end

end A400151.P12638623928893939596

/-! ## A400151.P16628994925561858839

`A007947(A327859(n))`
-/

namespace A400151.P16628994925561858839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A327859 n).toNat

end

end A400151.P16628994925561858839

/-! ## A400151.P1384045060069857957

`A328571(n+A168036(n))`
-/

namespace A400151.P1384045060069857957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 ((n : ℤ) + A168036 n).toNat

end

end A400151.P1384045060069857957

/-! ## A400151.P14022430300959733892

`A328571(A129283(n)-n)`
-/

namespace A400151.P14022430300959733892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (A129283 n - (n : ℤ)).toNat

end

end A400151.P14022430300959733892

/-! ## A400151.P8858766811962653365

`A328571(∑{d}[n, #*A349394(n/#)])`
-/

namespace A400151.P8858766811962653365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349394 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat).toNat

end

end A400151.P8858766811962653365

/-! ## A400151.P16057145459151395755

`gcd(A327859(n), A378133(n))`
-/

namespace A400151.P16057145459151395755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327859 n) (A378133 n)

end

end A400151.P16057145459151395755

/-! ## A400151.P4216247587925109374

`gcd(A034386(n), A327859(n))`
-/

namespace A400151.P4216247587925109374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A327859 n)

end

end A400151.P4216247587925109374

/-! ## A400151.P10186958834187153802

`∏{p}[A327859(n), #]`
-/

namespace A400151.P10186958834187153802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A400151.P10186958834187153802

/-!
# A400152: a(n) = p^{the most significant digit of n in primorial base, A049345}, where p is the corresponding radix prime; a(0) = 1.

The programs for A400152, there is no canonical definition to state claims against.
-/

/-! ## A400152.P13396492285516406969

`A053585(A276086(n))`
-/

namespace A400152.P13396492285516406969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A276086 n).toNat

end

end A400152.P13396492285516406969

/-! ## A400152.P3094151383758389650

`A053585(A351225(n)+n)`
-/

namespace A400152.P3094151383758389650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A351225 n + (n : ℤ)).toNat

end

end A400152.P3094151383758389650

/-! ## A400152.P1319445912378937065

`A053585(A373849(n)+A003415(n))`
-/

namespace A400152.P1319445912378937065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A373849 n + A003415 n).toNat

end

end A400152.P1319445912378937065

/-! ## A400152.P14257100572662817247

`A323129(A373849(n)+A003415(n))`
-/

namespace A400152.P14257100572662817247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (A373849 n + A003415 n).toNat

end

end A400152.P14257100572662817247

/-! ## A400152.P3148715732761857650

`A323129(A328476(n)+A328580(n))`
-/

namespace A400152.P3148715732761857650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323129 (A328476 n + A328580 n).toNat

end

end A400152.P3148715732761857650

/-!
# A400153: a(0)=a(1)=1, after which a(n) = p^{the most significant digit of n' in primorial base, A049345}, where p is the corresponding radix prime of the most significant digit, and n' stands for the arithmetic derivative of n, A003415(n).

The programs for A400153, there is no canonical definition to state claims against.
-/

/-! ## A400153.P269782748458645869

`A400152(A003415(n))`
-/

namespace A400153.P269782748458645869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (A003415 n).toNat

end

end A400153.P269782748458645869

/-! ## A400153.P18104045425473257777

`A053585(A327859(n))`
-/

namespace A400153.P18104045425473257777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A327859 n).toNat

end

end A400153.P18104045425473257777

/-! ## A400153.P3540672629187337477

`A400152(n+A168036(n))`
-/

namespace A400153.P3540672629187337477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 ((n : ℤ) + A168036 n).toNat

end

end A400153.P3540672629187337477

/-! ## A400153.P18364659260191705141

`A400152(A129283(n)-n)`
-/

namespace A400153.P18364659260191705141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (A129283 n - (n : ℤ)).toNat

end

end A400153.P18364659260191705141

/-! ## A400153.P14344520746244991813

`A400152(∑{d}[n, A300251(#)])`
-/

namespace A400153.P14344520746244991813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (∑ d ∈ Nat.divisors (f1 n), A300251 d).toNat

end

end A400153.P14344520746244991813

/-! ## A400153.P3259155341273949561

`A400152((n-A369052(n))/2)`
-/

namespace A400153.P3259155341273949561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (SequenceMachineLib.roundAway (((n : ℤ) - A369052 n : ℚ) / 2)).toNat

end

end A400153.P3259155341273949561

/-! ## A400153.P17457844760013795053

`A400152(∑{d}[n, A348976(#)]-n)`
-/

namespace A400153.P17457844760013795053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)).toNat

end

end A400153.P17457844760013795053

/-! ## A400153.P6136355552380573698

`A400152(∑{d}[n, #*A349394(n/#)])`
-/

namespace A400153.P6136355552380573698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349394 (SequenceMachineLib.roundAway ((n : ℚ) / (d : ℚ))).toNat).toNat

end

end A400153.P6136355552380573698

/-! ## A400153.P18086067208409671782

`A400152(A368921(n)+A068346(n))`
-/

namespace A400153.P18086067208409671782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (A368921 n + A068346 n).toNat

end

end A400153.P18086067208409671782

/-! ## A400153.P15620324318267666891

`A400152(A168036(n)-A001489(n))`
-/

namespace A400153.P15620324318267666891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (A168036 n - A001489 n).toNat

end

end A400153.P15620324318267666891

/-! ## A400153.P14042429421473137872

`A400152(A351225(n)+n-A373849(n))`
-/

namespace A400153.P14042429421473137872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400152 (A351225 n + ((n : ℤ) - A373849 n)).toNat

end

end A400153.P14042429421473137872

/-!
# A400154: Numbers k that are multiples of A400153(k).

The programs for A400154, there is no canonical definition to state claims against.
-/

/-! ## A400154.P16967113103777206165

`eq[n, lcm(n, A400153(n))]`
-/

namespace A400154.P16967113103777206165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A400153 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400154.P16967113103777206165

/-!
# A400156: Intersection of A373487 and A399379.

The programs for A400156, there is no canonical definition to state claims against.
-/

/-! ## A400156.P13558915978215514340

`filter[A399379(n+2), A373486(#)]`
-/

namespace A400156.P13558915978215514340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399379 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A400156.P13558915978215514340

/-! ## A400156.P17753277085582341533

`∩[A373487(n+1), A399379(n+1)]`
-/

namespace A400156.P17753277085582341533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400156.P17753277085582341533

/-! ## A400156.P1635736543591522951

`∩[A399379(n+1), A401725(n+1)]`
-/

namespace A400156.P1635736543591522951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400156.P1635736543591522951

/-!
# A400157: a(n) is the number of iterations of map k -> A392879(k) needed to reach the fixed point A327859(n), when starting from k = A380459(n).

The programs for A400157, there is no canonical definition to state claims against.
-/

/-! ## A400157.P655354871337385797

`A366775(n+3)%A122111(A323903(n+1))`
-/

namespace A400157.P655354871337385797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366775 (n + 3)) (A122111 (A323903 (n + 1)).toNat)

end

end A400157.P655354871337385797

/-! ## A400157.P6022747172494171511

`and(A103219(A362560(2*n+1)), A334203(n+1))`
-/

namespace A400157.P6022747172494171511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103219 (A362560 (2 * n + 1)).toNat) (A334203 (n + 1))

end

end A400157.P6022747172494171511

/-! ## A400157.P9267302926436193397

`A056239(A052126(n+1))*A095025(A000961(2*n+3))`
-/

namespace A400157.P9267302926436193397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A052126 (n + 1)).toNat * A095025 (A000961 (2 * n + 3)).toNat

end

end A400157.P9267302926436193397

/-! ## A400157.P866432072059576867

`and(A266191(A016994(n)), A323077(n+1))`
-/

namespace A400157.P866432072059576867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266191 (A016994 n).toNat) (A323077 (n + 1))

end

end A400157.P866432072059576867

/-! ## A400157.P572196844792605101

`A229019(A391066(n+1))%(A377730(1+n)+1)`
-/

namespace A400157.P572196844792605101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229019 (A391066 (n + 1)).toNat) (A377730 (1 + n) + 1)

end

end A400157.P572196844792605101

/-!
# A400158: a(1) = 1, a(2) = 2, and for n > 2, a(n) is the least number whose (n-1)-th arithmetic derivative (A003415) is one and A051903(n) = n-2, where A051903(n) is the largest exponent in the prime factorization of n.

The programs for A400158, there is no canonical definition to state claims against.
-/

/-! ## A400158.P10362444361886842772

`A242421(A140047(n+1))`
-/

namespace A400158.P10362444361886842772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242421 (A140047 (n + 1)).toNat

end

end A400158.P10362444361886842772

/-!
# A400159: a(n) = A249739(n) - A380528(n).

The programs for A400159, there is no canonical definition to state claims against.
-/

/-! ## A400159.P4986676311792233834

`A249739(n+1)-A380528(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400159.P4986676311792233834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1) - A380528 (n + 1)

end

end A400159.P4986676311792233834

/-!
# A400160: Numbers k such that either the smallest prime q for which valuation(A380459(k),q) >= q is their smallest nonunitary prime factor, or such prime q does not exist (in which case k is by necessity squarefree).

The programs for A400160, there is no canonical definition to state claims against.
-/

/-! ## A400160.P14759490180508157112

`∪[A380468(n+1), A400162(n+1)]`
-/

namespace A400160.P14759490180508157112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A400160.P14759490180508157112

/-! ## A400160.P5611829110986938593

`eq[0, A400159(n+1)]+1`
-/

namespace A400160.P5611829110986938593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400160.P5611829110986938593

/-!
# A400161: Nonsquarefree numbers k such that their smallest non-unitary prime factor is larger than the smallest prime q for which valuation(A380459(k),q) >= q.

The programs for A400161, there is no canonical definition to state claims against.
-/

/-! ## A400161.P12936969834791803999

`filter[A266000(n+1), A087049(#)]`
-/

namespace A400161.P12936969834791803999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A400161.P12936969834791803999

/-! ## A400161.P12190740090269414319

`filter[A266000(n+1), A107078(#)]`
-/

namespace A400161.P12190740090269414319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A400161.P12190740090269414319

/-! ## A400161.P2672338663133140948

`filter[A266000(n+1), A144101(#)]`
-/

namespace A400161.P2672338663133140948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A400161.P2672338663133140948

/-! ## A400161.P8575076371622346054

`filter[A266000(n+1), A351564(#)]`
-/

namespace A400161.P8575076371622346054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A400161.P8575076371622346054

/-! ## A400161.P9266949719579484016

`filter[A266000(n+1), A353626(#)]`
-/

namespace A400161.P9266949719579484016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A400161.P9266949719579484016

/-!
# A400162: Nonsquarefree numbers k such that their smallest non-unitary prime factor is also the smallest prime q for which valuation(A380459(k),q) >= q.

The programs for A400162, there is no canonical definition to state claims against.
-/

/-! ## A400162.P16633917292178970066

`filter[A400160(n+2), A087049(#)]`
-/

namespace A400162.P16633917292178970066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A400162.P16633917292178970066

/-! ## A400162.P10659380763542623002

`filter[A400160(1+n), A107078(#)]`
-/

namespace A400162.P10659380763542623002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400160 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A400162.P10659380763542623002

/-! ## A400162.P14351137071246445416

`2*A352872(1+n)`
-/

namespace A400162.P14351137071246445416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A352872 (1 + n)

end

end A400162.P14351137071246445416

/-! ## A400162.P4340256024841630534

`A004277(A352872(n+1))`
-/

namespace A400162.P4340256024841630534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A352872 (n + 1)).toNat

end

end A400162.P4340256024841630534

/-! ## A400162.P16517408354570582495

`A004275(A352872(n+1)+1)`
-/

namespace A400162.P16517408354570582495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A352872 (n + 1) + 1).toNat

end

end A400162.P16517408354570582495

/-! ## A400162.P16798921218289578058

`A103517(A352872(n+1)-1)`
-/

namespace A400162.P16798921218289578058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A352872 (n + 1) - 1).toNat

end

end A400162.P16798921218289578058

/-! ## A400162.P15235241657809490129

`A352872(A000027(n+1))+A352872(n+1)`
-/

namespace A400162.P15235241657809490129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352872 (A000027 (n + 1)).toNat + A352872 (n + 1)

end

end A400162.P15235241657809490129

/-!
# A400163: The exponent of the largest prime dividing A380459(n), with a(1) = 0 by convention.

The programs for A400163, there is no canonical definition to state claims against.
-/

/-! ## A400163.P3205294118303344228

`A400250(C(n+1+A400164(n+1)-1, 2)+n+1)`
-/

namespace A400163.P3205294118303344228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400250 (Nat.choose ((n + 1 : ℤ) + A400164 (n + 1) - 1).toNat 2 + (n + 1))

end

end A400163.P3205294118303344228

/-! ## A400163.P8836730469349876509

`A071178(A380459(n+1)%A294949(n+1))`
-/

namespace A400163.P8836730469349876509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (Int.tmod (A380459 (n + 1)) (A294949 (n + 1))).toNat

end

end A400163.P8836730469349876509

/-! ## A400163.P9247437183212010324

`A194546(n^A288318(n))`
-/

namespace A400163.P9247437183212010324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194546 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A288318 n : ℤ))).toNat

end

end A400163.P9247437183212010324

/-! ## A400163.P400649186385297424

`A000196(n)^A022896(A132276(n))`
-/

namespace A400163.P400649186385297424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 n : ℚ) ^ (A022896 (A132276 n).toNat : ℤ)

end

end A400163.P400649186385297424

/-!
# A400164: The index of the largest prime dividing A380459(n), with a(1) = 0 by convention.

The programs for A400164, there is no canonical definition to state claims against.
-/

/-! ## A400164.P12560995109859667397

`A000720(A400165(n+1))`
-/

namespace A400164.P12560995109859667397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A400165 (n + 1)).toNat

end

end A400164.P12560995109859667397

/-! ## A400164.P13651552113731854583

`A235224(n+1)-A400166(n+1)`
-/

namespace A400164.P13651552113731854583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (n + 1) - A400166 (n + 1)

end

end A400164.P13651552113731854583

/-! ## A400164.P4471399875105049473

`A400262(n+1)-A400168(n+1)`
-/

namespace A400164.P4471399875105049473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400262 (n + 1) - A400168 (n + 1)

end

end A400164.P4471399875105049473

/-! ## A400164.P363798593688183163

`A061395(A380459(n+1))`
-/

namespace A400164.P363798593688183163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A380459 (n + 1)).toNat

end

end A400164.P363798593688183163

/-! ## A400164.P11200915870873390100

`A061395(A400165(1+n))`
-/

namespace A400164.P11200915870873390100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A400165 (1 + n)).toNat

end

end A400164.P11200915870873390100

/-! ## A400164.P2843532878805174033

`A235224(A393063(n+1))`
-/

namespace A400164.P2843532878805174033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A393063 (n + 1)).toNat

end

end A400164.P2843532878805174033

/-! ## A400164.P4727554570150464408

`A235224(A003415(n+1))-A400168(n+1)`
-/

namespace A400164.P4727554570150464408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A003415 (n + 1)).toNat - A400168 (n + 1)

end

end A400164.P4727554570150464408

/-! ## A400164.P6787809030826253760

`A337428(n+3)%A400165(n+1)`
-/

namespace A400164.P6787809030826253760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337428 (n + 3)) (A400165 (n + 1))

end

end A400164.P6787809030826253760

/-! ## A400164.P10210574547133074116

`A061395(A393059(n+1))`
-/

namespace A400164.P10210574547133074116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A393059 (n + 1)).toNat

end

end A400164.P10210574547133074116

/-!
# A400165: The largest prime dividing A380459(n), with a(1) = 1 by convention.

The programs for A400165, there is no canonical definition to state claims against.
-/

/-! ## A400165.P15088107982981233271

`A006530(A380459(n+1))`
-/

namespace A400165.P15088107982981233271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A380459 (n + 1)).toNat

end

end A400165.P15088107982981233271

/-! ## A400165.P3644942362184890610

`A006530(A393059(n+1))`
-/

namespace A400165.P3644942362184890610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A393059 (n + 1)).toNat

end

end A400165.P3644942362184890610

/-! ## A400165.P53583067729150690

`A343253(∏{p}[A329350(n+1), #])`
-/

namespace A400165.P53583067729150690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343253 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A400165.P53583067729150690

/-! ## A400165.P11896352804614242158

`A128630(gcd(A057346(n+3), A319708(n+1)))`
-/

namespace A400165.P11896352804614242158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128630 (Int.gcd (A057346 (n + 3)) (A319708 (n + 1)))

end

end A400165.P11896352804614242158

/-! ## A400165.P7110624762517361814

`A006530(A329350(n+1))`
-/

namespace A400165.P7110624762517361814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A329350 (n + 1)).toNat

end

end A400165.P7110624762517361814

/-!
# A400166: a(n) = A235224(n) - A400164(n), where A235224(n) is the length of primorial base representation of n, and A400164(n) = Max_{d|n, d is a prime power} A235224(n/d).

The programs for A400166, there is no canonical definition to state claims against.
-/

/-! ## A400166.P15692958427417383075

`A235224(n+1)-A400164(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400166.P15692958427417383075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (n + 1) - A400164 (n + 1)

end

end A400166.P15692958427417383075

/-! ## A400166.P15184213149239671485

`A235224(n+1)-A056239(A400165(n+1))`
-/

namespace A400166.P15184213149239671485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (n + 1) - A056239 (A400165 (n + 1)).toNat

end

end A400166.P15184213149239671485

/-! ## A400166.P17187476540778844666

`A400168(n+1)+A235224(n+1)-A400262(n+1)`
-/

namespace A400166.P17187476540778844666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400168 (n + 1) + A235224 (n + 1) - A400262 (n + 1)

end

end A400166.P17187476540778844666

/-! ## A400166.P646946311582353239

`A400164(2*(n+1))-A400164(n+1)`
-/

namespace A400166.P646946311582353239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400164 (2 * (n + 1)) - A400164 (n + 1)

end

end A400166.P646946311582353239

/-! ## A400166.P11643087606109358768

`A061395(A400152(n+1))-A400164(n+1)`
-/

namespace A400166.P11643087606109358768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A400152 (n + 1)).toNat - A400164 (n + 1)

end

end A400166.P11643087606109358768

/-!
# A400167: Numbers k such that A235224(k) = A400164(k), where A235224(n) is the length of primorial base representation of n, and A400164(n) = Max_{d|n, d is a prime power} A235224(n/d).

The programs for A400167, there is no canonical definition to state claims against.
-/

/-! ## A400167.P9344160386142522240

`eq[0, A400166(n+1)]+1`
-/

namespace A400167.P9344160386142522240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400167.P9344160386142522240

/-! ## A400167.P8557285659126807521

`lt[A000005(n+1)*A400166(n+1), 1]+1`
-/

namespace A400167.P8557285659126807521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P8557285659126807521

/-! ## A400167.P12182891530488974061

`lt[A020639(n+1)*A400166(n+1), 1]+1`
-/

namespace A400167.P12182891530488974061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P12182891530488974061

/-! ## A400167.P1748236462874119266

`lt[A018866(3*n+5)*A400166(n+1), 1]+1`
-/

namespace A400167.P1748236462874119266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018866 (3 * n + 5) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P1748236462874119266

/-! ## A400167.P8308992239236967832

`eq[A235224(n+1), A400164(n+1)]+1`
-/

namespace A400167.P8308992239236967832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A400167.P8308992239236967832

/-! ## A400167.P10952498426108434137

`lt[A272979(n)*A400166(n+1), 1]+1`
-/

namespace A400167.P10952498426108434137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272979 n * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P10952498426108434137

/-! ## A400167.P7575242608199597239

`lt[A346643(n)*A400166(n+1), 1]+1`
-/

namespace A400167.P7575242608199597239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346643 n * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P7575242608199597239

/-! ## A400167.P5612128257185511361

`lt[A274979(n+4)*A400166(n+1), 1]+1`
-/

namespace A400167.P5612128257185511361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274979 (n + 4) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P5612128257185511361

/-! ## A400167.P4695497518841105024

`eq[A400164(n+1), A400164(2*(n+1))]+1`
-/

namespace A400167.P4695497518841105024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400164 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A400167.P4695497518841105024

/-! ## A400167.P5989072435608375486

`eq[A400165(n+1), A400165(2*(n+1))]+1`
-/

namespace A400167.P5989072435608375486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400165 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A400167.P5989072435608375486

/-! ## A400167.P7439480670854044459

`lt[A090492(2*n)*A400166(n+1), 1]+1`
-/

namespace A400167.P7439480670854044459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090492 (2 * n) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P7439480670854044459

/-! ## A400167.P2161377196429580493

`lt[A003146(3*(n+1))*A400166(n+1), 1]+1`
-/

namespace A400167.P2161377196429580493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003146 (3 * (n + 1)) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P2161377196429580493

/-! ## A400167.P13569522054064638298

`lt[A270624(2*n+1)*A400166(n+1), 1]+1`
-/

namespace A400167.P13569522054064638298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270624 (2 * n + 1) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P13569522054064638298

/-! ## A400167.P17025921248505421476

`lt[A270622(3*n)*A400166(n+1), 1]+1`
-/

namespace A400167.P17025921248505421476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270622 (3 * n) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P17025921248505421476

/-! ## A400167.P4112929061154602077

`lt[A358466(n+1)*A400166(n+1), 1]+1`
-/

namespace A400167.P4112929061154602077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358466 (n + 1) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P4112929061154602077

/-! ## A400167.P1140761058800247506

`lt[A090497(n+1)*A400166(n+1), 1]+1`
-/

namespace A400167.P1140761058800247506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090497 (n + 1) * A400166 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400167.P1140761058800247506

/-! ## A400167.P18045121810184173346

`lt[A400166(A233583(n+1)), 1]`
-/

namespace A400167.P18045121810184173346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400166 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A400167.P18045121810184173346

/-!
# A400168: a(n) = A235224(A003415(n)) - A400164(n), where A235224 is the length of primorial base representation, A400164(n) = Max_{d|n, d is a prime power} A235224(n/d), and A003415 is the arithmetic derivative.

The programs for A400168, there is no canonical definition to state claims against.
-/

/-! ## A400168.P7113697979227123757

`A400262(n+1)-A400164(n+1)`
-/

namespace A400168.P7113697979227123757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400262 (n + 1) - A400164 (n + 1)

end

end A400168.P7113697979227123757

/-! ## A400168.P17600676969821657526

`A235224(A003415(n+1))-A400164(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400168.P17600676969821657526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A003415 (n + 1)).toNat - A400164 (n + 1)

end

end A400168.P17600676969821657526

/-! ## A400168.P13930464091409660228

`Δ[fp[A400170(n+1)]]`
-/

namespace A400168.P13930464091409660228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400170 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A400168.P13930464091409660228

/-! ## A400168.P1264614684190449350

`char[comp[A400169(n+1)-1]]`
-/

namespace A400168.P1264614684190449350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400169 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A400168.P1264614684190449350

/-! ## A400168.P9624891254238306896

`A061395(A400151(n+1))-A400164(n+1)`
-/

namespace A400168.P9624891254238306896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A400151 (n + 1)).toNat - A400164 (n + 1)

end

end A400168.P9624891254238306896

/-!
# A400169: Numbers k such that A235224(A003415(k)) = A400164(k), where A235224 is the length of primorial base representation, A400164(n) = Max_{d|n, d is a prime power} A235224(n/d), and A003415 is the arithmetic derivative.

The programs for A400169, there is no canonical definition to state claims against.
-/

/-! ## A400169.P2569377693974543746

`lt[A400168(1+n), 1]+1`
-/

namespace A400169.P2569377693974543746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400168 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400169.P2569377693974543746

/-! ## A400169.P9259328487644788585

`comp[A400168(n+1)*(n+1)]`
-/

namespace A400169.P9259328487644788585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400168 (n + 1) * (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400169.P9259328487644788585

/-!
# A400170: Numbers k such that A235224(A003415(k)) > A400164(k), where A235224 is the length of primorial base representation, A400164(n) = Max_{d|n, d is a prime power} A235224(n/d), and A003415 is the arithmetic derivative.

The programs for A400170, there is no canonical definition to state claims against.
-/

/-! ## A400170.P16821394890757132717

`filter[A344180(n), A400168(#)]`
-/

namespace A400170.P16821394890757132717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P16821394890757132717

/-! ## A400170.P5815952968670356943

`filter[A305980(n+1), A400168(#)]`
-/

namespace A400170.P5815952968670356943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P5815952968670356943

/-! ## A400170.P5110770173958379424

`filter[A002808(n+1), A400168(#)]`
-/

namespace A400170.P5110770173958379424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P5110770173958379424

/-! ## A400170.P16186364325296983270

`filter[A018252(n+1), A400168(#)]`
-/

namespace A400170.P16186364325296983270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P16186364325296983270

/-! ## A400170.P9395658380162374831

`comp[A400169(n+1)-1]+1`
-/

namespace A400170.P9395658380162374831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400169 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A400170.P9395658380162374831

/-! ## A400170.P16258310752036879490

`filter[A056653(n+1), A400168(#)]`
-/

namespace A400170.P16258310752036879490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P16258310752036879490

/-! ## A400170.P3030217248948312200

`filter[A065090(n+1), A400168(#)]`
-/

namespace A400170.P3030217248948312200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P3030217248948312200

/-! ## A400170.P17716115109743784626

`filter[A275974(n+1), A400168(#)]`
-/

namespace A400170.P17716115109743784626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P17716115109743784626

/-! ## A400170.P7072815354733381546

`filter[A089088(n), A400168(#)]`
-/

namespace A400170.P7072815354733381546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P7072815354733381546

/-! ## A400170.P292838520628212088

`filter[A005451(n+1), A400168(#)]`
-/

namespace A400170.P292838520628212088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P292838520628212088

/-! ## A400170.P8564185285022202166

`filter[A019303(n), A400168(#)]`
-/

namespace A400170.P8564185285022202166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P8564185285022202166

/-! ## A400170.P13481070103116754251

`filter[A152271(n), A400168(#)]`
-/

namespace A400170.P13481070103116754251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P13481070103116754251

/-! ## A400170.P18113700803063059933

`filter[A158416(n), A400168(#)]`
-/

namespace A400170.P18113700803063059933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P18113700803063059933

/-! ## A400170.P14186234473726185007

`filter[A282738(n), A400168(#)]`
-/

namespace A400170.P14186234473726185007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P14186234473726185007

/-! ## A400170.P16162881958945369044

`filter[A038459(n+1), A400168(#)]`
-/

namespace A400170.P16162881958945369044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P16162881958945369044

/-! ## A400170.P14624042847761481734

`filter[A077157(n), A400168(#)]`
-/

namespace A400170.P14624042847761481734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P14624042847761481734

/-! ## A400170.P1690159944298811620

`filter[A174571(n+1), A400168(#)]`
-/

namespace A400170.P1690159944298811620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P1690159944298811620

/-! ## A400170.P13752989716714200331

`filter[A067747(n+1), A400168(#)]`
-/

namespace A400170.P13752989716714200331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P13752989716714200331

/-! ## A400170.P15646076741611758650

`filter[A077156(n), A400168(#)]`
-/

namespace A400170.P15646076741611758650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P15646076741611758650

/-! ## A400170.P6748161409219592528

`filter[A100727(n), A400168(#)]`
-/

namespace A400170.P6748161409219592528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A400168 (f1 j).toNat = 1) n)

end

end A400170.P6748161409219592528

/-!
# A400171: Numbers k not divisible by any p^p and for which A003415(k) is a multiple of A276085(k), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A400171, there is no canonical definition to state claims against.
-/

/-! ## A400171.P9595006918337070380

`∩[A373490(n+1), A400172(n+1)]`
-/

namespace A400171.P9595006918337070380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400171.P9595006918337070380

/-! ## A400171.P16319781350533892987

`filter[A373490(n+1), A359550(#)]`
-/

namespace A400171.P16319781350533892987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A400171.P16319781350533892987

/-! ## A400171.P11648996210853422702

`filter[A400172(n+1), A373489(#)]`
-/

namespace A400171.P11648996210853422702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A400171.P11648996210853422702

/-! ## A400171.P12304437114178391237

`filter[A048103(n+1), A373489(#)]`
-/

namespace A400171.P12304437114178391237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373489 (f1 j).toNat = 1) n)

end

end A400171.P12304437114178391237

/-!
# A400172: Numbers k not divisible by any p^p and for which A003415(k) >= A276085(k), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A400172, there is no canonical definition to state claims against.
-/

/-! ## A400172.P10658692279914853631

`filter[A392869(n+1), A359550(#)]`
-/

namespace A400172.P10658692279914853631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A400172.P10658692279914853631

/-! ## A400172.P16167509449006798443

`∩[A048103(n+1), A392869(n+1)]`
-/

namespace A400172.P16167509449006798443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400172.P16167509449006798443

/-! ## A400172.P13195447627469185216

`eq[A010163(n), A301331(n)]`
-/

namespace A400172.P13195447627469185216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010163 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400172.P13195447627469185216

/-! ## A400172.P6474555558053545110

`eq[A010192(n), A301331(n)]`
-/

namespace A400172.P6474555558053545110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400172.P6474555558053545110

/-! ## A400172.P12802668384103320906

`eq[A040677(n), A301331(n)]`
-/

namespace A400172.P12802668384103320906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400172.P12802668384103320906

/-!
# A400173: Dirichlet convolution of the arithmetic derivative with Liouville's lambda.

The programs for A400173, the canonical program `A400173.P10105449556572112451` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400173 has offset 1).

The definition of A400173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400173.P10105449556572112451

`∑{d}[n+1, A008836((n+1)/#)*A003415(#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A400173

/-- `∑{d}[n+1, A008836((n+1)/#)*A003415(#)]` -/
def P10105449556572112451.Spec : Prop :=
  ∀ n, P10105449556572112451.a n = A400173 (n + 1)

theorem P10105449556572112451.correct : P10105449556572112451.Spec := by
  intro n
  simp only [A400173, Nat.add_sub_cancel]

end A400173

/-! ## A400173.P11968364437834544790

`∑{d}[n+1, A158522(#)*A319684((n+1)/#)]`
-/

namespace A400173.P11968364437834544790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400173.P11968364437834544790

namespace A400173

/-- `∑{d}[n+1, A158522(#)*A319684((n+1)/#)]` -/
def P11968364437834544790.Spec : Prop :=
  ∀ n, P11968364437834544790.a n = A400173 (n + 1)

end A400173

/-! ## A400173.P2604024505059899220

`∑{d}[n+1, A206369((n+1)/#)*A349394(#)]`
-/

namespace A400173.P2604024505059899220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A349394 d

end

end A400173.P2604024505059899220

namespace A400173

/-- `∑{d}[n+1, A206369((n+1)/#)*A349394(#)]` -/
def P2604024505059899220.Spec : Prop :=
  ∀ n, P2604024505059899220.a n = A400173 (n + 1)

end A400173

/-! ## A400173.P15246091517153136484

`∑{d}[n+1, A323363(#)*A347130((n+1)/#)]`
-/

namespace A400173.P15246091517153136484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323363 d * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400173.P15246091517153136484

namespace A400173

/-- `∑{d}[n+1, A323363(#)*A347130((n+1)/#)]` -/
def P15246091517153136484.Spec : Prop :=
  ∀ n, P15246091517153136484.a n = A400173 (n + 1)

end A400173

/-! ## A400173.P13306536053732282597

`∑{d}[n+1, A349375(#)*A349380((n+1)/#)]`
-/

namespace A400173.P13306536053732282597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349375 d * A349380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400173.P13306536053732282597

namespace A400173

/-- `∑{d}[n+1, A349375(#)*A349380((n+1)/#)]` -/
def P13306536053732282597.Spec : Prop :=
  ∀ n, P13306536053732282597.a n = A400173 (n + 1)

end A400173

/-! ## A400173.P1663502307414649126

`∑{d}[n+1, A349618(#)*A380163((n+1)/#)]`
-/

namespace A400173.P1663502307414649126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349618 d * A380163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400173.P1663502307414649126

namespace A400173

/-- `∑{d}[n+1, A349618(#)*A380163((n+1)/#)]` -/
def P1663502307414649126.Spec : Prop :=
  ∀ n, P1663502307414649126.a n = A400173 (n + 1)

end A400173

/-!
# A400175: Array read by ascending antidiagonals: A(n,k) = n! * [x^n] ((1 + k*x)/(1 - k*x))^(1/k), with 1 <= k <= n.

The programs for A400175, there is no canonical definition to state claims against.
-/

/-! ## A400175.P8824673425446397672

`A062401(A120108(n)%A274986(n+3))`
-/

namespace A400175.P8824673425446397672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (Int.tmod (A120108 n) (A274986 (n + 3))).toNat

end

end A400175.P8824673425446397672

/-! ## A400175.P1383136627702137397

`A398813((row(n)-col(n))*A008480(n+1)²)`
-/

namespace A400175.P1383136627702137397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398813 (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * A008480 (n + 1) ^ 2).toNat

end

end A400175.P1383136627702137397

/-! ## A400175.P14537711098645877554

`A344470(A130321(n)^A369874(n+1))`
-/

namespace A400175.P14537711098645877554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344470 (SequenceMachineLib.roundAway ((A130321 n : ℚ) ^ (A369874 (n + 1) : ℤ))).toNat

end

end A400175.P14537711098645877554

/-! ## A400175.P2388794473011373485

`A207647(A122200(n)^A126168(2*n+5))`
-/

namespace A400175.P2388794473011373485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207647 (SequenceMachineLib.roundAway ((A122200 n : ℚ) ^ (A126168 (2 * n + 5) : ℤ))).toNat

end

end A400175.P2388794473011373485

/-!
# A400176: Antidiagonal sums of the array A400175.

The programs for A400176, there is no canonical definition to state claims against.
-/

/-! ## A400176.P16895646241125098320

`or(A262220(n+2)*n, A002631(n+1))`
-/

namespace A400176.P16895646241125098320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262220 (n + 2) * (n : ℤ)) (A002631 (n + 1))

end

end A400176.P16895646241125098320

/-! ## A400176.P14536301476753314745

`A392670(A060223(n+2))+A133789(n)`
-/

namespace A400176.P14536301476753314745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392670 (A060223 (n + 2)).toNat + A133789 n

end

end A400176.P14536301476753314745

/-!
# A400177: Irregular triangle: row n consists of the numbers x in [1,...,n-1] coprime to n such that (1/x) mod n < (-1/x) mod n.

The programs for A400177, there is no canonical definition to state claims against.
-/

/-! ## A400177.P16773915957389500789

`A393610(A060985(n+2))`
-/

namespace A400177.P16773915957389500789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393610 (A060985 (n + 2)).toNat

end

end A400177.P16773915957389500789

/-!
# A400179: a(n) = number of iterations of the map n -> A053188(n) needed to reach 0, starting from n.

The programs for A400179, the canonical program `A400179.P4702326977669117953` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400179 has offset 0).

The definition of A400179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400179.P4702326977669117953

`1+a(A053188(n))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A400179

/-- `1+a(A053188(n))` -/
def P4702326977669117953.Spec : Prop :=
  ∀ n, (P4702326977669117953.a n : ℤ) = A400179 n

theorem P4702326977669117953.correct : P4702326977669117953.Spec := by
  intro n
  simp only [A400179]

end A400179

/-! ## A400179.P13082738117659706922

`a(abs(round(sqrt(n))²-n))+1` with `a(0)=0`
-/

namespace A400179.P13082738117659706922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a |SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2 - (n : ℤ)|.toNat + 1

end

end A400179.P13082738117659706922

namespace A400179

/-- `a(abs(round(sqrt(n))²-n))+1` -/
def P13082738117659706922.Spec : Prop :=
  ∀ n, (P13082738117659706922.a n : ℤ) = A400179 n

theorem P13082738117659706922.correct : P13082738117659706922.Spec := by
  intro n
  simp only [A400179, Nat.add_sub_cancel, A400179.P13082738117659706922.a, A400179.P4702326977669117953.a, A053188, A053188.P11964261323046326377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A400179

/-! ## A400179.P746198651408865080

`A005555(a(A053188(n)))` with `a(0)=0`
-/

namespace A400179.P746198651408865080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A053188 n).toNat).toNat

end

end A400179.P746198651408865080

namespace A400179

/-- `A005555(a(A053188(n)))` -/
def P746198651408865080.Spec : Prop :=
  ∀ n, P746198651408865080.a n = A400179 n

end A400179

/-! ## A400179.P16913524006394201192

`A008732(a(A053188(n)))` with `a(0)=0`
-/

namespace A400179.P16913524006394201192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008732 (a (A053188 n).toNat).toNat

end

end A400179.P16913524006394201192

namespace A400179

/-- `A008732(a(A053188(n)))` -/
def P16913524006394201192.Spec : Prop :=
  ∀ n, P16913524006394201192.a n = A400179 n

end A400179

/-!
# A400183: Even terms in A397831, divided by 2.

The programs for A400183, there is no canonical definition to state claims against.
-/

/-! ## A400183.P5271661891547374512

`∩[2*n, A397831(n+1)]/2`
-/

namespace A400183.P5271661891547374512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397831 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A400183.P5271661891547374512

/-! ## A400183.P6756388100921828295

`A397831(lt[A397831(n+1)%2, 1]+1)/2`
-/

namespace A400183.P6756388100921828295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397831 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397831 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A400183.P6756388100921828295

/-! ## A400183.P3405232505561913880

`eq[1, A400000(2*(n+1))]+1`
-/

namespace A400183.P3405232505561913880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400183.P3405232505561913880

/-! ## A400183.P13594181441347021247

`lt[A400000(2*n+2), 2]+1`
-/

namespace A400183.P13594181441347021247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A400183.P13594181441347021247

/-! ## A400183.P8136906322850694794

`eq[2*n, A400110(2*(n+1))]+1`
-/

namespace A400183.P8136906322850694794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400110 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A400183.P8136906322850694794

/-! ## A400183.P190661016636442699

`lt[2*n, A397809(2*(n+1))]+1`
-/

namespace A400183.P190661016636442699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397809 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A400183.P190661016636442699

/-! ## A400183.P11153670366434523657

`eq[1, A400000(A004277(n))]`
-/

namespace A400183.P11153670366434523657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400183.P11153670366434523657

/-! ## A400183.P13869816481788849298

`A001057(eq[A004442(n), A400110(n+1)])`
-/

namespace A400183.P13869816481788849298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A400183.P13869816481788849298

/-! ## A400183.P5711812279079592991

`A008619(eq[A004442(n), A400110(n+1)])`
-/

namespace A400183.P5711812279079592991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A400183.P5711812279079592991

/-! ## A400183.P13399464417843328714

`record[A142150(A397831(n+1))]`
-/

namespace A400183.P13399464417843328714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A397831 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400183.P13399464417843328714

/-!
# A400184: Odd numbers missing from A397831.

The programs for A400184, there is no canonical definition to state claims against.
-/

/-! ## A400184.P9962356272156103036

`1+2*A400133(1+n)`
-/

namespace A400184.P9962356272156103036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A400133 (1 + n)

end

end A400184.P9962356272156103036

/-! ## A400184.P17680707174623958166

`A005408(A400133(1+n))`
-/

namespace A400184.P17680707174623958166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A400133 (1 + n)).toNat

end

end A400184.P17680707174623958166

/-! ## A400184.P5260317813612276786

`A223134(A400133(n+1))`
-/

namespace A400184.P5260317813612276786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A400133 (n + 1)).toNat

end

end A400184.P5260317813612276786

/-! ## A400184.P1687972006387713982

`A004273(A400133(n+1)+1)`
-/

namespace A400184.P1687972006387713982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A400133 (n + 1) + 1).toNat

end

end A400184.P1687972006387713982

/-! ## A400184.P10687031513355185663

`A004442(2*A400133(n+1))`
-/

namespace A400184.P10687031513355185663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A400133 (n + 1)).toNat

end

end A400184.P10687031513355185663

/-! ## A400184.P4869443019657124363

`A109613(2*A400133(n+1))`
-/

namespace A400184.P4869443019657124363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A400133 (n + 1)).toNat

end

end A400184.P4869443019657124363

/-! ## A400184.P7597559576246985808

`A004442(A400133(n+1)+A400133(n+1))`
-/

namespace A400184.P7597559576246985808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A400133 (n + 1) + A400133 (n + 1)).toNat

end

end A400184.P7597559576246985808

/-! ## A400184.P11965346157424434800

`A109613(A400133(n+1)+A400133(n+1))`
-/

namespace A400184.P11965346157424434800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A400133 (n + 1) + A400133 (n + 1)).toNat

end

end A400184.P11965346157424434800

/-! ## A400184.P6247417701861839938

`2*lt[A400110(2*n+1)/(2*n-1), 1]+1`
-/

namespace A400184.P6247417701861839938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400110 (2 * n + 1) : ℚ) / ((2 * n : ℤ) - 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A400184.P6247417701861839938

/-! ## A400184.P2902842314204255666

`2*lt[A353483(n+1), A004442(A400000(2*n+1))]+1`
-/

namespace A400184.P2902842314204255666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A400000 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400184.P2902842314204255666

/-! ## A400184.P3090940375977130330

`2*comp[eq[1, A400000(2*n+1)]]+1`
-/

namespace A400184.P3090940375977130330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A400184.P3090940375977130330

/-! ## A400184.P14782645045802924003

`A008619(4*A400133(n+1))`
-/

namespace A400184.P14782645045802924003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A400133 (n + 1)).toNat

end

end A400184.P14782645045802924003

/-! ## A400184.P13201808558910016666

`∑{#}[A400133(n+1), A040000(#)]`
-/

namespace A400184.P13201808558910016666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A040000 k

end

end A400184.P13201808558910016666

/-!
# A400185: An analog of A400000 for buildings, or, more precisely, poles, on the square spiral on an infinite chessboard.

The programs for A400185, there is no canonical definition to state claims against.
-/

/-! ## A400185.P3474791374838211387

`n-A400190(n)`
-/

namespace A400185.P3474791374838211387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400190 n

end

end A400185.P3474791374838211387

/-! ## A400185.P2467740147114131912

`abs(A400190(n)+A001489(n))`
-/

namespace A400185.P2467740147114131912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A400190 n + A001489 n|

end

end A400185.P2467740147114131912

/-! ## A400185.P9940629609068802881

`A024000(A400190(n)+1)+n`
-/

namespace A400185.P9940629609068802881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A400190 n + 1).toNat + (n : ℤ)

end

end A400185.P9940629609068802881

/-! ## A400185.P477515835824186872

`A057428(n)*A400190(n)+n`
-/

namespace A400185.P477515835824186872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A400190 n + (n : ℤ)

end

end A400185.P477515835824186872

/-! ## A400185.P2328844145356364975

`A001478(A400190(n)+1)+n+1`
-/

namespace A400185.P2328844145356364975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A400190 n + 1).toNat + (n + 1 : ℤ)

end

end A400185.P2328844145356364975

/-! ## A400185.P6046507673324471686

`A025581(A400190(n)+∑[n])`
-/

namespace A400185.P6046507673324471686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A400190 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A400185.P6046507673324471686

/-!
# A400186: Walk along the hexagonal spiral, with its cells numbered starting at 0, as in A395362. Three players, Black, Cyan, and Red, take turns. When it is Black's turn, he places a (Glinski) queen at the smallest unoccupied cell not attacked by an existing Cyan or Red queen; when it is Cyan's turn, he places a queen at the smallest unoccupied cell not attacked by an existing Black or Red queen, and when it is Red's turn, he places a queen at the smallest unoccupied cell not attacked by an existing Black or Cyan queen. Sequence lists cells occupied by Black queens.

The programs for A400186, there is no canonical definition to state claims against.
-/

/-! ## A400186.P13485400867119068892

`A010462(2*n+1)*A183322(n+1)`
-/

namespace A400186.P13485400867119068892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010462 (2 * n + 1) * A183322 (n + 1)

end

end A400186.P13485400867119068892

/-!
# A400189: Walk along the hexagonal spiral, with its cells numbered starting at 0, as in A395362. Three players, Black, Cyan, and Red, take turns. When it is Black's's turn, he places a (Glinski) queen at the smallest unoccupied cell not attacked by an existing Cyan or Red queen; when it is Cyan's turn, he places a queen at the smallest unoccupied cell not attacked by an existing Black or Red queen, and when it is Red's turn, he places a queen at the smallest unoccupied cell not attacked by an existing Black or Cyan queen. Sequence lists the unoccupied cells.

The programs for A400189, there is no canonical definition to state claims against.
-/

/-! ## A400189.P17751907755089999885

`∑[A392568(3*(n+1))%A378660(n+1)+1]`
-/

namespace A400189.P17751907755089999885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392568 (3 * (n + 1))) (A378660 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400189.P17751907755089999885

/-! ## A400189.P12182123167436618904

`∑[A000002(A359196(n+1)!)]`
-/

namespace A400189.P12182123167436618904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.factorial (A359196 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400189.P12182123167436618904

/-! ## A400189.P1644587063951742786

`∑[A344056(A294890(n+1))!]`
-/

namespace A400189.P1644587063951742786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A344056 (A294890 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400189.P1644587063951742786

/-! ## A400189.P3101567245698461147

`∑[A085191(A217793(3*n+4)*A318679(n+1))]`
-/

namespace A400189.P3101567245698461147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085191 (A217793 (3 * n + 4) * A318679 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400189.P3101567245698461147

/-! ## A400189.P1485465373179301700

`∑[A035250(A378660(n+1)%A381699(2*(n+2)))]`
-/

namespace A400189.P1485465373179301700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (Int.tmod (A378660 (n + 1)) (A381699 (2 * (n + 2)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400189.P1485465373179301700

/-!
# A400190: n - A400185(n).

The programs for A400190, there is no canonical definition to state claims against.
-/

/-! ## A400190.P12257408395948327346

`n-A400185(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400190.P12257408395948327346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400185 n

end

end A400190.P12257408395948327346

/-! ## A400190.P5536151457983716495

`n%A400185(floor(sqrt(n²+1)))`
-/

namespace A400190.P5536151457983716495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A400185 (Nat.sqrt (n ^ 2 + 1)))

end

end A400190.P5536151457983716495

/-! ## A400190.P2901846705971160150

`abs(A400185(n)+A001489(n))`
-/

namespace A400190.P2901846705971160150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A400185 n + A001489 n|

end

end A400190.P2901846705971160150

/-! ## A400190.P6883924858392874853

`A024000(A400185(n)+1)+n`
-/

namespace A400190.P6883924858392874853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A400185 n + 1).toNat + (n : ℤ)

end

end A400190.P6883924858392874853

/-! ## A400190.P5841966542254754117

`A001478(A400185(n)+1)+n+1`
-/

namespace A400190.P5841966542254754117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A400185 n + 1).toNat + (n + 1 : ℤ)

end

end A400190.P5841966542254754117

/-! ## A400190.P3343788044053637946

`A000027(n+1)%(A400185(n)+1)`
-/

namespace A400190.P3343788044053637946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A400185 n + 1)

end

end A400190.P3343788044053637946

/-! ## A400190.P17759427368139176735

`A061601(A400185(n)+A061601(n))`
-/

namespace A400190.P17759427368139176735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A400185 n + A061601 n).toNat

end

end A400190.P17759427368139176735

/-! ## A400190.P5006679969294443799

`A035327(A400185(n)+A035327(n))`
-/

namespace A400190.P5006679969294443799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A400185 n + A035327 n).toNat

end

end A400190.P5006679969294443799

/-! ## A400190.P16168117785656783443

`(n+1)%(A400185(n)+A400000(A397831(n+1)))`
-/

namespace A400190.P16168117785656783443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A400185 n + A400000 (A397831 (n + 1)).toNat)

end

end A400190.P16168117785656783443

/-! ## A400190.P946305589075943070

`A400000(A399763((n+1)%(A400185(n)+1)))`
-/

namespace A400190.P946305589075943070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (A399763 (Int.tmod (n + 1 : ℤ) (A400185 n + 1)).toNat).toNat

end

end A400190.P946305589075943070

/-! ## A400190.P9110466645723860271

`A025581(A400185(n)+A000217(n))`
-/

namespace A400190.P9110466645723860271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A400185 n + A000217 n).toNat

end

end A400190.P9110466645723860271

/-!
# A400191: First differences of A365872, divided by 2.

The programs for A400191, there is no canonical definition to state claims against.
-/

/-! ## A400191.P1890030017148928670

`Δ[A365872(1+n)]/2`
-/

namespace A400191.P1890030017148928670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365872 (1 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A400191.P1890030017148928670

/-! ## A400191.P2175881944455939882

`A004526(Δ[A365872(n+1)])`
-/

namespace A400191.P2175881944455939882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A400191.P2175881944455939882

/-! ## A400191.P8353390681430866592

`A026741(Δ[A365872(n+1)])`
-/

namespace A400191.P8353390681430866592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A400191.P8353390681430866592

/-! ## A400191.P9756273463818511087

`A065033(Δ[A365872(n+1)])`
-/

namespace A400191.P9756273463818511087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A400191.P9756273463818511087

/-! ## A400191.P18362276438229145307

`A289441(Δ[A365872(n+1)])`
-/

namespace A400191.P18362276438229145307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (f1 (n + 1) - f1 n).toNat

end

end A400191.P18362276438229145307

/-! ## A400191.P15886837243422651022

`(A365872(n+2)-A365872(n+1))/2`
-/

namespace A400191.P15886837243422651022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365872 (n + 2) - A365872 (n + 1) : ℚ) / 2

end

end A400191.P15886837243422651022

/-! ## A400191.P3684130244632369505

`A004526(A365872(n+2)-A365872(n+1))`
-/

namespace A400191.P3684130244632369505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A365872 (n + 2) - A365872 (n + 1)).toNat

end

end A400191.P3684130244632369505

/-! ## A400191.P1416384666411612085

`A065033(A365872(n+2)-A365872(n+1))`
-/

namespace A400191.P1416384666411612085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A365872 (n + 2) - A365872 (n + 1)).toNat

end

end A400191.P1416384666411612085

/-!
# A400194: Maximum number of terms in a 2-dense sublist of divisors of n.

The programs for A400194, there is no canonical definition to state claims against.
-/

/-! ## A400194.P10620222449601416347

`A001511(n+1)*A400195(n+1)`
-/

namespace A400194.P10620222449601416347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A400195 (n + 1)

end

end A400194.P10620222449601416347

/-! ## A400194.P11084413652583542071

`(val(n+1, 2)+1)*A400195(n+1)`
-/

namespace A400194.P11084413652583542071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A400195 (n + 1)

end

end A400194.P11084413652583542071

/-! ## A400194.P6758724932911966444

`A362470(n+1)+A320656(A081314(n+4))`
-/

namespace A400194.P6758724932911966444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362470 (n + 1) + A320656 (A081314 (n + 4)).toNat

end

end A400194.P6758724932911966444

/-! ## A400194.P8973510414074212268

`A000005(A083259(n+1)%A400001(3*(n+1)))`
-/

namespace A400194.P8973510414074212268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A083259 (n + 1)) (A400001 (3 * (n + 1)))).toNat

end

end A400194.P8973510414074212268

/-! ## A400194.P12677389641955120707

`A324392(A325709(n+1))`
-/

namespace A400194.P12677389641955120707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (A325709 (n + 1)).toNat

end

end A400194.P12677389641955120707

/-!
# A400195: Maximum number of odd terms in a 2-dense sublist of divisors of n.

The programs for A400195, there is no canonical definition to state claims against.
-/

/-! ## A400195.P16840660953363272531

`A400194(n+1)/A001511(n+1)`
-/

namespace A400195.P16840660953363272531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400194 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A400195.P16840660953363272531

/-! ## A400195.P5638900468076026998

`A400194(n+1)/A400194(2^val(n+1, 2))`
-/

namespace A400195.P5638900468076026998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400194 (n + 1) : ℚ) / (A400194 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A400195.P5638900468076026998

/-! ## A400195.P8605682240899262018

`A400194(n+1)/A067029(2*(n+1))`
-/

namespace A400195.P8605682240899262018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400194 (n + 1) : ℚ) / (A067029 (2 * (n + 1)) : ℚ)

end

end A400195.P8605682240899262018

/-! ## A400195.P3439554352960585707

`(A239657(n+1)+1)%A341282(n+2)`
-/

namespace A400195.P3439554352960585707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239657 (n + 1) + 1) (A341282 (n + 2))

end

end A400195.P3439554352960585707

/-! ## A400195.P412391553691972433

`A289310(A112796(n+1))+A239657(n+1)`
-/

namespace A400195.P412391553691972433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289310 (A112796 (n + 1)).toNat + A239657 (n + 1)

end

end A400195.P412391553691972433

/-! ## A400195.P1989453021222654212

`A239657(n+1)+A166486(A260224(n+1))`
-/

namespace A400195.P1989453021222654212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (n + 1) + A166486 (A260224 (n + 1)).toNat

end

end A400195.P1989453021222654212

/-! ## A400195.P13258937678764600375

`A239657(n+1)+A001055(A070188(n+4))`
-/

namespace A400195.P13258937678764600375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (n + 1) + A001055 (A070188 (n + 4)).toNat

end

end A400195.P13258937678764600375

/-! ## A400195.P15649171140219229138

`A239657(n+1)+A033999(A137855(n+1))²`
-/

namespace A400195.P15649171140219229138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (n + 1) + A033999 (A137855 (n + 1)).toNat ^ 2

end

end A400195.P15649171140219229138

/-! ## A400195.P18056442050293049474

`A239657(n+1)-A010051(A001567(n+5))+1`
-/

namespace A400195.P18056442050293049474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239657 (n + 1) - A010051 (A001567 (n + 5)).toNat + 1

end

end A400195.P18056442050293049474

/-! ## A400195.P4624508747707848281

`A239657(n+1)%A064985(A097037(2*(n+1)))+1`
-/

namespace A400195.P4624508747707848281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239657 (n + 1)) (A064985 (A097037 (2 * (n + 1))).toNat) + 1

end

end A400195.P4624508747707848281

/-!
# A400197: The union of the squares (A000290) and the integer 2.

The programs for A400197, the canonical program `A400197.P16747218055785228810` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400197 has offset 0).

The definition of A400197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400197.P16747218055785228810

`ogf((x-x^2+x^3+2x^4-x^5)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A400197

/-- `ogf((x-x^2+x^3+2x^4-x^5)/(1-3x+3x^2-x^3))` -/
def P16747218055785228810.Spec : Prop :=
  ∀ n, P16747218055785228810.a n = A400197 n

theorem P16747218055785228810.correct : P16747218055785228810.Spec := by
  intro n
  simp only [A400197]

end A400197

/-! ## A400197.P13302050232864918608

`∪[2^2^n, n²]`
-/

namespace A400197.P13302050232864918608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A400197.P13302050232864918608

namespace A400197

/-- `∪[2^2^n, n²]` -/
def P13302050232864918608.Spec : Prop :=
  ∀ n, (P13302050232864918608.a n : ℤ) = A400197 n

end A400197

/-! ## A400197.P11005458733138733849

`round((acot(n²)+n-1)²)`
-/

namespace A400197.P11005458733138733849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot (n ^ 2 : ℝ) + ((n : ℤ) - 1 : ℝ)) ^ 2)

end

end A400197.P11005458733138733849

namespace A400197

/-- `round((acot(n²)+n-1)²)` -/
def P11005458733138733849.Spec : Prop :=
  ∀ n, P11005458733138733849.a n = A400197 n

end A400197

/-! ## A400197.P6965788211433471987

`record[gcd(floor(n/4)², n%3)]`
-/

namespace A400197.P6965788211433471987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / 4⌋ ^ 2) ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400197.P6965788211433471987

namespace A400197

/-- `record[gcd(floor(n/4)², n%3)]` -/
def P6965788211433471987.Spec : Prop :=
  ∀ n, (P6965788211433471987.a n : ℤ) = A400197 n

end A400197

/-! ## A400197.P13542220145743611855

`round((n^-n+n-1)²)`
-/

namespace A400197.P13542220145743611855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) ^ (-(n : ℤ) : ℤ) + ((n : ℤ) - 1 : ℚ)) ^ 2)

end

end A400197.P13542220145743611855

namespace A400197

/-- `round((n^-n+n-1)²)` -/
def P13542220145743611855.Spec : Prop :=
  ∀ n, P13542220145743611855.a n = A400197 n

end A400197

/-! ## A400197.P9802697301019003402

`a(C(2, n))+(n-1)²` with `a(0)=0, a(1)=1`
-/

namespace A400197.P9802697301019003402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Nat.choose 2 n) + ((n : ℤ) - 1) ^ 2

end

end A400197.P9802697301019003402

namespace A400197

/-- `a(C(2, n))+(n-1)²` -/
def P9802697301019003402.Spec : Prop :=
  ∀ n, P9802697301019003402.a n = A400197 n

end A400197

/-! ## A400197.P8723049379169832254

`floor((C(2, n)/2+n-1)²)`
-/

namespace A400197.P8723049379169832254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose 2 n : ℚ) / 2 + ((n : ℤ) - 1 : ℚ)) ^ 2⌋

end

end A400197.P8723049379169832254

namespace A400197

/-- `floor((C(2, n)/2+n-1)²)` -/
def P8723049379169832254.Spec : Prop :=
  ∀ n, P8723049379169832254.a n = A400197 n

end A400197

/-! ## A400197.P15679986799957738396

`xor((n-1)², C(3, n²-n))`
-/

namespace A400197.P15679986799957738396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) ^ 2) (Nat.choose 3 ((n ^ 2 : ℤ) - (n : ℤ)).toNat : ℤ)

end

end A400197.P15679986799957738396

namespace A400197

/-- `xor((n-1)², C(3, n²-n))` -/
def P15679986799957738396.Spec : Prop :=
  ∀ n, P15679986799957738396.a n = A400197 n

end A400197

/-! ## A400197.P2157859732328883562

`∑[a(n-1)+2]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=5`
-/

namespace A400197.P2157859732328883562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400197.P2157859732328883562

namespace A400197

/-- `∑[a(n-1)+2]` -/
def P2157859732328883562.Spec : Prop :=
  ∀ n, (P2157859732328883562.a n : ℤ) = A400197 n

end A400197

/-! ## A400197.P7801261413992883581

`floor(n-1/a(n-1))²` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A400197.P7801261413992883581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ⌊(n : ℚ) - 1 / (a (n - 1) : ℚ)⌋ ^ 2

end

end A400197.P7801261413992883581

namespace A400197

/-- `floor(n-1/a(n-1))²` -/
def P7801261413992883581.Spec : Prop :=
  ∀ n, P7801261413992883581.a n = A400197 n

end A400197

/-! ## A400197.P13411443943815469271

`a(n-1)+2*n-3` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A400197.P13411443943815469271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 1) + (2 * n : ℤ) - 3

end

end A400197.P13411443943815469271

namespace A400197

/-- `a(n-1)+2*n-3` -/
def P13411443943815469271.Spec : Prop :=
  ∀ n, P13411443943815469271.a n = A400197 n

end A400197

/-! ## A400197.P3616246689160225508

`gcd(n-1, and(2, a(n-1)))²` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A400197.P3616246689160225508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Int.gcd ((n : ℤ) - 1) (Nat.land 2 (a (n - 1)) : ℤ) ^ 2

end

end A400197.P3616246689160225508

namespace A400197

/-- `gcd(n-1, and(2, a(n-1)))²` -/
def P3616246689160225508.Spec : Prop :=
  ∀ n, (P3616246689160225508.a n : ℤ) = A400197 n

end A400197

/-! ## A400197.P85770271117427235

`1-n*(2-n)%a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A400197.P85770271117427235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  1 - (n : ℤ) * Int.tmod (2 - (n : ℤ)) (a (n - 1))

end

end A400197.P85770271117427235

namespace A400197

/-- `1-n*(2-n)%a(n-1)` -/
def P85770271117427235.Spec : Prop :=
  ∀ n, P85770271117427235.a n = A400197 n

end A400197

/-! ## A400197.P5566492961855969188

`(n-1)²-C(a(n-2), a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A400197.P5566492961855969188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((n : ℤ) - 1) ^ 2 - (Nat.choose (a (n - 2)).toNat (a (n - 1)).toNat : ℤ)

end

end A400197.P5566492961855969188

namespace A400197

/-- `(n-1)²-C(a(n-2), a(n-1))` -/
def P5566492961855969188.Spec : Prop :=
  ∀ n, P5566492961855969188.a n = A400197 n

end A400197

/-! ## A400197.P9061804446205607748

`(n+1)²-A336705(n)`
-/

namespace A400197.P9061804446205607748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A336705 n

end

end A400197.P9061804446205607748

namespace A400197

/-- `(n+1)²-A336705(n)` -/
def P9061804446205607748.Spec : Prop :=
  ∀ n, P9061804446205607748.a n = A400197 n

end A400197

/-! ## A400197.P7388034415604122554

`record[A346004(n)]`
-/

namespace A400197.P7388034415604122554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400197.P7388034415604122554

namespace A400197

/-- `record[A346004(n)]` -/
def P7388034415604122554.Spec : Prop :=
  ∀ n, P7388034415604122554.a n = A400197 n

end A400197

/-! ## A400197.P8289623156218876747

`A181385(A004275(n))`
-/

namespace A400197.P8289623156218876747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A004275 n).toNat

end

end A400197.P8289623156218876747

namespace A400197

/-- `A181385(A004275(n))` -/
def P8289623156218876747.Spec : Prop :=
  ∀ n, P8289623156218876747.a n = A400197 n

end A400197

/-! ## A400197.P18118930055479653646

`A346004(A004274(n))`
-/

namespace A400197.P18118930055479653646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 (A004274 n).toNat

end

end A400197.P18118930055479653646

namespace A400197

/-- `A346004(A004274(n))` -/
def P18118930055479653646.Spec : Prop :=
  ∀ n, P18118930055479653646.a n = A400197 n

end A400197

/-! ## A400197.P7233627102733226179

`A002620(A004271(n+1))`
-/

namespace A400197.P7233627102733226179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004271 (n + 1)).toNat

end

end A400197.P7233627102733226179

namespace A400197

/-- `A002620(A004271(n+1))` -/
def P7233627102733226179.Spec : Prop :=
  ∀ n, P7233627102733226179.a n = A400197 n

end A400197

/-! ## A400197.P10416400270901775646

`A002620(A004278(n+1))`
-/

namespace A400197.P10416400270901775646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004278 (n + 1)).toNat

end

end A400197.P10416400270901775646

namespace A400197

/-- `A002620(A004278(n+1))` -/
def P10416400270901775646.Spec : Prop :=
  ∀ n, P10416400270901775646.a n = A400197 n

end A400197

/-!
# A400198: b^c^d, where b >= c >= d >= 0 ordered by b then c then d.

The programs for A400198, the canonical program `A400198.P10752574168841274575` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400198 has offset 0).

The definition of A400198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056556, A056557, A056558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400198.P10752574168841274575

`A056556(n)^A056557(n)^A056558(n)`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A400198

/-- `A056556(n)^A056557(n)^A056558(n)` -/
def P10752574168841274575.Spec : Prop :=
  ∀ n, P10752574168841274575.a n = (A400198 n : ℝ)

end A400198

/-!
# A400199: H_x(y, z), the x-th hyperoperation of y and z, where (x, y, z) is the n-th triple in the canonical shell ordering of N^3 given by A144625.

The programs for A400199, there is no canonical definition to state claims against.
-/

/-! ## A400199.P821699365426835166

`A367218(3*n+1)%A186237(A078611(n+5)/6)`
-/

namespace A400199.P821699365426835166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367218 (3 * n + 1)) (A186237 (SequenceMachineLib.roundAway ((A078611 (n + 5) : ℚ) / 6)).toNat)

end

end A400199.P821699365426835166

/-! ## A400199.P16854834892609478634

`A320808(n+1)+A091247(A320462(3*n+5))`
-/

namespace A400199.P16854834892609478634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320808 (n + 1) + A091247 (A320462 (3 * n + 5)).toNat

end

end A400199.P16854834892609478634

